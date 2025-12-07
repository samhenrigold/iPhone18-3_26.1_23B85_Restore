uint64_t sub_1D53404B0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D534051C(sub_1D5340518, 0, a1, a2);
  v6 = sub_1D5340550(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D5340550(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D5615918();
    if (!v9 || (v10 = v9, v11 = sub_1D4E6EFA4(v9, 0), v12 = sub_1D53406B0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D5614E18();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D5614E18();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D5615C58();
LABEL_4:

  return sub_1D5614E18();
}

unint64_t sub_1D53406B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1D53408C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D5614EF8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D5615C58();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1D53408C0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1D5614ED8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D53408C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1D5614F08();
    OUTLINED_FUNCTION_257_1(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1DA6EACD0](15, a1 >> 16);
    OUTLINED_FUNCTION_257_1(v3);
    return v4 | 8;
  }
}

void sub_1D534095C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_35_50();
  v24[3] = v3(v5);
  v24[4] = v1;
  __swift_allocate_boxed_opaque_existential_0(v24);
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 16))();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v21, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v7 = OUTLINED_FUNCTION_87_16();
    v8(v7);
    OUTLINED_FUNCTION_162_7();
    v9 = OUTLINED_FUNCTION_89_17();
    v11 = v10(v9);
    OUTLINED_FUNCTION_368_0(v11, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v23);
    __swift_destroy_boxed_opaque_existential_1(&v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v21, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3(v12, v13, v14, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0(v15, v16, v17, v18, v19, v20);
    __break(1u);
  }
}

uint64_t sub_1D5340BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D56131C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = type metadata accessor for Playlist.Folder(0);
  v22[4] = sub_1D4E413BC(&unk_1EDD52B98, 255, type metadata accessor for Playlist.Folder);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  sub_1D5341D10(a1, boxed_opaque_existential_0);
  sub_1D4E62938(v22, v21);
  sub_1D4E62938(v22, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1D560D078();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1D4E48324(v17, v21);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
    v15 = 0u;
    v14 = 0u;
    sub_1D4E7661C(&v14, &qword_1EC7EC520, &unk_1D5621050);
  }

  sub_1D4E62938(v21, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v14, v18);
    v9 = *(a2 + 48);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v5 + 104))(v7, *MEMORY[0x1E6976988], v4);
    v12 = sub_1D5159364(v7, v10, v11);
    (*(v5 + 8))(v7, v4);
    [v9 setModelObject_];

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v16 = 0;
    v15 = 0u;
    v14 = 0u;
    sub_1D4E7661C(&v14, &unk_1EC7ED400, &qword_1D5620CF0);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x206D657469206E41, 0xE800000000000000);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000071, 0x80000001D568B9C0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5340FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5341038(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_24_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D53410C0()
{
  result = qword_1EC7F44F0;
  if (!qword_1EC7F44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F44F0);
  }

  return result;
}

unint64_t sub_1D534115C()
{
  result = qword_1EC7F4508;
  if (!qword_1EC7F4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4508);
  }

  return result;
}

unint64_t sub_1D53411F8()
{
  result = qword_1EC7F4520;
  if (!qword_1EC7F4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4520);
  }

  return result;
}

unint64_t sub_1D5341250()
{
  result = qword_1EC7F4528;
  if (!qword_1EC7F4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4528);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s16ConnectionStatusOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16ConnectionStatusOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1D5341350(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D534136C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

_BYTE *_s18DownloadConstraintOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s28AddToPlaylistDuplicatePolicyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s18AddToPlaylistErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D5341578(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5341594(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_1D5341608()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_35_50();
  v21[3] = type metadata accessor for TVSeason(v2);
  v21[4] = sub_1D4E413BC(&unk_1EDD546A0, 255, type metadata accessor for TVSeason);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_1D5341D10(v0, boxed_opaque_existential_0);
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v18, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v4 = OUTLINED_FUNCTION_87_16();
    v5(v4);
    OUTLINED_FUNCTION_162_7();
    v6 = OUTLINED_FUNCTION_89_17();
    v8 = v7(v6);
    OUTLINED_FUNCTION_368_0(v8, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v20);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v18, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3(v9, v10, v11, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0(v12, v13, v14, v15, v16, v17);
    __break(1u);
  }
}

void sub_1D5341860()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_35_50();
  v21[3] = type metadata accessor for TVEpisode(v2);
  v21[4] = sub_1D4E413BC(&qword_1EDD54508, 255, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_1D5341D10(v0, boxed_opaque_existential_0);
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v18, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v4 = OUTLINED_FUNCTION_87_16();
    v5(v4);
    OUTLINED_FUNCTION_162_7();
    v6 = OUTLINED_FUNCTION_89_17();
    v8 = v7(v6);
    OUTLINED_FUNCTION_368_0(v8, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v20);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v18, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3(v9, v10, v11, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0(v12, v13, v14, v15, v16, v17);
    __break(1u);
  }
}

void sub_1D5341AB8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_35_50();
  v21[3] = type metadata accessor for MusicMovie(v2);
  v21[4] = sub_1D4E413BC(&qword_1EDD59308, 255, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_1D5341D10(v0, boxed_opaque_existential_0);
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v18, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v4 = OUTLINED_FUNCTION_87_16();
    v5(v4);
    OUTLINED_FUNCTION_162_7();
    v6 = OUTLINED_FUNCTION_89_17();
    v8 = v7(v6);
    OUTLINED_FUNCTION_368_0(v8, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v20);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v18, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3(v9, v10, v11, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0(v12, v13, v14, v15, v16, v17);
    __break(1u);
  }
}

uint64_t sub_1D5341D10(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_24_0();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D5341D6C()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v1[2] = v0[2];
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = type metadata accessor for MusicLibraryImportChangeRequest(0, (v1 + 2));
  OUTLINED_FUNCTION_22(v7);
  v8 = swift_task_alloc();
  v1[8] = v8;
  *v8 = v1;
  v8[1] = sub_1D52EF4B4;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_73_0();

  return sub_1D533E8EC(v9, v10, v11);
}

void *OUTLINED_FUNCTION_33_47()
{
  sub_1D4E48324((v0 - 288), v0 - 200);
  __swift_project_boxed_opaque_existential_1((v0 - 200), *(v0 - 176));

  return sub_1D560D078();
}

uint64_t OUTLINED_FUNCTION_42_39(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_65_27(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log, uint64_t a13, int a14, os_log_type_t a15)
{

  _os_log_impl(a1, log, a15, a4, v15, 0x16u);
}

uint64_t OUTLINED_FUNCTION_66_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D560C358();
}

uint64_t OUTLINED_FUNCTION_68_24()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_71_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_105_14()
{
  v2 = *(v0 + 560);
}

void OUTLINED_FUNCTION_120_10()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_122_8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 160));
  sub_1D4E48324((v0 - 240), v0 - 160);

  return __swift_destroy_boxed_opaque_existential_1((v0 - 200));
}

uint64_t OUTLINED_FUNCTION_124_9()
{
  __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_136_10(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_138_10(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_140_11()
{
  v2[28] = sub_1D5341F94;
  v2[29] = v0;
  v2[30] = v1;
}

uint64_t OUTLINED_FUNCTION_141_4(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_142_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_145_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[2];
  v13 = v10[3];
  v9[18] = v10[4];
  v9[19] = v8;
  v9[16] = v12;
  v9[17] = v13;
  v9[14] = a7;
  v9[15] = a8;
  v9[12] = a5;
  v9[13] = a6;
  v9[10] = a3;
  v9[11] = a4;
  v9[8] = a1;
  v9[9] = a2;

  return sub_1D56158D8();
}

id OUTLINED_FUNCTION_150_11(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_154_8(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_156_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_158_8()
{

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_159_8()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0xE000000000000000;

  return sub_1D5615B68();
}

unint64_t OUTLINED_FUNCTION_160_7(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1D4E6835C(v12, v11, &a10);
}

void OUTLINED_FUNCTION_161_7()
{

  JUMPOUT(0x1DA6EAC70);
}

id OUTLINED_FUNCTION_162_7()
{

  return sub_1D5159364(v1, v0, v2);
}

double OUTLINED_FUNCTION_168_6()
{
  *(v0 + 416) = 0;
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_169_3()
{
  sub_1D4E48324((v0 + 224), v0 + 144);

  return sub_1D4E62938(v0 + 144, v0 + 344);
}

uint64_t OUTLINED_FUNCTION_171_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_184_3(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 264));

  return sub_1D5616458();
}

uint64_t OUTLINED_FUNCTION_188_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D560C358();
}

uint64_t OUTLINED_FUNCTION_189_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_190_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_194_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = result;
  v6[9] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_207_3()
{

  return sub_1D56151C8();
}

void OUTLINED_FUNCTION_211_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[2];
  v11 = v10[3];
  v14 = v10[4];
  v13 = v10[5];
  v9[42] = v10[6];
  v9[43] = v8;
  v9[40] = v14;
  v9[41] = v13;
  v9[38] = v12;
  v9[39] = v11;
  v9[36] = a7;
  v9[37] = a8;
}

BOOL OUTLINED_FUNCTION_221_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_223_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_226_4()
{
}

uint64_t OUTLINED_FUNCTION_227_3()
{
}

uint64_t OUTLINED_FUNCTION_228_3(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1D5613D28();
}

uint64_t OUTLINED_FUNCTION_231_2()
{

  return sub_1D56151C8();
}

uint64_t OUTLINED_FUNCTION_233_2(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_235_1(uint64_t a1)
{
  v3[2] = v2;
  v3[24] = a1;
  v3[3] = v1;
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;

  return type metadata accessor for MusicLibraryImportChangeRequest(0, (v3 + 2));
}

id OUTLINED_FUNCTION_236_0(int a1, const char *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return [v15 a2];
}

uint64_t OUTLINED_FUNCTION_238_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_244_1(uint64_t a1)
{
  v3[31] = a1;
  v3[18] = v5;
  v3[19] = v4;
  v3[20] = v2;
  v3[21] = v1;

  return type metadata accessor for MusicLibraryKeepLocalChangeRequest(0, (v3 + 18));
}

uint64_t OUTLINED_FUNCTION_245_2()
{
}

uint64_t OUTLINED_FUNCTION_246_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_256_1()
{
  *(v0 + 240) = *(v1 + 16);
  *(v0 + 248) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_275_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a3;
  v9[5] = a5;
  v9[2] = result;
  v9[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_283_0()
{
}

uint64_t OUTLINED_FUNCTION_286_2()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
}

void OUTLINED_FUNCTION_288_1()
{

  JUMPOUT(0x1DA6EAC70);
}

id OUTLINED_FUNCTION_289_0(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return v2;
}

void *OUTLINED_FUNCTION_290_0()
{

  return sub_1D560DB68();
}

uint64_t OUTLINED_FUNCTION_291_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[72] = v3;
  v4[71] = a3;
  v4[70] = a2;
  v4[69] = a1;

  return sub_1D560D3F8();
}

uint64_t OUTLINED_FUNCTION_292_2(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OUTLINED_FUNCTION_293_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_294_1()
{
}

uint64_t OUTLINED_FUNCTION_296_0(uint64_t a1)
{
  *(v1 + 472) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_297_1(uint64_t a1)
{
  *(v1 + 184) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_298_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

double OUTLINED_FUNCTION_315_0()
{
  *(v0 + 216) = 0;
  result = 0.0;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  return result;
}

void OUTLINED_FUNCTION_323()
{
  v3[3] = v0;
  v3[4] = v1;
  v3[2] = v2;
}

uint64_t OUTLINED_FUNCTION_335_0(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_339()
{
}

uint64_t OUTLINED_FUNCTION_340_0(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_341_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  *v14 = a1;

  return sub_1D4E6835C(a9, v13, va);
}

uint64_t OUTLINED_FUNCTION_342_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_343_0()
{

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_345_0()
{

  return sub_1D560C758();
}

void OUTLINED_FUNCTION_346_0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_347_0()
{
}

uint64_t OUTLINED_FUNCTION_349_0(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;

  return sub_1D56131C8();
}

unint64_t OUTLINED_FUNCTION_350_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *v15 = a1;

  return sub_1D4E6835C(a15, v16, va);
}

unint64_t OUTLINED_FUNCTION_351_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *v12 = a1;

  return sub_1D4E6835C(a10, v11, va);
}

uint64_t OUTLINED_FUNCTION_353_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_354_0()
{

  return sub_1D5614DB8();
}

uint64_t OUTLINED_FUNCTION_355_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_356_0()
{
  *(v0 + 592) = v1;

  return sub_1D4E5A1CC();
}

uint64_t OUTLINED_FUNCTION_357_0()
{

  return sub_1D4E62938(v0 - 160, v0 - 240);
}

void OUTLINED_FUNCTION_358_0()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_359_0(uint64_t a1)
{
  *(v1 + 504) = a1;

  return sub_1D560C368();
}

uint64_t OUTLINED_FUNCTION_360(uint64_t a1)
{
  *(v1 + 464) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_361_0(uint64_t a1)
{

  return sub_1D56160F8();
}

uint64_t OUTLINED_FUNCTION_363_0()
{
}

BOOL OUTLINED_FUNCTION_364_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_365_0()
{

  return sub_1D4E62938(v0 - 120, v0 - 240);
}

uint64_t OUTLINED_FUNCTION_366()
{

  return sub_1D4E62938(v0 - 120, v0 - 160);
}

uint64_t OUTLINED_FUNCTION_367_0(uint64_t a1)
{
  *(v1 + 480) = a1;

  return sub_1D56131C8();
}

id OUTLINED_FUNCTION_368_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_369_0(uint64_t a1, uint64_t a2)
{

  return sub_1D5159364(a1, a2, v2);
}

void OUTLINED_FUNCTION_370(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_371()
{

  sub_1D5201D1C();
}

id OUTLINED_FUNCTION_372(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_373()
{
}

uint64_t OUTLINED_FUNCTION_378()
{
  sub_1D4E48324(v0, v1 + 272);

  return sub_1D4E62938(v1 + 272, v1 + 472);
}

void sub_1D534329C(char *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 6;
  v4 = v2 & 1;
  if (v2 >> 6 == 1)
  {
    v5 = v2 & 0x3F | 0x40;
  }

  else
  {
    v5 = 0x80;
  }

  if (!v3)
  {
    v5 = v4;
  }

  *a1 = v5;
}

uint64_t static Presto_MusicLibrary.AddStatus.UnaddableReason.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEE0, &qword_1D561DCB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D5627E00;
  *(inited + 32) = 50462976;
  *(inited + 36) = 1284;
  *(inited + 38) = 6;
  sub_1D4F02B60();
  v2 = v1;
  *(v1 + 16) = 8;
  *(v1 + 39) = 7;
  if (*(v1 + 24) <= 0x11uLL)
  {
    sub_1D4F02B60();
    v2 = v4;
  }

  *(v2 + 16) = 9;
  *(v2 + 40) = 8;
  return v2;
}

uint64_t Presto_MusicLibrary.AddStatus.UnaddableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D5343448@<X0>(uint64_t *a1@<X8>)
{
  result = static Presto_MusicLibrary.AddStatus.UnaddableReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D534347C(uint64_t a1)
{
  sub_1D56162D8();
  Presto_MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

uint64_t Presto_MusicLibrary.AddStatus.AddableCaveat.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t static Presto_MusicLibrary.AddStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if (v3 == 128)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    goto LABEL_9;
  }

  v4 = ((v3 ^ v2) & 0x3F) == 0;
  return v4 & 1;
}

uint64_t Presto_MusicLibrary.AddStatus.hash(into:)()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v1)
    {
      return sub_1D56162F8();
    }

    sub_1D56162F8();
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
LABEL_7:
    v2 = 0;
    return MEMORY[0x1DA6EC0D0](v2);
  }

  MEMORY[0x1DA6EC0D0](2);
  v2 = v1 & 0x3F;
  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t Presto_MusicLibrary.AddStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      MEMORY[0x1DA6EC0D0](2);
      v2 = v1 & 0x3F;
LABEL_8:
      MEMORY[0x1DA6EC0D0](v2);
      return sub_1D5616328();
    }

LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  MEMORY[0x1DA6EC0D0](1);
  if ((v1 & 1) == 0)
  {
    sub_1D56162F8();
    goto LABEL_7;
  }

  sub_1D56162F8();
  return sub_1D5616328();
}

uint64_t sub_1D53436FC(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  if (!(v2 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v2)
    {
      sub_1D56162F8();
      return sub_1D5616328();
    }

    sub_1D56162F8();
LABEL_7:
    MEMORY[0x1DA6EC0D0](0);
    return sub_1D5616328();
  }

  if (v2 >> 6 != 1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1DA6EC0D0](2);
  Presto_MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D53437D0()
{
  result = qword_1EC7F4570;
  if (!qword_1EC7F4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4570);
  }

  return result;
}

unint64_t sub_1D5343858()
{
  result = qword_1EC7F4588;
  if (!qword_1EC7F4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4588);
  }

  return result;
}

unint64_t sub_1D53438B0()
{
  result = qword_1EC7F4590;
  if (!qword_1EC7F4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4590);
  }

  return result;
}

_BYTE *_s9AddStatusOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD)
  {
    v6 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
          *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9AddStatusO15UnaddableReasonOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9AddStatusO13AddableCaveatOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D5343B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657469726F766166 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7661466F646E75 && a2 == 0xEC00000065746972)
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

uint64_t sub_1D5343C4C(char a1)
{
  if (a1)
  {
    return 0x6F7661466F646E75;
  }

  else
  {
    return 0x657469726F766166;
  }
}

uint64_t sub_1D5343CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5343B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5343CD4(uint64_t a1)
{
  v2 = sub_1D53440A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5343D10(uint64_t a1)
{
  v2 = sub_1D53440A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5343D4C(uint64_t a1)
{
  v2 = sub_1D5344150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5343D88(uint64_t a1)
{
  v2 = sub_1D5344150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5343DC4(uint64_t a1)
{
  v2 = sub_1D53440FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5343E00(uint64_t a1)
{
  v2 = sub_1D53440FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Request.Action.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4598, &qword_1D56541E0);
  OUTLINED_FUNCTION_4();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v46 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45A0, &qword_1D56541E8);
  OUTLINED_FUNCTION_4();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45A8, &qword_1D56541F0);
  OUTLINED_FUNCTION_4();
  v37 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D53440A8();
  sub_1D56163D8();
  v42 = (v37 + 8);
  if (v41)
  {
    sub_1D53440FC();
    v43 = v46;
    sub_1D5616018();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_1D5344150();
    sub_1D5616018();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D53440A8()
{
  result = qword_1EC7F45B0;
  if (!qword_1EC7F45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45B0);
  }

  return result;
}

unint64_t sub_1D53440FC()
{
  result = qword_1EC7F45B8;
  if (!qword_1EC7F45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45B8);
  }

  return result;
}

unint64_t sub_1D5344150()
{
  result = qword_1EC7F45C0;
  if (!qword_1EC7F45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45C0);
  }

  return result;
}

uint64_t MusicDaemon.Request.Action.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicDaemon.Request.Action.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  a22 = v25;
  a23 = v26;
  v73 = v23;
  v28 = v27;
  v70 = v29;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45C8, &qword_1D56541F8);
  OUTLINED_FUNCTION_4();
  v69 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v65 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45D0, &qword_1D5654200);
  OUTLINED_FUNCTION_4();
  v68 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v65 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45D8, &unk_1D5654208);
  OUTLINED_FUNCTION_4();
  v71 = v40;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D53440A8();
  v42 = v73;
  sub_1D5616398();
  if (v42)
  {
    goto LABEL_10;
  }

  v66 = v34;
  v67 = v38;
  v73 = v28;
  v43 = v72;
  sub_1D5615FE8();
  v44 = sub_1D4FE35F0();
  if (v46 == v47 >> 1)
  {
    v72 = v44;
LABEL_9:
    v60 = sub_1D5615C18();
    swift_allocError();
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v62 = &type metadata for MusicDaemon.Request.Action;
    v63 = sub_1D5615F28();
    OUTLINED_FUNCTION_48_2(v63);
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v24, v39);
    v28 = v73;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  v65[1] = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    v49 = sub_1D4FE35EC();
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      if (v48)
      {
        a13 = 1;
        sub_1D53440FC();
        v54 = v33;
        OUTLINED_FUNCTION_3_0(&_s7RequestO6ActionO22UndoFavoriteCodingKeysON, &a13);
        v55 = v70;
        v56 = v71;
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_203_0();
        v58 = v54;
        v59 = v43;
      }

      else
      {
        a12 = 0;
        sub_1D5344150();
        v64 = v67;
        OUTLINED_FUNCTION_3_0(&_s7RequestO6ActionO18FavoriteCodingKeysON, &a12);
        v55 = v70;
        v56 = v71;
        swift_unknownObjectRelease();
        v57 = *(v68 + 8);
        v58 = v64;
        v59 = v66;
      }

      v57(v58, v59);
      (*(v56 + 8))(v24, v51);
      *v55 = v48;
      __swift_destroy_boxed_opaque_existential_1(v73);
      goto LABEL_11;
    }

    v72 = v49;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t _s16MusicKitInternal0A6DaemonV7RequestO7ContextV4item7account10observerIDAgC4ItemV_AA7AccountV10Foundation4UUIDVtAC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = sub_1D53701B8();
  if (v5)
  {
    sub_1D4E58768(v9, v10, v11);
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D560C758();
    __swift_project_value_buffer(v14, qword_1EDD76B38);
    v15 = sub_1D560C738();
    v16 = sub_1D56156C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D4E3F000, v15, v16, "MusicDaemon.Request.Context failed to retrieve accountID.", v17, 2u);
      MEMORY[0x1DA6ED200](v17, -1, -1);
    }

    *a4 = xmmword_1D56541D0;
    *(a4 + 16) = 2;
    sub_1D53476CC();
    swift_willThrowTypedImpl();

    sub_1D560C368();
    OUTLINED_FUNCTION_14();
    (*(v18 + 8))(a3);
    OUTLINED_FUNCTION_15_78();
    return sub_1D5347834(a1, v19);
  }

  else
  {
    v21 = v12;
    v22 = v13;
    sub_1D4E58768(v9, v10, v11);
    sub_1D560C358();
    OUTLINED_FUNCTION_45_38();
    OUTLINED_FUNCTION_7_109();
    sub_1D5347914(a1, a5 + v23);
    v24 = (a5 + *(v11 + 24));
    *v24 = v21;
    v24[1] = v22;
    v25 = *(v11 + 28);
    sub_1D560C368();
    OUTLINED_FUNCTION_14();
    return (*(v26 + 32))(a5 + v25, a3);
  }
}

