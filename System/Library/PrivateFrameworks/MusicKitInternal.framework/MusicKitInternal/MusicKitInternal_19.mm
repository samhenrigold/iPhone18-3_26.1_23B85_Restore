uint64_t sub_1D5021280(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicRecentlySearchedViewModel.Entry.Source.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t MusicRecentlySearchedViewModel.Entry.Source.rawValue.getter()
{
  if (*v0)
  {
    return 0x7972617262694CLL;
  }

  else
  {
    return 0x754D2E656C707041;
  }
}

uint64_t sub_1D5021388@<X0>(uint64_t *a1@<X8>)
{
  result = MusicRecentlySearchedViewModel.Entry.Source.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D50213B4()
{
  result = qword_1EC7EE0C8;
  if (!qword_1EC7EE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE0D0, &qword_1D56298A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0C8);
  }

  return result;
}

unint64_t sub_1D50214E8()
{
  result = qword_1EC7EE0D8;
  if (!qword_1EC7EE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0D8);
  }

  return result;
}

_BYTE *_s6SourceOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5021630()
{
  result = qword_1EC7EE0E0;
  if (!qword_1EC7EE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0E0);
  }

  return result;
}

uint64_t Station.siriRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v81 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v79 = v5;
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v78 = v7 - v6;
  v68 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v77 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v72 = v11 - v10;
  v75 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v69 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v67 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v17 = OUTLINED_FUNCTION_22(v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_71_1();
  v66 = v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_0();
  v65 = v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v62 - v29;
  v30 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  v76 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = *(v32 + 16);
  v37(v35 - v34, v1, v30);
  v38 = sub_1D5614388();
  v73 = v39;
  v74 = v38;
  v40 = _s8MusicKit7StationV0aB8InternalE12providerNameSSSgvg_0();
  v70 = v41;
  v71 = v40;
  sub_1D56143B8();
  sub_1D5614218();
  sub_1D5614378();
  v42 = v68;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v68);
  v83 = v30;
  v84 = MEMORY[0x1E6977168];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
  v63 = v36;
  v37(boxed_opaque_existential_0, v36, v30);
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v44 = v67;
  sub_1D5612AF8();
  v45 = v72;
  sub_1D5611A98();
  (*(v69 + 8))(v44, v75);
  sub_1D560FDD8();
  (*(v77 + 8))(v45, v42);
  sub_1D4E50004(v22, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v46 = v20;
  v62 = v22;
  sub_1D4F7AFE0(v20, v22);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v47 = v78;
  sub_1D560EC98();
  sub_1D4E69910(v22, v20, &qword_1EC7EA358, &unk_1D561DF50);
  v48 = type metadata accessor for MusicSiriRepresentation(0);
  v49 = v81;
  v50 = v64;
  sub_1D4E69910(v64, v81 + v48[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v51 = v65;
  sub_1D4E69910(v65, v49 + v48[9], &qword_1EC7EC478, &unk_1D56299D0);
  v52 = v66;
  sub_1D4E69910(v66, v49 + v48[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v82[0]) = 13;
  v53 = v47;
  sub_1D50391CC();
  v55 = v54;
  v57 = v56;
  sub_1D4E50004(v46, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v79 + 8))(v53, v80);
  sub_1D4E50004(v62, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v52, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v51, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v50, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = (*(v76 + 8))(v63, v30);
  v59 = v81;
  *v81 = v55;
  v59[1] = v57;
  *(v59 + 16) = 13;
  v60 = v73;
  v59[3] = v74;
  v59[4] = v60;
  v61 = v70;
  v59[5] = v71;
  v59[6] = v61;
  return result;
}

uint64_t Station.airTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0E8, &qword_1D56299E0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  sub_1D56143F8();
  v5 = sub_1D56143E8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1D4E50004(v1, &qword_1EC7EE0E8, &qword_1D56299E0);
    v6 = type metadata accessor for Station.AirTime(0);
    v7 = a1;
    v8 = 1;
  }

  else
  {
    sub_1D56143D8();
    v9 = type metadata accessor for Station.AirTime(0);
    sub_1D56143C8();
    OUTLINED_FUNCTION_24_0();
    (*(v10 + 8))(v1, v5);
    v7 = a1;
    v8 = 0;
    v6 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t Station.kind.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0F0, &qword_1D56299E8);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  sub_1D56143A8();
  v5 = sub_1D5614398();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    result = sub_1D4E50004(v1, &qword_1EC7EE0F0, &qword_1D56299E8);
    *a1 = 14;
  }

  else
  {
    Station._Kind.convertToStationKind()(a1);
    OUTLINED_FUNCTION_24_0();
    return (*(v7 + 8))(v1, v5);
  }

  return result;
}

uint64_t Station.friendsWhoListened.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1D56142A8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D4E50004(v16, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v18 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v19 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
    type metadata accessor for SocialProfile(0);
    sub_1D5025AE4(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    sub_1D5025AE4(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    sub_1D5612368();
    sub_1D4E50004(v5, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v8 + 8))(v12, v6);
    OUTLINED_FUNCTION_24_0();
    (*(v20 + 8))(v16, v17);
    v18 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v21);
}

uint64_t sub_1D50221C8()
{
  v0 = sub_1D5610A18();
  __swift_allocate_value_buffer(v0, qword_1EC87BF98);
  __swift_project_value_buffer(v0, qword_1EC87BF98);
  return sub_1D5610A28();
}

uint64_t Station.AirTime.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D560C328();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Station.AirTime.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Station.AirTime(0) + 20);
  sub_1D560C328();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static Station.AirTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Station.AirTime(0);

  return sub_1D560C2E8();
}

uint64_t sub_1D5022364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D5022434(char a1)
{
  if (a1)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_1D5022478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5022364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50224A0(uint64_t a1)
{
  v2 = sub_1D502549C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50224DC(uint64_t a1)
{
  v2 = sub_1D502549C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Station.AirTime.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0F8, &qword_1D56299F0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D502549C();
  sub_1D56163D8();
  v17 = 0;
  sub_1D560C328();
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v11, v12, MEMORY[0x1E6969538]);
  OUTLINED_FUNCTION_19_28(v3, &v17);
  if (!v2)
  {
    v13 = *(type metadata accessor for Station.AirTime(0) + 20);
    v16 = 1;
    OUTLINED_FUNCTION_19_28(v3 + v13, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Station.AirTime.hash(into:)(uint64_t a1)
{
  sub_1D560C328();
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v1, v2, MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  type metadata accessor for Station.AirTime(0);
  return sub_1D5614CB8();
}

uint64_t Station.AirTime.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D560C328();
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v0, v1, MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  type metadata accessor for Station.AirTime(0);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t Station.AirTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v36 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v32 = v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE108, &qword_1D56299F8);
  OUTLINED_FUNCTION_4();
  v34 = v10;
  v35 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for Station.AirTime(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D502549C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v13;
  v29 = v8;
  v30 = v17;
  v18 = v32;
  v38 = 0;
  OUTLINED_FUNCTION_2_36();
  sub_1D5025AE4(v19, v20, MEMORY[0x1E6969558]);
  v21 = v33;
  sub_1D5615FD8();
  v33 = *(v18 + 32);
  (v33)(v30, v21, v36);
  v37 = 1;
  v22 = v29;
  sub_1D5615FD8();
  v23 = OUTLINED_FUNCTION_14_30();
  v24(v23);
  v25 = v30;
  (v33)(v30 + *(v28 + 20), v22, v36);
  sub_1D50254F0(v25, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5025554(v25);
}

uint64_t sub_1D5022B3C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D560C328();
  sub_1D5025AE4(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  sub_1D5614CB8();
  return sub_1D5616328();
}

BOOL static Station.Kind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
    case 5:
      return v3 == 5;
    case 6:
      return v3 == 6;
    case 7:
      return v3 == 7;
    case 8:
      return v3 == 8;
    case 9:
      return v3 == 9;
    case 0xA:
      return v3 == 10;
    case 0xB:
      return v3 == 11;
    case 0xC:
      return v3 == 12;
    case 0xD:
      return v3 == 13;
    default:
      if ((v3 - 3) < 0xB)
      {
        return 0;
      }

      if (v2 != 2)
      {
        return v3 != 2 && (sub_1D4F3ADEC(v2 & 1) & 1) != 0;
      }

      return v3 == 2;
  }
}

uint64_t sub_1D5022CFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565536D75626C61 && a2 == 0xEB00000000646564;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4F747369747261 && a2 == 0xEA0000000000796CLL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553747369747261 && a2 == 0xEC00000064656465;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001D5681B40 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7473696C79616C70 && a2 == 0xEE00646564656553;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x64656553676E6F73 && a2 == 0xEA00000000006465;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 1919251317 && a2 == 0xE400000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1D5616168();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1D50230C4(char a1)
{
  result = 0x6565536D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x6E4F747369747261;
      break;
    case 2:
      result = 0x6553747369747261;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x65726E6567;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x7972657571;
      break;
    case 9:
      result = 0x64656553676E6F73;
      break;
    case 10:
      result = 0x6E696D6165727473;
      break;
    case 11:
      result = 1919251317;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5023228(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D50232A4(uint64_t a1)
{
  v2 = sub_1D50259F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50232E0(uint64_t a1)
{
  v2 = sub_1D50259F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D502331C(uint64_t a1)
{
  v2 = sub_1D50259A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023358(uint64_t a1)
{
  v2 = sub_1D50259A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023394(uint64_t a1)
{
  v2 = sub_1D502594C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50233D0(uint64_t a1)
{
  v2 = sub_1D502594C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5022CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D502343C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D50230BC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5023464(uint64_t a1)
{
  v2 = sub_1D50255B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50234A0(uint64_t a1)
{
  v2 = sub_1D50255B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50234DC(uint64_t a1)
{
  v2 = sub_1D50258F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023518(uint64_t a1)
{
  v2 = sub_1D50258F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023554(uint64_t a1)
{
  v2 = sub_1D50258A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023590(uint64_t a1)
{
  v2 = sub_1D50258A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50235CC(uint64_t a1)
{
  v2 = sub_1D5025850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023608(uint64_t a1)
{
  v2 = sub_1D5025850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023644(uint64_t a1)
{
  v2 = sub_1D50257FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023680(uint64_t a1)
{
  v2 = sub_1D50257FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50236BC(uint64_t a1)
{
  v2 = sub_1D50257A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50236F8(uint64_t a1)
{
  v2 = sub_1D50257A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023734(uint64_t a1)
{
  v2 = sub_1D5025754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023770(uint64_t a1)
{
  v2 = sub_1D5025754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50237AC(uint64_t a1)
{
  v2 = sub_1D5025700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50237E8(uint64_t a1)
{
  v2 = sub_1D5025700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5023828(uint64_t a1)
{
  v2 = sub_1D5025658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5023864(uint64_t a1)
{
  v2 = sub_1D5025658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50238A0(uint64_t a1)
{
  v2 = sub_1D5025604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50238DC(uint64_t a1)
{
  v2 = sub_1D5025604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Station.Kind.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE110, &qword_1D5629A00);
  OUTLINED_FUNCTION_4();
  v88 = v6;
  v89 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v85 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE118, &qword_1D5629A08);
  OUTLINED_FUNCTION_4();
  v86 = v10;
  v87 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v84 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE120, &qword_1D5629A10);
  OUTLINED_FUNCTION_4();
  v82 = v14;
  v83 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v81 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE128, &qword_1D5629A18);
  OUTLINED_FUNCTION_4();
  v79 = v18;
  v80 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v78 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE130, &qword_1D5629A20);
  OUTLINED_FUNCTION_4();
  v76 = v22;
  v77 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v75 = v24;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE138, &qword_1D5629A28);
  OUTLINED_FUNCTION_4();
  v73[15] = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v27);
  v73[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE140, &qword_1D5629A30);
  OUTLINED_FUNCTION_4();
  v73[12] = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v30);
  v73[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE148, &qword_1D5629A38);
  OUTLINED_FUNCTION_4();
  v73[9] = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v73[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE150, &qword_1D5629A40);
  OUTLINED_FUNCTION_4();
  v73[6] = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v73[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE158, &qword_1D5629A48);
  OUTLINED_FUNCTION_4();
  v73[3] = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE160, &qword_1D5629A50);
  OUTLINED_FUNCTION_4();
  v73[1] = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v73 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE168, &qword_1D5629A58);
  OUTLINED_FUNCTION_4();
  v73[0] = v46;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v73 - v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE170, &qword_1D5629A60);
  OUTLINED_FUNCTION_4();
  v91 = v50;
  v92 = v51;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_71_1();
  v53 = *v3;
  v54 = a1[4];
  v55 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50255B0();
  v90 = v2;
  sub_1D56163D8();
  switch(v53)
  {
    case 3:
      v93[3] = 0;
      sub_1D50259F4();
      v55 = v90;
      v54 = v91;
      sub_1D5616018();
      OUTLINED_FUNCTION_136();
      v57 = v49;
      v58 = v45;
      goto LABEL_15;
    case 4:
      v93[4] = 1;
      sub_1D50259A0();
      v55 = v90;
      v54 = v91;
      sub_1D5616018();
      OUTLINED_FUNCTION_136();
      v57 = v44;
      v58 = v40;
      goto LABEL_15;
    case 5:
      v94 = 2;
      sub_1D502594C();
      v63 = v73[2];
      OUTLINED_FUNCTION_5_34(&_s4KindO22ArtistSeededCodingKeysON, &v94);
      OUTLINED_FUNCTION_136();
      v57 = v63;
      v60 = v93;
      goto LABEL_10;
    case 6:
      v95 = 3;
      sub_1D50258F8();
      v64 = v73[5];
      OUTLINED_FUNCTION_5_34(&_s4KindO19EditorialCodingKeysON, &v95);
      OUTLINED_FUNCTION_136();
      v57 = v64;
      v60 = &v97;
      goto LABEL_10;
    case 7:
      v96 = 4;
      sub_1D50258A4();
      v59 = v73[8];
      OUTLINED_FUNCTION_5_34(&_s4KindO16FormatCodingKeysON, &v96);
      OUTLINED_FUNCTION_136();
      v57 = v59;
      v60 = &v103;
      goto LABEL_10;
    case 8:
      v97 = 5;
      sub_1D5025850();
      v65 = v73[11];
      OUTLINED_FUNCTION_5_34(&_s4KindO15GenreCodingKeysON, &v97);
      OUTLINED_FUNCTION_136();
      v57 = v65;
      v60 = &v104;
LABEL_10:
      v58 = *(v60 - 32);
      goto LABEL_15;
    case 9:
      v98 = 6;
      sub_1D50257FC();
      v66 = v73[14];
      OUTLINED_FUNCTION_5_34(&_s4KindO31LibraryPlaylistSeededCodingKeysON, &v98);
      OUTLINED_FUNCTION_136();
      v57 = v66;
      v58 = v74;
      goto LABEL_15;
    case 10:
      v99 = 7;
      sub_1D50257A8();
      v61 = v75;
      OUTLINED_FUNCTION_5_34(&_s4KindO24PlaylistSeededCodingKeysON, &v99);
      v62 = v76;
      v58 = v77;
      goto LABEL_14;
    case 11:
      v100 = 8;
      sub_1D5025754();
      v61 = v78;
      OUTLINED_FUNCTION_5_34(&_s4KindO15QueryCodingKeysON, &v100);
      v62 = v79;
      v58 = v80;
      goto LABEL_14;
    case 12:
      v101[0] = 9;
      sub_1D5025700();
      v61 = v81;
      OUTLINED_FUNCTION_5_34(&_s4KindO20SongSeededCodingKeysON, v101);
      v62 = v82;
      v58 = v83;
      goto LABEL_14;
    case 13:
      v102 = 11;
      sub_1D5025604();
      v61 = v85;
      OUTLINED_FUNCTION_5_34(&_s4KindO14UserCodingKeysON, &v102);
      v62 = v88;
      v58 = v89;
LABEL_14:
      v56 = *(v62 + 8);
      v57 = v61;
LABEL_15:
      v56(v57, v58);
      result = (*(v92 + 8))(v55, v54);
      break;
    default:
      v101[2] = 10;
      sub_1D5025658();
      v69 = v90;
      v68 = v91;
      sub_1D5616018();
      v101[1] = v53;
      sub_1D50256AC();
      v70 = v87;
      sub_1D5616068();
      v71 = OUTLINED_FUNCTION_12_32();
      v72(v71, v70);
      result = (*(v92 + 8))(v69, v68);
      break;
  }

  return result;
}

uint64_t Station.Kind.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1)
  {
    case 3:
      v3 = 0;
      goto LABEL_13;
    case 4:
      v3 = 1;
      goto LABEL_13;
    case 5:
      v3 = 2;
      goto LABEL_13;
    case 6:
      v3 = 3;
      goto LABEL_13;
    case 7:
      v3 = 4;
      goto LABEL_13;
    case 8:
      v3 = 5;
      goto LABEL_13;
    case 9:
      v3 = 6;
      goto LABEL_13;
    case 0xA:
      v3 = 7;
      goto LABEL_13;
    case 0xB:
      v3 = 8;
      goto LABEL_13;
    case 0xC:
      v3 = 9;
      goto LABEL_13;
    case 0xD:
      v3 = 11;
LABEL_13:
      result = MEMORY[0x1DA6EC0D0](v3);
      break;
    default:
      MEMORY[0x1DA6EC0D0](10);
      if (v2 == 2)
      {
        result = sub_1D56162F8();
      }

      else
      {
        sub_1D56162F8();
        sub_1D5614E28();
      }

      break;
  }

  return result;
}

uint64_t Station.Kind.hashValue.getter()
{
  v2[79] = *v0;
  sub_1D56162D8();
  Station.Kind.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t Station.Kind.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v151 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE1E8, &qword_1D5629A68);
  OUTLINED_FUNCTION_4();
  v141 = v5;
  v142 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v149 = v7;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE1F0, &qword_1D5629A70);
  OUTLINED_FUNCTION_4();
  v121 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v150 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE1F8, &qword_1D5629A78);
  OUTLINED_FUNCTION_4();
  v139 = v12;
  v140 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v148 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE200, &qword_1D5629A80);
  OUTLINED_FUNCTION_4();
  v137 = v16;
  v138 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v147 = v18;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE208, &qword_1D5629A88);
  OUTLINED_FUNCTION_4();
  v135 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v154 = v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE210, &qword_1D5629A90);
  OUTLINED_FUNCTION_4();
  v134 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v153 = v24;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE218, &qword_1D5629A98);
  OUTLINED_FUNCTION_4();
  v131 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v152 = v27;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE220, &qword_1D5629AA0);
  OUTLINED_FUNCTION_4();
  v129 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v146 = v30;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE228, &qword_1D5629AA8);
  OUTLINED_FUNCTION_4();
  v127 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v145 = v33;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE230, &qword_1D5629AB0);
  OUTLINED_FUNCTION_4();
  v125 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v144 = v36;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE238, &qword_1D5629AB8);
  OUTLINED_FUNCTION_4();
  v123 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v115 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE240, &qword_1D5629AC0);
  OUTLINED_FUNCTION_4();
  v122 = v42;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_71_1();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE248, &unk_1D5629AC8);
  OUTLINED_FUNCTION_4();
  v46 = v45;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v115 - v48;
  v50 = a1[3];
  v155 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1D50255B0();
  v51 = v156;
  sub_1D5616398();
  if (v51)
  {
    goto LABEL_8;
  }

  v119 = v2;
  v118 = v41;
  v120 = v40;
  v52 = v153;
  v156 = v46;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v55 == v56 >> 1)
  {
LABEL_7:
    sub_1D5615C18();
    swift_allocError();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v68 = &type metadata for Station.Kind;
    sub_1D5615F28();
    sub_1D5615BF8();
    OUTLINED_FUNCTION_24_0();
    (*(v69 + 104))(v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v156 + 8))(v49, v44);
LABEL_8:
    v70 = v155;
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v117 = 0;
  if (v55 < (v56 >> 1))
  {
    v116 = *(v54 + v55);
    sub_1D4FE35EC();
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    if (v58 == v60 >> 1)
    {
      v61 = v151;
      switch(v116)
      {
        case 1:
          v158 = 1;
          sub_1D50259A0();
          OUTLINED_FUNCTION_3_42(&_s4KindO20ArtistOnlyCodingKeysON, &v158);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_6_38();
          v96(v95, v124);
          v97 = OUTLINED_FUNCTION_1_50();
          v98(v97);
          v66 = 4;
          break;
        case 2:
          v159 = 2;
          sub_1D502594C();
          OUTLINED_FUNCTION_3_42(&_s4KindO22ArtistSeededCodingKeysON, &v159);
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_6_38();
          v84(v83, v126);
          v85 = OUTLINED_FUNCTION_1_50();
          v86(v85);
          v66 = 5;
          break;
        case 3:
          v160 = 3;
          sub_1D50258F8();
          OUTLINED_FUNCTION_3_42(&_s4KindO19EditorialCodingKeysON, &v160);
          swift_unknownObjectRelease();
          v87 = OUTLINED_FUNCTION_6_38();
          v88(v87, v128);
          v89 = OUTLINED_FUNCTION_1_50();
          v90(v89);
          v66 = 6;
          break;
        case 4:
          v161 = 4;
          sub_1D50258A4();
          OUTLINED_FUNCTION_3_42(&_s4KindO16FormatCodingKeysON, &v161);
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_6_38();
          v76(v75, v130);
          v77 = OUTLINED_FUNCTION_1_50();
          v78(v77);
          v66 = 7;
          break;
        case 5:
          v162 = 5;
          sub_1D5025850();
          OUTLINED_FUNCTION_3_42(&_s4KindO15GenreCodingKeysON, &v162);
          swift_unknownObjectRelease();
          v99 = OUTLINED_FUNCTION_6_38();
          v100(v99, v132);
          v101 = OUTLINED_FUNCTION_1_50();
          v102(v101);
          v66 = 8;
          break;
        case 6:
          v163 = 6;
          sub_1D50257FC();
          OUTLINED_FUNCTION_4_33(&_s4KindO31LibraryPlaylistSeededCodingKeysON, &v163);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_136();
          v103(v52, v133);
          v104 = OUTLINED_FUNCTION_1_50();
          v105(v104);
          v66 = 9;
          break;
        case 7:
          v164 = 7;
          sub_1D50257A8();
          OUTLINED_FUNCTION_4_33(&_s4KindO24PlaylistSeededCodingKeysON, &v164);
          swift_unknownObjectRelease();
          v91 = OUTLINED_FUNCTION_6_38();
          v92(v91, v136);
          v93 = OUTLINED_FUNCTION_1_50();
          v94(v93);
          v66 = 10;
          break;
        case 8:
          v165 = 8;
          sub_1D5025754();
          OUTLINED_FUNCTION_3_42(&_s4KindO15QueryCodingKeysON, &v165);
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_12_32();
          v111(v110);
          v112 = OUTLINED_FUNCTION_1_50();
          v113(v112);
          v66 = 11;
          break;
        case 9:
          v166[0] = 9;
          sub_1D5025700();
          OUTLINED_FUNCTION_3_42(&_s4KindO20SongSeededCodingKeysON, v166);
          swift_unknownObjectRelease();
          v79 = OUTLINED_FUNCTION_12_32();
          v80(v79);
          v81 = OUTLINED_FUNCTION_1_50();
          v82(v81);
          v66 = 12;
          break;
        case 10:
          v167 = 10;
          sub_1D5025658();
          v106 = v150;
          OUTLINED_FUNCTION_4_33(&_s4KindO19StreamingCodingKeysON, &v167);
          v107 = v44;
          sub_1D5025A48();
          v108 = v143;
          sub_1D5615F78();
          v109 = v156;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_136();
          v114(v106, v108);
          (*(v109 + 8))(v49, v107);
          v66 = v166[1];
          break;
        case 11:
          v168 = 11;
          sub_1D5025604();
          OUTLINED_FUNCTION_3_42(&_s4KindO14UserCodingKeysON, &v168);
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_12_32();
          v72(v71);
          v73 = OUTLINED_FUNCTION_1_50();
          v74(v73);
          v66 = 13;
          break;
        default:
          v157 = 0;
          sub_1D50259F4();
          OUTLINED_FUNCTION_3_42(&_s4KindO21AlbumSeededCodingKeysON, &v157);
          swift_unknownObjectRelease();
          v62 = OUTLINED_FUNCTION_6_38();
          v63(v62, v118);
          v64 = OUTLINED_FUNCTION_1_50();
          v65(v64);
          v66 = 3;
          break;
      }

      v70 = v155;
      *v61 = v66;
      return __swift_destroy_boxed_opaque_existential_1(v70);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5025240(uint64_t a1)
{
  v3[79] = *v1;
  sub_1D56162D8();
  Station.Kind.hash(into:)(v3);
  return sub_1D5616328();
}

uint64_t Station.StreamingKind.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t Station.StreamingKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x73616364616F7262;
  }

  else
  {
    return 0x65646F73697065;
  }
}

uint64_t sub_1D5025344@<X0>(uint64_t *a1@<X8>)
{
  result = Station.StreamingKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for Station.AirTime(uint64_t a1)
{
  result = qword_1EDD52DD0;
  if (!qword_1EDD52DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D502549C()
{
  result = qword_1EC7EE100;
  if (!qword_1EC7EE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE100);
  }

  return result;
}

uint64_t sub_1D50254F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Station.AirTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5025554(uint64_t a1)
{
  v2 = type metadata accessor for Station.AirTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50255B0()
{
  result = qword_1EC7EE178;
  if (!qword_1EC7EE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE178);
  }

  return result;
}

unint64_t sub_1D5025604()
{
  result = qword_1EC7EE180;
  if (!qword_1EC7EE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE180);
  }

  return result;
}

unint64_t sub_1D5025658()
{
  result = qword_1EC7EE188;
  if (!qword_1EC7EE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE188);
  }

  return result;
}

unint64_t sub_1D50256AC()
{
  result = qword_1EC7EE190;
  if (!qword_1EC7EE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE190);
  }

  return result;
}

unint64_t sub_1D5025700()
{
  result = qword_1EC7EE198;
  if (!qword_1EC7EE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE198);
  }

  return result;
}

unint64_t sub_1D5025754()
{
  result = qword_1EC7EE1A0;
  if (!qword_1EC7EE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1A0);
  }

  return result;
}

