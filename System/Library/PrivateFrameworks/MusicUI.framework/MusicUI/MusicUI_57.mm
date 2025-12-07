unint64_t sub_216C644BC()
{
  result = qword_280E3BA38[0];
  if (!qword_280E3BA38[0])
  {
    type metadata accessor for RemoveFollowerAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3BA38);
  }

  return result;
}

void *sub_216C645F8(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = a3 + 32;
  v6 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v6;
  }

  while (1)
  {
    result = (a1)(&v20, v5, a2);
    if (v3)
    {

      return v6;
    }

    v8 = v20;
    v9 = *(v20 + 16);
    v10 = *(v6 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v11 > *(v6 + 24) >> 1)
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      sub_216937A7C(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      v6 = v14;
    }

    if (*(v8 + 16))
    {
      v15 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = type metadata accessor for MenuAction(0);
      if (v15 < v9)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v16 = *(v6 + 16);
        v17 = __OFADD__(v16, v9);
        v18 = v16 + v9;
        if (v17)
        {
          goto LABEL_23;
        }

        *(v6 + 16) = v18;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_21;
      }
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_216C647A0(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  v4 = v2 + 16;
  v18 = 15;
  v17 = v3;
  sub_216C6499C(a1, &v18, &v17, (v2 + 16));
  v5 = v17;
  if (*(v17 + 16))
  {
    sub_21700DF14();
    sub_216DF3AE4();
    v6 = *(*v4 + 16);
    sub_216DF3C48(v6);
    v7 = v6 + 1;
    v8 = *v4;
    *(v8 + 16) = v6 + 1;
    *(v8 + 8 * v6 + 32) = v5;
  }

  else
  {
    v8 = *v4;
    v7 = *(*v4 + 16);
  }

  v9 = 0;
  v10 = 0;
  v11 = v8 + 32;
  while (v7 != v9)
  {
    v12 = *(v11 + 8 * v9++);
    v13 = *(v12 + 16);
    v14 = __OFADD__(v10, v13);
    v10 += v13;
    if (v14)
    {
      __break(1u);
      break;
    }
  }

  swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688, &qword_217023FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82D8, &unk_217019970);
  sub_2168B98BC();
  sub_2166D9530(&qword_27CAB82D0, &qword_27CAB82D8, &unk_217019970, MEMORY[0x277CE14C0]);
  sub_21700B154();
}

void sub_216C6499C(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v34 = a4;
  v39 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v39);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v32 - v9;
  v10 = 0;
  v11 = *(a1 + 16);
  v36 = a1;
  v37 = v11;
  v33 = a2;
  while (v37 != v10)
  {
    type metadata accessor for MenuAction(0);
    sub_216C67858();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = 10;
    switch(EnumCaseMultiPayload)
    {
      case 1:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        goto LABEL_14;
      case 2:
      case 3:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_8;
      case 4:
      case 5:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_4;
      case 6:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_16;
      case 7:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
        goto LABEL_12;
      case 8:
      case 42:
      case 43:
      case 44:
        v13 = 3;
        break;
      case 14:
      case 15:
        v13 = 2;
        break;
      case 16:
LABEL_8:
        v13 = 5;
        break;
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
LABEL_4:
        v13 = 14;
        break;
      case 28:
      case 29:
      case 30:
      case 31:
LABEL_16:
        v13 = 7;
        break;
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
LABEL_12:
        v13 = 4;
        break;
      case 37:
      case 38:
      case 39:
      case 40:
        v13 = 9;
        break;
      case 41:
        break;
      default:
        sub_216C677F8(v38, type metadata accessor for MenuActionType);
LABEL_14:
        v13 = 0;
        break;
    }

    v14 = *a2;
    if (v14 == 15 || (v14 > 0xE ? (v15 = 0) : (v15 = qword_2170588F0[*a2]), qword_2170588F0[v13] != v15))
    {
      v16 = *a3;
      if (*(*a3 + 16))
      {
        v17 = v34;
        v18 = *v34;
        sub_21700DF14();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v17 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21693825C(0, *(v18 + 16) + 1, 1, v18);
          v18 = v30;
          *v34 = v30;
        }

        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21693825C(v20 > 1, v21 + 1, 1, v18);
          v18 = v31;
          *v34 = v31;
        }

        *(v18 + 16) = v21 + 1;
        *(v18 + 8 * v21 + 32) = v16;
        a2 = v33;
      }

      *a3 = MEMORY[0x277D84F90];

      sub_216C67858();
      v22 = swift_getEnumCaseMultiPayload();
      v23 = 10;
      switch(v22)
      {
        case 1:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
          goto LABEL_39;
        case 2:
        case 3:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_33;
        case 4:
        case 5:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_29;
        case 6:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_41;
        case 7:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
          goto LABEL_37;
        case 8:
        case 42:
        case 43:
        case 44:
          v23 = 3;
          break;
        case 14:
        case 15:
          v23 = 2;
          break;
        case 16:
LABEL_33:
          v23 = 5;
          break;
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
LABEL_29:
          v23 = 14;
          break;
        case 28:
        case 29:
        case 30:
        case 31:
LABEL_41:
          v23 = 7;
          break;
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
LABEL_37:
          v23 = 4;
          break;
        case 37:
        case 38:
        case 39:
        case 40:
          v23 = 9;
          break;
        case 41:
          break;
        default:
          sub_216C677F8(v35, type metadata accessor for MenuActionType);
LABEL_39:
          v23 = 0;
          break;
      }

      *a2 = v23;
    }

    v24 = *a3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v24;
    if ((v25 & 1) == 0)
    {
      sub_216937A7C(0, *(v24 + 16) + 1, 1, v24);
      v24 = v28;
      *a3 = v28;
    }

    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_216937A7C(v26 > 1, v27 + 1, 1, v24);
      v24 = v29;
      *a3 = v29;
    }

    *(v24 + 16) = v27 + 1;
    sub_216C67858();
    ++v10;
  }
}

uint64_t sub_216C64FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v10[2] = *a1;
  v11 = *(a1 + 8);
  v12 = a2;
  v13 = a3;
  v6 = sub_216C645F8(sub_216C6BB5C, v10, v5);
  v7 = type metadata accessor for MenuConfiguration(0);
  v8 = sub_216C6514C(*(a3 + *(v7 + 28)), v6);

  v14 = v8;
  sub_21700DF14();
  sub_216C679D4(&v14);

  return v14;
}

uint64_t sub_216C650C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 8))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C6514C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    sub_21700DF14();
    v3 = sub_21700DF14();
    sub_216BDD230(v3);
    return a2;
  }

  else
  {
    sub_21700DF14();
  }

  return v2;
}

uint64_t sub_216C651B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 16))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65240@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 24))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C652CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 40))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65358@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 48))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C653E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 32))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65488@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 56))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65514@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 64))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C655A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  result = (*(v14 + 72))(v16, a5, a6, v13, v14);
  *a7 = result;
  return result;
}

uint64_t sub_216C6564C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 80))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C656F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 88))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C6577C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 96))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65808@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 104))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 112))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 120))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C659AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 128))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65A50(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t))
{
  v6 = *(v4 + 16);
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v7 = sub_216C645F8(a4, v11, v6);
  v8 = type metadata accessor for MenuConfiguration(0);
  v9 = sub_216C6514C(*(a3 + *(v8 + 28)), v7);

  v12 = v9;
  sub_21700DF14();
  sub_216C679D4(&v12);

  return v12;
}

uint64_t sub_216C65AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 136))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65B88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 144))(a2, a3, a4, v9, v10);
  *a5 = result;
  return result;
}

uint64_t sub_216C65C14()
{
  if (qword_280E2B918 != -1)
  {
    swift_once();
  }

  if (byte_280E73A83)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for ClassicalArtistMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  v43 = v1;
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_4_119();
  v44 = sub_216B2B840(v2);
  v45 = type metadata accessor for CollaborationMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_4_119();
  v58 = sub_216A0C8A8(v3);
  v4 = type metadata accessor for FavoriteMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_4_119();
  v64[3] = v4;
  v64[4] = &off_28291B5B8;
  v64[0] = sub_2168F9BC4(v5);
  v42 = type metadata accessor for DislikeMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_4_119();
  v57 = sub_216BB0AC0(v6);
  v39 = type metadata accessor for PlaylistMenuActionProvider(0);

  v56 = sub_216881458();
  StationMenuActionProvider = type metadata accessor for CreateStationMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_4_119();
  v40 = sub_21693FBCC(v7);
  v38 = type metadata accessor for ViewLyricsMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_4_119();
  v55 = sub_216DF508C(v8);
  v37 = type metadata accessor for LibraryMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_4_119();
  v54 = sub_2169D9DFC(v9);
  v36 = type metadata accessor for LibraryPinMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_4_119();
  v53 = sub_216A1DCE4(v10);
  v11 = type metadata accessor for PlaybackMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_4_119();
  v52 = sub_216788520(v12);
  v35 = type metadata accessor for GoToArtistMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v13 = OUTLINED_FUNCTION_4_119();
  v51 = sub_216B7C624(v13);
  v14 = type metadata accessor for GoToAlbumMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_4_119();
  v50 = sub_2168CC39C(v15);
  v16 = type metadata accessor for GoToSongMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_4_119();
  v49 = sub_216E9A674(v17);
  v18 = type metadata accessor for GoToTVEpisodeMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_4_119();
  v48 = sub_216920968(v19);
  v20 = type metadata accessor for ShareMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v21 = OUTLINED_FUNCTION_4_119();
  v22 = sub_2167EF738(v21);
  v23 = type metadata accessor for SocialProfileMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v24 = OUTLINED_FUNCTION_4_119();
  v47 = sub_2167D985C(v24);
  v25 = type metadata accessor for ReportAConcernMenuActionProvider(0);
  OUTLINED_FUNCTION_2_4();
  swift_allocObject();
  v26 = OUTLINED_FUNCTION_4_119();
  v46 = sub_216B32C60(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7548, &unk_217058858);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2170587F0;
  *(inited + 56) = v36;
  *(inited + 64) = &off_282923040;
  *(inited + 32) = v53;
  *(inited + 96) = v37;
  *(inited + 104) = &off_2829214B0;
  *(inited + 72) = v54;
  *(inited + 136) = v11;
  *(inited + 144) = &off_2829136F0;
  *(inited + 112) = v52;
  *(inited + 176) = v45;
  *(inited + 184) = &off_282922670;
  *(inited + 152) = v58;
  *(inited + 216) = v39;
  *(inited + 224) = &off_282918720;
  *(inited + 192) = v56;
  sub_2167B7D58(v64, inited + 232);
  *(inited + 296) = v38;
  *(inited + 304) = &off_282937B48;
  *(inited + 272) = v55;
  *(inited + 336) = v42;
  *(inited + 344) = &off_28292DF08;
  *(inited + 312) = v57;
  *(inited + 376) = v20;
  *(inited + 384) = &off_282915668;
  *(inited + 352) = v22;
  *(inited + 416) = v35;
  *(inited + 424) = &off_28292C200;
  *(inited + 392) = v51;
  *(inited + 456) = v14;
  *(inited + 464) = &off_28291A608;
  *(inited + 432) = v50;
  *(inited + 496) = v16;
  *(inited + 504) = &off_28293A918;
  *(inited + 472) = v49;
  *(inited + 536) = v18;
  *(inited + 544) = &off_28291C508;
  *(inited + 512) = v48;
  *(inited + 576) = StationMenuActionProvider;
  *(inited + 584) = &off_28291D580;
  *(inited + 552) = v40;
  if (v47)
  {
    v28 = &off_282914EF0;
  }

  else
  {
    v23 = 0;
    v28 = 0;
    *(inited + 600) = 0u;
  }

  *(inited + 592) = v47;
  *(inited + 616) = v23;
  *(inited + 624) = v28;
  *(inited + 656) = v25;
  *(inited + 664) = &off_28292A190;
  *(inited + 632) = v46;
  *(inited + 696) = v43;
  *(inited + 704) = &off_282929F28;
  *(inited + 672) = v44;

  v0 = MEMORY[0x277D84F90];
  for (i = 32; i != 712; i += 40)
  {
    sub_2166A6EA4();
    v59[0] = *&v61[5];
    v59[1] = v62;
    v60 = v63;
    if (*(&v62 + 1))
    {
      sub_2166A0F18(v59, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2169387DC(0, *(v0 + 16) + 1, 1, v0);
        v0 = v32;
      }

      v31 = *(v0 + 16);
      v30 = *(v0 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2169387DC(v30 > 1, v31 + 1, 1, v0);
        v0 = v33;
      }

      *(v0 + 16) = v31 + 1;
      sub_2166A0F18(v61, v0 + 40 * v31 + 32);
    }

    else
    {
      sub_216697664(v59, &qword_27CABF9E8, &qword_217033EB0);
    }
  }

  swift_setDeallocating();
  sub_2169FACA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  return v0;
}

uint64_t sub_216C662A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21700B134();
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB6B0, &qword_217023FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7550, L"L\vE");
  MEMORY[0x28223BE20](v83);
  v17 = &v64 - v16;
  v84 = sub_2170096F4();
  v68 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v67 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7558, &qword_217058888);
  v66 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v70 = &v64 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7560, &qword_217058890);
  v69 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v64 - v20;
  v21 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v21 - 8);
  v72 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7568, &qword_217058898);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v88 = &v64 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7570, &qword_2170588A0);
  v32 = *(v31 - 8);
  v86 = v31;
  v87 = v32;
  MEMORY[0x28223BE20](v31);
  v89 = &v64 - v33;
  v34 = *a1;
  result = swift_beginAccess();
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v36 = *(a2 + 16);
  if (v34 >= *(v36 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v75 = v28;
  v80 = v17;
  v76 = a3;
  v77 = v15;
  v78 = v8;
  v79 = v12;
  v81 = a4;
  v37 = *(v36 + 8 * v34 + 32);
  v38 = *(v37 + 16);
  v90 = 0;
  v91 = v38;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v37;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688, &qword_217023FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7578, &qword_2170588A8);
  sub_2168B98BC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7580, &qword_2170588B0);
  v40 = sub_2166D9530(&qword_27CAC7588, &qword_27CAC7580, &qword_2170588B0, MEMORY[0x277CDF028]);
  v94 = v39;
  v95 = v40;
  swift_getOpaqueTypeConformance2();
  sub_21700B154();
  sub_216CE0E7C(v37, v25);
  v41 = type metadata accessor for MenuAction(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v41) == 1)
  {

    sub_216697664(v25, &qword_27CAB6DF0, &unk_2170152D0);
    v43 = v78;
    v42 = v79;
    v44 = v77;
    v45 = v76;
    v46 = v80;
    v47 = v75;
    v48 = v86;
LABEL_9:
    (*(v87 + 16))(v46, v89, v48);
    swift_storeEnumTagMultiPayload();
    v59 = sub_2166D9530(&qword_27CAC7590, &qword_27CAC7558, &qword_217058888, MEMORY[0x277CDD7C0]);
    v60 = sub_216C67918(&qword_27CAC7598, MEMORY[0x277CDE0F0], MEMORY[0x277CDE0E8]);
    v90 = v82;
    v91 = v84;
    v92 = v59;
    v93 = v60;
    swift_getOpaqueTypeConformance2();
    sub_216C67704();
    sub_217009554();
    goto LABEL_10;
  }

  v49 = v72;
  sub_216C67858();
  sub_216C677F8(v25, type metadata accessor for MenuAction);
  v50 = sub_216BADF14();
  sub_216C677F8(v49, type metadata accessor for MenuActionType);
  v46 = v80;
  v48 = v86;
  if (v50)
  {

    v43 = v78;
    v42 = v79;
    v44 = v77;
    v45 = v76;
    v47 = v75;
    goto LABEL_9;
  }

  v51 = *(v37 + 16);

  v43 = v78;
  v42 = v79;
  v44 = v77;
  v45 = v76;
  v47 = v75;
  if (v51 < 2)
  {
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v52);
  v72 = sub_216C67704();
  sub_217008284();
  v53 = v67;
  sub_2170096E4();
  v64 = sub_2166D9530(&qword_27CAC7590, &qword_27CAC7558, &qword_217058888, MEMORY[0x277CDD7C0]);
  v65 = sub_216C67918(&qword_27CAC7598, MEMORY[0x277CDE0F0], MEMORY[0x277CDE0E8]);
  v54 = v82;
  v55 = v84;
  v56 = v70;
  sub_21700A644();
  (*(v68 + 8))(v53, v55);
  (*(v66 + 8))(v56, v54);
  v57 = v69;
  (*(v69 + 16))(v46, v71, v85);
  swift_storeEnumTagMultiPayload();
  v90 = v54;
  v91 = v55;
  v92 = v64;
  v93 = v65;
  v48 = v86;
  swift_getOpaqueTypeConformance2();
  v58 = v85;
  sub_217009554();
  (*(v57 + 8))(v71, v58);
LABEL_10:
  if (v45 < 4)
  {
    v62 = 1;
  }

  else
  {
    v61 = v73;
    sub_21700B124();
    (*(v74 + 32))(v44, v61, v43);
    v62 = 0;
  }

  __swift_storeEnumTagSinglePayload(v44, v62, 1, v43);
  v63 = v88;
  sub_216753798();
  sub_2166A6EA4();
  sub_216753798();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75A8, &qword_2170588B8);
  sub_2166A6EA4();
  sub_216697664(v44, &qword_27CABB6B0, &qword_217023FC0);
  sub_2167537F8(v63);
  sub_216697664(v42, &qword_27CABB6B0, &qword_217023FC0);
  sub_2167537F8(v47);
  return (*(v87 + 8))(v89, v48);
}

void sub_216C66E50(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700D8E4();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7580, &qword_2170588B0);
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  v15 = type metadata accessor for MenuAction(0);
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*a1 < *(a2 + 16))
  {
    v22[1] = a3;
    v23 = v6;
    sub_216C67858();
    sub_216BAE324(v11);
    sub_216C67858();
    swift_allocObject();
    v19 = sub_216C67960();
    MEMORY[0x28223BE20](v19);
    v22[-2] = v18;
    v22[-1] = a2;
    type metadata accessor for ContextMenuItem(0);
    sub_216C67918(&qword_27CAC75B0, type metadata accessor for ContextMenuItem, &unk_217027958);
    sub_21700AF04();
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_21700F3B4();

    *&v27[0] = 0xD000000000000012;
    *(&v27[0] + 1) = 0x800000021708D470;
    v20 = sub_216BAE460();
    MEMORY[0x21CE9F490](v20);

    memset(v27, 0, sizeof(v27));
    sub_21700D894();

    sub_216697664(v27, &unk_27CABF7A0, &unk_217014D20);
    sub_2166D9530(&qword_27CAC7588, &qword_27CAC7580, &qword_2170588B0, MEMORY[0x277CDF028]);
    v21 = v25;
    sub_21700A204();
    (*(v26 + 8))(v8, v23);
    (*(v24 + 8))(v14, v21);
    sub_216C677F8(v18, type metadata accessor for MenuAction);
    return;
  }

  __break(1u);
}

uint64_t sub_216C67334@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  sub_216C67858();
  sub_216CE0E7C(a2, v10);
  v15 = type metadata accessor for MenuAction(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    sub_216697664(v10, &qword_27CAB6DF0, &unk_2170152D0);
LABEL_4:
    v17 = 0;
    goto LABEL_5;
  }

  sub_216C67858();
  sub_216C677F8(v10, type metadata accessor for MenuAction);
  v16 = sub_216BADF14();
  sub_216C677F8(v13, type metadata accessor for MenuActionType);
  if (v16)
  {
    goto LABEL_4;
  }

  v17 = *(a2 + 16) > 2uLL;