uint64_t MusicDaemon.Request.Context.init(id:item:accountID:observerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1D560C368();
  OUTLINED_FUNCTION_14();
  v19 = *(v13 + 32);
  v19(a6, a1, v12);
  v14 = type metadata accessor for MusicDaemon.Request.Context(0);
  OUTLINED_FUNCTION_7_109();
  sub_1D5347914(a2, a6 + v15);
  v16 = (a6 + *(v14 + 24));
  *v16 = a3;
  v16[1] = a4;
  v17 = a6 + *(v14 + 28);

  return (v19)(v17, a5, v12);
}

uint64_t MusicDaemon.Request.Context.id.getter()
{
  sub_1D560C368();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_71();

  return v1(v0);
}

uint64_t MusicDaemon.Request.Context.item.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MusicDaemon.Request.Context(0);
  OUTLINED_FUNCTION_7_109();
  return sub_1D53477DC(v1 + v3, a1);
}

uint64_t MusicDaemon.Request.Context.accountID.getter()
{
  type metadata accessor for MusicDaemon.Request.Context(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicDaemon.Request.Context.observerID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDaemon.Request.Context(0) + 28);
  sub_1D560C368();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static MusicDaemon.Request.Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560C348() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MusicDaemon.Request.Context(0);
  if ((static MusicDaemon.Item.== infix(_:_:)(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_73();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  return sub_1D560C348();
}

uint64_t sub_1D5344BA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
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

      else if (a1 == 0x726576726573626FLL && a2 == 0xEA00000000004449)
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

uint64_t sub_1D5344D00(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1835365481;
      break;
    case 2:
      result = 0x49746E756F636361;
      break;
    case 3:
      result = 0x726576726573626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5344D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5344BA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5344DC0(uint64_t a1)
{
  v2 = sub_1D5347740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5344DFC(uint64_t a1)
{
  v2 = sub_1D5347740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Request.Context.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v26;
  a24 = v27;
  v28 = v24;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45E8, &qword_1D5654218);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v43 - v35;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_1D5347740();
  sub_1D56163D8();
  a14 = 0;
  sub_1D560C368();
  OUTLINED_FUNCTION_1_142();
  sub_1D5347794(v37, v38, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_37_37(v28, &a14);
  if (!v25)
  {
    v44 = type metadata accessor for MusicDaemon.Request.Context(0);
    OUTLINED_FUNCTION_7_3();
    type metadata accessor for MusicDaemon.Item(0);
    OUTLINED_FUNCTION_16_81();
    sub_1D5347794(v39, v40, &protocol conformance descriptor for MusicDaemon.Item);
    sub_1D56160C8();
    v41 = v44;
    a12 = 2;
    sub_1D5616088();
    v42 = *(v41 + 28);
    a11 = 3;
    OUTLINED_FUNCTION_37_37(v28 + v42, &a11);
  }

  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_26();
}

uint64_t MusicDaemon.Request.Context.hash(into:)(uint64_t a1)
{
  sub_1D560C368();
  OUTLINED_FUNCTION_1_142();
  sub_1D5347794(v2, v3, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_46_33(a1);
  type metadata accessor for MusicDaemon.Request.Context(0);
  MusicDaemon.Item.hash(into:)();
  sub_1D5614E28();
  return OUTLINED_FUNCTION_46_33(a1);
}

uint64_t MusicDaemon.Request.Context.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  sub_1D560C368();
  OUTLINED_FUNCTION_1_142();
  sub_1D5347794(v0, v1, MEMORY[0x1E69695B8]);
  sub_1D5614CB8();
  type metadata accessor for MusicDaemon.Request.Context(0);
  MusicDaemon.Item.hash(into:)();
  sub_1D5614E28();
  sub_1D5614CB8();
  return sub_1D5616328();
}

void MusicDaemon.Request.Context.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  v77 = v25;
  v28 = v27;
  v69 = v29;
  v70 = type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v72 = v32 - v31;
  v33 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v71 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v36);
  v74 = v67 - v37;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45F0, &qword_1D5654220);
  OUTLINED_FUNCTION_4();
  v73 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v67 - v40;
  OUTLINED_FUNCTION_45_38();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D5347740();
  v75 = v41;
  v46 = v77;
  sub_1D5616398();
  if (v46)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v47 = v72;
    v68 = v26;
    v77 = v24;
    v48 = v45;
    OUTLINED_FUNCTION_1_142();
    v51 = sub_1D5347794(v49, v50, MEMORY[0x1E69695D0]);
    sub_1D5615FD8();
    v67[1] = v51;
    v52 = *(v71 + 32);
    v53 = v48;
    v54 = v74;
    v74 = v33;
    v52(v48, v54);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_16_81();
    sub_1D5347794(v55, v56, &protocol conformance descriptor for MusicDaemon.Item);
    sub_1D5615FD8();
    v70 = v52;
    v57 = v77;
    OUTLINED_FUNCTION_7_109();
    sub_1D5347914(v47, v48 + v58);
    v59 = sub_1D5615F98();
    v60 = v28;
    v61 = (v53 + *(v57 + 24));
    *v61 = v59;
    v61[1] = v62;
    v63 = v68;
    v65 = v74;
    v64 = v75;
    sub_1D5615FD8();
    OUTLINED_FUNCTION_203_0();
    v66(v75, v76);
    v70(v53 + *(v57 + 28), v63, v65);
    OUTLINED_FUNCTION_0_184();
    sub_1D53477DC(v53, v69);
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_1D5347834(v53, v64);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5345684(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D560C368();
  sub_1D5347794(&qword_1EDD5F560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D5614CB8();
  MusicDaemon.Item.hash(into:)();
  sub_1D5614E28();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t static MusicDaemon.Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v62 = type metadata accessor for MusicDaemon.Request.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v61 = v5 - v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v60 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  type metadata accessor for MusicDaemon.Request(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45F8, &qword_1D5654228);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9();
  v27 = (v2 + *(v26 + 56));
  sub_1D53477DC(a1, v2);
  sub_1D53477DC(v63, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_4_109();
      sub_1D53477DC(v2, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_2_141();
        v29 = v60;
        sub_1D5347914(v27, v60);
        if (sub_1D560C348() & 1) != 0 && (static MusicDaemon.Item.== infix(_:_:)(&v22[*(v62 + 20)], v29 + *(v62 + 20)))
        {
          OUTLINED_FUNCTION_17_73();
          v32 = v32 && v30 == v31;
          if (v32 || (sub_1D5616168()) && (sub_1D560C348())
          {
            OUTLINED_FUNCTION_0_184();
            sub_1D5347834(v29, v33);
            v34 = v22;
LABEL_34:
            sub_1D5347834(v34, type metadata accessor for MusicDaemon.Request);
            OUTLINED_FUNCTION_6_106();
            v46 = v2;
            goto LABEL_35;
          }
        }

        OUTLINED_FUNCTION_0_184();
        sub_1D5347834(v29, v54);
        v55 = v22;
LABEL_40:
        sub_1D5347834(v55, type metadata accessor for MusicDaemon.Request);
        OUTLINED_FUNCTION_6_106();
        v58 = v2;
LABEL_42:
        sub_1D5347834(v58, v57);
        return 0;
      }

      v18 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_4_109();
      sub_1D53477DC(v2, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_2_141();
        v47 = v61;
        sub_1D5347914(v27, v61);
        if (sub_1D560C348() & 1) != 0 && (static MusicDaemon.Item.== infix(_:_:)(v18 + *(v62 + 20), v47 + *(v62 + 20)))
        {
          OUTLINED_FUNCTION_17_73();
          v50 = v32 && v48 == v49;
          if (v50 || (sub_1D5616168()) && (sub_1D560C348())
          {
            OUTLINED_FUNCTION_0_184();
            sub_1D5347834(v47, v51);
            v34 = v18;
            goto LABEL_34;
          }
        }

        OUTLINED_FUNCTION_0_184();
        sub_1D5347834(v47, v56);
        v55 = v18;
        goto LABEL_40;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_109();
    sub_1D53477DC(v2, v24);
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230) + 48);
    v18 = &v24[v35];
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = v2;
      v37 = *v24;
      v38 = *v27;
      OUTLINED_FUNCTION_0_184();
      sub_1D5347914(v18, v14);
      sub_1D5347914(&v27[v35], v12);
      if (v37 == v38 && (sub_1D560C348() & 1) != 0 && (static MusicDaemon.Item.== infix(_:_:)(&v14[*(v62 + 20)], &v12[*(v62 + 20)]) & 1) != 0)
      {
        v39 = *(v62 + 24);
        v40 = *&v14[v39];
        v41 = *&v14[v39 + 8];
        v42 = &v12[v39];
        v43 = v40 == *v42 && v41 == *(v42 + 1);
        if (v43 || (sub_1D5616168()) && (sub_1D560C348())
        {
          OUTLINED_FUNCTION_0_184();
          sub_1D5347834(v12, v44);
          sub_1D5347834(v14, type metadata accessor for MusicDaemon.Request);
          OUTLINED_FUNCTION_6_106();
          v46 = v36;
LABEL_35:
          sub_1D5347834(v46, v45);
          return 1;
        }
      }

      OUTLINED_FUNCTION_0_184();
      sub_1D5347834(v12, v59);
      sub_1D5347834(v14, type metadata accessor for MusicDaemon.Request);
      OUTLINED_FUNCTION_6_106();
      v58 = v36;
      goto LABEL_42;
    }
  }

  OUTLINED_FUNCTION_8_102();
  sub_1D5347834(v18, v53);
  sub_1D53478AC(v2);
  return 0;
}

uint64_t sub_1D5345C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F66726570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73624F6E69676562 && a2 == 0xEE00676E69767265;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726573624F646E65 && a2 == 0xEC000000676E6976)
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

uint64_t sub_1D5345DAC(char a1)
{
  if (!a1)
  {
    return 0x6D726F66726570;
  }

  if (a1 == 1)
  {
    return 0x73624F6E69676562;
  }

  return 0x726573624F646E65;
}

uint64_t sub_1D5345E18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1D5345E90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1D5345F54(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1D5345F8C(uint64_t a1)
{
  v2 = sub_1D5347A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5345FC8(uint64_t a1)
{
  v2 = sub_1D5347A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5346004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5346058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5345C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5346080(uint64_t a1)
{
  v2 = sub_1D534796C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53460BC(uint64_t a1)
{
  v2 = sub_1D534796C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53460F8(uint64_t a1)
{
  v2 = sub_1D53479C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5346134(uint64_t a1)
{
  v2 = sub_1D53479C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5346170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D53461C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5345E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D53461EC(uint64_t a1)
{
  v2 = sub_1D5347A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5346228(uint64_t a1)
{
  v2 = sub_1D5347A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_25_1();
  a25 = v29;
  a26 = v30;
  v89 = v26;
  v90 = v27;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4608, &qword_1D5654238);
  OUTLINED_FUNCTION_4();
  v86 = v34;
  v87 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v85 = v36;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4610, &qword_1D5654240);
  OUTLINED_FUNCTION_4();
  v81 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_9();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4618, &qword_1D5654248);
  OUTLINED_FUNCTION_4();
  v79 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v82 = v41;
  v88 = type metadata accessor for MusicDaemon.Request.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_59_0();
  v45 = v43 - v44;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v79 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v80 = &v79 - v50;
  type metadata accessor for MusicDaemon.Request(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  v54 = v53 - v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4620, &qword_1D5654250);
  OUTLINED_FUNCTION_4();
  v91 = v56;
  v92 = v55;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v79 - v58;
  v60 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_1D534796C();
  sub_1D56163D8();
  OUTLINED_FUNCTION_4_109();
  sub_1D53477DC(v89, v54);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5347914(v54, v49);
      OUTLINED_FUNCTION_7_3();
      sub_1D5347A14();
      OUTLINED_FUNCTION_23_60(&_s7RequestO24BeginObservingCodingKeysON, &a15);
      OUTLINED_FUNCTION_3_145();
      sub_1D5347794(v62, v63, &protocol conformance descriptor for MusicDaemon.Request.Context);
      v64 = v83;
      sub_1D56160C8();
      (*(v81 + 8))(v28, v64);
      v65 = v49;
      v66 = type metadata accessor for MusicDaemon.Request.Context;
    }

    else
    {
      sub_1D5347914(v54, v45);
      a16 = 2;
      sub_1D53479C0();
      v75 = v85;
      OUTLINED_FUNCTION_23_60(&_s7RequestO22EndObservingCodingKeysON, &a16);
      OUTLINED_FUNCTION_3_145();
      sub_1D5347794(v76, v77, &protocol conformance descriptor for MusicDaemon.Request.Context);
      v78 = v87;
      sub_1D56160C8();
      (*(v86 + 8))(v75, v78);
      OUTLINED_FUNCTION_8_102();
      v65 = v45;
    }
  }

  else
  {
    v67 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230);
    OUTLINED_FUNCTION_2_141();
    v69 = v80;
    sub_1D5347914(v54 + v68, v80);
    a14 = 0;
    sub_1D5347A68();
    v70 = v82;
    OUTLINED_FUNCTION_23_60(&_s7RequestO17PerformCodingKeysON, &a14);
    sub_1D5347ABC();
    v71 = v84;
    v72 = v90;
    sub_1D56160C8();
    if (!v72)
    {
      OUTLINED_FUNCTION_3_145();
      sub_1D5347794(v73, v74, &protocol conformance descriptor for MusicDaemon.Request.Context);
      sub_1D56160C8();
    }

    (*(v67 + 8))(v70, v71);
    OUTLINED_FUNCTION_8_102();
    v65 = v69;
  }

  sub_1D5347834(v65, v66);
  (*(v91 + 8))(v59, v60);
  OUTLINED_FUNCTION_26();
}

uint64_t MusicDaemon.Request.hash(into:)(uint64_t a1)
{
  type metadata accessor for MusicDaemon.Request.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  type metadata accessor for MusicDaemon.Request(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  OUTLINED_FUNCTION_4_109();
  sub_1D53477DC(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_141();
      sub_1D5347914(v15, v2);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D560C368();
      OUTLINED_FUNCTION_1_142();
      sub_1D5347794(v17, v18, MEMORY[0x1E69695B8]);
      OUTLINED_FUNCTION_46_33(a1);
      sub_1D560D838();
      OUTLINED_FUNCTION_11_93();
      v21 = sub_1D5347794(v19, v20, MEMORY[0x1E6974F68]);
      OUTLINED_FUNCTION_21_65(v21);
      v22 = type metadata accessor for MusicDaemon.Item(0);
      OUTLINED_FUNCTION_19_67(v22);
      v23 = sub_1D56106B8();
      OUTLINED_FUNCTION_10_93();
      v26 = sub_1D5347794(v24, v25, MEMORY[0x1E6975D70]);
      OUTLINED_FUNCTION_22_63(v26);
      OUTLINED_FUNCTION_28_53();
      if (v27)
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v23);
      }

      OUTLINED_FUNCTION_27_56();
      if (!v27)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_26_61();
      if (!v27)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      sub_1D5614E28();
      OUTLINED_FUNCTION_46_33(a1);
      v11 = v2;
    }

    else
    {
      OUTLINED_FUNCTION_2_141();
      sub_1D5347914(v15, v7);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D560C368();
      OUTLINED_FUNCTION_1_142();
      sub_1D5347794(v40, v41, MEMORY[0x1E69695B8]);
      sub_1D5614CB8();
      sub_1D560D838();
      OUTLINED_FUNCTION_11_93();
      v44 = sub_1D5347794(v42, v43, MEMORY[0x1E6974F68]);
      OUTLINED_FUNCTION_21_65(v44);
      v45 = type metadata accessor for MusicDaemon.Item(0);
      OUTLINED_FUNCTION_19_67(v45);
      v46 = sub_1D56106B8();
      OUTLINED_FUNCTION_10_93();
      v49 = sub_1D5347794(v47, v48, MEMORY[0x1E6975D70]);
      OUTLINED_FUNCTION_22_63(v49);
      OUTLINED_FUNCTION_28_53();
      if (v27)
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v46);
      }

      OUTLINED_FUNCTION_27_56();
      if (!v27)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_26_61();
      if (!v27)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      sub_1D5614E28();
      sub_1D5614CB8();
      v11 = v7;
    }
  }

  else
  {
    v28 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230);
    OUTLINED_FUNCTION_2_141();
    sub_1D5347914(&v15[v29], v11);
    MEMORY[0x1DA6EC0D0](0);
    MEMORY[0x1DA6EC0D0](v28);
    sub_1D560C368();
    OUTLINED_FUNCTION_1_142();
    sub_1D5347794(v30, v31, MEMORY[0x1E69695B8]);
    sub_1D5614CB8();
    sub_1D560D838();
    OUTLINED_FUNCTION_11_93();
    v34 = sub_1D5347794(v32, v33, MEMORY[0x1E6974F68]);
    OUTLINED_FUNCTION_21_65(v34);
    v35 = type metadata accessor for MusicDaemon.Item(0);
    OUTLINED_FUNCTION_19_67(v35);
    v36 = sub_1D56106B8();
    OUTLINED_FUNCTION_10_93();
    v39 = sub_1D5347794(v37, v38, MEMORY[0x1E6975D70]);
    OUTLINED_FUNCTION_22_63(v39);
    OUTLINED_FUNCTION_28_53();
    if (v27)
    {
      sub_1D56162F8();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      MEMORY[0x1DA6EC0D0](v36);
    }

    OUTLINED_FUNCTION_27_56();
    if (!v27)
    {
      OUTLINED_FUNCTION_27();
    }

    sub_1D56162F8();
    OUTLINED_FUNCTION_26_61();
    if (!v27)
    {
      OUTLINED_FUNCTION_27();
    }

    sub_1D56162F8();
    sub_1D5614E28();
    sub_1D5614CB8();
  }

  OUTLINED_FUNCTION_8_102();
  return sub_1D5347834(v11, v50);
}

uint64_t MusicDaemon.Request.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  MusicDaemon.Request.hash(into:)(v1);
  return sub_1D5616328();
}

