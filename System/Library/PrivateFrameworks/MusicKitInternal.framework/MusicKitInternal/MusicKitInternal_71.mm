uint64_t sub_1D5503FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5504000, 0, 0);
}

uint64_t sub_1D5504000()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D55040B8()
{
  OUTLINED_FUNCTION_60();

  sub_1D55039A4();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1D5504120()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v76 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_4();
  v72 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v63[-v15];
  v17 = type metadata accessor for MusicDaemon.Item(0);
  v18 = OUTLINED_FUNCTION_69(v17);
  v68 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v63[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v63[-v23];
  v25 = v2[1];
  v75 = *v2;
  v71 = v25;
  v26 = v2[2];
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v70 = v26;
  v27 = sub_1D560C758();
  __swift_project_value_buffer(v27, qword_1EDD76B38);
  OUTLINED_FUNCTION_2_188();
  v74 = v5;
  v28 = OUTLINED_FUNCTION_85_0();
  sub_1D55067D8(v28, v29, v30);
  sub_1D4F39AB0(v76, v16, &qword_1EC7ECC98, &qword_1D5622EB0);

  v31 = sub_1D560C738();
  v32 = sub_1D56156E8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v64 = v32;
    v32 = v33;
    v65 = swift_slowAlloc();
    v80 = v65;
    *v32 = 136446978;
    v67 = v0;
    v34 = sub_1D4F636B4();
    OUTLINED_FUNCTION_56_37(v34, v35);
    OUTLINED_FUNCTION_64_33();
    *(v32 + 4) = v0;
    *(v32 + 12) = 2082;
    sub_1D55067D8(v24, v22, type metadata accessor for MusicDaemon.Item);
    OUTLINED_FUNCTION_17_91();
    v77 = v36;
    v78 = v37;
    v38 = sub_1D53A3188();
    v66 = v9;
    MEMORY[0x1DA6EAC70](v38);

    sub_1D5506784(v22, type metadata accessor for MusicDaemon.Item);
    sub_1D5506784(v24, type metadata accessor for MusicDaemon.Item);
    sub_1D4E6835C(v77, v78, &v80);
    OUTLINED_FUNCTION_64_33();
    *(v32 + 14) = type metadata accessor for MusicDaemon.Item;
    *(v32 + 22) = 2082;
    sub_1D4F39AB0(v16, v14, &qword_1EC7ECC98, &qword_1D5622EB0);
    v39 = sub_1D5614DB8();
    v41 = v40;
    sub_1D4E765C8(v16, &qword_1EC7ECC98, &qword_1D5622EB0);
    v42 = sub_1D4E6835C(v39, v41, &v80);
    v9 = v66;

    *(v32 + 24) = v42;
    *(v32 + 32) = 2082;
    v43 = v70;
    v44 = v71;
    v77 = v75;
    v78 = v71;
    v79 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B08, &qword_1D566E400);
    v45 = sub_1D5614DB8();
    v47 = OUTLINED_FUNCTION_56_37(v45, v46);

    *(v32 + 34) = v47;
    _os_log_impl(&dword_1D4E3F000, v31, v64, "MusicFavoriteStatusController[%{public}s]: observingContentDidChange\nitem = %{public}s,\nsubscription: %{public}s,\nrestrictions: %{public}s.", v32, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {

    sub_1D4E765C8(v16, &qword_1EC7ECC98, &qword_1D5622EB0);
    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v24, v48);
    v43 = v70;
    v44 = v71;
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  OUTLINED_FUNCTION_40_13();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_46_40(v53);
  swift_weakInit();
  OUTLINED_FUNCTION_2_188();
  sub_1D55067D8(v74, v22, v54);
  sub_1D4F39AB0(v76, v14, &qword_1EC7ECC98, &qword_1D5622EB0);
  v55 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v56 = (v69 + *(v72 + 80) + v55) & ~*(v72 + 80);
  v57 = (v73 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v32;
  sub_1D5506A64(v22, v58 + v55);
  sub_1D55079F8(v14, v58 + v56);
  v59 = (v58 + v57);
  *v59 = v75;
  v59[1] = v44;
  v59[2] = v43;
  v60 = OUTLINED_FUNCTION_41_7();
  sub_1D51ECB60(v60, v61, v9, v62, v58);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D55046AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v10;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D55046E0, 0, 0);
}

uint64_t sub_1D55046E0()
{
  OUTLINED_FUNCTION_60();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 112);
    *(v0 + 40) = *(v0 + 96);
    *(v0 + 56) = v2;
    sub_1D56153C8();
    *(v0 + 128) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v3 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    **(v0 + 64) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D55047CC()
{
  OUTLINED_FUNCTION_80();

  sub_1D550335C();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1D5504858()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76B38);

  v12 = OUTLINED_FUNCTION_19_84();
  sub_1D5507888(v12, v13, v14);
  v15 = sub_1D560C738();
  v16 = sub_1D56156E8();

  v17 = OUTLINED_FUNCTION_19_84();
  sub_1D55078B4(v17, v18, v19);
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_41_0();
    v20 = swift_slowAlloc();
    v41 = v7;
    v21 = v20;
    OUTLINED_FUNCTION_59_35();
    v45 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = sub_1D4F636B4();
    v24 = OUTLINED_FUNCTION_56_37(v22, v23);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v42 = v8;
    v43 = v9;
    v44 = v10;
    v25 = OUTLINED_FUNCTION_19_84();
    sub_1D5507888(v25, v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
    v28 = sub_1D5614DB8();
    OUTLINED_FUNCTION_63_27(v28, v29);
    OUTLINED_FUNCTION_82();

    *(v21 + 14) = v1;
    _os_log_impl(&dword_1D4E3F000, v15, v16, "MusicFavoriteStatusController[%{public}s]: didEndObserving with error: %{public}s.", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v7 = v41;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_40_13();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_46_40(v34);
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_29_60(v35);
  v36 = OUTLINED_FUNCTION_41_7();
  sub_1D51ECB60(v36, v37, v7, v38, v39);

  OUTLINED_FUNCTION_46();
}

void sub_1D5504AB0()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v9 = sub_1D560C758();
  __swift_project_value_buffer(v9, qword_1EDD76B38);

  v10 = sub_1D560C738();
  v11 = sub_1D56156E8();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_55_1();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v13 = swift_slowAlloc();
    v40 = v6;
    v41 = v7;
    v14 = v5;
    v15 = v13;
    v42 = v13;
    *v12 = 136446210;
    v16 = sub_1D4F636B4();
    OUTLINED_FUNCTION_56_37(v16, v17);
    OUTLINED_FUNCTION_64_33();
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1D4E3F000, v10, v11, "MusicFavoriteStatusController[%{public}s]: didPerformAction.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v5 = v14;
    v6 = v40;
    v7 = v41;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  if (v8 == 255)
  {
    v32 = &unk_1D566E3C8;
  }

  else
  {

    v18 = OUTLINED_FUNCTION_85_0();
    sub_1D5507888(v18, v19, v8);
    v20 = sub_1D560C738();
    v21 = sub_1D56156C8();

    v22 = OUTLINED_FUNCTION_85_0();
    sub_1D55078B4(v22, v23, v8);
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_41_0();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v40 = swift_slowAlloc();
      v41 = v5;
      v42 = v40;
      *v24 = 136446466;
      v26 = sub_1D4F636B4();
      OUTLINED_FUNCTION_56_37(v26, v27);
      OUTLINED_FUNCTION_64_33();
      *(v24 + 4) = v8;
      *(v24 + 12) = 2112;
      sub_1D53476CC();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v28 = v6;
      *(v28 + 8) = v7;
      *(v28 + 16) = v8;
      v29 = OUTLINED_FUNCTION_85_0();
      sub_1D550789C(v29, v30, v8);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v31;
      *v25 = v31;
      _os_log_impl(&dword_1D4E3F000, v20, v21, "MusicFavoriteStatusController[%{public}s]: failed to perform action: %@, reverting...", v24, 0x16u);
      sub_1D4E765C8(v25, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      __swift_destroy_boxed_opaque_existential_1(v40);
      v5 = v41;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v32 = &unk_1D566E3D8;
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_40_13();
  v37 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  sub_1D51ECB60(0, 0, v5, v32, v38);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5504E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5504E68, 0, 0);
}

uint64_t sub_1D5504E68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5504F20()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 56);

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) = 6;

  v2 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1D5504F94()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v8 = sub_1D560C758();
  __swift_project_value_buffer(v8, qword_1EDD76B38);

  v9 = OUTLINED_FUNCTION_19_84();
  sub_1D550789C(v9, v10, v11);
  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();

  v14 = OUTLINED_FUNCTION_19_84();
  sub_1D55078C8(v14, v15, v16);
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_41_0();
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v38 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = sub_1D4F636B4();
    v20 = v0;
    v21 = OUTLINED_FUNCTION_56_37(v18, v19);

    *(v17 + 4) = v21;
    v0 = v20;
    *(v17 + 12) = 2112;
    sub_1D53476CC();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v22 = v5;
    *(v22 + 8) = v6;
    *(v22 + 16) = v7;
    v23 = OUTLINED_FUNCTION_19_84();
    sub_1D550789C(v23, v24, v25);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v26;
    *v37 = v26;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "MusicFavoriteStatusController[%{public}s]: didFail: %@", v17, 0x16u);
    sub_1D4E765C8(v37, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_40_13();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_46_40(v31);
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_29_60(v32);
  v33 = OUTLINED_FUNCTION_41_7();
  sub_1D51ECB60(v33, v34, v0, v35, v36);

  OUTLINED_FUNCTION_46();
}

uint64_t MusicFavoriteStatusController.Status.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 3:
      return 0x676E6964616F6C2ELL;
    case 4:
      return 0xD000000000000016;
    case 5:
      return 0x5464656C6961662ELL;
  }

  v3 = 0xEA00000000006465;
  v4 = 0x7469726F7661662ELL;
  if (v1 != 1)
  {
    v4 = 0x656B696C7369642ELL;
    v3 = 0xE900000000000064;
  }

  if (*v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C61727475656E2ELL;
  }

  if (*v0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1DA6EAC70](v5, v6);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0x28646564616F6C2ELL;
}

uint64_t sub_1D5505340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646564616F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001D568FE30 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1D55054A0(char a1)
{
  result = 0x676E6964616F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x646564616F6CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6F5464656C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5505534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5505340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D550555C(uint64_t a1)
{
  v2 = sub_1D5506AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505598(uint64_t a1)
{
  v2 = sub_1D5506AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D55055D4(uint64_t a1)
{
  v2 = sub_1D5506B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505610(uint64_t a1)
{
  v2 = sub_1D5506B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550564C(uint64_t a1)
{
  v2 = sub_1D5506B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505688(uint64_t a1)
{
  v2 = sub_1D5506B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D55056C4(uint64_t a1)
{
  v2 = sub_1D5506BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505700(uint64_t a1)
{
  v2 = sub_1D5506BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550573C(uint64_t a1)
{
  v2 = sub_1D5506C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5505778(uint64_t a1)
{
  v2 = sub_1D5506C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicFavoriteStatusController.Status.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_25_1();
  a25 = v29;
  a26 = v30;
  v69 = v28;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A20, &qword_1D566DCD0);
  OUTLINED_FUNCTION_4();
  v66 = v34;
  v67 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v65 = v36;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A28, &qword_1D566DCD8);
  OUTLINED_FUNCTION_4();
  v62 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v60 = v39;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A30, &qword_1D566DCE0);
  OUTLINED_FUNCTION_4();
  v61 = v40;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_47_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A38, &qword_1D566DCE8);
  OUTLINED_FUNCTION_4();
  v58 = v43;
  v59 = v42;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v58 - v45;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A40, &qword_1D566DCF0);
  OUTLINED_FUNCTION_4();
  v48 = v47;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v58 - v50;
  v52 = *v27;
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_1D5506AC8();
  sub_1D56163D8();
  switch(v52)
  {
    case 5:
      a16 = 3;
      sub_1D5506B1C();
      v54 = v65;
      OUTLINED_FUNCTION_44_43(&type metadata for MusicFavoriteStatusController.Status.FailedToLoadCodingKeys, &a16);
      (*(v66 + 8))(v54, v67);
      break;
    case 4:
      a15 = 2;
      sub_1D5506B70();
      v53 = v60;
      OUTLINED_FUNCTION_44_43(&type metadata for MusicFavoriteStatusController.Status.FavoritingUnsupportedCodingKeys, &a15);
      (*(v62 + 8))(v53, v64);
      break;
    case 3:
      a12 = 0;
      sub_1D5506C18();
      OUTLINED_FUNCTION_44_43(&type metadata for MusicFavoriteStatusController.Status.LoadingCodingKeys, &a12);
      (*(v58 + 8))(v46, v59);
      break;
    default:
      a14 = 1;
      sub_1D5506BC4();
      sub_1D5616018();
      a13 = v52;
      sub_1D53A2980();
      v55 = v63;
      sub_1D56160C8();
      (*(v61 + 8))(v26, v55);
      v56 = OUTLINED_FUNCTION_85_0();
      v57(v56);
      goto LABEL_9;
  }

  (*(v48 + 8))(v51, v26);
LABEL_9:
  OUTLINED_FUNCTION_26();
}

uint64_t MusicFavoriteStatusController.Status.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  else
  {
    v1 = qword_1D566E438[(v1 - 3)];
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t MusicFavoriteStatusController.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  else
  {
    v1 = qword_1D566E438[(v1 - 3)];
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicFavoriteStatusController.Status.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_25_1();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v76 = v33;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A70, &qword_1D566DCF8);
  OUTLINED_FUNCTION_4();
  v75 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v74 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A78, &qword_1D566DD00);
  OUTLINED_FUNCTION_4();
  v71 = v38;
  v72 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v73 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A80, &qword_1D566DD08);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A88, &qword_1D566DD10);
  OUTLINED_FUNCTION_4();
  v70 = v43;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_47_5();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A90, &unk_1D566DD18);
  OUTLINED_FUNCTION_4();
  v77 = v46;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_108();
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_1D5506AC8();
  sub_1D5616398();
  if (v27)
  {
    goto LABEL_8;
  }

  sub_1D5615FE8();
  sub_1D4FE35F0();
  if (v49 == v50 >> 1)
  {
LABEL_7:
    v58 = sub_1D5615C18();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v60 = &type metadata for MusicFavoriteStatusController.Status;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = OUTLINED_FUNCTION_11_120();
    v62(v61);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v32);
LABEL_9:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v49 < (v50 >> 1))
  {
    v69 = *(v48 + v49);
    sub_1D4FE35EC();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      switch(v69)
      {
        case 1:
          a14 = 1;
          sub_1D5506BC4();
          OUTLINED_FUNCTION_23_75(&type metadata for MusicFavoriteStatusController.Status.LoadedCodingKeys, &a14);
          sub_1D53A3134();
          sub_1D5615FD8();
          swift_unknownObjectRelease();
          v67 = OUTLINED_FUNCTION_61_36();
          v68(v67);
          (*(v77 + 8))(v28, v45);
          v57 = a13;
          break;
        case 2:
          a15 = 2;
          sub_1D5506B70();
          OUTLINED_FUNCTION_23_75(&type metadata for MusicFavoriteStatusController.Status.FavoritingUnsupportedCodingKeys, &a15);
          swift_unknownObjectRelease();
          (*(v71 + 8))(v73, v72);
          v63 = OUTLINED_FUNCTION_11_120();
          v64(v63);
          v57 = 4;
          break;
        case 3:
          a16 = 3;
          sub_1D5506B1C();
          OUTLINED_FUNCTION_23_75(&type metadata for MusicFavoriteStatusController.Status.FailedToLoadCodingKeys, &a16);
          swift_unknownObjectRelease();
          (*(v75 + 8))(v74, v78);
          v65 = OUTLINED_FUNCTION_11_120();
          v66(v65);
          v57 = 5;
          break;
        default:
          a12 = 0;
          sub_1D5506C18();
          OUTLINED_FUNCTION_23_75(&type metadata for MusicFavoriteStatusController.Status.LoadingCodingKeys, &a12);
          swift_unknownObjectRelease();
          (*(v70 + 8))(v26, v42);
          v55 = OUTLINED_FUNCTION_11_120();
          v56(v55);
          v57 = 3;
          break;
      }

      *v76 = v57;
      __swift_destroy_boxed_opaque_existential_1(v32);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1D550635C(uint64_t a1)
{
  sub_1D56162D8();
  MusicFavoriteStatusController.Status.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicFavoriteStatusController.description.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_20_94();
  v10 = v1;
  v7 = sub_1D531AB30(v2, v3, v4, v5, v6);
  MEMORY[0x1DA6EAC70](v7);

  MEMORY[0x1DA6EAC70](0x203A6D657469, 0xE600000000000000);

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71();
  sub_1D560C8F8();

  v8 = MusicFavoriteStatusController.Status.description.getter();
  MEMORY[0x1DA6EAC70](v8);

  MEMORY[0x1DA6EAC70](0x737574617473202CLL, 0xEA0000000000203ALL);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v10;
}

uint64_t MusicFavoriteStatusController.debugDescription.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_20_94();
  v13 = v1;
  v7 = sub_1D531AB30(v2, v3, v4, v5, v6);
  MEMORY[0x1DA6EAC70](v7);

  MEMORY[0x1DA6EAC70](0x3A6D65746920200ALL, 0xE900000000000020);

  strcpy(v12, ",\n  account: ");
  HIWORD(v12[1]) = -4864;
  v8 = Account.description.getter();
  MEMORY[0x1DA6EAC70](v8);

  MEMORY[0x1DA6EAC70](v12[0], v12[1]);

  strcpy(&v11, ",\n  status: ");
  BYTE13(v11) = 0;
  HIWORD(v11) = -5120;
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71();
  sub_1D560C8F8();

  v9 = MusicFavoriteStatusController.Status.description.getter();
  MEMORY[0x1DA6EAC70](v9);

  MEMORY[0x1DA6EAC70](v11, *(&v11 + 1));

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v13;
}

unint64_t sub_1D55066E4()
{
  result = qword_1EC7F7A08;
  if (!qword_1EC7F7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A08);
  }

  return result;
}

uint64_t type metadata accessor for MusicFavoriteStatusController(uint64_t a1)
{
  result = qword_1EDD5AE50;
  if (!qword_1EDD5AE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5506784(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D55067D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D5506834()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5502914(v3, v4, v5, v6);
}

uint64_t sub_1D55068C0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D55027CC(v3, v4, v5, v6);
}

uint64_t sub_1D550694C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503044(v3, v4, v5, v6);
}

uint64_t sub_1D55069D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5502F64(v3, v4, v5, v6);
}

uint64_t sub_1D5506A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDaemon.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5506AC8()
{
  result = qword_1EC7F7A48;
  if (!qword_1EC7F7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A48);
  }

  return result;
}

unint64_t sub_1D5506B1C()
{
  result = qword_1EC7F7A50;
  if (!qword_1EC7F7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A50);
  }

  return result;
}

unint64_t sub_1D5506B70()
{
  result = qword_1EC7F7A58;
  if (!qword_1EC7F7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A58);
  }

  return result;
}

unint64_t sub_1D5506BC4()
{
  result = qword_1EC7F7A60;
  if (!qword_1EC7F7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A60);
  }

  return result;
}

unint64_t sub_1D5506C18()
{
  result = qword_1EC7F7A68;
  if (!qword_1EC7F7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A68);
  }

  return result;
}

unint64_t sub_1D5506C70()
{
  result = qword_1EC7F7A98;
  if (!qword_1EC7F7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7A98);
  }

  return result;
}