unint64_t sub_1D50257A8()
{
  result = qword_1EC7EE1A8;
  if (!qword_1EC7EE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1A8);
  }

  return result;
}

unint64_t sub_1D50257FC()
{
  result = qword_1EC7EE1B0;
  if (!qword_1EC7EE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1B0);
  }

  return result;
}

unint64_t sub_1D5025850()
{
  result = qword_1EC7EE1B8;
  if (!qword_1EC7EE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1B8);
  }

  return result;
}

unint64_t sub_1D50258A4()
{
  result = qword_1EC7EE1C0;
  if (!qword_1EC7EE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1C0);
  }

  return result;
}

unint64_t sub_1D50258F8()
{
  result = qword_1EC7EE1C8;
  if (!qword_1EC7EE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1C8);
  }

  return result;
}

unint64_t sub_1D502594C()
{
  result = qword_1EC7EE1D0;
  if (!qword_1EC7EE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1D0);
  }

  return result;
}

unint64_t sub_1D50259A0()
{
  result = qword_1EC7EE1D8;
  if (!qword_1EC7EE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1D8);
  }

  return result;
}

unint64_t sub_1D50259F4()
{
  result = qword_1EC7EE1E0;
  if (!qword_1EC7EE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE1E0);
  }

  return result;
}

unint64_t sub_1D5025A48()
{
  result = qword_1EC7EE250;
  if (!qword_1EC7EE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE250);
  }

  return result;
}

uint64_t sub_1D5025AE4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5025B30()
{
  result = qword_1EC7EE260;
  if (!qword_1EC7EE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE260);
  }

  return result;
}

unint64_t sub_1D5025B88()
{
  result = qword_1EC7EE268;
  if (!qword_1EC7EE268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE270, &qword_1D5629CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE268);
  }

  return result;
}

unint64_t sub_1D5025BF0()
{
  result = qword_1EC7EE278;
  if (!qword_1EC7EE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE278);
  }

  return result;
}

unsigned __int8 *_s4KindOwet_1(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 < 2)
    {
      v8 = 0;
    }

    if (v8 >= 0xC)
    {
      return (v8 - 11);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 13;
    if (a2 + 13 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 13);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s4KindOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 13;
  if (a3 + 13 >= 0xFFFF00)
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

  if (a3 >= 0xF3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF2)
  {
    v7 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5025E0C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = v1 - 2;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t _s4KindO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s4KindO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s4KindO19StreamingCodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1D5026108(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50261E8()
{
  result = qword_1EC7EE280;
  if (!qword_1EC7EE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE280);
  }

  return result;
}

unint64_t sub_1D5026240()
{
  result = qword_1EC7EE288;
  if (!qword_1EC7EE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE288);
  }

  return result;
}

unint64_t sub_1D5026298()
{
  result = qword_1EC7EE290;
  if (!qword_1EC7EE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE290);
  }

  return result;
}

unint64_t sub_1D50262F0()
{
  result = qword_1EC7EE298;
  if (!qword_1EC7EE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE298);
  }

  return result;
}

unint64_t sub_1D5026348()
{
  result = qword_1EC7EE2A0;
  if (!qword_1EC7EE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2A0);
  }

  return result;
}

unint64_t sub_1D50263A0()
{
  result = qword_1EC7EE2A8;
  if (!qword_1EC7EE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2A8);
  }

  return result;
}

unint64_t sub_1D50263F8()
{
  result = qword_1EC7EE2B0;
  if (!qword_1EC7EE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2B0);
  }

  return result;
}

unint64_t sub_1D5026450()
{
  result = qword_1EC7EE2B8;
  if (!qword_1EC7EE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2B8);
  }

  return result;
}

unint64_t sub_1D50264A8()
{
  result = qword_1EC7EE2C0;
  if (!qword_1EC7EE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2C0);
  }

  return result;
}

unint64_t sub_1D5026500()
{
  result = qword_1EC7EE2C8;
  if (!qword_1EC7EE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2C8);
  }

  return result;
}

unint64_t sub_1D5026558()
{
  result = qword_1EC7EE2D0;
  if (!qword_1EC7EE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2D0);
  }

  return result;
}

unint64_t sub_1D50265B0()
{
  result = qword_1EC7EE2D8;
  if (!qword_1EC7EE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2D8);
  }

  return result;
}

unint64_t sub_1D5026608()
{
  result = qword_1EC7EE2E0;
  if (!qword_1EC7EE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2E0);
  }

  return result;
}

unint64_t sub_1D5026660()
{
  result = qword_1EC7EE2E8;
  if (!qword_1EC7EE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2E8);
  }

  return result;
}

unint64_t sub_1D50266B8()
{
  result = qword_1EC7EE2F0;
  if (!qword_1EC7EE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2F0);
  }

  return result;
}

unint64_t sub_1D5026710()
{
  result = qword_1EC7EE2F8;
  if (!qword_1EC7EE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE2F8);
  }

  return result;
}

unint64_t sub_1D5026768()
{
  result = qword_1EC7EE300;
  if (!qword_1EC7EE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE300);
  }

  return result;
}

unint64_t sub_1D50267C0()
{
  result = qword_1EC7EE308;
  if (!qword_1EC7EE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE308);
  }

  return result;
}

unint64_t sub_1D5026818()
{
  result = qword_1EC7EE310;
  if (!qword_1EC7EE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE310);
  }

  return result;
}

unint64_t sub_1D5026870()
{
  result = qword_1EC7EE318;
  if (!qword_1EC7EE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE318);
  }

  return result;
}

unint64_t sub_1D50268C8()
{
  result = qword_1EC7EE320;
  if (!qword_1EC7EE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE320);
  }

  return result;
}

unint64_t sub_1D5026920()
{
  result = qword_1EC7EE328;
  if (!qword_1EC7EE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE328);
  }

  return result;
}

unint64_t sub_1D5026978()
{
  result = qword_1EC7EE330;
  if (!qword_1EC7EE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE330);
  }

  return result;
}