void MusicDaemon.Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v26;
  a24 = v27;
  v116 = v24;
  v29 = v28;
  v103 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4638, &qword_1D5654258);
  OUTLINED_FUNCTION_4();
  v106 = v32;
  v107 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v110 = v34;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4640, &qword_1D5654260);
  OUTLINED_FUNCTION_4();
  v111 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v108 = v37;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4648, &qword_1D5654268);
  OUTLINED_FUNCTION_4();
  v104 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v109 = v40;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4650, &qword_1D5654270);
  OUTLINED_FUNCTION_4();
  v112 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v99 - v43;
  v45 = type metadata accessor for MusicDaemon.Request(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_59_0();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25_13();
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v99 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v99 - v55;
  v57 = v29[3];
  v115 = v29;
  __swift_project_boxed_opaque_existential_1(v29, v57);
  sub_1D534796C();
  v58 = v116;
  sub_1D5616398();
  if (v58)
  {
    goto LABEL_10;
  }

  v99 = v25;
  v100 = v49;
  v101 = v54;
  v102 = v45;
  v59 = v114;
  v116 = v56;
  v60 = v44;
  sub_1D5615FE8();
  sub_1D4FE35F0();
  if (v62 == v63 >> 1)
  {
LABEL_9:
    v71 = sub_1D5615C18();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v73 = v102;
    v74 = sub_1D5615F28();
    OUTLINED_FUNCTION_48_2(v74);
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_203_0();
    v75(v60, v59);
LABEL_10:
    v76 = v115;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v62 < (v63 >> 1))
  {
    v64 = *(v61 + v62);
    sub_1D4FE35EC();
    v66 = v65;
    v68 = v67;
    swift_unknownObjectRelease();
    v69 = v111;
    if (v66 == v68 >> 1)
    {
      if (v64)
      {
        if (v64 == 1)
        {
          OUTLINED_FUNCTION_7_3();
          sub_1D5347A14();
          v70 = v108;
          OUTLINED_FUNCTION_43_33(&_s7RequestO24BeginObservingCodingKeysON, &a13, v114);
          OUTLINED_FUNCTION_45_38();
          OUTLINED_FUNCTION_3_145();
          sub_1D5347794(v78, v79, &protocol conformance descriptor for MusicDaemon.Request.Context);
          v80 = v99;
          v81 = v105;
          sub_1D5615FD8();
          swift_unknownObjectRelease();
          (*(v69 + 8))(v70, v81);
          OUTLINED_FUNCTION_203_0();
          v85 = OUTLINED_FUNCTION_39_43();
          v86(v85);
          swift_storeEnumTagMultiPayload();
          v87 = v80;
        }

        else
        {
          a14 = 2;
          sub_1D53479C0();
          OUTLINED_FUNCTION_43_33(&_s7RequestO22EndObservingCodingKeysON, &a14, v114);
          type metadata accessor for MusicDaemon.Request.Context(0);
          OUTLINED_FUNCTION_3_145();
          sub_1D5347794(v83, v84, &protocol conformance descriptor for MusicDaemon.Request.Context);
          v87 = v100;
          sub_1D5615FD8();
          swift_unknownObjectRelease();
          v91 = OUTLINED_FUNCTION_42_40();
          v92(v91);
          v93 = OUTLINED_FUNCTION_39_43();
          v94(v93);
          swift_storeEnumTagMultiPayload();
        }

        v98 = v115;
        v77 = v116;
      }

      else
      {
        sub_1D5347A68();
        sub_1D5615F18();
        v77 = v116;
        sub_1D5347B10();
        v87 = v101;
        sub_1D5615FD8();
        v82 = v112;
        v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230) + 48);
        OUTLINED_FUNCTION_45_38();
        OUTLINED_FUNCTION_3_145();
        sub_1D5347794(v88, v89, &protocol conformance descriptor for MusicDaemon.Request.Context);
        sub_1D5615FD8();
        v90 = v114;
        swift_unknownObjectRelease();
        v96 = OUTLINED_FUNCTION_20_71();
        v97(v96);
        (*(v82 + 8))(v44, v90);
        swift_storeEnumTagMultiPayload();
        v98 = v115;
      }

      v95 = v103;
      sub_1D5347914(v87, v77);
      sub_1D5347914(v77, v95);
      v76 = v98;
      goto LABEL_11;
    }

    v60 = v44;
    v59 = v114;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D5347690(uint64_t a1)
{
  sub_1D56162D8();
  MusicDaemon.Request.hash(into:)(v2);
  return sub_1D5616328();
}

unint64_t sub_1D53476CC()
{
  result = qword_1EC7F45E0;
  if (!qword_1EC7F45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45E0);
  }

  return result;
}

unint64_t sub_1D5347740()
{
  result = qword_1EDD5EA60;
  if (!qword_1EDD5EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA60);
  }

  return result;
}

uint64_t sub_1D5347794(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D53477DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D5347834(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D53478AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45F8, &qword_1D5654228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5347914(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

unint64_t sub_1D534796C()
{
  result = qword_1EDD5EAC0[0];
  if (!qword_1EDD5EAC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5EAC0);
  }

  return result;
}

unint64_t sub_1D53479C0()
{
  result = qword_1EDD5EA98;
  if (!qword_1EDD5EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA98);
  }

  return result;
}

unint64_t sub_1D5347A14()
{
  result = qword_1EDD5EA80;
  if (!qword_1EDD5EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA80);
  }

  return result;
}

unint64_t sub_1D5347A68()
{
  result = qword_1EC7F4628;
  if (!qword_1EC7F4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4628);
  }

  return result;
}

unint64_t sub_1D5347ABC()
{
  result = qword_1EC7F4630;
  if (!qword_1EC7F4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4630);
  }

  return result;
}

unint64_t sub_1D5347B10()
{
  result = qword_1EC7F4658;
  if (!qword_1EC7F4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4658);
  }

  return result;
}

unint64_t sub_1D5347B68()
{
  result = qword_1EC7F4660;
  if (!qword_1EC7F4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4660);
  }

  return result;
}

void sub_1D5347C4C(uint64_t a1)
{
  sub_1D5347CC0(319);
  if (v1 <= 0x3F)
  {
    sub_1D5347D2C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5347CC0(uint64_t a1)
{
  if (!qword_1EDD5EA68)
  {
    type metadata accessor for MusicDaemon.Request.Context(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD5EA68);
    }
  }
}

void sub_1D5347D2C()
{
  if (!qword_1EDD5EA48)
  {
    v0 = type metadata accessor for MusicDaemon.Request.Context(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5EA48);
    }
  }
}

uint64_t sub_1D5347DAC(uint64_t a1)
{
  v1 = sub_1D560C368();
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for MusicDaemon.Item(319);
    if (v4 > 0x3F)
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

_BYTE *_s7RequestO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5347F50(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_3_3(a1);
}

_BYTE *sub_1D5347F9C(_BYTE *result, int a2, int a3)
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

_BYTE *_s7RequestO7ContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5348124(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5348224()
{
  result = qword_1EC7F4678;
  if (!qword_1EC7F4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4678);
  }

  return result;
}

unint64_t sub_1D534827C()
{
  result = qword_1EC7F4680;
  if (!qword_1EC7F4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4680);
  }

  return result;
}

unint64_t sub_1D53482D4()
{
  result = qword_1EC7F4688;
  if (!qword_1EC7F4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4688);
  }

  return result;
}

unint64_t sub_1D534832C()
{
  result = qword_1EC7F4690;
  if (!qword_1EC7F4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4690);
  }

  return result;
}

unint64_t sub_1D5348384()
{
  result = qword_1EC7F4698;
  if (!qword_1EC7F4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4698);
  }

  return result;
}

unint64_t sub_1D53483DC()
{
  result = qword_1EC7F46A0;
  if (!qword_1EC7F46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46A0);
  }

  return result;
}

unint64_t sub_1D5348434()
{
  result = qword_1EDD5EAA0;
  if (!qword_1EDD5EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAA0);
  }

  return result;
}