void sub_1D5506CCC(uint64_t a1)
{
  sub_1D5506FEC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MusicFavoriteStatusController.Item(319);
    if (v2 <= 0x3F)
    {
      sub_1D560C368();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MusicDaemon.Item(319);
        if (v4 <= 0x3F)
        {
          sub_1D550703C(319, qword_1EDD592B8, type metadata accessor for MusicDaemon.Item);
          if (v5 <= 0x3F)
          {
            sub_1D550703C(319, &qword_1EDD5F558, MEMORY[0x1E6974EF8]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1D5506FEC()
{
  if (!qword_1EDD54418)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD54418);
    }
  }
}

void sub_1D550703C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for MusicFavoriteStatusController.Status(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicFavoriteStatusController.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicFavoriteStatusController.Status.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicFavoriteStatusController.Status.LoadedCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D55073E0()
{
  result = qword_1EC7F7AA0;
  if (!qword_1EC7F7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AA0);
  }

  return result;
}

unint64_t sub_1D5507438()
{
  result = qword_1EC7F7AA8;
  if (!qword_1EC7F7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AA8);
  }

  return result;
}

unint64_t sub_1D5507490()
{
  result = qword_1EC7F7AB0;
  if (!qword_1EC7F7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AB0);
  }

  return result;
}

unint64_t sub_1D55074E8()
{
  result = qword_1EC7F7AB8;
  if (!qword_1EC7F7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AB8);
  }

  return result;
}

unint64_t sub_1D5507540()
{
  result = qword_1EC7F7AC0;
  if (!qword_1EC7F7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AC0);
  }

  return result;
}

unint64_t sub_1D5507598()
{
  result = qword_1EC7F7AC8;
  if (!qword_1EC7F7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AC8);
  }

  return result;
}

unint64_t sub_1D55075F0()
{
  result = qword_1EC7F7AD0;
  if (!qword_1EC7F7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AD0);
  }

  return result;
}

unint64_t sub_1D5507648()
{
  result = qword_1EC7F7AD8;
  if (!qword_1EC7F7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AD8);
  }

  return result;
}

unint64_t sub_1D55076A0()
{
  result = qword_1EC7F7AE0;
  if (!qword_1EC7F7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AE0);
  }

  return result;
}

unint64_t sub_1D55076F8()
{
  result = qword_1EC7F7AE8;
  if (!qword_1EC7F7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AE8);
  }

  return result;
}

unint64_t sub_1D5507750()
{
  result = qword_1EC7F7AF0;
  if (!qword_1EC7F7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AF0);
  }

  return result;
}

unint64_t sub_1D55077A8()
{
  result = qword_1EC7F7AF8;
  if (!qword_1EC7F7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7AF8);
  }

  return result;
}

uint64_t sub_1D55077FC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5504E48(v3, v4, v5, v6);
}

double sub_1D5507888(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D550789C(result, a2, a3);
  }

  return v3;
}

double sub_1D550789C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D55078B4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D55078C8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D55078C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D55078E0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5502914(v3, v4, v5, v6);
}

uint64_t sub_1D550796C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503FE0(v3, v4, v5, v6);
}

uint64_t sub_1D55079F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5507A68(uint64_t a1)
{
  v3 = type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_69(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_69(v8);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = (v1 + ((*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v2 + 16) = v18;
  *v18 = v2;
  v18[1] = sub_1D5507D28;

  return sub_1D55046AC(a1, v12, v13, v14, v1 + v5, v1 + v10, v16, v17);
}

uint64_t sub_1D5507C10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503FE0(v3, v4, v5, v6);
}

uint64_t sub_1D5507C9C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5503FE0(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_23_75(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_47_45()
{

  return sub_1D560C8F8();
}

void sub_1D5507DA4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  if (swift_dynamicCast())
  {
    if (v11 == 2 && v9 <= 0xD)
    {
      switch(v9)
      {
        case 1uLL:
        case 2uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          goto LABEL_7;
        case 4uLL:

          v5 = 0;
          v6 = 0;
          break;
        case 5uLL:

          v5 = 0;
          v6 = 4;
          break;
        case 9uLL:

          v5 = 0;
          v6 = 1;
          break;
        case 0xDuLL:

          v5 = 0;
          v6 = 3;
          break;
        default:

          v5 = 0;
          v6 = 2;
          break;
      }
    }

    else
    {
LABEL_7:
      sub_1D53476CC();
      v5 = sub_1D5616268();
      v6 = v8;

      sub_1D55078C8(v9, v10, v11);
    }
  }

  else
  {
    swift_getErrorValue();
    v5 = sub_1D5616268();
    v6 = v7;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t static MusicFavoriteStatusController.Error.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_20;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v8 = 1;
      sub_1D55080D0(*a1, 1uLL);
      sub_1D55080D0(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_20;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_20;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      sub_1D55080D0(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_20;
    default:
      if (v5 >= 5)
      {
        v13 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v15 = sub_1D5616168();
          v16 = OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_0_256(v16, v17);
          v18 = OUTLINED_FUNCTION_24();
          sub_1D55080D0(v18, v19);
          return v15 & 1;
        }

        OUTLINED_FUNCTION_0_256(v13, v3);
        v6 = v2;
        v7 = v3;
LABEL_20:
        sub_1D55080D0(v6, v7);
        return 1;
      }

      else
      {
LABEL_13:
        v9 = OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_0_256(v9, v10);
        v11 = OUTLINED_FUNCTION_24();
        sub_1D55080D0(v11, v12);
        return 0;
      }
  }
}

double sub_1D55080BC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1D55080D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t MusicFavoriteStatusController.Error.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_7;
    case 1:
      v2 = 1;
      goto LABEL_7;
    case 2:
      v2 = 2;
      goto LABEL_7;
    case 3:
      v2 = 3;
      goto LABEL_7;
    case 4:
      v2 = 4;
LABEL_7:
      result = MEMORY[0x1DA6EC0D0](v2);
      break;
    default:
      MEMORY[0x1DA6EC0D0](5);

      result = sub_1D5614E28();
      break;
  }

  return result;
}

uint64_t MusicFavoriteStatusController.Error.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D56162D8();
  switch(v1)
  {
    case 0:
      v2 = 0;
      goto LABEL_7;
    case 1:
      v2 = 1;
      goto LABEL_7;
    case 2:
      v2 = 2;
      goto LABEL_7;
    case 3:
      v2 = 3;
      goto LABEL_7;
    case 4:
      v2 = 4;
LABEL_7:
      MEMORY[0x1DA6EC0D0](v2);
      break;
    default:
      MEMORY[0x1DA6EC0D0](5);
      sub_1D5614E28();
      break;
  }

  return sub_1D5616328();
}

uint64_t sub_1D550827C(uint64_t a1)
{
  v4 = *v1;
  sub_1D56162D8();
  MusicFavoriteStatusController.Error.hash(into:)(v3);
  return sub_1D5616328();
}

unint64_t sub_1D55082C8()
{
  result = qword_1EC7F7B18;
  if (!qword_1EC7F7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7B18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal0A24FavoriteStatusControllerC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5508334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D550838C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest(0);
  sub_1D5417790(a1, a3 + *(v6 + 20));
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 32);

  return v9(a3, a2, v7);
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest(uint64_t a1)
{
  result = qword_1EC7F7B28;
  if (!qword_1EC7F7B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.collaborator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest(0) + 20);

  return sub_1D5417898(v3, a1);
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v1[3] = OUTLINED_FUNCTION_127();
  v2 = sub_1D560E728();
  v1[4] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_127();
  v4 = sub_1D560D9A8();
  v1[7] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560D838();
  v1[10] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[11] = v7;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_1D550871C;

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest._response()();
}

uint64_t sub_1D550871C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    OUTLINED_FUNCTION_55();

    return v5();
  }

  else
  {
    *(v4 + 120) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D550889C, 0, 0);
  }
}

uint64_t sub_1D550889C(uint64_t a1)
{
  v19 = v1[13];
  v2 = v1[11];
  v23 = v1[12];
  v24 = v1[10];
  v21 = v1[8];
  v22 = v1[7];
  v17 = v1[6];
  v18 = v1[9];
  v3 = v1[5];
  v20 = v1[4];
  v4 = v1[3];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v5 = sub_1D560DB08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D5621D90;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E6975040], v5);
  v11(v10 + v7, *MEMORY[0x1E6975030], v5);
  sub_1D560E718();
  v12 = *MEMORY[0x1E6974FD8];
  v13 = sub_1D560D9E8();
  OUTLINED_FUNCTION_14();
  (*(v14 + 104))(v4, v12, v13);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
  sub_1D560F7D8();
  sub_1D4E50004(v4, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v3 + 8))(v17, v20);
  (*(v21 + 8))(v18, v22);
  (*(v2 + 16))(v23, v19, v24);
  sub_1D56144C8();
  (*(v2 + 8))(v19, v24);

  OUTLINED_FUNCTION_55();

  return v15();
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest._response()()
{
  v1[22] = v0;
  v2 = sub_1D560D838();
  v1[23] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[24] = v3;
  v1[25] = OUTLINED_FUNCTION_127();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v1[26] = OUTLINED_FUNCTION_127();
  v4 = sub_1D5614898();
  v1[27] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[28] = v5;
  v1[29] = OUTLINED_FUNCTION_127();
  v6 = sub_1D56131C8();
  v1[30] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[31] = v7;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5508D10, 0, 0);
}