unint64_t sub_1D50269D0()
{
  result = qword_1EC7EE338;
  if (!qword_1EC7EE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE338);
  }

  return result;
}

unint64_t sub_1D5026A28()
{
  result = qword_1EC7EE340;
  if (!qword_1EC7EE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE340);
  }

  return result;
}

unint64_t sub_1D5026A80()
{
  result = qword_1EC7EE348;
  if (!qword_1EC7EE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE348);
  }

  return result;
}

unint64_t sub_1D5026AD8()
{
  result = qword_1EC7EE350;
  if (!qword_1EC7EE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE350);
  }

  return result;
}

unint64_t sub_1D5026B30()
{
  result = qword_1EC7EE358;
  if (!qword_1EC7EE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE358);
  }

  return result;
}

unint64_t sub_1D5026B88()
{
  result = qword_1EC7EE360;
  if (!qword_1EC7EE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE360);
  }

  return result;
}

unint64_t sub_1D5026BE0()
{
  result = qword_1EC7EE368;
  if (!qword_1EC7EE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE368);
  }

  return result;
}

unint64_t sub_1D5026C38()
{
  result = qword_1EC7EE370;
  if (!qword_1EC7EE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE370);
  }

  return result;
}

unint64_t sub_1D5026C8C()
{
  result = qword_1EC7EE378;
  if (!qword_1EC7EE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE378);
  }

  return result;
}

uint64_t MusicLibrary.MovePinAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D5026D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a5@<X8>)
{
  v31 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v30 - v16;
  v30[1] = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    *a5 = 1;
    return result;
  }

  v30[0] = a5;
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v12 + 8))(v14, v11);
  v19 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
  {
    sub_1D4E6C9CC(v17, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v20 = sub_1D560D488();
    v22 = v21;
    (*(*(v19 - 8) + 8))(v17, v19);
    if (v20 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_1D5616168();

      if ((v25 & 1) == 0)
      {
        v26 = 1;
        v27 = v30[0];
LABEL_19:
        *v27 = v26;
        return result;
      }
    }
  }

  (*(v31 + 16))(v10, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    result = sub_1D4E6C9CC(&v34, &qword_1EC7EC500, &unk_1D5621030);
LABEL_18:
    v27 = v30[0];
    v26 = 3;
    goto LABEL_19;
  }

  sub_1D4F69344(&v34, v37);
  v28 = v38;
  v29 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v29 + 16))(&v32, v28, v29);
  if (!v33)
  {
    sub_1D4E6C9CC(&v32, &qword_1EC7EC500, &unk_1D5621030);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    goto LABEL_18;
  }

  sub_1D4F69344(&v32, &v34);
  __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  sub_1D4F60168();
  if (v32)
  {
    *v30[0] = 4;
  }

  else
  {
    *v30[0] = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v34);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D5027198()
{
  result = qword_1EC7EE380;
  if (!qword_1EC7EE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE380);
  }

  return result;
}

_BYTE *_s13MovePinActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s13MovePinActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t VideoSupportedLocales.primary.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return sub_1D4F0A60C(v6, &v5);
}

uint64_t static VideoSupportedLocales.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v23[0] = *a1;
  v23[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v23[2] = a1[2];
  v24[0] = v5;
  v7 = a2[2];
  v9 = *a2;
  v8 = a2[1];
  v24[1] = v6;
  v24[2] = v7;
  v20 = v4;
  v21 = v3;
  v22 = a1[2];
  v10 = *(a1 + 6);
  v11 = *(a2 + 6);
  v17 = v9;
  v18 = v8;
  v19 = a2[2];
  sub_1D4F0A60C(v23, v26);
  sub_1D4F0A60C(v24, v26);
  static VideoLocale.== infix(_:_:)(&v20, &v17);
  v13 = v12;
  v25[0] = v17;
  v25[1] = v18;
  v25[2] = v19;
  sub_1D4F0A668(v25);
  v26[0] = v20;
  v26[1] = v21;
  v26[2] = v22;
  sub_1D4F0A668(v26);
  if (v13 & 1) != 0 && (sub_1D4EF9A90(v10, v11), (v14))
  {
    sub_1D4F286E0();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D50274C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697469646461 && a2 == 0xEA00000000006C61;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D50275E4(char a1)
{
  if (!a1)
  {
    return 0x7972616D697270;
  }

  if (a1 == 1)
  {
    return 0x6E6F697469646461;
  }

  return 0x65756C6156776172;
}

uint64_t sub_1D502764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50274C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5027674(uint64_t a1)
{
  v2 = sub_1D5027930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50276B0(uint64_t a1)
{
  v2 = sub_1D5027930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VideoSupportedLocales.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE388, &qword_1D562AA70);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = v1[1];
  v21 = *v1;
  v11 = v1[2];
  v22 = v10;
  v23 = v11;
  v12 = *(v1 + 7);
  v24 = *(v1 + 6);
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F0A60C(&v21, v20);
  sub_1D5027930();
  sub_1D56163D8();
  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  v19 = 0;
  sub_1D5027984();
  sub_1D56160C8();
  if (v2)
  {
    OUTLINED_FUNCTION_2_37();
  }

  else
  {
    v13 = v16;
    OUTLINED_FUNCTION_2_37();
    v18 = v24;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE3A0, &unk_1D562AA78);
    sub_1D5027E68(&qword_1EC7EE3A8, sub_1D5027984, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_0_54();
    v18 = v13;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_0_54();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1D5027930()
{
  result = qword_1EC7EE390;
  if (!qword_1EC7EE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE390);
  }

  return result;
}

unint64_t sub_1D5027984()
{
  result = qword_1EC7EE398;
  if (!qword_1EC7EE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE398);
  }

  return result;
}

void VideoSupportedLocales.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_35();
  v3 = *(v1 + 48);
  VideoLocale.hash(into:)(v4);
  sub_1D4F07C6C(a1, v3);

  sub_1D4F31AC0();
}

uint64_t VideoSupportedLocales.hashValue.getter()
{
  OUTLINED_FUNCTION_5_35();
  v1 = *(v0 + 48);
  sub_1D56162D8();
  VideoLocale.hash(into:)(v3);
  sub_1D4F07C6C(v3, v1);
  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t VideoSupportedLocales.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE3B0, &qword_1D562AA88);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5027930();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_1D5027E14();
  sub_1D5615FD8();
  v21 = v18;
  v22 = v19;
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE3A0, &unk_1D562AA78);
  LOBYTE(v14[0]) = 1;
  sub_1D5027E68(&qword_1EC7EE3C0, sub_1D5027E14, MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_3_43();
  sub_1D5615FD8();
  v13 = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v24 = 2;
  sub_1D4F31CF4();
  OUTLINED_FUNCTION_3_43();
  sub_1D5615FD8();
  v6 = OUTLINED_FUNCTION_1_51();
  v7(v6);
  v8 = v17;
  v9 = v22;
  v14[0] = v21;
  v14[1] = v22;
  v10 = v23;
  v14[2] = v23;
  *&v15 = v13;
  *(&v15 + 1) = v17;
  *a2 = v21;
  a2[1] = v9;
  v11 = v15;
  a2[2] = v10;
  a2[3] = v11;
  sub_1D5027EE0(v14, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_4_34();
  v16[6] = v13;
  v16[7] = v8;
  return sub_1D5000CD8(v16);
}

uint64_t sub_1D5027DD8(uint64_t a1)
{
  sub_1D56162D8();
  VideoSupportedLocales.hash(into:)(v2);
  return sub_1D5616328();
}

unint64_t sub_1D5027E14()
{
  result = qword_1EC7EE3B8;
  if (!qword_1EC7EE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3B8);
  }

  return result;
}

uint64_t sub_1D5027E68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE3A0, &unk_1D562AA78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5027F1C()
{
  result = qword_1EC7EE3C8;
  if (!qword_1EC7EE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3C8);
  }

  return result;
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

uint64_t sub_1D5027F84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1D5027FC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for VideoSupportedLocales.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5028104()
{
  result = qword_1EC7EE3D0;
  if (!qword_1EC7EE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3D0);
  }

  return result;
}

unint64_t sub_1D502815C()
{
  result = qword_1EC7EE3D8;
  if (!qword_1EC7EE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3D8);
  }

  return result;
}

unint64_t sub_1D50281B4()
{
  result = qword_1EC7EE3E0;
  if (!qword_1EC7EE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE3E0);
  }

  return result;
}

uint64_t Playlist.Folder.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v134 = a1;
  v117 = a4;
  v133 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v136 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE400, &qword_1D562ACD0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_3(&KeyPath - v12);
  v13 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v124 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v17 - v16);
  v132 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v131 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE408, &unk_1D56749E0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v135 = &KeyPath - v24;
  v127 = type metadata accessor for PlaylistFolderPropertyProvider(0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v121 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &KeyPath - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &KeyPath - v37;
  v114 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v113 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v43 = v42 - v41;

  v118 = a2;
  sub_1D560F7E8();
  sub_1D5614438();
  OUTLINED_FUNCTION_1_52();
  v128 = sub_1D5029B2C(v44, v45, MEMORY[0x1E69771F0]);
  v129 = sub_1D5614C68();

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v13);
  sub_1D560FF68();
  v125 = v13;
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v13);
  v130 = v43;
  v49 = v134;
  sub_1D560D4D8();
  sub_1D4E7661C(v35, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v38, &qword_1EC7EA358, &unk_1D561DF50);
  v119 = a3;
  sub_1D4EC76A8(a3, v137);
  if (!v138)
  {
    sub_1D4E7661C(v137, &qword_1EC7EEC40, &unk_1D561C070);
    v139 = 0u;
    v140 = 0u;
    v141 = 0;
LABEL_8:
    v50 = v127;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v141 = 0;
    v139 = 0u;
    v140 = 0u;
    goto LABEL_8;
  }

  v50 = v127;
  if (!*(&v140 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v139, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v139, &v142);
  __swift_project_boxed_opaque_existential_1(&v142, v143);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v51 = v135;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);
    v52 = v121;
    sub_1D5029A38(v51, v121);
    sub_1D5029978(v52, v30);
    v53 = v122;
    sub_1D560D718();
    (*(v131 + 40))(&v30[v50[12]], v53, v132);
    v54 = v123;
    sub_1D5612468();
    (*(v124 + 40))(&v30[v50[13]], v54, v125);
    v55 = sub_1D5612458();
    v57 = v56;
    sub_1D50299DC(v52);
    v58 = &v30[v50[14]];

    *v58 = v55;
    v58[1] = v57;
    __swift_destroy_boxed_opaque_existential_1(&v142);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v50);
  sub_1D4E7661C(v51, &qword_1EC7EE408, &unk_1D56749E0);
  __swift_destroy_boxed_opaque_existential_1(&v142);
LABEL_10:
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  v63 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  (*(v131 + 16))(&v30[v50[12]], v49, v132);
  sub_1D5612468();
  v78 = sub_1D5612458();
  v80 = v79;
  sub_1D5614A88();
  v135 = OUTLINED_FUNCTION_2_38();
  v125 = OUTLINED_FUNCTION_2_38();
  v81 = OUTLINED_FUNCTION_2_38();
  v82 = OUTLINED_FUNCTION_2_38();
  v83 = &v30[v50[7]];
  *v83 = 0;
  *(v83 + 1) = 0;
  v84 = &v30[v50[8]];
  *v84 = 0;
  *(v84 + 1) = 0;
  if (qword_1EC7E9808 != -1)
  {
    swift_once();
  }

  v85 = qword_1EC87C748;
  if (qword_1EC87C748 >> 62)
  {
    sub_1D560CDE8();

    v111 = sub_1D5615E18();

    v85 = v111;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v30[v50[11]] = v85;
  v86 = &v30[v50[14]];
  *v86 = v78;
  v86[1] = v80;
  *&v30[v50[15]] = v135;
  *&v30[v50[16]] = v125;
  *&v30[v50[17]] = v81;
  *&v30[v50[18]] = v82;
LABEL_15:
  v87 = v30;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_0();
  v122 = *(v88 + 104);
  v123 = v88 + 104;
  v89 = v115;
  v90 = OUTLINED_FUNCTION_15_30();
  v91(v90);
  OUTLINED_FUNCTION_3_44();
  LODWORD(v121) = *MEMORY[0x1E6976668];
  v92 = v136;
  v93 = *(v136 + 104);
  v135 = (v136 + 104);
  v94 = v116;
  v95 = v133;
  v93(v116);
  v120 = v93;
  v124 = sub_1D5029B2C(&qword_1EC7EE418, type metadata accessor for PlaylistFolderPropertyProvider, &unk_1D5674950);
  OUTLINED_FUNCTION_10_37();
  v126 = v87;
  sub_1D5610D68();

  v96 = *(v92 + 8);
  v136 = v92 + 8;
  v125 = v96;
  v96(v94, v95);
  sub_1D4E7661C(v89, &qword_1EC7EE400, &qword_1D562ACD0);
  swift_getKeyPath();
  v97 = OUTLINED_FUNCTION_15_30();
  v98 = v122;
  v122(v97);
  OUTLINED_FUNCTION_3_44();
  v99 = v121;
  (v93)(v94, v121, v95);
  OUTLINED_FUNCTION_10_37();
  sub_1D5610D68();

  v100 = v133;
  v125(v94, v133);
  sub_1D4E7661C(v89, &qword_1EC7EE400, &qword_1D562ACD0);
  KeyPath = swift_getKeyPath();
  v101 = OUTLINED_FUNCTION_15_30();
  v98(v101);
  OUTLINED_FUNCTION_3_44();
  v120(v94, v99, v100);
  v102 = v126;
  sub_1D5610D58();

  v103 = v125;
  v125(v94, v100);
  sub_1D4E7661C(v89, &qword_1EC7EE400, &qword_1D562ACD0);
  swift_getKeyPath();
  v104 = OUTLINED_FUNCTION_15_30();
  v122(v104);
  OUTLINED_FUNCTION_3_44();
  sub_1D560BD68();
  v120(v94, v121, v100);
  v105 = v124;
  sub_1D5610D88();

  v103(v94, v100);
  sub_1D4E7661C(v89, &qword_1EC7EE400, &qword_1D562ACD0);
  v143 = v127;
  v144 = v105;
  v106 = __swift_allocate_boxed_opaque_existential_0(&v142);
  sub_1D5029978(v102, v106);
  Playlist.Folder.init(propertyProvider:)(&v142, v117);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v119, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v131 + 8))(v134, v132);
  (*(v113 + 8))(v130, v114);
  return sub_1D50299DC(v102);
}