unint64_t sub_1D534848C()
{
  result = qword_1EDD5EAA8;
  if (!qword_1EDD5EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAA8);
  }

  return result;
}

unint64_t sub_1D53484E4()
{
  result = qword_1EDD5EA70;
  if (!qword_1EDD5EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA70);
  }

  return result;
}

unint64_t sub_1D534853C()
{
  result = qword_1EDD5EA78;
  if (!qword_1EDD5EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA78);
  }

  return result;
}

unint64_t sub_1D5348594()
{
  result = qword_1EDD5EA88;
  if (!qword_1EDD5EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA88);
  }

  return result;
}

unint64_t sub_1D53485EC()
{
  result = qword_1EDD5EA90;
  if (!qword_1EDD5EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA90);
  }

  return result;
}

unint64_t sub_1D5348644()
{
  result = qword_1EDD5EAB0;
  if (!qword_1EDD5EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAB0);
  }

  return result;
}

unint64_t sub_1D534869C()
{
  result = qword_1EDD5EAB8;
  if (!qword_1EDD5EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAB8);
  }

  return result;
}

unint64_t sub_1D53486F4()
{
  result = qword_1EDD5EA50;
  if (!qword_1EDD5EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA50);
  }

  return result;
}

unint64_t sub_1D534874C()
{
  result = qword_1EDD5EA58;
  if (!qword_1EDD5EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA58);
  }

  return result;
}

unint64_t sub_1D53487A4()
{
  result = qword_1EC7F46A8;
  if (!qword_1EC7F46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46A8);
  }

  return result;
}

unint64_t sub_1D53487FC()
{
  result = qword_1EC7F46B0;
  if (!qword_1EC7F46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46B0);
  }

  return result;
}

unint64_t sub_1D5348854()
{
  result = qword_1EC7F46B8;
  if (!qword_1EC7F46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46B8);
  }

  return result;
}

unint64_t sub_1D53488AC()
{
  result = qword_1EC7F46C0;
  if (!qword_1EC7F46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46C0);
  }

  return result;
}

unint64_t sub_1D5348904()
{
  result = qword_1EC7F46C8;
  if (!qword_1EC7F46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46C8);
  }

  return result;
}