uint64_t sub_1D5508D10()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[25];
  v24 = v0[24];
  v25 = v0[26];
  v9 = v0[22];
  v26 = v0[23];
  (*(v3 + 104))(v2, *MEMORY[0x1E6976988], v4);
  (*(v3 + 16))(v1, v2, v4);
  (*(v5 + 16))(v6, v9, v7);
  sub_1D4ECAE6C(v6, v1);
  v11 = v10;
  v0[34] = v10;
  (*(v3 + 8))(v2, v4);
  type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest(0);
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5509834(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v24 + 8))(v8, v26);
  v12 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v25, 1, v12) == 1)
  {
    sub_1D4E50004(v0[26], &unk_1EC7F1970, &qword_1D561F4A0);
    sub_1D4F763B4();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_55();

    return v14();
  }

  else
  {
    v16 = v0[26];
    v17 = sub_1D560F138();
    v19 = v18;
    (*(*(v12 - 8) + 8))(v16, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D561C050;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    v21 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRemoveCollaboratorsChangeRequest);
    v22 = sub_1D550977C(v11, v20);
    v0[35] = v22;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D55090F0;
    v23 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D4F772C0;
    v0[13] = &block_descriptor_34;
    v0[14] = v23;
    [v22 performWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D55090F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1D5509378;
  }

  else
  {
    v2 = sub_1D5509200;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5509200()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[21];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 18, v3);
  v5 = *(v3 - 8);
  v6 = OUTLINED_FUNCTION_127();
  (*(v5 + 16))(v6, v4, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v7 = sub_1D5616158();

  (*(v5 + 8))(v6, v3);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1D5509378(uint64_t a1)
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v4();
}

BOOL static MusicCollaborativePlaylist.RemoveCollaboratorRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0())
  {
    v4 = *(type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest(0) + 20);
    v5 = (a1 + v4);
    v6 = (a2 + v4);
    v7 = *v5 == *v6 && v5[1] == v6[1];
    if (v7 || (sub_1D5616168() & 1) != 0)
    {
      type metadata accessor for Playlist.Collaborator(0);
      if (sub_1D5611A78())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.hash(into:)(uint64_t a1)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_2_189();
  sub_1D5509834(v1, v2, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest(0);
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_191();
  sub_1D5509834(v3, v4, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_2_189();
  sub_1D5509834(v0, v1, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest(0);
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_191();
  sub_1D5509834(v2, v3, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5509678(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D5509834(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  sub_1D5509834(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

id sub_1D550977C(void *a1, uint64_t a2)
{
  v4 = sub_1D5615158();

  v5 = [v2 initWithPlaylist:a1 socialProfileIDs:v4];

  return v5;
}

uint64_t sub_1D5509834(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicDaemon.Response.Context.init(requestID:item:accountID:subscription:restrictions:observerID:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20 = *a5;
  v12 = *(a5 + 2);
  v13 = sub_1D560C368();
  OUTLINED_FUNCTION_14();
  v21 = *(v14 + 32);
  v21(a7, a1, v13);
  v15 = type metadata accessor for MusicDaemon.Response.Context(0);
  OUTLINED_FUNCTION_7_139();
  sub_1D550BCB4();
  v16 = (a7 + v15[6]);
  *v16 = a3;
  v16[1] = a4;
  sub_1D4FB8058();
  v17 = a7 + v15[8];
  *v17 = v20;
  *(v17 + 16) = v12;
  v18 = a7 + v15[9];

  return (v21)(v18, a6, v13);
}

void MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_45_4();
  v8 = type metadata accessor for MusicDaemon.Item(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v10 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v28 = v2[1];
  v29 = *v2;
  v26 = *(v12 + 16);
  v27 = v2[2];
  v26(v15 - v14, v6, v10);
  OUTLINED_FUNCTION_57(v4, 1, v8);
  if (v17)
  {
    type metadata accessor for MusicDaemon.Request.Context(0);
    OUTLINED_FUNCTION_7_139();
    sub_1D550B250();
    OUTLINED_FUNCTION_57(v4, 1, v8);
    if (!v17)
    {
      sub_1D4E50004(v4, &qword_1EC7F7A10, &unk_1D566DC20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_139();
    sub_1D550BCB4();
  }

  v18 = type metadata accessor for MusicDaemon.Request.Context(0);
  v19 = *(v18 + 28);
  v20 = (v6 + *(v18 + 24));
  v22 = *v20;
  v21 = v20[1];
  v23 = type metadata accessor for MusicDaemon.Response.Context(0);
  v26(v0 + v23[9], v6 + v19, v10);

  sub_1D550B1A4(v6, type metadata accessor for MusicDaemon.Request.Context);
  (*(v12 + 32))(v0, v16, v10);
  OUTLINED_FUNCTION_7_139();
  sub_1D550BCB4();
  v24 = (v0 + v23[6]);
  *v24 = v22;
  v24[1] = v21;
  sub_1D4FB8058();
  v25 = (v0 + v23[8]);
  *v25 = v29;
  v25[1] = v28;
  v25[2] = v27;
  OUTLINED_FUNCTION_46();
}

uint64_t MusicDaemon.Response.Context.requestID.getter()
{
  OUTLINED_FUNCTION_45_4();
  sub_1D560C368();
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_104();

  return v2(v1, v0);
}

uint64_t MusicDaemon.Response.Context.item.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  type metadata accessor for MusicDaemon.Response.Context(v0);
  OUTLINED_FUNCTION_7_139();
  return sub_1D550B250();
}

uint64_t MusicDaemon.Response.Context.accountID.getter()
{
  type metadata accessor for MusicDaemon.Response.Context(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicDaemon.Response.Context.subscription.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  type metadata accessor for MusicDaemon.Response.Context(v0);
  return sub_1D4FB8150();
}

__n128 MusicDaemon.Response.Context.restrictions.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  v3 = (v1 + *(type metadata accessor for MusicDaemon.Response.Context(v2) + 32));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *v0 = *v3;
  v0[1].n128_u64[0] = v4;
  return result;
}

uint64_t MusicDaemon.Response.Context.observerID.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  type metadata accessor for MusicDaemon.Response.Context(v0);
  sub_1D560C368();
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_104();

  return v2(v1);
}

void static MusicDaemon.Response.Context.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D560D478();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_71_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE530, &qword_1D566E620);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  if ((sub_1D560C348() & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = type metadata accessor for MusicDaemon.Response.Context(0);
  if ((static MusicDaemon.Item.== infix(_:_:)(v4 + *(v18 + 20), v2 + *(v18 + 20)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = *(v18 + 24);
  v20 = *(v4 + v19);
  v21 = *(v4 + v19 + 8);
  v22 = (v2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_17;
  }

  v39 = v18;
  v40 = v7;
  v24 = *(v14 + 48);
  sub_1D4FB8150();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v17, 1, v5);
  if (!v23)
  {
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(&v17[v24], 1, v5);
    if (!v25)
    {
      v26 = v40;
      (*(v40 + 32))(v11, &v17[v24], v5);
      OUTLINED_FUNCTION_3_194();
      sub_1D550A848(v27, v28, MEMORY[0x1E6974F10]);
      v29 = sub_1D5614D18();
      v30 = *(v26 + 8);
      v30(v11, v5);
      v30(v0, v5);
      sub_1D4E50004(v17, &qword_1EC7ECC98, &qword_1D5622EB0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    (*(v40 + 8))(v0, v5);
LABEL_16:
    sub_1D4E50004(v17, &qword_1EC7EE530, &qword_1D566E620);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_57(&v17[v24], 1, v5);
  if (!v23)
  {
    goto LABEL_16;
  }

  sub_1D4E50004(v17, &qword_1EC7ECC98, &qword_1D5622EB0);
LABEL_19:
  v31 = *(v39 + 32);
  v32 = *(v4 + v31);
  v33 = *(v4 + v31 + 8);
  v34 = *(v4 + v31 + 16);
  v35 = (v2 + v31);
  v36 = *(v35 + 2);
  v41[3] = v32;
  v41[4] = v33;
  v41[5] = v34;
  v37 = *v35;
  v42 = *v35;
  v43 = v36;
  if (v32 == 2)
  {
    if (v37 == 2)
    {
LABEL_24:
      sub_1D560C348();
    }
  }

  else
  {
    v41[0] = v32;
    v41[1] = v33;
    v41[2] = v34;
    if (v37 != 2 && static MusicRestrictions.== infix(_:_:)(v41, &v42))
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D550A1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1835365481 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463697274736572 && a2 == 0xEC000000736E6F69;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x726576726573626FLL && a2 == 0xEA00000000004449)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D550A3C8(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 1835365481;
      break;
    case 2:
      result = 0x49746E756F636361;
      break;
    case 3:
      result = 0x7069726373627573;
      break;
    case 4:
      result = 0x7463697274736572;
      break;
    case 5:
      result = 0x726576726573626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D550A4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D550A1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D550A4D0(uint64_t a1)
{
  v2 = sub_1D550A7F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550A50C(uint64_t a1)
{
  v2 = sub_1D550A7F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Response.Context.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B38, &qword_1D566E628);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D550A7F4();
  sub_1D56163D8();
  LOBYTE(v21) = 0;
  sub_1D560C368();
  OUTLINED_FUNCTION_4_151();
  sub_1D550A848(v11, v12, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_10_43();
  sub_1D56160C8();
  if (!v1)
  {
    v20 = type metadata accessor for MusicDaemon.Response.Context(0);
    LOBYTE(v21) = 1;
    type metadata accessor for MusicDaemon.Item(0);
    OUTLINED_FUNCTION_24_72();
    sub_1D550A848(v13, v14, &protocol conformance descriptor for MusicDaemon.Item);
    OUTLINED_FUNCTION_36_62();
    sub_1D56160C8();
    LOBYTE(v21) = 2;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616088();
    LOBYTE(v21) = 3;
    sub_1D560D478();
    OUTLINED_FUNCTION_3_194();
    sub_1D550A848(v15, v16, MEMORY[0x1E6974F00]);
    OUTLINED_FUNCTION_36_62();
    sub_1D5616068();
    v17 = (v2 + *(v20 + 32));
    v18 = *(v17 + 2);
    v21 = *v17;
    v22 = v18;
    sub_1D550A890();
    OUTLINED_FUNCTION_56_38();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    LOBYTE(v21) = 5;
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D550A7F4()
{
  result = qword_1EDD5E880;
  if (!qword_1EDD5E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E880);
  }

  return result;
}

uint64_t sub_1D550A848(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D550A890()
{
  result = qword_1EDD5C388;
  if (!qword_1EDD5C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C388);
  }

  return result;
}

void MusicDaemon.Response.Context.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D560D478();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  sub_1D560C368();
  OUTLINED_FUNCTION_4_151();
  sub_1D550A848(v11, v12, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  v13 = type metadata accessor for MusicDaemon.Response.Context(0);
  MusicDaemon.Item.hash(into:)();
  OUTLINED_FUNCTION_45_46();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v14)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v8, v1, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_194();
    sub_1D550A848(v15, v16, MEMORY[0x1E6974F08]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v4 + 8))(v8, v2);
  }

  v17 = (v0 + *(v13 + 32));
  if (*v17 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v19 = v17[1];
    v18 = v17[2];
    OUTLINED_FUNCTION_27();
    sub_1D56162F8();
    sub_1D56162F8();
    sub_1D56162F8();
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v19);
    MEMORY[0x1DA6EC0D0](v18);
  }

  sub_1D5614CB8();
  OUTLINED_FUNCTION_46();
}

void MusicDaemon.Response.Context.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v8 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v31 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_159_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B40, &unk_1D566E630);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_71_1();
  v30 = type metadata accessor for MusicDaemon.Response.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v32 = v15 - v14;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D550A7F4();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_4_151();
    sub_1D550A848(v16, v17, MEMORY[0x1E69695D0]);
    sub_1D5615FD8();
    v18 = *(v31 + 32);
    v18(v32, v1);
    OUTLINED_FUNCTION_24_72();
    sub_1D550A848(v19, v20, &protocol conformance descriptor for MusicDaemon.Item);
    OUTLINED_FUNCTION_42_48();
    OUTLINED_FUNCTION_53_35();
    sub_1D5615FD8();
    OUTLINED_FUNCTION_7_139();
    sub_1D550BCB4();
    v21 = sub_1D5615F98();
    v22 = (v32 + v30[6]);
    *v22 = v21;
    v22[1] = v23;
    sub_1D560D478();
    LOBYTE(v33) = 3;
    OUTLINED_FUNCTION_3_194();
    sub_1D550A848(v24, v25, MEMORY[0x1E6974F18]);
    OUTLINED_FUNCTION_42_48();
    OUTLINED_FUNCTION_78_26();
    sub_1D5615F78();
    sub_1D4FB8058();
    sub_1D550B1FC();
    OUTLINED_FUNCTION_53_35();
    sub_1D5615F78();
    v26 = v32 + v30[8];
    *v26 = v33;
    *(v26 + 16) = v34;
    OUTLINED_FUNCTION_78_26();
    sub_1D5615FD8();
    v27 = OUTLINED_FUNCTION_48_41();
    v28(v27);
    (v18)(v32 + v30[9], v2, v8);
    OUTLINED_FUNCTION_1_192();
    sub_1D550B250();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_0_257();
    sub_1D550B1A4(v32, v29);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D550B1A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D550B1FC()
{
  result = qword_1EDD5C380;
  if (!qword_1EDD5C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5C380);
  }

  return result;
}

uint64_t sub_1D550B250()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

void static MusicDaemon.Response.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v164 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v157 = v7;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B48, &qword_1D566E640);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v163 = v9;
  v160 = type metadata accessor for MusicDaemon.Response.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v156 = v11 - v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v162 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v161 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v155 - v19;
  type metadata accessor for MusicDaemon.Response(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_145();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v155 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v155 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B50, &qword_1D566E648);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v155 + *(v31 + 56) - v32;
  v34 = &v155 - v32;
  sub_1D550B250();
  sub_1D550B250();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_5_148();
      v74 = v34;
      sub_1D550B250();
      v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v77 = *(v1 + v75);
      v76 = *(v1 + v75 + 8);
      v78 = *(v1 + v75 + 16);
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v97 = OUTLINED_FUNCTION_13_96();
        sub_1D55078B4(v97, v98, v99);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v1, v100);
        v34 = v74;
        goto LABEL_28;
      }

      v79 = *&v33[v75];
      v80 = *&v33[v75 + 8];
      v81 = v33[v75 + 16];
      OUTLINED_FUNCTION_1_192();
      v82 = v161;
      sub_1D550BCB4();
      static MusicDaemon.Response.Context.== infix(_:_:)();
      v84 = v83;
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v1, v85);
      if (v84)
      {
        if (v78 == 255)
        {
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v82, v132);
          if (v81 == 255)
          {
            sub_1D55078B4(v77, v76, 0xFFu);
            goto LABEL_40;
          }
        }

        else
        {
          v168 = v77;
          v169 = v76;
          v170 = v78;
          if (v81 != 255)
          {
            v165 = v79;
            v166 = v80;
            v167 = v81;
            v86 = OUTLINED_FUNCTION_13_96();
            sub_1D5507888(v86, v87, v88);
            OUTLINED_FUNCTION_83_24();
            sub_1D55078C8(v165, v166, v167);
            OUTLINED_FUNCTION_0_257();
            sub_1D550B1A4(v82, v89);
            OUTLINED_FUNCTION_64_34();
            v90 = OUTLINED_FUNCTION_13_96();
            sub_1D55078B4(v90, v91, v92);
LABEL_40:
            OUTLINED_FUNCTION_6_151();
            v73 = v74;
            goto LABEL_45;
          }

          v141 = OUTLINED_FUNCTION_13_96();
          sub_1D5507888(v141, v142, v143);
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v82, v144);
          v145 = OUTLINED_FUNCTION_13_96();
          sub_1D55078C8(v145, v146, v147);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v82, v116);
      }

      v117 = OUTLINED_FUNCTION_13_96();
      sub_1D55078B4(v117, v118, v119);
      sub_1D55078B4(v79, v80, v81);
      goto LABEL_40;
    case 2u:
      OUTLINED_FUNCTION_5_148();
      v35 = v34;
      sub_1D550B250();
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v54 = *&v25[v53];
      v37 = *&v25[v53 + 8];
      v55 = v25[v53 + 16];
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v93 = OUTLINED_FUNCTION_13_96();
        sub_1D55078B4(v93, v94, v95);
        OUTLINED_FUNCTION_0_257();
        v44 = v25;
        goto LABEL_24;
      }

      v56 = *&v33[v53];
      v57 = *&v33[v53 + 8];
      v58 = v33[v53 + 16];
      OUTLINED_FUNCTION_1_192();
      v59 = v162;
      sub_1D550BCB4();
      static MusicDaemon.Response.Context.== infix(_:_:)();
      v61 = v60;
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v25, v62);
      if ((v61 & 1) == 0)
      {
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v59, v115);
        goto LABEL_42;
      }

      if (v55 != 255)
      {
        v168 = v54;
        v169 = v37;
        v170 = v55;
        if (v58 != 255)
        {
          v165 = v56;
          v166 = v57;
          v167 = v58;
          v63 = OUTLINED_FUNCTION_13_96();
          sub_1D5507888(v63, v64, v65);
          OUTLINED_FUNCTION_83_24();
          sub_1D55078C8(v165, v166, v167);
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v59, v66);
          OUTLINED_FUNCTION_64_34();
          v67 = OUTLINED_FUNCTION_13_96();
          sub_1D55078B4(v67, v68, v69);
          goto LABEL_44;
        }

        v134 = OUTLINED_FUNCTION_13_96();
        sub_1D5507888(v134, v135, v136);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v59, v137);
        v138 = OUTLINED_FUNCTION_13_96();
        sub_1D55078C8(v138, v139, v140);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v59, v130);
      if (v58 != 255)
      {
        goto LABEL_42;
      }

      v131 = v54;
      goto LABEL_55;
    case 3u:
      OUTLINED_FUNCTION_5_148();
      sub_1D550B250();
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        OUTLINED_FUNCTION_1_192();
        sub_1D550BCB4();
        static MusicDaemon.Response.Context.== infix(_:_:)();
        OUTLINED_FUNCTION_23_76();
        v71 = v70;
        sub_1D550B1A4(v0, v70);
        sub_1D550B1A4(v2, v71);
        OUTLINED_FUNCTION_6_151();
        v73 = v34;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v2, v96);
      goto LABEL_28;
    case 4u:
      OUTLINED_FUNCTION_5_148();
      v35 = v34;
      OUTLINED_FUNCTION_20_5();
      sub_1D550B250();
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650) + 48);
      v47 = *(v3 + v45);
      v46 = *(v3 + v45 + 8);
      v48 = *(v3 + v45 + 16);
      OUTLINED_FUNCTION_0_33();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1D55078C8(v47, v46, v48);
        sub_1D4E50004(v3, &qword_1EC7ECCA0, &qword_1D5622EB8);
        goto LABEL_25;
      }

      v49 = *&v33[v45];
      v162 = *&v33[v45 + 8];
      LODWORD(v164) = v33[v45 + 16];
      v50 = *(v159 + 48);
      v51 = v163;
      sub_1D4FB8058();
      sub_1D4FB8058();
      v52 = v160;
      OUTLINED_FUNCTION_57(v51, 1, v160);
      if (v113)
      {
        OUTLINED_FUNCTION_57(v51 + v50, 1, v52);
        if (v113)
        {
          sub_1D4E50004(v51, &qword_1EC7ECCA0, &qword_1D5622EB8);
LABEL_48:
          v168 = v47;
          v169 = v46;
          v170 = v48;
          v128 = v162;
          v165 = v49;
          v166 = v162;
          v129 = v164;
          v167 = v164;
          OUTLINED_FUNCTION_83_24();
          sub_1D55078C8(v49, v128, v129);
          sub_1D55078C8(v47, v46, v48);
          OUTLINED_FUNCTION_6_151();
          v73 = v35;
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_26_77();
      }

      else
      {
        v112 = v157;
        sub_1D4FB8150();
        OUTLINED_FUNCTION_57(v51 + v50, 1, v52);
        if (!v113)
        {
          OUTLINED_FUNCTION_1_192();
          v124 = v156;
          sub_1D550BCB4();
          OUTLINED_FUNCTION_0_33();
          static MusicDaemon.Response.Context.== infix(_:_:)();
          OUTLINED_FUNCTION_23_76();
          v125 = v51;
          v127 = v126;
          sub_1D550B1A4(v124, v126);
          sub_1D550B1A4(v112, v127);
          sub_1D4E50004(v125, &qword_1EC7ECCA0, &qword_1D5622EB8);
          if (v52)
          {
            goto LABEL_48;
          }

          OUTLINED_FUNCTION_26_77();
LABEL_44:
          OUTLINED_FUNCTION_6_151();
          v73 = v35;
LABEL_45:
          sub_1D550B1A4(v73, v72);
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_26_77();
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v112, v114);
      }

      sub_1D4E50004(v51, &qword_1EC7F7B48, &qword_1D566E640);
      goto LABEL_44;
    default:
      OUTLINED_FUNCTION_5_148();
      v35 = v34;
      sub_1D550B250();
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v38 = *&v28[v36];
      v37 = *&v28[v36 + 8];
      v39 = v28[v36 + 16];
      OUTLINED_FUNCTION_0_33();
      if (!swift_getEnumCaseMultiPayload())
      {
        v56 = *&v33[v36];
        v57 = *&v33[v36 + 8];
        v58 = v33[v36 + 16];
        OUTLINED_FUNCTION_1_192();
        v101 = v158;
        sub_1D550BCB4();
        static MusicDaemon.Response.Context.== infix(_:_:)();
        v103 = v102;
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v28, v104);
        if (v103)
        {
          if (v39 == 255)
          {
            OUTLINED_FUNCTION_0_257();
            sub_1D550B1A4(v101, v133);
            if (v58 == 255)
            {
              v131 = v38;
LABEL_55:
              sub_1D55078B4(v131, v37, 0xFFu);
              goto LABEL_44;
            }
          }

          else
          {
            v168 = v38;
            v169 = v37;
            v170 = v39;
            if (v58 != 255)
            {
              v165 = v56;
              v166 = v57;
              v167 = v58;
              OUTLINED_FUNCTION_65();
              sub_1D5507888(v105, v106, v107);
              OUTLINED_FUNCTION_83_24();
              sub_1D55078C8(v165, v166, v167);
              OUTLINED_FUNCTION_0_257();
              sub_1D550B1A4(v101, v108);
              OUTLINED_FUNCTION_64_34();
              OUTLINED_FUNCTION_65();
              sub_1D55078B4(v109, v110, v111);
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_65();
            sub_1D5507888(v148, v149, v150);
            OUTLINED_FUNCTION_0_257();
            sub_1D550B1A4(v101, v151);
            OUTLINED_FUNCTION_65();
            sub_1D55078C8(v152, v153, v154);
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_257();
          sub_1D550B1A4(v101, v120);
        }

LABEL_42:
        OUTLINED_FUNCTION_65();
        sub_1D55078B4(v121, v122, v123);
        sub_1D55078B4(v56, v57, v58);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_65();
      sub_1D55078B4(v40, v41, v42);
      OUTLINED_FUNCTION_0_257();
      v44 = v28;
LABEL_24:
      sub_1D550B1A4(v44, v43);
LABEL_25:
      v34 = v35;
LABEL_28:
      sub_1D4E50004(v34, &qword_1EC7F7B50, &qword_1D566E648);
LABEL_46:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D550BCB4()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D550BD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65506E6F69746361 && a2 == 0xEF64656D726F6672;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D568FEF0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D568FF10 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001D568FF30 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1D550BEC0(char a1)
{
  result = 0x65506E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D550BF70()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v1 == 0x747865746E6F63 && v2 == 0xE700000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x726F727265 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D5616168();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D550C048(uint64_t a1)
{
  v2 = sub_1D550D090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C084(uint64_t a1)
{
  v2 = sub_1D550D090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D550C114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D550BD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D550C13C(uint64_t a1)
{
  v2 = sub_1D550CE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C178(uint64_t a1)
{
  v2 = sub_1D550CE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C1B4(uint64_t a1)
{
  v2 = sub_1D550CEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C1F0(uint64_t a1)
{
  v2 = sub_1D550CEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C22C(uint64_t a1)
{
  v2 = sub_1D550D03C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C268(uint64_t a1)
{
  v2 = sub_1D550D03C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C2A4(uint64_t a1)
{
  v2 = sub_1D550CF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C2E0(uint64_t a1)
{
  v2 = sub_1D550CF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D550C368(uint64_t a1)
{
  v2 = sub_1D550CFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C3A4(uint64_t a1)
{
  v2 = sub_1D550CFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Response.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v137 = v1;
  v135 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B68, &qword_1D566E660);
  OUTLINED_FUNCTION_4();
  v130 = v5;
  v131 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v129 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v134 = v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B70, &qword_1D566E668);
  OUTLINED_FUNCTION_4();
  v122 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v121 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B78, &qword_1D566E670);
  OUTLINED_FUNCTION_4();
  v127 = v15;
  v128 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v126 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B80, &qword_1D566E678);
  OUTLINED_FUNCTION_4();
  v123 = v19;
  v124 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v120[3] = v21;
  v120[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B88, &qword_1D566E680);
  OUTLINED_FUNCTION_4();
  v120[1] = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_71_1();
  v136 = type metadata accessor for MusicDaemon.Response.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  v133 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v132 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_159_1();
  v33 = type metadata accessor for MusicDaemon.Response(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B90, &qword_1D566E688);
  OUTLINED_FUNCTION_4();
  v139 = v38;
  v140 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v120 - v41;
  v43 = OUTLINED_FUNCTION_20_5();
  __swift_project_boxed_opaque_existential_1(v43, v44);
  sub_1D550CE98();
  v138 = v42;
  sub_1D56163D8();
  OUTLINED_FUNCTION_5_148();
  sub_1D550B250();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v87 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v88 = *(v87 + 8);
      v134 = *v87;
      v135 = v88;
      v89 = *(v87 + 16);
      OUTLINED_FUNCTION_1_192();
      v90 = v132;
      sub_1D550BCB4();
      LOBYTE(v141) = 1;
      sub_1D550D03C();
      sub_1D5616018();
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v91, v92, &protocol conformance descriptor for MusicDaemon.Response.Context);
      OUTLINED_FUNCTION_42_48();
      v93 = v137;
      sub_1D56160C8();
      if (v93)
      {
        sub_1D55078B4(v134, v135, v89);
        v94 = OUTLINED_FUNCTION_77_22();
        v95(v94);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v90, v96);
        v56 = OUTLINED_FUNCTION_16_94();
        goto LABEL_13;
      }

      v141 = v134;
      v142 = v135;
      v143 = v89;
      sub_1D550CF40();
      OUTLINED_FUNCTION_56_38();
      sub_1D5616068();
      v115 = OUTLINED_FUNCTION_77_22();
      v116(v115);
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v132, v117);
      v118 = OUTLINED_FUNCTION_16_94();
      v119(v118);
      v107 = v134;
      v108 = v135;
      v109 = v89;
      goto LABEL_18;
    case 2u:
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_55_35(v67);
      OUTLINED_FUNCTION_1_192();
      v68 = v133;
      sub_1D550BCB4();
      LOBYTE(v141) = 2;
      sub_1D550CFE8();
      OUTLINED_FUNCTION_62_39(&_s8ResponseO26ObservationEndedCodingKeysON, &v141);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v69, v70, &protocol conformance descriptor for MusicDaemon.Response.Context);
      OUTLINED_FUNCTION_42_48();
      v71 = v137;
      sub_1D56160C8();
      if (v71)
      {
        v72 = OUTLINED_FUNCTION_31_56();
        sub_1D55078B4(v72, v73, v74);
        v75 = OUTLINED_FUNCTION_16_94();
        v76(v75);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v68, v77);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_66_27();
      OUTLINED_FUNCTION_56_38();
      sub_1D5616068();
      v103 = OUTLINED_FUNCTION_16_94();
      v104(v103);
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v133, v105);
      OUTLINED_FUNCTION_203_0();
      v106(v3, v33);
      v107 = OUTLINED_FUNCTION_31_56();
      goto LABEL_18;
    case 3u:
      sub_1D550BCB4();
      LOBYTE(v141) = 3;
      sub_1D550CF94();
      v79 = v121;
      v81 = v138;
      v80 = v139;
      sub_1D5616018();
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v82, v83, &protocol conformance descriptor for MusicDaemon.Response.Context);
      v84 = v125;
      sub_1D56160C8();
      OUTLINED_FUNCTION_19_3();
      v85(v79, v84);
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v27, v86);
      OUTLINED_FUNCTION_203_0();
      v56 = v81;
      v78 = v80;
      goto LABEL_13;
    case 4u:
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650);
      OUTLINED_FUNCTION_55_35(v57);
      v58 = v134;
      sub_1D4FB8058();
      LOBYTE(v141) = 4;
      sub_1D550CEEC();
      OUTLINED_FUNCTION_62_39(&_s8ResponseO17FailureCodingKeysON, &v141);
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v59, v60, &protocol conformance descriptor for MusicDaemon.Response.Context);
      OUTLINED_FUNCTION_42_48();
      v61 = v137;
      sub_1D5616068();
      if (!v61)
      {
        OUTLINED_FUNCTION_66_27();
        OUTLINED_FUNCTION_56_38();
        sub_1D56160C8();
        v97 = OUTLINED_FUNCTION_16_94();
        v98(v97);
        sub_1D4E50004(v134, &qword_1EC7ECCA0, &qword_1D5622EB8);
        OUTLINED_FUNCTION_203_0();
        v99(v3, v33);
        v100 = OUTLINED_FUNCTION_31_56();
        sub_1D55078C8(v100, v101, v102);
        goto LABEL_19;
      }

      v62 = OUTLINED_FUNCTION_31_56();
      sub_1D55078C8(v62, v63, v64);
      v65 = OUTLINED_FUNCTION_16_94();
      v66(v65);
      sub_1D4E50004(v58, &qword_1EC7ECCA0, &qword_1D5622EB8);
LABEL_8:
      OUTLINED_FUNCTION_203_0();
      v56 = v3;
      goto LABEL_9;
    default:
      v45 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v46 = *v45;
      v47 = *(v45 + 8);
      LODWORD(v135) = *(v45 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      LOBYTE(v141) = 0;
      sub_1D550D090();
      v48 = v138;
      v33 = v139;
      sub_1D5616018();
      LOBYTE(v141) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v49, v50, &protocol conformance descriptor for MusicDaemon.Response.Context);
      OUTLINED_FUNCTION_42_48();
      v51 = v137;
      sub_1D56160C8();
      if (v51)
      {
        sub_1D55078B4(v46, v47, v135);
        v52 = OUTLINED_FUNCTION_54_38();
        v53(v52);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v2, v54);
        OUTLINED_FUNCTION_203_0();
        v56 = v48;
LABEL_9:
        v78 = v33;
LABEL_13:
        v55(v56, v78);
      }

      else
      {
        v134 = v46;
        v141 = v46;
        v142 = v47;
        v110 = v135;
        v143 = v135;
        sub_1D550CF40();
        OUTLINED_FUNCTION_56_38();
        sub_1D5616068();
        v111 = OUTLINED_FUNCTION_54_38();
        v112(v111);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v2, v113);
        OUTLINED_FUNCTION_203_0();
        v114(v48, v33);
        v107 = v134;
        v108 = v47;
        v109 = v110;
LABEL_18:
        sub_1D55078B4(v107, v108, v109);
      }

LABEL_19:
      OUTLINED_FUNCTION_26();
      return;
  }
}