uint64_t Playlist.Folder.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v47 = v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v46 - v6;
  v8 = sub_1D5614438();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v50 = (v12 - v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v49 = v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v46 - v17;
  OUTLINED_FUNCTION_1_52();
  v46[1] = sub_1D5029B2C(v19, v20, MEMORY[0x1E6977200]);
  v21 = sub_1D5614BD8();
  v22 = *MEMORY[0x1E69771E0];
  v51 = v10;
  v52 = *(v10 + 104);
  v52(v18, v22, v8);
  if (qword_1EC7E8D00 != -1)
  {
    swift_once();
  }

  v23 = sub_1D56140F8();
  v24 = sub_1D5029B2C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  sub_1D5029B2C(&qword_1EC7EE420, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  v48 = v24;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v23);
  v53 = v0;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v7, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v56 = 0u;
    v57 = 0u;
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v26 + 8))(v7, v23);
    if (*(&v57 + 1))
    {
      OUTLINED_FUNCTION_12_33();
      OUTLINED_FUNCTION_4_35();
      sub_1D4F13A5C();
      v21 = v54;
      v27 = *(v51 + 8);
      v27(v18, v8);
      v28 = v47;
      goto LABEL_11;
    }
  }

  sub_1D4E7661C(&v56, &qword_1EC7E9F98, &qword_1D561C420);
  sub_1D4F0E1E0();
  if (v30)
  {
    v31 = v29;
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C8, &qword_1D561E288);
    sub_1D5615D78();
    v21 = v54;
    v27 = *(v51 + 8);
    v27((*(v54 + 48) + *(v51 + 72) * v31), v8);
    sub_1D4E519A8((*(v21 + 56) + 32 * v31), v55);
    sub_1D5615D98();
  }

  else
  {
    memset(v55, 0, sizeof(v55));
    v27 = *(v51 + 8);
  }

  v28 = v47;
  v27(v18, v8);
  sub_1D4E7661C(v55, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_11:
  v52(v49, *MEMORY[0x1E69771B8], v8);
  if (qword_1EC7E8D08 != -1)
  {
    swift_once();
  }

  v32 = sub_1D560C328();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v28, 1, v32) == 1)
  {
    sub_1D4E7661C(v28, &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D4F0E1E0();
    if (v34)
    {
      v35 = v33;
      swift_isUniquelyReferenced_nonNull_native();
      *&v55[0] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C8, &qword_1D561E288);
      v36 = v51;
      sub_1D5615D78();
      v37 = *&v55[0];
      v27((*(*&v55[0] + 48) + *(v36 + 72) * v35), v8);
      sub_1D4E519A8((*(v37 + 56) + 32 * v35), &v56);
      sub_1D5615D98();
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    v40 = OUTLINED_FUNCTION_11_36();
    (v27)(v40);
    sub_1D4E7661C(&v56, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    *(&v57 + 1) = v32;
    __swift_allocate_boxed_opaque_existential_0(&v56);
    OUTLINED_FUNCTION_24_0();
    (*(v38 + 32))();
    OUTLINED_FUNCTION_12_33();
    OUTLINED_FUNCTION_4_35();
    sub_1D4F13A5C();
    v39 = OUTLINED_FUNCTION_11_36();
    (v27)(v39);
  }

  v41 = v50;
  v52(v50, *MEMORY[0x1E69771D0], v8);
  v42 = Playlist.Folder.name.getter();
  *(&v57 + 1) = MEMORY[0x1E69E6158];
  *&v56 = v42;
  *(&v56 + 1) = v43;
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_4_35();
  sub_1D4F13A5C();
  v44 = v54;
  v27(v41, v8);
  return v44;
}

uint64_t sub_1D5029698()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EE3E8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE3E8);
  v2 = *MEMORY[0x1E6976808];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Folder.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EE3E8);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t Playlist.Folder.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976808];
  sub_1D5613158();
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D502983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5029B2C(&qword_1EC7EE430, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D50298F0(uint64_t a1, uint64_t a2)
{
  sub_1D5029B2C(&qword_1EC7EE428, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

  return sub_1D56132F8();
}

uint64_t sub_1D5029978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistFolderPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50299DC(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistFolderPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5029A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistFolderPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5029B2C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5029B74(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {

      v2 = OUTLINED_FUNCTION_159();
      sub_1D4EF6F54(v2, v3);
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5029BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B63617254706F74 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D5029C6C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE488, &qword_1D562B138);
  OUTLINED_FUNCTION_25_10();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D502AAFC();
  sub_1D56163D8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE498, &unk_1D562B140);
  sub_1D502AB94(&qword_1EC7EE4A0, &qword_1EC7EE4A8, MEMORY[0x1E6975D30], MEMORY[0x1E69E6300]);
  sub_1D5616068();
  return (*(v6 + 8))(v9, v2);
}

void sub_1D5029DE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D56162F8();
    v2 = OUTLINED_FUNCTION_159();

    sub_1D4F062CC(v2, v3);
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D5029E3C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D56162F8();
  if (a1)
  {
    sub_1D4F062CC(v3, a1);
  }

  return sub_1D5616328();
}

uint64_t sub_1D5029EA0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4B0, &qword_1D562B150);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(a1);
  v5 = sub_1D502AAFC();
  OUTLINED_FUNCTION_3_45(&type metadata for CloudTopPlayedSongsRawResponse.Results.CodingKeys, v6, v5);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE498, &unk_1D562B140);
    sub_1D502AB94(&qword_1EC7EE4B8, &qword_1EDD532A8, MEMORY[0x1E6975D48], MEMORY[0x1E69E6330]);
    sub_1D5615F78();
    v7 = OUTLINED_FUNCTION_2_39();
    v8(v7);
    v1 = v10;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1D502A01C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if (a2 != 1)
  {
    if (a1)
    {
      if (a2)
      {

        v4 = OUTLINED_FUNCTION_159();
        sub_1D4EF6F54(v4, v5);
        v7 = v6;
        sub_1D4EA7410(a2);
        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D502A098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D502A128(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE438, &qword_1D562AE10);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(a1);
  sub_1D502A244();
  sub_1D56163D8();
  sub_1D502A298();
  sub_1D5616068();
  v4 = OUTLINED_FUNCTION_2_39();
  return v5(v4);
}

unint64_t sub_1D502A244()
{
  result = qword_1EC7EE440;
  if (!qword_1EC7EE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE440);
  }

  return result;
}

unint64_t sub_1D502A298()
{
  result = qword_1EC7EE448;
  if (!qword_1EC7EE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE448);
  }

  return result;
}

void sub_1D502A2EC(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 || (sub_1D56162F8(), !a2))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    v3 = OUTLINED_FUNCTION_159();

    sub_1D4F062CC(v3, v4);
  }
}

uint64_t sub_1D502A354(uint64_t a1)
{
  sub_1D56162D8();
  if (a1 == 1 || (sub_1D56162F8(), !a1))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D4F062CC(v3, a1);
  }

  return sub_1D5616328();
}

uint64_t sub_1D502A3D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE450, &qword_1D562AE18);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_1(a1);
  v5 = sub_1D502A244();
  OUTLINED_FUNCTION_3_45(&type metadata for CloudTopPlayedSongsRawResponse.CodingKeys, v6, v5);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D502A500();
    sub_1D5615F78();
    v7 = OUTLINED_FUNCTION_2_39();
    v8(v7);
    v1 = v10;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

unint64_t sub_1D502A500()
{
  result = qword_1EC7EE458;
  if (!qword_1EC7EE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE458);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal30CloudTopPlayedSongsRawResponseV7ResultsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D502A588(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 8))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D502A5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D502A658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5029BD0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D502A684(uint64_t a1)
{
  v2 = sub_1D502AAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D502A6C0(uint64_t a1)
{
  v2 = sub_1D502AAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D502A6FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5029EA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D502A760(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v2)
  {
    sub_1D4F062CC(v4, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D502A7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D502A098(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D502A7F0(uint64_t a1)
{
  v2 = sub_1D502A244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D502A82C(uint64_t a1)
{
  v2 = sub_1D502A244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D502A86C()
{
  result = qword_1EC7EE460;
  if (!qword_1EC7EE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE460);
  }

  return result;
}

unint64_t sub_1D502A8C4()
{
  result = qword_1EC7EE468;
  if (!qword_1EC7EE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE468);
  }

  return result;
}

uint64_t sub_1D502A918@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D502A3D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D502A97C(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  if (v2 == 1 || (sub_1D56162F8(), !v2))
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D4F062CC(v4, v2);
  }

  return sub_1D5616328();
}

unint64_t sub_1D502A9F8()
{
  result = qword_1EC7EE470;
  if (!qword_1EC7EE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE470);
  }

  return result;
}

unint64_t sub_1D502AA50()
{
  result = qword_1EC7EE478;
  if (!qword_1EC7EE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE478);
  }

  return result;
}

unint64_t sub_1D502AAA8()
{
  result = qword_1EC7EE480;
  if (!qword_1EC7EE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE480);
  }

  return result;
}

unint64_t sub_1D502AAFC()
{
  result = qword_1EC7EE490;
  if (!qword_1EC7EE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE490);
  }

  return result;
}

uint64_t sub_1D502AB50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5614A18();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D502AB94(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE498, &unk_1D562B140);
    sub_1D502AC1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D502AC1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D502AB50(&qword_1EDD52A60, MEMORY[0x1E6977488]);
    sub_1D502AB50(&qword_1EDD52A68, MEMORY[0x1E6977470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1D502ACCC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D502AD7C()
{
  result = qword_1EC7EE4C0;
  if (!qword_1EC7EE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE4C0);
  }

  return result;
}

unint64_t sub_1D502ADD4()
{
  result = qword_1EC7EE4C8;
  if (!qword_1EC7EE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE4C8);
  }

  return result;
}

unint64_t sub_1D502AE2C()
{
  result = qword_1EC7EE4D0;
  if (!qword_1EC7EE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE4D0);
  }

  return result;
}

uint64_t MusicTopPlayedSongsRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for MusicTopPlayedSongsRequest(0);
  sub_1D560C318();
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v3 = *(v2 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_147();
  sub_1D5610088();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5621D90;
  sub_1D560FFA8();
  result = sub_1D560FE48();
  *(a1 + v3) = v4;
  return result;
}