unint64_t sub_1D534895C()
{
  result = qword_1EC7F46D0;
  if (!qword_1EC7F46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_60(uint64_t a1, uint64_t a2)
{

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_37_37(uint64_t a1, uint64_t a2)
{

  return sub_1D56160C8();
}

uint64_t OUTLINED_FUNCTION_46_33(uint64_t a1)
{

  return sub_1D5614CB8();
}

void static AssetFlavors.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v157 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v144 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v145 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v148 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v150 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v151 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v153 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v144 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v147 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  v146 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  v149 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  v152 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_40_4();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v144 - v41;
  v154 = v40;
  v43 = *(v40 + 48);
  v156 = v6;
  sub_1D50D019C(v6, &v144 - v41);
  v155 = v4;
  sub_1D50D019C(v4, v42 + v43);
  OUTLINED_FUNCTION_43_0(v42);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v42 + v43);
    if (v44)
    {
      sub_1D4E6C9CC(v42, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_11;
    }

LABEL_9:
    v46 = v42;
LABEL_60:
    sub_1D4E6C9CC(v46, &qword_1EC7E9FB0, &qword_1D562C590);
    goto LABEL_61;
  }

  sub_1D50D019C(v42, v28);
  OUTLINED_FUNCTION_43_0(v42 + v43);
  if (v44)
  {
    OUTLINED_FUNCTION_26_62();
    v45(v28, v7);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_21_66();
  v47 = OUTLINED_FUNCTION_25_5();
  v48(v47);
  OUTLINED_FUNCTION_0_185();
  v51 = sub_1D534B500(v49, v50, MEMORY[0x1E6968FC8]);
  v0 = OUTLINED_FUNCTION_19_68(v28, v52, v53, v51);
  v54 = v12;
  v55 = *(v1 + 8);
  v56 = OUTLINED_FUNCTION_122_1();
  v55(v56);
  (v55)(v28, v7);
  v12 = v54;
  sub_1D4E6C9CC(v42, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_11:
  v57 = type metadata accessor for AssetFlavors(0);
  v58 = v154;
  v59 = OUTLINED_FUNCTION_13_9();
  sub_1D50D019C(v59, v2);
  v60 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v60, v2 + v42);
  OUTLINED_FUNCTION_43_0(v2);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v2 + v42);
    if (v44)
    {
      sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v61 = v153;
  sub_1D50D019C(v2, v153);
  OUTLINED_FUNCTION_43_0(v2 + v42);
  if (v62)
  {
    OUTLINED_FUNCTION_26_62();
    v63 = OUTLINED_FUNCTION_122_1();
    v64(v63);
LABEL_19:
    v46 = v2;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v65 = OUTLINED_FUNCTION_25_5();
  v66(v65);
  OUTLINED_FUNCTION_0_185();
  v69 = sub_1D534B500(v67, v68, MEMORY[0x1E6968FC8]);
  v42 = OUTLINED_FUNCTION_19_68(v61, v70, v71, v69);
  v0 = v1;
  v72 = OUTLINED_FUNCTION_35_51();
  v57(v72);
  v73 = OUTLINED_FUNCTION_122_1();
  v57(v73);
  v57 = v58;
  v58 = v1;
  sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_21:
  v74 = OUTLINED_FUNCTION_13_9();
  v75 = v152;
  sub_1D50D019C(v74, v152);
  v76 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v76, v75 + v42);
  OUTLINED_FUNCTION_43_0(v75);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v75 + v42);
    if (v44)
    {
      sub_1D4E6C9CC(v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v77 = v151;
  sub_1D50D019C(v75, v151);
  OUTLINED_FUNCTION_43_0(v75 + v42);
  if (v78)
  {
    OUTLINED_FUNCTION_26_62();
    v79(v77, v7);
LABEL_29:
    v46 = v75;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v80 = OUTLINED_FUNCTION_25_5();
  v81(v80);
  OUTLINED_FUNCTION_0_185();
  v84 = sub_1D534B500(v82, v83, MEMORY[0x1E6968FC8]);
  v0 = OUTLINED_FUNCTION_19_68(v77, v85, v86, v84);
  v42 = v75;
  v87 = OUTLINED_FUNCTION_35_51();
  v57(v87);
  (v57)(v77, v7);
  v57 = v58;
  sub_1D4E6C9CC(v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_31:
  v88 = OUTLINED_FUNCTION_13_9();
  sub_1D50D019C(v88, v1);
  v89 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v89, v1 + v42);
  OUTLINED_FUNCTION_43_0(v1);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v1 + v42);
    if (v44)
    {
      sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v90 = v150;
  sub_1D50D019C(v1, v150);
  OUTLINED_FUNCTION_43_0(v1 + v42);
  if (v91)
  {
    OUTLINED_FUNCTION_26_62();
    v92(v90, v7);
LABEL_39:
    v46 = v1;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v93 = OUTLINED_FUNCTION_25_5();
  v94(v93);
  OUTLINED_FUNCTION_0_185();
  v97 = sub_1D534B500(v95, v96, MEMORY[0x1E6968FC8]);
  v42 = OUTLINED_FUNCTION_19_68(v90, v98, v99, v97);
  v100 = OUTLINED_FUNCTION_33_2();
  v7(v100);
  (v7)(v90, v0);
  v7 = v0;
  sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_41:
  v153 = v57;
  v101 = OUTLINED_FUNCTION_13_9();
  v102 = v149;
  sub_1D50D019C(v101, v149);
  v103 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v103, v102 + v42);
  OUTLINED_FUNCTION_43_0(v102);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v102 + v42);
    if (!v44)
    {
      goto LABEL_59;
    }

    sub_1D4E6C9CC(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v104 = v148;
    sub_1D50D019C(v102, v148);
    OUTLINED_FUNCTION_43_0(v102 + v42);
    if (v105)
    {
      OUTLINED_FUNCTION_26_62();
      v107 = v104;
LABEL_58:
      v106(v107, v7);
LABEL_59:
      v46 = v102;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_21_66();
    v108 = OUTLINED_FUNCTION_25_5();
    v109(v108);
    OUTLINED_FUNCTION_0_185();
    v112 = sub_1D534B500(v110, v111, MEMORY[0x1E6968FC8]);
    v42 = OUTLINED_FUNCTION_19_68(v104, v113, v114, v112);
    v115 = OUTLINED_FUNCTION_33_2();
    v7(v115);
    (v7)(v104, v0);
    v7 = v0;
    sub_1D4E6C9CC(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v116 = OUTLINED_FUNCTION_13_9();
  v102 = v146;
  sub_1D50D019C(v116, v146);
  v117 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v117, v102 + v42);
  OUTLINED_FUNCTION_43_0(v102);
  if (v44)
  {
    OUTLINED_FUNCTION_43_0(v102 + v42);
    if (v44)
    {
      sub_1D4E6C9CC(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_63:
      v128 = OUTLINED_FUNCTION_13_9();
      v129 = v147;
      sub_1D50D019C(v128, v147);
      v130 = OUTLINED_FUNCTION_27_57();
      sub_1D50D019C(v130, v129 + v42);
      OUTLINED_FUNCTION_43_0(v129);
      if (v44)
      {
        OUTLINED_FUNCTION_43_0(v147 + v42);
        if (v44)
        {
          sub_1D4E6C9CC(v147, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_61;
        }
      }

      else
      {
        v131 = v147;
        sub_1D50D019C(v147, v144);
        OUTLINED_FUNCTION_43_0(v131 + v42);
        if (!v132)
        {
          OUTLINED_FUNCTION_21_66();
          v134 = v147;
          v135 = OUTLINED_FUNCTION_25_5();
          v136(v135);
          OUTLINED_FUNCTION_0_185();
          v139 = sub_1D534B500(v137, v138, MEMORY[0x1E6968FC8]);
          OUTLINED_FUNCTION_19_68(v144, v140, v141, v139);
          v142 = *(v1 + 8);
          v142(v12, v7);
          v143 = OUTLINED_FUNCTION_122_1();
          (v142)(v143);
          sub_1D4E6C9CC(v134, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_26_62();
        v133(v144, v7);
      }

      v46 = v147;
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v118 = v145;
  sub_1D50D019C(v102, v145);
  OUTLINED_FUNCTION_43_0(v102 + v42);
  if (v119)
  {
    OUTLINED_FUNCTION_26_62();
    v107 = v118;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_21_66();
  v120 = OUTLINED_FUNCTION_25_5();
  v121(v120);
  OUTLINED_FUNCTION_0_185();
  v124 = sub_1D534B500(v122, v123, MEMORY[0x1E6968FC8]);
  v42 = OUTLINED_FUNCTION_19_68(v118, v125, v126, v124);
  v127 = OUTLINED_FUNCTION_33_2();
  v7(v127);
  (v7)(v118, v0);
  v7 = v0;
  sub_1D4E6C9CC(v102, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v42)
  {
    goto LABEL_63;
  }

LABEL_61:
  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for AssetFlavors(uint64_t a1)
{
  result = qword_1EDD57DC8;
  if (!qword_1EDD57DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void AssetFlavors.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v73 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v72 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v71 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31_44();
  sub_1D50D019C(v0, v0);
  OUTLINED_FUNCTION_5_1(v0);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_7_12();
    v24(v23);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    v27 = sub_1D534B500(v25, v26, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_68_0(v27);
    v28 = OUTLINED_FUNCTION_3_146();
    v29(v28);
  }

  v30 = type metadata accessor for AssetFlavors(0);
  sub_1D50D019C(v0 + v30[5], v2);
  OUTLINED_FUNCTION_5_1(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_8_4();
    v32(v31, v2, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    v35 = sub_1D534B500(v33, v34, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_68_0(v35);
    v36 = OUTLINED_FUNCTION_3_146();
    v37(v36);
  }

  sub_1D50D019C(v0 + v30[6], v1);
  OUTLINED_FUNCTION_5_1(v1);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v38 = OUTLINED_FUNCTION_8_4();
    v39(v38, v1, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    v42 = sub_1D534B500(v40, v41, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_68_0(v42);
    v43 = OUTLINED_FUNCTION_3_146();
    v44(v43);
  }

  sub_1D50D019C(v0 + v30[7], v3);
  OUTLINED_FUNCTION_5_1(v3);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v45 = OUTLINED_FUNCTION_8_4();
    v46(v45, v3, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    v49 = sub_1D534B500(v47, v48, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_68_0(v49);
    v50 = OUTLINED_FUNCTION_3_146();
    v51(v50);
  }

  sub_1D50D019C(v0 + v30[8], v71);
  OUTLINED_FUNCTION_5_1(v71);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v52 = OUTLINED_FUNCTION_7_12();
    v53(v52);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    v56 = sub_1D534B500(v54, v55, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_68_0(v56);
    v57 = OUTLINED_FUNCTION_3_146();
    v58(v57);
  }

  sub_1D50D019C(v0 + v30[9], v72);
  OUTLINED_FUNCTION_5_1(v72);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v59 = OUTLINED_FUNCTION_7_12();
    v60(v59);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    v63 = sub_1D534B500(v61, v62, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_68_0(v63);
    v64 = OUTLINED_FUNCTION_3_146();
    v65(v64);
  }

  sub_1D50D019C(v0 + v30[10], v73);
  OUTLINED_FUNCTION_5_1(v73);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v66 = OUTLINED_FUNCTION_7_12();
    v67(v66);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    v70 = sub_1D534B500(v68, v69, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_68_0(v70);
    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_46();
}

void AssetFlavors.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v81 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v80 = v15;
  OUTLINED_FUNCTION_23();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_64_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_40_4();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_31_44();
  sub_1D56162D8();
  v25 = OUTLINED_FUNCTION_116();
  sub_1D50D019C(v25, v26);
  OUTLINED_FUNCTION_1(v0);
  if (v27)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_9_97();
    v29(v28, v0, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    v32 = sub_1D534B500(v30, v31, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_11_94(v32);
    v33 = OUTLINED_FUNCTION_6_0();
    v34(v33);
  }

  v35 = type metadata accessor for AssetFlavors(0);
  sub_1D50D019C(v0 + v35[5], v24);
  OUTLINED_FUNCTION_1(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v36 = OUTLINED_FUNCTION_9_97();
    v37(v36, v24, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    v40 = sub_1D534B500(v38, v39, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_11_94(v40);
    v41 = OUTLINED_FUNCTION_6_0();
    v42(v41);
  }

  sub_1D50D019C(v0 + v35[6], v2);
  OUTLINED_FUNCTION_1(v2);
  if (v27)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v43 = OUTLINED_FUNCTION_9_97();
    v44(v43, v2, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    v47 = sub_1D534B500(v45, v46, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_11_94(v47);
    v48 = OUTLINED_FUNCTION_6_0();
    v49(v48);
  }

  sub_1D50D019C(v0 + v35[7], v1);
  OUTLINED_FUNCTION_1(v1);
  if (v27)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_9_97();
    v51(v50, v1, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    v54 = sub_1D534B500(v52, v53, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_11_94(v54);
    v55 = OUTLINED_FUNCTION_6_0();
    v56(v55);
  }

  sub_1D50D019C(v0 + v35[8], v19);
  OUTLINED_FUNCTION_1(v19);
  if (v27)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_9_97();
    v58(v57, v19, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    v61 = sub_1D534B500(v59, v60, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_11_94(v61);
    v62 = OUTLINED_FUNCTION_6_0();
    v63(v62);
  }

  v64 = v0 + v35[9];
  v65 = v80;
  sub_1D50D019C(v64, v80);
  OUTLINED_FUNCTION_1(v65);
  if (v27)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v66 = OUTLINED_FUNCTION_9_97();
    v67(v66, v65, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    v70 = sub_1D534B500(v68, v69, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_11_94(v70);
    v71 = OUTLINED_FUNCTION_6_0();
    v72(v71);
  }

  v73 = v81;
  sub_1D50D019C(v3 + v35[10], v81);
  OUTLINED_FUNCTION_1(v73);
  if (v27)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v74 = OUTLINED_FUNCTION_9_97();
    v75(v74, v73, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    v78 = sub_1D534B500(v76, v77, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_11_94(v78);
    (*(v6 + 8))(v10, v4);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5349F4C(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = sub_1D560C0A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v32 = &v31 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v31 = &v31 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v31 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v31 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v31 - v25;
  sub_1D56162D8();
  sub_1D50D019C(v2, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v26, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  sub_1D50D019C(v2 + a2[5], v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v24, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  sub_1D50D019C(v2 + a2[6], v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v21, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  sub_1D50D019C(v2 + a2[7], v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v18, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  v27 = v31;
  sub_1D50D019C(v4 + a2[8], v31);
  if (__swift_getEnumTagSinglePayload(v27, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v27, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  v28 = v32;
  sub_1D50D019C(v4 + a2[9], v32);
  if (__swift_getEnumTagSinglePayload(v28, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v28, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  v29 = v33;
  sub_1D50D019C(v4 + a2[10], v33);
  if (__swift_getEnumTagSinglePayload(v29, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v29, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  return sub_1D5616328();
}

uint64_t AssetFlavors.highDefinitionVideoURL(quality:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for AssetFlavors(0);
  v6 = 24;
  if (v4)
  {
    v6 = 28;
  }

  v7 = v2 + *(v5 + v6);

  return sub_1D50D019C(v7, a2);
}

uint64_t AssetFlavors.standardDefinitionVideoURL(variant:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = v2 + *(type metadata accessor for AssetFlavors(0) + qword_1D5654FE0[v4]);

  return sub_1D50D019C(v5, a2);
}

uint64_t AssetFlavors.audioURL(variant:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 += *(type metadata accessor for AssetFlavors(0) + 20);
  }

  return sub_1D50D019C(v2, a2);
}

uint64_t AssetFlavors.StandardDefinitionVariant.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t AssetFlavors.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  sub_1D4E628D4(a1, v9);
  type metadata accessor for CloudAssetFlavors(0);
  sub_1D534B500(&qword_1EDD56B40, type metadata accessor for CloudAssetFlavors, &unk_1D5657E1C);
  OUTLINED_FUNCTION_18_74();
  sub_1D534B500(v4, type metadata accessor for CloudAssetFlavors, v5);
  sub_1D5610768();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D536AC28();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v7 = OUTLINED_FUNCTION_122_1();
  return v8(v7);
}

uint64_t AssetFlavors.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  sub_1D536AE60();
  sub_1D534B500(&qword_1EDD56B40, type metadata accessor for CloudAssetFlavors, &unk_1D5657E1C);
  OUTLINED_FUNCTION_18_74();
  sub_1D534B500(v2, type metadata accessor for CloudAssetFlavors, v3);
  sub_1D5610778();
  v4 = OUTLINED_FUNCTION_122_1();
  return v5(v4);
}

void AssetFlavors.description.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18[-v9];
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_64_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13];
  v15 = OUTLINED_FUNCTION_23_61();
  sub_1D50D019C(v0 + v15[6], v14);
  v16 = sub_1D560C0A8();
  OUTLINED_FUNCTION_28_54(v14);
  sub_1D4E6C9CC(v14, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70]();
  }

  sub_1D50D019C(v0 + v15[7], v2);
  OUTLINED_FUNCTION_28_54(v2);
  sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70](0x100000000000001ELL);
  }

  sub_1D50D019C(v0 + v15[8], v1);
  OUTLINED_FUNCTION_28_54(v1);
  sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70]();
  }

  sub_1D50D019C(v0 + v15[9], v10);
  OUTLINED_FUNCTION_28_54(v10);
  sub_1D4E6C9CC(v10, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70](0x100000000000001ELL);
  }

  sub_1D50D019C(v0 + v15[10], v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v16);
  sub_1D4E6C9CC(v7, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70]();
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  OUTLINED_FUNCTION_46();
}

void AssetFlavors.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v73 = v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_135();
  v72 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31_44();
  v11 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v71 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v70 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v69 = v19;
  OUTLINED_FUNCTION_23();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = OUTLINED_FUNCTION_23_61();
  v25 = v0;
  sub_1D50D019C(v0 + v24[6], v0);
  OUTLINED_FUNCTION_1(v0);
  if (v26)
  {
    sub_1D4E6C9CC(v0, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v27 = OUTLINED_FUNCTION_116();
    v28(v27);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000001ELL;
    v75 = v29;
    OUTLINED_FUNCTION_0_185();
    v32 = sub_1D534B500(v30, v31, MEMORY[0x1E6968FE0]);
    v33 = OUTLINED_FUNCTION_30_50(v32);
    MEMORY[0x1DA6EAC70](v33);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v74, v75);

    v34 = OUTLINED_FUNCTION_20_72();
    v35(v34);
  }

  sub_1D50D019C(v0 + v24[7], v1);
  OUTLINED_FUNCTION_1(v1);
  if (v26)
  {
    sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v36(v23, v1, v11);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000001ELL;
    v75 = v37;
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v38, v39, MEMORY[0x1E6968FE0]);
    v40 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v40);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v74, v75);

    (*(v13 + 8))(v23, v11);
  }

  sub_1D50D019C(v0 + v24[8], v2);
  OUTLINED_FUNCTION_1(v2);
  if (v26)
  {
    sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v41(v69, v2, v11);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD000000000000022;
    v75 = v42;
    OUTLINED_FUNCTION_0_185();
    v45 = sub_1D534B500(v43, v44, MEMORY[0x1E6968FE0]);
    v46 = OUTLINED_FUNCTION_30_50(v45);
    MEMORY[0x1DA6EAC70](v46);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_38_5();

    v47 = OUTLINED_FUNCTION_20_72();
    v48(v47);
  }

  v49 = v72;
  sub_1D50D019C(v25 + v24[9], v72);
  OUTLINED_FUNCTION_1(v49);
  if (v26)
  {
    sub_1D4E6C9CC(v49, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v50 = OUTLINED_FUNCTION_116();
    v51(v50);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000001ELL;
    v75 = v52;
    OUTLINED_FUNCTION_0_185();
    v55 = sub_1D534B500(v53, v54, MEMORY[0x1E6968FE0]);
    v56 = OUTLINED_FUNCTION_30_50(v55);
    MEMORY[0x1DA6EAC70](v56);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_38_5();

    v57 = OUTLINED_FUNCTION_20_72();
    v58(v57);
  }

  v59 = v73;
  sub_1D50D019C(v25 + v24[10], v73);
  OUTLINED_FUNCTION_1(v59);
  if (v26)
  {
    sub_1D4E6C9CC(v59, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v60 = v71;
    v61 = OUTLINED_FUNCTION_116();
    v62(v61);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000002BLL;
    v75 = v63;
    OUTLINED_FUNCTION_0_185();
    v66 = sub_1D534B500(v64, v65, MEMORY[0x1E6968FE0]);
    v67 = OUTLINED_FUNCTION_30_50(v66);
    MEMORY[0x1DA6EAC70](v67);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_38_5();

    (*(v13 + 8))(v60, v11);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D534B500(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D534B54C()
{
  result = qword_1EC7F46E0;
  if (!qword_1EC7F46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46E0);
  }

  return result;
}

unint64_t sub_1D534B5A4()
{
  result = qword_1EC7F46E8;
  if (!qword_1EC7F46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46E8);
  }

  return result;
}

unint64_t sub_1D534B5FC()
{
  result = qword_1EC7F46F0;
  if (!qword_1EC7F46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46F0);
  }

  return result;
}

void sub_1D534B680(uint64_t a1)
{
  sub_1D500A1D4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for AssetFlavors.StandardDefinitionVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D534B7EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_23_61()
{
  strcpy((v0 - 96), "AssetFlavors(");
  *(v0 - 82) = -4864;

  return type metadata accessor for AssetFlavors(0);
}

uint64_t Playlist.Collaborator.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v10 = sub_1D560D708();
  v12 = v11;
  (*(v6 + 8))(v9, v4);
  *a2 = v10;
  a2[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for Playlist.Collaborator(uint64_t a1)
{
  result = qword_1EDD5F158;
  if (!qword_1EDD5F158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Playlist.Collaborator.role.getter()
{
  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }

  OUTLINED_FUNCTION_9_98();
  sub_1D534F400(v1, v0, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v2, v0, v3);

  return sub_1D560EC28();
}

uint64_t Playlist.Collaborator.isLightweight.getter()
{
  if (qword_1EC7E9440 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_1EC7E9440);
  }

  OUTLINED_FUNCTION_3_147();
  sub_1D534F400(v1, v0, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v2, v0, v3);
  sub_1D560EC28();
  return v5 & 1;
}

uint64_t sub_1D534BD00()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_147();
  sub_1D534F400(v2, v0, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v3, v0, v4);
  sub_1D560EC28();
  return v6;
}

uint64_t sub_1D534BDEC()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_147();
  sub_1D534F400(v2, v0, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v3, v0, v4);
  sub_1D560EC28();
  return v6;
}

uint64_t Playlist.Collaborator.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Playlist.Collaborator.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Playlist.Collaborator(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1D534BF70(void *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  a3(0);
  sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v5, type metadata accessor for Playlist.Collaborator, v6);

  return sub_1D560EC28();
}

uint64_t static Playlist.Collaborator.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Playlist.Collaborator(0);

  return sub_1D5611A78();
}

uint64_t Playlist.Collaborator.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_107();
  sub_1D534F400(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t Playlist.Collaborator.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_107();
  sub_1D534F400(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D534C1F0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D534F400(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D534C294@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Collaborator.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Collaborator.subscript.getter(uint64_t a1)
{
  return sub_1D534C2FC();
}

{
  return sub_1D534C2FC();
}

uint64_t sub_1D534C2FC()
{
  OUTLINED_FUNCTION_4_110();
  sub_1D534F400(v1, v0, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_13_81(&unk_1EDD52D30);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t Playlist.Collaborator.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_4_110();
  sub_1D534F400(v2, v1, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_13_81(&unk_1EDD52D30);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D534C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v11 = sub_1D534F400(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D534C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v13 = sub_1D534F400(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D534C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v13 = sub_1D534F400(&qword_1EDD5D1F0, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D534C8A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D534F400(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C520 = v0;
  return result;
}

uint64_t sub_1D534C94C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C528 = v0;
  return result;
}

uint64_t sub_1D534C9BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C530 = v0;
  return result;
}

uint64_t sub_1D534CA3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C538 = v0;
  return result;
}

uint64_t sub_1D534CAB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C540 = v0;
  return result;
}

uint64_t sub_1D534CB2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C548 = v0;
  return result;
}

uint64_t sub_1D534CBA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C550 = v0;
  return result;
}

uint64_t sub_1D534CC10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_95();
  sub_1D534F400(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C558 = v0;
  return result;
}

uint64_t sub_1D534CC9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FA0, &qword_1D561B990);
  swift_getKeyPath();
  sub_1D534F448();
  sub_1D560D168();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC7F46F8 = v0;
  return result;
}

uint64_t sub_1D534CD08@<X0>(_BYTE *a1@<X8>)
{
  result = Playlist.Collaborator.role.getter();
  *a1 = v3;
  return result;
}

uint64_t static PartialMusicProperty<A>.role.getter()
{
  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }
}

uint64_t Playlist.Collaborator.init(from:)(void *a1)
{
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_8_103();
  sub_1D534F400(v3, v4, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_7_110();
  sub_1D534F400(v5, v1, MEMORY[0x1E6975C58]);
  OUTLINED_FUNCTION_12_79(&qword_1EC7F4748);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Collaborator.encode(to:)(uint64_t a1)
{
  type metadata accessor for Playlist.Collaborator(0);
  OUTLINED_FUNCTION_8_103();
  sub_1D534F400(v2, v3, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_7_110();
  sub_1D534F400(v4, v1, MEMORY[0x1E6975C58]);
  OUTLINED_FUNCTION_12_79(&qword_1EC7F4748);
  return sub_1D5612688();
}

uint64_t Playlist.Collaborator.description.getter()
{
  OUTLINED_FUNCTION_9_0();
  v7 = v1 + 1;
  v2 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v2);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if (qword_1EC7E9438 != -1)
  {
    OUTLINED_FUNCTION_19_5(&qword_1EC7E9438);
  }

  OUTLINED_FUNCTION_9_98();
  sub_1D534F400(v3, v0, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v4, v0, v5);
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_28_55();

  if (qword_1EC7E9460 != -1)
  {
    OUTLINED_FUNCTION_13_7(&qword_1EC7E9460);
  }

  OUTLINED_FUNCTION_19_69(qword_1EC87C550, MEMORY[0x1E69E6158]);
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_28_55();

  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }

  OUTLINED_FUNCTION_19_69(qword_1EC7F46F8, &type metadata for Playlist.Collaborator.Role);
  MEMORY[0x1DA6EAC70](0x203A656C6F72202CLL, 0xE800000000000000);
  sub_1D5615D48();
  OUTLINED_FUNCTION_28_55();

  if (qword_1EC7E9440 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_1EC7E9440);
  }

  OUTLINED_FUNCTION_19_69(qword_1EC87C530, MEMORY[0x1E69E6370]);
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v7;
}

unint64_t Playlist.Collaborator.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29[-v2];
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_9_0();
  v32 = 0xD000000000000016;
  v33 = v10;
  strcpy(v31, "\n  id: ");
  BYTE1(v31[1]) = 0;
  WORD1(v31[1]) = 0;
  HIDWORD(v31[1]) = -402653184;
  v11 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v11);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](v31[0], v31[1]);

  if (qword_1EC7E9438 != -1)
  {
    OUTLINED_FUNCTION_19_5(&qword_1EC7E9438);
  }

  v12 = qword_1EC87C528;
  OUTLINED_FUNCTION_4_110();
  sub_1D534F400(v13, v0, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_0_186();
  sub_1D534F400(v14, v0, v15);
  OUTLINED_FUNCTION_16_8(v12, MEMORY[0x1E69E6158]);
  v16 = v31[1];
  if (v31[1])
  {
    v17 = v31[0];
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    strcpy(v31, ",\n  handle: ");
    HIWORD(v31[1]) = -4864;
    MEMORY[0x1DA6EAC70](v17, v16);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_20_73();
  }

  if (qword_1EC7E9460 != -1)
  {
    OUTLINED_FUNCTION_13_7(&qword_1EC7E9460);
  }

  OUTLINED_FUNCTION_16_8(qword_1EC87C550, MEMORY[0x1E69E6158]);
  v18 = v31[1];
  if (v31[1])
  {
    v19 = v31[0];
    strcpy(v31, ",\n  name: ");
    HIDWORD(v31[1]) = -352321536;
    MEMORY[0x1DA6EAC70](v19, v18);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_20_73();
  }

  if (qword_1EC7E9470 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EC7E9470);
  }

  OUTLINED_FUNCTION_16_8(qword_1EC7F46F8, &type metadata for Playlist.Collaborator.Role);
  v20 = v31[0];
  if (LOBYTE(v31[0]) != 2)
  {
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x656C6F7220200A2CLL, 0xEA0000000000203ALL);
    v30 = v20 & 1;
    sub_1D5615D48();
    OUTLINED_FUNCTION_20_73();
  }

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v31[0] = 0xD000000000000013;
  v31[1] = v21;
  if (qword_1EC7E9440 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_1EC7E9440);
  }

  OUTLINED_FUNCTION_16_8(qword_1EC87C530, MEMORY[0x1E69E6370]);
  if (v30 == 2 || (v30 & 1) == 0)
  {
    v22 = 0xE500000000000000;
    v23 = 0x65736C6166;
  }

  else
  {
    v22 = 0xE400000000000000;
    v23 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v23, v22);

  OUTLINED_FUNCTION_20_73();

  if (qword_1EC7E9468 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_8(qword_1EC87C558, v4);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1D534D7FC(v3);
  }

  else
  {
    (*(v6 + 32))(v9, v3, v4);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v31[0] = 0xD000000000000017;
    v31[1] = v24;
    OUTLINED_FUNCTION_11_95();
    sub_1D534F400(v25, v26, MEMORY[0x1E6968FE0]);
    v27 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v27);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v31[0], v31[1]);

    (*(v6 + 8))(v9, v4);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v32;
}

uint64_t sub_1D534D7FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D534D86C()
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
  v6(v5, *MEMORY[0x1E6974FD0], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F4700 = v4;
  return result;
}

uint64_t sub_1D534D9C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E69751F0], v0);
  qword_1EC7F4708 = v3;
  return result;
}

uint64_t sub_1D534DADC()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F4710);
  __swift_project_value_buffer(v0, qword_1EC7F4710);
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D534F400(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  return sub_1D560D978();
}

uint64_t sub_1D534DBB4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F4728);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F4728);
  if (qword_1EC7E9488 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F4710);
  OUTLINED_FUNCTION_24_0();
  v3 = *(v2 + 16);

  return v3(v1);
}

uint64_t sub_1D534DCB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656E696F6ALL && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E696F4A746F6ELL && a2 == 0xE900000000000064;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000)
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

uint64_t sub_1D534DE0C(char a1)
{
  result = 1953722216;
  switch(a1)
  {
    case 1:
      result = 0x64656E696F6ALL;
      break;
    case 2:
      result = 0x656E696F4A746F6ELL;
      break;
    case 3:
      result = 0x676E69646E6570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D534DE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D534DCB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D534DEB8(uint64_t a1)
{
  v2 = sub_1D534E4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534DEF4(uint64_t a1)
{
  v2 = sub_1D534E4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534DF30(uint64_t a1)
{
  v2 = sub_1D534E628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534DF6C(uint64_t a1)
{
  v2 = sub_1D534E628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534DFA8(uint64_t a1)
{
  v2 = sub_1D534E5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534DFE4(uint64_t a1)
{
  v2 = sub_1D534E5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534E020(uint64_t a1)
{
  v2 = sub_1D534E580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534E05C(uint64_t a1)
{
  v2 = sub_1D534E580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534E098(uint64_t a1)
{
  v2 = sub_1D534E52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534E0D4(uint64_t a1)
{
  v2 = sub_1D534E52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Playlist.Collaborator.Status.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4750, &qword_1D5654FF8);
  OUTLINED_FUNCTION_4();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4758, &qword_1D5655000);
  OUTLINED_FUNCTION_4();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4760, &qword_1D5655008);
  OUTLINED_FUNCTION_4();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4768, &qword_1D5655010);
  OUTLINED_FUNCTION_4();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4770, &qword_1D5655018);
  OUTLINED_FUNCTION_4();
  v22 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D534E4D8();
  sub_1D56163D8();
  switch(v26)
  {
    case 1:
      v43 = 1;
      sub_1D534E5D4();
      v27 = v33;
      OUTLINED_FUNCTION_17_74(&_s12CollaboratorV6StatusO16JoinedCodingKeysON, &v43);
      v29 = v34;
      v28 = v35;
      goto LABEL_6;
    case 2:
      v44 = 2;
      sub_1D534E580();
      v27 = v36;
      OUTLINED_FUNCTION_17_74(&_s12CollaboratorV6StatusO19NotJoinedCodingKeysON, &v44);
      v29 = v37;
      v28 = v38;
      goto LABEL_6;
    case 3:
      v45 = 3;
      sub_1D534E52C();
      v27 = v39;
      OUTLINED_FUNCTION_17_74(&_s12CollaboratorV6StatusO17PendingCodingKeysON, &v45);
      v29 = v40;
      v28 = v41;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_1D534E628();
      sub_1D5616018();
      (*(v31 + 8))(v19, v32);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_1D534E4D8()
{
  result = qword_1EC7F4778;
  if (!qword_1EC7F4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4778);
  }

  return result;
}

unint64_t sub_1D534E52C()
{
  result = qword_1EC7F4780;
  if (!qword_1EC7F4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4780);
  }

  return result;
}

unint64_t sub_1D534E580()
{
  result = qword_1EC7F4788;
  if (!qword_1EC7F4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4788);
  }

  return result;
}

unint64_t sub_1D534E5D4()
{
  result = qword_1EC7F4790;
  if (!qword_1EC7F4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4790);
  }

  return result;
}

unint64_t sub_1D534E628()
{
  result = qword_1EC7F4798;
  if (!qword_1EC7F4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4798);
  }

  return result;
}

uint64_t Playlist.Collaborator.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t Playlist.Collaborator.Status.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47A0, &qword_1D5655020);
  OUTLINED_FUNCTION_4();
  v63 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v66 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47A8, &qword_1D5655028);
  OUTLINED_FUNCTION_4();
  v60 = v7;
  v61 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v62 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47B0, &qword_1D5655030);
  OUTLINED_FUNCTION_4();
  v58 = v11;
  v59 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47B8, &qword_1D5655038);
  OUTLINED_FUNCTION_4();
  v57 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F47C0, &unk_1D5655040);
  OUTLINED_FUNCTION_4();
  v65 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D534E4D8();
  v25 = v68;
  sub_1D5616398();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v15;
  v55 = v19;
  v56 = v14;
  v26 = v66;
  v27 = v67;
  v68 = a1;
  v28 = v24;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v53 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return result;
  }

  v33 = *(v30 + v31);
  sub_1D4FE35EC();
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_8:
    v43 = v65;
    sub_1D5615C18();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v45 = &type metadata for Playlist.Collaborator.Status;
    sub_1D5615F28();
    sub_1D5615BF8();
    OUTLINED_FUNCTION_24_0();
    (*(v46 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v28, v20);
    a1 = v68;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v64;
  v39 = v65;
  v52 = v33;
  v40 = v33;
  v41 = v63;
  switch(v40)
  {
    case 1:
      v70 = 1;
      sub_1D534E5D4();
      v47 = v56;
      OUTLINED_FUNCTION_21_4(&_s12CollaboratorV6StatusO16JoinedCodingKeysON, &v70);
      swift_unknownObjectRelease();
      v49 = v58;
      v48 = v59;
      goto LABEL_18;
    case 2:
      v71[0] = 2;
      sub_1D534E580();
      v47 = v62;
      OUTLINED_FUNCTION_21_4(&_s12CollaboratorV6StatusO19NotJoinedCodingKeysON, v71);
      swift_unknownObjectRelease();
      v49 = v60;
      v48 = v61;
LABEL_18:
      (*(v49 + 8))(v47, v48);
      goto LABEL_19;
    case 3:
      v71[1] = 3;
      sub_1D534E52C();
      v50 = v53;
      sub_1D5615F18();
      if (v50)
      {
        (*(v39 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v68;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v41 + 8))(v26, v27);
LABEL_19:
      (*(v39 + 8))(v28, v20);
      *v38 = v52;
      result = __swift_destroy_boxed_opaque_existential_1(v68);
      break;
    default:
      v69 = 0;
      sub_1D534E628();
      v42 = v55;
      OUTLINED_FUNCTION_21_4(&_s12CollaboratorV6StatusO14HostCodingKeysON, &v69);
      swift_unknownObjectRelease();
      (*(v57 + 8))(v42, v54);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_1D534EE14()
{
  result = qword_1EC7F47C8;
  if (!qword_1EC7F47C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F47D0, &qword_1D5655318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47C8);
  }

  return result;
}

unint64_t sub_1D534EE7C()
{
  result = qword_1EC7F47D8;
  if (!qword_1EC7F47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47D8);
  }

  return result;
}

_BYTE *sub_1D534EF1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D534F03C()
{
  result = qword_1EC7F47E0;
  if (!qword_1EC7F47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47E0);
  }

  return result;
}

unint64_t sub_1D534F094()
{
  result = qword_1EC7F47E8;
  if (!qword_1EC7F47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47E8);
  }

  return result;
}

unint64_t sub_1D534F0EC()
{
  result = qword_1EC7F47F0;
  if (!qword_1EC7F47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47F0);
  }

  return result;
}

unint64_t sub_1D534F144()
{
  result = qword_1EC7F47F8;
  if (!qword_1EC7F47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F47F8);
  }

  return result;
}

unint64_t sub_1D534F19C()
{
  result = qword_1EC7F4800;
  if (!qword_1EC7F4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4800);
  }

  return result;
}

unint64_t sub_1D534F1F4()
{
  result = qword_1EC7F4808;
  if (!qword_1EC7F4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4808);
  }

  return result;
}

unint64_t sub_1D534F24C()
{
  result = qword_1EC7F4810;
  if (!qword_1EC7F4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4810);
  }

  return result;
}

unint64_t sub_1D534F2A4()
{
  result = qword_1EC7F4818;
  if (!qword_1EC7F4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4818);
  }

  return result;
}