unint64_t sub_1D550CE98()
{
  result = qword_1EDD5E900[0];
  if (!qword_1EDD5E900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5E900);
  }

  return result;
}

unint64_t sub_1D550CEEC()
{
  result = qword_1EC7F7B98;
  if (!qword_1EC7F7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7B98);
  }

  return result;
}

unint64_t sub_1D550CF40()
{
  result = qword_1EDD592B0;
  if (!qword_1EDD592B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD592B0);
  }

  return result;
}

unint64_t sub_1D550CF94()
{
  result = qword_1EDD5E898;
  if (!qword_1EDD5E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E898);
  }

  return result;
}

unint64_t sub_1D550CFE8()
{
  result = qword_1EDD5E8B0;
  if (!qword_1EDD5E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8B0);
  }

  return result;
}

unint64_t sub_1D550D03C()
{
  result = qword_1EDD5E8C8;
  if (!qword_1EDD5E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8C8);
  }

  return result;
}

unint64_t sub_1D550D090()
{
  result = qword_1EC7F7BA0;
  if (!qword_1EC7F7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BA0);
  }

  return result;
}

void MusicDaemon.Response.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v128 - v6;
  sub_1D560D478();
  OUTLINED_FUNCTION_4();
  v132 = v9;
  v133 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v131 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v129 = v14 - v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v130 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v128 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v128 - v21;
  v134 = type metadata accessor for MusicDaemon.Response.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v128 - v30;
  type metadata accessor for MusicDaemon.Response(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_148();
  sub_1D550B250();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_70_27();
      v74 = *v73;
      v129 = *(v73 + 8);
      v130 = v74;
      v75 = *(v73 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](1);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v76, v77, MEMORY[0x1E69695B8]);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_73_25();
      v79 = v1 + v78;
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v80, v81, MEMORY[0x1E6974F68]);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v82 = type metadata accessor for MusicDaemon.Item(0);
      OUTLINED_FUNCTION_38_49(v82);
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v83, v84, MEMORY[0x1E6975D70]);
      OUTLINED_FUNCTION_49_35();
      sub_1D5614CB8();
      v85 = *(v79 + v82[7]);
      if (v85 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v85);
      }

      v109 = v128;
      if (*(v79 + v82[8]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v79 + v82[9]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46();
      sub_1D4FB8150();
      v111 = v133;
      OUTLINED_FUNCTION_57(v109, 1, v133);
      if (v88)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v119 = v131;
        v118 = v132;
        (*(v132 + 32))(v131, v109, v111);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v120, v121, MEMORY[0x1E6974F08]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v118 + 8))(v119, v111);
      }

      OUTLINED_FUNCTION_75_26();
      v123 = (v1 + v122);
      if (*v123 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v127 = v123[1];
        v126 = v123[2];
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v127);
        MEMORY[0x1DA6EC0D0](v126);
      }

      OUTLINED_FUNCTION_74_29();
      sub_1D5614CB8();
      if (v75 == 255)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v135 = v130;
        v136 = v129;
        v137 = v75;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_84_20();
        OUTLINED_FUNCTION_64_34();
      }

      OUTLINED_FUNCTION_0_257();
      v108 = v1;
      goto LABEL_72;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_70_27();
      v51 = *(v50 + 8);
      v129 = *v50;
      v52 = *(v50 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](2);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v53, v54, MEMORY[0x1E69695B8]);
      OUTLINED_FUNCTION_82_25(v3);
      OUTLINED_FUNCTION_73_25();
      v56 = v0 + v55;
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v57, v58, MEMORY[0x1E6974F68]);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v59 = type metadata accessor for MusicDaemon.Item(0);
      OUTLINED_FUNCTION_45_46();
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v60, v61, MEMORY[0x1E6975D70]);
      sub_1D5614CB8();
      v62 = *(v56 + v59[7]);
      if (v62 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v62);
      }

      if (*(v56 + v59[8]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v56 + v59[9]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      v86 = v133;
      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46();
      v87 = v130;
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v87, 1, v86);
      if (v88)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v90 = v131;
        v89 = v132;
        (*(v132 + 32))(v131, v87, v86);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v91, v92, MEMORY[0x1E6974F08]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v89 + 8))(v90, v86);
      }

      OUTLINED_FUNCTION_75_26();
      v94 = (v0 + v93);
      if (*v94 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v96 = v94[1];
        v95 = v94[2];
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v96);
        MEMORY[0x1DA6EC0D0](v95);
      }

      OUTLINED_FUNCTION_74_29();
      OUTLINED_FUNCTION_82_25(v3);
      if (v52 == 255)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v135 = v129;
        v136 = v51;
        v137 = v52;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_84_20();
        OUTLINED_FUNCTION_64_34();
      }

      OUTLINED_FUNCTION_0_257();
      v108 = v0;
      goto LABEL_72;
    case 3u:
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](3);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v63, v64, MEMORY[0x1E69695B8]);
      OUTLINED_FUNCTION_82_25(v3);
      OUTLINED_FUNCTION_73_25();
      v66 = v26 + v65;
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v67, v68, MEMORY[0x1E6974F68]);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v69 = type metadata accessor for MusicDaemon.Item(0);
      OUTLINED_FUNCTION_38_49(v69);
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v70, v71, MEMORY[0x1E6975D70]);
      OUTLINED_FUNCTION_49_35();
      sub_1D5614CB8();
      v72 = *(v66 + v69[7]);
      if (v72 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v72);
      }

      if (*(v66 + v69[8]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      v97 = v133;
      sub_1D56162F8();
      if (*(v66 + v69[9]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46();
      v98 = v129;
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v98, 1, v97);
      if (v88)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v100 = v131;
        v99 = v132;
        (*(v132 + 32))(v131, v98, v97);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v101, v102, MEMORY[0x1E6974F08]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v99 + 8))(v100, v97);
      }

      OUTLINED_FUNCTION_75_26();
      v104 = (v26 + v103);
      if (*v104 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v106 = v104[1];
        v105 = v104[2];
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v106);
        MEMORY[0x1DA6EC0D0](v105);
      }

      OUTLINED_FUNCTION_74_29();
      OUTLINED_FUNCTION_82_25(v3);
      OUTLINED_FUNCTION_0_257();
      v108 = v26;
      goto LABEL_72;
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650);
      OUTLINED_FUNCTION_70_27();
      v47 = *v46;
      v48 = *(v46 + 8);
      v49 = *(v46 + 16);
      sub_1D4FB8058();
      MEMORY[0x1DA6EC0D0](4);
      sub_1D4F87AF4();
      v135 = v47;
      v136 = v48;
      v137 = v49;
      OUTLINED_FUNCTION_84_20();
      sub_1D4E50004(v7, &qword_1EC7ECCA0, &qword_1D5622EB8);
      sub_1D55078C8(v47, v48, v49);
      goto LABEL_73;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_70_27();
      v34 = *v33;
      v129 = *(v33 + 8);
      v130 = v34;
      v35 = *(v33 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](0);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v36, v37, MEMORY[0x1E69695B8]);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_73_25();
      v39 = &v31[v38];
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v40, v41, MEMORY[0x1E6974F68]);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v42 = type metadata accessor for MusicDaemon.Item(0);
      OUTLINED_FUNCTION_38_49(v42);
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v43, v44, MEMORY[0x1E6975D70]);
      OUTLINED_FUNCTION_49_35();
      sub_1D5614CB8();
      v45 = v39[v42[7]];
      if (v45 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v45);
      }

      if (v39[v42[8]] != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (v39[v42[9]] != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      v110 = v133;
      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46();
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v22, 1, v110);
      if (v88)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v113 = v131;
        v112 = v132;
        (*(v132 + 32))(v131, v22, v110);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v114, v115, MEMORY[0x1E6974F08]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v112 + 8))(v113, v110);
      }

      OUTLINED_FUNCTION_75_26();
      v117 = &v31[v116];
      if (*v117 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v125 = *(v117 + 1);
        v124 = *(v117 + 2);
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v125);
        MEMORY[0x1DA6EC0D0](v124);
      }

      OUTLINED_FUNCTION_74_29();
      sub_1D5614CB8();
      if (v35 == 255)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v135 = v130;
        v136 = v129;
        v137 = v35;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_84_20();
        OUTLINED_FUNCTION_64_34();
      }

      OUTLINED_FUNCTION_0_257();
      v108 = v31;
LABEL_72:
      sub_1D550B1A4(v108, v107);
LABEL_73:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D550DF94(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void MusicDaemon.Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_25_1();
  a26 = v32;
  a27 = v33;
  v142 = v27;
  v35 = v34;
  v136 = v36;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BA8, &qword_1D566E690);
  OUTLINED_FUNCTION_4();
  v128 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v135 = v39;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BB0, &qword_1D566E698);
  OUTLINED_FUNCTION_4();
  v124 = v40;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v132 = v42;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BB8, &qword_1D566E6A0);
  OUTLINED_FUNCTION_4();
  v127 = v43;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v134 = v45;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BC0, &qword_1D566E6A8);
  OUTLINED_FUNCTION_4();
  v125 = v46;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v133 = v48;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BC8, &qword_1D566E6B0);
  OUTLINED_FUNCTION_4();
  v122[7] = v49;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  v131 = v51;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BD0, &unk_1D566E6B8);
  OUTLINED_FUNCTION_4();
  v137 = v52;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  v54 = OUTLINED_FUNCTION_34();
  v138 = type metadata accessor for MusicDaemon.Response(v54);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_59_0();
  v122[6] = v56 - v57;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_60_16();
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = v122 - v63;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_159_1();
  v65 = v35[3];
  v141 = v35;
  __swift_project_boxed_opaque_existential_1(v35, v65);
  sub_1D550CE98();
  v66 = v142;
  sub_1D5616398();
  if (v66)
  {
    goto LABEL_10;
  }

  v122[4] = v29;
  v122[2] = v31;
  v122[3] = v30;
  v142 = v64;
  v67 = v140;
  v122[5] = v28;
  v69 = v138;
  v68 = v139;
  sub_1D5615FE8();
  sub_1D4FE35F0();
  if (v71 == v72 >> 1)
  {
    v73 = v69;
LABEL_9:
    v87 = sub_1D5615C18();
    swift_allocError();
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v89 = v73;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v87 - 8) + 104))(v89, *MEMORY[0x1E69E6AF8], v87);
    swift_willThrow();
    swift_unknownObjectRelease();
    v90 = OUTLINED_FUNCTION_22_75();
    v91(v90, v68);
LABEL_10:
    v80 = v141;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_26();
    return;
  }

  v122[0] = 0;
  if (v71 < (v72 >> 1))
  {
    v74 = *(v70 + v71);
    v75 = sub_1D4FE35EC();
    v77 = v76;
    v79 = v78;
    swift_unknownObjectRelease();
    v122[1] = v75;
    v73 = v69;
    if (v77 == v79 >> 1)
    {
      v80 = v122[0];
      switch(v74)
      {
        case 1:
          a10 = 1;
          sub_1D550D03C();
          OUTLINED_FUNCTION_19_85(&_s8ResponseO26ObservationBeganCodingKeysON, &a10);
          OUTLINED_FUNCTION_85_23();
          v145[2] = 0;
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v101, v102, &protocol conformance descriptor for MusicDaemon.Response.Context);
          sub_1D5615FD8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
          v145[1] = 1;
          sub_1D550F4A8();
          OUTLINED_FUNCTION_53_35();
          sub_1D5615F78();
          OUTLINED_FUNCTION_60_30();
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_22_75();
          v119(v118, v129);
          v120 = OUTLINED_FUNCTION_52_37();
          v121(v120);
          swift_storeEnumTagMultiPayload();
          v80 = v141;
          goto LABEL_24;
        case 2:
          a13 = 2;
          sub_1D550CFE8();
          OUTLINED_FUNCTION_19_85(&_s8ResponseO26ObservationEndedCodingKeysON, &a13);
          OUTLINED_FUNCTION_76_20();
          OUTLINED_FUNCTION_85_23();
          a12 = 0;
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v94, v95, &protocol conformance descriptor for MusicDaemon.Response.Context);
          sub_1D5615FD8();
          if (v77)
          {
            OUTLINED_FUNCTION_63_28();
            v86 = OUTLINED_FUNCTION_22_75();
            v96 = v130;
            goto LABEL_20;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
          a11 = 1;
          sub_1D550F4A8();
          OUTLINED_FUNCTION_53_35();
          sub_1D5615F78();
          OUTLINED_FUNCTION_60_30();
          swift_unknownObjectRelease();
          v111 = OUTLINED_FUNCTION_22_75();
          v112(v111, v130);
          v113 = OUTLINED_FUNCTION_11_121();
          v114(v113);
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        case 3:
          a14 = 3;
          sub_1D550CF94();
          OUTLINED_FUNCTION_19_85(&_s8ResponseO28ObservationChangesCodingKeysON, &a14);
          OUTLINED_FUNCTION_76_20();
          OUTLINED_FUNCTION_85_23();
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v97, v98, &protocol conformance descriptor for MusicDaemon.Response.Context);
          v84 = v126;
          sub_1D5615FD8();
          OUTLINED_FUNCTION_60_30();
          if (v77)
          {
            swift_unknownObjectRelease();
            v86 = OUTLINED_FUNCTION_22_75();
            goto LABEL_19;
          }

          swift_unknownObjectRelease();
          v103 = OUTLINED_FUNCTION_22_75();
          v104(v103, v84);
          v105 = OUTLINED_FUNCTION_11_121();
          v106(v105);
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        case 4:
          a17 = 4;
          sub_1D550CEEC();
          OUTLINED_FUNCTION_19_85(&_s8ResponseO17FailureCodingKeysON, &a17);
          OUTLINED_FUNCTION_85_23();
          a16 = 0;
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v92, v93, &protocol conformance descriptor for MusicDaemon.Response.Context);
          sub_1D5615F78();
          OUTLINED_FUNCTION_76_20();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650);
          a15 = 1;
          sub_1D550F4A8();
          OUTLINED_FUNCTION_53_35();
          sub_1D5615FD8();
          OUTLINED_FUNCTION_60_30();
          swift_unknownObjectRelease();
          v107 = OUTLINED_FUNCTION_22_75();
          v108(v107, v67);
          v109 = OUTLINED_FUNCTION_11_121();
          v110(v109);
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        default:
          v145[0] = 0;
          sub_1D550D090();
          v81 = v131;
          OUTLINED_FUNCTION_19_85(&_s8ResponseO25ActionPerformedCodingKeysON, v145);
          OUTLINED_FUNCTION_76_20();
          type metadata accessor for MusicDaemon.Response.Context(0);
          v144 = 0;
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v82, v83, &protocol conformance descriptor for MusicDaemon.Response.Context);
          v84 = v123;
          sub_1D5615FD8();
          if (v77)
          {
            OUTLINED_FUNCTION_63_28();
            OUTLINED_FUNCTION_19_3();
            v86 = v81;
LABEL_19:
            v96 = v84;
LABEL_20:
            v85(v86, v96);
            v99 = OUTLINED_FUNCTION_11_121();
            v100(v99);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
            v143 = 1;
            sub_1D550F4A8();
            sub_1D5615F78();
            OUTLINED_FUNCTION_60_30();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_19_3();
            v115(v81, v84);
            v116 = OUTLINED_FUNCTION_11_121();
            v117(v116);
            swift_storeEnumTagMultiPayload();
LABEL_24:
            sub_1D550BCB4();
            sub_1D550BCB4();
          }

          break;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D550ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

unint64_t MusicDaemon.Response.Context.description.getter()
{
  OUTLINED_FUNCTION_9_0();
  strcpy(v3, "requestID: ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  v0 = sub_1D560C338();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v3[0], v3[1]);

  strcpy(v3, ", item: ");
  BYTE1(v3[1]) = 0;
  WORD1(v3[1]) = 0;
  HIDWORD(v3[1]) = -402653184;
  type metadata accessor for MusicDaemon.Response.Context(0);
  v1 = sub_1D53A3188();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](v3[0], v3[1]);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000024;
}

void MusicDaemon.Response.Context.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34();
  v4 = sub_1D560D478();
  OUTLINED_FUNCTION_4();
  v44 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v42 = v7 - v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v41 - v10;
  OUTLINED_FUNCTION_9_0();
  v55 = 0xD000000000000024;
  v56 = v11;
  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  v46 = 0x657571657220200ALL;
  v47 = 0xEF22203A44497473;
  v12 = sub_1D560C338();
  MEMORY[0x1DA6EAC70](v12);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v46, v47);

  v46 = 0x6D65746920200A2CLL;
  v47 = 0xEA0000000000203ALL;
  v13 = type metadata accessor for MusicDaemon.Response.Context(0);
  v53 = sub_1D53A34BC();
  v54 = v14;
  v51 = 10;
  v52 = 0xE100000000000000;
  v49 = 2105354;
  v50 = 0xE300000000000000;
  v15 = sub_1D4F53278();
  v16 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_31();
  v17 = sub_1D5615968();
  v19 = v18;

  MEMORY[0x1DA6EAC70](v17, v19);

  OUTLINED_FUNCTION_65_33();

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1D5615B68();

  v46 = 0x6F63636120200A2CLL;
  v47 = 0xEF203A4449746E75;
  MEMORY[0x1DA6EAC70](*(v0 + *(v13 + 24)), *(v0 + *(v13 + 24) + 8));
  OUTLINED_FUNCTION_65_33();

  v45 = v0;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v4);
  if (v20)
  {
    sub_1D4E50004(v1, &qword_1EC7ECC98, &qword_1D5622EB0);
  }

  else
  {
    v21 = v43;
    v22 = v44;
    (*(v44 + 32))(v43, v1, v4);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v46 = 0xD000000000000012;
    v47 = v23;
    (*(v22 + 16))(v42, v21, v4);
    v53 = sub_1D5614DD8();
    v54 = v24;
    v51 = 10;
    v52 = 0xE100000000000000;
    v49 = 2105354;
    v50 = 0xE300000000000000;
    OUTLINED_FUNCTION_79_24();
    v41 = v16;
    v42 = v15;
    OUTLINED_FUNCTION_3_31();
    v25 = sub_1D5615968();
    v27 = v26;

    MEMORY[0x1DA6EAC70](v25, v27);

    OUTLINED_FUNCTION_65_33();

    (*(v22 + 8))(v21, v4);
  }

  v28 = (v45 + *(v13 + 32));
  v29 = *v28;
  if (*v28 != 2)
  {
    v31 = v28[1];
    v30 = v28[2];
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v53 = 0xD000000000000012;
    v54 = v32;
    LOWORD(v46) = v29 & 0x101;
    BYTE2(v46) = BYTE2(v29) & 1;
    BYTE3(v46) = BYTE3(v29) & 1;
    v47 = v31;
    v48 = v30;
    v46 = sub_1D5614DD8();
    v47 = v33;
    v51 = 10;
    v52 = 0xE100000000000000;
    v49 = 2105354;
    v50 = 0xE300000000000000;
    OUTLINED_FUNCTION_79_24();
    v46 = v15;
    v45 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_31();
    v34 = sub_1D5615968();
    v36 = v35;

    MEMORY[0x1DA6EAC70](v34, v36);

    MEMORY[0x1DA6EAC70](v53, v54);
  }

  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v46 = 0xD000000000000010;
  v47 = v37;
  sub_1D560C368();
  OUTLINED_FUNCTION_4_151();
  sub_1D550A848(v38, v39, MEMORY[0x1E69695E0]);
  v40 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v40);

  MEMORY[0x1DA6EAC70](v46, v47);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D550F4A8()
{
  result = qword_1EDD592A8;
  if (!qword_1EDD592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD592A8);
  }

  return result;
}