uint64_t type metadata accessor for MusicTopPlayedSongsRequest(uint64_t a1)
{
  result = qword_1EC7EE4E0;
  if (!qword_1EC7EE4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicTopPlayedSongsRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1D502B01C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560C3C8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D560C3D8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - v17;
  sub_1D560C3B8();
  (*(v4 + 104))(v8, *MEMORY[0x1E6969A78], v2);
  type metadata accessor for MusicTopPlayedSongsRequest(0);
  sub_1D560C3A8();
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  v19 = sub_1D560C328();
  OUTLINED_FUNCTION_10(v18);
  if (!v20)
  {
    return (*(*(v19 - 8) + 32))(a1, v18, v19);
  }

  sub_1D4E50004(v18, &qword_1EC7EA3B8, &unk_1D561E370);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicTopPlayedSongsRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  type metadata accessor for MusicTopPlayedSongsRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v8 = type metadata accessor for MusicRequestConfiguration(0);
  v9 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v9 ^ 1u, 1, v8);
  sub_1D4F73F78(v7, v5);
  OUTLINED_FUNCTION_10(v5);
  if (v10)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    OUTLINED_FUNCTION_10(v5);
    if (!v10)
    {
      sub_1D4E50004(v5, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D502E8BC(v5, a1);
  }

  return sub_1D4E50004(v7, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D502B444(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D502E918(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicTopPlayedSongsRequest.configuration.setter();
}

uint64_t MusicTopPlayedSongsRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_1_53();
  sub_1D502E9C8(v8, v9, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_8_36();
  sub_1D4E58510(v0, v10);
  v11 = type metadata accessor for MusicTopPlayedSongsRequest(0);
  return (*(v3 + 40))(v0 + *(v11 + 24), v7, v1);
}

void (*MusicTopPlayedSongsRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v6;
  v7 = *(*(v6 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[6] = v8;
  MusicTopPlayedSongsRequest.configuration.getter(v8);
  return sub_1D502B6EC;
}

void sub_1D502B6EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D502E918(*(*a1 + 48), v3);
    OUTLINED_FUNCTION_1_53();
    sub_1D502E9C8(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4E58510(v3, type metadata accessor for MusicRequestConfiguration);
    v8 = type metadata accessor for MusicTopPlayedSongsRequest(0);
    v9 = OUTLINED_FUNCTION_20_6(v8);
    v10(v9);
    sub_1D4E58510(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    sub_1D502E9C8(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_8_36();
    sub_1D4E58510(v4, v13);
    v14 = type metadata accessor for MusicTopPlayedSongsRequest(0);
    v15 = OUTLINED_FUNCTION_20_6(v14);
    v16(v15);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicTopPlayedSongsRequest.response()()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *(type metadata accessor for MusicTopPlayedSongsRequest(0) + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1D4E6ED20;

  return sub_1D502B900(v3, v0 + v4);
}

uint64_t sub_1D502B900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MusicTopPlayedSongsResponse(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_1D560D478();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v5 = swift_task_alloc();
  v3[10] = v5;
  type metadata accessor for MusicTopPlayedSongsRequest(0);
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_1D502BA5C;

  return MEMORY[0x1EEDCE268](v5);
}

uint64_t sub_1D502BA5C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D502BB54()
{
  OUTLINED_FUNCTION_60();
  if (sub_1D560D438())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[13] = v1;
    *v1 = v2;
    v1[1] = sub_1D502BCD4;
    v3 = v0[7];

    return sub_1D502C430(v3);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[15] = v5;
    *v5 = v6;
    v5[1] = sub_1D502BDCC;
    v7 = v0[6];

    return sub_1D502DFDC(v7);
  }
}

uint64_t sub_1D502BC5C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D502BCD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D502BDCC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D502BEC4()
{
  OUTLINED_FUNCTION_91();
  sub_1D560CD48();
  if (sub_1D560E698())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v1[17] = v3;
    *v3 = v4;
    v3[1] = sub_1D502C084;
    v5 = v1[7];
    v6 = v1[5];

    return sub_1D502DA54(v6, v5);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_29();
    v9(v8);
    OUTLINED_FUNCTION_0_55();
    sub_1D502E8BC(v0, v2);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D502BFF4()
{
  OUTLINED_FUNCTION_80();
  (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D502C084()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D502C17C()
{
  OUTLINED_FUNCTION_91();
  sub_1D4E58510(v0[7], type metadata accessor for MusicTopPlayedSongsResponse);
  v1 = v0[5];
  v2 = v0[2];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1D502E8BC(v1, v2);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D502C250()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1D4E58510(v0[7], type metadata accessor for MusicTopPlayedSongsResponse);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D502C300()
{
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_17_29();
  v3(v2);
  OUTLINED_FUNCTION_0_55();
  sub_1D502E8BC(v0, v1);

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D502C3A0()
{
  OUTLINED_FUNCTION_80();
  (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_15_31();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D502C430(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  *(v2 + 48) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  v4 = sub_1D560D428();
  *(v2 + 80) = v4;
  *(v2 + 88) = *(v4 - 8);
  *(v2 + 96) = swift_task_alloc();
  v5 = sub_1D560CD48();
  *(v2 + 104) = v5;
  *(v2 + 112) = *(v5 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v6 = sub_1D560D348();
  *(v2 + 136) = v6;
  *(v2 + 144) = *(v6 - 8);
  *(v2 + 152) = swift_task_alloc();
  v7 = sub_1D560D388();
  *(v2 + 160) = v7;
  *(v2 + 168) = *(v7 - 8);
  *(v2 + 176) = swift_task_alloc();
  v8 = sub_1D560EBD8();
  *(v2 + 184) = v8;
  *(v2 + 192) = *(v8 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v9 = sub_1D5610788();
  *(v2 + 216) = v9;
  *(v2 + 224) = *(v9 - 8);
  *(v2 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  *(v2 + 240) = swift_task_alloc();
  v10 = sub_1D56107C8();
  *(v2 + 248) = v10;
  *(v2 + 256) = *(v10 - 8);
  *(v2 + 264) = swift_task_alloc();
  v11 = sub_1D560BB98();
  *(v2 + 272) = v11;
  *(v2 + 280) = *(v11 - 8);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  v12 = type metadata accessor for MusicTopPlayedSongsRequest(0);
  *(v2 + 344) = v12;
  *(v2 + 408) = *(v12 + 24);
  v13 = swift_task_alloc();
  *(v2 + 352) = v13;
  *v13 = v2;
  v13[1] = sub_1D502C8F4;

  return MEMORY[0x1EEDCE260]();
}

uint64_t sub_1D502C8F4()
{
  OUTLINED_FUNCTION_59_1();
  *(v3 + 360) = v1;
  *(v3 + 368) = v2;

  if (v0)
  {

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_20_7();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_20_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D502CB18()
{
  if (*(v0 + 368))
  {
    v2 = *(v0 + 328);
    v1 = *(v0 + 336);
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    sub_1D560BB28();

    (*(v4 + 16))(v2, v1, v3);
    sub_1D4EFFE00();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7 >= *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_36();
      v6 = v59;
    }

    v8 = *(v0 + 328);
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    (*(v10 + 8))(*(v0 + 336), v9);
    *(v6 + 16) = v7 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7, v8, v9);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1D560BB68();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4EFFE00();
    v6 = v54;
  }

  v11 = *(v6 + 16);
  if (v11 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v6 = v55;
  }

  v12 = *(v0 + 320);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  v15 = *(v0 + 40);
  *(v6 + 16) = v11 + 1;
  v16 = *(v14 + 32);
  v14 += 32;
  v17 = (*(v14 + 48) + 32) & ~*(v14 + 48);
  v76 = *(v14 + 40);
  v77 = v16;
  v16(v6 + v17 + v76 * v11, v12, v13);
  v74 = v17;
  if ((*(v15 + 8) & 1) == 0)
  {
    *(v0 + 24) = **(v0 + 40);
    sub_1D56160F8();
    sub_1D560BB28();

    v18 = *(v6 + 16);
    if (v18 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_36();
      v6 = v60;
    }

    v19 = *(v0 + 312);
    v20 = *(v0 + 272);
    *(v6 + 16) = v18 + 1;
    v77(v6 + v17 + v18 * v76, v19, v20);
  }

  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v23 = *(v0 + 240);
  v72 = *(v0 + 248);
  v24 = *(v0 + 224);
  v25 = *(v0 + 232);
  v26 = *(v0 + 216);
  sub_1D56107A8();
  sub_1D502B01C(v23);
  v70 = sub_1D560C328();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v70);
  v68 = *MEMORY[0x1E6975DC8];
  v65 = *(v24 + 104);
  v65(v25);
  sub_1D56107B8();
  v64 = *(v24 + 8);
  v64(v25, v26);
  sub_1D4E50004(v23, &qword_1EC7EA3B8, &unk_1D561E370);
  v63 = *(v21 + 8);
  v63(v22, v72);
  sub_1D560BB28();

  v27 = *(v6 + 16);
  if (v27 >= *(v6 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v6 = v56;
  }

  v28 = *(v0 + 344);
  v29 = *(v0 + 304);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v32 = *(v0 + 240);
  v62 = *(v0 + 248);
  v33 = *(v0 + 232);
  v34 = *(v0 + 216);
  v35 = *(v0 + 40);
  *(v6 + 16) = v27 + 1;
  v77(v6 + v74 + v27 * v76, v29, v30);
  sub_1D56107A8();
  (*(*(v70 - 8) + 16))(v32, v35 + *(v28 + 20), v70);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v70);
  (v65)(v33, v68, v34);
  sub_1D56107B8();
  v64(v33, v34);
  sub_1D4E50004(v32, &qword_1EC7EA3B8, &unk_1D561E370);
  v63(v31, v62);
  sub_1D560BB28();

  v36 = *(v6 + 16);
  if (v36 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v6 = v57;
  }

  v37 = *(v0 + 296);
  v38 = *(v0 + 272);
  *(v6 + 16) = v36 + 1;
  v77(v6 + v74 + v36 * v76, v37, v38);
  sub_1D560BB88();
  v39 = *(v6 + 16);
  v40 = v39 + 1;
  if (v39 >= *(v6 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v40 = v39 + 1;
    v6 = v58;
  }

  v41 = *(v0 + 288);
  v42 = *(v0 + 272);
  v43 = *(v0 + 208);
  v66 = *(v0 + 408);
  v67 = *(v0 + 200);
  v44 = *(v0 + 192);
  v45 = *(v0 + 144);
  v46 = *(v0 + 152);
  v69 = *(v0 + 184);
  v71 = *(v0 + 136);
  v73 = *(v0 + 128);
  v47 = v6 + v74;
  v49 = *(v0 + 104);
  v48 = *(v0 + 112);
  v75 = *(v0 + 40);
  *(v6 + 16) = v40;
  v77(v47 + v39 * v76, v41, v42);
  sub_1D560EB78();

  (*(v44 + 16))(v67, v43, v69);
  (*(v45 + 104))(v46, *MEMORY[0x1E6974E78], v71);
  sub_1D560D368();
  v50 = *(v48 + 16);
  *(v0 + 376) = v50;
  *(v0 + 384) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v73, v75 + v66, v49);
  sub_1D560D2B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 392) = v51;
  *v51 = v52;
  v51[1] = sub_1D502D254;
  v53 = *(v0 + 96);

  return MEMORY[0x1EEDCE5B0](v53);
}

uint64_t sub_1D502D254()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D502D34C()
{
  v43 = *(v0 + 400);
  v1 = *(v0 + 376);
  v2 = *(v0 + 408);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 40);
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  v1(v3, v5 + v2, v4);
  sub_1D560B988();
  sub_1D5612208();
  swift_allocObject();
  sub_1D56121F8();

  sub_1D560B968();
  v6 = sub_1D560D418();
  v8 = v7;
  sub_1D502E974();
  sub_1D560B948();
  if (v43)
  {
    v42 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = *(v0 + 168);
    v40 = *(v0 + 176);
    v41 = *(v0 + 184);
    v39 = *(v0 + 160);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    sub_1D4E55E1C(v6, v8);

    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v40, v39);
    (*(v9 + 8))(v42, v41);

    OUTLINED_FUNCTION_55();
  }

  else
  {
    v15 = *(v0 + 376);
    v16 = *(v0 + 408);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    v19 = *(v0 + 40);
    sub_1D4E55E1C(v6, v8);
    v20 = *(v0 + 16);
    v15(v17, v19 + v16, v18);
    if (!v20)
    {
      sub_1D4EA7410(0);
    }

    v38 = *(v0 + 208);
    v36 = *(v0 + 192);
    v37 = *(v0 + 184);
    v31 = *(v0 + 168);
    v34 = *(v0 + 160);
    v35 = *(v0 + 176);
    v21 = *(v0 + 112);
    v29 = *(v0 + 120);
    v30 = *(v0 + 104);
    v22 = *(v0 + 88);
    v32 = *(v0 + 80);
    v33 = *(v0 + 96);
    v28 = *(v0 + 72);
    v23 = *(v0 + 56);
    v24 = *(v0 + 64);
    v25 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D56123A8();
    v26 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
    sub_1D5613838();
    sub_1D502E9C8(&qword_1EC7ECE40, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BC0]);
    sub_1D5612368();

    sub_1D4E50004(v25, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v24 + 8))(v28, v23);
    (*(v21 + 8))(v29, v30);
    (*(v22 + 8))(v33, v32);
    (*(v31 + 8))(v35, v34);
    (*(v36 + 8))(v38, v37);

    OUTLINED_FUNCTION_22_1();
  }

  return v14();
}

void sub_1D502D8CC()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_20_7();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D502DA54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D560DF28();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1D560DF38();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D502DBDC, 0, 0);
}

uint64_t sub_1D502DBDC()
{
  OUTLINED_FUNCTION_80();
  type metadata accessor for MusicTopPlayedSongsRequest(0);
  if (sub_1D560CD38())
  {
    v1 = v0[7];
    v2 = v0[5];
    v3 = v0[6];
    (*(v0[9] + 104))(v0[10], *MEMORY[0x1E6975108], v0[8]);
    (*(v3 + 104))(v1, *MEMORY[0x1E6975110], v2);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[14] = v4;
    *v4 = v5;
    v4[1] = sub_1D502DD38;
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[7];

    return MEMORY[0x1EEDCE928](v6, v7, v9, v8);
  }

  else
  {
    OUTLINED_FUNCTION_0_55();
    sub_1D502E918(v10, v11);
    OUTLINED_FUNCTION_20_37();

    OUTLINED_FUNCTION_22_1();

    return v12();
  }
}

uint64_t sub_1D502DD38()
{
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  v10 = v4[5];
  v11 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;
  *(v13 + 120) = v0;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D502DEF4()
{
  OUTLINED_FUNCTION_60();
  (*(v0[12] + 32))(v0[2], v0[13], v0[11]);
  OUTLINED_FUNCTION_20_37();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D502DF74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_20_37();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D502DFDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE508, &unk_1D562B330);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE510, &qword_1D5648570);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D502E110, 0, 0);
}

uint64_t sub_1D502E110()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[3];
  sub_1D5613838();
  sub_1D560DD68();
  swift_getKeyPath();
  sub_1D560DCC8();

  if ((*(v1 + 8) & 1) == 0)
  {
    sub_1D560DCD8();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[10] = v2;
  *v2 = v3;
  v2[1] = sub_1D502E210;
  v4 = v0[6];
  v5 = v0[7];

  return MEMORY[0x1EEDCEAC0](v4, v5);
}

uint64_t sub_1D502E210()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D502E308()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D560DE38();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_22_1();

  return v7();
}

uint64_t sub_1D502E3C0()
{
  OUTLINED_FUNCTION_60();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D502E440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D56128F8();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void static MusicTopPlayedSongsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return;
    }

    goto LABEL_7;
  }

  if (*a1 != *a2)
  {
    v2 = 1;
  }

  if ((v2 & 1) == 0)
  {
LABEL_7:
    type metadata accessor for MusicTopPlayedSongsRequest(0);
    if (sub_1D560C2E8() & 1) != 0 && (_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0())
    {

      sub_1D4EFBC40();
    }
  }
}

void MusicTopPlayedSongsRequest.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v1 = *v0;
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v1);
  }

  type metadata accessor for MusicTopPlayedSongsRequest(0);
  sub_1D560C328();
  v2 = sub_1D502E9C8(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  OUTLINED_FUNCTION_22_2(v2);
  sub_1D560CD48();
  v3 = sub_1D502E9C8(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  OUTLINED_FUNCTION_22_2(v3);

  sub_1D4F09A38();
}

uint64_t MusicTopPlayedSongsRequest.hashValue.getter()
{
  sub_1D56162D8();
  MusicTopPlayedSongsRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D502E6B4(uint64_t a1)
{
  sub_1D56162D8();
  MusicTopPlayedSongsRequest.hash(into:)();
  return sub_1D5616328();
}

void sub_1D502E760(uint64_t a1)
{
  sub_1D502E814();
  if (v1 <= 0x3F)
  {
    sub_1D560C328();
    if (v2 <= 0x3F)
    {
      sub_1D560CD48();
      if (v3 <= 0x3F)
      {
        sub_1D502E864(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D502E814()
{
  if (!qword_1EDD52708)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52708);
    }
  }
}

void sub_1D502E864(uint64_t a1)
{
  if (!qword_1EC7EE4F0)
  {
    sub_1D5610088();
    v1 = sub_1D56152D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EE4F0);
    }
  }
}

uint64_t sub_1D502E8BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1D502E918(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_1D502E974()
{
  result = qword_1EC7EE500;
  if (!qword_1EC7EE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE500);
  }

  return result;
}

uint64_t sub_1D502E9C8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_37()
{
}

uint64_t MusicLibrary.InternalError.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D502EAE0()
{
  result = qword_1EC7EE518;
  if (!qword_1EC7EE518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE520, &qword_1D562B3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE518);
  }

  return result;
}

unint64_t sub_1D502EB48()
{
  result = qword_1EC7EE528;
  if (!qword_1EC7EE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE528);
  }

  return result;
}

_BYTE *_s13InternalErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D502EC78(char a1)
{
  v2 = 0xEE00797261726269;
  v3 = 0x4C6465726168732ELL;
  switch(a1)
  {
    case 1:
      v3 = 0xD000000000000015;
      v6 = ".cloudLibraryRequired";
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_1_54();
      v3 = v7 + 5;
      break;
    case 3:
      OUTLINED_FUNCTION_1_54();
      v3 = v5 + 7;
      break;
    case 4:
      OUTLINED_FUNCTION_1_54();
      v3 = v8 - 2;
      break;
    case 5:
      OUTLINED_FUNCTION_1_54();
      v3 = v9 + 14;
      break;
    case 6:
      v3 = 0xD000000000000015;
      v6 = ".subscriptionRequired";
LABEL_7:
      v2 = (v6 - 32) | 0x8000000000000000;
      break;
    case 7:
      break;
    case 8:
      v2 = 0xE800000000000000;
      v3 = 0x6E776F6E6B6E752ELL;
      break;
    default:
      OUTLINED_FUNCTION_1_54();
      v3 = v4 | 8;
      break;
  }

  MEMORY[0x1DA6EAC70](v3, v2);
}

uint64_t sub_1D502EDA0(char a1)
{
  v2 = 0xE500000000000000;
  v3 = 0x676E6F732ELL;
  switch(a1)
  {
    case 1:
      v2 = 0xEB000000006F6564;
      v3 = 0x6956636973756D2ELL;
      break;
    case 2:
      v4 = 0x6F6964754164;
      goto LABEL_5;
    case 3:
      v4 = 0x6F6564695664;
LABEL_5:
      v2 = v4 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      v3 = 0x6564616F6C70752ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1DA6EAC70](v3, v2);
}

uint64_t sub_1D502EE60(char a1)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E6F68702ELL;
  switch(a1)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1684107310;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1667329326;
      break;
    case 3:
      v2 = 0xE300000000000000;
      v3 = 7762990;
      break;
    case 4:
      v3 = 0x68637461772ELL;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6E6F697369762ELL;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3 = 0x79616C507261632ELL;
      break;
    default:
      break;
  }

  MEMORY[0x1DA6EAC70](v3, v2);
}

BOOL static MusicRequestConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v108 = sub_1D560D478();
  OUTLINED_FUNCTION_4();
  v105 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v104 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v107 = v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE530, &qword_1D566E620);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v109 = v12;
  sub_1D560C418();
  OUTLINED_FUNCTION_4();
  v112 = v14;
  v113 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v110 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v111 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE540, &qword_1D562B498);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v24 = *a1;
  v23 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *a2;
  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  if (v25 == 255)
  {
    v103 = v22;
    sub_1D4EF2264(v24, v23, 255);
    if (v28 == 255)
    {
      sub_1D4EF2264(v26, v27, 255);
      sub_1D4EF2278(v24, v23, 255);
      goto LABEL_10;
    }

    v42 = OUTLINED_FUNCTION_14_31();
    sub_1D4EF2264(v42, v43, v44);
LABEL_8:
    v54 = OUTLINED_FUNCTION_3_46();
    sub_1D4EF2278(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_14_31();
    sub_1D4EF2278(v57, v58, v59);
    return 0;
  }

  v120[0] = *a1;
  v120[1] = v23;
  LOBYTE(v120[2]) = v25;
  if (v28 == 255)
  {
    v45 = OUTLINED_FUNCTION_3_46();
    sub_1D4EF2264(v45, v46, v47);
    sub_1D4EF2264(v26, v27, 255);
    v48 = OUTLINED_FUNCTION_3_46();
    sub_1D4EF2264(v48, v49, v50);
    v51 = OUTLINED_FUNCTION_3_46();
    sub_1D4E58768(v51, v52, v53);
    goto LABEL_8;
  }

  v103 = v22;
  __dst[0] = v26;
  __dst[1] = v27;
  LOBYTE(__dst[2]) = v28;
  v29 = OUTLINED_FUNCTION_3_46();
  sub_1D4EF2264(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_14_31();
  sub_1D4EF2264(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_3_46();
  sub_1D4EF2264(v35, v36, v37);
  v38 = static Account.== infix(_:_:)(v120, __dst);
  sub_1D4E58768(__dst[0], __dst[1], __dst[2]);
  sub_1D4E58768(v120[0], v120[1], v120[2]);
  v39 = OUTLINED_FUNCTION_3_46();
  sub_1D4EF2278(v39, v40, v41);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (*(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  memcpy(v117, (a1 + 24), sizeof(v117));
  memcpy(v116, (a1 + 24), sizeof(v116));
  memcpy(v118, (a2 + 24), sizeof(v118));
  memcpy(v115, (a2 + 24), sizeof(v115));
  v60 = static ClientInfo.== infix(_:_:)(v116);
  memcpy(__dst, v115, sizeof(__dst));
  sub_1D4E55DC0(v117, v114);
  sub_1D4E55DC0(v118, v114);
  sub_1D4E4AA8C(__dst);
  memcpy(v120, v116, 0x48uLL);
  sub_1D4E4AA8C(v120);
  if ((v60 & 1) == 0 || *(a1 + 96) != *(a2 + 96) || *(a1 + 97) != *(a2 + 97))
  {
    return 0;
  }

  v62 = *(a1 + 104);
  v63 = *(a2 + 104);
  if (v62)
  {
    if (!v63)
    {
      return 0;
    }

    sub_1D4EFBF08(v62, v63, v64);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  v67 = *(a1 + 112);
  v68 = *(a2 + 112);
  if (v67)
  {
    if (!v68)
    {
      return 0;
    }

    sub_1D4EFBF08(v67, v68, v69);
    v71 = v70;

    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v72 = type metadata accessor for MusicRequestConfiguration(0);
  v73 = v72[11];
  v74 = *(v20 + 48);
  OUTLINED_FUNCTION_31_20(a1 + v73, v103);
  OUTLINED_FUNCTION_31_20(a2 + v73, v103 + v74);
  OUTLINED_FUNCTION_57(v103, 1, v113);
  if (v75)
  {
    OUTLINED_FUNCTION_57(v103 + v74, 1, v113);
    if (v75)
    {
      sub_1D4E50004(v103, &qword_1EC7EE538, &qword_1D562B490);
      goto LABEL_36;
    }

LABEL_33:
    v76 = &qword_1EC7EE540;
    v77 = &qword_1D562B498;
    v78 = v103;
LABEL_34:
    sub_1D4E50004(v78, v76, v77);
    return 0;
  }

  sub_1D4E69970(v103, v111, &qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_57(v103 + v74, 1, v113);
  if (v75)
  {
    (*(v112 + 8))(v111, v113);
    goto LABEL_33;
  }

  (*(v112 + 32))(v110, v103 + v74, v113);
  OUTLINED_FUNCTION_6_39();
  sub_1D5031ED4(v79, v80, MEMORY[0x1E6969BD8]);
  v81 = sub_1D5614D18();
  v82 = *(v112 + 8);
  v82(v110, v113);
  v82(v111, v113);
  sub_1D4E50004(v103, &qword_1EC7EE538, &qword_1D562B490);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (*(a1 + v72[12]) != *(a2 + v72[12]) || *(a1 + v72[13]) != *(a2 + v72[13]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_23();
  if (v83)
  {
    if (!v84)
    {
      return 0;
    }

    v87 = *v85 == *v86 && v83 == v84;
    if (!v87 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_23();
  if (v88)
  {
    if (!v89)
    {
      return 0;
    }

    v92 = *v90 == *v91 && v88 == v89;
    if (!v92 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  v93 = v72[16];
  v94 = *(v106 + 48);
  OUTLINED_FUNCTION_31_20(a1 + v93, v109);
  OUTLINED_FUNCTION_31_20(a2 + v93, v109 + v94);
  OUTLINED_FUNCTION_57(v109, 1, v108);
  if (v75)
  {
    OUTLINED_FUNCTION_57(v109 + v94, 1, v108);
    if (v75)
    {
      sub_1D4E50004(v109, &qword_1EC7ECC98, &qword_1D5622EB0);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  sub_1D4E69970(v109, v107, &qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_57(v109 + v94, 1, v108);
  if (v95)
  {
    (*(v105 + 8))(v107, v108);
LABEL_64:
    v76 = &qword_1EC7EE530;
    v77 = &qword_1D566E620;
    v78 = v109;
    goto LABEL_34;
  }

  (*(v105 + 32))(v104, v109 + v94, v108);
  OUTLINED_FUNCTION_5_37();
  sub_1D5031ED4(v96, v97, MEMORY[0x1E6974F10]);
  v98 = sub_1D5614D18();
  v99 = *(v105 + 8);
  v99(v104, v108);
  v99(v107, v108);
  sub_1D4E50004(v109, &qword_1EC7ECC98, &qword_1D5622EB0);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  v100 = v72[17];
  v101 = *(a1 + v100);
  v102 = *(a2 + v100);
  if (v101 == 7)
  {
    return v102 == 7;
  }

  return v101 == v102;
}

uint64_t MusicRequestConfiguration.account.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D4EF2264(v2, v3, v4);
}

uint64_t MusicRequestConfiguration.account.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1D4EF2278(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t MusicRequestConfiguration.enabledFeatureFlags.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t MusicRequestConfiguration.disabledFeatureFlags.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t MusicRequestConfiguration.preferredTimeZone.setter()
{
  v2 = OUTLINED_FUNCTION_64_1();
  v3 = v1 + *(type metadata accessor for MusicRequestConfiguration(v2) + 44);

  return sub_1D5031B54(v0, v3);
}

uint64_t MusicRequestConfiguration.preferredTimeZone.modify()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicRequestConfiguration(v0);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.specificCountryCode.getter()
{
  type metadata accessor for MusicRequestConfiguration(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicRequestConfiguration.specificCountryCode.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for MusicRequestConfiguration(0) + 56));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MusicRequestConfiguration.specificCountryCode.modify()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicRequestConfiguration(v0);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.specificLibraryDatabaseID.getter()
{
  type metadata accessor for MusicRequestConfiguration(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicRequestConfiguration.specificLibraryDatabaseID.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for MusicRequestConfiguration(0) + 60));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MusicRequestConfiguration.specificLibraryDatabaseID.modify()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicRequestConfiguration(v0);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.specificUserInterfaceIdiom.getter()
{
  result = OUTLINED_FUNCTION_30_15();
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t MusicRequestConfiguration.specificUserInterfaceIdiom.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MusicRequestConfiguration(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t MusicRequestConfiguration.specificUserInterfaceIdiom.modify()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicRequestConfiguration(v0);
  return OUTLINED_FUNCTION_22_3();
}

uint64_t MusicRequestConfiguration.replacing(account:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  result = sub_1D4F5A490(v3, a3);
  v13 = *(v3 + 16);
  if (v13 != 255)
  {
    v14 = *v4;
    v15 = v4[1];
    v18[0] = v14;
    v18[1] = v15;
    v19 = v13;
    v16[0] = v6;
    v16[1] = v7;
    v17 = v8;
    sub_1D4E58128(v14, v15, v13);
    if (static Account.== infix(_:_:)(v18, v16))
    {
      sub_1D4EF2278(v14, v15, v13);
      sub_1D4E58128(v9, v10, v11);
      v14 = v9;
      v15 = v10;
      LOBYTE(v13) = v11;
    }

    result = sub_1D4EF2278(*a3, *(a3 + 8), *(a3 + 16));
    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 16) = v13;
  }

  return result;
}

uint64_t MusicRequestConfiguration.hash(into:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_64_1();
  v49 = sub_1D560D478();
  OUTLINED_FUNCTION_4();
  v46 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v45 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v48 = v9;
  v47 = sub_1D560C418();
  OUTLINED_FUNCTION_4();
  v44 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v43 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = *(v1 + 16);
  if (v18 == 255)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v20 = *(v1 + 8);
    v50 = *v1;
    v19 = v50;
    v51 = v20;
    v52 = v18;
    OUTLINED_FUNCTION_27();
    sub_1D4E58128(v19, v20, v18);
    Account.hash(into:)();
    sub_1D4E58768(v50, v51, v52);
  }

  MEMORY[0x1DA6EC0D0](*(v1 + 17));
  v21 = *(v1 + 88);
  sub_1D5614E28();
  OUTLINED_FUNCTION_71();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  if (v21)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0B2F0();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v22 = v47;
  sub_1D56162F8();
  sub_1D56162F8();
  v23 = *(v1 + 104);
  if (v23)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0A040(v0, v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v25 = *(v1 + 112);
  if (v25)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0A040(v0, v25, v26);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v27 = type metadata accessor for MusicRequestConfiguration(0);
  sub_1D4E69970(v1 + v27[11], v17, &qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_57(v17, 1, v22);
  if (v28)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v30 = v43;
    v29 = v44;
    (*(v44 + 32))(v43, v17, v22);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6_39();
    v33 = sub_1D5031ED4(v31, v32, MEMORY[0x1E6969BD0]);
    OUTLINED_FUNCTION_28_5(v33);
    (*(v29 + 8))(v30, v22);
  }

  MEMORY[0x1DA6EC0D0](*(v1 + v27[12]));
  sub_1D56162F8();
  if (*(v1 + v27[14] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v27[15] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v34 = v48;
  sub_1D4E69970(v2 + v27[16], v48, &qword_1EC7ECC98, &qword_1D5622EB0);
  v35 = v49;
  OUTLINED_FUNCTION_57(v34, 1, v49);
  if (v28)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v37 = v45;
    v36 = v46;
    (*(v46 + 32))(v45, v34, v35);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_5_37();
    v40 = sub_1D5031ED4(v38, v39, MEMORY[0x1E6974F08]);
    OUTLINED_FUNCTION_28_5(v40);
    (*(v36 + 8))(v37, v35);
  }

  v41 = *(v2 + v27[17]);
  if (v41 == 7)
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  return MEMORY[0x1DA6EC0D0](v41);
}

uint64_t MusicRequestConfiguration.hashValue.getter()
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503020C(uint64_t a1)
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicRequestConfiguration.init(account:performAutomaticLibraryMapping:specificCountryCode:specificUserInterfaceIdiom:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = *a1;
  v47 = a1[1];
  v48 = v25;
  v46 = *(a1 + 16);
  v49 = *a5;
  v26 = [objc_opt_self() activeAccount];
  OUTLINED_FUNCTION_64_1();
  type metadata accessor for Account.UserIdentityWrapper();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *a6 = v27;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  static ClientInfo.default.getter(a6 + 24);
  *(a6 + 96) = 257;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  sub_1D560C418();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  *(a6 + v20[12]) = 0;
  *(a6 + v20[13]) = 1;
  v32 = (a6 + v20[14]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a6 + v20[15]);
  *v33 = 0;
  v33[1] = 0;
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = v20[17];
  *(a6 + v38) = 7;
  sub_1D560D308();
  sub_1D560CCE8();
  (*(v15 + 8))(v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
    sub_1D4E56C6C(v12, v24);
    sub_1D5031BC4(v24, a6);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v20);
    sub_1D4E50004(v12, &qword_1EC7EA838, &unk_1D561CB10);
  }

  sub_1D4EF2278(*a6, *(a6 + 8), *(a6 + 16));
  v42 = v47;
  *a6 = v48;
  *(a6 + 8) = v42;
  *(a6 + 16) = v46;
  *(a6 + 96) = v50 & 1;

  v44 = v52;
  *v32 = v51;
  v32[1] = v44;
  *(a6 + v38) = v49;
  return result;
}

unint64_t MusicRequestConfiguration.description.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = sub_1D537011C();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0x3A746E756F636361, 0xE900000000000020);

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v12 = v2;
  if (*(v0 + 96))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 96))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v3, v4);

  MEMORY[0x1DA6EAC70](0xD000000000000022, v12);

  v5 = type metadata accessor for MusicRequestConfiguration(0);
  v6 = (v0 + *(v5 + 56));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v13 = v9;
    MEMORY[0x1DA6EAC70](v8, v7);
    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](0xD000000000000018, v13);
  }

  v10 = *(v0 + *(v5 + 68));
  if (v10 != 7)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D5681D80);
    sub_1D502EE60(v10);
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

unint64_t MusicRequestConfiguration.debugDescription.getter()
{
  OUTLINED_FUNCTION_9_0();
  v26 = 0xD00000000000001ALL;
  v27 = v1;
  strcpy(v25, "\n  account: ");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  LOBYTE(v1) = *(v0 + 16);
  *__dst = *v0;
  __dst[16] = v1;
  v2 = sub_1D537011C();
  MEMORY[0x1DA6EAC70](v2);

  OUTLINED_FUNCTION_29_22();

  OUTLINED_FUNCTION_23_25();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v25[0] = 0xD00000000000001ALL;
  v25[1] = v3;
  if (*(v0 + 17))
  {
    v4 = 0x616E7265746E692ELL;
  }

  else
  {
    v4 = 0x63696C6275702ELL;
  }

  if (*(v0 + 17))
  {
    v5 = 0xE90000000000006CLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  MEMORY[0x1DA6EAC70](v4, v5);

  OUTLINED_FUNCTION_29_22();

  OUTLINED_FUNCTION_23_25();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v23 = 0xD000000000000010;
  v24 = v6;
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  ClientInfo.description.getter();
  sub_1D4F53278();
  v7 = sub_1D5615968();
  v9 = v8;

  MEMORY[0x1DA6EAC70](v7, v9);

  OUTLINED_FUNCTION_29_22();

  OUTLINED_FUNCTION_23_25();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  *__dst = 0xD000000000000024;
  *&__dst[8] = v10;
  if (*(v0 + 96))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + 96))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v11, v12);

  OUTLINED_FUNCTION_29_22();

  strcpy(__dst, ",\n  realm: ");
  *&__dst[12] = -352321536;
  v13 = type metadata accessor for MusicRequestConfiguration(0);
  if (*(v0 + v13[12]))
  {
    v14 = 0x616E7265746E692ELL;
  }

  else
  {
    v14 = 0x63696C6275702ELL;
  }

  if (*(v0 + v13[12]))
  {
    v15 = 0xE90000000000006CLL;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  MEMORY[0x1DA6EAC70](v14, v15);

  MEMORY[0x1DA6EAC70](*__dst, *&__dst[8]);

  v16 = (v0 + v13[14]);
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    OUTLINED_FUNCTION_23_25();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    *__dst = 0xD00000000000001ALL;
    *&__dst[8] = v19;
    MEMORY[0x1DA6EAC70](v18, v17);
    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](*__dst, *&__dst[8]);
  }

  v20 = *(v0 + v13[17]);
  if (v20 != 7)
  {
    *__dst = 0;
    *&__dst[8] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000020, 0x80000001D5681E30);
    sub_1D502EE60(v20);
    MEMORY[0x1DA6EAC70](*__dst, *&__dst[8]);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v26;
}

uint64_t MusicRequestConfiguration.cloudRealm.getter()
{
  if (*(v0 + *(OUTLINED_FUNCTION_30_15() + 48)))
  {

    return static CloudRealm.internal.getter();
  }

  else
  {

    return sub_1D560F5A8();
  }
}

uint64_t sub_1D5030C14()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 16);
  if (*(v1 + *(type metadata accessor for MusicRequestConfiguration(0) + 56) + 8))
  {
    OUTLINED_FUNCTION_55();
    v6 = v2;

    v3 = OUTLINED_FUNCTION_71();

    return v6(v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_1D5030D10;

    return MEMORY[0x1EEDCE570]();
  }
}

uint64_t sub_1D5030D10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  if (v2)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5030E60, 0, 0);
  }
}

uint64_t sub_1D5030EAC(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1D560F5C8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  if (*(v1 + *(type metadata accessor for MusicRequestConfiguration(0) + 48)))
  {
    static CloudRealm.internal.getter();
  }

  else
  {
    sub_1D560F5A8();
  }

  v12 = (*(v5 + 32))(v11, v9, v3);
  v13 = a1(v12);
  (*(v5 + 8))(v11, v3);
  return v13;
}

uint64_t MusicRequestConfiguration.subscription.getter()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1D560D478();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v4);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D50310D8, 0, 0);
}