unint64_t sub_1D534F2FC()
{
  result = qword_1EC7F4820;
  if (!qword_1EC7F4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4820);
  }

  return result;
}

unint64_t sub_1D534F354()
{
  result = qword_1EC7F4828;
  if (!qword_1EC7F4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4828);
  }

  return result;
}

unint64_t sub_1D534F3AC()
{
  result = qword_1EC7F4830;
  if (!qword_1EC7F4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4830);
  }

  return result;
}

uint64_t sub_1D534F400(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D534F448()
{
  result = qword_1EC7F4838;
  if (!qword_1EC7F4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4838);
  }

  return result;
}

void OUTLINED_FUNCTION_20_73()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_28_55()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t type metadata accessor for StorePlatformTrack(uint64_t a1)
{
  result = qword_1EC7F4840;
  if (!qword_1EC7F4840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D534F524(uint64_t a1)
{
  result = type metadata accessor for StorePlatformMusicVideo(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StorePlatformSong(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D534F59C()
{
  result = qword_1EC7F4850;
  if (!qword_1EC7F4850)
  {
    type metadata accessor for StorePlatformTrack(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4850);
  }

  return result;
}

uint64_t sub_1D534F5F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformSong(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = type metadata accessor for StorePlatformMusicVideo(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  type metadata accessor for StorePlatformTrack(0);
  OUTLINED_FUNCTION_14();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v34 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F0, &unk_1D561F0D0);
  v21 = OUTLINED_FUNCTION_22(v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  v25 = *(v22 + 56);
  sub_1D53502E0(a1, &v34 - v23);
  sub_1D53502E0(a2, &v24[v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D53502E0(v24, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_0_187();
      sub_1D5350280(&v24[v25], v8, v26);
      v27 = sub_1D50F5698(v17, v8);
      sub_1D53503AC(v8, type metadata accessor for StorePlatformSong);
      v28 = v17;
      v29 = type metadata accessor for StorePlatformSong;
LABEL_9:
      sub_1D53503AC(v28, v29);
      sub_1D53503AC(v24, type metadata accessor for StorePlatformTrack);
      return v27 & 1;
    }

    OUTLINED_FUNCTION_4_111();
    v31 = v17;
  }

  else
  {
    sub_1D53502E0(v24, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_1_143();
      sub_1D5350280(&v24[v25], v13, v32);
      v27 = sub_1D5382590(v19, v13);
      sub_1D53503AC(v13, type metadata accessor for StorePlatformMusicVideo);
      v28 = v19;
      v29 = type metadata accessor for StorePlatformMusicVideo;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_148();
    v31 = v19;
  }

  sub_1D53503AC(v31, v30);
  sub_1D5350344(v24);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1D534F8A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StorePlatformSong(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for StorePlatformMusicVideo(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for StorePlatformTrack(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1D53502E0(v2, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_187();
    sub_1D5350280(v17, v8, v18);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D50F7428(a1);
    OUTLINED_FUNCTION_4_111();
    v20 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_1_143();
    sub_1D5350280(v17, v13, v21);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5383FB0(a1);
    OUTLINED_FUNCTION_3_148();
    v20 = v13;
  }

  return sub_1D53503AC(v20, v19);
}

uint64_t sub_1D534FA0C()
{
  sub_1D56162D8();
  sub_1D534F8A8(v1);
  return sub_1D5616328();
}

uint64_t sub_1D534FA58(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D534F8A8(v2);
  return sub_1D5616328();
}

uint64_t sub_1D534FA94(uint64_t a1)
{
  v2 = sub_1D535022C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D534FAD0(uint64_t a1)
{
  v2 = sub_1D535022C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D534FB0C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v62 = sub_1D5615C08();
  OUTLINED_FUNCTION_4();
  v59 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v58 = v6 - v5;
  v7 = type metadata accessor for StorePlatformSong(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v60 = v10 - v9;
  v11 = type metadata accessor for StorePlatformMusicVideo(0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4858, &qword_1D5655AE0);
  OUTLINED_FUNCTION_4();
  v61 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for StorePlatformTrack(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D535022C();
  v26 = v65;
  sub_1D5616398();
  if (!v26)
  {
    v27 = v15;
    v57 = v24;
    v65 = v20;
    v28 = v62;
    v29 = v63;
    v33 = sub_1D5615F98();
    if (v33 == 0x646956636973756DLL && v32 == 0xEA00000000006F65)
    {

      v35 = v29;
    }

    else
    {
      v55 = v33;
      v56 = v32;
      v35 = v29;
      if ((sub_1D5616168() & 1) == 0)
      {
        if (v55 == 1735290739 && v56 == 0xE400000000000000)
        {

          v43 = v60;
        }

        else
        {
          v42 = sub_1D5616168();
          v43 = v60;
          if ((v42 & 1) == 0)
          {
            v63 = v19;
            __swift_project_boxed_opaque_existential_1(v25, v25[3]);
            sub_1D5616348();
            v64[0] = 0;
            v64[1] = 0xE000000000000000;
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D567E3C0);
            MEMORY[0x1DA6EAC70](v55, v56);

            MEMORY[0x1DA6EAC70](0xD000000000000025, 0x80000001D568BD40);
            v49 = v58;
            sub_1D5615BF8();
            v50 = sub_1D5615C18();
            swift_allocError();
            v52 = v51;
            v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
            *v52 = v65;
            v54 = v59;
            (*(v59 + 16))(v52 + v53, v49, v28);
            (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
            swift_willThrow();
            (*(v54 + 8))(v49, v28);
            v30 = OUTLINED_FUNCTION_7_111();
            v31(v30);
            return __swift_destroy_boxed_opaque_existential_1(v25);
          }
        }

        sub_1D4E628D4(v25, v64);
        sub_1D50F3F80(v64, v43);
        v44 = OUTLINED_FUNCTION_7_111();
        v45(v44);
        OUTLINED_FUNCTION_0_187();
        v47 = v43;
        v39 = v57;
        sub_1D5350280(v47, v57, v48);
        goto LABEL_11;
      }
    }

    sub_1D4E628D4(v25, v64);
    sub_1D53810C4(v64, v27);
    v36 = OUTLINED_FUNCTION_7_111();
    v37(v36);
    OUTLINED_FUNCTION_1_143();
    v38 = v27;
    v39 = v57;
    sub_1D5350280(v38, v57, v40);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_1D5350280(v39, v35, type metadata accessor for StorePlatformTrack);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1D5350088(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StorePlatformSong(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for StorePlatformMusicVideo(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for StorePlatformTrack(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1D53502E0(v2, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_187();
    sub_1D5350280(v17, v8, v18);
    sub_1D50F4FDC(a1);
    OUTLINED_FUNCTION_4_111();
    v20 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_1_143();
    sub_1D5350280(v17, v13, v21);
    sub_1D5381FAC(a1);
    OUTLINED_FUNCTION_3_148();
    v20 = v13;
  }

  return sub_1D53503AC(v20, v19);
}

unint64_t sub_1D535022C()
{
  result = qword_1EC7F4860;
  if (!qword_1EC7F4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4860);
  }

  return result;
}

uint64_t sub_1D5350280(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D53502E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformTrack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5350344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F0, &unk_1D561F0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D53503AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformTrack.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D53504B4()
{
  result = qword_1EC7F4868;
  if (!qword_1EC7F4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4868);
  }

  return result;
}

unint64_t sub_1D535050C()
{
  result = qword_1EC7F4870;
  if (!qword_1EC7F4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4870);
  }

  return result;
}

unint64_t sub_1D5350564()
{
  result = qword_1EC7F4878;
  if (!qword_1EC7F4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4878);
  }

  return result;
}

uint64_t EditorialElementLink.Target.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t EditorialElementLink.Target.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D5615C08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v21);
  v9 = sub_1D50F8E84(v21);
  if (!v2)
  {
    v11 = v9;
    v12 = v10;
    v13 = v9 == 0x6C616E7265747865 && v10 == 0xE800000000000000;
    if (v13 || (OUTLINED_FUNCTION_0_188(0x6C616E7265747865) & 1) != 0)
    {

      v14 = 0;
    }

    else
    {
      v16 = v11 == 0x6C616E7265746E69 && v12 == 0xE800000000000000;
      if (!v16 && (OUTLINED_FUNCTION_0_188(0x6C616E7265746E69) & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_1D5616348();
        v21[0] = 0;
        v21[1] = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD00000000000003FLL, 0x80000001D568BD70);
        MEMORY[0x1DA6EAC70](v11, v12);

        MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
        sub_1D5615BF8();
        v17 = sub_1D5615C18();
        swift_allocError();
        v19 = v18;
        (*(v6 + 16))(v18, v8, v5);
        (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v14 = 1;
    }

    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialElementLink.Target.encode(to:)(void *a1)
{
  if (*v1)
  {
    v2 = 0x6C616E7265746E69;
  }

  else
  {
    v2 = 0x6C616E7265747865;
  }

  sub_1D50F8F30(a1, v2, 0xE800000000000000);
}

unint64_t sub_1D5350990()
{
  result = qword_1EC7F4880;
  if (!qword_1EC7F4880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4888, &qword_1D5655C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4880);
  }

  return result;
}

unint64_t sub_1D53509F8()
{
  result = qword_1EC7F4890;
  if (!qword_1EC7F4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4890);
  }

  return result;
}

_BYTE *_s6TargetOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5350B28()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5350BD4()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x6E6F697463616552, 0xE800000000000000);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v8, v9, v10, v11, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5350C9C()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_10_94();
  v8 = OUTLINED_FUNCTION_44_33();
  MEMORY[0x1DA6EAC70](v8, 0xED00006F65646956);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v9, v10, v11, v12, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5350D64()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](1835365449, 0xE400000000000000);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v8, v9, v10, v11, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5350E24()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_10_94();
  v8 = OUTLINED_FUNCTION_44_33();
  MEMORY[0x1DA6EAC70](v8, 0xED00006F69647541);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v9, v10, v11, v12, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5350EEC()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x766F4D636973754DLL, 0xEA00000000006569);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v8, v9, v10, v11, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5350FB8()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x726F62616C6C6F43, 0xEC000000726F7461);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v8, v9, v10, v11, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5351088()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17);
  MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D568BE00);
  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568BE30);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v8, v9, v10, v11, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5351168()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x6E6950636973754DLL, 0xE800000000000000);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v8, v9, v10, v11, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D5351230()
{
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_4_112();
  OUTLINED_FUNCTION_3_149(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_10_94();
  MEMORY[0x1DA6EAC70](0x646F736970455654, 0xE900000000000065);
  OUTLINED_FUNCTION_33_48();
  OUTLINED_FUNCTION_16_82();
  OUTLINED_FUNCTION_71();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_1_144();
  return OUTLINED_FUNCTION_6_108("Fatal error", v8, v9, v10, v11, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
}

uint64_t sub_1D53512E0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D535136C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D53513F8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5351484()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5351510()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D535159C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void, void), void *a5)
{
  v6 = v5;
  v60 = a3;
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v15 = a2;
  v67 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v61 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = sub_1D560E4F8();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D4E62628(v15);
  v71 = v6;
  v69 = v15;
  v66 = v11;
  v62 = v14;
  if (v26 || (v27 = OUTLINED_FUNCTION_32_48(), (v29 = v28(v27)) == 0))
  {
  }

  else
  {
    v69 = v29;
  }

  v30 = v67;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = AssociatedTypeWitness;
  v33 = swift_getAssociatedConformanceWitness();
  v72 = v30;
  v73 = v32;
  v63 = v33;
  v64 = AssociatedConformanceWitness;
  v74 = AssociatedConformanceWitness;
  v75 = v33;
  type metadata accessor for LibraryRequestConfigurationParameters(0, &v72);
  (*(v22 + 16))(v25, v60, v20);
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = v71;
  v35 = sub_1D50B8CD8(v25, sub_1D5355374, v34);
  v36 = OUTLINED_FUNCTION_32_48();
  v37(v36);
  v38 = *(*v35 + qword_1EDD76EF0 + 32);
  OUTLINED_FUNCTION_51_32();
  (*(v61 + 40))(&v35[v38], v19, v30);
  swift_endAccess();
  v39 = v62;
  v40 = OUTLINED_FUNCTION_32_48();
  v41(v40);
  v42 = *(*v35 + qword_1EDD76EF0 + 40);
  OUTLINED_FUNCTION_51_32();
  v43 = *(v66 + 5);
  v66 = v35;
  v43(&v35[v42], v39, v32);
  swift_endAccess();
  result = sub_1D4E62628(v70);
  v65 = a4;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v45 = 0;
    v61 = a5[8];
    v62 = a5 + 8;
    v60 = v70 & 0xC000000000000001;
    do
    {
      v46 = result;
      if (v60)
      {
        v47 = MEMORY[0x1DA6EB9B0](v45, v70);
      }

      else
      {
        v47 = *(v70 + 8 * v45 + 32);
      }

      ++v45;
      v48 = v65;
      v78 = (v61)(v65, a5);
      MEMORY[0x1EEE9AC00](v78);
      *(&v59 - 4) = v48;
      *(&v59 - 3) = a5;
      v50 = v66;
      v49 = v67;
      *(&v59 - 2) = v47;
      *(&v59 - 1) = v50;
      v51 = a5[2];
      v72 = v48;
      v73 = v49;
      v74 = AssociatedTypeWitness;
      v75 = v51;
      v76 = v64;
      v77 = v63;
      sub_1D5612EE8();
      sub_1D56152D8();
      OUTLINED_FUNCTION_0_1();
      swift_getWitnessTable();
      sub_1D5615098();

      result = v46;
    }

    while (v46 != v45);
  }

  v72 = MEMORY[0x1E69E7CC0];
  v52 = v69;
  result = sub_1D4E62628(v69);
  if (!result)
  {
LABEL_19:

    v58 = v66;

    sub_1D5613418();

    return v58;
  }

  if (result >= 1)
  {
    v53 = 0;
    v70 = a5;
    v67 = a5[9];
    AssociatedTypeWitness = a5 + 9;
    v64 = v52 & 0xC000000000000001;
    v54 = v65;
    do
    {
      v55 = result;
      if (v64)
      {
        v56 = MEMORY[0x1DA6EB9B0](v53, v52);
      }

      else
      {
        v56 = *(v52 + 8 * v53 + 32);
      }

      v57 = v70;
      ++v53;
      v78 = v67(v54, v70);
      MEMORY[0x1EEE9AC00](v78);
      *(&v59 - 4) = v54;
      *(&v59 - 3) = v57;
      *(&v59 - 2) = v56;
      *(&v59 - 1) = &v72;
      sub_1D5612D78();
      sub_1D56152D8();
      OUTLINED_FUNCTION_0_1();
      swift_getWitnessTable();
      sub_1D5615098();

      result = v55;
      v52 = v69;
    }

    while (v55 != v53);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D5351C78()
{
  OUTLINED_FUNCTION_80();
  v1[57] = v22;
  v1[58] = v0;
  v1[55] = v20;
  v1[56] = v21;
  v1[53] = v18;
  v1[54] = v19;
  v1[51] = v2;
  v1[52] = v3;
  v1[49] = v4;
  v1[50] = v5;
  v1[47] = v6;
  v1[48] = v7;
  v1[45] = v8;
  v1[46] = v9;
  OUTLINED_FUNCTION_1_0();
  v1[59] = v10;
  v1[60] = OUTLINED_FUNCTION_167();
  v1[61] = swift_task_alloc();
  v11 = sub_1D5613288();
  v1[62] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[63] = v12;
  v1[64] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5351DB4()
{
  OUTLINED_FUNCTION_91();
  __swift_project_boxed_opaque_existential_1(*(v0 + 368), *(*(v0 + 368) + 24));
  sub_1D5612B18();
  *(v0 + 520) = sub_1D560D0C8();
  *(v0 + 528) = sub_1D560CDE8();
  OUTLINED_FUNCTION_102();
  *(v0 + 536) = sub_1D5615D38();
  OUTLINED_FUNCTION_102();
  *(v0 + 544) = sub_1D5615D38();
  OUTLINED_FUNCTION_102();
  *(v0 + 552) = sub_1D5615D38();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 560) = v1;
  *v1 = v2;
  v1[1] = sub_1D5351EFC;

  return sub_1D5352D64();
}

uint64_t sub_1D5351EFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D5352018()
{
  v47 = (v0 + 16);
  OUTLINED_FUNCTION_17_75();
  v1 = sub_1D5615D38();
  v2 = sub_1D5613268();
  sub_1D4EF3050(v2);
  OUTLINED_FUNCTION_17_75();
  v3 = sub_1D5615D38();
  sub_1D4EF3050(v3);
  v4 = v1;
  v5 = sub_1D4E62628(v1);
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      __break(1u);
LABEL_22:
      MEMORY[0x1EEDD1548](v5);
      return;
    }

    v7 = 0;
    v8 = (*(v0 + 472) + 8);
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6EB9B0](v7, v4);
      }

      else
      {
      }

      v9 = *(v0 + 488);
      ++v7;
      v10 = *(v0 + 432);
      sub_1D5613258();
      sub_1D5612B18();
      (*v8)(v9, v10);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_1D5612218();
      __swift_mutable_project_boxed_opaque_existential_1(v47, *(v0 + 40));
      sub_1D5612228();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    while (v6 != v7);
  }

  *(v0 + 336) = sub_1D56151C8();
  v11 = sub_1D5613278();
  v12 = sub_1D4E62628(v11);

  if (v12)
  {
    v13 = *(v0 + 512);
    v14 = *(v0 + 464);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
    v15 = swift_task_alloc();
    *(v0 + 576) = v15;
    v16 = *(v0 + 448);
    v17 = *(v0 + 416);
    *(v15 + 16) = *(v0 + 432);
    *(v15 + 32) = v16;
    *(v15 + 48) = v13;
    *(v15 + 56) = v14;
    *(v15 + 64) = v17;
    *(v15 + 80) = v47;
    *(v15 + 88) = v0 + 336;
    v18 = swift_task_alloc();
    *(v0 + 584) = v18;
    *v18 = v0;
    v18[1] = sub_1D535259C;
    OUTLINED_FUNCTION_41_43();

    MEMORY[0x1EEE6DD58](v19, v20, v21, v22, v23, v24, v25, v26);
    return;
  }

  v27 = *(v0 + 472);
  v28 = *(v0 + 480);
  v29 = *(v0 + 464);
  v30 = *(v0 + 432);
  v31 = *(v0 + 376);
  v32 = *(v0 + 384);
  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(v47, v33);
  *(v0 + 160) = v33;
  *(v0 + 168) = *(v34 + 8);
  __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_24_0();
  (*(v35 + 16))();
  *(v0 + 120) = v31;
  *(v0 + 128) = v32;
  __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  sub_1D56131E8();
  (*(v27 + 16))(v28, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_44();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 608) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_12_80(v36);
    OUTLINED_FUNCTION_41_43();

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_37_38();
  sub_1D4E7661C(v0 + 216, &qword_1EC7F48A0, &unk_1D5655E60);
  v39 = *(v0 + 336);
  *(v0 + 344) = v39;
  sub_1D56152D8();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  if (sub_1D5615678())
  {
    v40 = *(v0 + 504);
    v41 = *(v0 + 512);
    v42 = *(v0 + 496);
    sub_1D4E48324((v0 + 96), *(v0 + 360));

    (*(v40 + 8))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v47);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_41_43();

    v43();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D568BE50);
    *(v0 + 352) = v39;
    OUTLINED_FUNCTION_20_74();
    swift_getWitnessTable();
    sub_1D5616148();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_6_108("Fatal error", v45, v46, 0, 0xE000000000000000, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
    OUTLINED_FUNCTION_41_43();
  }
}

uint64_t sub_1D535259C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 592) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53526A0()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[20] = v3;
  v0[21] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  OUTLINED_FUNCTION_24_0();
  (*(v5 + 16))();
  v0[15] = v1;
  v0[16] = v2;
  __swift_allocate_boxed_opaque_existential_0(v0 + 12);
  sub_1D56131E8();
  OUTLINED_FUNCTION_17_75();
  v6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_44();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[76] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_12_80(v7);

    return MEMORY[0x1EEDD1548](v9);
  }

  else
  {
    OUTLINED_FUNCTION_37_38();
    sub_1D4E7661C((v0 + 27), &qword_1EC7F48A0, &unk_1D5655E60);
    v10 = v0[42];
    v0[43] = v10;
    sub_1D56152D8();
    OUTLINED_FUNCTION_1_11();
    swift_getWitnessTable();
    if (sub_1D5615678())
    {
      OUTLINED_FUNCTION_50_31();

      v11 = OUTLINED_FUNCTION_222();
      v12(v11);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      OUTLINED_FUNCTION_22_1();

      return v13();
    }

    else
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D568BE50);
      v0[44] = v10;
      OUTLINED_FUNCTION_20_74();
      swift_getWitnessTable();
      sub_1D5616148();
      OUTLINED_FUNCTION_33_0();
      return OUTLINED_FUNCTION_6_108("Fatal error", v14, v15, 0, 0xE000000000000000, "MusicKitInternal/LegacyModelLibraryRequestable+SoftLinking.swift");
    }
  }
}