void sub_1D550F58C(uint64_t a1)
{
  sub_1D550F618(319);
  if (v1 <= 0x3F)
  {
    sub_1D550F698();
    if (v2 <= 0x3F)
    {
      sub_1D550F6E0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D550F618(uint64_t a1)
{
  if (!qword_1EDD5E868)
  {
    type metadata accessor for MusicDaemon.Response.Context(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7B10, &qword_1D566E418);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD5E868);
    }
  }
}

void sub_1D550F698()
{
  if (!qword_1EDD5E860)
  {
    v0 = type metadata accessor for MusicDaemon.Response.Context(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5E860);
    }
  }
}

void sub_1D550F6E0(uint64_t a1)
{
  if (!qword_1EDD5E810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD5E810);
    }
  }
}

uint64_t sub_1D550F780(uint64_t a1)
{
  v1 = sub_1D560C368();
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for MusicDaemon.Item(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D550F850(319);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D550F8A8();
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1D550F850(uint64_t a1)
{
  if (!qword_1EDD5F558)
  {
    sub_1D560D478();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5F558);
    }
  }
}

void sub_1D550F8A8()
{
  if (!qword_1EDD5EFA0)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5EFA0);
    }
  }
}

_BYTE *_s8ResponseO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8ResponseO28ObservationChangesCodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1D550FAB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s8ResponseO7ContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D550FC6C()
{
  result = qword_1EC7F7BE8;
  if (!qword_1EC7F7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BE8);
  }

  return result;
}

unint64_t sub_1D550FCC4()
{
  result = qword_1EC7F7BF0;
  if (!qword_1EC7F7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BF0);
  }

  return result;
}

unint64_t sub_1D550FD1C()
{
  result = qword_1EC7F7BF8;
  if (!qword_1EC7F7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BF8);
  }

  return result;
}

unint64_t sub_1D550FD74()
{
  result = qword_1EC7F7C00;
  if (!qword_1EC7F7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C00);
  }

  return result;
}

unint64_t sub_1D550FDCC()
{
  result = qword_1EC7F7C08;
  if (!qword_1EC7F7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C08);
  }

  return result;
}

unint64_t sub_1D550FE24()
{
  result = qword_1EC7F7C10;
  if (!qword_1EC7F7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C10);
  }

  return result;
}

unint64_t sub_1D550FE7C()
{
  result = qword_1EC7F7C18;
  if (!qword_1EC7F7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C18);
  }

  return result;
}

unint64_t sub_1D550FED4()
{
  result = qword_1EDD5E8D0;
  if (!qword_1EDD5E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8D0);
  }

  return result;
}

unint64_t sub_1D550FF2C()
{
  result = qword_1EDD5E8D8;
  if (!qword_1EDD5E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8D8);
  }

  return result;
}

unint64_t sub_1D550FF84()
{
  result = qword_1EDD5E8B8;
  if (!qword_1EDD5E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8B8);
  }

  return result;
}

unint64_t sub_1D550FFDC()
{
  result = qword_1EDD5E8C0;
  if (!qword_1EDD5E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8C0);
  }

  return result;
}

unint64_t sub_1D5510034()
{
  result = qword_1EDD5E8A0;
  if (!qword_1EDD5E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8A0);
  }

  return result;
}

unint64_t sub_1D551008C()
{
  result = qword_1EDD5E8A8;
  if (!qword_1EDD5E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8A8);
  }

  return result;
}

unint64_t sub_1D55100E4()
{
  result = qword_1EDD5E888;
  if (!qword_1EDD5E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E888);
  }

  return result;
}

unint64_t sub_1D551013C()
{
  result = qword_1EDD5E890;
  if (!qword_1EDD5E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E890);
  }

  return result;
}

unint64_t sub_1D5510194()
{
  result = qword_1EDD5E8E0;
  if (!qword_1EDD5E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8E0);
  }

  return result;
}

unint64_t sub_1D55101EC()
{
  result = qword_1EDD5E8E8;
  if (!qword_1EDD5E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8E8);
  }

  return result;
}

unint64_t sub_1D5510244()
{
  result = qword_1EDD5E8F0;
  if (!qword_1EDD5E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8F0);
  }

  return result;
}

unint64_t sub_1D551029C()
{
  result = qword_1EDD5E8F8;
  if (!qword_1EDD5E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8F8);
  }

  return result;
}

unint64_t sub_1D55102F4()
{
  result = qword_1EDD5E870;
  if (!qword_1EDD5E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E870);
  }

  return result;
}

unint64_t sub_1D551034C()
{
  result = qword_1EDD5E878;
  if (!qword_1EDD5E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E878);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_39(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

void OUTLINED_FUNCTION_65_33()
{

  JUMPOUT(0x1DA6EAC70);
}

unint64_t OUTLINED_FUNCTION_66_27()
{
  v4 = *(v2 - 160);
  *(v2 - 112) = v1;
  *(v2 - 104) = v4;
  *(v2 - 96) = v0;
  *(v2 - 65) = 1;

  return sub_1D550CF40();
}

uint64_t Artwork._artworkCatalog.getter(uint64_t a1)
{
  result = sub_1D5614038();
  if (!result)
  {

    return sub_1D5613F18();
  }

  return result;
}

uint64_t Artwork.init(_:)@<X0>(uint64_t a2@<X8>)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v13 = sub_1D56140F8();
  v41 = v12;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = objc_opt_self();
  v15 = sub_1D5614BA8();
  v43[0] = 0;
  v16 = [v14 dataWithJSONObject:v15 options:0 error:v43];

  v17 = v43[0];
  if (v16)
  {
    v18 = sub_1D560C198();
    v20 = v19;

    sub_1D560B9C8();
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D54CD0A4();
    sub_1D560B948();
    v36 = v41;
    sub_1D4E7661C(v41, &qword_1EC7E9CA0, &unk_1D561A0C0);

    sub_1D4E55E1C(v18, v20);

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
    sub_1D531EC24(v10, v36);
  }

  else
  {
    v21 = v17;
    v22 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D560C758();
    __swift_project_value_buffer(v23, qword_1EDD76DC8);

    v24 = v22;
    v25 = sub_1D560C738();
    v26 = sub_1D56156C8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v27 = 136446466;
      v28 = sub_1D5614BC8();
      v40 = a2;
      v30 = v29;

      v31 = sub_1D4E6835C(v28, v30, v43);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v42 = v22;
      v32 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      v33 = sub_1D5614DB8();
      v35 = sub_1D4E6835C(v33, v34, v43);

      *(v27 + 14) = v35;
      a2 = v40;
      _os_log_impl(&dword_1D4E3F000, v25, v26, "Failed to initialize Artwork with dictionary: %{public}s. Error = %s.", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }

    v36 = v41;
  }

  sub_1D531EC24(v36, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    sub_1D4E7661C(v7, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v37 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    (*(v38 + 32))(a2, v7, v13);
    v37 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v37, 1, v13);
}

uint64_t Artwork.textGradient.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C20, &qword_1D566F0E0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5613FD8();
  v5 = sub_1D5613FC8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7F7C20, &qword_1D566F0E0);
    v6 = type metadata accessor for Artwork.TextGradient(0);
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = sub_1D5613F88();
    v10 = sub_1D5613FA8();
    v11 = type metadata accessor for Artwork.TextGradient(0);
    sub_1D5613F98();
    sub_1D5613FB8();
    *a1 = v9;
    a1[1] = v10;
    OUTLINED_FUNCTION_24_0();
    (*(v12 + 8))(v1, v5);
    v7 = a1;
    v8 = 0;
    v6 = v11;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t Artwork.gradient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C28, &qword_1D566F0E8);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D56140D8();
  v5 = sub_1D56140C8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7F7C28, &qword_1D566F0E8);
    v6 = 1;
  }

  else
  {
    sub_1D5327D74(a1);
    OUTLINED_FUNCTION_24_0();
    (*(v7 + 8))(v1, v5);
    v6 = 0;
  }

  v8 = type metadata accessor for Artwork.Gradient(0);
  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v8);
}

uint64_t Artwork.CropStyle.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Artwork.CropStyle.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D5510CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Artwork.CropStyle.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1D5510D38@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.CropStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Artwork.ImageFormat.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t Artwork.ImageFormat.rawValue.getter()
{
  v1 = 6778480;
  if (*v0 != 1)
  {
    v1 = 1667851624;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778986;
  }
}

uint64_t sub_1D5510E0C@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.ImageFormat.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Artwork.url(width:height:cropStyle:format:)(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v35 = *a4;
  sub_1D5613F48();
  sub_1D56160F8();
  v34 = sub_1D4F53278();
  v33 = MEMORY[0x1E69E6158];
  sub_1D5615968();

  v4 = sub_1D56160F8();
  OUTLINED_FUNCTION_1_193(v4, v5, v6, v7, v8, v9, v10, v11, v33, v34, v34, v34);

  OUTLINED_FUNCTION_1_193(v12, v13, v14, v15, v16, v17, v18, v19);

  v20 = 0xE300000000000000;
  v21 = 1667851624;
  if (v35 == 1)
  {
    v21 = 6778480;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  if (v35)
  {
    v22 = v21;
  }

  else
  {
    v22 = 6778986;
  }

  if (v35)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  MEMORY[0x1DA6EAC70](v22, v23);

  OUTLINED_FUNCTION_1_193(v24, v25, v26, v27, v28, v29, v30, v31);

  sub_1D560C028();
}

uint64_t Artwork.byAnalyzingColors()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D56140F8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1D5613F58();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C30, &qword_1D566F0F8);
  OUTLINED_FUNCTION_22(v5);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D551127C, 0, 0);
}

uint64_t sub_1D551127C()
{
  (*(v0[10] + 16))(v0[7], v0[8], v0[9]);
  v1 = sub_1D5614038();
  v0[18] = v1;
  if (v1)
  {
    sub_1D56106C8();
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_1D55113CC;
    v5 = v0[17];

    return MEMORY[0x1EEDD1070](v5, v2, v3);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v6();
  }
}

uint64_t sub_1D55113CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D55114C8, 0, 0);
}

uint64_t sub_1D55114C8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1D5511BF0(v2, v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v5 = v0[17];
  v6 = v0[16];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v0[17], &qword_1EC7F7C30, &qword_1D566F0F8);

    sub_1D4E7661C(v6, &qword_1EC7F7C30, &qword_1D566F0F8);
  }

  else
  {
    v8 = v0[14];
    v7 = v0[15];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[10];
    v12 = v0[11];
    v15 = v0[7];
    v16 = v0[9];
    (*(v9 + 32))(v8, v6, v10);
    sub_1D56106C8();
    (*(v9 + 16))(v7, v8, v10);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    sub_1D5614108();

    (*(v9 + 8))(v8, v10);
    sub_1D4E7661C(v5, &qword_1EC7F7C30, &qword_1D566F0F8);
    (*(v11 + 8))(v15, v16);
    (*(v11 + 32))(v15, v12, v16);
  }

  OUTLINED_FUNCTION_55();

  return v13();
}

uint64_t sub_1D5511700()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_1D5511820;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4FE2404;
  v0[13] = &block_descriptor_35;
  v0[14] = v2;
  [v1 preconnectToImageServiceWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5511820()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    v2 = sub_1D5511A28;
  }

  else
  {
    v2 = sub_1D5511930;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5511930()
{
  if (qword_1EDD54460 != -1)
  {
    OUTLINED_FUNCTION_2_191(&qword_1EDD54460);
  }

  v0 = sub_1D560C758();
  __swift_project_value_buffer(v0, qword_1EDD76A60);
  v1 = sub_1D560C738();
  v2 = sub_1D56156E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D4E3F000, v1, v2, "Artwork.preconnectToImageService() succeeded.", v3, 2u);
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5511A28(uint64_t a1)
{
  swift_willThrow();
  if (qword_1EDD54460 != -1)
  {
    OUTLINED_FUNCTION_2_191(&qword_1EDD54460);
  }

  v2 = *(v1 + 144);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76A60);
  v4 = v2;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 144);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D4E3F000, v5, v6, "ArtworkImage.preconnectToImageService() failed with error: %{public}@.", v9, 0xCu);
    sub_1D4E7661C(v10, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55();

  return v13();
}

uint64_t sub_1D5511BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C30, &qword_1D566F0F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5511C64()
{
  result = qword_1EC7F7C38;
  if (!qword_1EC7F7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C38);
  }

  return result;
}

unint64_t sub_1D5511CBC()
{
  result = qword_1EC7F7C40;
  if (!qword_1EC7F7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C40);
  }

  return result;
}

_BYTE *_s11ImageFormatOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5511DFC()
{
  result = qword_1EC7F7C48;
  if (!qword_1EC7F7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C48);
  }

  return result;
}

uint64_t static MusicPlatformMigration.performImport(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5511E74, 0, 0);
}

uint64_t sub_1D5511E74()
{
  type metadata accessor for MusicPlatformMigration.ImportSession();
  v1 = swift_allocObject();
  v0[4] = v1;
  sub_1D5512508();
  sub_1D55140C0();
  v4 = (v0[2] + *v0[2]);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1D55120D8;

  return v4(v1);
}