uint64_t sub_1D50310D8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for MusicRequestConfiguration(0);
  sub_1D4E69970(v3 + *(v4 + 64), v1, &qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_57(v1, 1, v2);
  if (v5)
  {
    sub_1D4E50004(v0[7], &qword_1EC7ECC98, &qword_1D5622EB0);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1D5031228;
    v7 = v0[6];

    return MEMORY[0x1EEDCE630](v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_21_24();
    v9(v8);

    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D5031228()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = sub_1D50313A4;
  }

  else
  {
    v5 = sub_1D503132C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D503132C()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_21_24();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D50313A4()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t MusicRequestConfiguration.response(for:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_206();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return sub_1D55F5CF8();
}

uint64_t sub_1D50314B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D503153C;

  return MusicRequestConfiguration.countryCode.getter();
}

uint64_t sub_1D503153C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_59_1();
  v4 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1D5031640(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5031F20;

  return MEMORY[0x1EEDCEF88](a1, a2);
}

uint64_t sub_1D50316FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;

  return MusicRequestConfiguration.subscription.getter();
}

uint64_t sub_1D5031794()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return MusicRequestConfiguration.response(for:)();
}

uint64_t sub_1D503183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5031ED4(&qword_1EC7EE560, type metadata accessor for MusicRequestConfiguration, &protocol conformance descriptor for MusicRequestConfiguration);

  return MEMORY[0x1EEDCEFA0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50318D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5031ED4(&qword_1EC7EE5A0, type metadata accessor for MusicRequestConfiguration, &protocol conformance descriptor for MusicRequestConfiguration);

  return MEMORY[0x1EEDCEF98](a1, a2, a3, v6);
}