uint64_t sub_1D5352988()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 616) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5352A84()
{
  OUTLINED_FUNCTION_91();
  if (*(v0 + 320))
  {
    sub_1D4E48324((v0 + 296), v0 + 256);
  }

  else
  {
    sub_1D4E628D4(v0 + 96, v0 + 256);
    if (*(v0 + 320))
    {
      sub_1D4E7661C(v0 + 296, &qword_1EC7F4008, &qword_1D5651CC8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_1D4E48324((v0 + 256), v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  OUTLINED_FUNCTION_50_31();

  v1 = OUTLINED_FUNCTION_128();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D5352B8C()
{
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_35_52();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5352C1C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_35_52();

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5352CBC()
{
  OUTLINED_FUNCTION_80();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = OUTLINED_FUNCTION_128();
  v2(v1);
  OUTLINED_FUNCTION_35_52();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D5352D64()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[29] = v4;
  v1[30] = v0;
  v1[27] = v5;
  v1[28] = v2;
  v1[25] = v6;
  v1[26] = v7;
  v1[23] = v8;
  v1[24] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F48A8, qword_1D5655E80);
  v1[31] = OUTLINED_FUNCTION_167();
  v1[32] = swift_task_alloc();
  v1[33] = *(v3 - 8);
  v1[34] = OUTLINED_FUNCTION_167();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v10 = sub_1D5613528();
  v1[39] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[40] = v11;
  v1[41] = OUTLINED_FUNCTION_167();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4030, &qword_1D5651D08);
  v1[48] = swift_task_alloc();
  v12 = sub_1D5613158();
  v1[49] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[50] = v13;
  v1[51] = OUTLINED_FUNCTION_167();
  v1[52] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D5352FA8()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + 176);
  v3 = sub_1D4E62628(*(v0 + 200));
  if (v3)
  {
    v10 = v3;
    if (v3 >= 1)
    {
      v11 = 0;
      v117 = (v0 + 16);
      v129 = (v0 + 56);
      v12 = *(v0 + 232);
      v115 = (v12 + 112);
      v134 = *(v12 + 120);
      v13 = *(v0 + 200);
      v131 = v13 & 0xC000000000000001;
      v111 = v13 + 32;
      v14 = *(v0 + 400);
      v114 = (v14 + 32);
      v110 = (v14 + 16);
      v112 = *(v0 + 320);
      v113 = (v14 + 8);
      v122 = (v112 + 32);
      v124 = v3;
      v127 = (*(v0 + 264) + 16);
      v119 = v1;
      while (1)
      {
        if (v131)
        {
          v15 = MEMORY[0x1DA6EB9B0](v11, *(v0 + 200));
        }

        else
        {
          v15 = *(v111 + 8 * v11);
        }

        v16 = *(v0 + 384);
        v17 = *(v0 + 392);
        v134(v15);
        if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
        {
          sub_1D4E7661C(*(v0 + 384), &qword_1EC7F4030, &qword_1D5651D08);
        }

        else
        {
          v18 = *(v0 + 224);
          v19 = *(v0 + 232);
          (*v114)(*(v0 + 416), *(v0 + 384), *(v0 + 392));
          (*v115)(v15, v18, v19);
          if (v20)
          {
            (*v110)(*(v0 + 408), *(v0 + 416), *(v0 + 392));

            sub_1D5613508();
            OUTLINED_FUNCTION_17_75();
            v21 = v1;
            v22();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_13();
              sub_1D4EFFC34();
              v21 = v47;
            }

            v24 = *(v21 + 16);
            v23 = *(v21 + 24);
            if (v24 >= v23 >> 1)
            {
              OUTLINED_FUNCTION_93_1(v23);
              sub_1D4EFFC34();
              v21 = v48;
            }

            v26 = *(v0 + 368);
            v25 = *(v0 + 376);
            v27 = *(v0 + 312);

            (*(v112 + 8))(v25, v27);
            v28 = OUTLINED_FUNCTION_128();
            v29(v28);
            v1 = v21;
            *(v21 + 16) = v24 + 1;
            OUTLINED_FUNCTION_34_50();
            (*(v112 + 32))(v21 + v30 + *(v112 + 72) * v24, v26, v27);
            goto LABEL_28;
          }

          (*v113)(*(v0 + 416), *(v0 + 392));
        }

        (*v127)(*(v0 + 304), *(v0 + 240), *(v0 + 224));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
        OUTLINED_FUNCTION_102();
        if ((swift_dynamicCast() & 1) == 0)
        {
          *(v0 + 88) = 0;
          *v129 = 0u;
          *(v0 + 72) = 0u;
          sub_1D4E7661C(v129, &qword_1EC7F48A0, &unk_1D5655E60);
          goto LABEL_20;
        }

        v31 = v1;
        v32 = *(v0 + 312);
        v33 = *(v0 + 256);
        sub_1D4E48324(v129, v117);
        __swift_project_boxed_opaque_existential_1(v117, *(v0 + 40));
        sub_1D5613228();
        if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
        {
          sub_1D4E7661C(*(v0 + 256), &qword_1EC7F48A8, qword_1D5655E80);
          __swift_destroy_boxed_opaque_existential_1(v117);
          v1 = v31;
          v10 = v124;
          v2 = (v0 + 176);
LABEL_20:

          MEMORY[0x1DA6EAF30](v34);
          v35 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35 >> 1)
          {
            OUTLINED_FUNCTION_93_1(v35);
            sub_1D56151B8();
          }

          sub_1D56151F8();

          v119 = *v2;
          goto LABEL_29;
        }

        v36 = *v122;
        (*v122)(*(v0 + 360), *(v0 + 256), *(v0 + 312));
        v37 = OUTLINED_FUNCTION_71();
        v38(v37);
        v39 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFFC34();
          v39 = v49;
        }

        v41 = *(v39 + 16);
        v40 = *(v39 + 24);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v40);
          sub_1D4EFFC34();
          v39 = v50;
        }

        v43 = *(v0 + 352);
        v42 = *(v0 + 360);
        v44 = *(v0 + 312);

        (*(v112 + 8))(v42, v44);
        *(v39 + 16) = v41 + 1;
        OUTLINED_FUNCTION_34_50();
        v46 = v43;
        v1 = v39;
        v36(v39 + v45 + *(v112 + 72) * v41, v46, v44);
        __swift_destroy_boxed_opaque_existential_1(v117);
LABEL_28:
        v10 = v124;
        v2 = (v0 + 176);
LABEL_29:
        if (v10 == ++v11)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
    goto LABEL_79;
  }

  v119 = v1;
LABEL_32:
  *(v0 + 424) = v119;
  *(v0 + 432) = v119;
  v3 = sub_1D4E62628(*(v0 + 192));
  v128 = v1;
  if (v3)
  {
    v123 = v3;
    if (v3 < 1)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v51 = 0;
    v52 = v2 - 10;
    v53 = (v2 - 5);
    v135 = *(*(v0 + 232) + 112);
    v54 = *(v0 + 192);
    v132 = v54 & 0xC000000000000001;
    v125 = (*(v0 + 264) + 16);
    v126 = v54 + 32;
    v120 = (*(v0 + 320) + 32);
    v55 = MEMORY[0x1E69E7CC0];
    v116 = *(v0 + 320);
    v56 = v3;
    v130 = v52;
    v121 = v53;
    do
    {
      if (v132)
      {
        v57 = MEMORY[0x1DA6EB9B0](v51, *(v0 + 192));
      }

      else
      {
        v57 = *(v126 + 8 * v51);
      }

      v58 = v135(v57);
      if (v59)
      {
        v60 = v58;
        v61 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFF8E4();
          v55 = v80;
        }

        v63 = *(v55 + 16);
        v62 = *(v55 + 24);
        if (v63 >= v62 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v62);
          sub_1D4EFF8E4();
          v55 = v81;
        }

        *(v55 + 16) = v63 + 1;
        v64 = v55 + 16 * v63;
        *(v64 + 32) = v60;
        *(v64 + 40) = v61;
        v52 = v130;
      }

      else
      {
        (*v125)(*(v0 + 296), *(v0 + 240), *(v0 + 224));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4898, &qword_1D5655E58);
        OUTLINED_FUNCTION_102();
        if (swift_dynamicCast())
        {
          v65 = *(v0 + 312);
          v66 = v53;
          v67 = v52;
          v68 = *(v0 + 248);
          sub_1D4E48324(v66, v67);
          __swift_project_boxed_opaque_existential_1(v67, *(v0 + 120));
          sub_1D5613228();
          if (__swift_getEnumTagSinglePayload(v68, 1, v65) == 1)
          {
            v69 = *(v0 + 248);

            sub_1D4E7661C(v69, &qword_1EC7F48A8, qword_1D5655E80);
            __swift_destroy_boxed_opaque_existential_1(v67);
            v52 = v67;
            v53 = v121;
            v56 = v123;
          }

          else
          {
            v70 = *v120;
            (*v120)(*(v0 + 344), *(v0 + 248), *(v0 + 312));
            v71 = OUTLINED_FUNCTION_71();
            v72(v71);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_13();
              sub_1D4EFFC34();
              v128 = v82;
            }

            v53 = v121;
            v74 = *(v128 + 16);
            v73 = *(v128 + 24);
            v118 = v70;
            if (v74 >= v73 >> 1)
            {
              OUTLINED_FUNCTION_93_1(v73);
              sub_1D4EFFC34();
              v128 = v83;
            }

            v76 = *(v0 + 336);
            v75 = *(v0 + 344);
            v77 = *(v0 + 312);

            (*(v116 + 8))(v75, v77);
            *(v128 + 16) = v74 + 1;
            OUTLINED_FUNCTION_34_50();
            v118(v79 + v78 + *(v116 + 72) * v74, v76, v77);
            v52 = v130;
            __swift_destroy_boxed_opaque_existential_1(v130);
            v56 = v123;
          }
        }

        else
        {

          *(v53 + 32) = 0;
          *v53 = 0u;
          *(v53 + 16) = 0u;
          sub_1D4E7661C(v53, &qword_1EC7F48A0, &unk_1D5655E60);
        }
      }

      ++v51;
    }

    while (v56 != v51);
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 440) = v128;
  v3 = sub_1D4E62628(*(v0 + 208));
  if (v3)
  {
    v84 = v3;
    if (v3 < 1)
    {
LABEL_80:
      __break(1u);
      return MEMORY[0x1EEDCEAA8](v3, v4, v5, v6, v7, v8, v9);
    }

    v85 = 0;
    v86 = *(v0 + 208);
    v136 = v86 & 0xC000000000000001;
    v137 = *(*(v0 + 232) + 112);
    v133 = v86 + 32;
    do
    {
      if (v136)
      {
        v87 = MEMORY[0x1DA6EB9B0](v85, *(v0 + 208));
      }

      else
      {
        v87 = *(v133 + 8 * v85);
      }

      v88 = v137(v87);
      if (v89)
      {
        v90 = v88;
        v91 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFF8E4();
          v55 = v95;
        }

        v93 = *(v55 + 16);
        v92 = *(v55 + 24);
        if (v93 >= v92 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v92);
          sub_1D4EFF8E4();
          v55 = v96;
        }

        *(v55 + 16) = v93 + 1;
        v94 = v55 + 16 * v93;
        *(v94 + 32) = v90;
        *(v94 + 40) = v91;
      }

      else
      {
      }

      ++v85;
    }

    while (v84 != v85);
  }

  *(v0 + 448) = v55;
  v97 = *(v0 + 288);
  v98 = *(v0 + 264);
  v99 = *(v0 + 240);
  v100 = *(v0 + 224);
  v101 = *(v98 + 16);
  *(v0 + 456) = v101;
  *(v0 + 464) = (v98 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v101(v97, v99, v100);
  if (*(v55 + 16) || *(v128 + 16))
  {
    v102 = *(v0 + 232);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 472) = v103;
    v9 = *(v102 + 16);
    *v103 = v104;
    v103[1] = sub_1D5353C38;
    v3 = *(v0 + 280);
    v4 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v5 = v55;
    v6 = v128;

    return MEMORY[0x1EEDCEAA8](v3, v4, v5, v6, v7, v8, v9);
  }

  v105 = *(v0 + 288);
  v106 = *(v0 + 264);
  v107 = *(v0 + 224);
  (*(v0 + 456))(*(v0 + 272), v105, v107);
  sub_1D5613248();
  (*(v106 + 8))(v105, v107);

  OUTLINED_FUNCTION_22_1();

  return v108();
}