uint64_t sub_1D55120D8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D551237C;
  }

  else
  {
    v2 = sub_1D55121EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D55121EC()
{
  v2 = *(v0 + 48);
  sub_1D55142F4();
  if (v2)
  {
    v3 = v2;
    if (qword_1EC7E90C8 != -1)
    {
      OUTLINED_FUNCTION_0_259();
      swift_once();
    }

    v4 = sub_1D560C758();
    v5 = OUTLINED_FUNCTION_31_57(v4, qword_1EC87C300);
    v6 = sub_1D560C738();
    v7 = sub_1D56156C8();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_55_1();
      swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_38_12();
      *v1 = 138543362;
      v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v10;
      *v8 = v10;
      OUTLINED_FUNCTION_7_140();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
      sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v17 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v17);
    }

    sub_1D551421C();
    swift_willThrow();

    OUTLINED_FUNCTION_15_5();
  }

  else
  {

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_1D551237C()
{
  v2 = *(v0 + 48);
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v3 = sub_1D560C758();
  v4 = OUTLINED_FUNCTION_31_57(v3, qword_1EC87C300);
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_55_1();
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_38_12();
    *v1 = 138543362;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_7_140();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_1D4E50004(v7, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v16 = OUTLINED_FUNCTION_3_1();
    MEMORY[0x1DA6ED200](v16);
  }

  sub_1D551421C();
  swift_willThrow();

  OUTLINED_FUNCTION_15_5();

  return v17();
}

void *sub_1D5512508()
{
  v1 = v0;
  v2 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() autoupdatingSharedLibrary];
  if (result)
  {
    v0[2] = result;
    sub_1D4ECC7A8(0, &qword_1EC7F7C70, 0x1E69B3400);
    OUTLINED_FUNCTION_222();
    v0[6] = sub_1D5614BD8();
    v0[7] = OUTLINED_FUNCTION_42_49();
    OUTLINED_FUNCTION_222();
    v0[8] = sub_1D5614BD8();
    OUTLINED_FUNCTION_222();
    v0[9] = sub_1D5614BD8();
    v0[10] = OUTLINED_FUNCTION_42_49();
    v9 = [objc_allocWithZone(MEMORY[0x1E69B3480]) init];
    [v9 setSourceType_];
    sub_1D4ECC7A8(0, &qword_1EC7F7C78, 0x1E69B3478);
    v10 = v9;
    v1[3] = sub_1D5512990(v10, 0);
    v11 = [v1[2] syncLibraryID];
    if (v11 && (v12 = v11, v46 = 0, v47 = 0, sub_1D5614D58(), v12, (v13 = v47) != 0))
    {
      v14 = v46;
    }

    else
    {

      v14 = 0;
      v13 = 0xE000000000000000;
    }

    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v1[4] = v14;
      v1[5] = v13;
      if (qword_1EC7E90C8 != -1)
      {
        OUTLINED_FUNCTION_0_259();
        swift_once();
      }

      v16 = sub_1D560C758();
      OUTLINED_FUNCTION_31_57(v16, qword_1EC87C300);

      v17 = sub_1D560C738();
      sub_1D56156E8();

      if (OUTLINED_FUNCTION_37_4())
      {
        OUTLINED_FUNCTION_55_1();
        v18 = swift_slowAlloc();
        OUTLINED_FUNCTION_38_3();
        v19 = swift_slowAlloc();
        v46 = v19;
        *v18 = 136446210;
        v20 = v1[4];
        v21 = v1[5];

        v22 = sub_1D4E6835C(v20, v21, &v46);

        *(v18 + 4) = v22;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        v28 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v28);
      }
    }

    else
    {

      sub_1D560C358();
      v29 = sub_1D560C338();
      v31 = v30;
      (*(v4 + 8))(v7, v2);
      v1[4] = v29;
      v1[5] = v31;
      if (qword_1EC7E90C8 != -1)
      {
        OUTLINED_FUNCTION_0_259();
        swift_once();
      }

      v32 = sub_1D560C758();
      OUTLINED_FUNCTION_31_57(v32, qword_1EC87C300);

      v33 = sub_1D560C738();
      sub_1D56156E8();

      if (OUTLINED_FUNCTION_37_4())
      {
        OUTLINED_FUNCTION_55_1();
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_38_3();
        v35 = swift_slowAlloc();
        v46 = v35;
        *v34 = 136446210;
        v36 = v1[4];
        v37 = v1[5];

        v38 = sub_1D4E6835C(v36, v37, &v46);

        *(v34 + 4) = v38;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        v44 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v44);
      }

      v45 = v1[2];
      v17 = sub_1D5614D38();
      [v45 setSyncLibraryID_];
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D5512990(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_1D55129F0(void *__src)
{
  v3 = v1;
  memcpy(__dst, __src, 0x130uLL);
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v4 = sub_1D560C758();
  v5 = __swift_project_value_buffer(v4, qword_1EC87C300);
  OUTLINED_FUNCTION_46_41(v5, v6, v7, v8, v9, v10, v11, v12, v185, v191, v197, v201, v207, v211, v216, v221, v226, v230, v234, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);
  v227 = v5;
  v13 = sub_1D560C738();
  v14 = sub_1D56156E8();
  sub_1D5075464(__dst);
  v231 = v3;
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_55_1();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v16 = swift_slowAlloc();
    v241 = v16;
    *v15 = 136446210;
    v17 = memcpy(__srca, __dst, sizeof(__srca));
    OUTLINED_FUNCTION_46_41(v17, v18, v19, v20, v21, v22, v23, v24, v186, v192, v198, v202, v208, v212, v217, v222, v5, v231, v235, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);
    v25 = MigratedTrack.description.getter();
    v27 = v26;
    memcpy(v239, __srca, sizeof(v239));
    sub_1D5075464(v239);
    v28 = sub_1D4E6835C(v25, v27, &v241);

    *(v15 + 4) = v28;
    _os_log_impl(&dword_1D4E3F000, v13, v14, "[ImportSession] Adding track: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v3 = v231;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69B3400]) init];
  if (!v29)
  {
    goto LABEL_90;
  }

  v30 = v29;
  v31 = [objc_allocWithZone(MEMORY[0x1E69B33F8]) init];
  if (!v31)
  {
LABEL_89:

LABEL_90:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  v32 = v31;
  v236 = [objc_allocWithZone(MEMORY[0x1E69B3410]) init];
  if (!v236)
  {
LABEL_88:

    v30 = v32;
    goto LABEL_89;
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69B33D8]) init];
  if (!v33)
  {
    goto LABEL_85;
  }

  v34 = v33;
  v35 = [objc_allocWithZone(MEMORY[0x1E69B33E0]) init];
  v218 = v34;
  if (!v35)
  {

    v30 = v32;
    v32 = v236;
    goto LABEL_87;
  }

  v36 = v35;
  v37 = [objc_allocWithZone(MEMORY[0x1E69B33F0]) init];
  v223 = v36;
  if (v37)
  {
    v45 = v37;
    v46 = sub_1D5614D38();
    [v45 setLibraryName_];

    v47 = sub_1D5614D38();
    [v45 setLibraryId_];
    v48 = v45;
    v49 = sub_1D560C738();
    v50 = sub_1D56156E8();
    v51 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v51, v52))
    {
      v212 = v47;
      OUTLINED_FUNCTION_41_0();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v54 = swift_slowAlloc();
      v239[0] = v54;
      *v53 = 136446466;
      v55 = sub_1D55163DC(v48);
      if (!v56)
      {
LABEL_84:

        __break(1u);
LABEL_85:
        v218 = v236;
LABEL_87:

        v30 = v32;
        v32 = v218;
        goto LABEL_88;
      }

      v57 = sub_1D4E6835C(v55, v56, v239);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2050;
      v58 = [v48 libraryId];

      *(v53 + 14) = v58;
      _os_log_impl(&dword_1D4E3F000, v49, v50, "[ImportSession] Setting library identifier %{public}s: %{public}lld.", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v54);
      v59 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v59);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      v34 = v218;
      v36 = v223;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1D561C050;
    *(v60 + 56) = sub_1D4ECC7A8(0, &qword_1EC7F7C60, 0x1E69B33F0);
    *(v60 + 32) = v48;
    sub_1D4ECC7A8(0, &qword_1EC7F7C68, 0x1E695DF70);
    v61 = v48;
    v62 = MEMORY[0x1DA6EB5F0](v60);
    [v30 setLibraryIdentifiers_];

    v3 = v231;
  }

  v48 = __dst[0];
  v63 = __dst[1];
  OUTLINED_FUNCTION_23_77((v3 + 6), v38, v39, v40, v41, v42, v43, v44, v186, v192, v198, v202, v2, v212, v218, v223, v227, v231, v236, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);
  v30 = v30;
  swift_isUniquelyReferenced_nonNull_native();
  __srca[0] = v3[6];
  sub_1D4F154CC();
  v3[6] = __srca[0];
  swift_endAccess();
  if (*(__dst[17] + 16))
  {
    v65 = *(__dst[17] + 48);
    v64 = *(__dst[17] + 56);
  }

  else
  {
    v65 = 0;
    v64 = 0xE000000000000000;
  }

  sub_1D551620C(v65, v64, v36);
  if (__dst[5])
  {
  }

  v66 = OUTLINED_FUNCTION_222();
  sub_1D551620C(v66, v67, v34);
  if (__dst[5] && (v68 = __dst[16]) != 0)
  {
    v69 = __dst[15] & 0xFFFFFFFFFFFFLL;
  }

  else
  {

    v69 = 0;
    v68 = 0xE000000000000000;
  }

  v70 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v70 = v69;
  }

  if (v70)
  {
    sub_1D55162C8(v48, v63, v34);
    if (__dst[5])
    {
      v78 = __dst[16];
    }

    else
    {
      v78 = 0;
    }

    v3 = v232;
    OUTLINED_FUNCTION_23_77(v232 + 64, v71, v72, v73, v74, v75, v76, v77, v187, v193, v199, v203, v209, v213, v219, v224, v228, v232, v236, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);
    if (v78)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __srca[0] = v3[8];
      sub_1D4F153A4();
      v3[8] = __srca[0];
    }

    else
    {
      sub_1D5515F34(v48, v63);
    }

    v36 = v224;
    swift_endAccess();
  }

  if (__dst[5] && (__dst[12] & 1) == 0)
  {
    v79 = __dst[11];
    if (__dst[11] >> 31)
    {
      __break(1u);
      goto LABEL_80;
    }
  }

  else
  {
    v79 = 1;
  }

  [v34 setNumDiscs_];
  if (!__dst[5] || (__dst[14] & 1) != 0)
  {
    v80 = 1;
    goto LABEL_43;
  }

  v80 = __dst[13];
  if (__dst[13] >> 31)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_43:
  [v34 setNumTracks_];
  [v236 setAlbum_];
  [v236 setArtist_];
  if (LOBYTE(__dst[21]))
  {
    v81 = 1;
  }

  else
  {
    v81 = __dst[20];
  }

  if (v81 >> 31)
  {
    goto LABEL_81;
  }

  [v236 setDiscNumber_];
  if (LOBYTE(__dst[23]))
  {
    v82 = 1;
  }

  else
  {
    v82 = __dst[22];
  }

  if (v82 >> 31)
  {
    goto LABEL_82;
  }

  [v236 setTrackNumber_];
  sub_1D5516270(__dst[2], __dst[3], v32);
  [v32 setMediaType_];
  if (LOBYTE(__dst[27]))
  {
    v83 = -978307200;
  }

  else
  {
    v83 = __dst[26] / 1000 - 978307200;
  }

  [v32 setReleaseDateTime_];
  if (LOBYTE(__dst[19]))
  {
    v84 = 0;
  }

  else
  {
    v84 = __dst[18];
  }

  if (v84 < 0)
  {
    goto LABEL_83;
  }

  [v32 setDuration_];
  [v32 setHasExplicitContent_];
  [v32 setSong_];
  [v32 setIsInUsersLibrary_];
  sub_1D4ECC7A8(0, &qword_1EC7EA460, 0x1E69B3470);
  v85 = v30;
  v86 = v32;
  v214 = v85;
  v87 = sub_1D5514064(v85, v32, &selRef_initWithMultiverseIdentifier_mediaItem_);
  v88 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1D561EAC0;
  *(v89 + 32) = v87;
  v90 = v87;
  v91 = sub_1D5615158();

  v92 = [v88 addItemsReturningResult_];

  v93 = [v92 success];
  if (v93)
  {
    v204 = v90;
    v101 = [v92 resultingDatabasePersistentIDs];
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    sub_1D5516374();
    OUTLINED_FUNCTION_25_66();
    v102 = sub_1D5614BB8();

    v103 = sub_1D4ECA64C(v102);

    if (v103)
    {
      v104 = [v103 longLongValue];
    }

    else
    {
      v104 = 0;
    }

    v124 = v214;
    v125 = sub_1D560C738();
    sub_1D56156E8();
    v126 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v126, v127))
    {
      OUTLINED_FUNCTION_55_1();
      v128 = swift_slowAlloc();
      *v128 = 134349056;
      *(v128 + 4) = v104;
      OUTLINED_FUNCTION_6_152();
      _os_log_impl(v129, v130, v131, v132, v133, 0xCu);
      v134 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v134);
    }

    OUTLINED_FUNCTION_41_53();
    if (v142)
    {
      v143 = v232;
      OUTLINED_FUNCTION_23_77(v232 + 56, v135, v136, v137, v138, v139, v140, v141, v187, v193, v199, v204, v209, v214, v219, v224, v228, v232, v236, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_32_61(isUniquelyReferenced_nonNull_native, v145, v146, isUniquelyReferenced_nonNull_native, v147, v148, v149, v150, v189, v195);
      *(v143 + 56) = __srca[0];
      swift_endAccess();
    }

    else
    {

      v151 = sub_1D560C738();
      sub_1D56156C8();
      v152 = OUTLINED_FUNCTION_11_122();
      if (os_log_type_enabled(v152, v153))
      {
        OUTLINED_FUNCTION_10_125();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v154, v155, v156, v157, v158, 2u);
        v159 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v159);
      }
    }

    if (__dst[29] && (OUTLINED_FUNCTION_41_53(), v167))
    {
      v168 = v232;
      OUTLINED_FUNCTION_23_77(v232 + 80, v160, v161, v162, v163, v164, v165, v166, v187, v193, v199, v204, v209, v214, v219, v224, v228, v232, v236, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);

      v169 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_32_61(v169, v170, v171, v169, v172, v173, v174, v175, v190, v196);
      *(v168 + 80) = __srca[0];
      swift_endAccess();
    }

    else
    {
      v176 = sub_1D560C738();
      sub_1D56156C8();
      v177 = OUTLINED_FUNCTION_11_122();
      if (os_log_type_enabled(v177, v178))
      {
        OUTLINED_FUNCTION_10_125();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v179, v180, v181, v182, v183, 2u);
        v184 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v184);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_41(v93, v94, v95, v96, v97, v98, v99, v100, v187, v193, v199, v203, v209, v214, v219, v224, v228, v232, v236, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);
    v105 = sub_1D560C738();
    v106 = sub_1D56156C8();
    sub_1D5075464(__dst);
    if (os_log_type_enabled(v105, v106))
    {
      OUTLINED_FUNCTION_55_1();
      v205 = v90;
      v107 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v108 = swift_slowAlloc();
      v241 = v108;
      *v107 = 136446210;
      v109 = memcpy(__srca, __dst, sizeof(__srca));
      OUTLINED_FUNCTION_46_41(v109, v110, v111, v112, v113, v114, v115, v116, v188, v194, v200, v205, v210, v215, v220, v225, v229, v233, v237, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v239[0]);
      v117 = MigratedTrack.description.getter();
      v119 = v118;
      memcpy(v239, __srca, sizeof(v239));
      sub_1D5075464(v239);
      v120 = sub_1D4E6835C(v117, v119, &v241);

      *(v107 + 4) = v120;
      _os_log_impl(&dword_1D4E3F000, v105, v106, "[ImportSession] Failed to add track: %{public}s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      v121 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v121);
      v90 = v206;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v122 = sub_1D5516320();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicPlatformMigration.Error, v122);
    *v123 = 1;
    swift_willThrow();
  }
}

void sub_1D55136DC(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, 0x68uLL);
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EC87C300);
  sub_1D50750CC(__dst, v101);
  v4 = sub_1D560C738();
  v5 = sub_1D56156C8();
  sub_1D5075128(__dst);
  v6 = &unk_1D561C000;
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_55_1();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v8 = swift_slowAlloc();
    v103 = v8;
    *v7 = 136446210;
    memcpy(__srca, __dst, sizeof(__srca));
    sub_1D50750CC(__dst, v101);
    v9 = MigratedPlaylist.description.getter();
    v11 = v10;
    memcpy(v101, __srca, sizeof(v101));
    sub_1D5075128(v101);
    v12 = sub_1D4E6835C(v9, v11, &v103);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "[ImportSession] Adding playlist: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69B3400]) init];
  if (!v13)
  {
    goto LABEL_59;
  }

  v14 = v13;
  v99 = [objc_allocWithZone(MEMORY[0x1E69B3408]) init];
  if (!v99)
  {
LABEL_58:

LABEL_59:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69B33F0]) init];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D5614D38();
    [v16 setLibraryName_];

    v18 = sub_1D5614D38();
    [v16 setLibraryId_];
    v19 = v16;
    v20 = sub_1D560C738();
    v21 = sub_1D56156E8();
    v22 = OUTLINED_FUNCTION_11_122();
    if (!os_log_type_enabled(v22, v23))
    {

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_41_0();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v25 = swift_slowAlloc();
    v101[0] = v25;
    *v24 = 136446466;
    v26 = sub_1D55163DC(v19);
    if (v27)
    {
      v28 = sub_1D4E6835C(v26, v27, v101);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2050;
      v29 = [v19 libraryId];

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1D4E3F000, v20, v21, "[ImportSession] Setting library identifier %{public}s: %{public}lld.", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v30 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v30);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      v6 = &unk_1D561C000;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D561C050;
      *(v31 + 56) = sub_1D4ECC7A8(0, &qword_1EC7F7C60, 0x1E69B33F0);
      *(v31 + 32) = v19;
      sub_1D4ECC7A8(0, &qword_1EC7F7C68, 0x1E695DF70);
      v32 = v19;
      v33 = MEMORY[0x1DA6EB5F0](v31);
      [v14 setLibraryIdentifiers_];

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_13:
  sub_1D5516440(__dst[2], __dst[3], v99);
  v97 = v14;
  if (__dst[5])
  {
    v34 = sub_1D5614D38();
  }

  else
  {
    v34 = 0;
  }

  [v99 setPlaylistDescription_];

  if (LOBYTE(__dst[7]))
  {
    v35 = -978307200;
  }

  else
  {
    v35 = __dst[6] / 1000 - 978307200;
  }

  [v99 setCreationDateTime_];
  if (LOBYTE(__dst[9]))
  {
    v36 = -978307200;
  }

  else
  {
    v36 = __dst[8] / 1000 - 978307200;
  }

  [v99 setCloudLastUpdateTime_];
  v37 = __dst[12];
  if (__dst[12])
  {
    v38 = __dst[11] & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v38 = 0;
  }

  if (__dst[12])
  {
    v39 = __dst[12];
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38;
  }

  if (v40)
  {
    v41 = __dst[0];
    v42 = __dst[1];
    swift_beginAccess();
    if (v37)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __srca[0] = v2[9];
      OUTLINED_FUNCTION_13_8();
      sub_1D4F153A4();
      v2[9] = __srca[0];
    }

    else
    {
      sub_1D5515F34(v41, v42);
    }

    swift_endAccess();
  }

  else
  {
  }

  v43 = __dst[10];
  v44 = *(__dst[10] + 16);
  if (v44)
  {
    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    v45 = (v43 + 40);
    v98 = v6[351];
    while (1)
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      v48 = v2[6];
      v49 = *(v48 + 16);

      if (!v49)
      {
        goto LABEL_42;
      }

      v50 = sub_1D4E4EFA0(v46, v47);
      if ((v51 & 1) == 0)
      {
        break;
      }

      v52 = v50;

      v53 = *(*(v48 + 56) + 8 * v52);

      [v99 addItems_];

LABEL_46:
      v45 += 2;
      if (!--v44)
      {
        goto LABEL_47;
      }
    }

LABEL_42:

    v54 = sub_1D560C738();
    v55 = sub_1D56156C8();

    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_55_1();
      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v57 = swift_slowAlloc();
      __srca[0] = v57;
      *v56 = v98;
      v58 = sub_1D4E6835C(v46, v47, __srca);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_1D4E3F000, v54, v55, "[ImportSession] Failed to map track identifier %{public}s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v59 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v59);
    }

    else
    {
    }

    goto LABEL_46;
  }

LABEL_47:
  sub_1D4ECC7A8(0, &qword_1EC7EA460, 0x1E69B3470);
  v60 = v97;
  v61 = v99;
  v62 = OUTLINED_FUNCTION_13_8();
  v65 = sub_1D5514064(v62, v63, v64);
  v66 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1D561EAC0;
  *(v67 + 32) = v65;
  v68 = v65;
  v69 = sub_1D5615158();

  v70 = [v66 addContainersReturningResult_];

  if ([v70 success])
  {
    v71 = [v70 resultingDatabasePersistentIDs];
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    sub_1D5516374();
    OUTLINED_FUNCTION_71();
    v72 = sub_1D5614BB8();

    v73 = sub_1D4ECA64C(v72);

    if (v73)
    {
      v74 = [v73 longLongValue];
    }

    else
    {
      v74 = 0;
    }

    v87 = sub_1D560C738();
    sub_1D56156E8();
    v88 = OUTLINED_FUNCTION_9_127();
    if (os_log_type_enabled(v88, v89))
    {
      OUTLINED_FUNCTION_55_1();
      v90 = swift_slowAlloc();
      *v90 = 134349056;
      *(v90 + 4) = v74;
      OUTLINED_FUNCTION_16_95();
      _os_log_impl(v91, v92, v93, v94, v95, 0xCu);
      v96 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v96);
    }
  }

  else
  {
    v75 = sub_1D560C738();
    sub_1D56156C8();
    v76 = OUTLINED_FUNCTION_9_127();
    if (os_log_type_enabled(v76, v77))
    {
      OUTLINED_FUNCTION_10_125();
      v78 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_68(v78);
      OUTLINED_FUNCTION_16_95();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      v84 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v84);
    }

    v85 = sub_1D5516320();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicPlatformMigration.Error, v85);
    *v86 = 2;
    swift_willThrow();
  }
}

id sub_1D5514064(void *a1, void *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a3];

  return v5;
}

uint64_t sub_1D55140C0()
{
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v1 = sub_1D560C758();
  __swift_project_value_buffer(v1, qword_1EC87C300);
  v2 = sub_1D560C738();
  v3 = sub_1D56156E8();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_10_125();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D4E3F000, v2, v3, "[ImportSession] Beginning import.", v4, 2u);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  result = [*(v0 + 24) start];
  if ((result & 1) == 0)
  {
    v6 = sub_1D560C738();
    sub_1D56156C8();
    v7 = OUTLINED_FUNCTION_9_127();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_10_125();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_68(v9);
      OUTLINED_FUNCTION_16_95();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      v15 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v15);
    }

    v16 = sub_1D5516320();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicPlatformMigration.Error, v16);
    *v17 = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1D551421C()
{
  v2 = v0;
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EC87C300);
  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();
  v6 = OUTLINED_FUNCTION_11_122();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_10_125();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_28_68(v8);
    _os_log_impl(&dword_1D4E3F000, v4, v5, "[ImportSession] Cancelling import session…", v1, 2u);
    v9 = OUTLINED_FUNCTION_3_196();
    MEMORY[0x1DA6ED200](v9);
  }

  v10 = *(v2 + 24);

  return [v10 cancel];
}