void *sub_1D5031954(char a1)
{
  v3 = OUTLINED_FUNCTION_30_15();
  sub_1D560C418();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = [objc_opt_self() activeAccount];
  type metadata accessor for Account.UserIdentityWrapper();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  static ClientInfo.default.getter(__src);
  *v1 = v13;
  *(v1 + 8) = 0;
  *(v1 + 16) = 256;
  result = memcpy((v1 + 24), __src, 0x48uLL);
  *(v1 + 96) = 257;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + v3[12]) = 1;
  *(v1 + v3[13]) = a1;
  v15 = (v1 + v3[14]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + v3[15]);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + v3[17]) = 7;
  return result;
}

uint64_t sub_1D5031AA4(char a1)
{
  if (a1)
  {
    return 0x616E7265746E692ELL;
  }

  else
  {
    return 0x63696C6275702ELL;
  }
}

uint64_t sub_1D5031B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5031B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5031BC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRequestConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1D5031C94(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5031D74()
{
  result = qword_1EC7EE570;
  if (!qword_1EC7EE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE570);
  }

  return result;
}

unint64_t sub_1D5031DFC()
{
  result = qword_1EC7EE588;
  if (!qword_1EC7EE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE588);
  }

  return result;
}

uint64_t sub_1D5031E80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D5031ED4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_31_20(uint64_t a1, uint64_t a2)
{

  return sub_1D4E69970(a1, a2, v2, v3);
}

uint64_t MusicServerItemDatabaseImportingRequest.import<A>(payloadData:configuration:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[3] = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v19[1] = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1D5614DA8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_5();
  v12 = type metadata accessor for MusicServerItemDatabase.ImportRequest(0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  result = sub_1D560E6A8();
  if (result)
  {
    v17 = *(v12 + 20);
    v18 = sub_1D560C328();
    __swift_storeEnumTagSinglePayload(v15 + v17, 1, 1, v18);
    *v15 = a1;
    v15[1] = a2;
    sub_1D4F48DE4(a1, a2);
    MusicServerItemDatabase.ImportRequest.response()(&v20);

    return sub_1D5032900(v15);
  }

  return result;
}

uint64_t MusicServerItemDatabase.ImportRequest.init(payloadData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for MusicServerItemDatabase.ImportRequest(0) + 20);
  v7 = sub_1D560C328();
  result = __swift_storeEnumTagSinglePayload(a3 + v6, 1, 1, v7);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t MusicServerItemDatabase.ImportRequest.payloadData.getter()
{
  v1 = *v0;
  sub_1D4F48DE4(*v0, *(v0 + 8));
  return v1;
}

uint64_t MusicServerItemDatabase.ImportRequest.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MusicServerItemDatabase.ImportRequest(0) + 20);

  return sub_1D5032A50(v3, a1);
}

uint64_t MusicServerItemDatabase.ImportRequest.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MusicServerItemDatabase.ImportRequest(0) + 20);

  return sub_1D5032AC0(a1, v3);
}