uint64_t sub_1D5353C38()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 480) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5353D48()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = OUTLINED_FUNCTION_222();
  v7(v6);
  (*(v4 + 32))(v3, v2, v5);
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = *(v0 + 440);
    v10 = *(v0 + 320);
    sub_1D5615CB8();
    v13 = *(v10 + 16);
    v11 = v10 + 16;
    v12 = v13;
    v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v16 = *(v0 + 328);
      v17 = *(v0 + 312);
      v18 = OUTLINED_FUNCTION_222();
      v12(v18);
      sub_1D5613518();
      (*(v11 - 8))(v16, v17);
      sub_1D5615C88();
      sub_1D5615CC8();
      sub_1D5615CD8();
      sub_1D5615C98();
      v14 += v15;
      --v8;
    }

    while (v8);
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 264);
  v21 = *(v0 + 224);
  (*(v0 + 456))(*(v0 + 272), v19, v21);
  sub_1D5613248();
  (*(v20 + 8))(v19, v21);

  OUTLINED_FUNCTION_22_1();

  return v22();
}

uint64_t sub_1D5354000()
{
  (*(v0[33] + 8))(v0[36], v0[28]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_41_43();

  return v1();
}

uint64_t sub_1D5354154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = v17;
  *(v8 + 312) = v16;
  *(v8 + 296) = a8;
  *(v8 + 304) = v15;
  *(v8 + 280) = a6;
  *(v8 + 288) = a7;
  *(v8 + 264) = a4;
  *(v8 + 272) = a5;
  *(v8 + 248) = a2;
  *(v8 + 256) = a3;
  v9 = sub_1D560CBA8();
  *(v8 + 336) = v9;
  v10 = *(v9 - 8);
  *(v8 + 344) = v10;
  *(v8 + 352) = *(v10 + 64);
  *(v8 + 360) = swift_task_alloc();
  v11 = *(v15 - 8);
  *(v8 + 368) = v11;
  *(v8 + 376) = *(v11 + 64);
  *(v8 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4038, &qword_1D5651DD8);
  *(v8 + 408) = v12;
  *(v8 + 416) = *(v12 - 8);
  *(v8 + 424) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5354348, 0, 0);
}

uint64_t sub_1D5354348()
{
  sub_1D5613288();
  v30 = sub_1D5613278();
  v1 = sub_1D4E62628(v30);
  v29 = v1;
  if (v1)
  {
    if (v1 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DAD8](v1);
    }

    v2 = 0;
    v28 = *(v0 + 368);
    v26 = *(v0 + 376) + 7;
    v25 = *(v0 + 352) + 7;
    v27 = *(v0 + 344);
    v24 = **(v0 + 248);
    do
    {
      v39 = v2;
      if ((v30 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1DA6EB9B0](v2, v30);
      }

      else
      {
        v38 = *(v30 + 8 * v2 + 32);
      }

      v3 = *(v0 + 400);
      v37 = *(v0 + 392);
      v4 = *(v0 + 384);
      v5 = *(v0 + 360);
      v32 = v5;
      v6 = *(v0 + 336);
      v31 = v6;
      v7 = *(v0 + 272);
      v36 = *(v0 + 280);
      v8 = *(v0 + 264);
      v33 = sub_1D5615458();
      v34 = *(v0 + 304);
      v35 = *(v0 + 320);
      v9 = *(v0 + 304);
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v33);
      (*(v28 + 16))(v4, v8, v9);
      (*(v27 + 16))(v5, v7, v6);
      v10 = (*(v28 + 80) + 64) & ~*(v28 + 80);
      v11 = (v26 + v10) & 0xFFFFFFFFFFFFFFF8;
      v12 = (*(v27 + 80) + v11 + 8) & ~*(v27 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = v34;
      *(v13 + 48) = v35;
      (*(v28 + 32))(v13 + v10, v4, v9);
      *(v13 + v11) = v38;
      (*(v27 + 32))(v13 + v12, v32, v31);
      *(v13 + ((v25 + v12) & 0xFFFFFFFFFFFFFFF8)) = v36;
      sub_1D5155C5C(v3, v37);
      LODWORD(v3) = __swift_getEnumTagSinglePayload(v37, 1, v33);

      v14 = *(v0 + 392);
      if (v3 == 1)
      {
        sub_1D4E7661C(*(v0 + 392), &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        OUTLINED_FUNCTION_24_0();
        (*(v15 + 8))(v14, v33);
      }

      if (*(v13 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_1D5615338();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
      v19 = v18 | v16;
      if (v18 | v16)
      {
        v19 = v0 + 144;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = v16;
        *(v0 + 168) = v18;
      }

      ++v2;
      v20 = *(v0 + 400);
      *(v0 + 208) = 1;
      *(v0 + 216) = v19;
      *(v0 + 224) = v24;
      swift_task_create();

      sub_1D4E7661C(v20, &qword_1EC7EB710, &qword_1D561F440);
    }

    while (v29 != v39 + 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_128();
  sub_1D5615508();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 432) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_15_79(v21);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DAD8](v1);
}

uint64_t sub_1D5354804()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5354900()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  if (*(v0 + 16))
  {
    *(v0 + 136) = *(v0 + 56);
    *(v0 + 120) = *(v0 + 40);
    *(v0 + 104) = *(v0 + 24);
    if (*(v0 + 128))
    {
      v1 = *(v0 + 288);
      sub_1D4E48324((v0 + 104), v0 + 64);
      v2 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
      *(v0 + 200) = v2;
      __swift_allocate_boxed_opaque_existential_0((v0 + 176));
      OUTLINED_FUNCTION_24_0();
      (*(v3 + 16))();
      __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
      sub_1D5612228();
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    }

    else
    {
      sub_1D4E7661C(v0 + 104, &qword_1EC7F0900, &qword_1D563A1B0);
      sub_1D560D0C8();
      OUTLINED_FUNCTION_222();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        *(v0 + 240) = v15;
        sub_1D56152D8();
        sub_1D5615218();
      }

      else
      {
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 432) = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_15_79(v16);
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DAD8](v18);
  }

  else
  {
    v4 = *(v0 + 424);
    OUTLINED_FUNCTION_49_31();
    v5(v4);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1D5354B1C()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 424);
  OUTLINED_FUNCTION_49_31();
  v2(v1);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D5354BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a1;
  v8[8] = a5;
  v15 = (*(v17 + 128) + **(v17 + 128));
  v13 = swift_task_alloc();
  v8[9] = v13;
  *v13 = v8;
  v13[1] = sub_1D5354D18;

  return v15(v8 + 2, a5, a6, a7, a8);
}

uint64_t sub_1D5354D18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5354E14()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 56);
  *v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 48);
  *(v1 + 24) = v3;
  *(v1 + 8) = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D5354E94()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5354F20()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5354FAC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_142();
  v0 = OUTLINED_FUNCTION_338();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_189(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t (*sub_1D5355038(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1D4EFE858(a3);
  sub_1D4F0B2FC();
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1DA6EB9B0](a2, a3);
  }

  *a1 = v7;
  return sub_1D53550C4;
}