void sub_1D55142F4()
{
  v1 = v0;
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EC87C300);
  v3 = sub_1D560C738();
  sub_1D56156E8();
  v4 = OUTLINED_FUNCTION_11_122();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_10_125();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v6, v7, "[ImportSession] Committing import session…");
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v8 = [*(v1 + 24) finish];
  v9 = sub_1D560C738();
  if (v8)
  {
    sub_1D56156E8();
    v10 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_10_125();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v12, v13, "[ImportSession] Import finished successfully - hooking up assets…");
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    sub_1D5514508();
    sub_1D55151B0();
    v14 = sub_1D560C738();
    sub_1D56156E8();
    v15 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_10_125();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6_152();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      v22 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v22);
    }
  }

  else
  {
    v23 = sub_1D56156C8();
    v24 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_10_125();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_68(v26);
      _os_log_impl(&dword_1D4E3F000, v9, v23, "[ImportSession] Failed to finish import session.", v1, 2u);
      v27 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v27);
    }

    v28 = sub_1D5516320();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicPlatformMigration.Error, v28);
    *v29 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1D5514508()
{
  v127[10] = *MEMORY[0x1E69E9840];
  v0 = sub_1D560C728();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v106 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF250, &qword_1D5630D10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = v103 - v6;
  v125 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v103 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v103 - v16;
  if (qword_1EC7E90C8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v123 = v14;
    v107 = v0;
    v18 = sub_1D560C758();
    v124 = __swift_project_value_buffer(v18, qword_1EC87C300);
    v19 = sub_1D560C738();
    v20 = sub_1D56156E8();
    v21 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_10_125();
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D4E3F000, v19, v20, "[ImportSession] Importing track assets…", v23, 2u);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v14 = v112;
    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    v24 = *(v14 + 7);
    v27 = *(v24 + 64);
    v26 = v24 + 64;
    v25 = v27;
    v0 = 1 << *(*(v14 + 7) + 32);
    v28 = -1;
    if (v0 < 64)
    {
      v28 = ~(-1 << v0);
    }

    v29 = v28 & v25;
    v116 = *(v14 + 7);

    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    v30 = 0;
    v111 = 0;
    v31 = (v0 + 63) >> 6;
    v104 = (v2 + 8);
    v103[0] = v8 + 5;
    v113 = v8 + 2;
    v120 = v8 + 1;
    *&v32 = 134349314;
    v110 = v32;
    *&v32 = 136446466;
    v109 = v32;
    *&v32 = 136446210;
    v108 = v32;
    v122 = v17;
    v115 = v26;
    v114 = v31;
    if (v29)
    {
      while (1)
      {
LABEL_11:
        v34 = *(*(v116 + 48) + 8 * (__clz(__rbit64(v29)) | (v30 << 6)));

        v36 = OUTLINED_FUNCTION_47_46(v35);
        v37 = sub_1D56156E8();
        v38 = OUTLINED_FUNCTION_11_122();
        v40 = os_log_type_enabled(v38, v39);
        v118 = v34;
        if (v40)
        {
          OUTLINED_FUNCTION_41_0();
          v41 = swift_slowAlloc();
          OUTLINED_FUNCTION_38_3();
          v42 = swift_slowAlloc();
          v127[0] = v42;
          *v41 = v110;
          *(v41 + 4) = v34;
          *(v41 + 12) = 2082;
          v43 = OUTLINED_FUNCTION_13_8();
          *(v41 + 14) = sub_1D4E6835C(v43, v44, v45);
          _os_log_impl(&dword_1D4E3F000, v36, v37, "[ImportSession] Setting file for track %{public}lld: %{public}s.", v41, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v46 = OUTLINED_FUNCTION_3_1();
          MEMORY[0x1DA6ED200](v46);
          v17 = v122;
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1D560BF28();

        sub_1D560BF48();
        v47 = sub_1D560BEF8();
        v49 = v48;
        v51 = [objc_opt_self() pathForBaseLocationPath_];
        sub_1D5614D68();
        v50 = v17;

        LOBYTE(v51) = v121;
        sub_1D560BF28();

        sub_1D560BF88();

        v52 = HIBYTE(v49) & 0xF;
        if ((v49 & 0x2000000000000000) == 0)
        {
          v52 = v47 & 0xFFFFFFFFFFFFLL;
        }

        v53 = v125;
        v54 = v117;
        if (!v52)
        {
          break;
        }

LABEL_29:
        v69 = (v113->isa)(v54, v50, v53);
        v70 = OUTLINED_FUNCTION_47_46(v69);
        v71 = sub_1D56156E8();
        if (os_log_type_enabled(v70, v71))
        {
          OUTLINED_FUNCTION_41_0();
          v72 = swift_slowAlloc();
          v127[0] = swift_slowAlloc();
          *v72 = v109;
          OUTLINED_FUNCTION_1_194();
          v74 = v54;
          v54 = sub_1D5516530(&qword_1EC7EDF28, v73, MEMORY[0x1E6968FE0]);
          v75 = sub_1D56160F8();
          v77 = v76;
          isa = v120->isa;
          isa(v74, v125);
          v78 = v75;
          v14 = v123;
          v79 = sub_1D4E6835C(v78, v77, v127);

          *(v72 + 4) = v79;
          *(v72 + 12) = 2082;
          OUTLINED_FUNCTION_146();
          swift_beginAccess();
          v80 = sub_1D56160F8();
          sub_1D4E6835C(v80, v81, v127);
          OUTLINED_FUNCTION_38_50();

          *(v72 + 14) = v54;
          _os_log_impl(&dword_1D4E3F000, v70, v71, "[ImportSession] Moving asset from %{public}s to %{public}s…", v72, 0x16u);
          swift_arrayDestroy();
          v53 = v125;
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
        }

        else
        {

          isa = v120->isa;
          isa(v54, v53);
          v14 = v123;
        }

        v29 &= v29 - 1;
        v8 = [objc_opt_self() defaultManager];
        OUTLINED_FUNCTION_146();
        swift_beginAccess();
        sub_1D560BFF8();
        sub_1D5614D38();
        OUTLINED_FUNCTION_38_50();

        v82 = [v8 fileExistsAtPath:v54];

        v17 = v122;
        if (v82)
        {
          sub_1D560BFF8();
          sub_1D5614D38();
          OUTLINED_FUNCTION_38_50();

          v127[0] = 0;
          v83 = [v8 removeItemAtPath:v54 error:v127];

          v0 = v127[0];
          if (!v83)
          {
            goto LABEL_39;
          }

          v84 = v127[0];
        }

        v54 = sub_1D560BF68();
        v85 = sub_1D560BF68();
        v127[0] = 0;
        v86 = [v8 copyItemAtURL:v54 toURL:v85 error:v127];

        v0 = v127[0];
        if (!v86)
        {
LABEL_39:
          v93 = v0;
          OUTLINED_FUNCTION_38_50();
          v94 = sub_1D560BE98();

          v2 = v94;
          swift_willThrow();

          v95 = OUTLINED_FUNCTION_18_91();
          (v0)(v95);
          (v0)(v17, v53);
          (v0)(v14, v53);
          v8 = OUTLINED_FUNCTION_47_46(v94);
          v0 = sub_1D56156C8();

          if (os_log_type_enabled(v8, v0))
          {
            OUTLINED_FUNCTION_55_1();
            v2 = swift_slowAlloc();
            OUTLINED_FUNCTION_38_3();
            v96 = swift_slowAlloc();
            v127[0] = v96;
            *v2 = v108;
            v126 = v94;
            v97 = v94;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
            v98 = sub_1D5614DB8();
            v100 = sub_1D4E6835C(v98, v99, v127);

            *(v2 + 4) = v100;
            v17 = v122;
            _os_log_impl(&dword_1D4E3F000, v8, v0, "[ImportSession] Failed to move asset file. Error = %{public}s.", v2, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v96);
            v101 = OUTLINED_FUNCTION_3_1();
            MEMORY[0x1DA6ED200](v101);
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
          }

          else
          {
          }

          v111 = 0;
          goto LABEL_43;
        }

        v2 = *(v112 + 2);
        v87 = objc_allocWithZone(MEMORY[0x1E69B3538]);
        v88 = v0;
        v89 = [v87 initWithPersistentID:v118 inLibrary:v2];
        if (v89)
        {
          v2 = v89;
          v0 = v14;
          v90 = sub_1D560BFF8();
          sub_1D5516104(v90, v91, 0, v2);
        }

        v92 = OUTLINED_FUNCTION_18_91();
        (v0)(v92);
        (v0)(v17, v53);
        (v0)(v14, v53);
LABEL_43:
        v26 = v115;
        v31 = v114;
        if (!v29)
        {
          goto LABEL_7;
        }
      }

      v55 = sub_1D4ED0B14(v118, *(v112 + 10));
      if (v56)
      {
        LOBYTE(v51) = v56;
        sub_1D560C708();
        OUTLINED_FUNCTION_71();
        v58 = v57;
        sub_1D560C6C8();
        v59 = v107;
        if (__swift_getEnumTagSinglePayload(v58, 1, v107) == 1)
        {
          v55 = sub_1D4E50004(v58, &qword_1EC7EF250, &qword_1D5630D10);
          v54 = v117;
        }

        else
        {
          v60 = v58;
          v51 = sub_1D560C6F8();
          v62 = v61;
          v55 = (*v104)(v60, v59);
          v54 = v117;
          if (v62)
          {
            v63 = HIBYTE(v62) & 0xF;
            if ((v62 & 0x2000000000000000) == 0)
            {
              v63 = v51 & 0xFFFFFFFFFFFFLL;
            }

            if (v63)
            {
              OUTLINED_FUNCTION_146();
              swift_beginAccess();
              v64 = v103[1];
              sub_1D560BF98();

              swift_beginAccess();
              (*v103[0])(v123, v64, v53);
LABEL_28:
              v50 = v122;
              goto LABEL_29;
            }
          }
        }
      }

      v65 = OUTLINED_FUNCTION_47_46(v55);
      sub_1D56156C8();
      v66 = OUTLINED_FUNCTION_9_127();
      if (os_log_type_enabled(v66, v67))
      {
        OUTLINED_FUNCTION_10_125();
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1D4E3F000, v65, v51, "[ImportSession] Could not resolve file extension for imported track asset. This may not play correctly", v68, 2u);
        v54 = v117;
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
      }

      goto LABEL_28;
    }

LABEL_7:
    v33 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      break;
    }

    __break(1u);
LABEL_47:
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  if (v33 < v31)
  {
    v29 = *(v26 + 8 * v33);
    ++v30;
    if (v29)
    {
      v30 = v33;
      goto LABEL_11;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1D55151B0()
{
  v0 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_135();
  v94 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_135();
  v92 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v84[-v11];
  if (qword_1EC7E90C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_27:
  OUTLINED_FUNCTION_0_259();
  swift_once();
LABEL_2:
  v89 = v6;
  v101 = v0;
  v12 = sub_1D560C758();
  v96 = __swift_project_value_buffer(v12, qword_1EC87C300);
  v6 = v96;
  v13 = sub_1D560C738();
  sub_1D56156E8();
  v14 = OUTLINED_FUNCTION_9_127();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_10_125();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_28_68(v16);
    OUTLINED_FUNCTION_16_95();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    v22 = OUTLINED_FUNCTION_3_196();
    MEMORY[0x1DA6ED200](v22);
  }

  v0 = v98;
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v23 = v0[8] + 64;
  OUTLINED_FUNCTION_19_86();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v95 = (v2 + 16);
  v100 = v2 + 8;
  v91 = v29;

  v30 = 0;
  *&v31 = 136446466;
  v90 = v31;
  while (1)
  {
    v32 = v100 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!v26)
    {
      break;
    }

LABEL_10:
    v34 = (v91[6].isa + ((v30 << 10) | (16 * __clz(__rbit64(v26)))));
    v35 = *v34;
    v2 = v34[1];

    v36 = v97;
    OUTLINED_FUNCTION_71();
    sub_1D560BF28();

    v37 = v92;
    (*v95)(v92, v36, v101);

    v38 = sub_1D560C738();
    v39 = sub_1D56156E8();

    v40 = OUTLINED_FUNCTION_37_4();
    v93 = v35;
    if (v40)
    {
      OUTLINED_FUNCTION_41_0();
      v41 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v103[0] = v88;
      *v41 = v90;
      *(v41 + 4) = sub_1D4E6835C(v35, v2, v103);
      *(v41 + 12) = 2082;
      OUTLINED_FUNCTION_1_194();
      sub_1D5516530(&qword_1EC7EDF28, v42, MEMORY[0x1E6968FE0]);
      v86 = v38;
      v43 = v92;
      v85 = v39;
      v44 = v101;
      v45 = sub_1D56160F8();
      v87 = v2;
      v46 = v28;
      v47 = v23;
      v48 = v45;
      v99 = v32;
      v50 = v49;
      v51 = *v100;
      (*v100)(v43, v44);
      v52 = v48;
      v23 = v47;
      v28 = v46;
      v2 = v87;
      v53 = sub_1D4E6835C(v52, v50, v103);

      *(v41 + 14) = v53;
      v54 = v86;
      _os_log_impl(&dword_1D4E3F000, v86, v85, "[ImportSession] Importing album artwork for token %{public}s from location %{public}s.", v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    else
    {

      v51 = *v100;
      (*v100)(v37, v101);
    }

    v26 &= v26 - 1;
    v55 = v97;
    v0 = v98[2];
    v6 = sub_1D560BF68();
    sub_1D5516178(v6, v93, v2, 1, 300, 8, v0);

    v51(v55, v101);
  }

  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v33 >= v28)
    {
      break;
    }

    v26 = *(v23 + 8 * v33);
    ++v30;
    if (v26)
    {
      v30 = v33;
      goto LABEL_10;
    }
  }

  v0 = v98;
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v56 = v0[9] + 64;
  OUTLINED_FUNCTION_19_86();
  v59 = v58 & v57;
  v61 = (v60 + 63) >> 6;
  v93 = v62;

  v2 = 0;
  v63 = v101;
  if (v59)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v64 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_26;
    }

    if (v64 >= v61)
    {
    }

    v59 = *(v56 + 8 * v64);
    ++v2;
    if (v59)
    {
      v2 = v64;
      do
      {
LABEL_19:
        v99 = v32;
        v65 = *(v93 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v59))));
        v66 = *v65;
        v67 = *(v65 + 8);

        v68 = v94;
        OUTLINED_FUNCTION_71();
        sub_1D560BF28();

        v69 = v89;
        (*v95)(v89, v68, v63);

        v70 = sub_1D560C738();
        v71 = sub_1D56156E8();

        v72 = OUTLINED_FUNCTION_37_4();
        v97 = v66;
        if (v72)
        {
          OUTLINED_FUNCTION_41_0();
          v73 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v102 = v92;
          *v73 = v90;
          *(v73 + 4) = sub_1D4E6835C(v66, v67, &v102);
          *(v73 + 12) = 2082;
          OUTLINED_FUNCTION_1_194();
          sub_1D5516530(&qword_1EC7EDF28, v74, MEMORY[0x1E6968FE0]);
          v91 = v70;
          sub_1D56160F8();
          LODWORD(v88) = v71;
          v75 = *v100;
          (*v100)(v69, v101);
          v76 = OUTLINED_FUNCTION_222();
          v79 = sub_1D4E6835C(v76, v77, v78);

          *(v73 + 14) = v79;
          v80 = v91;
          _os_log_impl(&dword_1D4E3F000, v91, v88, "[ImportSession] Importing playlist artwork for token %{public}s from location %{public}s.", v73, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
          v63 = v101;
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
        }

        else
        {

          v75 = *v100;
          (*v100)(v69, v63);
        }

        v59 &= v59 - 1;
        v0 = v98[2];
        v81 = v94;
        v6 = sub_1D560BF68();
        sub_1D5516178(v6, v97, v67, 5, 300, 8, v0);

        v82 = v81;
        v32 = v99;
        v75(v82, v63);
      }

      while (v59);
    }
  }
}

uint64_t MusicPlatformMigration.ImportSession.deinit()
{

  return v0;
}

uint64_t MusicPlatformMigration.ImportSession.__deallocating_deinit()
{
  MusicPlatformMigration.ImportSession.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

double sub_1D55159C0@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  sub_1D4F0DF68();
  if (v6)
  {
    OUTLINED_FUNCTION_54_4();
    v7 = *(*v3 + 24);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F0, &qword_1D561E210);
    OUTLINED_FUNCTION_20_95(v8);
    v9 = OUTLINED_FUNCTION_27_72();
    type metadata accessor for MusicItemCache.Key(v9);
    OUTLINED_FUNCTION_14();
    sub_1D5516578(v7 + *(v10 + 72) * v2, type metadata accessor for MusicItemCache.Key);
    v11 = (*(v5 + 56) + 48 * v2);
    v12 = v11[1];
    *a1 = *v11;
    a1[1] = v12;
    a1[2] = v11[2];
    sub_1D5516530(&qword_1EDD59100, type metadata accessor for MusicItemCache.Key, &unk_1D5634B94);
    sub_1D5615D98();
    *v3 = v5;
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1D5515AEC()
{
  v2 = v0;
  sub_1D4F0E020();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_5_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F8, &qword_1D561E218);
  OUTLINED_FUNCTION_17_0(v4);
  v5 = *(v12 + 48);
  v6 = sub_1D560C368();
  OUTLINED_FUNCTION_14();
  (*(v7 + 8))(v5 + *(v7 + 72) * v1, v6);
  v8 = *(*(v12 + 56) + 8 * v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD60, &qword_1D5634C08);
  OUTLINED_FUNCTION_13_97();
  sub_1D5516530(v9, v10, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_34_63();
  *v2 = v12;
  return v8;
}

uint64_t sub_1D5515BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_1D4F0DDB4(a1);
  if (v7)
  {
    v8 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_36_63();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
    OUTLINED_FUNCTION_20_95(v9);
    v10 = OUTLINED_FUNCTION_27_72();
    type metadata accessor for LooselyComparableTypedIdentifier(v10);
    OUTLINED_FUNCTION_14();
    sub_1D5516578(v3 + *(v11 + 72) * v8, type metadata accessor for LooselyComparableTypedIdentifier);
    v12 = *(v5 + 56);
    type metadata accessor for GenericMusicItem(0);
    OUTLINED_FUNCTION_14();
    sub_1D5061C5C(v12 + *(v13 + 72) * v8, a2);
    sub_1D5516530(qword_1EDD54BB8, type metadata accessor for LooselyComparableTypedIdentifier, &unk_1D56579DC);
    OUTLINED_FUNCTION_25_66();
    sub_1D5615D98();
    v14 = OUTLINED_FUNCTION_29_61();
  }

  else
  {
    type metadata accessor for GenericMusicItem(0);
    v14 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1D5515D2C()
{
  v2 = v0;
  sub_1D4F15A78();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_5_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB400, &qword_1D561E220);
  OUTLINED_FUNCTION_17_0(v4);

  v5 = *(*(v7 + 56) + 8 * v1);
  _s9StatementCMa();
  sub_1D54E6D90();
  sub_1D5615D98();
  *v2 = v7;
  return v5;
}

uint64_t sub_1D5515DE8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  sub_1D4F0E2E8();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_36_63();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B8, &qword_1D561E278);
    OUTLINED_FUNCTION_20_95(v8);
    OUTLINED_FUNCTION_27_72();
    v9 = sub_1D560C0A8();
    OUTLINED_FUNCTION_14();
    (*(v10 + 8))(v2 + *(v10 + 72) * v7, v9);
    v11 = *(v4 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
    OUTLINED_FUNCTION_14();
    sub_1D4ECCB30(v11 + *(v12 + 72) * v7, a1);
    OUTLINED_FUNCTION_1_194();
    sub_1D5516530(v13, v14, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_25_66();
    sub_1D5615D98();
    v15 = OUTLINED_FUNCTION_29_61();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
    v15 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1D5515F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D4E4EFA0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB430, &qword_1D561E228);
  sub_1D5615D78();

  v7 = *(*(v9 + 56) + 16 * v6);
  sub_1D5615D98();
  *v3 = v9;
  return v7;
}

uint64_t sub_1D5516014()
{
  v2 = v0;
  sub_1D4F0E020();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_5_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB448, &qword_1D561E240);
  OUTLINED_FUNCTION_17_0(v4);
  v5 = *(v12 + 48);
  v6 = sub_1D560C368();
  OUTLINED_FUNCTION_14();
  (*(v7 + 8))(v5 + *(v7 + 72) * v1, v6);
  v8 = *(*(v12 + 56) + 8 * v1);
  _s12WeakObserverCMa();
  OUTLINED_FUNCTION_13_97();
  sub_1D5516530(v9, v10, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_34_63();
  *v2 = v12;
  return v8;
}

void sub_1D5516104(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = sub_1D5614D38();

  [a4 populateLocationPropertiesWithPath:v6 isProtected:a3 & 1];
}

id sub_1D5516178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_1D5614D38();

  v13 = [a7 importOriginalArtworkFromFileURL:a1 withArtworkToken:v12 artworkType:a4 sourceType:a5 mediaType:a6];

  return v13;
}

void sub_1D551620C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();

  [a3 setName_];
}

void sub_1D5516270(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  [a3 setTitle_];
}

void sub_1D55162C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  [a3 setArtworkId_];
}

unint64_t sub_1D5516320()
{
  result = qword_1EC7F7C50;
  if (!qword_1EC7F7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C50);
  }

  return result;
}

unint64_t sub_1D5516374()
{
  result = qword_1EC7F7C58;
  if (!qword_1EC7F7C58)
  {
    sub_1D4ECC7A8(255, &qword_1EC7EA460, 0x1E69B3470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C58);
  }

  return result;
}