LABEL_5:
  sub_216CE0E7C(a2, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
  {
    sub_216697664(v7, &qword_27CAB6DF0, &unk_2170152D0);
  }

  else
  {
    sub_216C67858();
    sub_216C677F8(v7, type metadata accessor for MenuAction);
    v18 = sub_216BADF14();
    sub_216C677F8(v13, type metadata accessor for MenuActionType);
    if (!v18)
    {
      v19 = *(a2 + 16) > 1uLL;
      goto LABEL_9;
    }
  }

  v19 = 0;
LABEL_9:
  sub_216C67960();
  v20 = type metadata accessor for ContextMenuItem(0);
  *(a3 + v20[5]) = v17;
  *(a3 + v20[6]) = v19;
  v21 = v20[7];
  *(a3 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216C67658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7570, &qword_2170588A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_216C67704()
{
  result = qword_27CAC75A0;
  if (!qword_27CAC75A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7570, &qword_2170588A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7580, &qword_2170588B0);
    sub_2166D9530(&qword_27CAC7588, &qword_27CAC7580, &qword_2170588B0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC75A0);
  }

  return result;
}

uint64_t sub_216C677F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C67858()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C678B0()
{
  v1 = *(type metadata accessor for MenuAction(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216C672F8(v2);
}

uint64_t sub_216C67918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C67960()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_216C679D4(uint64_t *a1)
{
  v2 = *(type metadata accessor for MenuAction(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_216C6B974(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_216C67A7C(v6);
  *a1 = v3;
}

void sub_216C67A7C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21700F774();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MenuAction(0);
        v6 = sub_21700E8A4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MenuAction(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_216C687AC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_216C67BAC(0, v2, 1, a1);
  }
}

void sub_216C67BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v71);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v66 = &v51 - v12;
  MEMORY[0x28223BE20](v13);
  v65 = &v51 - v14;
  v61 = type metadata accessor for MenuAction(0);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v19);
  v53 = a2;
  if (a3 == a2)
  {
    return;
  }

  v22 = *a4;
  v23 = *(v20 + 72);
  v24 = *a4 + v23 * (a3 - 1);
  v58 = -v23;
  v59 = v22;
  v25 = a1 - a3;
  v52 = v23;
  v26 = v22 + v23 * a3;
  v62 = &v51 - v21;
LABEL_3:
  v56 = v24;
  v57 = a3;
  v54 = v26;
  v55 = v25;
  v27 = v25;
  v28 = v24;
  while (2)
  {
    v70 = v27;
    sub_216C67858();
    sub_216C67858();
    sub_216C67858();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = 1;
    v31 = 101;
    v68 = v28;
    v69 = v26;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v31 = 106;
        break;
      case 2:
        sub_216C677F8(v65, type metadata accessor for MenuActionType);
        v31 = 301;
        break;
      case 3:
        sub_216C677F8(v65, type metadata accessor for MenuActionType);
        v31 = 302;
        break;
      case 4:
        sub_216C677F8(v65, type metadata accessor for MenuActionType);
        v31 = 401;
        break;
      case 5:
        sub_216C677F8(v65, type metadata accessor for MenuActionType);
        v31 = 407;
        break;
      case 6:
        sub_216C677F8(v65, type metadata accessor for MenuActionType);
        v31 = 504;
        break;
      case 7:
        sub_216C677F8(v65, type metadata accessor for MenuActionType);
        v31 = 601;
        break;
      case 8:
        v30 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v31 = 904;
        break;
      case 9:
        break;
      case 10:
        v31 = 102;
        break;
      case 11:
        v31 = 103;
        break;
      case 12:
        v31 = 104;
        break;
      case 13:
        v31 = 107;
        break;
      case 14:
        v31 = 201;
        break;
      case 15:
        v31 = 202;
        break;
      case 16:
        v31 = 303;
        break;
      case 17:
        v31 = 402;
        break;
      case 18:
        v31 = 403;
        break;
      case 19:
        v31 = 404;
        break;
      case 20:
        v31 = 405;
        break;
      case 21:
        v31 = 406;
        break;
      case 22:
        v31 = 408;
        break;
      case 23:
        v31 = 409;
        break;
      case 24:
        v31 = 410;
        break;
      case 25:
        v31 = 411;
        break;
      case 26:
        v31 = 412;
        break;
      case 27:
        v31 = 413;
        break;
      case 28:
        v31 = 501;
        break;
      case 29:
        v31 = 502;
        break;
      case 30:
        v31 = 503;
        break;
      case 31:
        v31 = 505;
        break;
      case 32:
        v31 = 602;
        break;
      case 33:
        v31 = 603;
        break;
      case 34:
        v31 = 605;
        break;
      case 35:
        v31 = 604;
        break;
      case 36:
        v31 = 606;
        break;
      case 37:
        v31 = 701;
        break;
      case 38:
        v31 = 702;
        break;
      case 39:
        v36 = 0;
        v31 = 703;
        break;
      case 40:
        v35 = 0;
        v36 = 0;
        v31 = 704;
        break;
      case 41:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v31 = 801;
        break;
      case 42:
        v30 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v31 = 903;
        break;
      case 43:
        v30 = 0;
        v32 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v31 = 902;
        break;
      case 44:
        v30 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v31 = 901;
        break;
      default:
        sub_216C677F8(v65, type metadata accessor for MenuActionType);
        v31 = 105;
        break;
    }

    v67 = v31;
    sub_216C67858();
    v38 = swift_getEnumCaseMultiPayload();
    v39 = 101;
    switch(v38)
    {
      case 1:
        v39 = 106;
        goto LABEL_101;
      case 2:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v39 = 301;
        goto LABEL_101;
      case 3:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v39 = 302;
        goto LABEL_101;
      case 4:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v39 = 401;
        goto LABEL_101;
      case 5:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v39 = 407;
        goto LABEL_101;
      case 6:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v39 = 504;
        goto LABEL_101;
      case 7:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v39 = 601;
        goto LABEL_101;
      case 8:
        v40 = v62;
        if ((v37 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 9:
        goto LABEL_101;
      case 10:
        v39 = 102;
        goto LABEL_101;
      case 11:
        v39 = 103;
        goto LABEL_101;
      case 12:
        v39 = 104;
        goto LABEL_101;
      case 13:
        v39 = 107;
        goto LABEL_101;
      case 14:
        v39 = 201;
        goto LABEL_101;
      case 15:
        v39 = 202;
        goto LABEL_101;
      case 16:
        v39 = 303;
        goto LABEL_101;
      case 17:
        v39 = 402;
        goto LABEL_101;
      case 18:
        v39 = 403;
        goto LABEL_101;
      case 19:
        v39 = 404;
        goto LABEL_101;
      case 20:
        v39 = 405;
        goto LABEL_101;
      case 21:
        v39 = 406;
        goto LABEL_101;
      case 22:
        v39 = 408;
        goto LABEL_101;
      case 23:
        v39 = 409;
        goto LABEL_101;
      case 24:
        v39 = 410;
        goto LABEL_101;
      case 25:
        v39 = 411;
        goto LABEL_101;
      case 26:
        v39 = 412;
        goto LABEL_101;
      case 27:
        v39 = 413;
        goto LABEL_101;
      case 28:
        v39 = 501;
        goto LABEL_101;
      case 29:
        v39 = 502;
        goto LABEL_101;
      case 30:
        v39 = 503;
        goto LABEL_101;
      case 31:
        v39 = 505;
        goto LABEL_101;
      case 32:
        v39 = 602;
        goto LABEL_101;
      case 33:
        v39 = 603;
        goto LABEL_101;
      case 34:
        v39 = 605;
        goto LABEL_101;
      case 35:
        v39 = 604;
        goto LABEL_101;
      case 36:
        v39 = 606;
        goto LABEL_101;
      case 37:
        v39 = 701;
        goto LABEL_101;
      case 38:
        v39 = 702;
        goto LABEL_101;
      case 39:
        v40 = v62;
        if ((v36 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 40:
        v40 = v62;
        if ((v35 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 41:
        v40 = v62;
        if ((v34 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 42:
        v40 = v62;
        if ((v33 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 43:
        v40 = v62;
        if ((v32 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      case 44:
        v40 = v62;
        if ((v30 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_102;
      default:
        sub_216C677F8(v66, type metadata accessor for MenuActionType);
        v39 = 105;
LABEL_101:
        v40 = v62;
        if (v67 < v39)
        {
LABEL_102:
          sub_216C67858();
          v41 = 10;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
            case 9u:
            case 0xAu:
            case 0xBu:
            case 0xCu:
            case 0xDu:
              goto LABEL_113;
            case 2u:
            case 3u:
              sub_216C677F8(v63, type metadata accessor for MenuActionType);
              goto LABEL_107;
            case 4u:
            case 5u:
              sub_216C677F8(v63, type metadata accessor for MenuActionType);
              goto LABEL_103;
            case 6u:
              sub_216C677F8(v63, type metadata accessor for MenuActionType);
              goto LABEL_115;
            case 7u:
              sub_216C677F8(v63, type metadata accessor for MenuActionType);
              goto LABEL_111;
            case 8u:
            case 0x2Au:
            case 0x2Bu:
            case 0x2Cu:
              v41 = 3;
              break;
            case 0xEu:
            case 0xFu:
              v41 = 2;
              break;
            case 0x10u:
LABEL_107:
              v41 = 5;
              break;
            case 0x11u:
            case 0x12u:
            case 0x13u:
            case 0x14u:
            case 0x15u:
            case 0x16u:
            case 0x17u:
            case 0x18u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
LABEL_103:
              v41 = 14;
              break;
            case 0x1Cu:
            case 0x1Du:
            case 0x1Eu:
            case 0x1Fu:
LABEL_115:
              v41 = 7;
              break;
            case 0x20u:
            case 0x21u:
            case 0x22u:
            case 0x23u:
            case 0x24u:
LABEL_111:
              v41 = 4;
              break;
            case 0x25u:
            case 0x26u:
            case 0x27u:
            case 0x28u:
              v41 = 9;
              break;
            case 0x29u:
              break;
            default:
              sub_216C677F8(v63, type metadata accessor for MenuActionType);
LABEL_113:
              v41 = 0;
              break;
          }

          sub_216C67858();
          v42 = 8;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
            case 9u:
            case 0xAu:
            case 0xBu:
            case 0xCu:
            case 0xDu:
              goto LABEL_130;
            case 2u:
            case 3u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_127;
            case 4u:
            case 5u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_117;
            case 6u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_134;
            case 7u:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
              goto LABEL_137;
            case 8u:
            case 0x2Au:
            case 0x2Bu:
            case 0x2Cu:
              goto LABEL_140;
            case 0xEu:
            case 0xFu:
              v43 = 1 << v41;
              v44 = 18104;
              goto LABEL_139;
            case 0x10u:
LABEL_127:
              v43 = 1 << v41;
              v44 = 18072;
              goto LABEL_139;
            case 0x11u:
            case 0x12u:
            case 0x13u:
            case 0x14u:
            case 0x15u:
            case 0x16u:
            case 0x17u:
            case 0x18u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
LABEL_117:
              if (v41 > 0xA)
              {
                goto LABEL_140;
              }

              v43 = 1 << v41;
              v44 = 1688;
              goto LABEL_139;
            case 0x1Cu:
            case 0x1Du:
            case 0x1Eu:
            case 0x1Fu:
LABEL_134:
              if (v41 > 0xA)
              {
                goto LABEL_140;
              }

              v43 = 1 << v41;
              v44 = 1560;
              goto LABEL_139;
            case 0x20u:
            case 0x21u:
            case 0x22u:
            case 0x23u:
            case 0x24u:
LABEL_137:
              if (v41 > 0xA)
              {
                goto LABEL_140;
              }

              v43 = 1 << v41;
              v44 = 1544;
LABEL_139:
              if ((v43 & v44) != 0)
              {
                goto LABEL_145;
              }

LABEL_140:
              sub_216C677F8(v18, type metadata accessor for MenuAction);
              sub_216C677F8(v40, type metadata accessor for MenuAction);
              v48 = v69;
              v49 = v70;
              v50 = v68;
LABEL_141:
              if (!v59)
              {
                __break(1u);
                return;
              }

              sub_216C67960();
              swift_arrayInitWithTakeFrontToBack();
              sub_216C67960();
              v28 = v50 + v58;
              v26 = v48 + v58;
              v47 = __CFADD__(v49, 1);
              v27 = v49 + 1;
              if (v47)
              {
                goto LABEL_146;
              }

              break;
            case 0x25u:
            case 0x26u:
            case 0x27u:
            case 0x28u:
              if (v41 == 3 || v41 == 10)
              {
                goto LABEL_145;
              }

              goto LABEL_140;
            case 0x29u:
              goto LABEL_131;
            default:
              sub_216C677F8(v64, type metadata accessor for MenuActionType);
LABEL_130:
              v42 = 1;
LABEL_131:
              v46 = qword_2170588F0[v41];
              sub_216C677F8(v18, type metadata accessor for MenuAction);
              sub_216C677F8(v40, type metadata accessor for MenuAction);
              v47 = v42 >= v46;
              v48 = v69;
              v49 = v70;
              v50 = v68;
              if (!v47)
              {
                goto LABEL_146;
              }

              goto LABEL_141;
          }

          continue;
        }

LABEL_145:
        sub_216C677F8(v18, type metadata accessor for MenuAction);
        sub_216C677F8(v40, type metadata accessor for MenuAction);
LABEL_146:
        a3 = v57 + 1;
        v24 = v56 + v52;
        v25 = v55 - 1;
        v26 = v54 + v52;
        if (v57 + 1 != v53)
        {
          goto LABEL_3;
        }

        return;
    }
  }
}

void sub_216C687AC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v193 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v193);
  v187 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v186 = &v160 - v10;
  MEMORY[0x28223BE20](v11);
  v170 = &v160 - v12;
  MEMORY[0x28223BE20](v13);
  v169 = &v160 - v14;
  MEMORY[0x28223BE20](v15);
  v175 = &v160 - v16;
  MEMORY[0x28223BE20](v17);
  v174 = &v160 - v18;
  v185 = type metadata accessor for MenuAction(0);
  v176 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v168 = &v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v184 = &v160 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v160 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v160 - v26;
  MEMORY[0x28223BE20](v28);
  v181 = &v160 - v29;
  MEMORY[0x28223BE20](v30);
  v179 = &v160 - v31;
  MEMORY[0x28223BE20](v32);
  v160 = &v160 - v33;
  MEMORY[0x28223BE20](v34);
  v162 = &v160 - v35;
  v177 = a3;
  v36 = a3[1];
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_340:
    v193 = *v164;
    if (!v193)
    {
      goto LABEL_381;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_375:
      v38 = sub_216C6B740(v38);
    }

    v152 = v38;
    v154 = *(v38 + 2);
    v38 += 16;
    for (i = v154; i >= 2; *v38 = i)
    {
      if (!*v177)
      {
        goto LABEL_378;
      }

      v155 = &v152[16 * i];
      v156 = *v155;
      v157 = &v38[16 * i];
      v158 = *(v157 + 1);
      sub_216C6A1B4(*v177 + *(v176 + 72) * *v155, *v177 + *(v176 + 72) * *v157, *v177 + *(v176 + 72) * v158, v193);
      if (v5)
      {
        break;
      }

      if (v158 < v156)
      {
        goto LABEL_366;
      }

      if (i - 2 >= *v38)
      {
        goto LABEL_367;
      }

      *v155 = v156;
      *(v155 + 1) = v158;
      v159 = *v38 - i;
      if (*v38 < i)
      {
        goto LABEL_368;
      }

      i = *v38 - 1;
      memmove(v157, v157 + 16, 16 * v159);
    }

LABEL_350:

    return;
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v163 = a4;
  v188 = v27;
  v189 = v24;
  while (1)
  {
    v39 = v37 + 1;
    v165 = v37;
    if (v37 + 1 < v36)
    {
      v161 = v38;
      v40 = *(v176 + 72);
      v41 = *v177 + v40 * v39;
      v192 = *v177;
      v182 = v36;
      sub_216C67858();
      v180 = v37 + 1;
      v42 = v160;
      sub_216C67858();
      v43 = v162;
      LODWORD(v173) = sub_2169FC538();
      v44 = v42;
      v39 = v180;
      sub_216C677F8(v44, type metadata accessor for MenuAction);
      sub_216C677F8(v43, type metadata accessor for MenuAction);
      v45 = v182;
      v46 = v37 + 2;
      v183 = v40;
      v38 = (v192 + v40 * (v37 + 2));
      while (2)
      {
        v47 = v46;
        if (v39 + 1 < v45)
        {
          v190 = v46;
          v180 = v39;
          v178 = v5;
          sub_216C67858();
          sub_216C67858();
          sub_216C67858();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v49 = 1;
          v50 = 101;
          v191 = v38;
          v192 = v41;
          v51 = 1;
          v52 = 1;
          v53 = 1;
          v54 = 1;
          v55 = 1;
          v56 = 1;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              v50 = 106;
              break;
            case 2:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 301;
              break;
            case 3:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 302;
              break;
            case 4:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 401;
              break;
            case 5:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 407;
              break;
            case 6:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 504;
              break;
            case 7:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 601;
              break;
            case 8:
              v49 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v50 = 904;
              break;
            case 9:
              break;
            case 10:
              v50 = 102;
              break;
            case 11:
              v50 = 103;
              break;
            case 12:
              v50 = 104;
              break;
            case 13:
              v50 = 107;
              break;
            case 14:
              v50 = 201;
              break;
            case 15:
              v50 = 202;
              break;
            case 16:
              v50 = 303;
              break;
            case 17:
              v50 = 402;
              break;
            case 18:
              v50 = 403;
              break;
            case 19:
              v50 = 404;
              break;
            case 20:
              v50 = 405;
              break;
            case 21:
              v50 = 406;
              break;
            case 22:
              v50 = 408;
              break;
            case 23:
              v50 = 409;
              break;
            case 24:
              v50 = 410;
              break;
            case 25:
              v50 = 411;
              break;
            case 26:
              v50 = 412;
              break;
            case 27:
              v50 = 413;
              break;
            case 28:
              v50 = 501;
              break;
            case 29:
              v50 = 502;
              break;
            case 30:
              v50 = 503;
              break;
            case 31:
              v50 = 505;
              break;
            case 32:
              v50 = 602;
              break;
            case 33:
              v50 = 603;
              break;
            case 34:
              v50 = 605;
              break;
            case 35:
              v50 = 604;
              break;
            case 36:
              v50 = 606;
              break;
            case 37:
              v50 = 701;
              break;
            case 38:
              v50 = 702;
              break;
            case 39:
              v55 = 0;
              v50 = 703;
              break;
            case 40:
              v54 = 0;
              v55 = 0;
              v50 = 704;
              break;
            case 41:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 801;
              break;
            case 42:
              v49 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 903;
              break;
            case 43:
              v49 = 0;
              v51 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 902;
              break;
            case 44:
              v49 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 901;
              break;
            default:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 105;
              break;
          }

          v57 = v49;
          sub_216C67858();
          v58 = swift_getEnumCaseMultiPayload();
          v59 = 101;
          switch(v58)
          {
            case 1:
              v59 = 106;
              goto LABEL_103;
            case 2:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 301;
              goto LABEL_103;
            case 3:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 302;
              goto LABEL_103;
            case 4:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 401;
              goto LABEL_103;
            case 5:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 407;
              goto LABEL_103;
            case 6:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 504;
              goto LABEL_103;
            case 7:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 601;
              goto LABEL_103;
            case 8:
              if (v56)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 9:
              goto LABEL_103;
            case 10:
              v59 = 102;
              goto LABEL_103;
            case 11:
              v59 = 103;
              goto LABEL_103;
            case 12:
              v59 = 104;
              goto LABEL_103;
            case 13:
              v59 = 107;
              goto LABEL_103;
            case 14:
              v59 = 201;
              goto LABEL_103;
            case 15:
              v59 = 202;
              goto LABEL_103;
            case 16:
              v59 = 303;
              goto LABEL_103;
            case 17:
              v59 = 402;
              goto LABEL_103;
            case 18:
              v59 = 403;
              goto LABEL_103;
            case 19:
              v59 = 404;
              goto LABEL_103;
            case 20:
              v59 = 405;
              goto LABEL_103;
            case 21:
              v59 = 406;
              goto LABEL_103;
            case 22:
              v59 = 408;
              goto LABEL_103;
            case 23:
              v59 = 409;
              goto LABEL_103;
            case 24:
              v59 = 410;
              goto LABEL_103;
            case 25:
              v59 = 411;
              goto LABEL_103;
            case 26:
              v59 = 412;
              goto LABEL_103;
            case 27:
              v59 = 413;
              goto LABEL_103;
            case 28:
              v59 = 501;
              goto LABEL_103;
            case 29:
              v59 = 502;
              goto LABEL_103;
            case 30:
              v59 = 503;
              goto LABEL_103;
            case 31:
              v59 = 505;
              goto LABEL_103;
            case 32:
              v59 = 602;
              goto LABEL_103;
            case 33:
              v59 = 603;
              goto LABEL_103;
            case 34:
              v59 = 605;
              goto LABEL_103;
            case 35:
              v59 = 604;
              goto LABEL_103;
            case 36:
              v59 = 606;
              goto LABEL_103;
            case 37:
              v59 = 701;
              goto LABEL_103;
            case 38:
              v59 = 702;
              goto LABEL_103;
            case 39:
              if (v55)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 40:
              if (v54)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 41:
              if (v53)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 42:
              if (v52)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 43:
              if ((v51 & 1) == 0)
              {
                goto LABEL_54;
              }

              goto LABEL_104;
            case 44:
              if (v57)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            default:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 105;
LABEL_103:
              if (v50 >= v59)
              {
LABEL_54:
                LOBYTE(v60) = 0;
                v5 = v178;
                v62 = v191;
                v61 = v192;
              }

              else
              {
LABEL_104:
                sub_216C67858();
                v63 = 1;
                v64 = 10;
                v65 = 0;
                v66 = 1;
                switch(swift_getEnumCaseMultiPayload())
                {
                  case 1u:
                  case 9u:
                  case 0xAu:
                  case 0xBu:
                  case 0xCu:
                  case 0xDu:
                    goto LABEL_115;
                  case 2u:
                  case 3u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_109;
                  case 4u:
                  case 5u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_105;
                  case 6u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_117;
                  case 7u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_113;
                  case 8u:
                  case 0x2Au:
                  case 0x2Bu:
                  case 0x2Cu:
                    v63 = 0;
                    v65 = 1;
                    v64 = 3;
                    goto LABEL_119;
                  case 0xEu:
                  case 0xFu:
                    v64 = 2;
                    goto LABEL_118;
                  case 0x10u:
LABEL_109:
                    v64 = 5;
                    goto LABEL_118;
                  case 0x11u:
                  case 0x12u:
                  case 0x13u:
                  case 0x14u:
                  case 0x15u:
                  case 0x16u:
                  case 0x17u:
                  case 0x18u:
                  case 0x19u:
                  case 0x1Au:
                  case 0x1Bu:
LABEL_105:
                    v66 = 0;
                    v64 = 14;
                    goto LABEL_118;
                  case 0x1Cu:
                  case 0x1Du:
                  case 0x1Eu:
                  case 0x1Fu:
LABEL_117:
                    v64 = 7;
                    goto LABEL_118;
                  case 0x20u:
                  case 0x21u:
                  case 0x22u:
                  case 0x23u:
                  case 0x24u:
LABEL_113:
                    v64 = 4;
                    goto LABEL_118;
                  case 0x25u:
                  case 0x26u:
                  case 0x27u:
                  case 0x28u:
                    v64 = 9;
                    goto LABEL_118;
                  case 0x29u:
                    goto LABEL_119;
                  default:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
LABEL_115:
                    v64 = 0;
LABEL_118:
                    v65 = 1;
LABEL_119:
                    sub_216C67858();
                    v67 = swift_getEnumCaseMultiPayload();
                    LOBYTE(v60) = 1;
                    v68 = 8;
                    v5 = v178;
                    v62 = v191;
                    v61 = v192;
                    switch(v67)
                    {
                      case 1:
                      case 9:
                      case 10:
                      case 11:
                      case 12:
                      case 13:
                        goto LABEL_129;
                      case 2:
                      case 3:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        goto LABEL_126;
                      case 4:
                      case 5:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

                        goto LABEL_121;
                      case 6:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        goto LABEL_132;
                      case 7:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        goto LABEL_135;
                      case 8:
                      case 42:
                      case 43:
                      case 44:
                        goto LABEL_138;
                      case 14:
                      case 15:
                        v69 = 14663;
                        goto LABEL_137;
                      case 16:
LABEL_126:
                        v69 = 14695;
                        goto LABEL_137;
                      case 17:
                      case 18:
                      case 19:
                      case 20:
                      case 21:
                      case 22:
                      case 23:
                      case 24:
                      case 25:
                      case 26:
                      case 27:
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

LABEL_121:
                        v69 = 359;
                        goto LABEL_137;
                      case 28:
                      case 29:
                      case 30:
                      case 31:
LABEL_132:
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

                        v69 = 487;
                        goto LABEL_137;
                      case 32:
                      case 33:
                      case 34:
                      case 35:
                      case 36:
LABEL_135:
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

                        v69 = 503;
LABEL_137:
                        v60 = v69 >> v64;
                        break;
                      case 37:
                      case 38:
                      case 39:
                      case 40:
                        LOBYTE(v60) = v63 & v65;
                        goto LABEL_138;
                      case 41:
                        goto LABEL_130;
                      default:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
LABEL_129:
                        v68 = 1;
LABEL_130:
                        LOBYTE(v60) = v68 >= qword_2170588F0[v64];
                        break;
                    }

                    break;
                }
              }

LABEL_138:
              sub_216C677F8(v181, type metadata accessor for MenuAction);
              sub_216C677F8(v179, type metadata accessor for MenuAction);
              v38 = &v62[v183];
              v41 = v61 + v183;
              v39 = v180 + 1;
              v47 = v190;
              v46 = v190 + 1;
              v45 = v182;
              if ((v173 & 1) != (v60 & 1))
              {
                goto LABEL_141;
              }

              continue;
          }
        }

        break;
      }

      v39 = v45;
      if ((v173 & 1) == 0)
      {
        goto LABEL_161;
      }

LABEL_141:
      v70 = v165;
      if (v39 < v165)
      {
        goto LABEL_372;
      }

      if (v165 < v39)
      {
        if (v45 >= v47)
        {
          v71 = v47;
        }

        else
        {
          v71 = v45;
        }

        v72 = v183 * (v71 - 1);
        v73 = v183 * v71;
        v74 = v39;
        v75 = v165 * v183;
        v180 = v74;
        do
        {
          if (v70 != --v74)
          {
            v76 = *v177;
            if (!*v177)
            {
              goto LABEL_379;
            }

            sub_216C67960();
            v77 = v75 < v72 || v76 + v75 >= (v76 + v73);
            if (v77)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v75 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_216C67960();
          }

          ++v70;
          v72 -= v183;
          v73 -= v183;
          v75 += v183;
        }

        while (v70 < v74);
        a4 = v163;
        v38 = v161;
        v39 = v180;
      }

      else
      {
LABEL_161:
        a4 = v163;
        v38 = v161;
      }
    }

    v78 = v177[1];
    if (v39 >= v78)
    {
      goto LABEL_284;
    }

    if (__OFSUB__(v39, v165))
    {
      goto LABEL_371;
    }

    if (v39 - v165 >= a4)
    {
LABEL_284:
      v79 = v165;
      goto LABEL_285;
    }

    v79 = v165;
    v80 = v165 + a4;
    if (__OFADD__(v165, a4))
    {
      goto LABEL_373;
    }

    if (v80 >= v78)
    {
      v80 = v177[1];
    }

    if (v80 < v165)
    {
LABEL_374:
      __break(1u);
      goto LABEL_375;
    }

    if (v39 != v80)
    {
      break;
    }

LABEL_285:
    if (v39 < v79)
    {
      goto LABEL_370;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216938194();
      v38 = v150;
    }

    v106 = v38;
    v107 = *(v38 + 2);
    v108 = v106;
    v109 = *(v106 + 3);
    v110 = v107 + 1;
    v180 = v39;
    if (v107 >= v109 >> 1)
    {
      sub_216938194();
      v108 = v151;
    }

    *(v108 + 2) = v110;
    v111 = v108 + 32;
    v112 = &v108[16 * v107 + 32];
    v113 = v180;
    *v112 = v165;
    v112[1] = v113;
    v192 = *v164;
    if (!v192)
    {
      goto LABEL_380;
    }

    if (v107)
    {
      v38 = v108;
      while (1)
      {
        v114 = v110 - 1;
        v115 = &v111[16 * v110 - 16];
        v116 = &v38[16 * v110];
        if (v110 >= 4)
        {
          break;
        }

        if (v110 == 3)
        {
          v117 = *(v38 + 4);
          v118 = *(v38 + 5);
          v127 = __OFSUB__(v118, v117);
          v119 = v118 - v117;
          v120 = v127;
LABEL_306:
          if (v120)
          {
            goto LABEL_357;
          }

          v132 = *v116;
          v131 = *(v116 + 1);
          v133 = __OFSUB__(v131, v132);
          v134 = v131 - v132;
          v135 = v133;
          if (v133)
          {
            goto LABEL_360;
          }

          v136 = *(v115 + 1);
          v137 = v136 - *v115;
          if (__OFSUB__(v136, *v115))
          {
            goto LABEL_363;
          }

          if (__OFADD__(v134, v137))
          {
            goto LABEL_365;
          }

          if (v134 + v137 >= v119)
          {
            if (v119 < v137)
            {
              v114 = v110 - 2;
            }

            goto LABEL_328;
          }

          goto LABEL_321;
        }

        if (v110 < 2)
        {
          goto LABEL_359;
        }

        v139 = *v116;
        v138 = *(v116 + 1);
        v127 = __OFSUB__(v138, v139);
        v134 = v138 - v139;
        v135 = v127;
LABEL_321:
        if (v135)
        {
          goto LABEL_362;
        }

        v141 = *v115;
        v140 = *(v115 + 1);
        v127 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v127)
        {
          goto LABEL_364;
        }

        if (v142 < v134)
        {
          goto LABEL_337;
        }

LABEL_328:
        if (v114 - 1 >= v110)
        {
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
          goto LABEL_374;
        }

        if (!*v177)
        {
          goto LABEL_377;
        }

        v146 = &v111[16 * v114 - 16];
        v147 = *v146;
        v38 = &v111[16 * v114];
        v148 = *(v38 + 1);
        sub_216C6A1B4(*v177 + *(v176 + 72) * *v146, *v177 + *(v176 + 72) * *v38, *v177 + *(v176 + 72) * v148, v192);
        if (v5)
        {
          goto LABEL_350;
        }

        if (v148 < v147)
        {
          goto LABEL_352;
        }

        v149 = *(v108 + 2);
        if (v114 > v149)
        {
          goto LABEL_353;
        }

        *v146 = v147;
        v146[1] = v148;
        if (v114 >= v149)
        {
          goto LABEL_354;
        }

        v110 = v149 - 1;
        memmove(&v111[16 * v114], v38 + 16, 16 * (v149 - 1 - v114));
        v38 = v108;
        *(v108 + 2) = v149 - 1;
        if (v149 <= 2)
        {
          goto LABEL_337;
        }
      }

      v121 = &v111[16 * v110];
      v122 = *(v121 - 8);
      v123 = *(v121 - 7);
      v127 = __OFSUB__(v123, v122);
      v124 = v123 - v122;
      if (v127)
      {
        goto LABEL_355;
      }

      v126 = *(v121 - 6);
      v125 = *(v121 - 5);
      v127 = __OFSUB__(v125, v126);
      v119 = v125 - v126;
      v120 = v127;
      if (v127)
      {
        goto LABEL_356;
      }

      v128 = *(v116 + 1);
      v129 = v128 - *v116;
      if (__OFSUB__(v128, *v116))
      {
        goto LABEL_358;
      }

      v127 = __OFADD__(v119, v129);
      v130 = v119 + v129;
      if (v127)
      {
        goto LABEL_361;
      }

      if (v130 >= v124)
      {
        v144 = *v115;
        v143 = *(v115 + 1);
        v127 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v127)
        {
          goto LABEL_369;
        }

        if (v119 < v145)
        {
          v114 = v110 - 2;
        }

        goto LABEL_328;
      }

      goto LABEL_306;
    }

    v38 = v108;
LABEL_337:
    v36 = v177[1];
    v37 = v180;
    a4 = v163;
    if (v180 >= v36)
    {
      goto LABEL_340;
    }
  }

  v161 = v38;
  v178 = v5;
  v81 = *v177;
  v82 = *(v176 + 72);
  v83 = *v177 + v82 * (v39 - 1);
  v182 = -v82;
  v183 = v81;
  v84 = (v165 - v39);
  v166 = v82;
  v85 = v81 + v39 * v82;
  v167 = v80;
  while (2)
  {
    v180 = v39;
    v171 = v85;
    v172 = v84;
    v173 = v83;
    v86 = v84;
LABEL_172:
    v191 = v86;
    sub_216C67858();
    sub_216C67858();
    sub_216C67858();
    v87 = swift_getEnumCaseMultiPayload();
    v88 = 1;
    v89 = 101;
    v192 = v85;
    v90 = 1;
    v91 = 1;
    v92 = 1;
    v93 = 1;
    v94 = 1;
    v95 = 1;
    switch(v87)
    {
      case 1:
        v89 = 106;
        break;
      case 2:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 301;
        break;
      case 3:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 302;
        break;
      case 4:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 401;
        break;
      case 5:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 407;
        break;
      case 6:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 504;
        break;
      case 7:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 601;
        break;
      case 8:
        v88 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v89 = 904;
        break;
      case 9:
        break;
      case 10:
        v89 = 102;
        break;
      case 11:
        v89 = 103;
        break;
      case 12:
        v89 = 104;
        break;
      case 13:
        v89 = 107;
        break;
      case 14:
        v89 = 201;
        break;
      case 15:
        v89 = 202;
        break;
      case 16:
        v89 = 303;
        break;
      case 17:
        v89 = 402;
        break;
      case 18:
        v89 = 403;
        break;
      case 19:
        v89 = 404;
        break;
      case 20:
        v89 = 405;
        break;
      case 21:
        v89 = 406;
        break;
      case 22:
        v89 = 408;
        break;
      case 23:
        v89 = 409;
        break;
      case 24:
        v89 = 410;
        break;
      case 25:
        v89 = 411;
        break;
      case 26:
        v89 = 412;
        break;
      case 27:
        v89 = 413;
        break;
      case 28:
        v89 = 501;
        break;
      case 29:
        v89 = 502;
        break;
      case 30:
        v89 = 503;
        break;
      case 31:
        v89 = 505;
        break;
      case 32:
        v89 = 602;
        break;
      case 33:
        v89 = 603;
        break;
      case 34:
        v89 = 605;
        break;
      case 35:
        v89 = 604;
        break;
      case 36:
        v89 = 606;
        break;
      case 37:
        v89 = 701;
        break;
      case 38:
        v89 = 702;
        break;
      case 39:
        v94 = 0;
        v89 = 703;
        break;
      case 40:
        v93 = 0;
        v94 = 0;
        v89 = 704;
        break;
      case 41:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 801;
        break;
      case 42:
        v88 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 903;
        break;
      case 43:
        v88 = 0;
        v90 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 902;
        break;
      case 44:
        v88 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 901;
        break;
      default:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 105;
        break;
    }

    v190 = v89;
    sub_216C67858();
    v96 = swift_getEnumCaseMultiPayload();
    v97 = 101;
    switch(v96)
    {
      case 1:
        v97 = 106;
        goto LABEL_269;
      case 2:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 301;
        goto LABEL_269;
      case 3:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 302;
        goto LABEL_269;
      case 4:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 401;
        goto LABEL_269;
      case 5:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 407;
        goto LABEL_269;
      case 6:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 504;
        goto LABEL_269;
      case 7:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 601;
        goto LABEL_269;
      case 8:
        v98 = v189;
        if ((v95 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 9:
        goto LABEL_269;
      case 10:
        v97 = 102;
        goto LABEL_269;
      case 11:
        v97 = 103;
        goto LABEL_269;
      case 12:
        v97 = 104;
        goto LABEL_269;
      case 13:
        v97 = 107;
        goto LABEL_269;
      case 14:
        v97 = 201;
        goto LABEL_269;
      case 15:
        v97 = 202;
        goto LABEL_269;
      case 16:
        v97 = 303;
        goto LABEL_269;
      case 17:
        v97 = 402;
        goto LABEL_269;
      case 18:
        v97 = 403;
        goto LABEL_269;
      case 19:
        v97 = 404;
        goto LABEL_269;
      case 20:
        v97 = 405;
        goto LABEL_269;
      case 21:
        v97 = 406;
        goto LABEL_269;
      case 22:
        v97 = 408;
        goto LABEL_269;
      case 23:
        v97 = 409;
        goto LABEL_269;
      case 24:
        v97 = 410;
        goto LABEL_269;
      case 25:
        v97 = 411;
        goto LABEL_269;
      case 26:
        v97 = 412;
        goto LABEL_269;
      case 27:
        v97 = 413;
        goto LABEL_269;
      case 28:
        v97 = 501;
        goto LABEL_269;
      case 29:
        v97 = 502;
        goto LABEL_269;
      case 30:
        v97 = 503;
        goto LABEL_269;
      case 31:
        v97 = 505;
        goto LABEL_269;
      case 32:
        v97 = 602;
        goto LABEL_269;
      case 33:
        v97 = 603;
        goto LABEL_269;
      case 34:
        v97 = 605;
        goto LABEL_269;
      case 35:
        v97 = 604;
        goto LABEL_269;
      case 36:
        v97 = 606;
        goto LABEL_269;
      case 37:
        v97 = 701;
        goto LABEL_269;
      case 38:
        v97 = 702;
        goto LABEL_269;
      case 39:
        v98 = v189;
        if ((v94 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 40:
        v98 = v189;
        if ((v93 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 41:
        v98 = v189;
        if ((v92 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 42:
        v98 = v189;
        if ((v91 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 43:
        v98 = v189;
        if ((v90 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 44:
        v98 = v189;
        if ((v88 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      default:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 105;
LABEL_269:
        v98 = v189;
        if (v190 >= v97)
        {
LABEL_281:
          sub_216C677F8(v98, type metadata accessor for MenuAction);
          sub_216C677F8(v188, type metadata accessor for MenuAction);
LABEL_282:
          v39 = v180 + 1;
          v83 = v173 + v166;
          v84 = v172 - 1;
          v85 = v171 + v166;
          if (v180 + 1 == v167)
          {
            v39 = v167;
            v5 = v178;
            v38 = v161;
            goto LABEL_284;
          }

          continue;
        }

LABEL_270:
        v99 = v188;
        v100 = sub_216BADF14();
        v101 = sub_216BADF14();
        if (v101 > 0xEu)
        {
          v102 = 0;
        }

        else
        {
          v102 = qword_2170588F0[v101];
        }

        v103 = v192;
        if (v100 > 0xEu)
        {
          v104 = 0;
        }

        else
        {
          v104 = qword_2170588F0[v100];
        }

        sub_216C677F8(v98, type metadata accessor for MenuAction);
        sub_216C677F8(v99, type metadata accessor for MenuAction);
        if (v102 < v104)
        {
          goto LABEL_282;
        }

        v105 = v191;
        if (v183)
        {
          sub_216C67960();
          swift_arrayInitWithTakeFrontToBack();
          sub_216C67960();
          v83 += v182;
          v85 = v103 + v182;
          v77 = __CFADD__(v105, 1);
          v86 = v105 + 1;
          if (v77)
          {
            goto LABEL_282;
          }

          goto LABEL_172;
        }

        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
        return;
    }
  }
}

void sub_216C6A1B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v101 = type metadata accessor for MenuActionType(0);
  MEMORY[0x28223BE20](v101);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v83 - v10;
  MEMORY[0x28223BE20](v11);
  v86 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v89 = &v83 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v83 - v16;
  MEMORY[0x28223BE20](v17);
  v93 = &v83 - v18;
  MEMORY[0x28223BE20](v19);
  v92 = &v83 - v20;
  v94 = type metadata accessor for MenuAction(0);
  MEMORY[0x28223BE20](v94);
  v95 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v100 = &v83 - v24;
  MEMORY[0x28223BE20](v25);
  v99 = &v83 - v27;
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
    return;
  }

  v30 = a2 - a1;
  v31 = a2 - a1 == 0x8000000000000000 && v29 == -1;
  if (v31)
  {
    goto LABEL_313;
  }

  v32 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_314;
  }

  v85 = v26;
  v34 = v30 / v29;
  v104 = a1;
  v103 = a4;
  v35 = v32 / v29;
  if (v30 / v29 >= v32 / v29)
  {
    sub_2169395E4(a2, v32 / v29, a4);
    v57 = a4 + v35 * v29;
    v58 = -v29;
    v59 = v57;
    v96 = a4;
    v97 = a1;
    v100 = -v29;
    while (1)
    {
      v60 = a3;
      v89 = v59;
      v98 = a2;
      v91 = a2 + v58;
LABEL_173:
      if (v57 <= a4)
      {
        v104 = a2;
        goto LABEL_310;
      }

      if (a2 <= a1)
      {
        break;
      }

      v90 = v59;
      v99 = v57;
      v92 = v57 + v58;
      v93 = v60;
      sub_216C67858();
      sub_216C67858();
      sub_216C67858();
      v61 = 1;
      v62 = 101;
      v63 = 1;
      v64 = 1;
      v65 = 1;
      v66 = 1;
      v67 = 1;
      v68 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v62 = 106;
          break;
        case 2u:
          sub_216C677F8(v86, type metadata accessor for MenuActionType);
          v62 = 301;
          break;
        case 3u:
          sub_216C677F8(v86, type metadata accessor for MenuActionType);
          v62 = 302;
          break;
        case 4u:
          sub_216C677F8(v86, type metadata accessor for MenuActionType);
          v62 = 401;
          break;
        case 5u:
          sub_216C677F8(v86, type metadata accessor for MenuActionType);
          v62 = 407;
          break;
        case 6u:
          sub_216C677F8(v86, type metadata accessor for MenuActionType);
          v62 = 504;
          break;
        case 7u:
          sub_216C677F8(v86, type metadata accessor for MenuActionType);
          v62 = 601;
          break;
        case 8u:
          v61 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v62 = 904;
          break;
        case 9u:
          break;
        case 0xAu:
          v62 = 102;
          break;
        case 0xBu:
          v62 = 103;
          break;
        case 0xCu:
          v62 = 104;
          break;
        case 0xDu:
          v62 = 107;
          break;
        case 0xEu:
          v62 = 201;
          break;
        case 0xFu:
          v62 = 202;
          break;
        case 0x10u:
          v62 = 303;
          break;
        case 0x11u:
          v62 = 402;
          break;
        case 0x12u:
          v62 = 403;
          break;
        case 0x13u:
          v62 = 404;
          break;
        case 0x14u:
          v62 = 405;
          break;
        case 0x15u:
          v62 = 406;
          break;
        case 0x16u:
          v62 = 408;
          break;
        case 0x17u:
          v62 = 409;
          break;
        case 0x18u:
          v62 = 410;
          break;
        case 0x19u:
          v62 = 411;
          break;
        case 0x1Au:
          v62 = 412;
          break;
        case 0x1Bu:
          v62 = 413;
          break;
        case 0x1Cu:
          v62 = 501;
          break;
        case 0x1Du:
          v62 = 502;
          break;
        case 0x1Eu:
          v62 = 503;
          break;
        case 0x1Fu:
          v62 = 505;
          break;
        case 0x20u:
          v62 = 602;
          break;
        case 0x21u:
          v62 = 603;
          break;
        case 0x22u:
          v62 = 605;
          break;
        case 0x23u:
          v62 = 604;
          break;
        case 0x24u:
          v62 = 606;
          break;
        case 0x25u:
          v62 = 701;
          break;
        case 0x26u:
          v62 = 702;
          break;
        case 0x27u:
          v67 = 0;
          v62 = 703;
          break;
        case 0x28u:
          v66 = 0;
          v67 = 0;
          v62 = 704;
          break;
        case 0x29u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v62 = 801;
          break;
        case 0x2Au:
          v61 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v62 = 903;
          break;
        case 0x2Bu:
          v61 = 0;
          v63 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v62 = 902;
          break;
        case 0x2Cu:
          v61 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v62 = 901;
          break;
        default:
          sub_216C677F8(v86, type metadata accessor for MenuActionType);
          v62 = 105;
          break;
      }

      sub_216C67858();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v70 = 101;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v70 = 106;
          goto LABEL_272;
        case 2:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v70 = 301;
          goto LABEL_272;
        case 3:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v70 = 302;
          goto LABEL_272;
        case 4:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v70 = 401;
          goto LABEL_272;
        case 5:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v70 = 407;
          goto LABEL_272;
        case 6:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v70 = 504;
          goto LABEL_272;
        case 7:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v70 = 601;
          goto LABEL_272;
        case 8:
          if (v68)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 9:
          goto LABEL_272;
        case 10:
          v70 = 102;
          goto LABEL_272;
        case 11:
          v70 = 103;
          goto LABEL_272;
        case 12:
          v70 = 104;
          goto LABEL_272;
        case 13:
          v70 = 107;
          goto LABEL_272;
        case 14:
          v70 = 201;
          goto LABEL_272;
        case 15:
          v70 = 202;
          goto LABEL_272;
        case 16:
          v70 = 303;
          goto LABEL_272;
        case 17:
          v70 = 402;
          goto LABEL_272;
        case 18:
          v70 = 403;
          goto LABEL_272;
        case 19:
          v70 = 404;
          goto LABEL_272;
        case 20:
          v70 = 405;
          goto LABEL_272;
        case 21:
          v70 = 406;
          goto LABEL_272;
        case 22:
          v70 = 408;
          goto LABEL_272;
        case 23:
          v70 = 409;
          goto LABEL_272;
        case 24:
          v70 = 410;
          goto LABEL_272;
        case 25:
          v70 = 411;
          goto LABEL_272;
        case 26:
          v70 = 412;
          goto LABEL_272;
        case 27:
          v70 = 413;
          goto LABEL_272;
        case 28:
          v70 = 501;
          goto LABEL_272;
        case 29:
          v70 = 502;
          goto LABEL_272;
        case 30:
          v70 = 503;
          goto LABEL_272;
        case 31:
          v70 = 505;
          goto LABEL_272;
        case 32:
          v70 = 602;
          goto LABEL_272;
        case 33:
          v70 = 603;
          goto LABEL_272;
        case 34:
          v70 = 605;
          goto LABEL_272;
        case 35:
          v70 = 604;
          goto LABEL_272;
        case 36:
          v70 = 606;
          goto LABEL_272;
        case 37:
          v70 = 701;
          goto LABEL_272;
        case 38:
          v70 = 702;
          goto LABEL_272;
        case 39:
          if (v67)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 40:
          if (v66)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 41:
          if (v65)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 42:
          if (v64)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 43:
          if ((v63 & 1) == 0)
          {
            goto LABEL_223;
          }

          goto LABEL_273;
        case 44:
          if (v61)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        default:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v70 = 105;
LABEL_272:
          if (v62 >= v70)
          {
LABEL_223:
            v72 = v92;
            v71 = v93;
            v73 = 0;
            a4 = v96;
            a1 = v97;
            a2 = v98;
            v74 = v85;
            v75 = v100;
          }

          else
          {
LABEL_273:
            v74 = v85;
            sub_216C67858();
            v76 = 10;
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
              case 9u:
              case 0xAu:
              case 0xBu:
              case 0xCu:
              case 0xDu:
                goto LABEL_284;
              case 2u:
              case 3u:
                sub_216C677F8(v84, type metadata accessor for MenuActionType);
                goto LABEL_278;
              case 4u:
              case 5u:
                sub_216C677F8(v84, type metadata accessor for MenuActionType);
                goto LABEL_274;
              case 6u:
                sub_216C677F8(v84, type metadata accessor for MenuActionType);
                goto LABEL_286;
              case 7u:
                sub_216C677F8(v84, type metadata accessor for MenuActionType);
                goto LABEL_282;
              case 8u:
              case 0x2Au:
              case 0x2Bu:
              case 0x2Cu:
                v76 = 3;
                break;
              case 0xEu:
              case 0xFu:
                v76 = 2;
                break;
              case 0x10u:
LABEL_278:
                v76 = 5;
                break;
              case 0x11u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
LABEL_274:
                v76 = 14;
                break;
              case 0x1Cu:
              case 0x1Du:
              case 0x1Eu:
              case 0x1Fu:
LABEL_286:
                v76 = 7;
                break;
              case 0x20u:
              case 0x21u:
              case 0x22u:
              case 0x23u:
              case 0x24u:
LABEL_282:
                v76 = 4;
                break;
              case 0x25u:
              case 0x26u:
              case 0x27u:
              case 0x28u:
                v76 = 9;
                break;
              case 0x29u:
                break;
              default:
                sub_216C677F8(v84, type metadata accessor for MenuActionType);
LABEL_284:
                v76 = 0;
                break;
            }

            v77 = sub_216BADF14();
            a4 = v96;
            a1 = v97;
            a2 = v98;
            v75 = v100;
            if (v77 > 0xEu)
            {
              v78 = 0;
            }

            else
            {
              v78 = qword_2170588F0[v77];
            }

            v72 = v92;
            v71 = v93;
            v73 = v78 >= qword_2170588F0[v76];
          }

          a3 = v71 + v75;
          sub_216C677F8(v95, type metadata accessor for MenuAction);
          sub_216C677F8(v74, type metadata accessor for MenuAction);
          if (!v73)
          {
            if (v71 < v99 || a3 >= v99)
            {
              swift_arrayInitWithTakeFrontToBack();
              v60 = a3;
              v57 = v72;
              v59 = v72;
              v58 = v100;
            }

            else
            {
              v59 = v72;
              v60 = a3;
              v57 = v72;
              v58 = v100;
              if (v99 != v71)
              {
                swift_arrayInitWithTakeBackToFront();
                v60 = a3;
                v57 = v72;
                v59 = v72;
              }
            }

            goto LABEL_173;
          }

          v80 = v71 < a2 || a3 >= a2;
          v81 = v91;
          if (v80)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v81;
            v59 = v90;
            v57 = v99;
            v58 = v100;
          }

          else
          {
            v59 = v90;
            v31 = v71 == a2;
            a2 = v91;
            v57 = v99;
            v58 = v100;
            if (!v31)
            {
              v82 = v90;
              swift_arrayInitWithTakeBackToFront();
              v57 = v99;
              a2 = v81;
              v59 = v82;
            }
          }

          break;
      }
    }

    v104 = a2;
    v59 = v89;
LABEL_310:
    v102 = v59;
  }

  else
  {
    sub_2169395E4(a1, v30 / v29, a4);
    v95 = a4 + v34 * v29;
    v102 = v95;
    v90 = v29;
    v91 = a3;
    while (a4 < v95 && a2 < a3)
    {
      v97 = a1;
      v98 = a2;
      sub_216C67858();
      v96 = a4;
      sub_216C67858();
      sub_216C67858();
      v37 = 1;
      v38 = 101;
      v39 = 1;
      v40 = 1;
      v41 = 1;
      v42 = 1;
      v43 = 1;
      v44 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v38 = 106;
          break;
        case 2u:
          sub_216C677F8(v92, type metadata accessor for MenuActionType);
          v38 = 301;
          break;
        case 3u:
          sub_216C677F8(v92, type metadata accessor for MenuActionType);
          v38 = 302;
          break;
        case 4u:
          sub_216C677F8(v92, type metadata accessor for MenuActionType);
          v38 = 401;
          break;
        case 5u:
          sub_216C677F8(v92, type metadata accessor for MenuActionType);
          v38 = 407;
          break;
        case 6u:
          sub_216C677F8(v92, type metadata accessor for MenuActionType);
          v38 = 504;
          break;
        case 7u:
          sub_216C677F8(v92, type metadata accessor for MenuActionType);
          v38 = 601;
          break;
        case 8u:
          v37 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v38 = 904;
          break;
        case 9u:
          break;
        case 0xAu:
          v38 = 102;
          break;
        case 0xBu:
          v38 = 103;
          break;
        case 0xCu:
          v38 = 104;
          break;
        case 0xDu:
          v38 = 107;
          break;
        case 0xEu:
          v38 = 201;
          break;
        case 0xFu:
          v38 = 202;
          break;
        case 0x10u:
          v38 = 303;
          break;
        case 0x11u:
          v38 = 402;
          break;
        case 0x12u:
          v38 = 403;
          break;
        case 0x13u:
          v38 = 404;
          break;
        case 0x14u:
          v38 = 405;
          break;
        case 0x15u:
          v38 = 406;
          break;
        case 0x16u:
          v38 = 408;
          break;
        case 0x17u:
          v38 = 409;
          break;
        case 0x18u:
          v38 = 410;
          break;
        case 0x19u:
          v38 = 411;
          break;
        case 0x1Au:
          v38 = 412;
          break;
        case 0x1Bu:
          v38 = 413;
          break;
        case 0x1Cu:
          v38 = 501;
          break;
        case 0x1Du:
          v38 = 502;
          break;
        case 0x1Eu:
          v38 = 503;
          break;
        case 0x1Fu:
          v38 = 505;
          break;
        case 0x20u:
          v38 = 602;
          break;
        case 0x21u:
          v38 = 603;
          break;
        case 0x22u:
          v38 = 605;
          break;
        case 0x23u:
          v38 = 604;
          break;
        case 0x24u:
          v38 = 606;
          break;
        case 0x25u:
          v38 = 701;
          break;
        case 0x26u:
          v38 = 702;
          break;
        case 0x27u:
          v43 = 0;
          v38 = 703;
          break;
        case 0x28u:
          v42 = 0;
          v43 = 0;
          v38 = 704;
          break;
        case 0x29u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v38 = 801;
          break;
        case 0x2Au:
          v37 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v38 = 903;
          break;
        case 0x2Bu:
          v37 = 0;
          v39 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v38 = 902;
          break;
        case 0x2Cu:
          v37 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v38 = 901;
          break;
        default:
          sub_216C677F8(v92, type metadata accessor for MenuActionType);
          v38 = 105;
          break;
      }

      sub_216C67858();
      v45 = swift_getEnumCaseMultiPayload();
      v46 = 101;
      switch(v45)
      {
        case 1:
          v46 = 106;
          goto LABEL_113;
        case 2:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v46 = 301;
          goto LABEL_113;
        case 3:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v46 = 302;
          goto LABEL_113;
        case 4:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v46 = 401;
          goto LABEL_113;
        case 5:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v46 = 407;
          goto LABEL_113;
        case 6:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v46 = 504;
          goto LABEL_113;
        case 7:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v46 = 601;
          goto LABEL_113;
        case 8:
          a3 = v91;
          if ((v44 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 9:
          goto LABEL_113;
        case 10:
          v46 = 102;
          goto LABEL_113;
        case 11:
          v46 = 103;
          goto LABEL_113;
        case 12:
          v46 = 104;
          goto LABEL_113;
        case 13:
          v46 = 107;
          goto LABEL_113;
        case 14:
          v46 = 201;
          goto LABEL_113;
        case 15:
          v46 = 202;
          goto LABEL_113;
        case 16:
          v46 = 303;
          goto LABEL_113;
        case 17:
          v46 = 402;
          goto LABEL_113;
        case 18:
          v46 = 403;
          goto LABEL_113;
        case 19:
          v46 = 404;
          goto LABEL_113;
        case 20:
          v46 = 405;
          goto LABEL_113;
        case 21:
          v46 = 406;
          goto LABEL_113;
        case 22:
          v46 = 408;
          goto LABEL_113;
        case 23:
          v46 = 409;
          goto LABEL_113;
        case 24:
          v46 = 410;
          goto LABEL_113;
        case 25:
          v46 = 411;
          goto LABEL_113;
        case 26:
          v46 = 412;
          goto LABEL_113;
        case 27:
          v46 = 413;
          goto LABEL_113;
        case 28:
          v46 = 501;
          goto LABEL_113;
        case 29:
          v46 = 502;
          goto LABEL_113;
        case 30:
          v46 = 503;
          goto LABEL_113;
        case 31:
          v46 = 505;
          goto LABEL_113;
        case 32:
          v46 = 602;
          goto LABEL_113;
        case 33:
          v46 = 603;
          goto LABEL_113;
        case 34:
          v46 = 605;
          goto LABEL_113;
        case 35:
          v46 = 604;
          goto LABEL_113;
        case 36:
          v46 = 606;
          goto LABEL_113;
        case 37:
          v46 = 701;
          goto LABEL_113;
        case 38:
          v46 = 702;
          goto LABEL_113;
        case 39:
          a3 = v91;
          if ((v43 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 40:
          a3 = v91;
          if ((v42 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 41:
          a3 = v91;
          if ((v41 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 42:
          a3 = v91;
          if ((v40 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 43:
          a3 = v91;
          if ((v39 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 44:
          a3 = v91;
          if ((v37 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        default:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v46 = 105;
LABEL_113:
          a3 = v91;
          if (v38 >= v46)
          {
LABEL_151:
            sub_216C677F8(v100, type metadata accessor for MenuAction);
            sub_216C677F8(v99, type metadata accessor for MenuAction);
LABEL_152:
            v53 = v97;
            v54 = v90;
            a4 = v96 + v90;
            v55 = v97 < v96 || v97 >= a4;
            a2 = v98;
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v97 != v96)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v103 = a4;
          }

          else
          {
LABEL_114:
            sub_216C67858();
            v47 = 10;
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
              case 9u:
              case 0xAu:
              case 0xBu:
              case 0xCu:
              case 0xDu:
                goto LABEL_125;
              case 2u:
              case 3u:
                sub_216C677F8(v88, type metadata accessor for MenuActionType);
                goto LABEL_119;
              case 4u:
              case 5u:
                sub_216C677F8(v88, type metadata accessor for MenuActionType);
                goto LABEL_115;
              case 6u:
                sub_216C677F8(v88, type metadata accessor for MenuActionType);
                goto LABEL_127;
              case 7u:
                sub_216C677F8(v88, type metadata accessor for MenuActionType);
                goto LABEL_123;
              case 8u:
              case 0x2Au:
              case 0x2Bu:
              case 0x2Cu:
                v47 = 3;
                break;
              case 0xEu:
              case 0xFu:
                v47 = 2;
                break;
              case 0x10u:
LABEL_119:
                v47 = 5;
                break;
              case 0x11u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
LABEL_115:
                v47 = 14;
                break;
              case 0x1Cu:
              case 0x1Du:
              case 0x1Eu:
              case 0x1Fu:
LABEL_127:
                v47 = 7;
                break;
              case 0x20u:
              case 0x21u:
              case 0x22u:
              case 0x23u:
              case 0x24u:
LABEL_123:
                v47 = 4;
                break;
              case 0x25u:
              case 0x26u:
              case 0x27u:
              case 0x28u:
                v47 = 9;
                break;
              case 0x29u:
                break;
              default:
                sub_216C677F8(v88, type metadata accessor for MenuActionType);
LABEL_125:
                v47 = 0;
                break;
            }

            sub_216C67858();
            v48 = 8;
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
              case 9u:
              case 0xAu:
              case 0xBu:
              case 0xCu:
              case 0xDu:
                goto LABEL_141;
              case 2u:
              case 3u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_138;
              case 4u:
              case 5u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_129;
              case 6u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_145;
              case 7u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_148;
              case 8u:
              case 0x2Au:
              case 0x2Bu:
              case 0x2Cu:
                goto LABEL_162;
              case 0xEu:
              case 0xFu:
                v49 = 1 << v47;
                v50 = 18104;
                goto LABEL_150;
              case 0x10u:
LABEL_138:
                v49 = 1 << v47;
                v50 = 18072;
                goto LABEL_150;
              case 0x11u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
LABEL_129:
                if (v47 > 0xA)
                {
                  goto LABEL_162;
                }

                v49 = 1 << v47;
                v50 = 1688;
                goto LABEL_150;
              case 0x1Cu:
              case 0x1Du:
              case 0x1Eu:
              case 0x1Fu:
LABEL_145:
                if (v47 > 0xA)
                {
                  goto LABEL_162;
                }

                v49 = 1 << v47;
                v50 = 1560;
                goto LABEL_150;
              case 0x20u:
              case 0x21u:
              case 0x22u:
              case 0x23u:
              case 0x24u:
LABEL_148:
                if (v47 > 0xA)
                {
                  goto LABEL_162;
                }

                v49 = 1 << v47;
                v50 = 1544;
LABEL_150:
                if ((v49 & v50) != 0)
                {
                  goto LABEL_151;
                }

LABEL_162:
                sub_216C677F8(v100, type metadata accessor for MenuAction);
                sub_216C677F8(v99, type metadata accessor for MenuAction);
LABEL_163:
                v53 = v97;
                v54 = v90;
                a2 = v98 + v90;
                v56 = v97 < v98 || v97 >= a2;
                a4 = v96;
                if (v56)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v97 != v98)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                break;
              case 0x25u:
              case 0x26u:
              case 0x27u:
              case 0x28u:
                if (v47 == 3 || v47 == 10)
                {
                  goto LABEL_151;
                }

                goto LABEL_162;
              case 0x29u:
                goto LABEL_142;
              default:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
LABEL_141:
                v48 = 1;
LABEL_142:
                v52 = qword_2170588F0[v47];
                sub_216C677F8(v100, type metadata accessor for MenuAction);
                sub_216C677F8(v99, type metadata accessor for MenuAction);
                if (v48 >= v52)
                {
                  goto LABEL_163;
                }

                goto LABEL_152;
            }
          }

          a1 = v53 + v54;
          v104 = a1;
          break;
      }
    }
  }

  sub_216C6B76C(&v104, &v103, &v102, type metadata accessor for MenuAction);
}

void sub_216C6B76C(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_216C6B848(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_216C6B874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2A0, &unk_217029FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_216C6BBEC()
{
  v1 = sub_217009684();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75B8, &qword_217058A30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  sub_217009634();
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75C0, &qword_217058A38);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC75C8, &unk_217058A40);
  v7 = sub_2166D9530(&qword_27CAC75D0, &qword_27CAC75C8, &unk_217058A40, &unk_217048B78);
  v14 = v6;
  v15 = v7;
  swift_getOpaqueTypeConformance2();
  sub_217008B94();
  OUTLINED_FUNCTION_3_14();
  v10 = sub_2166D9530(v8, &qword_27CAC75B8, &qword_217058A30, v9);
  MEMORY[0x21CE9A570](v5, v2, v10);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_216C6BE00()
{
  v1 = sub_21700D8E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SocialProfileToolbarContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_216C6C540(v0, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialProfileToolbarContent);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_216C6C46C(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v15[4] = sub_216C6C4D0;
  v15[5] = v9;
  v10 = (v0 + *(type metadata accessor for SocialProfileDescriptor(0) + 20));
  v12 = *v10;
  v11 = v10[1];
  v15[3] = MEMORY[0x277D837D0];
  v15[0] = v12;
  v15[1] = v11;
  memset(v14, 0, sizeof(v14));
  sub_21700DF14();
  sub_21700D854();
  sub_216697664(v14, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(v15, &unk_27CABF7A0, &unk_217014D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75C8, &unk_217058A40);
  sub_2166D9530(&qword_27CAC75D0, &qword_27CAC75C8, &unk_217058A40, &unk_217048B78);
  sub_21700A204();
  (*(v2 + 8))(v4, v1);
}

double sub_216C6C09C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for SocialProfileContextMenu(0);
  sub_216C6C540(a1, a2 + v10[9], type metadata accessor for SocialProfileDescriptor);
  v11 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[10];
  sub_216681B04(v9, v12, &qword_27CAB6A00, &unk_217016B60);
  v13 = type metadata accessor for MenuConfiguration(0);
  sub_216C6C540(v6, &v12[v13[5]], type metadata accessor for MenuContext);
  v14 = &v12[v13[6]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v12[v13[7]] = 0;
  sub_216681B04(v23, &v12[v13[8]], &qword_27CAB6DB0, &qword_217016C00);
  sub_2168CD6E4(v6);
  sub_216697664(v23, &qword_27CAB6DB0, &qword_217016C00);
  sub_216697664(v9, &qword_27CAB6A00, &unk_217016B60);
  v15 = &v12[v13[9]];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  type metadata accessor for MenuBuilder();
  sub_216C6C5A0(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
  *a2 = sub_217008CF4();
  a2[1] = v16;
  type metadata accessor for SocialGraphController(0);
  sub_216C6C5A0(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
  a2[2] = sub_217008CF4();
  a2[3] = v17;
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216C6C5A0(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  a2[4] = sub_217008CF4();
  a2[5] = v18;
  v19 = v10[7];
  *(a2 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v20 = v10[8];
  v22[1] = 0;
  sub_21700AEA4();
  result = *v23;
  *(a2 + v20) = v23[0];
  return result;
}

uint64_t sub_216C6C46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileToolbarContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_216C6C4D0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfileToolbarContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216C6C09C(v4, a1);
}

uint64_t sub_216C6C540(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C6C5A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C6C5E8@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 4:
      if (*(v1 + 48))
      {
        goto LABEL_79;
      }

      if (*(v1 + 16))
      {
        goto LABEL_74;
      }

      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (!*(v1 + 32))
      {
        goto LABEL_90;
      }

      goto LABEL_78;
    case 5:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 6:
      if (*(v1 + 96))
      {
        goto LABEL_11;
      }

      if (*(v1 + 32))
      {
        goto LABEL_47;
      }

      goto LABEL_90;
    case 7:
      if (*(v1 + 96))
      {
LABEL_11:
        OUTLINED_FUNCTION_0_212();
      }

      else
      {
        if (!*(v1 + 32))
        {
          goto LABEL_90;
        }

LABEL_47:
        OUTLINED_FUNCTION_2_147();
      }

      sub_21700DF14();
      OUTLINED_FUNCTION_1_182();
      OUTLINED_FUNCTION_3_138();
      goto LABEL_80;
    case 8:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 9:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xA:
      goto LABEL_90;
    case 0xB:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xC:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xD:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xE:
      if (*(v1 + 48))
      {
        goto LABEL_79;
      }

      if (*(v1 + 16))
      {
        goto LABEL_74;
      }

      if (*(v1 + 96))
      {
LABEL_37:
        OUTLINED_FUNCTION_0_212();
      }

      else
      {
        if (!*(v1 + 32))
        {
LABEL_90:
          v4 = sub_217006924();

          return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
        }

LABEL_78:
        OUTLINED_FUNCTION_2_147();
      }

LABEL_79:
      sub_21700DF14();
      v3 = OUTLINED_FUNCTION_1_182();
LABEL_80:

      return MEMORY[0x282189628](v3);
    case 0xF:
      if (*(v1 + 48))
      {
        goto LABEL_79;
      }

      if (!*(v1 + 16))
      {
        goto LABEL_90;
      }

LABEL_74:
      sub_21700DF14();
      goto LABEL_79;
    case 0x10:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x11:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x12:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x13:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x14:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x15:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x16:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    default:
      if (*(v1 + 96))
      {
        goto LABEL_37;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
  }
}

uint64_t sub_216C6CCFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = type metadata accessor for ContentDescriptor(0);
  sub_2167DE934(v0 + *(v4 + 24), v3);
  v5 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216846CF0(v3);
    v6 = 0;
  }

  else
  {
    v7 = sub_217005DF4();
    (*(*(v5 - 8) + 8))(v3, v5);
    v9[0] = &unk_28290EE78;
    v9[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    sub_21695BC68();
    v6 = sub_21700EC64();
  }

  return v6 & 1;
}

uint64_t sub_216C6CE58()
{
  if (v0[6])
  {
    goto LABEL_5;
  }

  if (v0[2])
  {
    goto LABEL_4;
  }

  if (v0[12])
  {
    goto LABEL_5;
  }

  if (v0[4])
  {
LABEL_4:
    sub_21700DF14();
LABEL_5:
    sub_21700DF14();
    return sub_21700BA64();
  }

  return 0;
}

uint64_t sub_216C6CEE4(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x75632D656C707061;
      break;
    case 2:
      result = 0x73747369747261;
      break;
    case 3:
      result = 0x612D746964657263;
      break;
    case 4:
      result = 0x73726F7461727563;
      break;
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x6F6D2D636973756DLL;
      break;
    case 7:
      result = 0x69762D636973756DLL;
      break;
    case 8:
      result = 0x7473696C79616C70;
      break;
    case 9:
      result = 0x736E6F6974617473;
      break;
    case 10:
      result = 0x6C2D64726F636572;
      break;
    case 11:
      result = 0x702D6C6169636F73;
      break;
    case 12:
      result = 0x73676E6F73;
      break;
    case 13:
      v3 = 0x6970652D7674;
      goto LABEL_16;
    case 14:
      v3 = 0x6165732D7674;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F73000000000000;
      break;
    case 15:
      result = 0x73776F68732D7674;
      break;
    case 16:
    case 17:
      result = 0x646564616F6C7075;
      break;
    case 18:
      result = 0x2D7972617262696CLL;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216C6D16C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C6D1E0()
{
  sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_7_17();
  v4 = type metadata accessor for AlbumTrackLockup(v3);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_2168ABD3C();
  LOBYTE(v5) = *(v8 + *(v5 + 64));
  sub_216C6DF84(v8, type metadata accessor for AlbumTrackLockup);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    sub_2168C032C();
    sub_216C6DC84(v1, MEMORY[0x277CD83B8], MEMORY[0x277CD8378]);
    v10 = OUTLINED_FUNCTION_4_120();
    v11(v10);
    v9 = v0 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_216C6D33C(uint64_t a1)
{
  v2 = sub_21700BA94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_21700BAB4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  sub_216C6DF14(a1, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    (*(v16 + 32))(v22, v13, v14);
    (*(v16 + 16))(v19, v22, v14);
    v23 = (*(v16 + 88))(v19, v14);
    if (v23 == *MEMORY[0x277D2AE90])
    {
      (*(v16 + 96))(v19, v14);
      (*(v4 + 32))(v10, v19, v2);
      v24 = v7;
      (*(v4 + 16))(v7, v10, v2);
      if ((*(v4 + 88))(v7, v2) != *MEMORY[0x277D2AED0])
      {
        v26 = *(v4 + 8);
        v26(v10, v2);
        (*(v16 + 8))(v22, v14);
LABEL_10:
        v26(v24, v2);
        return 0;
      }

      v25 = sub_2166EFC70();
      v26 = *(v4 + 8);
      v26(v10, v2);
      (*(v16 + 8))(v22, v14);
      if (v25)
      {
        goto LABEL_10;
      }

      v26(v24, v2);
    }

    else
    {
      v27 = v23;
      v28 = *MEMORY[0x277D2AEE0];
      v29 = *(v16 + 8);
      v29(v22, v14);
      if (v27 != v28)
      {
        v29(v19, v14);
        return 0;
      }
    }

    return 1;
  }

  sub_216C6DEAC(v13);
  return 0;
}

uint64_t sub_216C6D724()
{
  sub_21700C894();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_7_17();
  v4 = type metadata accessor for PlaylistTrackLockup(v3);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_2168ABF7C();
  LOBYTE(v5) = *(v8 + *(v5 + 68));
  sub_216C6DF84(v8, type metadata accessor for PlaylistTrackLockup);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    sub_2168C045C();
    sub_216C6DC84(v1, MEMORY[0x277CD8560], MEMORY[0x277CD8550]);
    v10 = OUTLINED_FUNCTION_4_120();
    v11(v10);
    v9 = v0 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_216C6D880(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_7_17();
  v6 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  (*(v8 + 16))(v11 - v10, a1, v6);
  v13 = (*(v8 + 88))(v12, v6);
  if (v13 == *MEMORY[0x277D2A400] || (v13 != *MEMORY[0x277D2A418] ? (v14 = v13 == *MEMORY[0x277D2A438]) : (v14 = 1), !v14 ? (v15 = v13 == *MEMORY[0x277D2A3C8]) : (v15 = 1), !v15 ? (v16 = v13 == *MEMORY[0x277D2A428]) : (v16 = 1), !v16 ? (v17 = v13 == *MEMORY[0x277D2A388]) : (v17 = 1), !v17 ? (v18 = v13 == *MEMORY[0x277D2A408]) : (v18 = 1), !v18 && (v13 != *MEMORY[0x277D2A3B0] ? (v19 = v13 == *MEMORY[0x277D2A3B8]) : (v19 = 1), !v19 ? (v20 = v13 == *MEMORY[0x277D2A440]) : (v20 = 1), v20 || (v13 != *MEMORY[0x277D2A450] ? (v21 = v13 == *MEMORY[0x277D2A3C0]) : (v21 = 1), !v21 ? (v22 = v13 == *MEMORY[0x277D2A3D0]) : (v22 = 1), !v22 && (v13 != *MEMORY[0x277D2A3F8] ? (v23 = v13 == *MEMORY[0x277D2A430]) : (v23 = 1), !v23 ? (v24 = v13 == *MEMORY[0x277D2A458]) : (v24 = 1), v24 || (v13 != *MEMORY[0x277D2A448] ? (v25 = v13 == *MEMORY[0x277D2A420]) : (v25 = 1), !v25 && (v13 != *MEMORY[0x277D2A3D8] ? (v26 = v13 == *MEMORY[0x277D2A3E0]) : (v26 = 1), v26)))))))
  {
    (*(v8 + 8))(v12, v6);
    swift_beginAccess();
    sub_2167B7D58(v3 + 16, v29);
    sub_216DDF0DC(v29, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v27 = sub_216C6D33C(v2);
    sub_216C6DEAC(v2);
  }

  else
  {
    (*(v8 + 8))(v12, v6);
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_216C6DBC0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216C6DC84(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  swift_beginAccess();
  sub_2167B7D58(v6 + 16, v17);
  v11 = v18;
  v12 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v13 = *(v12 + 144);
  v14 = a2(0);
  v13(a1, v14, a3, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v15 = sub_21700BAB4();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
  LOBYTE(v6) = sub_216C6D33C(v10);
  sub_216C6DEAC(v10);
  return v6 & 1;
}

uint64_t sub_216C6DDD4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC7MusicUI17PlaybackPresenter__internalPlayer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75E0, &qword_217058B48);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216C6DE4C()
{
  sub_216C6DDD4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216C6DEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C6DF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090, &qword_217015A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C6DF84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C6DFE0(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (!*(a1 + 16))
  {
    return v1;
  }

  v29 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  sub_2166F4258();
  v1 = v29;
  result = sub_2166F42A4();
  v6 = result;
  v7 = v28;
  v8 = 0;
  v9 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v9 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_31;
      }

      ++v8;
      result = v6 & 0x3F;
      v11 = 0xD000000000000013;
      v12 = "ion";
      switch(*(*(a1 + 48) + v6))
      {
        case 1:
          v11 = 0xD00000000000001DLL;
          v12 = "fullCatalogPlayback";
          break;
        case 2:
          v11 = 0xD000000000000012;
          v12 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v11 = 0xD000000000000014;
          v12 = "anyCatalogPlayback";
          break;
        case 4:
          v11 = 0xD00000000000001FLL;
          v12 = "cloudLibraryEligible";
          break;
        case 5:
          v11 = 0xD000000000000014;
          v12 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      v13 = *(v29 + 16);
      if (v13 >= *(v29 + 24) >> 1)
      {
        v26 = v4;
        v27 = v8;
        v25 = v5;
        sub_2166F4258();
        result = v6 & 0x3F;
        v5 = v25;
        v4 = v26;
        v8 = v27;
        v9 = a1 + 56;
        v7 = v28;
      }

      *(v29 + 16) = v13 + 1;
      v14 = v29 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12 | 0x8000000000000000;
      if (v5)
      {
        goto LABEL_35;
      }

      v15 = 1 << *(a1 + 32);
      if (v6 >= v15)
      {
        goto LABEL_32;
      }

      v16 = *(v9 + 8 * v10);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << result);
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (a1 + 64 + 8 * v10);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            v23 = v8;
            result = sub_2166F42E8(v6, v4, 0);
            v9 = a1 + 56;
            v7 = v28;
            v8 = v23;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_25;
          }
        }

        v24 = v8;
        result = sub_2166F42E8(v6, v4, 0);
        v9 = a1 + 56;
        v7 = v28;
        v8 = v24;
      }

LABEL_25:
      if (v8 == v7)
      {
        return v1;
      }

      v5 = 0;
      v4 = *(a1 + 36);
      v6 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_216C6E32C(uint64_t a1)
{
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216C6E374(uint64_t a1)
{
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216C6E3C8(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 5:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_216C6E46C(uint64_t a1)
{
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216C6E4CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216C6E32C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216C6E4FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2166C0DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216C6E5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216C6E374(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216C6E62C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216C6E3C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216C6E73C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216C6E46C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216C6E76C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2166F42F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_216C6E854(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_216C6E934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_216685F4C(0, &qword_280E29BF0, 0x277D7FCA8);
  v4 = sub_2166A6590();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringValue];

    v7 = sub_21700E514();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 statusType];
  v11 = OUTLINED_FUNCTION_17_59();
  v12 = sub_2166A58E0([a1 capabilities]);
  v13 = OUTLINED_FUNCTION_17_59() == 2 || OUTLINED_FUNCTION_17_59() == 3;
  v14 = sub_2166A5AD0(a1);
  if (v14)
  {
    v29 = v13;
    v15 = *(v14 + 16);
    if (v15)
    {
      v25 = v12;
      v26 = v11;
      v27 = v10;
      v28 = v7;
      OUTLINED_FUNCTION_16_59();
      v16 = 32;
      v17 = v30;
      do
      {
        v18 = sub_21700E514();
        v20 = v19;
        v22 = *(v30 + 16);
        v21 = *(v30 + 24);
        if (v22 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_19_47(v21);
        }

        *(v30 + 16) = v22 + 1;
        v23 = v30 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v16 += 8;
        --v15;
      }

      while (v15);

      v7 = v28;
      v11 = v26;
      v10 = v27;
      v12 = v25;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v13 = v29;
  }

  else
  {

    v17 = 0;
  }

  result = sub_2166A7DD8(v10, v11);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = result;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v17;
  *(a2 + 48) = 1281;
  *(a2 + 50) = 33686018;
  *(a2 + 54) = 2;
  *(a2 + 56) = 0;
  return result;
}

id sub_216C6EB3C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v8 = sub_2166C0DB4(*(a1 + 16));
  v10 = v9;
  v11 = sub_2166C0DB4(v7);
  if (v8 == v11 && v10 == v12)
  {
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_53(v11);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_2169F9E00(a1[3], *(a2 + 24)) & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)))
  {
    return 0;
  }

  v17 = *(a2 + 40);
  if (a1[5])
  {
    if (!v17)
    {
      return 0;
    }

    sub_216E20CEC();
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if ((*(a1 + 48) ^ *(a2 + 48)))
  {
    return 0;
  }

  v19 = *(a1 + 49);
  v15 = *(a2 + 49);
  if (v19 == 5)
  {
    if (v15 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == 5)
    {
      return 0;
    }

    v20 = sub_2166F42F4(v19);
    v22 = v21;
    v23 = sub_2166F42F4(v15);
    v15 = v24;
    if (v20 == v23 && v22 == v24)
    {
    }

    else
    {
      v26 = OUTLINED_FUNCTION_18_53(v23);

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (*(a1 + 50) == 2)
  {
    if (*(a2 + 50) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v27 ^ v28) & 1) != 0)
    {
      return v15;
    }
  }

  if (*(a1 + 51) == 2)
  {
    if (*(a2 + 51) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v29 ^ v30) & 1) != 0)
    {
      return v15;
    }
  }

  if (*(a1 + 52) == 2)
  {
    if (*(a2 + 52) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v31 ^ v32) & 1) != 0)
    {
      return v15;
    }
  }

  if (*(a1 + 53) == 2)
  {
    if (*(a2 + 53) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v33 ^ v34) & 1) != 0)
    {
      return v15;
    }
  }

  if (*(a1 + 54) != 2)
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v35 ^ v36) & 1) != 0)
    {
      return v15;
    }

    goto LABEL_63;
  }

  if (*(a2 + 54) != 2)
  {
    return 0;
  }

LABEL_63:
  v37 = a1[7];
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = sub_21700E384();
  }

  sub_216685F4C(0, &qword_280E29D88, 0x277CBEAC0);
  sub_21700DF14();
  v39 = sub_216C6EEA8(v38);
  if (!*(a2 + 56))
  {
    sub_21700E384();
  }

  sub_21700DF14();
  v40 = sub_21700E344();

  v15 = [v39 isEqualToDictionary_];

  return v15;
}

id sub_216C6EEA8(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_21700E344();

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t sub_216C6EF30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000021708D590 == a2;
  if (v3 || (OUTLINED_FUNCTION_59_2(0xD000000000000011, 0x800000021708D590) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_14_65();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_59_2(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_20_54();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_59_2(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = a1 == 0xD000000000000014 && 0x800000021708D510 == a2;
        if (v12 || (OUTLINED_FUNCTION_59_2(0xD000000000000014, 0x800000021708D510) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = a1 == 0x656C626967696C65 && a2 == 0xEE0073726566664FLL;
          if (v13 || (OUTLINED_FUNCTION_59_2(0x656C626967696C65, 0xEE0073726566664FLL) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v14 = OUTLINED_FUNCTION_13_69();
            v16 = a1 == v14 && a2 == v15;
            if (v16 || (OUTLINED_FUNCTION_59_2(v14, v15) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = a1 == 0xD000000000000015 && 0x800000021708D570 == a2;
              if (v17 || (OUTLINED_FUNCTION_59_2(0xD000000000000015, 0x800000021708D570) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = a1 == 0x6C696D6146736168 && a2 == 0xE900000000000079;
                if (v18 || (OUTLINED_FUNCTION_59_2(0x6C696D6146736168, 0xE900000000000079) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v19 = a1 == 0xD000000000000010 && 0x800000021708D550 == a2;
                  if (v19 || (OUTLINED_FUNCTION_59_2(0xD000000000000010, 0x800000021708D550) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v20 = a1 == 0xD000000000000011 && 0x800000021708D530 == a2;
                    if (v20 || (OUTLINED_FUNCTION_59_2(0xD000000000000011, 0x800000021708D530) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v21 = a1 == 0x726F6E694D7369 && a2 == 0xE700000000000000;
                      if (v21 || (OUTLINED_FUNCTION_59_2(0x726F6E694D7369, 0xE700000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v22 = OUTLINED_FUNCTION_15_61();
                        v24 = a1 == v22 && a2 == v23;
                        if (v24 || (OUTLINED_FUNCTION_59_2(v22, v23) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v25 = OUTLINED_FUNCTION_21_55();
                          if (a1 == v25 && a2 == v26)
                          {

                            return 12;
                          }

                          else
                          {
                            v28 = OUTLINED_FUNCTION_59_2(v25, v26);

                            if (v28)
                            {
                              return 12;
                            }

                            else
                            {
                              return 13;
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
  }
}

uint64_t sub_216C6F22C()
{
  result = OUTLINED_FUNCTION_14_65();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_20_54();
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = OUTLINED_FUNCTION_9_84();
      break;
    case 5:
      result = OUTLINED_FUNCTION_13_69();
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6C696D6146736168;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x726F6E694D7369;
      break;
    case 11:
      result = OUTLINED_FUNCTION_15_61();
      break;
    case 12:
      result = OUTLINED_FUNCTION_21_55();
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_216C6F3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216C6EF30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216C6F3DC(uint64_t a1)
{
  v2 = sub_216C70074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216C6F418(uint64_t a1)
{
  v2 = sub_216C70074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216C6F454@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v67 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75E8, &qword_217058C70);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216C70074();
  sub_21700F964();
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    LOBYTE(v51) = 0;
    v10 = sub_21700F614();
    v12 = v11;
    sub_216C700C8();
    OUTLINED_FUNCTION_4_121();
    sub_21700F6A4();
    v44 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7600, &qword_217058C78);
    sub_216C703E4(&qword_27CAC7608, sub_216C7011C);
    OUTLINED_FUNCTION_8_93();
    sub_21700F6A4();
    v43 = v51;
    OUTLINED_FUNCTION_0_213(3);
    v13 = sub_21700F674();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7618, &qword_217058C80);
    sub_216C70170(&qword_27CAC7620, sub_216C701D8);
    OUTLINED_FUNCTION_8_93();
    sub_21700F644();
    v42 = v51;
    OUTLINED_FUNCTION_0_213(5);
    v40 = sub_21700F674();
    sub_216C7022C();
    OUTLINED_FUNCTION_4_121();
    sub_21700F644();
    OUTLINED_FUNCTION_0_213(7);
    v39 = sub_21700F624();
    OUTLINED_FUNCTION_0_213(8);
    v16 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v16, &v70);
    OUTLINED_FUNCTION_0_213(9);
    v17 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v17, &v69 + 4);
    OUTLINED_FUNCTION_0_213(10);
    v18 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v18, &v69);
    OUTLINED_FUNCTION_0_213(11);
    v19 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v19, &v68 + 4);
    LOBYTE(v47) = 12;
    sub_216C70280();
    OUTLINED_FUNCTION_4_121();
    sub_21700F644();
    if (v52 >> 60 == 15)
    {
      v22 = OUTLINED_FUNCTION_3_139();
      v23(v22);
      v24 = 0;
LABEL_17:
      v41 = v40 & 1;
      *&v47 = v44;
      *(&v47 + 1) = v12;
      LOBYTE(v48) = 0;
      *(&v48 + 1) = *v46;
      DWORD1(v48) = *&v46[3];
      *(&v48 + 1) = v43;
      LOBYTE(v49) = v13 & 1;
      *(&v49 + 1) = *v45;
      DWORD1(v49) = *&v45[3];
      *(&v49 + 1) = v42;
      LOWORD(v50) = v41;
      BYTE2(v50) = v39;
      BYTE3(v50) = v38;
      BYTE4(v50) = v37;
      BYTE5(v50) = v36;
      BYTE6(v50) = v35;
      v34 = v24;
      *(&v50 + 1) = v24;
      sub_216C702D4(&v47, &v51);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v51 = v44;
      v52 = v12;
      v53 = 0;
      *v54 = *v46;
      *&v54[3] = *&v46[3];
      v55 = v43;
      v56 = v13 & 1;
      *v57 = *v45;
      *&v57[3] = *&v45[3];
      v58 = v42;
      v59 = v41;
      v60 = 0;
      v61 = v39;
      v62 = v38;
      v63 = v37;
      v64 = v36;
      v65 = v35;
      v66 = v34;
      result = sub_216C7030C(&v51);
      v29 = v48;
      *a2 = v47;
      a2[1] = v29;
      v30 = v50;
      a2[2] = v49;
      a2[3] = v30;
      return result;
    }

    v33 = objc_opt_self();
    v32 = sub_217005F94();
    v51 = 0;
    v25 = [v33 JSONObjectWithData:v32 options:0 error:&v51];

    if (!v25)
    {
      v31 = v51;
      OUTLINED_FUNCTION_47();
      sub_217005D34();

      swift_willThrow();
      OUTLINED_FUNCTION_11_78();
      v20 = OUTLINED_FUNCTION_3_139();
      v21(v20);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      LOBYTE(v7) = 1;
      v8 = 1;
LABEL_5:

      if (v7)
      {
        goto LABEL_6;
      }

LABEL_9:
      if (!v8)
      {
        return result;
      }
    }

    v26 = v51;
    sub_21700F1E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B30, qword_21706E1F0);
    if (swift_dynamicCast())
    {
      v27 = OUTLINED_FUNCTION_3_139();
      v28(v27);
      OUTLINED_FUNCTION_11_78();
      v24 = v47;
      goto LABEL_17;
    }

    sub_216C7033C();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_11_78();
    v14 = OUTLINED_FUNCTION_3_139();
    v15(v14);
    v6 = 1;
    v7 = 1;
    v8 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:

  if ((v8 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_216C6FBBC(void *a1)
{
  v3 = v1;
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7648, &qword_217058C88);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216C70074();
  sub_21700F974();
  LOBYTE(v21[0]) = 0;
  sub_21700F6D4();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  LOBYTE(v21[0]) = *(v3 + 16);
  HIBYTE(v20) = 1;
  sub_216C70390();
  OUTLINED_FUNCTION_2_148();
  sub_21700F764();
  v21[0] = *(v3 + 24);
  HIBYTE(v20) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7600, &qword_217058C78);
  sub_216C703E4(&qword_27CAC7658, sub_216C7044C);
  OUTLINED_FUNCTION_10_82();
  sub_21700F764();
  OUTLINED_FUNCTION_1_183(3);
  sub_21700F734();
  v21[0] = *(v3 + 40);
  HIBYTE(v20) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7618, &qword_217058C80);
  sub_216C70170(&qword_27CAC7668, sub_216C704A0);
  OUTLINED_FUNCTION_10_82();
  sub_21700F704();
  OUTLINED_FUNCTION_1_183(5);
  sub_21700F734();
  LOBYTE(v21[0]) = *(v3 + 49);
  HIBYTE(v20) = 6;
  sub_216C704F4();
  OUTLINED_FUNCTION_2_148();
  sub_21700F704();
  OUTLINED_FUNCTION_1_183(7);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(8);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(9);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(10);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(11);
  sub_21700F6E4();
  if (!*(v3 + 56))
  {
    return (*(v7 + 8))(v10, v5);
  }

  v12 = objc_opt_self();
  v13 = sub_21700E344();
  v21[0] = 0;
  v14 = [v12 dataWithJSONObject:v13 options:0 error:v21];

  v15 = v21[0];
  if (!v14)
  {
    v19 = v15;
    sub_217005D34();

    swift_willThrow();
    return (*(v7 + 8))(v10, v5);
  }

  v16 = sub_217005FB4();
  v18 = v17;

  v21[0] = v16;
  v21[1] = v18;
  HIBYTE(v20) = 12;
  sub_216C70548();
  OUTLINED_FUNCTION_2_148();
  sub_21700F764();
  (*(v7 + 8))(v10, v5);
  return sub_21677A524(v16, v18);
}

double sub_216C70018@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_216C6F454(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_216C70074()
{
  result = qword_27CAC75F0;
  if (!qword_27CAC75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC75F0);
  }

  return result;
}

unint64_t sub_216C700C8()
{
  result = qword_27CAC75F8;
  if (!qword_27CAC75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC75F8);
  }

  return result;
}

unint64_t sub_216C7011C()
{
  result = qword_27CAC7610;
  if (!qword_27CAC7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7610);
  }

  return result;
}

uint64_t sub_216C70170(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7618, &qword_217058C80);
    a2();
    result = OUTLINED_FUNCTION_25_44();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C701D8()
{
  result = qword_27CAC7628;
  if (!qword_27CAC7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7628);
  }

  return result;
}

unint64_t sub_216C7022C()
{
  result = qword_27CAC7630;
  if (!qword_27CAC7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7630);
  }

  return result;
}

unint64_t sub_216C70280()
{
  result = qword_27CAC7638;
  if (!qword_27CAC7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7638);
  }

  return result;
}

unint64_t sub_216C7033C()
{
  result = qword_27CAC7640;
  if (!qword_27CAC7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7640);
  }

  return result;
}

unint64_t sub_216C70390()
{
  result = qword_27CAC7650;
  if (!qword_27CAC7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7650);
  }

  return result;
}

uint64_t sub_216C703E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7600, &qword_217058C78);
    a2();
    result = OUTLINED_FUNCTION_25_44();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C7044C()
{
  result = qword_27CAC7660;
  if (!qword_27CAC7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7660);
  }

  return result;
}

unint64_t sub_216C704A0()
{
  result = qword_27CAC7670;
  if (!qword_27CAC7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7670);
  }

  return result;
}

unint64_t sub_216C704F4()
{
  result = qword_27CAC7678;
  if (!qword_27CAC7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7678);
  }

  return result;
}

unint64_t sub_216C70548()
{
  result = qword_27CAC7680;
  if (!qword_27CAC7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusResponse.Error(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SubscriptionStatusResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_216C707AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216C70880()
{
  result = qword_27CAC7688;
  if (!qword_27CAC7688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7690, qword_217058DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7688);
  }

  return result;
}

unint64_t sub_216C708E8()
{
  result = qword_27CAC7698;
  if (!qword_27CAC7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7698);
  }

  return result;
}

unint64_t sub_216C70940()
{
  result = qword_27CAC76A0;
  if (!qword_27CAC76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76A0);
  }

  return result;
}

unint64_t sub_216C70998()
{
  result = qword_27CAC76A8;
  if (!qword_27CAC76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76A8);
  }

  return result;
}

unint64_t sub_216C709F0()
{
  result = qword_27CAC76B0;
  if (!qword_27CAC76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76B0);
  }

  return result;
}

unint64_t sub_216C70A48()
{
  result = qword_27CAC76B8;
  if (!qword_27CAC76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76B8);
  }

  return result;
}

unint64_t sub_216C70AA0()
{
  result = qword_27CAC76C0;
  if (!qword_27CAC76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76C0);
  }

  return result;
}

unint64_t sub_216C70AF4()
{
  result = qword_27CAC76C8;
  if (!qword_27CAC76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76C8);
  }

  return result;
}

unint64_t sub_216C70B48()
{
  result = qword_27CAC76D0;
  if (!qword_27CAC76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76D0);
  }

  return result;
}

unint64_t sub_216C70B9C()
{
  result = qword_27CAC76D8;
  if (!qword_27CAC76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76D8);
  }

  return result;
}

unint64_t sub_216C70BF0()
{
  result = qword_27CAC76E0;
  if (!qword_27CAC76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76E0);
  }

  return result;
}

void sub_216C70C50(uint64_t a1, unsigned __int16 a2)
{
  v6 = OUTLINED_FUNCTION_14_66();
  v7 = type metadata accessor for BubbleLockup(v6);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_0();
  if ((a2 & 0xFF00) == 0xFE00 || HIBYTE(a2) > 0xFEu || (a2 & 0xFF00) != 0x100)
  {
    OUTLINED_FUNCTION_19_48();
    v15 = xmmword_2170592C0;
    *(v2 + 24) = &unk_28291FA68;
    *(v2 + 32) = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v9);
    sub_21698F234(v14, v3 + 16);
    OUTLINED_FUNCTION_2_149(&unk_28291FB08);
    sub_216A906C4(v14);
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    v10 = 0x403A000000000000;
LABEL_13:
    *(v3 + 120) = v10;
    return;
  }

  if (!sub_2166BF3C8(v3))
  {
    goto LABEL_11;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
LABEL_9:
    sub_216DE9A88();

    v3 = *(v4 + *(v7 + 44));
    sub_216C74634(v4, type metadata accessor for BubbleLockup);
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_19_48();
      v12 = xmmword_217042990;
LABEL_12:
      v15 = v12;
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v13 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v13);
      sub_21698F234(v14, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      OUTLINED_FUNCTION_13_70(xmmword_217025720);
      sub_216A906C4(v14);
      *(v3 + 96) = 0;
      *(v3 + 104) = 0;
      *(v3 + 112) = 0;
      v10 = 0x4032000000000000;
      goto LABEL_13;
    }

LABEL_11:
    OUTLINED_FUNCTION_19_48();
    v12 = xmmword_2170592C0;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_62();
  if (v11)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_216C70E54(uint64_t a1@<X8>)
{
  v5 = &_s14LinkViewLayoutVN;
  v6 = &off_282932C90;
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_7_94(v1);
  OUTLINED_FUNCTION_22_51(v2, v3);
  OUTLINED_FUNCTION_12_73(&unk_28291FB08);
  sub_216A906C4(v4);
  OUTLINED_FUNCTION_0_214();
}

void sub_216C70EDC()
{
  v3 = OUTLINED_FUNCTION_14_66();
  v4 = type metadata accessor for PosterLockup(v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  if (!sub_2166BF3C8(v1))
  {
    goto LABEL_7;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
LABEL_5:
    sub_216DE9538();

    v1 = *(v2 + *(v4 + 44));
    sub_216C74634(v2, type metadata accessor for PosterLockup);
    if (v1 == 1)
    {
      memset(v8, 0, 40);
LABEL_8:
      *(v0 + 24) = &unk_28291FA68;
      *(v0 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v7);
      sub_21698F234(v8, v1 + 16);
      OUTLINED_FUNCTION_2_149(&unk_28291FB08);
      sub_216A906C4(v8);
      OUTLINED_FUNCTION_0_214();
      return;
    }

LABEL_7:
    memset(v8, 0, 24);
    *(&v8[1] + 8) = xmmword_21703EA60;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_62();
  if (v6)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_216C71024(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  if ((a1 & 0xFF00) == 0xFE00)
  {
    v4 = 1;
  }

  else
  {
    if (HIBYTE(a1) != 255 && HIBYTE(a1) == 1)
    {
      OUTLINED_FUNCTION_1_184();
      *(a2 + 24) = &unk_28291FA68;
      *(a2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_5_111(v14, v15, v16, v17, v18, v19, v20, v21, v22[0]);
      OUTLINED_FUNCTION_12_73(&unk_28291FB08);
      goto LABEL_11;
    }

    v4 = 1;
    if (!HIBYTE(a1))
    {
      v4 = a1;
    }
  }

  OUTLINED_FUNCTION_1_184();
  *(a2 + 24) = &unk_28291FA68;
  *(a2 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v5, v6, v7, v8, v9, v10, v11, v12, v22[0]);
  *(v2 + 80) = &unk_28291FB08;
  *(v2 + 88) = &off_28291F9F0;
  *(v2 + 56) = v4;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
LABEL_11:
  sub_216A906C4(v22);
  OUTLINED_FUNCTION_0_214();
}

void sub_216C71128(uint64_t a1, unsigned __int16 a2)
{
  v5 = OUTLINED_FUNCTION_14_66();
  v6 = type metadata accessor for SquareLockup(v5);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_217042990;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (HIBYTE(a2) == 255 || (a2 & 0xFF00) == 65024)
  {
    goto LABEL_8;
  }

  v10 = HIBYTE(a2);
  if (v10)
  {
    if (v10 == 1)
    {
      sub_21698F234(v21, v18);
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v11 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v11);
      sub_21698F234(v18, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      *(v3 + 56) = xmmword_217016ED0;
      v12 = 64;
LABEL_17:
      *(v3 + 72) = v12;
      goto LABEL_18;
    }

LABEL_8:
    sub_21698F234(v21, v18);
    *(v2 + 24) = &unk_28291FA68;
    *(v2 + 32) = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v13);
    sub_21698F234(v18, v3 + 16);
    OUTLINED_FUNCTION_2_149(&unk_28291FB08);
LABEL_18:
    sub_216A906C4(v18);
    OUTLINED_FUNCTION_0_214();
    sub_216A906C4(v19);
    sub_216A906C4(v21);
    return;
  }

  if (!sub_2166BF3C8(v3))
  {
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
LABEL_13:
    sub_216DE9428();

    v3 = v8[57];
    sub_216C74634(v8, type metadata accessor for SquareLockup);
    if (v3 == 1)
    {
      v15 = v19;
LABEL_16:
      sub_21698F234(v15, v18);
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v16);
      sub_21698F234(v18, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      *(v3 + 56) = a2;
      *(v3 + 64) = 0;
      v12 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v15 = v21;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_15_62();
  if (v14)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_13;
  }

  __break(1u);
}

void sub_216C7139C(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_2170592D0);
}

void sub_216C713BC(unsigned __int16 a1@<W1>, uint64_t *a2@<X8>)
{
  if (HIBYTE(a1) == 255 || (a1 & 0xFF00) == 65024)
  {
    goto LABEL_7;
  }

  v5 = HIBYTE(a1);
  if (!v5)
  {
    v7 = a1;
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v8);
    OUTLINED_FUNCTION_1_184();
    sub_21698F234(v10, v2 + 16);
    *(v2 + 80) = &unk_28291FB08;
    *(v2 + 88) = &off_28291F9F0;
    *(v2 + 56) = v7;
    *(v2 + 64) = 0;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
LABEL_7:
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v6);
    OUTLINED_FUNCTION_1_184();
    sub_21698F234(v10, v2 + 16);
    *(v2 + 80) = &unk_28291FB08;
    *(v2 + 88) = &off_28291F9F0;
    *(v2 + 56) = xmmword_21703EA60;
LABEL_8:
    *(v2 + 72) = 0;
    sub_216A906C4(v10);
    OUTLINED_FUNCTION_0_214();
    return;
  }

  a2[3] = &unk_28291DC58;
  a2[4] = &off_28291DD80;
  v9 = OUTLINED_FUNCTION_75_7(&unk_282932B90);
  *a2 = v9;
  *(v9 + 40) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = 1;
  *(v9 + 56) = 0x403C000000000000;
  *(v9 + 64) = 0;
}

void sub_216C71520(uint64_t a1, unsigned __int16 a2)
{
  v5 = OUTLINED_FUNCTION_14_66();
  type metadata accessor for VerticalVideoLockup(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_19_48();
  v21 = xmmword_217042990;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (HIBYTE(a2) == 255 || (a2 & 0xFF00) == 65024)
  {
    goto LABEL_19;
  }

  v8 = HIBYTE(a2);
  if (!v8)
  {
    if (sub_2166BF3C8(v3))
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_17_60();
        v3 = v16;
      }

      else
      {
        OUTLINED_FUNCTION_15_62();
        if (!v11)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_18_54();
      }

      sub_216DE8FE8();

      OUTLINED_FUNCTION_10_83();
      if (v3 == 2)
      {
        v12 = v18;
LABEL_20:
        sub_21698F234(v12, v17);
        *(v2 + 24) = &unk_28291FA68;
        *(v2 + 32) = &off_28291DBE0;
        OUTLINED_FUNCTION_6_99();
        v13 = swift_allocObject();
        OUTLINED_FUNCTION_7_94(v13);
        sub_21698F234(v17, v3 + 16);
        OUTLINED_FUNCTION_2_149(&unk_28291FB08);
LABEL_21:
        sub_216A906C4(v17);
        OUTLINED_FUNCTION_0_214();
        sub_216A906C4(v18);
        sub_216A906C4(v20);
        return;
      }
    }

LABEL_19:
    v12 = v20;
    goto LABEL_20;
  }

  if (v8 != 1)
  {
    goto LABEL_19;
  }

  if (!sub_2166BF3C8(v3))
  {
    goto LABEL_22;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
    v3 = v15;
LABEL_11:
    sub_216DE8FE8();

    OUTLINED_FUNCTION_10_83();
    if (v3 == 2)
    {
      v10 = v18;
LABEL_23:
      sub_21698F234(v10, v17);
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v14);
      sub_21698F234(v17, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      OUTLINED_FUNCTION_13_70(xmmword_217016ED0);
      goto LABEL_21;
    }

LABEL_22:
    v10 = v20;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_15_62();
  if (v9)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_11;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_216C71754(uint64_t a1)
{
  type metadata accessor for TrackLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_55();
  if (v7)
  {
    if (!sub_21700F2B4())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_15_62();
  if (v8)
  {
    OUTLINED_FUNCTION_18_54();
LABEL_6:
    sub_216DE90F8();

    sub_216C745D4(v5, v1, type metadata accessor for TrackLockup);
    v9 = [objc_opt_self() defaultMetrics];
    [v9 scaledValueForValue_];

    sub_216BC29E0();
    sub_216C74634(v1, type metadata accessor for TrackLockup);
    return;
  }

  __break(1u);
}

void sub_216C7191C(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DD68;
  a1[2].n128_u64[0] = &off_28291DDA0;
  OUTLINED_FUNCTION_3_62(a1, xmmword_21702B1C0);
}

double sub_216C7193C@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for StaticGridLayout;
  a1[4] = &off_282933558;
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 32;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

uint64_t sub_216C719B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 - 4) < 4u)
  {
    return qword_217059DE8[(a1 - 4)];
  }

  memset(v6, 0, sizeof(v6));
  v7 = xmmword_217042990;
  v4 = sub_21698EFF8(a1, a2, a3, a4);
  sub_216A906C4(v6);
  return v4;
}

uint64_t sub_216C71A34@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v9 = &_s9IOSLayoutVN;
  v10 = &off_282932CA0;
  v4 = _s7SectionV6HeaderVMa(0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) == 1)
  {
    v5 = 0x4024000000000000;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v6 = swift_allocObject();
  *a2 = v6;
  sub_21698F234(v8, v6 + 16);
  *(v6 + 80) = &unk_28291FB08;
  *(v6 + 88) = &off_28291F9F0;
  *(v6 + 56) = xmmword_217016ED0;
  *(v6 + 72) = 64;
  result = sub_216A906C4(v8);
  *(v6 + 96) = v5;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0x4032000000000000;
  return result;
}

void sub_216C71B20(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_2170592E0);
}

void sub_216C71B40(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_2170592F0);
}

uint64_t sub_216C71B64@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1 == 512)
  {
    a2[3] = &unk_28291DC58;
    a2[4] = &off_28291DD80;
    v3 = OUTLINED_FUNCTION_75_7(&unk_282932B90);
    *a2 = v3;
    result = OUTLINED_FUNCTION_8_94(v3);
    *(result + 56) = 0;
    *(result + 64) = 0;
    return result;
  }

  v6 = a1 & 0xFF00;
  v7 = [objc_opt_self() defaultMetrics];
  [v7 scaledValueForValue_];
  v9 = v8;

  if (v6 == 65024)
  {
    v10 = 1;
LABEL_5:
    if (v9 <= 8.0)
    {
      v11 = -v9;
    }

    else
    {
      v11 = -8.0;
    }

    OUTLINED_FUNCTION_1_184();
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_5_111(v12, v13, v14, v15, v16, v17, v18, v19, v29[0]);
    *(a1 + 80) = &unk_28291FB08;
    *(a1 + 88) = &off_28291F9F0;
    *(a1 + 56) = v10;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    result = sub_216A906C4(v29);
    *(a1 + 96) = v11;
    *(a1 + 104) = 0;
    goto LABEL_16;
  }

  if (BYTE1(a1) == 255 || BYTE1(a1) != 1)
  {
    v10 = 1;
    if (!BYTE1(a1))
    {
      v10 = a1;
    }

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_1_184();
  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v21, v22, v23, v24, v25, v26, v27, v28, v29[0]);
  OUTLINED_FUNCTION_12_73(&unk_28291FB08);
  result = sub_216A906C4(v29);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
LABEL_16:
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x4032000000000000;
  return result;
}

void sub_216C71D20(uint64_t a1)
{
  v3 = type metadata accessor for HorizontalLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_55();
  if (v8)
  {
    if (!sub_21700F2B4())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
  }

  else
  {
    OUTLINED_FUNCTION_15_62();
    if (!v9)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_18_54();
  }

  sub_216DE9758();

  sub_216C745D4(v6, v1, type metadata accessor for HorizontalLockup);
  if (*(v1 + *(v3 + 60)) != 1)
  {
    sub_21700F7D4();
  }

  OUTLINED_FUNCTION_11_79();
}

uint64_t sub_216C71F18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = _s7SectionV6HeaderVMa(0);
  result = __swift_getEnumTagSinglePayload(a1, 1, v4);
  v6 = 0.0;
  if (result == 1)
  {
    v6 = 6.0;
  }

  *(a2 + 24) = &unk_28291DCE8;
  *(a2 + 32) = &off_28291DD90;
  *a2 = v6;
  *(a2 + 8) = 0x402C000000000000;
  return result;
}

void sub_216C71FB0(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_184();
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v2, v3, v4, v5, v6, v7, v8, v9, v10[0]);
  OUTLINED_FUNCTION_2_149(&unk_28291FB08);
  sub_216A906C4(v10);
  OUTLINED_FUNCTION_0_214();
}

uint64_t sub_216C72030(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 1 << a1;
  v6 = 6;
  if (a5 == 9)
  {
    v6 = 9;
  }

  if (a5 == 7)
  {
    v6 = 7;
  }

  v7 = 3;
  if (a5 >= 10)
  {
    v7 = 4;
  }

  v8 = 6;
  if (a5 == 7)
  {
    v8 = 7;
  }

  if ((v5 & 3) == 0)
  {
    v7 = v8;
  }

  if ((v5 & 0xF0) != 0)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_216C720A0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    v3 = sub_21700F2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  result = swift_allocObject();
  *a2 = result;
  *(result + 40) = &_s25LiveRadioGridLockupLayoutVN;
  *(result + 48) = &off_282932C80;
  *(result + 16) = v3;
  *(result + 80) = &_s25LiveRadioGridLockupLayoutVN;
  *(result + 88) = &off_282932C70;
  *(result + 56) = v3;
  *(result + 96) = sub_216C7215C;
  *(result + 104) = 0;
  *(result + 112) = 1;
  *(result + 120) = 0x4032000000000000;
  return result;
}

double sub_216C7215C(char a1)
{
  result = 20.0;
  if ((a1 & 0xFE) == 0)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_216C72178(uint64_t a1, __int16 a2)
{
  if ((a2 & 0xFF00) == 0xFE00)
  {
    return 3;
  }

  if ((HIBYTE(a2) == 255 || (a2 & 0xFE) == 0 || HIBYTE(a2)) && (HIBYTE(a2) != 255 ? (v3 = HIBYTE(a2) == 1) : (v3 = 0), !v3))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_216C72200@<X0>(uint64_t a1@<X8>)
{
  memset(v6, 0, sizeof(v6));
  v7 = xmmword_217042990;
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_7_94(v2);
  OUTLINED_FUNCTION_22_51(v3, v4);
  OUTLINED_FUNCTION_2_149(&unk_28291FB08);
  result = sub_216A906C4(v6);
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0x403C000000000000;
  return result;
}

double sub_216C722A4@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = MEMORY[0x277CDF310];
  a1[4] = &off_28291DBD0;
  v2 = swift_allocObject();
  *a1 = v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void sub_216C72334(unsigned __int16 a1@<W1>, uint64_t a2@<X8>)
{
  memset(v10, 0, sizeof(v10));
  v11 = xmmword_21703EA60;
  if (HIBYTE(a1) == 255 || (a1 & 0xFF00) == 65024)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0x80;
  }

  else if (a1 > 0xFFu)
  {
    v4 = 0;
    v6 = 64;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (a1 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a1;
    }

    if (a1 == 1)
    {
      v6 = 0x80;
    }

    else
    {
      v6 = 1;
    }
  }

  *(a2 + 24) = &unk_28291FA68;
  *(a2 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_7_94(v7);
  OUTLINED_FUNCTION_22_51(v8, v9);
  *(v2 + 80) = &unk_28291FB08;
  *(v2 + 88) = &off_28291F9F0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;
  *(v2 + 72) = v6;
  sub_216A906C4(v10);
  OUTLINED_FUNCTION_0_214();
}

uint64_t sub_216C72438@<X0>(char a1@<W3>, uint64_t *a2@<X8>)
{
  a2[3] = &unk_28291DC58;
  a2[4] = &off_28291DD80;
  v4 = OUTLINED_FUNCTION_75_7(&unk_282932B90);
  *a2 = v4;
  result = OUTLINED_FUNCTION_8_94(v4);
  *(result + 56) = 0;
  *(result + 64) = a1;
  return result;
}

void sub_216C724AC(uint64_t a1@<X8>)
{
  v6 = &_s14TextListLayoutVN;
  v7 = &off_282932C60;
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_7_94(v2);
  OUTLINED_FUNCTION_22_51(v3, v4);
  *(v1 + 80) = &unk_28291FB08;
  *(v1 + 88) = &off_28291F9F0;
  OUTLINED_FUNCTION_13_70(xmmword_21701AB80);
  sub_216A906C4(v5);
  OUTLINED_FUNCTION_0_214();
}

void sub_216C72544(void *a1@<X8>)
{
  a1[3] = &unk_28291DCE8;
  a1[4] = &off_28291DD90;
  *a1 = 0;
  a1[1] = 0;
}

void sub_216C72560(__int16 a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = HIBYTE(a1);
  if (HIBYTE(a1) == 255 || (a1 & 0xFF00) == 0xFE00)
  {
    goto LABEL_14;
  }

  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) != 1)
    {

      goto LABEL_11;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_21700F7D4();

  if (v5)
  {
LABEL_11:
    a2[3] = &unk_28291DC58;
    a2[4] = &off_28291DD80;
    v6 = OUTLINED_FUNCTION_75_7(&unk_282932B90);
    *a2 = v6;
    v7 = OUTLINED_FUNCTION_8_94(v6);
    *(v7 + 56) = 0x403C000000000000;
    *(v7 + 64) = v8;
    return;
  }

  if (!v3)
  {
    v4 = sub_21700F7D4();

    if (v4)
    {
      goto LABEL_13;
    }

LABEL_14:
    OUTLINED_FUNCTION_1_184();
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_5_111(v17, v18, v19, v20, v21, v22, v23, v24, v25[0]);
    OUTLINED_FUNCTION_2_149(&unk_28291FB08);
    goto LABEL_15;
  }

LABEL_13:
  v25[3] = &_s16VisionGridLayoutVN;
  v25[4] = &off_282932C50;
  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v9, v10, v11, v12, v13, v14, v15, v16, v25[0]);
  *(v4 + 80) = &unk_28291FB08;
  *(v4 + 88) = &off_28291F9F0;
  OUTLINED_FUNCTION_13_70(xmmword_217016ED0);
LABEL_15:
  sub_216A906C4(v25);
  OUTLINED_FUNCTION_0_214();
}

uint64_t sub_216C72770(uint64_t a1)
{
  result = sub_216976E30(qword_280E37270, type metadata accessor for VerticalVideoLockupView, &unk_217044220);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C727C8(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC76E8, type metadata accessor for VerticalVideoLockupView, &unk_217059300);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72820(uint64_t a1)
{
  result = sub_216976E30(qword_280E32AB8, type metadata accessor for VerticalArtworkListItemView, &unk_217067D70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72878(uint64_t a1)
{
  result = sub_216976E30(&qword_280E32AB0, type metadata accessor for VerticalArtworkListItemView, &unk_217059338);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C728D0(uint64_t a1)
{
  result = sub_216976E30(qword_280E3DED8, type metadata accessor for GradientListRowView, &unk_217050000);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72928(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3DED0, type metadata accessor for GradientListRowView, &unk_217059370);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72980(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C729BC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C729F8(uint64_t a1)
{
  result = sub_216A134F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C72A20(uint64_t a1)
{
  result = sub_216C72A48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C72A48()
{
  result = qword_280E38AE0;
  if (!qword_280E38AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E38AE0);
  }

  return result;
}

uint64_t sub_216C72A9C(uint64_t a1)
{
  result = sub_216976E30(qword_280E3AE78, type metadata accessor for TrackShelfLockupView, &unk_21704F680);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72AF4(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC76F0, type metadata accessor for TrackShelfLockupView, &unk_217059418);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72B4C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3CE50, type metadata accessor for TopSearchLockupView, &unk_21701ABA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72BA4(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC76F8, type metadata accessor for TopSearchLockupView, &unk_217059450);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72BFC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72C38(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72C74(uint64_t a1)
{
  result = sub_216976E30(qword_280E444E0, type metadata accessor for TextListView, &unk_21702E590);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72CCC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7700, type metadata accessor for TextListView, &unk_2170594C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72D24(uint64_t a1)
{
  result = sub_216976E30(qword_280E3CFA0, type metadata accessor for SuperHeroLockupView, &unk_21703CAA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72D7C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3CF98, type metadata accessor for SuperHeroLockupView, &unk_2170594F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72DD4(uint64_t a1)
{
  result = sub_216976E30(qword_280E3E620, type metadata accessor for SuggestionItemView, &unk_21704CBD4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72E2C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7708, type metadata accessor for SuggestionItemView, &unk_217059530);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72E84(uint64_t a1)
{
  result = sub_216976E30(qword_280E40720, type metadata accessor for SquareLockupView, &unk_21704E3A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72EDC(uint64_t a1)
{
  result = sub_216976E30(&qword_280E40710, type metadata accessor for SquareLockupView, &unk_217059568);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72F34(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC1E98, type metadata accessor for SplitPosterLockupView, &unk_217041670);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72F8C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7710, type metadata accessor for SplitPosterLockupView, &unk_2170595A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72FE4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73020(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C7305C(uint64_t a1)
{
  result = sub_216A5FB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C73084(uint64_t a1)
{
  result = sub_216C730AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C730AC()
{
  result = qword_27CAC7718;
  if (!qword_27CAC7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7718);
  }

  return result;
}

uint64_t sub_216C73100(uint64_t a1)
{
  result = sub_216976E30(qword_280E2CD20, type metadata accessor for SocialProfileFollowRequestResponseHeaderView, &unk_21706FE60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73158(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2CD18, type metadata accessor for SocialProfileFollowRequestResponseHeaderView, &unk_217059648);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C731B0(uint64_t a1)
{
  result = sub_216976E30(&qword_280E47E48, type metadata accessor for SocialProfileViewFollowRequestsView, &unk_217039B30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73208(uint64_t a1)
{
  result = sub_216976E30(&qword_280E47E40, type metadata accessor for SocialProfileViewFollowRequestsView, &unk_217059680);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73260(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2EA80, type metadata accessor for SocialProfileFindFriendsButtonView, &unk_217029360);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C732B8(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2EA78, type metadata accessor for SocialProfileFindFriendsButtonView, &unk_2170596B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73310(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7334C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73388(uint64_t a1)
{
  result = sub_216976E30(qword_280E31DC0, type metadata accessor for SearchQueryContextLockupView, &unk_21706E270);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C733E0(uint64_t a1)
{
  result = sub_216976E30(&qword_280E31DB8, type metadata accessor for SearchQueryContextLockupView, &unk_217059728);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73438(uint64_t a1)
{
  result = sub_216976E30(qword_280E3B858, type metadata accessor for SocialCardLockupView, &unk_217054920);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73490(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7720, type metadata accessor for SocialCardLockupView, &unk_217059760);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C734E8(uint64_t a1)
{
  result = sub_216C73510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C73510()
{
  result = qword_27CAC7728;
  if (!qword_27CAC7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7728);
  }

  return result;
}

uint64_t sub_216C73564(uint64_t a1)
{
  result = sub_216976E30(&qword_27CABF510, type metadata accessor for RecentSearchLockupView, &unk_217033430);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C735BC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7730, type metadata accessor for RecentSearchLockupView, &unk_2170597D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73614(uint64_t a1)
{
  result = sub_216976E30(qword_280E40B68, type metadata accessor for PosterLockupView, &unk_21701F2C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7366C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7738, type metadata accessor for PosterLockupView, &unk_217059808);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C736C4(uint64_t a1)
{
  result = sub_216976E30(qword_280E3D4E0, type metadata accessor for PopoverSelectorView, &unk_21701E804);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7371C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3D4D8, type metadata accessor for PopoverSelectorView, &unk_217059840);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73774(uint64_t a1)
{
  result = sub_216976E30(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView, &unk_2170453C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C737CC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7740, type metadata accessor for PlaylistTrackLockupView, &unk_217059878);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73824(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAB72B8, type metadata accessor for LiveRadioGridLockupView, &unk_217016A80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7387C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7748, type metadata accessor for LiveRadioGridLockupView, &unk_2170598B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C738D4(uint64_t a1)
{
  result = sub_216976E30(qword_280E35708, type metadata accessor for LiveRadioPosterLockupView, &unk_21704BE78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7392C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7750, type metadata accessor for LiveRadioPosterLockupView, &unk_2170598E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73984(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2BAE0, type metadata accessor for LinkView, &unk_21707107C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C739DC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7758, type metadata accessor for LinkView, &unk_217059920);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73A34(uint64_t a1)
{
  result = sub_216976E30(qword_280E36E58, type metadata accessor for AnimatedTextListItemView, &unk_21704D244);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73A8C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E36E50, type metadata accessor for AnimatedTextListItemView, &unk_217059958);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73AE4(uint64_t a1)
{
  result = sub_216976E30(qword_280E40FF8, type metadata accessor for InlineUpsellView, &unk_21702D174);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73B3C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E40FF0, type metadata accessor for InlineUpsellView, &unk_217059990);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73B94(uint64_t a1)
{
  result = sub_216976E30(&qword_280E400E0, type metadata accessor for LandingUpsellView, &unk_217068020);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73BEC(uint64_t a1)
{
  result = sub_216976E30(&qword_280E400D8, type metadata accessor for LandingUpsellView, &unk_2170599C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73C44(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3C2D0, type metadata accessor for HorizontalLockupView, &unk_21705DB40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73C9C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7760, type metadata accessor for HorizontalLockupView, &unk_217059A00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73CF4(uint64_t a1)
{
  result = sub_216976E30(qword_280E35938, type metadata accessor for GroupedTextListLockupView, &unk_2170429CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73D4C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E35930, type metadata accessor for GroupedTextListLockupView, &unk_217059A38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73DA4(uint64_t a1)
{
  result = sub_216976E30(qword_280E3EF78, type metadata accessor for FlowcaseLockupView, &unk_217026E70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73DFC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7768, type metadata accessor for FlowcaseLockupView, &unk_217059A70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73E54(uint64_t a1)
{
  result = sub_216976E30(qword_280E38600, type metadata accessor for ExpandableParagraphView, &unk_217034CC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73EAC(uint64_t a1)
{
  result = sub_216976E30(&qword_280E385F8, type metadata accessor for ExpandableParagraphView, &unk_217059AA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73F04(uint64_t a1)
{
  result = sub_216976E30(qword_280E3C4F0, type metadata accessor for EmptyStateLockupView, &unk_217046B98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73F5C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7770, type metadata accessor for EmptyStateLockupView, &unk_217059AE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73FB4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73FF0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7402C(uint64_t a1)
{
  result = sub_216976E30(qword_280E2EC98, type metadata accessor for ContainerDetailTrackListFooterView, &unk_2170239C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74084(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2EC90, type metadata accessor for ContainerDetailTrackListFooterView, &unk_217059B50);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C740DC(uint64_t a1)
{
  result = sub_216C74104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C74104()
{
  result = qword_280E36598[0];
  if (!qword_280E36598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E36598);
  }

  return result;
}

unint64_t sub_216C74158(uint64_t a1)
{
  result = sub_216C74180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C74180()
{
  result = qword_280E36590;
  if (!qword_280E36590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36590);
  }

  return result;
}

unint64_t sub_216C741D4(uint64_t a1)
{
  result = sub_216B81B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C741FC(uint64_t a1)
{
  result = sub_216C74224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C74224()
{
  result = qword_280E3AC70;
  if (!qword_280E3AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3AC70);
  }

  return result;
}

uint64_t sub_216C74278(uint64_t a1)
{
  result = sub_216976E30(&qword_280E41428, type metadata accessor for BubbleLockupView, &unk_21703DD10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C742D0(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7778, type metadata accessor for BubbleLockupView, &unk_217059BF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74328(uint64_t a1)
{
  result = sub_216976E30(qword_280E31E78, type metadata accessor for SearchLandingBrickLockupView, &unk_21702E190);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74380(uint64_t a1)
{
  result = sub_216976E30(&qword_280E31E68, type metadata accessor for SearchLandingBrickLockupView, &unk_217059C30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C743D8(uint64_t a1)
{
  result = sub_216976E30(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74430(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7780, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217059C68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74488(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C744C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74500(uint64_t a1)
{
  result = sub_216976E30(&qword_27CABB290, type metadata accessor for AlbumTrackLockupView, &unk_2170230D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74558(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7788, type metadata accessor for AlbumTrackLockupView, &unk_217059CD8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C745B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_216C745D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216C74634(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C74700()
{
  sub_217006F54();
  OUTLINED_FUNCTION_1();
  v164 = v1;
  v165 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_0();
  v163 = v2;
  OUTLINED_FUNCTION_4_1();
  v3 = sub_2170070F4();
  v4 = OUTLINED_FUNCTION_0(v3, &v153);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v6 = sub_217007064();
  v7 = OUTLINED_FUNCTION_0(v6, &v155);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v8);
  v9 = sub_217007264();
  v10 = OUTLINED_FUNCTION_0(v9, &v158);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v11);
  v12 = sub_217007324();
  v13 = OUTLINED_FUNCTION_0(v12, &v161);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v14);
  v15 = sub_2170073D4();
  v16 = OUTLINED_FUNCTION_0(v15, &v164);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v17);
  v18 = sub_21700C084();
  v19 = OUTLINED_FUNCTION_0(v18, &v170);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v20);
  v21 = sub_21700C644();
  v22 = OUTLINED_FUNCTION_0(v21, &v167);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v23);
  v24 = sub_217006FE4();
  v25 = OUTLINED_FUNCTION_0(v24, v173);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v26);
  v27 = sub_21700BEA4();
  v28 = OUTLINED_FUNCTION_0(v27, &v174);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_21700C994();
  v31 = OUTLINED_FUNCTION_0(v30, &v175);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v32);
  v33 = sub_21700C734();
  v34 = OUTLINED_FUNCTION_0(v33, &v176);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v35);
  v36 = sub_21700C924();
  v37 = OUTLINED_FUNCTION_0(v36, &v177);
  v153 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v39);
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v155 = v41;
  v156 = v40;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v154 = v42;
  OUTLINED_FUNCTION_4_1();
  sub_217006B84();
  OUTLINED_FUNCTION_1();
  v158 = v44;
  v159 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  v157 = v45;
  OUTLINED_FUNCTION_4_1();
  sub_21700C254();
  OUTLINED_FUNCTION_1();
  v161 = v47;
  v162 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  v160 = v48;
  OUTLINED_FUNCTION_4_1();
  sub_21700C554();
  OUTLINED_FUNCTION_1();
  v167 = v50;
  v168 = v49;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_0();
  v166 = v51;
  OUTLINED_FUNCTION_4_1();
  sub_217006E94();
  OUTLINED_FUNCTION_1();
  v170 = v53;
  v171 = v52;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  v169 = v54;
  OUTLINED_FUNCTION_4_1();
  sub_2170072A4();
  OUTLINED_FUNCTION_1();
  v172 = v56;
  v173[0] = v55;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7();
  v59 = v58 - v57;
  v60 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7();
  v66 = v65 - v64;
  v67 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v69 = v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7();
  v73 = v72 - v71;
  v74 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v76 = v75;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_7();
  v80 = v79 - v78;
  (*(v76 + 16))(v79 - v78, v173[1], v74);
  v81 = (*(v76 + 88))(v80, v74);
  if (v81 == *MEMORY[0x277D2A400])
  {
    v82 = OUTLINED_FUNCTION_13_71();
    v83(v82);
    v84 = OUTLINED_FUNCTION_39_3();
    v85(v84);
    sub_21700C184();
    OUTLINED_FUNCTION_43_28();
    (*(v69 + 8))(v73, v67);
  }

  else if (v81 == *MEMORY[0x277D2A418])
  {
    v86 = OUTLINED_FUNCTION_13_71();
    v87(v86);
    (*(v62 + 32))(v66, v80, v60);
    sub_21700C364();
    OUTLINED_FUNCTION_43_28();
    (*(v62 + 8))(v66, v60);
  }

  else if (v81 == *MEMORY[0x277D2A438])
  {
    v88 = v80;
    (*(v76 + 96))(v80, v74);
    v90 = v172;
    v89 = v173[0];
    (*(v172 + 32))(v59, v88, v173[0]);
    sub_217007294();
    OUTLINED_FUNCTION_43_28();
    (*(v90 + 8))(v59, v89);
  }

  else
  {
    v91 = v80;
    if (v81 == *MEMORY[0x277D2A3C8])
    {
      v92 = OUTLINED_FUNCTION_9_85();
      v93(v92);
      v73 = v169;
      v59 = v170;
      v94 = OUTLINED_FUNCTION_10_84();
      v91 = v171;
      v95(v94);
      sub_217006E74();
    }

    else if (v81 == *MEMORY[0x277D2A428])
    {
      v96 = OUTLINED_FUNCTION_9_85();
      v97(v96);
      v73 = v166;
      v59 = v167;
      v98 = OUTLINED_FUNCTION_10_84();
      v91 = v168;
      v99(v98);
      sub_21700C534();
    }

    else if (v81 == *MEMORY[0x277D2A388])
    {
      v100 = OUTLINED_FUNCTION_9_85();
      v101(v100);
      v73 = v163;
      v59 = v164;
      v102 = OUTLINED_FUNCTION_10_84();
      v91 = v165;
      v103(v102);
      sub_217006F34();
    }

    else if (v81 == *MEMORY[0x277D2A408])
    {
      v104 = OUTLINED_FUNCTION_9_85();
      v105(v104);
      v73 = v160;
      v59 = v161;
      v106 = OUTLINED_FUNCTION_10_84();
      v91 = v162;
      v107(v106);
      sub_21700C244();
    }

    else if (v81 == *MEMORY[0x277D2A3B0])
    {
      v108 = OUTLINED_FUNCTION_9_85();
      v109(v108);
      v73 = v157;
      v59 = v158;
      v110 = OUTLINED_FUNCTION_10_84();
      v91 = v159;
      v111(v110);
      sub_217006B54();
    }

    else if (v81 == *MEMORY[0x277D2A3B8])
    {
      v112 = OUTLINED_FUNCTION_9_85();
      v113(v112);
      v73 = v154;
      v59 = v155;
      v114 = OUTLINED_FUNCTION_10_84();
      v91 = v156;
      v115(v114);
      sub_21700BA14();
    }

    else if (v81 == *MEMORY[0x277D2A440])
    {
      v116 = OUTLINED_FUNCTION_9_85();
      v117(v116);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v118();
      sub_21700C804();
    }

    else if (v81 == *MEMORY[0x277D2A3E8])
    {
      v119 = OUTLINED_FUNCTION_9_85();
      v120(v119);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v121();
      sub_21700C724();
    }

    else if (v81 == *MEMORY[0x277D2A450])
    {
      v122 = OUTLINED_FUNCTION_9_85();
      v123(v122);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v124();
      sub_21700C964();
    }

    else if (v81 == *MEMORY[0x277D2A3C0])
    {
      v125 = OUTLINED_FUNCTION_9_85();
      v126(v125);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v127();
      sub_21700BE84();
    }

    else if (v81 == *MEMORY[0x277D2A3D0])
    {
      v128 = OUTLINED_FUNCTION_9_85();
      v129(v128);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v130();
      sub_217006FA4();
    }

    else if (v81 == *MEMORY[0x277D2A3F8])
    {
      v131 = OUTLINED_FUNCTION_13_71();
      v132(v131);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v133();
      sub_21700C014();
    }

    else if (v81 == *MEMORY[0x277D2A430])
    {
      v134 = OUTLINED_FUNCTION_13_71();
      v135(v134);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v136();
      sub_21700C624();
    }

    else if (v81 == *MEMORY[0x277D2A458])
    {
      v137 = OUTLINED_FUNCTION_13_71();
      v138(v137);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v139();
      sub_217007394();
    }

    else if (v81 == *MEMORY[0x277D2A448])
    {
      v140 = OUTLINED_FUNCTION_13_71();
      v141(v140);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v142();
      sub_2170072F4();
    }

    else if (v81 == *MEMORY[0x277D2A420])
    {
      v143 = OUTLINED_FUNCTION_13_71();
      v144(v143);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v145();
      sub_217007234();
    }

    else if (v81 == *MEMORY[0x277D2A3D8])
    {
      v146 = OUTLINED_FUNCTION_13_71();
      v147(v146);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v148();
      sub_217007034();
    }

    else
    {
      if (v81 != *MEMORY[0x277D2A3E0])
      {
        (*(v76 + 8))(v80, v74);
        return 0;
      }

      v149 = OUTLINED_FUNCTION_13_71();
      v150(v149);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v151();
      sub_2170070C4();
    }

    OUTLINED_FUNCTION_43_28();
    (*(v59 + 8))(v73, v91);
  }

  return v74;
}

uint64_t sub_216C756EC()
{
  v0 = sub_2170070F4();
  v1 = OUTLINED_FUNCTION_0(v0, &v113);
  v90 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v3);
  sub_217007064();
  OUTLINED_FUNCTION_1();
  v93 = v5;
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v92 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v96 = v8;
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v95 = v9;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v99 = v11;
  v100 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v98 = v12;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v105 = v14;
  v106 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v104 = v15;
  OUTLINED_FUNCTION_4_1();
  sub_21700C644();
  OUTLINED_FUNCTION_1();
  v102 = v17;
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v101 = v18;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v108 = v20;
  v109 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v107 = v21;
  OUTLINED_FUNCTION_4_1();
  v22 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v110 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v111 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  v34 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v40 = v39 - v38;
  v41 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  v47 = v46 - v45;
  (*(v43 + 16))(v46 - v45, v112, v41);
  v48 = (*(v43 + 88))(v47, v41);
  if (v48 != *MEMORY[0x277D2A400])
  {
    if (v48 == *MEMORY[0x277D2A418] || v48 == *MEMORY[0x277D2A438] || v48 == *MEMORY[0x277D2A3C8] || v48 == *MEMORY[0x277D2A428] || v48 == *MEMORY[0x277D2A388] || v48 == *MEMORY[0x277D2A408])
    {
      goto LABEL_10;
    }

    if (v48 == *MEMORY[0x277D2A3B0])
    {
      v55 = OUTLINED_FUNCTION_12_74();
      v56(v55);
      (*(v111 + 32))(v33, v47, v28);
      sub_217006AE4();
      OUTLINED_FUNCTION_39_29();
      v52 = v33;
      v53 = v28;
      goto LABEL_3;
    }

    if (v48 == *MEMORY[0x277D2A3B8])
    {
      v57 = OUTLINED_FUNCTION_12_74();
      v58(v57);
      (*(v110 + 32))(v27, v47, v22);
      sub_21700B9B4();
      OUTLINED_FUNCTION_39_29();
      v52 = v27;
      v53 = v22;
      goto LABEL_3;
    }

    if (v48 == *MEMORY[0x277D2A440])
    {
      v59 = OUTLINED_FUNCTION_12_74();
      v60(v59);
      v61 = v107;
      v62 = v108;
      v63 = OUTLINED_FUNCTION_11_80();
      v64 = v109;
      v65(v63);
      v66 = sub_21700C774();
LABEL_18:
      v43 = v66;
      (*(v62 + 8))(v61, v64);
      return v43;
    }

    if (v48 != *MEMORY[0x277D2A3E8] && v48 != *MEMORY[0x277D2A450] && v48 != *MEMORY[0x277D2A3C0] && v48 != *MEMORY[0x277D2A3D0])
    {
      if (v48 == *MEMORY[0x277D2A3F8])
      {
        v67 = OUTLINED_FUNCTION_12_74();
        v68(v67);
        v61 = v104;
        v62 = v105;
        v69 = OUTLINED_FUNCTION_11_80();
        v64 = v106;
        v70(v69);
        v66 = sub_21700BF64();
        goto LABEL_18;
      }

      if (v48 == *MEMORY[0x277D2A430])
      {
        v71 = OUTLINED_FUNCTION_12_74();
        v72(v71);
        v61 = v101;
        v62 = v102;
        v73 = OUTLINED_FUNCTION_11_80();
        v64 = v103;
        v74(v73);
        v66 = sub_21700C5E4();
        goto LABEL_18;
      }

      if (v48 == *MEMORY[0x277D2A458])
      {
        v75 = OUTLINED_FUNCTION_12_74();
        v76(v75);
        v61 = v98;
        v62 = v99;
        v77 = OUTLINED_FUNCTION_11_80();
        v64 = v100;
        v78(v77);
        v66 = sub_2170073B4();
        goto LABEL_18;
      }

      if (v48 == *MEMORY[0x277D2A448])
      {
        v79 = OUTLINED_FUNCTION_12_74();
        v80(v79);
        v61 = v95;
        v62 = v96;
        v81 = OUTLINED_FUNCTION_11_80();
        v64 = v97;
        v82(v81);
        v66 = sub_217007314();
        goto LABEL_18;
      }

      if (v48 != *MEMORY[0x277D2A420])
      {
        if (v48 == *MEMORY[0x277D2A3D8])
        {
          v83 = OUTLINED_FUNCTION_12_74();
          v84(v83);
          v61 = v92;
          v62 = v93;
          v85 = OUTLINED_FUNCTION_11_80();
          v64 = v94;
          v86(v85);
          v66 = sub_217006FF4();
          goto LABEL_18;
        }

        if (v48 == *MEMORY[0x277D2A3E0])
        {
          v87 = OUTLINED_FUNCTION_12_74();
          v88(v87);
          v62 = v90;
          v61 = v89;
          v64 = v91;
          (*(v90 + 32))(v89, v47);
          v66 = sub_217007074();
          goto LABEL_18;
        }
      }
    }

LABEL_10:
    (*(v43 + 8))(v47, v41);
    return 0;
  }

  v49 = OUTLINED_FUNCTION_12_74();
  v50(v49);
  (*(v36 + 32))(v40, v47, v34);
  sub_21700C0C4();
  OUTLINED_FUNCTION_39_29();
  v52 = v40;
  v53 = v34;
LABEL_3:
  v51(v52, v53);
  return v43;
}