void MusicServerItemDatabase.ImportRequest.response()(void *a1@<X8>)
{
  v2 = v1;
  v30[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29[-1] - v5;
  v7 = sub_1D560C328();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = objc_opt_self();
  v13 = sub_1D560C168();
  v29[0] = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:v29];

  v15 = v29[0];
  if (v14)
  {
    sub_1D56159A8();
    swift_unknownObjectRelease();
    sub_1D4E5194C(v30, v29);
    v16 = objc_allocWithZone(MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest);
    v17 = sub_1D5032848(v29);
    v18 = [objc_opt_self() activeAccount];
    [v17 setUserIdentity_];

    v19 = type metadata accessor for MusicServerItemDatabase.ImportRequest(0);
    sub_1D5032A50(v2 + *(v19 + 20), v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1D5032B30(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v21 = sub_1D560C2B8();
      [v17 setExpirationDate_];

      (*(v8 + 8))(v11, v7);
    }

    if (qword_1EDD5BC20 != -1)
    {
      swift_once();
    }

    v22 = *(off_1EDD5BC28 + 2);
    v29[0] = 0;
    v23 = v22;
    v24 = [v23 importObjectsFromRequest:v17 options:0 error:v29];
    if (v24)
    {
      v25 = v24;
      v26 = v29[0];
      __swift_destroy_boxed_opaque_existential_1(v30);

      *a1 = v25;
    }

    else
    {
      v27 = v29[0];
      sub_1D560BE98();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  else
  {
    v20 = v15;
    sub_1D560BE98();

    swift_willThrow();
  }
}

id sub_1D5032848(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithPayload_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t type metadata accessor for MusicServerItemDatabase.ImportRequest(uint64_t a1)
{
  result = qword_1EC7EE5A8;
  if (!qword_1EC7EE5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5032900(uint64_t a1)
{
  v2 = type metadata accessor for MusicServerItemDatabase.ImportRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1D503295C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5B8, &qword_1D562B868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1D5032A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5032AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5032B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5032BC0(uint64_t a1)
{
  sub_1D5032C3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D5032C3C(uint64_t a1)
{
  if (!qword_1EDD5CF48)
  {
    sub_1D560C328();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5CF48);
    }
  }
}

uint64_t TVSeason.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v11 = sub_1D560D708();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  a2[1] = v13;
  v14 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  type metadata accessor for TVSeason(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5032E30(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  a3(0);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v6, v4, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v7, v4, v8);
  OUTLINED_FUNCTION_61();

  return sub_1D560EC28();
}

uint64_t TVSeason.episodeCount.getter()
{
  if (qword_1EC7E8B88 != -1)
  {
    OUTLINED_FUNCTION_33_8(&qword_1EC7E8B88);
  }

  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v4 = sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_45_2(v4, MEMORY[0x1E69E6530], v5, v4);
  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void TVSeason.contentRating.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  v12 = v11;
  if (qword_1EC7E8B60 != -1)
  {
    OUTLINED_FUNCTION_11_37(&qword_1EC7E8B60);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v13, v10, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v14, v10, v15);
  OUTLINED_FUNCTION_46_1();
  sub_1D560EC28();
  if (a10)
  {
    v16 = a10;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4EC92E8(v16, v12);

  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D50330DC()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v2, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v3, v0, v4);
  sub_1D560EC28();
  return v6;
}

uint64_t TVSeason.number.getter()
{
  if (qword_1EC7E8BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v4 = sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_45_2(v4, MEMORY[0x1E69E6530], v5, v4);
  return v7;
}

uint64_t TVSeason.show.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  if (qword_1EC7E8C08 != -1)
  {
    OUTLINED_FUNCTION_39_14(&qword_1EC7E8C08);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v5, type metadata accessor for TVSeason, v6);
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v3, 1, v4);
  if (v7)
  {
    sub_1D4E50004(v3, &qword_1EC7ECBA0, &unk_1D56270F0);
    type metadata accessor for TVShow(0);
    v8 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  }

  else
  {
    sub_1D4EC935C();
    OUTLINED_FUNCTION_24_0();
    v11 = OUTLINED_FUNCTION_46_1();
    return v12(v11);
  }
}

uint64_t sub_1D5033460@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_46_1();
  result = v4(v3);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1D50334B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8B60 != -1)
  {
    OUTLINED_FUNCTION_11_37(&qword_1EC7E8B60);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v11, v10, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v14 = sub_1D5038614(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D5033598()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v2, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v5 = sub_1D5038614(v3, v0, v4);
  OUTLINED_FUNCTION_45_2(v5, MEMORY[0x1E69E6158], v6, v5);
  return v8;
}

void TVSeason._editorialArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v4 = sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_36_1(v4);
  OUTLINED_FUNCTION_69_3();
}

void TVSeason._editorialVideoArtworks.getter()
{
  OUTLINED_FUNCTION_70_1();
  sub_1D4F849F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v4 = sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_36_1(v4);

  OUTLINED_FUNCTION_69_3();
}

void TVSeason.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8B90 != -1)
  {
    OUTLINED_FUNCTION_38_0(&qword_1EC7E8B90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v11, v10, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v14 = sub_1D5038614(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1D50338D0()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_40();
  sub_1D5038614(v2, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v5 = sub_1D5038614(v3, v0, v4);
  OUTLINED_FUNCTION_45_2(v5, MEMORY[0x1E69E6158], v6, v5);
  if (v9)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_1D5033978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_1();
  if (qword_1EC7E8BB8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_1_55();
  sub_1D5038614(v11, v10, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v14 = sub_1D5038614(v12, v10, v13);
  OUTLINED_FUNCTION_36_1(v14);
  OUTLINED_FUNCTION_67_1(a10);
  OUTLINED_FUNCTION_69_3();
}

uint64_t TVSeason.episodes.getter()
{
  if (qword_1EC7E8BF8 != -1)
  {
    OUTLINED_FUNCTION_37_18(&qword_1EC7E8BF8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t TVSeason.genres.getter()
{
  if (qword_1EC7E8C00 != -1)
  {
    OUTLINED_FUNCTION_36_15(&qword_1EC7E8C00);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t sub_1D5033C78()
{
  if (qword_1EC7E8C08 != -1)
  {
    OUTLINED_FUNCTION_39_14(&qword_1EC7E8C08);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_4_36();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t TVSeason.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TVSeason(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t TVSeason.catalogID.getter()
{
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - v3;
  type metadata accessor for TVSeason(0);
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v5, v6, &protocol conformance descriptor for TVSeason);
  sub_1D560EC98();
  sub_1D560D7A8();
  v7 = OUTLINED_FUNCTION_61();
  v8(v7);
  v9 = sub_1D560F148();
  v10 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v10, v11, v9);
  if (v12)
  {
    sub_1D4E50004(v4, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v13 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0();
    (*(v14 + 8))(v4, v9);
  }

  return v13;
}

uint64_t static TVSeason.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TVSeason(0);

  return sub_1D5611A78();
}

uint64_t TVSeason.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for TVSeason(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_30_16();
  sub_1D5038614(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t TVSeason.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for TVSeason(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_30_16();
  sub_1D5038614(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D503413C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D5038614(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50341E0@<X0>(uint64_t *a1@<X8>)
{
  result = TVSeason.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVSeason.subscript.getter(uint64_t a1)
{
  return sub_1D5034248();
}

{
  return sub_1D5034248();
}

uint64_t sub_1D5034248()
{
  OUTLINED_FUNCTION_26_24();
  sub_1D5038614(v1, v0, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_31_21(&unk_1EDD546A0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t TVSeason.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_26_24();
  sub_1D5038614(v2, v1, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_31_21(&unk_1EDD546A0);
  OUTLINED_FUNCTION_0_56();
  sub_1D5038614(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5034438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v11 = sub_1D5038614(&qword_1EC7EAB20, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D503456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v13 = sub_1D5038614(&qword_1EC7EAB20, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D50346B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v13 = sub_1D5038614(&qword_1EC7EAB20, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D50347F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D5038614(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFB0 = v0;
  return result;
}

uint64_t sub_1D5034898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D503853C();
  OUTLINED_FUNCTION_52_11(22);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFB8 = v0;
  return result;
}

uint64_t sub_1D5034914()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFC0 = v0;
  return result;
}

uint64_t sub_1D503498C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_37();
  sub_1D5038614(v1, v2, MEMORY[0x1E6969558]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFC8 = v0;
  return result;
}

uint64_t sub_1D5034A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  v0 = sub_1D560D118();

  qword_1EC87BFD0 = v0;
  return result;
}

uint64_t sub_1D5034AF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_25();
  sub_1D5038614(v1, v2, MEMORY[0x1E6975E68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFD8 = v0;
  return result;
}

uint64_t sub_1D5034B94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFE0 = v0;
  return result;
}

uint64_t sub_1D5034C10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D50384C0();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFE8 = v0;
  return result;
}

uint64_t sub_1D5034C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFF0 = v0;
  return result;
}

uint64_t sub_1D5034D08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(21);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87BFF8 = v0;
  return result;
}

uint64_t sub_1D5034D84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_37();
  sub_1D5038614(v1, v2, MEMORY[0x1E6969558]);
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C000 = v0;
  return result;
}

uint64_t sub_1D5034E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C008 = v0;
  return result;
}

uint64_t sub_1D5034E94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D503840C();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C010 = v0;
  return result;
}

uint64_t sub_1D5034F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_37();
  sub_1D5038614(v1, v2, MEMORY[0x1E6969558]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C018 = v0;
  return result;
}

uint64_t sub_1D5034FA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(17);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C020 = v0;
  return result;
}

uint64_t sub_1D503501C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C028 = v0;
  return result;
}

uint64_t sub_1D5035094()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_52_11(20);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C030 = v0;
  return result;
}

uint64_t sub_1D5035110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C038 = v0;
  return result;
}

uint64_t sub_1D503517C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_28();
  sub_1D5038614(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C040 = v0;
  return result;
}

uint64_t sub_1D5035208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  OUTLINED_FUNCTION_28_25();
  sub_1D5038614(v0, v1, MEMORY[0x1E6975E68]);
  v2 = sub_1D560D138();

  qword_1EC7EE5C0 = v2;
  return result;
}

uint64_t static PartialMusicProperty<A>.plainEditorialNotes.getter()
{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D5035324()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D5038614(&qword_1EC7EAB00, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EE5C8 = v0;
  return result;
}

uint64_t sub_1D5035408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D5038614(&qword_1EDD5D240, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE8]);
  v0 = sub_1D560D0F8();

  qword_1EC7EE5D0 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.genres.getter()
{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D5035500()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D5038614(&qword_1EC7EAB40, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EE5D8 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.show.getter()
{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D50355DC()
{
  OUTLINED_FUNCTION_19_1();
  if (!v0)
  {
    swift_once();
  }
}

uint64_t static TVSeason.catalogFilterID(for:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D56159B8();
  v1 = sub_1D5614D18();

  if (v1)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D503576C(uint64_t a1, uint64_t a2)
{
  sub_1D5038614(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

  return sub_1D5610C58();
}

uint64_t static TVSeason.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TVEpisode(0);
  if (result != a4)
  {
    sub_1D560DE58();
    sub_1D5038614(&qword_1EDD53B58, MEMORY[0x1E69750D8], MEMORY[0x1E69750E0]);
    swift_allocError();
    OUTLINED_FUNCTION_24_0();
    (*(v6 + 104))();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D503590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D5038614(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *v9 = v4;
  v9[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v10);
}

uint64_t TVSeason.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v95 = v3;
  v96 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v93 = v4;
  sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v89 = v6;
  v90 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v87 = v7;
  v82 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v92 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v91 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v22 = OUTLINED_FUNCTION_22(v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v98 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v78 - v29;
  v31 = type metadata accessor for TVSeason(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_29_23();
  v97 = v33;
  sub_1D50381B8();
  v34 = TVSeason.title.getter();
  v85 = v35;
  v86 = v34;
  v36 = TVSeason.showName.getter();
  v83 = v37;
  v84 = v36;
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  v38 = qword_1EC87BFB0;
  v39 = sub_1D56140F8();
  OUTLINED_FUNCTION_2_40();
  v41 = sub_1D5038614(v40, v1, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v44 = sub_1D5038614(v42, v1, v43);
  OUTLINED_FUNCTION_68_3(v38, v39);
  if (qword_1EC7E8B60 != -1)
  {
    OUTLINED_FUNCTION_11_37(&qword_1EC7E8B60);
  }

  v45 = qword_1EC87BFB8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_68_3(v45, v46);
  v47 = OUTLINED_FUNCTION_67_1(v99[0]);
  v48 = *(v47 + 16);
  v88 = v30;
  if (v48)
  {
    v49 = v20;
    v50 = *(v47 + 80);
    v51 = *(v47 + 88);

    v52 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v52);
    if ((v51 & 1) == 0)
    {
      sub_1D4E50004(v25, &qword_1EC7EC478, &unk_1D56299D0);
      OUTLINED_FUNCTION_24_0();
      v54 = MEMORY[0x1E6975D50];
      if (v50 >= 500)
      {
        v54 = MEMORY[0x1E6975D58];
      }

      (*(v53 + 104))(v25, *v54, v52);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v52);
    }

    sub_1D4FB8058();
    v20 = v49;
  }

  else
  {

    v55 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v55);
  }

  if (qword_1EC7E8BE8 != -1)
  {
    OUTLINED_FUNCTION_34_1(&qword_1EC7E8BE8);
  }

  v56 = qword_1EC87C040;
  v57 = sub_1D560C0A8();
  OUTLINED_FUNCTION_68_3(v56, v57);
  v80 = v20;
  if (qword_1EC7E8B98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_68_3(qword_1EC87BFF0, MEMORY[0x1E69E6370]);
  v79 = LOBYTE(v99[0]);
  v58 = v90;
  v59 = v91;
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v90);
  v100 = v31;
  v101 = v44;
  __swift_allocate_boxed_opaque_existential_0(v99);
  OUTLINED_FUNCTION_29_23();
  v78[1] = v41;
  sub_1D50381B8();
  v60 = __swift_project_boxed_opaque_existential_1(v99, v100);
  v61 = v81;
  v62 = v82;
  (*(v9 + 16))(v81, &v60[*(v31 + 20)], v82);
  sub_1D5611A98();
  (*(v9 + 8))(v61, v62);
  v63 = v92;
  sub_1D560FDD8();
  v64 = OUTLINED_FUNCTION_46_1();
  v65(v64);
  sub_1D4E50004(v59, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v58);
  sub_1D4FB8058();
  __swift_destroy_boxed_opaque_existential_1(v99);
  v66 = v93;
  sub_1D560EC98();
  sub_1D4FB8150();
  type metadata accessor for MusicSiriRepresentation(0);
  v67 = v94;
  v68 = v88;
  sub_1D4FB8150();
  v69 = v98;
  sub_1D4FB8150();
  v70 = v80;
  sub_1D4FB8150();
  LOBYTE(v99[0]) = 15;
  sub_1D50391CC();
  v72 = v71;
  v74 = v73;
  sub_1D4E50004(v63, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v95 + 8))(v66, v96);
  sub_1D4E50004(v59, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v70, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v69, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v68, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5038268(v97, type metadata accessor for TVSeason);
  *v67 = v72;
  *(v67 + 8) = v74;
  *(v67 + 16) = 15;
  v76 = v85;
  *(v67 + 24) = v86;
  *(v67 + 32) = v76;
  v77 = v83;
  *(v67 + 40) = v84;
  *(v67 + 48) = v77;
  return result;
}

uint64_t TVSeason.init(from:)(void *a1)
{
  type metadata accessor for TVSeason(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v3, v4, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_24_24();
  sub_1D5038614(v5, v1, &protocol conformance descriptor for CloudTVSeason);
  OUTLINED_FUNCTION_32_19(&qword_1EDD577F8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TVSeason.encode(to:)(uint64_t a1)
{
  type metadata accessor for TVSeason(0);
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v2, v3, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_24_24();
  sub_1D5038614(v4, v1, &protocol conformance descriptor for CloudTVSeason);
  OUTLINED_FUNCTION_32_19(&qword_1EDD577F8);
  return sub_1D5612688();
}

uint64_t TVSeason.description.getter()
{
  sub_1D5615B68();

  OUTLINED_FUNCTION_66_7();
  v5 = v0;
  v1 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0x656C746974202C22, 0xEB0000000022203ALL);
  v2 = TVSeason.title.getter();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](0x4E776F6873202C22, 0xEE0022203A656D61);
  v3 = TVSeason.showName.getter();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return v5;
}

uint64_t TVSeason.debugDescription.getter()
{
  v218 = sub_1D5613C48();
  OUTLINED_FUNCTION_4();
  v195 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v217 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v6);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5F0, &unk_1D562B8A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v214 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v11);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v205 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v15 = OUTLINED_FUNCTION_48(v14);
  v16 = type metadata accessor for TVEpisode(v15);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v216 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v20);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE5F8, &qword_1D562B8B0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v181 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v181 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_4();
  v202 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v35 = OUTLINED_FUNCTION_48(v34);
  v199 = type metadata accessor for TVShow(v35);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v40);
  v198 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v191 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v43);
  v189 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v188 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v46);
  v187 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v186 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v51 = OUTLINED_FUNCTION_22(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13();
  v183 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v54);
  v208 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v207 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  v61 = v60;
  v62 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v181 = v63;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v65);
  OUTLINED_FUNCTION_66_7();
  v225 = v66;
  v226 = 0xE900000000000028;
  v220 = 0x22203A646920200ALL;
  v221 = 0xE800000000000000;
  sub_1D560EEC8();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  OUTLINED_FUNCTION_51_0();
  v220 = v67 | 0x6C74697400000000;
  v221 = 0xEC00000022203A65;
  TVSeason.title.getter();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  v220 = 0;
  v221 = 0xE000000000000000;
  sub_1D5615B68();

  v220 = 0x776F687320200A2CLL;
  v221 = 0xEF22203A656D614ELL;
  TVSeason.showName.getter();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  if (qword_1EC7E8B68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_55();
  v69 = sub_1D5038614(v68, v1, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_0_56();
  v212 = sub_1D5038614(v70, v1, v71);
  sub_1D560EC28();
  if (v221)
  {
    OUTLINED_FUNCTION_51_0();
    v220 = v72 | 0x79706F6300000000;
    v221 = 0xEF203A7468676972;
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  v211 = v0;
  v220 = 0xD000000000000013;
  v221 = 0x80000001D5681F90;
  if (qword_1EC7E8B88 != -1)
  {
    OUTLINED_FUNCTION_33_8(&qword_1EC7E8B88);
  }

  v73 = MEMORY[0x1E69E6530];
  v74 = v212;
  sub_1D560EC28();
  v75 = v223;
  if (v224)
  {
    v75 = 0;
  }

  v223 = v75;
  sub_1D56160F8();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_16_7();

  if (qword_1EC7E8B80 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v61, 1, v62);
  v206 = v27;
  if (v76)
  {
    sub_1D4E50004(v61, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v77 = v181;
    v78 = v182;
    (*(v181 + 32))(v182, v61, v62);
    OUTLINED_FUNCTION_10_38();
    v220 = v80 + 3;
    v221 = v79;
    v81 = sub_1D5610928();
    v73 = v82;
    v223 = v81;
    v224 = v82;
    v222[0] = 10;
    v222[1] = 0xE100000000000000;
    v219[0] = 2105354;
    v219[1] = 0xE300000000000000;
    v83 = sub_1D4F53278();
    v89 = OUTLINED_FUNCTION_23_5(v222, v219, v84, v85, v86, v87, MEMORY[0x1E69E6158], v88, v180, v83, v83, v83);
    v74 = v69;
    v91 = v90;

    MEMORY[0x1DA6EAC70](v89, v91);
    v69 = v74;

    OUTLINED_FUNCTION_16_7();

    v92 = *(v77 + 8);
    v27 = v77 + 8;
    v92(v78, v62);
  }

  OUTLINED_FUNCTION_47_19();
  v223 = 0;
  v224 = 0xE000000000000000;
  if (qword_1EC7E8B90 != -1)
  {
    OUTLINED_FUNCTION_38_0(&qword_1EC7E8B90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v209 = v69;
  sub_1D560EC28();
  if (v220)
  {
    v93 = v220;
  }

  else
  {
    v93 = MEMORY[0x1E69E7CC0];
  }

  v94 = *(v93 + 16);
  if (v94)
  {
    v95 = (v93 + 40);
    v27 = 0x22202020200ALL;
    v74 = 0xE600000000000000;
    do
    {
      v96 = *(v95 - 1);
      v97 = *v95;
      OUTLINED_FUNCTION_48_1();
      if (v76)
      {
        v100 = v98;
      }

      else
      {
        v100 = v99;
      }

      if (v100)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v220 = 0x22202020200ALL;
      v221 = 0xE600000000000000;
      MEMORY[0x1DA6EAC70](v96, v97);

      OUTLINED_FUNCTION_55_0();
      v73 = v221;
      MEMORY[0x1DA6EAC70](v220, v221);

      v95 += 2;
      --v94;
    }

    while (v94);

    v101 = v224;
    OUTLINED_FUNCTION_47_19();
  }

  else
  {

    v102 = 0;
    v101 = 0xE000000000000000;
  }

  v103 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) == 0)
  {
    v103 = v102 & 0xFFFFFFFFFFFFLL;
  }

  v104 = v196;
  if (v103)
  {
    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_65_12(v105);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v220, v221);
  }

  OUTLINED_FUNCTION_49_10();

  if (qword_1EC7E8BC0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v106 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v106, v107, v74);
  if (v76)
  {
    sub_1D4E50004(v104, &qword_1EC7EA3B8, &unk_1D561E370);
    v108 = v206;
  }

  else
  {
    (*(v73 + 32))(v27, v104, v74);
    v109 = v184;
    sub_1D56107A8();
    v110 = v183;
    (*(v73 + 16))(v183, v27, v74);
    __swift_storeEnumTagSinglePayload(v110, 0, 1, v74);
    v111 = v188;
    v112 = v185;
    v113 = v73;
    v114 = v189;
    (*(v188 + 104))(v185, *MEMORY[0x1E6975DC8], v189);
    v208 = sub_1D56107B8();
    v116 = v115;
    (*(v111 + 8))(v112, v114);
    sub_1D4E50004(v110, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v186 + 8))(v109, v187);
    if (v116)
    {
      OUTLINED_FUNCTION_10_38();
      OUTLINED_FUNCTION_65_12(v117);
      MEMORY[0x1DA6EAC70](v208, v116);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_16_7();
    }

    (*(v113 + 8))(v210, v74);
    v108 = v206;
    OUTLINED_FUNCTION_49_10();
  }

  v118 = v197;
  if (qword_1EC7E8BC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_46_11(qword_1EC87C020, MEMORY[0x1E69E6158]);
  if (v221)
  {
    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_65_12(v119);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_46_11(qword_1EC87C030, MEMORY[0x1E69E6158]);
  if (v221)
  {
    OUTLINED_FUNCTION_10_38();
    OUTLINED_FUNCTION_65_12(v120);
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_16_7();
  }

  if (qword_1EC7E8BE8 != -1)
  {
    OUTLINED_FUNCTION_34_1(&qword_1EC7E8BE8);
  }

  v121 = v198;
  OUTLINED_FUNCTION_46_11(qword_1EC87C040, v198);
  v122 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v122, v123, v121);
  if (v76)
  {
    sub_1D4E50004(v118, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v124 = v191;
    v125 = v190;
    (*(v191 + 32))(v190, v118, v121);
    OUTLINED_FUNCTION_51_0();
    v220 = v126 | 0x3A6C727500000000;
    v221 = 0xEA00000000002220;
    OUTLINED_FUNCTION_25_28();
    sub_1D5038614(v127, v128, MEMORY[0x1E6968FE0]);
    sub_1D56160F8();
    OUTLINED_FUNCTION_56_3();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_16_7();

    (*(v124 + 8))(v125, v121);
    v108 = v206;
  }

  v129 = v200;
  TVSeason.show.getter();
  OUTLINED_FUNCTION_57(v129, 1, v199);
  if (v76)
  {
    sub_1D4E50004(v129, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    v130 = v192;
    sub_1D5038210();
    v220 = 0x776F687320200A2CLL;
    v221 = 0xEA0000000000203ALL;
    v222[0] = 0;
    v222[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v222, "TVShow(id: ");
    BYTE5(v222[1]) = 0;
    HIWORD(v222[1]) = -5120;
    v131 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v131);

    MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
    v132 = TVShow.name.getter();
    MEMORY[0x1DA6EAC70](v132);

    MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](v222[0], v222[1]);

    OUTLINED_FUNCTION_16_7();

    sub_1D5038268(v130, type metadata accessor for TVShow);
  }

  if (qword_1EC7E8BF8 != -1)
  {
    OUTLINED_FUNCTION_37_18(&qword_1EC7E8BF8);
  }

  OUTLINED_FUNCTION_46_11(qword_1EC7EE5C8, v28);
  OUTLINED_FUNCTION_57(v108, 1, v28);
  if (v76)
  {
    sub_1D4E50004(v108, &qword_1EC7ECBA8, &unk_1D56223B0);
  }

  else
  {
    v133 = v201;
    (*(v202 + 32))(v201, v108, v28);
    OUTLINED_FUNCTION_62_14();
    v134(v23, v133, v28);
    v135 = *(v193 + 36);
    sub_1D4ECCCA4(&qword_1EC7EA430, &qword_1EC7EA370, &unk_1D561C080);
    sub_1D5615608();
    while (1)
    {
      sub_1D5615648();
      if (*&v23[v135] == v220)
      {
        break;
      }

      v136 = sub_1D5615688();
      sub_1D50381B8();
      v136(&v220, 0);
      sub_1D5615658();
      sub_1D5038210();
      OUTLINED_FUNCTION_48_1();
      if (!v76)
      {
        v137 = v138;
      }

      if (v137)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v220 = 10;
      v221 = 0xE100000000000000;
      v139 = v216;
      TVEpisode.debugDescription.getter();
      OUTLINED_FUNCTION_56_3();

      MEMORY[0x1DA6EAC70](v220, v221);

      sub_1D5038268(v139, type metadata accessor for TVEpisode);
    }

    sub_1D4E50004(v23, &qword_1EC7EE5F8, &qword_1D562B8B0);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_35_19(v140 | 0x7369706500000000);
    v141 = OUTLINED_FUNCTION_41_17();
    v148 = OUTLINED_FUNCTION_23_5(v141, v142, v143, v144, v145, v146, MEMORY[0x1E69E6158], v147, v181, v182, v183, v184);
    v150 = v149;

    MEMORY[0x1DA6EAC70](v148, v150);

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v220, v221);

    (*(v202 + 8))(v201, v28);
    OUTLINED_FUNCTION_49_10();
  }

  v151 = v214;
  v152 = v203;
  if (qword_1EC7E8C00 != -1)
  {
    OUTLINED_FUNCTION_36_15(&qword_1EC7E8C00);
  }

  v153 = v215;
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v152, 1, v153);
  if (v76)
  {
    sub_1D4E50004(v152, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v154 = v204;
    v155 = v215;
    (*(v205 + 32))(v204, v152, v215);
    OUTLINED_FUNCTION_62_14();
    v156(v151, v154, v155);
    v157 = *(v194 + 36);
    sub_1D4ECCCA4(&qword_1EC7EA5A8, &qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_61();
    sub_1D5615608();
    v158 = (v195 + 16);
    v159 = (v195 + 32);
    v160 = (v195 + 8);
    v161 = v213;
    while (1)
    {
      v162 = v215;
      OUTLINED_FUNCTION_61();
      sub_1D5615648();
      if (*(v151 + v157) == v220)
      {
        break;
      }

      v163 = sub_1D5615688();
      v164 = v218;
      (*v158)(v161);
      v163(&v220, 0);
      sub_1D5615658();
      (*v159)(v217, v161, v164);
      OUTLINED_FUNCTION_48_1();
      if (!v76)
      {
        v165 = v166;
      }

      if (v165)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v220 = 10;
      v221 = 0xE100000000000000;
      v167 = v217;
      sub_1D5613B88();
      OUTLINED_FUNCTION_56_3();

      MEMORY[0x1DA6EAC70](v220, v221);

      (*v160)(v167, v218);
      v151 = v214;
    }

    sub_1D4E50004(v151, &qword_1EC7EE5F0, &unk_1D562B8A0);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_35_19(v168 | 0x726E656700000000);
    v169 = OUTLINED_FUNCTION_41_17();
    v176 = OUTLINED_FUNCTION_23_5(v169, v170, v171, v172, v173, v174, MEMORY[0x1E69E6158], v175, v185, v186, v187, v188);
    v178 = v177;

    MEMORY[0x1DA6EAC70](v176, v178);

    OUTLINED_FUNCTION_58_8();
    MEMORY[0x1DA6EAC70](v220, v221);

    (*(v205 + 8))(v204, v162);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v225;
}

uint64_t sub_1D5037D80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7EE5E0 = v4;
  return result;
}

uint64_t sub_1D5037EDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v4 + v3, *MEMORY[0x1E6975218], v0);
  qword_1EC7EE5E8 = v4;
  return result;
}