uint64_t sub_1D55163DC(void *a1)
{
  v1 = [a1 libraryName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D68();

  return v3;
}

void sub_1D5516440(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  [a3 setName_];
}

uint64_t dispatch thunk of MusicPlatformMigration.ImportSession.add(_:)()
{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

uint64_t sub_1D5516530(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5516578(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_95(uint64_t a1)
{

  return sub_1D5615D78();
}

double OUTLINED_FUNCTION_23_77(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_34_63()
{

  return sub_1D5615D98();
}

uint64_t OUTLINED_FUNCTION_42_49()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_46_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  return sub_1D50753B4(&STACK[0x2B8], &a58);
}

uint64_t OUTLINED_FUNCTION_47_46(uint64_t a1)
{

  return sub_1D560C738();
}

void sub_1D55166B8()
{
  OUTLINED_FUNCTION_10_126();
  os_unfair_lock_lock(v0 + 12);
  sub_1D551AF20(&v0[4]);
  os_unfair_lock_unlock(v0 + 12);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    v2 = OUTLINED_FUNCTION_16_96();
    sub_1D551977C(v2, v3, 1, v4);
  }
}

void sub_1D5516740()
{
  OUTLINED_FUNCTION_10_126();
  os_unfair_lock_lock(v0 + 12);
  sub_1D551AEBC(&v0[4]);
  os_unfair_lock_unlock(v0 + 12);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    v2 = OUTLINED_FUNCTION_16_96();
    sub_1D551977C(v2, v3, 2, v4);
  }
}

void sub_1D55167C8(int a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v81 = a1;
  v78 = type metadata accessor for MusicDaemon.Request(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v6 = OUTLINED_FUNCTION_18_92(v5);
  v7 = OUTLINED_FUNCTION_12_104(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for MusicDaemon.Request.Context(0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for MusicDaemon.Item(0);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v74 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v73 - v22;
  OUTLINED_FUNCTION_23();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v73 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v73 - v27;
  sub_1D550231C(&v73 - v27);
  OUTLINED_FUNCTION_0_260();
  sub_1D551ADD4(v28, v26, v29);
  v30 = *(a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
  v32 = *(a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16);
  v85 = *(a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
  v31 = v85;
  v86 = v30;
  v87 = v32;
  v33 = *(v9 + 16);
  v76 = a2;
  v33(v12, a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id, v82);
  v34 = v32;
  v35 = v17;
  sub_1D4E58128(v31, v30, v34);
  v36 = v88;
  _s16MusicKitInternal0A6DaemonV7RequestO7ContextV4item7account10observerIDAgC4ItemV_AA7AccountV10Foundation4UUIDVtAC5ErrorOYKcfC(v26, &v85, v12, &v83, v17);
  if (v36)
  {
    v37 = v83;
    v38 = v84;
    sub_1D53476CC();
    swift_allocError();
    *v39 = v37;
    *(v39 + 16) = v38;
    v48 = type metadata accessor for MusicDaemon.Item;
    v49 = v28;
  }

  else
  {
    v40 = v76;
    v41 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230);
    v42 = v79;
    *v79 = v81 & 1;
    OUTLINED_FUNCTION_5_149();
    sub_1D551ADD4(v35, v42 + v43, v44);
    swift_storeEnumTagMultiPayload();
    v45 = v80;
    sub_1D5519C8C(v42);
    OUTLINED_FUNCTION_8_133();
    v47 = sub_1D551AD28(v42, v46);
    v50 = *(v45 + 16);
    MEMORY[0x1EEE9AC00](v47);
    *(&v73 - 2) = v40;
    *(&v73 - 1) = v41;

    os_unfair_lock_lock(v50 + 12);
    sub_1D551AC7C(&v50[4]);
    os_unfair_lock_unlock(v50 + 12);

    if (qword_1EDD544D0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v51 = sub_1D560C758();
    __swift_project_value_buffer(v51, qword_1EDD76B38);
    OUTLINED_FUNCTION_0_260();
    v52 = v75;
    sub_1D551ADD4(v28, v75, v53);

    v54 = sub_1D560C738();
    v55 = sub_1D56156E8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v88 = v35;
      *&v83 = v57;
      *v56 = 136446722;
      v85 = sub_1D55171AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C80, &qword_1D566F3D8);
      v58 = sub_1D5614DB8();
      v59 = v55;
      v61 = sub_1D4E6835C(v58, v60, &v83);

      *(v56 + 4) = v61;
      v82 = v28;
      *(v56 + 12) = 2082;
      if (v81)
      {
        v62 = 0x6F7661466F646E75;
      }

      else
      {
        v62 = 0x657469726F766166;
      }

      if (v81)
      {
        v63 = 0xEC00000065746972;
      }

      else
      {
        v63 = 0xE800000000000000;
      }

      v64 = sub_1D4E6835C(v62, v63, &v83);

      *(v56 + 14) = v64;
      *(v56 + 22) = 2082;
      OUTLINED_FUNCTION_0_260();
      v65 = v74;
      sub_1D551ADD4(v52, v74, v66);
      v67 = OUTLINED_FUNCTION_9_128();
      MEMORY[0x1DA6EAC70](v67);

      OUTLINED_FUNCTION_6_153();
      sub_1D551AD28(v65, v68);
      sub_1D551AD28(v52, &v85);
      v69 = sub_1D4E6835C(v85, v86, &v83);

      *(v56 + 24) = v69;
      _os_log_impl(&dword_1D4E3F000, v54, v59, "Session %{public}s perform(.%{public}s(item: %{public}s).", v56, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v88, v70);
      v49 = v82;
      v48 = &v85;
    }

    else
    {

      OUTLINED_FUNCTION_7_141();
      sub_1D551AD28(v52, v71);
      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v35, v72);
      v49 = v28;
      v48 = v55;
    }
  }

  sub_1D551AD28(v49, v48);
}

uint64_t sub_1D5516DD0()
{
  _s6ClientCMa();
  v0 = swift_allocObject();
  result = sub_1D5516E0C();
  qword_1EDD76CD0 = v0;
  return result;
}

uint64_t sub_1D5516E0C()
{
  v1 = v0;
  sub_1D560C368();
  _s12WeakObserverCMa();
  sub_1D551AED8(&qword_1EDD5F560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = OUTLINED_FUNCTION_19_87();
  v3 = OUTLINED_FUNCTION_19_87();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7CA8, &qword_1D566F400);
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v1 + 16) = v4;
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EDD76B38);
  v6 = sub_1D560C738();
  v7 = sub_1D56156E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D4E3F000, v6, v7, "Init.", v8, 2u);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  return v1;
}

uint64_t sub_1D5516F7C()
{
  v0 = sub_1D5615718();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D560C9B8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D5615728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E699CC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D560C9A8();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D551AED8(&qword_1EDD52698, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C98, &qword_1D566F3F0);
  sub_1D551AE50();
  sub_1D56159E8();
  result = sub_1D5615758();
  qword_1EDD591E8 = result;
  return result;
}

uint64_t sub_1D55171AC()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 48));
  sub_1D551AC98((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 48));
  v2 = v4;

  return v2;
}

uint64_t sub_1D5517240@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = sub_1D560C788();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  if (!*a1)
  {
    v26 = a3;
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D560C758();
    __swift_project_value_buffer(v8, qword_1EDD76B38);
    v9 = sub_1D560C738();
    v10 = sub_1D56156E8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D4E3F000, v9, v10, "Creating xpc session.", v11, 2u);
      MEMORY[0x1DA6ED200](v11, -1, -1);
    }

    sub_1D560C7B8();
    if (qword_1EDD591E0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDD591E8;
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v13 = v12;

    sub_1D560C778();
    v14 = sub_1D560C768();
    if (v3)
    {

      v15 = v3;
      v16 = sub_1D560C738();
      v17 = sub_1D56156C8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        v20 = v3;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_1D4E3F000, v16, v17, "Failed to create xpc session with error: %{public}@.", v18, 0xCu);
        sub_1D4E50004(v19, &unk_1EC7F2C00, &qword_1D5623260);
        MEMORY[0x1DA6ED200](v19, -1, -1);
        MEMORY[0x1DA6ED200](v18, -1, -1);
      }

      else
      {
      }

      v7 = 0;
    }

    else
    {
      v7 = v14;

      *a1 = v7;
      v22 = sub_1D560C738();
      v23 = sub_1D56156E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D4E3F000, v22, v23, "XPC session created.", v24, 2u);
        MEMORY[0x1DA6ED200](v24, -1, -1);
      }
    }

    a3 = v26;
  }

  *a3 = v7;
}

double sub_1D551764C@<D0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D55176C8(a1);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void sub_1D55176C8(void *a1)
{
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  v2 = MEMORY[0x1EEE9AC00](v135);
  v136 = v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v134 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v134 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v140 = v134 - v10;
  v141 = type metadata accessor for MusicDaemon.Response.Context(0);
  v11 = MEMORY[0x1EEE9AC00](v141);
  v137 = v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v142 = v134 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v134 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v138 = v134 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v139 = v134 - v20;
  v21 = type metadata accessor for MusicDaemon.Response(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v144 = v134 - v25;
  v26 = sub_1D560C9E8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDD591E0 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDD591E8;
  *v29 = qword_1EDD591E8;
  (*(v27 + 104))(v29, *MEMORY[0x1E69E8020], v26);
  v31 = v30;
  LOBYTE(v30) = sub_1D560C9F8();
  (*(v27 + 8))(v29, v26);
  if (v30)
  {
    v32 = v143;
    sub_1D551A13C();
    sub_1D551AED8(&qword_1EDD59108, type metadata accessor for MusicDaemon.Response, &protocol conformance descriptor for MusicDaemon.Response);
    v33 = v144;
    sub_1D560C7D8();
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v42 = sub_1D560C758();
    v134[1] = __swift_project_value_buffer(v42, qword_1EDD76B38);
    v43 = sub_1D560C738();
    v44 = sub_1D56156E8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1D4E3F000, v43, v44, "Handling XPC message.", v45, 2u);
      v46 = v45;
      v32 = v143;
      MEMORY[0x1DA6ED200](v46, -1, -1);
    }

    sub_1D551ADD4(v33, v24, type metadata accessor for MusicDaemon.Response);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v113 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48)];
        v114 = *v113;
        v115 = *(v113 + 1);
        v116 = v113[16];
        v51 = v138;
        sub_1D551ACC4(v24, v138);
        sub_1D5507888(v114, v115, v116);
        v117 = sub_1D560C738();
        v118 = sub_1D56156E8();
        sub_1D55078B4(v114, v115, v116);
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v147[0] = v120;
          *v119 = 136446210;
          *&v145 = v114;
          *(&v145 + 1) = v115;
          LOBYTE(v146) = v116;
          sub_1D5507888(v114, v115, v116);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
          v121 = sub_1D5614DB8();
          v123 = sub_1D4E6835C(v121, v122, v147);

          *(v119 + 4) = v123;
          v32 = v143;
          _os_log_impl(&dword_1D4E3F000, v117, v118, "Started observing item with error: %{public}s.", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v120);
          MEMORY[0x1DA6ED200](v120, -1, -1);
          v124 = v119;
          v51 = v138;
          MEMORY[0x1DA6ED200](v124, -1, -1);
        }

        v125 = *(v32 + 16);
        MEMORY[0x1EEE9AC00](v126);
        v134[-2] = v51;

        os_unfair_lock_lock(v125 + 12);
        sub_1D551AD9C(&v125[4], &v145);
        os_unfair_lock_unlock(v125 + 12);
        v127 = v145;

        if (v127)
        {
          *&v145 = v114;
          *(&v145 + 1) = v115;
          LOBYTE(v146) = v116;
          swift_unknownObjectRetain();
          sub_1D5503BA4();
          swift_unknownObjectRelease_n();
        }

        sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
        v63 = v114;
        v64 = v115;
        v65 = v116;
        goto LABEL_38;
      case 2u:
        v86 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48)];
        v87 = *v86;
        v88 = *(v86 + 1);
        v89 = v86[16];
        sub_1D551ACC4(v24, v142);
        sub_1D5507888(v87, v88, v89);
        v90 = sub_1D560C738();
        v91 = sub_1D56156E8();
        sub_1D55078B4(v87, v88, v89);
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v147[0] = v93;
          *v92 = 136446210;
          *&v145 = v87;
          *(&v145 + 1) = v88;
          LOBYTE(v146) = v89;
          sub_1D5507888(v87, v88, v89);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
          v94 = sub_1D5614DB8();
          v96 = sub_1D4E6835C(v94, v95, v147);

          *(v92 + 4) = v96;
          v32 = v143;
          _os_log_impl(&dword_1D4E3F000, v90, v91, "Stopped observing item with error: %{public}s.", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x1DA6ED200](v93, -1, -1);
          MEMORY[0x1DA6ED200](v92, -1, -1);
        }

        v97 = *(v32 + 16);
        MEMORY[0x1EEE9AC00](v98);
        v134[-2] = v142;

        os_unfair_lock_lock(v97 + 12);
        sub_1D551AD80(&v97[4], &v145);
        os_unfair_lock_unlock(v97 + 12);
        v99 = v145;
        v100 = v146;

        if (v99)
        {
          *&v145 = v87;
          *(&v145 + 1) = v88;
          LOBYTE(v146) = v89;
          swift_unknownObjectRetain();
          sub_1D5504858();
          swift_unknownObjectRelease();
        }

        sub_1D55078B4(v87, v88, v89);
        if (v100)
        {
          sub_1D551A5AC();
          v101 = sub_1D560C738();
          v102 = sub_1D56156E8();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            _os_log_impl(&dword_1D4E3F000, v101, v102, "Ending XPC session because nothing is being observed anymore.", v103, 2u);
            MEMORY[0x1DA6ED200](v103, -1, -1);
          }

          swift_unknownObjectRelease();
          sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
        }

        else
        {
          sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
          swift_unknownObjectRelease();
        }

        v112 = v142;
        goto LABEL_48;
      case 3u:
        sub_1D551ACC4(v24, v17);
        v104 = sub_1D560C738();
        v105 = sub_1D56156E8();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_1D4E3F000, v104, v105, "Content updated.", v106, 2u);
          MEMORY[0x1DA6ED200](v106, -1, -1);
        }

        v107 = *(v32 + 16);
        MEMORY[0x1EEE9AC00](v108);
        v134[-2] = v17;

        os_unfair_lock_lock(v107 + 12);
        sub_1D551AF3C(&v107[4], &v145);
        os_unfair_lock_unlock(v107 + 12);
        v109 = v145;

        if (v109)
        {
          v110 = &v17[*(v141 + 32)];
          v111 = *(v110 + 2);
          v145 = *v110;
          v146 = v111;
          swift_unknownObjectRetain();
          sub_1D5504120();
          swift_unknownObjectRelease_n();
        }

        sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
        v112 = v17;
        goto LABEL_48;
      case 4u:
        v66 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650) + 48)];
        v67 = *v66;
        v68 = *(v66 + 1);
        v69 = v66[16];
        v70 = v24;
        v71 = v140;
        sub_1D4FD23EC(v70, v140, &qword_1EC7ECCA0, &qword_1D5622EB8);
        sub_1D4F1C460(v71, v9, &qword_1EC7ECCA0, &qword_1D5622EB8);
        sub_1D550789C(v67, v68, v69);
        v72 = sub_1D560C738();
        v73 = sub_1D56156E8();
        v142 = v67;
        sub_1D55078C8(v67, v68, v69);
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v147[0] = v139;
          *v74 = 136446466;
          sub_1D4F1C460(v9, v6, &qword_1EC7ECCA0, &qword_1D5622EB8);
          v75 = sub_1D5614DB8();
          v77 = v76;
          sub_1D4E50004(v9, &qword_1EC7ECCA0, &qword_1D5622EB8);
          v78 = sub_1D4E6835C(v75, v77, v147);

          *(v74 + 4) = v78;
          *(v74 + 12) = 2082;
          v79 = v142;
          *&v145 = v142;
          *(&v145 + 1) = v68;
          LOBYTE(v146) = v69;
          sub_1D550789C(v142, v68, v69);
          v80 = sub_1D5614DB8();
          v82 = sub_1D4E6835C(v80, v81, v147);

          *(v74 + 14) = v82;
          _os_log_impl(&dword_1D4E3F000, v72, v73, "Failure tied to context: %{public}s with error: %{public}s.", v74, 0x16u);
          v83 = v139;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v83, -1, -1);
          v84 = v74;
          v71 = v140;
          MEMORY[0x1DA6ED200](v84, -1, -1);

          v85 = v141;
        }

        else
        {

          sub_1D4E50004(v9, &qword_1EC7ECCA0, &qword_1D5622EB8);
          v85 = v141;
          v79 = v142;
        }

        v128 = v136;
        sub_1D4F1C460(v71, v136, &qword_1EC7ECCA0, &qword_1D5622EB8);
        if (__swift_getEnumTagSinglePayload(v128, 1, v85) == 1)
        {
          sub_1D55078C8(v79, v68, v69);
          sub_1D4E50004(v71, &qword_1EC7ECCA0, &qword_1D5622EB8);
          sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
          sub_1D4E50004(v128, &qword_1EC7ECCA0, &qword_1D5622EB8);
        }

        else
        {
          v129 = v69;
          v130 = v137;
          v131 = sub_1D551ACC4(v128, v137);
          v132 = *(v143 + 16);
          MEMORY[0x1EEE9AC00](v131);
          v134[-2] = v130;

          os_unfair_lock_lock(v132 + 12);
          sub_1D551AF3C(&v132[4], &v145);
          os_unfair_lock_unlock(v132 + 12);
          v133 = v145;

          if (v133)
          {
            *&v145 = v79;
            *(&v145 + 1) = v68;
            LOBYTE(v146) = v129;
            swift_unknownObjectRetain();
            sub_1D5504F94();
            swift_unknownObjectRelease_n();
            sub_1D4E50004(v71, &qword_1EC7ECCA0, &qword_1D5622EB8);
            sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
            sub_1D55078C8(v79, v68, v129);
          }

          else
          {
            sub_1D55078C8(v79, v68, v129);
            sub_1D4E50004(v71, &qword_1EC7ECCA0, &qword_1D5622EB8);
            sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
          }

          v112 = v137;
LABEL_48:
          sub_1D551AD28(v112, type metadata accessor for MusicDaemon.Response.Context);
        }

        break;
      default:
        v47 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48)];
        v48 = *v47;
        v49 = *(v47 + 1);
        v50 = v47[16];
        v51 = v139;
        sub_1D551ACC4(v24, v139);
        sub_1D5507888(v48, v49, v50);
        v52 = sub_1D560C738();
        v53 = sub_1D56156E8();
        sub_1D55078B4(v48, v49, v50);
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v147[0] = v55;
          *v54 = 136446210;
          *&v145 = v48;
          *(&v145 + 1) = v49;
          LOBYTE(v146) = v50;
          sub_1D5507888(v48, v49, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
          v56 = sub_1D5614DB8();
          v58 = sub_1D4E6835C(v56, v57, v147);

          *(v54 + 4) = v58;
          v32 = v143;
          _os_log_impl(&dword_1D4E3F000, v52, v53, "Action performed with error: %{public}s.", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v55);
          v59 = v55;
          v51 = v139;
          MEMORY[0x1DA6ED200](v59, -1, -1);
          MEMORY[0x1DA6ED200](v54, -1, -1);
        }

        v60 = *(v32 + 16);
        MEMORY[0x1EEE9AC00](v61);
        v134[-2] = v51;

        os_unfair_lock_lock(v60 + 12);
        sub_1D551ADB8(&v60[4], &v145);
        os_unfair_lock_unlock(v60 + 12);
        v62 = v145;

        if (v62)
        {
          *&v145 = v48;
          *(&v145 + 1) = v49;
          LOBYTE(v146) = v50;
          swift_unknownObjectRetain();
          sub_1D5504AB0();
          swift_unknownObjectRelease_n();
        }

        sub_1D551AD28(v144, type metadata accessor for MusicDaemon.Response);
        v63 = v48;
        v64 = v49;
        v65 = v50;
LABEL_38:
        sub_1D55078B4(v63, v64, v65);
        v112 = v51;
        goto LABEL_48;
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v34 = sub_1D560C758();
    __swift_project_value_buffer(v34, qword_1EDD76B38);
    v35 = a1;
    v36 = sub_1D560C738();
    v37 = sub_1D56156C8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      v40 = a1;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_1D4E3F000, v36, v37, "Failed to decode XPC message with error: %{public}@.", v38, 0xCu);
      sub_1D4E50004(v39, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v39, -1, -1);
      MEMORY[0x1DA6ED200](v38, -1, -1);
    }

    else
    {
    }
  }
}