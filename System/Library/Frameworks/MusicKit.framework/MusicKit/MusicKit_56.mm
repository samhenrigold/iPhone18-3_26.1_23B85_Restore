uint64_t sub_2176AC620(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_217753058()) && *(a1 + 16) == *(a2 + 16) && (a1[3] == *(a2 + 24) ? (v5 = a1[4] == *(a2 + 32)) : (v5 = 0), (v5 || (sub_217753058()) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0))
  {
    v6 = *(a1 + 41) ^ *(a2 + 41) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2176AC6C4(uint64_t a1)
{
  sub_217751FF8();
  MEMORY[0x21CEA3550](*(v1 + 16));
  sub_217751FF8();
  sub_217753208();
  return MEMORY[0x21CEA3550](*(v1 + 41));
}

uint64_t sub_2176AC718()
{
  sub_2177531E8();
  sub_217751FF8();
  MEMORY[0x21CEA3550](*(v0 + 16));
  sub_217751FF8();
  sub_217753208();
  MEMORY[0x21CEA3550](*(v0 + 41));
  return sub_217753238();
}

void *sub_2176AC794@<X0>(void *a1@<X8>)
{
  result = sub_2176AC608();
  *a1 = result;
  return result;
}

uint64_t sub_2176AC7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

void *sub_2176AC808@<X0>(void *a1@<X8>)
{
  result = sub_2176AC614();
  *a1 = result;
  return result;
}

uint64_t sub_2176AC830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176AC87C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return sub_2176AC620(&v5, &v7) & 1;
}

uint64_t sub_2176AC940(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6[0] = v2;
  *(v6 + 10) = *(v1 + 26);
  sub_2177531E8();
  sub_2176AC6C4(v4);
  return sub_217753238();
}

unint64_t sub_2176AC990()
{
  v1 = v0;
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v1, *(v1 + 1), v2);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177B4F80);

  BYTE8(v10) = 0;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000017, 0x80000002177B4FA0);
  *&v10 = v0[16];
  sub_217752C78();
  MEMORY[0x21CEA23B0](*(&v10 + 1), 0xE000000000000000);

  sub_217752AA8();

  MEMORY[0x21CEA23B0](*(v1 + 3), *(v1 + 4), v3);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177B4FC0);

  sub_217752AA8();

  if (v0[40])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[40])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v5, v6, v4);

  MEMORY[0x21CEA23B0](0xD00000000000001ALL, 0x80000002177B4FE0, v7);

  BYTE8(v11) = 0;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177B5000);
  *&v11 = v0[41];
  sub_217752C78();
  MEMORY[0x21CEA23B0](*(&v11 + 1), 0xE000000000000000);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v8);
  return 0xD00000000000001ELL;
}

double sub_2176ACC80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2176ACCC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

_BYTE *sub_2176ACD34(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2176ACE1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_2176ACE5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2176ACEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C828;
  if (!qword_27CB2C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C828);
  }

  return result;
}

unint64_t sub_2176ACF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C830;
  if (!qword_27CB2C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C830);
  }

  return result;
}

unint64_t sub_2176ACF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C848;
  if (!qword_27CB2C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C848);
  }

  return result;
}

unint64_t sub_2176AD024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C860;
  if (!qword_27CB2C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C860);
  }

  return result;
}

unint64_t sub_2176AD0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C878;
  if (!qword_27CB2C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C878);
  }

  return result;
}

unint64_t sub_2176AD100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5438;
  if (!qword_280BE5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5438);
  }

  return result;
}

unint64_t sub_2176AD154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5440;
  if (!qword_280BE5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5440);
  }

  return result;
}

unint64_t sub_2176AD210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C890;
  if (!qword_27CB2C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C890);
  }

  return result;
}

unint64_t sub_2176AD264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5420;
  if (!qword_280BE5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5420);
  }

  return result;
}

_BYTE *sub_2176AD2B8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2176AD3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C898;
  if (!qword_27CB2C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C898);
  }

  return result;
}

unint64_t sub_2176AD3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C8A0;
  if (!qword_27CB2C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C8A0);
  }

  return result;
}

unint64_t sub_2176AD450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5428;
  if (!qword_280BE5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5428);
  }

  return result;
}

unint64_t sub_2176AD4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5430;
  if (!qword_280BE5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5430);
  }

  return result;
}

unint64_t sub_2176AD4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5458;
  if (!qword_280BE5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5458);
  }

  return result;
}

unint64_t sub_2176AD550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5418;
  if (!qword_280BE5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5418);
  }

  return result;
}

unint64_t sub_2176AD5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C8B8;
  if (!qword_27CB2C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C8B8);
  }

  return result;
}

uint64_t sub_2176AD5F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C58, &unk_2177677B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Storefront.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176AD744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C8C0;
  if (!qword_27CB2C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C8C0);
  }

  return result;
}

unint64_t sub_2176AD79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5448;
  if (!qword_280BE5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5448);
  }

  return result;
}

unint64_t sub_2176AD7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5450;
  if (!qword_280BE5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5450);
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.TopResult.id.getter(uint64_t a1)
{
  MusicLibrarySearchResponse.TopResult.innerItem.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return OUTLINED_FUNCTION_93();
}

double MusicLibrarySearchResponse.TopResult.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_2172843E8(v1, v7);
  v3 = off_27822AA48[v10];
  a1[3] = off_27822AA20[v10];
  a1[4] = v3;
  v4 = swift_allocObject();
  *a1 = v4;
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  return result;
}

void *MusicLibrarySearchResponse.TopResult.artwork.getter@<X0>(void *a1@<X8>)
{
  sub_2172843E8(v1, v40);
  switch(v42)
  {
    case 1:
      v38[0] = v40[0];
      v38[1] = v40[1];
      v38[2] = v40[2];
      v39 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
      swift_allocObject();
      *&v31 = MEMORY[0x277D84F90];
      *(&v31 + 1) = MEMORY[0x277D84F90];
      v28 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v31, MEMORY[0x277D84F90], qword_282959AF8);
      sub_2174C7A58(v28, __src);

      sub_217284498(v38);
      memcpy(__dst, __src, sizeof(__dst));
      break;
    case 2:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6B50 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA83C(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v33, v34, v35, v36, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283C08(__src);
      break;
    case 3:
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      Playlist.artwork.getter(v27);
      sub_21726B8C4(__src);
      break;
    case 4:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9708 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA860(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v33, v34, v35, v36, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283B58(__src);
      break;
    default:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9428 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA9A8(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v33, v34, v35, v36, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_21725CE44(__src);
      break;
  }

  return memcpy(a1, __dst, 0x221uLL);
}

uint64_t MusicLibrarySearchResponse.TopResult.title.getter()
{
  v1 = sub_2172843E8(v0, &v19);
  switch(v24)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE6898 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FF0();
      OUTLINED_FUNCTION_21_4();
      sub_217284498(&v11);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE6BC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4204();
      OUTLINED_FUNCTION_21_4();
      sub_217283C08(&v11);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14(v9);
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v11);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE9750 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A41AC();
      OUTLINED_FUNCTION_21_4();
      sub_217283B58(&v11);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE9470 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4380();
      OUTLINED_FUNCTION_21_4();
      sub_21725CE44(&v11);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicLibrarySearchResponse.TopResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2172843E8(a1, v91);
  v4 = sub_2172843E8(a2, &v92);
  switch(v91[56])
  {
    case 1:
      v59 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84);
      if (v93 != 1)
      {
        sub_217284498(&v85);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v59, v60, v61, v62, v63, v64, v65, v66, v78, v79, v80, v81, v82, v83, v84, v85);
      v69 = v30 && v67 == v68;
      if (v69 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v85, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v70 = OUTLINED_FUNCTION_13_4();
        v2(v70);
        OUTLINED_FUNCTION_9_3();
        sub_217284498(v71);
        if (a2)
        {
          sub_217284498(&v85);
          goto LABEL_48;
        }
      }

      else
      {
        sub_217284498(&v78);
      }

      sub_217284498(&v85);
      goto LABEL_59;
    case 2:
      v33 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84);
      if (v93 != 2)
      {
        sub_217283C08(&v85);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v33, v34, v35, v36, v37, v38, v39, v40, v78, v79, v80, v81, v82, v83, v84, v85);
      v43 = v30 && v41 == v42;
      if (v43 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v85, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v44 = OUTLINED_FUNCTION_13_4();
        v2(v44);
        OUTLINED_FUNCTION_9_3();
        sub_217283C08(v45);
        if (a2)
        {
          sub_217283C08(&v85);
          goto LABEL_48;
        }
      }

      else
      {
        sub_217283C08(&v78);
      }

      sub_217283C08(&v85);
      goto LABEL_59;
    case 3:
      v46 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84);
      if (v93 != 3)
      {
        sub_21726B8C4(&v85);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v46, v47, v48, v49, v50, v51, v52, v53, v78, v79, v80, v81, v82, v83, v84, v85);
      v56 = v30 && v54 == v55;
      if (v56 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v85, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v57 = OUTLINED_FUNCTION_13_4();
        v2(v57);
        OUTLINED_FUNCTION_9_3();
        sub_21726B8C4(v58);
        if (a2)
        {
          sub_21726B8C4(&v85);
          goto LABEL_48;
        }
      }

      else
      {
        sub_21726B8C4(&v78);
      }

      sub_21726B8C4(&v85);
      goto LABEL_59;
    case 4:
      v20 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84);
      if (v93 != 4)
      {
        sub_217283B58(&v85);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v78, v79, v80, v81, v82, v83, v84, v85);
      v30 = v30 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v85, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v31 = OUTLINED_FUNCTION_13_4();
        v2(v31);
        OUTLINED_FUNCTION_9_3();
        sub_217283B58(v32);
        if (a2)
        {
          sub_217283B58(&v85);
          goto LABEL_48;
        }
      }

      else
      {
        sub_217283B58(&v78);
      }

      sub_217283B58(&v85);
      goto LABEL_59;
    default:
      v12 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84);
      if (v93)
      {
        sub_21725CE44(&v85);
LABEL_40:
        sub_2176AEF8C(v91);
        return 0;
      }

      OUTLINED_FUNCTION_2_0(v12, v13, v14, v15, v16, v17, v18, v19, v78, v79, v80, v81, v82, v83, v84, v85);
      v74 = v30 && v72 == v73;
      if (!v74 && (sub_217753058() & 1) == 0)
      {
        sub_21725CE44(&v78);
LABEL_58:
        sub_21725CE44(&v85);
LABEL_59:
        sub_217284444(v91);
        return 0;
      }

      OUTLINED_FUNCTION_9_2(&v85, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v75 = OUTLINED_FUNCTION_13_4();
      v2(v75);
      OUTLINED_FUNCTION_9_3();
      sub_21725CE44(v76);
      if ((a2 & 1) == 0)
      {
        goto LABEL_58;
      }

      sub_21725CE44(&v85);
LABEL_48:
      sub_217284444(v91);
      return 1;
  }
}

uint64_t MusicLibrarySearchResponse.TopResult.hash(into:)()
{
  v1 = sub_2172843E8(v0, &v73);
  switch(v78)
  {
    case 1:
      v54 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
      v55 = MEMORY[0x21CEA3550](1, v54);
      OUTLINED_FUNCTION_66_13(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66);
      __swift_project_boxed_opaque_existential_1(&v67, v70);
      v63 = OUTLINED_FUNCTION_3_4();
      v64(v63);
      result = sub_217284498(&v65);
      break;
    case 2:
      v32 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
      v33 = MEMORY[0x21CEA3550](2, v32);
      OUTLINED_FUNCTION_66_13(v33, v34, v35, v36, v37, v38, v39, v40, v65, v66);
      __swift_project_boxed_opaque_existential_1(&v67, v70);
      v41 = OUTLINED_FUNCTION_3_4();
      v42(v41);
      result = sub_217283C08(&v65);
      break;
    case 3:
      v43 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
      v44 = MEMORY[0x21CEA3550](3, v43);
      OUTLINED_FUNCTION_66_13(v44, v45, v46, v47, v48, v49, v50, v51, v65, v66);
      __swift_project_boxed_opaque_existential_1(&v67, v70);
      v52 = OUTLINED_FUNCTION_3_4();
      v53(v52);
      result = sub_21726B8C4(&v65);
      break;
    case 4:
      v21 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
      v22 = MEMORY[0x21CEA3550](4, v21);
      OUTLINED_FUNCTION_66_13(v22, v23, v24, v25, v26, v27, v28, v29, v65, v66);
      __swift_project_boxed_opaque_existential_1(&v67, v70);
      v30 = OUTLINED_FUNCTION_3_4();
      v31(v30);
      result = sub_217283B58(&v65);
      break;
    default:
      v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
      v10 = MEMORY[0x21CEA3550](0, v9);
      OUTLINED_FUNCTION_66_13(v10, v11, v12, v13, v14, v15, v16, v17, v65, v66);
      __swift_project_boxed_opaque_existential_1(&v67, v70);
      v18 = OUTLINED_FUNCTION_3_4();
      v19(v18);
      result = sub_21725CE44(&v65);
      break;
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.TopResult.hashValue.getter()
{
  sub_2177531E8();
  MusicLibrarySearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176AE338(uint64_t a1)
{
  sub_2177531E8();
  MusicLibrarySearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176AE374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicLibrarySearchResponse.TopResult.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t MusicLibrarySearchResponse.TopResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_217752B38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2171FF30C(a1, &v19);
  MusicCatalogSearchResponse.TopResult.init(from:)(&v19);
  if (!v2)
  {
    sub_217283E1C(v24, &v19);
    v9 = v23;
    switch(v23)
    {
      case 2:
      case 5:
      case 6:
      case 8:
        sub_217283E78(&v19);
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_217753298();
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B5080);
        v10 = MusicCatalogSearchResponse.TopResult.description.getter();
        MEMORY[0x21CEA23B0](v10);

        MEMORY[0x21CEA23B0](46, 0xE100000000000000, v11);
        sub_217752B08();
        v12 = sub_217752B48();
        swift_allocError();
        v14 = v13;
        (*(v6 + 16))(v13, v8, v5);
        (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        sub_217283E78(v24);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 3:
        v9 = 2;
        goto LABEL_7;
      case 4:
        v9 = 3;
        goto LABEL_7;
      case 7:
        v9 = 4;
        goto LABEL_7;
      default:
LABEL_7:
        sub_217283E78(v24);
        v15 = v22;
        v28 = v22;
        v17 = v20;
        v16 = v21;
        v26 = v20;
        v27 = v21;
        v25 = v19;
        *a2 = v19;
        *(a2 + 16) = v17;
        *(a2 + 32) = v16;
        *(a2 + 48) = v15;
        *(a2 + 56) = v9;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicLibrarySearchResponse.TopResult.encode(to:)(uint64_t a1)
{
  sub_2172843E8(v1, v4);
  v7[0] = v4[0];
  v7[1] = v4[1];
  v7[2] = v4[2];
  v8 = v5;
  v9 = 0x704030100uLL >> (8 * v6);
  sub_2172EF62C(a1);
  return sub_217283E78(v7);
}

uint64_t MusicLibrarySearchResponse.TopResult.description.getter()
{
  sub_2172843E8(v0, &v25);
  switch(v30)
  {
    case 1:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      Artist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217284498(v13);
      break;
    case 2:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      MusicVideo.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283C08(v11);
      break;
    case 3:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      Playlist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21726B8C4(v12);
      break;
    case 4:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      Song.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283B58(v10);
      break;
    default:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      Album.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21725CE44(v9);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrarySearchResponse.TopResult.debugDescription.getter()
{
  sub_2172843E8(v0, v95);
  switch(v95[56])
  {
    case 1:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      v65 = Artist.debugDescription.getter();
      v73 = OUTLINED_FUNCTION_7_51(v65, v66, v67, v68, v69, v70, v71, v72, v82, v88);
      OUTLINED_FUNCTION_6_2(v73, v74, v75, v76, v77, v78, MEMORY[0x277D837D0], v79, v87, v93, v94);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217284498(v80);
      break;
    case 2:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      v33 = MusicVideo.debugDescription.getter();
      v41 = OUTLINED_FUNCTION_7_51(v33, v34, v35, v36, v37, v38, v39, v40, v82, v88);
      OUTLINED_FUNCTION_6_2(v41, v42, v43, v44, v45, v46, MEMORY[0x277D837D0], v47, v85, v91, v94);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283C08(v48);
      break;
    case 3:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      v49 = Playlist.debugDescription.getter();
      v57 = OUTLINED_FUNCTION_7_51(v49, v50, v51, v52, v53, v54, v55, v56, v82, v88);
      OUTLINED_FUNCTION_6_2(v57, v58, v59, v60, v61, v62, MEMORY[0x277D837D0], v63, v86, v92, v94);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21726B8C4(v64);
      break;
    case 4:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      v17 = Song.debugDescription.getter();
      v25 = OUTLINED_FUNCTION_7_51(v17, v18, v19, v20, v21, v22, v23, v24, v82, v88);
      OUTLINED_FUNCTION_6_2(v25, v26, v27, v28, v29, v30, MEMORY[0x277D837D0], v31, v84, v90, v94);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283B58(v32);
      break;
    default:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      v1 = Album.debugDescription.getter();
      v9 = OUTLINED_FUNCTION_7_51(v1, v2, v3, v4, v5, v6, v7, v8, v82, v88);
      OUTLINED_FUNCTION_6_2(v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v15, v83, v89, v94);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21725CE44(v16);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

double sub_2176AEB40()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000024, 0x80000002177B50C0, &type metadata for MusicLibrarySearchResponse.TopResult, &protocol witness table for MusicLibrarySearchResponse.TopResult, v2);
  os_unfair_lock_unlock(v0[2]);
  result = *v2;
  xmmword_27CB2C8C8 = v2[0];
  xmmword_27CB2C8D8 = v2[1];
  return result;
}

uint64_t static MusicLibrarySearchResponse.TopResult.typeValue.getter()
{
  if (qword_27CB23E20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2C8C8);

  return sub_217751DE8();
}

uint64_t sub_2176AEC70()
{
  if (qword_27CB23E20 != -1)
  {
    swift_once();
  }

  xmmword_27CB2C8E8 = xmmword_27CB2C8C8;
  xmmword_27CB2C8F8 = xmmword_27CB2C8D8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.librarySearchTopResult.getter()
{
  if (qword_27CB23E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2C8E8);

  return sub_217751DE8();
}

uint64_t sub_2176AED50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  v0[1] = xmmword_217775F00;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  v1 = xmmword_280BE6308;
  v0[2] = xmmword_280BE62F8;
  v0[3] = v1;
  v2 = qword_280BE6270;
  sub_217751DE8();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = xmmword_280BE6288;
  v0[4] = xmmword_280BE6278;
  v0[5] = v3;
  v4 = qword_280BE6378;
  sub_217751DE8();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280BE6390;
  v0[6] = xmmword_280BE6380;
  v0[7] = v5;
  v6 = qword_280BE6220;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = xmmword_280BE6238;
  v0[8] = xmmword_280BE6228;
  v0[9] = v7;
  v8 = qword_280BEB138;
  sub_217751DE8();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = xmmword_280BEB150;
  v0[10] = xmmword_280BEB140;
  v0[11] = v9;
  qword_27CB2C908 = v0;

  return sub_217751DE8();
}

uint64_t static MusicLibrarySearchResponse.TopResult.supportedTypeValues.getter()
{
  if (qword_27CB23E30 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2176AEF8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C910, &qword_217794740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2176AEFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C918;
  if (!qword_27CB2C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C918);
  }

  return result;
}

uint64_t sub_2176AF058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2176AF094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2176AF0E4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 56) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for _MusicLibraryMapping(_BYTE *result, int a2, int a3)
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

BOOL SongPropertyProvider.catalogAssetRequiresSubscription.getter()
{
  type metadata accessor for SongPropertyProvider(0);
  OUTLINED_FUNCTION_0_139();
  v1 = *&v0 & 0x100FFLL;
  return !v2 && v1 == 65539;
}

uint64_t SongPropertyProvider.catalogAssetRequiresUserUpload.getter()
{
  type metadata accessor for SongPropertyProvider(0);
  OUTLINED_FUNCTION_0_139();
  v1 = (v0 >> 24) & 1;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

BOOL SongPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for SongPropertyProvider(0);
  v2 = *(v0 + *(v1 + 196));
  v3 = v0 + *(v1 + 292);
  if (*(v3 + 80))
  {
    return 1;
  }

  result = *(v3 + 112) != 0;
  if (v2 == 2)
  {
    return 1;
  }

  return result;
}

BOOL SongPropertyProvider.hasNonPurgeableSubscriptionProtectedLocalAsset.getter()
{
  v1 = (v0 + *(type metadata accessor for SongPropertyProvider(0) + 100));
  result = 0;
  if (v1[1])
  {
    v2 = *v1;
    if (v2 & 0xFF00) == 0x200 && (v2)
    {
      return 1;
    }
  }

  return result;
}

unint64_t Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
    case 8:
    case 0x1A:
    case 0x1E:
      result = 0xD000000000000029;
      break;
    case 2:
    case 0x10:
      result = 0xD000000000000025;
      break;
    case 3:
    case 0x13:
      result = 0xD00000000000002BLL;
      break;
    case 4:
    case 9:
      result = 0xD000000000000024;
      break;
    case 5:
    case 0xA:
    case 0xB:
    case 0x12:
    case 0x1C:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 7:
      result = 0xD000000000000028;
      break;
    case 0xC:
    case 0xD:
    case 0x1D:
      result = 0xD000000000000021;
      break;
    case 0xE:
      result = 0xD000000000000023;
      break;
    case 0xF:
    case 0x22:
      result = 0xD00000000000001FLL;
      break;
    case 0x14:
    case 0x17:
    case 0x21:
      result = 0xD00000000000002DLL;
      break;
    case 0x15:
      result = 0xD000000000000033;
      break;
    case 0x16:
      result = 0xD000000000000031;
      break;
    case 0x18:
    case 0x1B:
      result = 0xD000000000000027;
      break;
    case 0x19:
    case 0x20:
      result = 0xD00000000000001BLL;
      break;
    case 0x1F:
      result = 0xD00000000000001DLL;
      break;
    case 0x23:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

double sub_2176AF64C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 40))(v12, a1, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a4 + 96) = 0;
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t Playlist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v231 = a4;
  v240 = a3;
  v235 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v223 = v9 - v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  v234 = &v219 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v233 = v15 - v16;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_99();
  v237 = v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_99();
  v232 = v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_99();
  v238 = v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23);
  v236 = &v219 - v24;
  v25 = sub_217751F98();
  v221 = *(v25 - 8);
  v222 = v25;
  MEMORY[0x28223BE20](v25);
  v220 = &v219 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF8, &unk_217794A10);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v219 - v29;
  v31 = type metadata accessor for PlaylistPropertyProvider(0);
  OUTLINED_FUNCTION_41_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_1();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v219 - v37;
  memcpy(v253, a1, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v39 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v40 = v39;
    v41 = sub_217751D98();
  }

  else
  {
    v41 = sub_217751DC8();
  }

  v242 = sub_21729EF08(v41);

  memcpy(v248, a1, 0x161uLL);
  if (qword_280BE8A38 != -1)
  {
    swift_once();
  }

  v246[0] = qword_280BE8A40;
  v246[1] = *algn_280BE8A48;
  LOBYTE(v246[2]) = byte_280BE8A50;
  v42 = qword_280BE8AA8;
  sub_217751DE8();
  if (v42 != -1)
  {
    swift_once();
  }

  *v244 = qword_280BE8AB0;
  *&v244[8] = *algn_280BE8AB8;
  v244[16] = byte_280BE8AC0;
  sub_217751DE8();
  v254.value.rawValue._countAndFlagsBits = v246;
  v254.value.rawValue._object = v244;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(&v247, v254, v255);

  object = v247.id.rawValue._object;
  countAndFlagsBits = v247.type.rawValue._countAndFlagsBits;
  v43 = v247.type.rawValue._object;
  isLibraryType = v247.type.isLibraryType;
  v230 = v247.href.value._countAndFlagsBits;
  v44 = v247.href.value._object;
  sub_2171F5170(v240, &v247, &qword_27CB27590, &qword_21776ADF0);
  v239 = a2;
  if (!v247.type.rawValue._object)
  {
    sub_2171F0790(&v247, &qword_27CB27590, &qword_21776ADF0);
    memset(v248, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v248, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v248[1] + 1))
  {
LABEL_16:
    sub_2171F0790(v248, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  sub_2171F3F0C(v248, &v249);
  v45 = v251;
  v46 = v252;
  __swift_project_boxed_opaque_existential_1(&v249, v251);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
    sub_2173510D8(v30, v35);
    sub_217350E10(v35, v38);
    memcpy(v248, v253, 0x161uLL);
    v47 = v31[67];
    memcpy(v244, (v35 + v47), sizeof(v244));
    memcpy(v243, (v35 + v47), sizeof(v243));
    sub_217269EF4(v244, &v247);
    MusicIdentifierSet.union(_:)();
    memcpy(v246, v243, 0x161uLL);
    sub_217269F50(v246);
    sub_21735113C(v35);
    v48 = v31[67];
    memcpy(v248, &v38[v48], 0x161uLL);
    sub_217269F50(v248);
    memcpy(&v38[v48], &v247, 0x161uLL);
    v49 = &v38[v31[68]];
    sub_217751DE8();

    *v49 = countAndFlagsBits;
    *(v49 + 1) = v43;
    v49[16] = isLibraryType;
    v50 = &v38[v31[69]];
    v51 = *(v50 + 1);

    *v50 = v230;
    *(v50 + 1) = v44;
    __swift_destroy_boxed_opaque_existential_1(&v249);
    v52 = v239;
    v53 = v236;
    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
  sub_2171F0790(v30, &qword_27CB25BF8, &unk_217794A10);
  __swift_destroy_boxed_opaque_existential_1(&v249);
LABEL_17:
  sub_217269EF4(v253, v248);
  v227 = v44;
  sub_217751DE8();
  sub_217751DE8();
  v54 = OUTLINED_FUNCTION_10_67();
  v226 = OUTLINED_FUNCTION_10_67();
  v225 = OUTLINED_FUNCTION_10_67();
  v224 = OUTLINED_FUNCTION_10_67();
  sub_2172A497C(v248);
  memcpy(v38, v248, 0x221uLL);
  *(v38 + 69) = 0;
  memcpy(v38 + 560, v248, 0x221uLL);
  sub_21733B8A4(&v247);
  memcpy(v38 + 1112, &v247, 0xE8uLL);
  *(v38 + 168) = 0;
  *(v38 + 1352) = 0u;
  v38[1368] = 1;
  *(v38 + 86) = 0u;
  *(v38 + 174) = 1;
  *(v38 + 1400) = 0u;
  *(v38 + 1416) = 0u;
  *(v38 + 1432) = 0u;
  *(v38 + 181) = 0;
  v38[1456] = 2;
  *(v38 + 1464) = 0u;
  *(v38 + 1480) = 0u;
  *(v38 + 187) = 0;
  *(v38 + 376) = 33686018;
  *(v38 + 754) = 514;
  v38[1510] = 5;
  v55 = v31[22];
  v56 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v38[v55], 1, 1, v56);
  memcpy(&v38[v31[23]], v248, 0x221uLL);
  OUTLINED_FUNCTION_19_19(v31[24]);
  v57 = &v38[v31[25]];
  *(v57 + 14) = 0;
  *(v57 + 5) = 0u;
  *(v57 + 6) = 0u;
  *(v57 + 3) = 0u;
  *(v57 + 4) = 0u;
  *(v57 + 1) = 0u;
  *(v57 + 2) = 0u;
  *v57 = 0u;
  OUTLINED_FUNCTION_19_19(v31[26]);
  OUTLINED_FUNCTION_19_19(v31[27]);
  v38[v31[28]] = 2;
  v58 = &v38[v31[29]];
  *v58 = 0;
  v58[8] = 1;
  memcpy(&v38[v31[30]], v248, 0x221uLL);
  *&v38[v31[31]] = 0;
  v59 = v31[32];
  v60 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v38[v59], 1, 1, v60);
  OUTLINED_FUNCTION_19_19(v31[33]);
  OUTLINED_FUNCTION_19_19(v31[34]);
  OUTLINED_FUNCTION_8_83(v31[35]);
  v38[v31[36]] = 3;
  v38[v31[37]] = 2;
  v38[v31[38]] = 5;
  v38[v31[39]] = 7;
  v61 = &v38[v31[40]];
  *v61 = 0;
  v61[8] = 1;
  OUTLINED_FUNCTION_8_83(v31[41]);
  OUTLINED_FUNCTION_8_83(v31[42]);
  OUTLINED_FUNCTION_8_83(v31[43]);
  v38[v31[44]] = 2;
  v38[v31[45]] = 2;
  v38[v31[46]] = 2;
  v38[v31[47]] = 2;
  v38[v31[48]] = 2;
  v62 = &v38[v31[49]];
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v63 = &v38[v31[50]];
  *v63 = 0;
  v63[8] = 1;
  v38[v31[51]] = 10;
  OUTLINED_FUNCTION_0_58(v31[52], 0);
  OUTLINED_FUNCTION_0_58(v31[53], v64);
  OUTLINED_FUNCTION_0_58(v31[54], v65);
  OUTLINED_FUNCTION_0_58(v31[55], v66);
  OUTLINED_FUNCTION_0_58(v31[56], v67);
  OUTLINED_FUNCTION_0_58(v31[57], v68);
  OUTLINED_FUNCTION_0_58(v31[58], v69);
  OUTLINED_FUNCTION_0_58(v31[59], v70);
  v71 = &v38[v31[60]];
  *v71 = xmmword_2177586D0;
  *(v71 + 2) = 0;
  *(v71 + 3) = 0;
  OUTLINED_FUNCTION_19_19(v31[61]);
  *&v38[v31[62]] = 0;
  v72 = &v38[v31[63]];
  *(v72 + 6) = v73;
  *(v72 + 7) = v73;
  *(v72 + 4) = v73;
  *(v72 + 5) = v73;
  *(v72 + 2) = v73;
  *(v72 + 3) = v73;
  *v72 = v73;
  *(v72 + 1) = v73;
  v74 = &v38[v31[64]];
  *(v74 + 12) = 0;
  *(v74 + 4) = v73;
  *(v74 + 5) = v73;
  *(v74 + 2) = v73;
  *(v74 + 3) = v73;
  *v74 = v73;
  *(v74 + 1) = v73;
  v75 = &v38[v31[65]];
  *(v75 + 4) = 0;
  *v75 = v73;
  *(v75 + 1) = v73;
  if (qword_280BE8800 != -1)
  {
    swift_once();
  }

  v76 = qword_280C02598;
  v52 = v239;
  v53 = v236;
  if (qword_280C02598 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v218 = sub_217752D28();
    v77 = v227;

    object = v76;
    v76 = v218;
    v53 = v236;
    v52 = v239;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v77 = v227;
  }

  *&v38[v31[66]] = v76;
  v51 = &v38[v31[69]];
  memcpy(&v38[v31[67]], v253, 0x161uLL);
  v78 = &v38[v31[68]];
  *v78 = countAndFlagsBits;
  *(v78 + 1) = v43;
  v78[16] = isLibraryType;
  *v51 = v230;
  *(v51 + 1) = v77;
  *&v38[v31[70]] = v54;
  v79 = v225;
  *&v38[v31[71]] = v226;
  *&v38[v31[72]] = v79;
  *&v38[v31[73]] = v224;
LABEL_22:
  memset(v243, 0, 40);
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for UnderlyingLegacyModelObjectExtendedConvertible))
  {
    OUTLINED_FUNCTION_6_90();
    memcpy(v248, v253, 0x161uLL);
    v43[2](&v247, v248, v52, v240, v231, v51, v43);

    sub_2171F0790(v243, &qword_27CB24BA8, &unk_217772FF0);
    *v243 = v247.id;
    *&v243[16] = v247.type.rawValue;
    *&v243[32] = *&v247.type.isLibraryType;
  }

  else
  {
  }

  sub_2174AFB54(v52, &v249);
  if (v251)
  {
    sub_2171F3F0C(&v249, v244);
    sub_2171FF30C(v244, v248);
    v247.id.rawValue._countAndFlagsBits = 1;
    memset(&v247.id.rawValue._object, 0, 24);
    Artwork.init(_:alternateText:existingColorAnalysis:)(v248, 0, 0, &v247, v246);
    memcpy(&v247, v246, 0x221uLL);
    nullsub_1();
    memcpy(v248, v38, 0x221uLL);
    sub_2171F0790(v248, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v38, &v247, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v244);
  }

  else
  {
    sub_2171F0790(&v249, &qword_27CB28308, &qword_21776C430);
  }

  v80 = v232;
  if (!*(v38 + 69))
  {
    v81 = sub_2172A3894(31, v242);
    if ((v82 & 1) == 0)
    {
      v83 = [objc_opt_self() audioTraitsForRawValue_];
      v38[1506] = v83 & 1;
      sub_217215924(0, &qword_280BE74C8, off_278228CF8);
      *(v38 + 69) = sub_217659CB4(v83);
    }
  }

  swift_getKeyPath(byte_217794A20);
  if (v38[v31[44]] == 2)
  {
    v84 = sub_2172A38E0(8, v242);

    if (v84 != 2)
    {
      v85 = v31[44];
      v38[v85] = (v84 & 1) != 0;
    }
  }

  else
  {
  }

  KeyPath = swift_getKeyPath(byte_217794A40);
  v87 = v242;
  sub_2174ADF0C();

  sub_2172A393C(1, v87);
  if (v88 >= 2)
  {
    OUTLINED_FUNCTION_6_90();
    v89 = v80;
    v90 = v53;
    v91 = v220;
    sub_217751F88();
    OUTLINED_FUNCTION_117_0();
    v92 = sub_217751F58();
    v94 = v93;
    v95 = sub_217283988(v38, KeyPath);
    v96 = v91;
    v53 = v90;
    v80 = v89;
    (*(v221 + 8))(v96, v222, v95);
    if (v94 >> 60 != 15)
    {
      sub_217751348();
      swift_allocObject();
      v97 = sub_217751338();
      sub_2174AFD08(v97, v98, v99);
      sub_217751308();

      sub_217275680(v92, v94);
      memcpy(v244, v246, 0xE8uLL);
      sub_2172A38F8(25, v242);
      if (v100)
      {
        OUTLINED_FUNCTION_6_90();
        memcpy(v248, v244, 0xE8uLL);
        Artwork.init(coverArtworkRecipe:name:)(v248, v97, 0, &v247);
        memcpy(v248, v38 + 560, 0x221uLL);
        sub_2171F0790(v248, &qword_27CB24400, &unk_21775E9A0);
        memcpy(v38 + 560, &v247, 0x221uLL);
      }

      else
      {
        sub_21735129C(v244);
      }
    }
  }

  if (!*(v38 + 169))
  {
    v101 = sub_2174AAB6C(35, 2, v242);
    if (v102)
    {
      *(v38 + 168) = v101;
      *(v38 + 169) = v102;
    }
  }

  sub_2172A3910(2, v242, v53);
  object = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v53, 1, object) != 1)
  {
    OUTLINED_FUNCTION_20_51();
    sub_2171F5170(v103, v104, v105, v106);
    sub_2171F0790(&v38[v31[42]], &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_20_51();
    sub_2176B29B4(v107, v108, v109, v110);
  }

  sub_2171F0790(v53, &qword_27CB241C0, &qword_217759480);
  v111 = sub_2172A3894(3, v242);
  if ((v112 & 1) == 0)
  {
    *(v38 + 170) = v111;
    v38[1368] = 0;
  }

  v113 = sub_2172A38F8(4, v242);
  if (v114)
  {
    v115 = v113;
    v116 = v114;
    v117 = &v38[v31[34]];

    *v117 = v115;
    *(v117 + 1) = v116;
  }

  sub_2172A3910(9, v242, v80);
  OUTLINED_FUNCTION_29_42(v80);
  if (!v118)
  {
    OUTLINED_FUNCTION_20_51();
    sub_2171F5170(v119, v120, v121, v122);
    sub_2171F0790(&v38[v31[35]], &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_20_51();
    sub_2176B29B4(v123, v124, v125, v126);
  }

  v127 = sub_2171F0790(v80, &qword_27CB241C0, &qword_217759480);
  if (qword_280BE8040 != -1)
  {
    v127 = OUTLINED_FUNCTION_14_3(&qword_280BE8040);
  }

  v130 = qword_280BE8048;
  v131 = unk_280BE8050;
  v132 = byte_280BE8058;
  v133 = qword_280BE8060;
  v134 = unk_280BE8068;
  v135 = byte_280BE8070;
  *(&v248[1] + 1) = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v248[2] = sub_2171FEF88(v127, v128, v129);
  v136 = swift_allocObject();
  *&v248[0] = v136;
  *(v136 + 16) = v130;
  *(v136 + 24) = v131;
  *(v136 + 32) = v132;
  *(v136 + 40) = v133;
  *(v136 + 48) = v134;
  *(v136 + 56) = v135;
  LOBYTE(v130) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v248);
  v137 = v233;
  v138 = v237;
  if (v130)
  {
    sub_2172A38E0(12, v242);
    OUTLINED_FUNCTION_7_1();
    if (!v118)
    {
      v140 = v139;
      sub_2172A38E0(13, v242);
      OUTLINED_FUNCTION_7_1();
      if (!v118)
      {
        if (v140)
        {
          if (v141)
          {
            v143 = 0;
          }

          else
          {
            v143 = 2;
          }
        }

        else
        {
          v143 = v141 & 1;
        }

        goto LABEL_72;
      }
    }

    sub_2172A38E0(13, v242);
    OUTLINED_FUNCTION_7_1();
    if (!v118 && (v142 & 1) != 0)
    {
      v143 = 1;
LABEL_72:
      v38[v31[36]] = v143;
      goto LABEL_73;
    }

    sub_2172A38E0(12, v242);
    OUTLINED_FUNCTION_7_1();
    if (!v118 && (v144 & 1) != 0)
    {
      v143 = 2;
      goto LABEL_72;
    }
  }

LABEL_73:
  if (v38[1508] == 2)
  {
    sub_2172A38E0(10, v242);
    OUTLINED_FUNCTION_7_1();
    if (!v118)
    {
      v38[1508] = v145;
    }
  }

  sub_2172A38E0(11, v242);
  OUTLINED_FUNCTION_7_1();
  v147 = v239;
  if (!v118)
  {
    v38[1509] = v146;
  }

  sub_2172A38E0(6, v242);
  OUTLINED_FUNCTION_7_1();
  if (!v118)
  {
    v38[1504] = v148;
  }

  sub_2172A38E0(7, v242);
  OUTLINED_FUNCTION_7_1();
  if (!v118)
  {
    v38[1505] = v149;
  }

  sub_2172A38E0(14, v242);
  OUTLINED_FUNCTION_7_1();
  if (!v118)
  {
    v38[v31[37]] = v150;
  }

  sub_2172A38E0(16, v242);
  OUTLINED_FUNCTION_7_1();
  if (!v118)
  {
    v38[v31[47]] = v151;
  }

  sub_2172A38E0(15, v242);
  OUTLINED_FUNCTION_7_1();
  if (!v118)
  {
    v38[v31[46]] = v152;
  }

  sub_2172A38E0(17, v242);
  OUTLINED_FUNCTION_7_1();
  if (!v118)
  {
    v38[v31[45]] = v153;
  }

  sub_2172A38E0(18, v242);
  OUTLINED_FUNCTION_7_1();
  if (!v118)
  {
    v38[v31[48]] = v154;
  }

  v155 = sub_2172A3894(19, v242);
  if ((v156 & 1) == 0)
  {
    v157 = [objc_opt_self() keepLocalEnabledStateForRawValue_];
    if (v157 < 5)
    {
      v38[v31[38]] = v157;
    }
  }

  swift_getKeyPath(byte_217794A60);
  v158 = v242;
  v159 = v38;
  sub_2174AE18C();

  v160 = sub_2172A3894(21, v158);
  if ((v161 & 1) == 0)
  {
    v159 = v160;
    v162 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
    v163 = &v38[v31[40]];
    *v163 = v162 & 0x7F;
    v163[8] = 0;
  }

  sub_2172A3894(32, v242);
  if ((v164 & 1) == 0)
  {
    v165 = [OUTLINED_FUNCTION_30_40() playlistTypeForRawValue_] - 5;
    if (v165 < 4)
    {
      v38[1510] = 0x2040100u >> (8 * v165);
    }
  }

  swift_getKeyPath(byte_217794A80);
  v166 = v242;
  sub_2174AE218();

  sub_2172A3910(23, v166, v138);
  OUTLINED_FUNCTION_29_42(v138);
  if (!v118)
  {
    OUTLINED_FUNCTION_20_51();
    sub_2171F5170(v167, v168, v169, v170);
    sub_2171F0790(&v38[v31[43]], &qword_27CB241C0, &qword_217759480);
    v138 = v237;
    OUTLINED_FUNCTION_20_51();
    sub_2176B29B4(v171, v172, v173, v174);
  }

  sub_2171F0790(v138, &qword_27CB241C0, &qword_217759480);
  sub_2172A3910(24, v242, v137);
  OUTLINED_FUNCTION_29_42(v137);
  if (!v118)
  {
    v138 = &qword_217759480;
    OUTLINED_FUNCTION_117_0();
    sub_2171F5170(v175, v176, v177, v178);
    sub_2171F0790(&v38[v31[41]], &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_117_0();
    sub_2176B29B4(v179, v180, v181, v182);
  }

  sub_2171F0790(v137, &qword_27CB241C0, &qword_217759480);
  v183 = &v38[v31[24]];
  if (!v183[1])
  {
    v184 = sub_2172A38F8(25, v242);
    if (v185)
    {
      *v183 = v184;
      v183[1] = v185;
    }
  }

  if (v253[18])
  {
    v245 = *&v253[19];
    sub_217751DE8();
    v186 = sub_2172A3894(26, v242);
    if (v187)
    {
      sub_2176B2960(&v245);
    }

    else
    {
      *&v248[0] = v186;
      sub_217752FC8();
      OUTLINED_FUNCTION_6_90();
      v188 = v245;
      v189 = &v38[v31[49]];
      sub_2172B8404(*v189, *(v189 + 1));
      *v189 = v248;
      *(v189 + 1) = v138;
      *(v189 + 1) = v188;
      v147 = v239;
    }
  }

  v190 = &v38[v31[26]];
  if (!v190[1])
  {
    v191 = sub_2172A38F8(27, v242);
    if (v192)
    {
      *v190 = v191;
      v190[1] = v192;
    }
  }

  v193 = &v38[v31[27]];
  if (!v193[1])
  {
    v194 = sub_2172A38F8(28, v242);
    if (v195)
    {
      *v193 = v194;
      v193[1] = v195;
    }
  }

  v196 = v31[28];
  if (v38[v196] == 2)
  {
    sub_2172A3894(31, v242);
    if ((v197 & 1) == 0)
    {
      v38[v196] = ([OUTLINED_FUNCTION_30_40() playlistTraitsForRawValue_] >> 8) & 1;
    }
  }

  sub_2174AFB54(v147, v244);
  if (*&v244[24])
  {
    sub_2171F3F0C(v244, v246);
    sub_2171FF30C(v246, v248);
    v249 = 1uLL;
    v251 = 0;
    v250 = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v248, 0, 0, &v249, &v247);
    nullsub_1();
    v193 = v31[30];
    memcpy(v248, v193 + v38, 0x221uLL);
    sub_2171F0790(v248, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v193 + v38, &v247, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v246);
  }

  else
  {
    sub_2171F0790(v244, &qword_27CB28308, &qword_21776C430);
  }

  sub_2172A3894(32, v242);
  if ((v198 & 1) == 0)
  {
    v199 = [OUTLINED_FUNCTION_30_40() playlistTypeForRawValue_];
    if (v199 >= 0xA)
    {
      v200 = 0;
    }

    else
    {
      v200 = v199;
    }

    v38[v31[51]] = v200;
  }

  sub_2172A3894(33, v242);
  if ((v201 & 1) == 0)
  {
    v202 = [OUTLINED_FUNCTION_30_40() editableComponentsForRawValue_];
    v203 = &v38[v31[50]];
    *v203 = v202 & 3;
    v203[8] = 0;
  }

  v204 = v234;
  sub_2172A3868(34, v242, v234);

  v205 = sub_2177516D8();
  if (__swift_getEnumTagSinglePayload(v204, 1, v205) != 1)
  {
    OUTLINED_FUNCTION_117_0();
    sub_2171F5170(v206, v207, v208, v209);
    sub_2171F0790(&v38[v31[32]], &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_117_0();
    sub_2176B29B4(v210, v211, v212, v213);
  }

  sub_2171F0790(v204, &unk_27CB277C0, &qword_217758DC0);
  swift_getKeyPath(byte_217794AA0);
  sub_2174AE924();

  sub_217269F50(v253);
  swift_getKeyPath("h&>e");
  sub_2172A54C4();

  v214 = swift_getKeyPath("P&>e");
  if (qword_280BE91D8 != -1)
  {
    swift_once();
  }

  sub_2176B1110(v214, v243, qword_280BE91E0, &qword_27CB25638, &unk_21775EA10, &qword_27CB25610, &qword_21775D540);

  v215 = swift_getKeyPath("8&>e");
  if (qword_280BE9188 != -1)
  {
    swift_once();
  }

  sub_2176B1110(v215, v243, qword_280BE9190, &qword_27CB25630, &qword_21775D568, &qword_27CB25608, &unk_21775D530);

  *(&v248[1] + 1) = v31;
  *&v248[2] = &protocol witness table for PlaylistPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v248);
  sub_217350E10(v38, boxed_opaque_existential_0);
  Playlist.init(propertyProvider:)(v248, v235);
  swift_unknownObjectRelease();
  sub_2171F0790(v240, &qword_27CB27590, &qword_21776ADF0);
  sub_2171F0790(v243, &qword_27CB24BA8, &unk_217772FF0);
  return sub_21735113C(v38);
}

uint64_t sub_2176B1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_2171F5170(a2, __dst, &qword_27CB24BA8, &unk_217772FF0);
  if (__dst[3])
  {
    sub_2176AF64C(a3, a4, a5, __src);
    sub_217350E74(__dst);
    if (*&__src[88])
    {
      memcpy(__dst, __src, sizeof(__dst));
      return swift_setAtWritableKeyPath();
    }
  }

  else
  {
    sub_2171F0790(__dst, &qword_27CB24BA8, &unk_217772FF0);
    memset(__src, 0, sizeof(__src));
  }

  v12 = swift_readAtKeyPath();
  sub_2171F5170(v13, __dst, a6, a7);
  v12(&v15, 0);
  if (*&__src[88])
  {
    sub_2171F0790(__src, a6, a7);
  }

  return swift_setAtWritableKeyPath();
}

uint64_t Playlist.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v1 = OUTLINED_FUNCTION_45_0(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v536 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  v538 = v6 - v7;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_99();
  v537 = v9;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_99();
  v536 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v536 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v536 - v16;
  v18 = sub_217751F98();
  v19 = OUTLINED_FUNCTION_45_0(v18);
  MEMORY[0x28223BE20](v19);
  sub_2172A5038(v20, v21, v22);
  v545 = sub_217751DC8();
  Playlist.artwork.getter(v546);
  memcpy(v547, v546, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v547) == 1)
  {
    memset(v544, 0, sizeof(v544));
  }

  else
  {
    memcpy(v540, v547, 0x221uLL);
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v544);
    sub_2171F0790(v546, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D4DC(v544, 0, v23, v24, v25, v26, v27, v28, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE80E0 != -1)
  {
    swift_once();
  }

  v539 = v3;
  OUTLINED_FUNCTION_16_69();
  sub_2176CB1B4(v29, v30, v31, v32, v33, v34, v35, v36, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13]);
  memcpy(v543, v542, sizeof(v543));
  memcpy(v540, v542, 0xE8uLL);
  if (sub_21726A450(v540) == 1 || (sub_217751378(), swift_allocObject(), sub_217751368(), v37 = memcpy(v541, v540, 0xE8uLL), sub_21763E14C(v37, v38, v39), v311 = sub_217751358(), v313 = v312, sub_217751F88(), v314 = sub_217751F68(), v316 = v315, sub_217275694(v311, v313), , sub_2171F0790(v543, &qword_27CB25BE0, &qword_217794B20), !v316))
  {
    memset(v541, 0, 32);
    v40 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *&v542[24] = sub_217215924(0, &qword_280BE2210, 0x277CBEB68);
    *v542 = v40;
    if (*(&v541[1] + 1))
    {
      sub_2171F0790(v541, &qword_27CB2AD40, &qword_2177583F0);
    }
  }

  else
  {
    *(&v541[1] + 1) = MEMORY[0x277D837D0];
    *&v541[0] = v314;
    *(&v541[0] + 1) = v316;
    sub_2172124CC(v541, v542);
  }

  v41 = OUTLINED_FUNCTION_4_119();
  sub_21729D4DC(v41, 1, v42, v43, v44, v45, v46, v47, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE9330 != -1)
  {
    swift_once();
  }

  sub_2176CA4A8(qword_280C02680, v48, v49, v50, v51, v52, v53, v54, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15], v540[16], v540[17]);
  v55 = sub_2177517D8();
  OUTLINED_FUNCTION_29_1(v17);
  if (v97)
  {
    sub_2171F0790(v17, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_7_80();
  }

  else
  {
    OUTLINED_FUNCTION_28_50();
    OUTLINED_FUNCTION_6_99();
    (*(v56 + 32))();
  }

  v57 = OUTLINED_FUNCTION_4_119();
  sub_21729D4DC(v57, 2, v58, v59, v60, v61, v62, v63, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE80B8 != -1)
  {
    swift_once();
  }

  v64 = sub_2172A47B0();
  if (v65)
  {
    v64 = OUTLINED_FUNCTION_12_60();
    *&v542[8] = 0;
  }

  else
  {
    v66 = MEMORY[0x277D83B88];
  }

  *v542 = v64;
  v67 = OUTLINED_FUNCTION_3_115(v66);
  sub_21729D4DC(v67, 3, v68, v69, v70, v71, v72, v73, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE9368 != -1)
  {
    swift_once();
  }

  sub_2176CA4A8(qword_280C026A0, v74, v75, v76, v77, v78, v79, v80, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15], v540[16], v540[17]);
  OUTLINED_FUNCTION_29_1(v14);
  if (v97)
  {
    sub_2171F0790(v14, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_7_80();
  }

  else
  {
    OUTLINED_FUNCTION_28_50();
    OUTLINED_FUNCTION_6_99();
    (*(v81 + 32))();
  }

  v82 = OUTLINED_FUNCTION_4_119();
  sub_21729D4DC(v82, 9, v83, v84, v85, v86, v87, v88, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE9388 != -1)
  {
    swift_once();
  }

  v96 = qword_280C026A8;
  sub_2176CB248(qword_280C026A8, v89, v90, v91, v92, v93, v94, v95, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
  v97 = (v542[0] & 1) != 0 || v542[0] == 2;
  v98 = MEMORY[0x277D839B0];
  v99 = !v97;
  *&v542[24] = MEMORY[0x277D839B0];
  v100 = OUTLINED_FUNCTION_2_127(v99);
  sub_21729D4DC(v100, 5, v101, v102, v103, v104, v105, v106, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE80A8 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023F0, v107, v108, v109, v110, v111, v112, v113, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  v115 = OUTLINED_FUNCTION_1_129(v114);
  sub_21729D4DC(v115, 6, v116, v117, v118, v119, v120, v121, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE80F0 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02420, v122, v123, v124, v125, v126, v127, v128, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  v130 = OUTLINED_FUNCTION_1_129(v129);
  sub_21729D4DC(v130, 7, v131, v132, v133, v134, v135, v136, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  sub_2176CB248(v96, v137, v138, v139, v140, v141, v142, v143, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
  *&v542[24] = v98;
  v144 = OUTLINED_FUNCTION_2_127(v542[0] & 1);
  sub_21729D4DC(v144, 8, v145, v146, v147, v148, v149, v150, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE92E8 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02670, v151, v152, v153, v154, v155, v156, v157, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  OUTLINED_FUNCTION_7_1();
  if (v97)
  {
    OUTLINED_FUNCTION_13_66();
  }

  else
  {
    v542[0] = v158 & 1;
    v159 = MEMORY[0x277D839B0];
  }

  v160 = OUTLINED_FUNCTION_3_115(v159);
  sub_21729D4DC(v160, 10, v161, v162, v163, v164, v165, v166, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE80D0 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02410, v167, v168, v169, v170, v171, v172, v173, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  v175 = OUTLINED_FUNCTION_1_129(v174);
  v182 = sub_21729D4DC(v175, 11, v176, v177, v178, v179, v180, v181, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE8040 != -1)
  {
    v182 = OUTLINED_FUNCTION_14_3(&qword_280BE8040);
  }

  v185 = qword_280BE8048;
  v186 = unk_280BE8050;
  v187 = byte_280BE8058;
  v188 = qword_280BE8060;
  v189 = unk_280BE8068;
  v190 = byte_280BE8070;
  *&v542[24] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v542[32] = sub_2171FEF88(v182, v183, v184);
  v191 = swift_allocObject();
  *v542 = v191;
  *(v191 + 16) = v185;
  *(v191 + 24) = v186;
  *(v191 + 32) = v187;
  *(v191 + 40) = v188;
  *(v191 + 48) = v189;
  *(v191 + 56) = v190;
  LOBYTE(v185) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v542);
  v192 = MEMORY[0x277D837D0];
  v193 = v536;
  if (v185)
  {
    if (qword_280BE9320 != -1)
    {
      OUTLINED_FUNCTION_123(&qword_280BE9320);
    }

    OUTLINED_FUNCTION_16_69();
    sub_2176CB25C(v194, v195, v196, v197, v198, v199, v200, v201, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
    *&v542[24] = v98;
    v202 = OUTLINED_FUNCTION_2_127(v542[0] == 2);
    sub_21729D4DC(v202, 12, v203, v204, v205, v206, v207, v208, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  }

  if (qword_280BE9320 != -1)
  {
    OUTLINED_FUNCTION_123(&qword_280BE9320);
  }

  OUTLINED_FUNCTION_16_69();
  sub_2176CB25C(v209, v210, v211, v212, v213, v214, v215, v216, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
  *&v542[24] = v98;
  v217 = OUTLINED_FUNCTION_2_127(v542[0] == 1);
  sub_21729D4DC(v217, 13, v218, v219, v220, v221, v222, v223, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE9358 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02698, v224, v225, v226, v227, v228, v229, v230, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  OUTLINED_FUNCTION_7_1();
  if (v97)
  {
    OUTLINED_FUNCTION_13_66();
  }

  else
  {
    v542[0] = v231 & 1;
    v232 = MEMORY[0x277D839B0];
  }

  v233 = OUTLINED_FUNCTION_3_115(v232);
  sub_21729D4DC(v233, 14, v234, v235, v236, v237, v238, v239, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE9198 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C025B0, v240, v241, v242, v243, v244, v245, v246, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  v248 = OUTLINED_FUNCTION_1_129(v247);
  sub_21729D4DC(v248, 16, v249, v250, v251, v252, v253, v254, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE8090 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023E0, v255, v256, v257, v258, v259, v260, v261, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  v263 = OUTLINED_FUNCTION_1_129(v262);
  sub_21729D4DC(v263, 15, v264, v265, v266, v267, v268, v269, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE80A0 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023E8, v270, v271, v272, v273, v274, v275, v276, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  OUTLINED_FUNCTION_7_1();
  if (v97)
  {
    OUTLINED_FUNCTION_13_66();
  }

  else
  {
    v542[0] = v277 & 1;
    v278 = MEMORY[0x277D839B0];
  }

  v279 = OUTLINED_FUNCTION_3_115(v278);
  sub_21729D4DC(v279, 17, v280, v281, v282, v283, v284, v285, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE8080 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023D8, v286, v287, v288, v289, v290, v291, v292, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  v294 = OUTLINED_FUNCTION_1_129(v293);
  sub_21729D4DC(v294, 18, v295, v296, v297, v298, v299, v300, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
  if (qword_280BE9250 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_69();
  sub_2176CB270(v301, v302, v303, v304, v305, v306, v307, v308, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
  v309 = v542[0];
  v310 = v537;
  switch(v542[0])
  {
    case 1:
      v309 = 1;
      goto LABEL_77;
    case 2:
      v309 = 2;
      goto LABEL_77;
    case 3:
      v309 = 3;
      goto LABEL_77;
    case 4:
      v309 = 4;
      goto LABEL_77;
    case 5:
      OUTLINED_FUNCTION_7_80();
      goto LABEL_78;
    default:
LABEL_77:
      v317 = [objc_opt_self() rawValueForKeepLocalEnabledState_];
      OUTLINED_FUNCTION_25_55(v317);
LABEL_78:
      v318 = OUTLINED_FUNCTION_4_119();
      sub_21729D4DC(v318, 19, v319, v320, v321, v322, v323, v324, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
      if (qword_280BE9248 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_16_69();
      sub_2176CB284(v325, v326, v327, v328, v329, v330, v331, v332, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
      v333 = v542[0];
      switch(v542[0])
      {
        case 1:
          v333 = 1;
          goto LABEL_89;
        case 2:
          v333 = 2;
          goto LABEL_89;
        case 3:
          v333 = 3;
          goto LABEL_89;
        case 4:
          v333 = 4;
          goto LABEL_89;
        case 5:
          v333 = 5;
          goto LABEL_89;
        case 6:
          v333 = 6;
          goto LABEL_89;
        case 7:
          OUTLINED_FUNCTION_7_80();
          goto LABEL_90;
        default:
LABEL_89:
          v334 = [objc_opt_self() rawValueForKeepLocalManagedStatus_];
          OUTLINED_FUNCTION_25_55(v334);
LABEL_90:
          v335 = v538;
          v336 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v336, 20, v337, v338, v339, v340, v341, v342, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE9220 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_16_69();
          sub_2176CB298(v343, v344, v345, v346, v347, v348, v349, v350, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
          if (v542[8])
          {
            v351 = OUTLINED_FUNCTION_12_60();
            *&v542[8] = 0;
          }

          else
          {
            *&v541[0] = *v542;
            v351 = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
            v352 = MEMORY[0x277D83B88];
          }

          *v542 = v351;
          v353 = OUTLINED_FUNCTION_3_115(v352);
          sub_21729D4DC(v353, 21, v354, v355, v356, v357, v358, v359, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE92C8 != -1)
          {
            swift_once();
          }

          sub_2176CA4A8(qword_280C02658, v360, v361, v362, v363, v364, v365, v366, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15], v540[16], v540[17]);
          OUTLINED_FUNCTION_29_1(v193);
          if (v97)
          {
            sub_2171F0790(v193, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_7_80();
          }

          else
          {
            *&v542[24] = sub_217751568();
            __swift_allocate_boxed_opaque_existential_0(v542);
            if (qword_280BE8910 != -1)
            {
              swift_once();
            }

            v367 = type metadata accessor for CloudFormatter(0);
            __swift_project_value_buffer(v367, qword_280BE8918);
            CloudFormatter.dateComponents(from:)(v193);
            OUTLINED_FUNCTION_6_99();
            (*(v368 + 8))(v193, v55);
          }

          v369 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v369, 22, v370, v371, v372, v373, v374, v375, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE9350 != -1)
          {
            swift_once();
          }

          sub_2176CA4A8(qword_280C02690, v376, v377, v378, v379, v380, v381, v382, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15], v540[16], v540[17]);
          OUTLINED_FUNCTION_29_1(v310);
          if (v97)
          {
            sub_2171F0790(v310, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_7_80();
          }

          else
          {
            OUTLINED_FUNCTION_28_50();
            OUTLINED_FUNCTION_6_99();
            (*(v383 + 32))();
          }

          v384 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v384, 23, v385, v386, v387, v388, v389, v390, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE92B8 != -1)
          {
            swift_once();
          }

          sub_2176CA4A8(qword_280C02650, v391, v392, v393, v394, v395, v396, v397, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15], v540[16], v540[17]);
          OUTLINED_FUNCTION_29_1(v335);
          if (v97)
          {
            sub_2171F0790(v335, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_7_80();
          }

          else
          {
            OUTLINED_FUNCTION_28_50();
            OUTLINED_FUNCTION_6_99();
            (*(v398 + 32))();
          }

          v399 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v399, 24, v400, v401, v402, v403, v404, v405, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE9208 != -1)
          {
            swift_once();
          }

          v406 = sub_2172A3F14(qword_280C025D0);
          if (v407)
          {
            v408 = v406;
          }

          else
          {
            v408 = 0;
          }

          v409 = 0xE000000000000000;
          *&v542[24] = v192;
          if (v407)
          {
            v409 = v407;
          }

          *v542 = v408;
          *&v542[8] = v409;
          v410 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v410, 25, v411, v412, v413, v414, v415, v416, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE80C8 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_16_69();
          sub_2176CB2AC(v417, v418, v419, v420, v421, v422, v423, v424, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
          v425 = *&v542[8];
          if (*&v542[8])
          {
            v426 = *v542;
            sub_217751DE8();
            sub_2172B8404(v426, v425);
            v427 = &type metadata for MusicItemID;
          }

          else
          {
            v426 = 0;
            v427 = 0;
            *&v542[16] = 0;
          }

          *v542 = v426;
          *&v542[8] = v425;
          v428 = OUTLINED_FUNCTION_3_115(v427);
          sub_21729D4DC(v428, 26, v429, v430, v431, v432, v433, v434, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE92A8 != -1)
          {
            swift_once();
          }

          v435 = sub_2172A3F14(qword_280C02648);
          if (v436)
          {
            v437 = MEMORY[0x277D837D0];
          }

          else
          {
            v435 = OUTLINED_FUNCTION_12_60();
          }

          *v542 = v435;
          *&v542[8] = v436;
          v438 = OUTLINED_FUNCTION_3_115(v437);
          sub_21729D4DC(v438, 27, v439, v440, v441, v442, v443, v444, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE9270 != -1)
          {
            swift_once();
          }

          v445 = sub_2172A3F14(qword_280C02620);
          if (v446)
          {
            *(&v541[1] + 1) = v192;
            *&v541[0] = v445;
            *(&v541[0] + 1) = v446;
            sub_2172124CC(v541, v542);
          }

          else
          {
            memset(v541, 0, 32);
            v447 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
            *&v542[24] = sub_217215924(0, &qword_280BE2210, 0x277CBEB68);
            *v542 = v447;
            if (*(&v541[1] + 1))
            {
              sub_2171F0790(v541, &qword_27CB2AD40, &qword_2177583F0);
            }
          }

          v448 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v448, 28, v449, v450, v451, v452, v453, v454, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE93C0 != -1)
          {
            swift_once();
          }

          v455 = sub_2172A47B0();
          if (v456)
          {
            v455 = OUTLINED_FUNCTION_12_60();
            *&v542[8] = 0;
          }

          else
          {
            v457 = MEMORY[0x277D83B88];
          }

          *v542 = v455;
          v458 = OUTLINED_FUNCTION_3_115(v457);
          sub_21729D4DC(v458, 29, v459, v460, v461, v462, v463, v464, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          sub_217215924(0, &qword_280BE74C8, off_278228CF8);
          if (qword_280BE9390 != -1)
          {
            swift_once();
          }

          v472 = sub_2172A47FC(qword_280C026B0);
          if (qword_280BE9398 != -1)
          {
            swift_once();
          }

          sub_2172A40F0(qword_280C026B8, v465, v466, v467, v468, v469, v470, v471, v536, v537, v538, v539, v540[0], v540[1], SWORD2(v540[1]), SBYTE6(v540[1]), HIBYTE(v540[1]), v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          v474 = sub_217653F78(v472, v473);
          v476 = v475;

          if (v476)
          {
            v474 = 0;
            v477 = 0;
            *&v542[16] = 0;
            *&v542[8] = 0;
          }

          else
          {
            v477 = MEMORY[0x277D83B88];
          }

          *v542 = v474;
          v478 = OUTLINED_FUNCTION_3_115(v477);
          sub_21729D4DC(v478, 31, v479, v480, v481, v482, v483, v484, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
          if (qword_280BE91A0 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_16_69();
          sub_2176CA4DC(v485, v486, v487, v488, v489, v490, v491, v492, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
          v493 = v542[0];
          switch(v542[0])
          {
            case 1:
              v493 = 1;
              goto LABEL_161;
            case 2:
              v493 = 2;
              goto LABEL_161;
            case 3:
              v493 = 3;
              goto LABEL_161;
            case 4:
              v493 = 4;
              goto LABEL_161;
            case 5:
              v493 = 5;
              goto LABEL_161;
            case 6:
              v493 = 6;
              goto LABEL_161;
            case 7:
              v493 = 7;
              goto LABEL_161;
            case 8:
              v493 = 8;
              goto LABEL_161;
            case 9:
              v493 = 9;
              goto LABEL_161;
            case 0xA:
              OUTLINED_FUNCTION_7_80();
              goto LABEL_162;
            default:
LABEL_161:
              v494 = [objc_opt_self() rawValueForPlaylistType_];
              OUTLINED_FUNCTION_25_55(v494);
LABEL_162:
              v495 = OUTLINED_FUNCTION_4_119();
              sub_21729D4DC(v495, 32, v496, v497, v498, v499, v500, v501, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
              if (qword_280BE9288 != -1)
              {
                swift_once();
              }

              OUTLINED_FUNCTION_16_69();
              sub_2176CB348(v502, v503, v504, v505, v506, v507, v508, v509, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15]);
              if (v542[8])
              {
                OUTLINED_FUNCTION_7_80();
              }

              else
              {
                v510 = [objc_opt_self() rawValueForEditableComponents_];
                OUTLINED_FUNCTION_25_55(v510);
              }

              v511 = v539;
              v512 = OUTLINED_FUNCTION_4_119();
              sub_21729D4DC(v512, 33, v513, v514, v515, v516, v517, v518, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
              if (qword_280BE9218 != -1)
              {
                swift_once();
              }

              sub_2176CA488(qword_280C025E0, v519, v520, v521, v522, v523, v524, v525, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9], v540[10], v540[11], v540[12], v540[13], v540[14], v540[15], v540[16], v540[17]);
              v526 = sub_2177516D8();
              if (__swift_getEnumTagSinglePayload(v511, 1, v526) == 1)
              {
                sub_2171F0790(v511, &unk_27CB277C0, &qword_217758DC0);
                OUTLINED_FUNCTION_7_80();
              }

              else
              {
                *&v542[24] = v526;
                __swift_allocate_boxed_opaque_existential_0(v542);
                OUTLINED_FUNCTION_41_0();
                (*(v527 + 32))();
              }

              v528 = OUTLINED_FUNCTION_4_119();
              sub_21729D4DC(v528, 34, v529, v530, v531, v532, v533, v534, v536, v537, v538, v539, v540[0], v540[1], v540[2], v540[3], v540[4], v540[5], v540[6], v540[7], v540[8], v540[9]);
              return v545;
          }
      }
  }
}

void Playlist.LegacyModelPlaylistPropertyKey.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_217753158();

  v5 = 0;
  v6 = 18;
  switch(v4)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v5 = 1;
      goto LABEL_28;
    case 2:
      v5 = 2;
      goto LABEL_28;
    case 3:
      v5 = 3;
      goto LABEL_28;
    case 4:
      v5 = 4;
      goto LABEL_28;
    case 5:
      v5 = 5;
      goto LABEL_28;
    case 6:
      v5 = 6;
      goto LABEL_28;
    case 7:
      v5 = 7;
      goto LABEL_28;
    case 8:
      v5 = 8;
      goto LABEL_28;
    case 9:
      v5 = 9;
      goto LABEL_28;
    case 10:
      v5 = 10;
      goto LABEL_28;
    case 11:
      v5 = 11;
      goto LABEL_28;
    case 12:
      v5 = 12;
      goto LABEL_28;
    case 13:
      v5 = 13;
      goto LABEL_28;
    case 14:
      v5 = 14;
      goto LABEL_28;
    case 15:
      v5 = 15;
      goto LABEL_28;
    case 16:
      v5 = 16;
      goto LABEL_28;
    case 17:
      v5 = 17;
LABEL_28:
      v6 = v5;
      break;
    case 18:
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    default:
      v6 = 36;
      break;
  }

  *a3 = v6;
}

unint64_t sub_2176B2914@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176B29B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_2176B2A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8538;
  if (!qword_280BE8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8538);
  }

  return result;
}

unint64_t sub_2176B2A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A5038(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_2176B2A90(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2176B2A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE26B0;
  if (!qword_280BE26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE26B0);
  }

  return result;
}

unint64_t sub_2176B2AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C920;
  if (!qword_27CB2C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C920);
  }

  return result;
}

uint64_t _s30LegacyModelPlaylistPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s30LegacyModelPlaylistPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

uint64_t RecentlyPlayedMusicItem.id.getter()
{
  RecentlyPlayedMusicItem.innerItem.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

double RecentlyPlayedMusicItem.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_21733C220(v1, v7);
  v3 = off_27822AAB0[v10];
  a1[3] = off_27822AA98[v10];
  a1[4] = v3;
  v4 = swift_allocObject();
  *a1 = v4;
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  return result;
}

void *RecentlyPlayedMusicItem.artwork.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_21733C220(v1, &v36);
  if (v42)
  {
    if (v42 == 1)
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      OUTLINED_FUNCTION_23();
      Playlist.artwork.getter(v11);
      sub_21726B8C4(&v29);
    }

    else
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      if (qword_280BE6760 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_23();
      sub_2176CABE4(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, __src[0], __src[1], __src[2]);
      sub_217283DC8(&v29);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (qword_280BE9428 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA9A8(v12, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, __src[0], __src[1], __src[2]);
    sub_21725CE44(&v29);
  }

  return memcpy(a1, __src, 0x221uLL);
}

void *RecentlyPlayedMusicItem.playParameters.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_21733C220(v1, &v43);
  if (v49)
  {
    if (v49 == 1)
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      if (qword_280BE9340 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_23();
      sub_2176CAD44(v11, v12, v13, v14, v15, v16, v17, v18, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, __src[0], __src[1], __src[2]);
      sub_21726B8C4(&v36);
    }

    else
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      if (qword_280BE67F0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_23();
      sub_2176CAC04(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, __src[0], __src[1], __src[2]);
      sub_217283DC8(&v36);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (qword_280BE9568 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAFA0(v19, v20, v21, v22, v23, v24, v25, v26, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, __src[0], __src[1], __src[2]);
    sub_21725CE44(&v36);
  }

  return memcpy(a1, __src, 0x78uLL);
}

uint64_t RecentlyPlayedMusicItem.title.getter()
{
  v1 = sub_21733C220(v0, &v19);
  if (v24)
  {
    if (v24 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14(v9);
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v11);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE6778 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      OUTLINED_FUNCTION_21_4();
      sub_217283DC8(&v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    if (qword_280BE9470 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v11);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t RecentlyPlayedMusicItem.subtitle.getter()
{
  v1 = sub_21733C220(v0, &v19);
  if (v24)
  {
    if (v24 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE93B0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14(v9);
      sub_21726B8C4(&v11);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      if (qword_280BE67C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      sub_217283DC8(&v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    if (qword_280BE9680 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v11);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static RecentlyPlayedMusicItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21733C220(a1, v54);
  sub_21733C220(a2, &v56);
  if (v55)
  {
    if (v55 == 1)
    {
      v4 = sub_21733C220(v54, &v48);
      if (v57 == 1)
      {
        OUTLINED_FUNCTION_2_0(v4, v5, v6, v7, v8, v9, v10, v11, v41, v42, v43, v44, v45, v46, v47, v48);
        v14 = v14 && v12 == v13;
        if (v14 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v48, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v15 = OUTLINED_FUNCTION_13_4();
          if (v2(v15))
          {
            sub_21726B8C4(&v41);
            sub_21726B8C4(&v48);
LABEL_31:
            sub_217635D18(v54);
            return 1;
          }
        }

        sub_21726B8C4(&v41);
        sub_21726B8C4(&v48);
        goto LABEL_35;
      }

      sub_21726B8C4(&v48);
    }

    else
    {
      v24 = sub_21733C220(v54, &v48);
      if (v57 == 2)
      {
        OUTLINED_FUNCTION_2_0(v24, v25, v26, v27, v28, v29, v30, v31, v41, v42, v43, v44, v45, v46, v47, v48);
        v34 = v14 && v32 == v33;
        if (v34 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v48, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v35 = OUTLINED_FUNCTION_13_4();
          if (v2(v35))
          {
            sub_217283DC8(&v41);
            sub_217283DC8(&v48);
            goto LABEL_31;
          }
        }

        sub_217283DC8(&v41);
        sub_217283DC8(&v48);
        goto LABEL_35;
      }

      sub_217283DC8(&v48);
    }
  }

  else
  {
    v16 = sub_21733C220(v54, &v48);
    if (!v57)
    {
      OUTLINED_FUNCTION_2_0(v16, v17, v18, v19, v20, v21, v22, v23, v41, v42, v43, v44, v45, v46, v47, v48);
      v38 = v14 && v36 == v37;
      if (v38 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v48, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v39 = OUTLINED_FUNCTION_13_4();
        if (v2(v39))
        {
          sub_21725CE44(&v41);
          sub_21725CE44(&v48);
          goto LABEL_31;
        }
      }

      sub_21725CE44(&v41);
      sub_21725CE44(&v48);
LABEL_35:
      sub_217635D18(v54);
      return 0;
    }

    sub_21725CE44(&v48);
  }

  sub_2176B4390(v54);
  return 0;
}

uint64_t RecentlyPlayedMusicItem.hash(into:)(uint64_t a1)
{
  v2 = sub_21733C220(v1, &v28);
  if (v33)
  {
    if (v33 == 1)
    {
      v10 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      MEMORY[0x21CEA3550](1, v10);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v22, v25);
      v11 = OUTLINED_FUNCTION_3_4();
      v12(v11);
      return sub_21726B8C4(&v20);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      MEMORY[0x21CEA3550](2, v17);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v22, v25);
      v18 = OUTLINED_FUNCTION_3_4();
      v19(v18);
      return sub_217283DC8(&v20);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    MEMORY[0x21CEA3550](0, v14);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v22, v25);
    v15 = OUTLINED_FUNCTION_3_4();
    v16(v15);
    return sub_21725CE44(&v20);
  }
}

uint64_t RecentlyPlayedMusicItem.hashValue.getter()
{
  sub_2177531E8();
  RecentlyPlayedMusicItem.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176B3684(uint64_t a1)
{
  sub_2177531E8();
  RecentlyPlayedMusicItem.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2176B36C0@<X0>(uint64_t *a1@<X8>)
{
  result = RecentlyPlayedMusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RecentlyPlayedMusicItem.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EF028();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RecentlyPlayedMusicItem.description.getter()
{
  sub_21733C220(v0, &v23);
  if (v28)
  {
    if (v28 == 1)
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_13_67();
      v9 = Playlist.description.getter();
      MEMORY[0x21CEA23B0](v9);

      OUTLINED_FUNCTION_18_1();
      sub_21726B8C4(&v15);
    }

    else
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_13_67();
      v11 = Station.description.getter();
      MEMORY[0x21CEA23B0](v11);

      OUTLINED_FUNCTION_18_1();
      sub_217283DC8(&v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_217752AA8();

    OUTLINED_FUNCTION_13_67();
    v10 = Album.description.getter();
    MEMORY[0x21CEA23B0](v10);

    OUTLINED_FUNCTION_18_1();
    sub_21725CE44(&v15);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t RecentlyPlayedMusicItem.debugDescription.getter()
{
  sub_21733C220(v0, v57);
  if (v58)
  {
    if (v58 == 1)
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_61();
      v1 = Playlist.debugDescription.getter();
      v9 = OUTLINED_FUNCTION_7_51(v1, v2, v3, v4, v5, v6, v7, v8, v47, v51);
      OUTLINED_FUNCTION_6_2(v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v15, v48, v52, v55);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_21726B8C4(v56);
    }

    else
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_61();
      v31 = Station.debugDescription.getter();
      v39 = OUTLINED_FUNCTION_7_51(v31, v32, v33, v34, v35, v36, v37, v38, v47, v51);
      OUTLINED_FUNCTION_6_2(v39, v40, v41, v42, v43, v44, MEMORY[0x277D837D0], v45, v50, v54, v55);
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_217283DC8(v56);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_12_61();
    v16 = Album.debugDescription.getter();
    v24 = OUTLINED_FUNCTION_7_51(v16, v17, v18, v19, v20, v21, v22, v23, v47, v51);
    OUTLINED_FUNCTION_6_2(v24, v25, v26, v27, v28, v29, MEMORY[0x277D837D0], v30, v49, v53, v55);
    OUTLINED_FUNCTION_15_9();
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_16_5();
    sub_21725CE44(v56);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2176B3A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217775F00;
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_280BE8A90 + 1);
  v2 = byte_280BE8AA0;
  *(v0 + 32) = xmmword_280BE8A90;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280BE8AE8;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_280BE8AF0 + 1);
  v5 = byte_280BE8B00;
  *(v0 + 56) = xmmword_280BE8AF0;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = qword_280BE8A38;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_280BE8A48;
  v8 = byte_280BE8A50;
  *(v0 + 80) = qword_280BE8A40;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  v9 = qword_280BE8AA8;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *algn_280BE8AB8;
  v11 = byte_280BE8AC0;
  *(v0 + 104) = qword_280BE8AB0;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  v12 = qword_280BE8A60;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_280BE8A70;
  v14 = byte_280BE8A78;
  *(v0 + 128) = qword_280BE8A68;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  qword_27CB8A308 = v0;

  return sub_217751DE8();
}

uint64_t sub_2176B3C48()
{
  if (qword_27CB23E38 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t RecentlyPlayedMusicItem.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v71, v4, v5);
  v6 = v71[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v7 = OUTLINED_FUNCTION_30_2(&xmmword_280BE8A90);
  v9 = v9 && v8 == v6;
  if (!v9 && (OUTLINED_FUNCTION_25_38(v7, v8) & 1) == 0)
  {
    if (qword_280BE8AE8 != -1)
    {
      swift_once();
    }

    v10 = OUTLINED_FUNCTION_30_2(&xmmword_280BE8AF0);
    v12 = v9 && v11 == v6;
    if (!v12 && (OUTLINED_FUNCTION_25_38(v10, v11) & 1) == 0)
    {
      if (qword_280BE8A38 != -1)
      {
        swift_once();
      }

      v28 = OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
      v30 = v9 && v29 == v6;
      if (v30 || (OUTLINED_FUNCTION_25_38(v28, v29) & 1) != 0)
      {
        goto LABEL_31;
      }

      if (qword_280BE8AA8 != -1)
      {
        swift_once();
      }

      v31 = OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
      v33 = v9 && v32 == v6;
      if (v33 || (OUTLINED_FUNCTION_25_38(v31, v32) & 1) != 0)
      {
LABEL_31:

        sub_2171FF30C(a1, v63);
        __swift_project_boxed_opaque_existential_1(v63, v64);
        v34 = OUTLINED_FUNCTION_8_49();
        v35(v34);
        v37 = v69;
        v36 = v70;
        sub_217751DE8();
        sub_217269F50(&v69);
        *&v65 = v37;
        *(&v65 + 1) = v36;
        v38 = __swift_project_boxed_opaque_existential_1(v63, v64);
        OUTLINED_FUNCTION_11_6(v38, v39, v40, v41, v42, v43, v44, v45, v62);
        __swift_destroy_boxed_opaque_existential_1(v63);
        v25 = 1;
        goto LABEL_16;
      }

      if (qword_280BE8A60 != -1)
      {
        swift_once();
      }

      v46 = OUTLINED_FUNCTION_30_2(&qword_280BE8A68);
      if (!v9 || v47 != v6)
      {
        v49 = OUTLINED_FUNCTION_25_38(v46, v47);

        if (v49)
        {
LABEL_41:
          sub_2171FF30C(a1, v63);
          __swift_project_boxed_opaque_existential_1(v63, v64);
          v50 = OUTLINED_FUNCTION_8_49();
          v51(v50);
          v53 = v69;
          v52 = v70;
          sub_217751DE8();
          sub_217269F50(&v69);
          *&v65 = v53;
          *(&v65 + 1) = v52;
          v54 = __swift_project_boxed_opaque_existential_1(v63, v64);
          OUTLINED_FUNCTION_11_6(v54, v55, v56, v57, v58, v59, v60, v61, v62);
          __swift_destroy_boxed_opaque_existential_1(v63);
          v25 = 2;
          goto LABEL_16;
        }

        v62 = 211;
        sub_217752D08();
        __break(1u);
      }

      goto LABEL_41;
    }
  }

  sub_2171FF30C(a1, v63);
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v13 = OUTLINED_FUNCTION_8_49();
  v14(v13);
  v16 = v69;
  v15 = v70;
  sub_217751DE8();
  sub_217269F50(&v69);
  *&v65 = v16;
  *(&v65 + 1) = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v63, v64);
  OUTLINED_FUNCTION_11_6(v17, v18, v19, v20, v21, v22, v23, v24, v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v25 = 0;
LABEL_16:
  v26 = v66;
  *a2 = v65;
  *(a2 + 16) = v26;
  *(a2 + 32) = v67;
  *(a2 + 48) = v68;
  *(a2 + 56) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static RecentlyPlayedMusicItem.typeValue.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23E40 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2C928);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2176B4110()
{
  if (qword_27CB23E40 != -1)
  {
    swift_once();
  }

  xmmword_27CB2C948 = xmmword_27CB2C928;
  qword_27CB2C958 = qword_27CB2C938;
  unk_27CB2C960 = unk_27CB2C940;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.recentlyPlayedMusicItem.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23E48 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2C948);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2176B41F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643C0;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6220;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE6248;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE6250);
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  qword_27CB2C968 = v0;

  return sub_217751DE8();
}

uint64_t static RecentlyPlayedMusicItem.supportedTypeValues.getter()
{
  if (qword_27CB23E50 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2176B4390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C970, &unk_217794CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2176B43FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C978;
  if (!qword_27CB2C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C978);
  }

  return result;
}

uint64_t (*sub_2176B446C(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_217751428() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void static URL.valueForQueryItem(named:extractedFrom:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v64 = v3;
  v65 = v2;
  v66 = v4;
  v5 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v24 = sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v63 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v62 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v29);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = &v57 - v31;
  v33 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  if (!v1)
  {
    goto LABEL_28;
  }

  v60 = v38;
  v61 = v35;
  sub_2177516C8();
  OUTLINED_FUNCTION_133(v32, 1, v33);
  if (v44)
  {
    v39 = &unk_27CB277C0;
    v40 = &qword_217758DC0;
    v41 = v32;
    goto LABEL_27;
  }

  v64 = v16;
  v42 = v60;
  v43 = v61;
  (*(v61 + 32))(v60, v32, v33);
  sub_217751478();
  OUTLINED_FUNCTION_133(v23, 1, v24);
  if (v44)
  {
    (*(v43 + 8))(v42, v33);
    v39 = &qword_27CB277B8;
    v40 = &unk_21776B220;
    v41 = v23;
    goto LABEL_27;
  }

  v59 = v33;
  (*(v63 + 32))(v62, v23, v24);
  v45 = sub_217751448();
  if (!v45)
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
    v53 = v64;
LABEL_24:
    sub_2175471C0(v19, v53);
    OUTLINED_FUNCTION_133(v53, 1, v5);
    if (!v44)
    {
      sub_217751418();
      sub_2171F06D8(v19, &qword_27CB294E8, &qword_217776E50);
      (*(v63 + 8))(v62, v24);
      (*(v61 + 8))(v60, v59);
      (*(v7 + 8))(v53, v5);
LABEL_28:
      OUTLINED_FUNCTION_13();
      return;
    }

    sub_2171F06D8(v19, &qword_27CB294E8, &qword_217776E50);
    (*(v63 + 8))(v62, v24);
    (*(v61 + 8))(v60, v59);
    v41 = v53;
    v39 = &qword_27CB294E8;
    v40 = &qword_217776E50;
LABEL_27:
    sub_2171F06D8(v41, v39, v40);
    goto LABEL_28;
  }

  v46 = v45;
  v57 = v24;
  v58 = v19;
  v47 = 0;
  v48 = *(v45 + 16);
  while (1)
  {
    if (v48 == v47)
    {

      v19 = v58;
      v54 = v58;
      v55 = 1;
      goto LABEL_23;
    }

    if (v47 >= *(v46 + 16))
    {
      break;
    }

    (*(v7 + 16))(v11, v46 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v47, v5);
    if (sub_217751408() == v65 && v49 == v66)
    {

LABEL_22:

      v19 = v58;
      (*(v7 + 32))(v58, v11, v5, v56);
      v54 = v19;
      v55 = 0;
LABEL_23:
      __swift_storeEnumTagSinglePayload(v54, v55, 1, v5);
      v53 = v64;
      v24 = v57;
      goto LABEL_24;
    }

    v51 = sub_217753058();

    if (v51)
    {
      goto LABEL_22;
    }

    (*(v7 + 8))(v11, v5, v52);
    ++v47;
  }

  __break(1u);
}

void static URL.resourceTypes(extractedFrom:)()
{
  OUTLINED_FUNCTION_12();
  static URL.valueForQueryItem(named:extractedFrom:)();
  v1 = MEMORY[0x277D84F90];
  if (v2)
  {
    v23[0] = 44;
    v23[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v0);
    v21[2] = v23;
    sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2171F87CC, v21, v3, v4, &v22);
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v23[0] = v1;
      sub_2172763CC(0, v7, 0);
      v8 = v23[0];
      v22 = v6;
      v9 = (v6 + 56);
      do
      {
        v10 = *(v9 - 3);
        v11 = *(v9 - 2);
        v12 = *(v9 - 1);
        v13 = *v9;
        sub_217751DE8();
        v14 = MEMORY[0x21CEA2320](v10, v11, v12, v13);
        v16 = v15;
        sub_217751DE8();
        v17 = sub_2173C74C0();

        v23[0] = v8;
        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2172763CC(v18 > 1, v19 + 1, 1);
          v8 = v23[0];
        }

        *(v8 + 16) = v19 + 1;
        v20 = v8 + 24 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17 & 1;
        v9 += 4;
        --v7;
      }

      while (v7);
    }
  }

  OUTLINED_FUNCTION_13();
}

void static URL.modifiedRelativeURLLocation(byApplying:to:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v62 = v3;
  v61 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v64 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v63 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_12_62();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_1();
  v65 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v27 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  if (!v2)
  {
    goto LABEL_9;
  }

  v60 = v29;
  sub_2177516C8();
  OUTLINED_FUNCTION_133(v26, 1, v27);
  if (v37)
  {
    v33 = &unk_27CB277C0;
    v34 = &qword_217758DC0;
    v35 = v26;
LABEL_8:
    sub_2171F06D8(v35, v33, v34);
    goto LABEL_9;
  }

  v36 = v60;
  (*(v60 + 32))(v32, v26, v27);
  sub_217751478();
  OUTLINED_FUNCTION_133(v0, 1, v10);
  if (v37)
  {
    (*(v36 + 8))(v32, v27);
    v33 = &qword_27CB277B8;
    v34 = &unk_21776B220;
    v35 = v0;
    goto LABEL_8;
  }

  v38 = v12;
  (*(v12 + 32))(v19, v0, v10);
  (*(v12 + 16))(v16, v19, v10);
  v67 = MEMORY[0x277D84F90];
  v66 = 0;
  v39 = sub_217751448();
  v40 = v62;
  if (!v39 || (v41 = v39, MEMORY[0x28223BE20](v39), *(&v59 - 4) = v40, *(&v59 - 3) = &v67, *(&v59 - 2) = &v66, sub_2176B446C(sub_2176B5C60, (&v59 - 6), v41), , v66 != 1))
  {
    v42 = v40;
    v43 = v61;
    (*(v64 + 16))(v63, v42, v61);
    v44 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v51, v52, v53, v44);
      v44 = v54;
    }

    v46 = *(v44 + 16);
    v45 = *(v44 + 24);
    if (v46 >= v45 >> 1)
    {
      v55 = OUTLINED_FUNCTION_11_1(v45);
      sub_2172B1A50(v55, v56, v57, v44);
      v44 = v58;
    }

    *(v44 + 16) = v46 + 1;
    (*(v64 + 32))(v44 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v46, v63, v43);
    v67 = v44;
  }

  sub_217751DE8();
  sub_217751458();
  v47 = v65;
  sub_217751488();
  OUTLINED_FUNCTION_133(v47, 1, v27);
  if (v37)
  {
    v48 = *(v38 + 8);
    v48(v16, v10);
    v48(v19, v10);
    (*(v60 + 8))(v32, v27);
    sub_2171F06D8(v47, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    sub_217751668();
    v49 = *(v38 + 8);
    v49(v16, v10);
    v49(v19, v10);
    v50 = *(v60 + 8);
    v50(v32, v27);
    v50(v65, v27);
  }

LABEL_9:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176B5230(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v8 = sub_217751408();
  v10 = v9;
  if (v8 == sub_217751408() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_217753058();

    if ((v13 & 1) == 0)
    {
      sub_21770B7A4();
      v14 = *(*a3 + 16);
      sub_21770BAD4(v14);
      v15 = *a3;
      *(*a3 + 16) = v14 + 1;
      v16 = sub_217751428();
      return (*(*(v16 - 8) + 16))(v15 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v14, a1, v16);
    }
  }

  sub_21770B7A4();
  v18 = *(*a3 + 16);
  sub_21770BAD4(v18);
  v19 = *a3;
  *(*a3 + 16) = v18 + 1;
  v20 = sub_217751428();
  result = (*(*(v20 - 8) + 16))(v19 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * v18, a2, v20);
  *a4 = 1;
  return result;
}

void URL.appending(_:)()
{
  OUTLINED_FUNCTION_12();
  v53 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v54 = &v52 - v6;
  v7 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_12_62();
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  sub_217751478();
  OUTLINED_FUNCTION_133(v0, 1, v16);
  if (v26)
  {
    sub_2171F06D8(v0, &qword_27CB277B8, &unk_21776B220);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_9_82();
    v56 = v45 + 3;
    v57 = v44;
    sub_2177516D8();
    sub_2176B5C80(&qword_27CB254C8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v46 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v46);

    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B52F0, v47);
  }

  else
  {
    (*(v18 + 32))(v25, v0, v16);
    (*(v18 + 16))(v22, v25, v16);
    v27 = sub_217751448();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    (*(v9 + 16))(v13, v53, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v36, v37, v38, v28);
      v28 = v39;
    }

    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v31 >= v30 >> 1)
    {
      v40 = OUTLINED_FUNCTION_11_1(v30);
      sub_2172B1A50(v40, v41, v42, v28);
      v28 = v43;
    }

    *(v28 + 16) = v31 + 1;
    (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v13, v7);
    sub_217751DE8();
    sub_217751458();
    v32 = v54;
    sub_217751488();
    v33 = sub_2177516D8();
    OUTLINED_FUNCTION_133(v32, 1, v33);
    if (!v26)
    {
      v34 = *(v18 + 8);
      v34(v22, v16);
      v34(v25, v16);

      (*(*(v33 - 8) + 32))(v55, v32, v33, v35);
      OUTLINED_FUNCTION_13();
      return;
    }

    sub_2171F06D8(v32, &unk_27CB277C0, &qword_217758DC0);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_9_82();
    v56 = v49 + 14;
    v57 = v48;
    sub_2176B5C80(&qword_27CB2C980, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
    v50 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v50);

    MEMORY[0x21CEA23B0](0x52552061206F7420, 0xEA00000000002E4CLL, v51);
  }

  sub_217752D08();
  __break(1u);
}

void sub_2176B5914(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
LABEL_40:
    sub_2172B1A90(a7 > 1, v10, 1, v14);
    v14 = v36;
LABEL_38:
    *(v14 + 16) = v10;
    v35 = (v14 + 32 * v9);
    v35[4] = v7;
    v35[5] = v11;
    v35[6] = v12;
    v35[7] = v13;
    return;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return;
    }

    sub_217752118();
    OUTLINED_FUNCTION_7_81();
    sub_2172B1A90(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v34;
    v9 = *(v34 + 16);
    a7 = *(v34 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  v7 = a4;
  v14 = 4 * v16;
  v48 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v46;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_5_98();
      v18 = sub_2177520F8();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_5_98();
      v17 = sub_217752018();
    }

    v22 = (v46 >> 14 == v13) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = sub_217752118();
    v42 = v24;
    v43 = v23;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = OUTLINED_FUNCTION_17();
      sub_2172B1A90(v28, v29, v30, v31);
      v48 = v32;
    }

    v13 = *(v48 + 16);
    v26 = *(v48 + 24);
    v12 = v13 + 1;
    if (v13 >= v26 >> 1)
    {
      sub_2172B1A90(v26 > 1, v13 + 1, 1, v48);
      v48 = v33;
    }

    *(v48 + 16) = v12;
    v27 = (v48 + 32 * v13);
    v27[4] = v47;
    v27[5] = v43;
    v27[6] = v42;
    v27[7] = v41;
LABEL_20:
    OUTLINED_FUNCTION_5_98();
    v17 = sub_217752018();
    if ((v22 & 1) == 0 && *(v48 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_217752118();
        OUTLINED_FUNCTION_7_81();
        v14 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      v37 = OUTLINED_FUNCTION_17();
      sub_2172B1A90(v37, v38, v39, v14);
      v14 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
}

uint64_t sub_2176B5C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void ArtistPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v44 = v0;
  v45 = v1;
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memcpy(__dst, v12, sizeof(__dst));
  v13 = *v9;
  v14 = v9[1];
  v15 = *(v9 + 16);
  sub_2172A497C(__src);
  memcpy(v11, __src, 0x221uLL);
  v16 = type metadata accessor for ArtistPropertyProvider(0);
  *(v11 + 552) = 0u;
  v17 = v16[6];
  sub_2177516D8();
  OUTLINED_FUNCTION_15_10(v11 + v17);
  *(v11 + v16[7]) = 0;
  v18 = (v11 + v16[8]);
  *v18 = xmmword_2177586D0;
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = 0u;
  *(v11 + v16[9]) = 0;
  *(v11 + v16[10]) = 0;
  *(v11 + v16[11]) = 2;
  *(v11 + v16[12]) = 2;
  *(v11 + v16[13]) = 2;
  *(v11 + v16[14]) = 2;
  memcpy((v11 + v16[15]), __src, 0x221uLL);
  v19 = (v11 + v16[16]);
  *v19 = 0;
  v19[1] = 0;
  OUTLINED_FUNCTION_15_10(v11 + v16[17]);
  OUTLINED_FUNCTION_57_26(v16[18]);
  OUTLINED_FUNCTION_57_26(v16[19]);
  OUTLINED_FUNCTION_57_26(v16[20]);
  OUTLINED_FUNCTION_57_26(v16[21]);
  v20 = v16[22];
  sub_2177517D8();
  OUTLINED_FUNCTION_15_10(v11 + v20);
  *(v11 + v16[23]) = 3;
  OUTLINED_FUNCTION_15_10(v11 + v16[24]);
  OUTLINED_FUNCTION_57_26(v16[25]);
  v21 = v11 + v16[26];
  *(v21 + 96) = 0;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  OUTLINED_FUNCTION_2_3(v16[27], 0);
  v22 = (v11 + v16[28]);
  v22[6] = v23;
  v22[7] = v23;
  v22[4] = v23;
  v22[5] = v23;
  v22[2] = v23;
  v22[3] = v23;
  *v22 = v23;
  v22[1] = v23;
  OUTLINED_FUNCTION_2_3(v16[29], v23);
  OUTLINED_FUNCTION_2_3(v16[30], v24);
  OUTLINED_FUNCTION_2_3(v16[31], v25);
  OUTLINED_FUNCTION_2_3(v16[32], v26);
  OUTLINED_FUNCTION_2_3(v16[33], v27);
  OUTLINED_FUNCTION_2_3(v16[34], v28);
  OUTLINED_FUNCTION_2_3(v16[35], v29);
  OUTLINED_FUNCTION_2_3(v16[36], v30);
  OUTLINED_FUNCTION_2_3(v16[37], v31);
  OUTLINED_FUNCTION_2_3(v16[38], v32);
  OUTLINED_FUNCTION_2_3(v16[39], v33);
  OUTLINED_FUNCTION_2_3(v16[40], v34);
  OUTLINED_FUNCTION_2_3(v16[41], v35);
  OUTLINED_FUNCTION_2_3(v16[42], v36);
  OUTLINED_FUNCTION_2_3(v16[43], v37);
  *(v11 + v16[44]) = 0;
  if (qword_280BE3968 != -1)
  {
    swift_once();
  }

  v38 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v41 = sub_217752D28();

    v38 = v41;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v11 + v16[45]) = v38;
  v39 = (v11 + v16[48]);
  memcpy((v11 + v16[46]), __dst, 0x161uLL);
  v40 = v11 + v16[47];
  *v40 = v13;
  *(v40 + 8) = v14;
  *(v40 + 16) = v15;
  *v39 = v7;
  v39[1] = v5;
  *(v11 + v16[49]) = v42;
  *(v11 + v16[50]) = v43;
  *(v11 + v16[51]) = v44;
  *(v11 + v16[52]) = v45;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for ArtistPropertyProvider(uint64_t a1)
{
  result = qword_280BE3948;
  if (!qword_280BE3948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArtistPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *ArtistPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

void ArtistPropertyProvider.biography.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 552) = a1;
  *(v2 + 560) = a2;
}

uint64_t ArtistPropertyProvider.editorialArtworks.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

void ArtistPropertyProvider.editorialArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 28);

  *(v1 + v2) = v0;
}

uint64_t ArtistPropertyProvider.editorialNotes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_89_19() + 32));
  v4 = v2[3];
  v9 = v2[2];
  v3 = v9;
  v10 = v4;
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *v0 = v8[0];
  v0[1] = v5;
  v0[2] = v3;
  v0[3] = v4;
  return sub_21726A630(v8, &v7, &qword_27CB24B70, &unk_217759460);
}

__n128 ArtistPropertyProvider.editorialNotes.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_82_15() + 32));
  v3 = v2[3];
  v8[2] = v2[2];
  v8[3] = v3;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

uint64_t ArtistPropertyProvider.editorialVideoArtworks.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

void ArtistPropertyProvider.editorialVideoArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 36);

  *(v1 + v2) = v0;
}

uint64_t ArtistPropertyProvider.genreNames.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

void ArtistPropertyProvider.genreNames.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 40);

  *(v1 + v2) = v0;
}

uint64_t ArtistPropertyProvider.hasBonusContent.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.hasMusicEvents.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.isClassicalExperienceAvailable.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.isPinned.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.mainUberArtwork.getter()
{
  v2 = *(OUTLINED_FUNCTION_89_19() + 60);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  memcpy(v0, (v1 + v2), 0x221uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB24400, &unk_21775E9A0);
}

void *ArtistPropertyProvider.mainUberArtwork.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 60);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + v2), v0, 0x221uLL);
}

uint64_t ArtistPropertyProvider.name.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void ArtistPropertyProvider.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  v6 = (v2 + *(type metadata accessor for ArtistPropertyProvider(v5) + 64));

  *v6 = v3;
  v6[1] = a2;
}

void ArtistPropertyProvider.albumCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for ArtistPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 72));
}

void ArtistPropertyProvider.cleanTrackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for ArtistPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 76));
}

void ArtistPropertyProvider.downloadedCleanTrackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for ArtistPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 80));
}

void ArtistPropertyProvider.downloadedTrackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for ArtistPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 84));
}

uint64_t ArtistPropertyProvider.favoriteStatus.getter()
{
  result = OUTLINED_FUNCTION_89_19();
  *v0 = *(v1 + *(result + 92));
  return result;
}

uint64_t ArtistPropertyProvider.favoriteStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ArtistPropertyProvider(0);
  *(v1 + *(result + 92)) = v2;
  return result;
}

void ArtistPropertyProvider.trackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for ArtistPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 100));
}

uint64_t ArtistPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

void ArtistPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 176);

  *(v1 + v2) = v0;
}

void ArtistPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v154 = v0;
  v155 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v153 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v153 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EA8, &unk_217794FE0);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_155_3();
    sub_217752AA8();
    OUTLINED_FUNCTION_126_4();
    MEMORY[0x21CEA23B0](0xD000000000000025, 0x80000002177B5370);
    v158[0] = v3;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_121_4();
    v137 = 79;
    goto LABEL_182;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_60_31(qword_282959AF8);
  OUTLINED_FUNCTION_168(v21);
  OUTLINED_FUNCTION_997();

  if (v20)
  {
    v22 = v154;
    OUTLINED_FUNCTION_225_3(v158);
    v23 = v22;
    goto LABEL_4;
  }

  v25 = qword_280BE6A48;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_28_51(&qword_280BE6A48);
  }

  OUTLINED_FUNCTION_168(qword_280C021D8);
  OUTLINED_FUNCTION_997();

  if (v25)
  {
    v26 = *(v154 + 70);
    if (v26)
    {
      v27 = *(v154 + 69);
LABEL_12:
      sub_217751DE8();
      v28 = MEMORY[0x277D837D0];
LABEL_72:

      v65 = v155;
      *v155 = v27;
      v65[1] = v26;
      v65[2] = 0;
      v65[3] = v28;
      goto LABEL_223;
    }

    goto LABEL_71;
  }

  v32 = qword_280BE69D8;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_81_17(&qword_280BE69D8);
  }

  OUTLINED_FUNCTION_168(qword_280C021B8);
  OUTLINED_FUNCTION_997();

  if (v32)
  {
    v33 = type metadata accessor for ArtistPropertyProvider(0);
    v34 = OUTLINED_FUNCTION_59_24(*(v33 + 24));
    sub_21726A630(v34, v19, v35, v36);
    sub_2177516D8();
    OUTLINED_FUNCTION_73(v19);
    if (!v24)
    {
      goto LABEL_106;
    }

    v37 = &unk_27CB277C0;
    v38 = &qword_217758DC0;
    v39 = v19;
    goto LABEL_20;
  }

  v40 = qword_280BE68F0;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_27_48(&qword_280BE68F0);
  }

  OUTLINED_FUNCTION_168(qword_280C02170);
  OUTLINED_FUNCTION_997();

  if (v40)
  {
    type metadata accessor for ArtistPropertyProvider(0);
    OUTLINED_FUNCTION_118_13();
    if (v40)
    {
      v41 = &qword_27CB24BE8;
      v42 = &qword_2177595F0;
LABEL_26:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      sub_217751DE8();
LABEL_222:

      v152 = v155;
      *v155 = v40;
      v152[1] = 0;
      v152[2] = 0;
      v152[3] = v43;
      goto LABEL_223;
    }

    goto LABEL_221;
  }

  v46 = qword_280BE6998;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_280BE6998);
  }

  OUTLINED_FUNCTION_168(qword_280C021A0);
  OUTLINED_FUNCTION_997();

  if (v46)
  {
    v47 = &v154[*(type metadata accessor for ArtistPropertyProvider(0) + 32)];
    v49 = *v47;
    v48 = *(v47 + 1);
    v50 = *(v47 + 3);
    *&v157[16] = *(v47 + 2);
    *&v157[32] = v50;
    *v157 = *(v47 + 1);
    if (v48 != 1)
    {
      v29 = swift_allocObject();
      *&v159[0] = v49;
      *(&v159[0] + 1) = v48;
      v51 = *(v47 + 2);
      v159[1] = *(v47 + 1);
      v159[2] = v51;
      v159[3] = *(v47 + 3);
      sub_217350F74(v159, v158);

      *(v29 + 16) = v49;
      *(v29 + 24) = v48;
      v52 = *&v157[16];
      *(v29 + 32) = *v157;
      *(v29 + 48) = v52;
      *(v29 + 64) = *&v157[32];
      v30 = &type metadata for EditorialNotes;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v40 = qword_280BE68D0;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_26_43(&qword_280BE68D0);
  }

  OUTLINED_FUNCTION_168(qword_280C02158);
  OUTLINED_FUNCTION_997();

  if (v40)
  {
    type metadata accessor for ArtistPropertyProvider(0);
    OUTLINED_FUNCTION_118_13();
    if (v40)
    {
      v41 = &qword_27CB24BE0;
      v42 = &unk_2177657E0;
      goto LABEL_26;
    }

LABEL_221:
    v43 = 0;
    goto LABEL_222;
  }

  v40 = qword_280BE6A28;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_79_19(&qword_280BE6A28);
  }

  OUTLINED_FUNCTION_168(qword_280C021D0);
  OUTLINED_FUNCTION_997();

  if (v40)
  {
    type metadata accessor for ArtistPropertyProvider(0);
    OUTLINED_FUNCTION_118_13();
    if (v40)
    {
      v41 = &qword_27CB24C58;
      v42 = &unk_2177677B0;
      goto LABEL_26;
    }

    goto LABEL_221;
  }

  v53 = qword_280BE6928;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_25_56(&qword_280BE6928);
  }

  OUTLINED_FUNCTION_168(qword_280C02180);
  OUTLINED_FUNCTION_997();

  if (v53)
  {
    v54 = *(type metadata accessor for ArtistPropertyProvider(0) + 44);
LABEL_59:
    v58 = v154[v54];

    v59 = MEMORY[0x277D839B0];
    if (v58 == 2)
    {
      v59 = 0;
    }

    v60 = v155;
    *v155 = v58 & 1;
    v60[1] = 0;
    v60[2] = 0;
    v60[3] = v59;
    goto LABEL_223;
  }

  v55 = qword_280BE6A50;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_24_49(&qword_280BE6A50);
  }

  OUTLINED_FUNCTION_168(qword_280C021E0);
  OUTLINED_FUNCTION_997();

  if (v55)
  {
    v54 = *(type metadata accessor for ArtistPropertyProvider(0) + 48);
    goto LABEL_59;
  }

  v56 = qword_280BE68B0;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_78_18(&qword_280BE68B0);
  }

  OUTLINED_FUNCTION_168(qword_280C02148);
  OUTLINED_FUNCTION_997();

  if (v56)
  {
    v54 = *(type metadata accessor for ArtistPropertyProvider(0) + 52);
    goto LABEL_59;
  }

  v57 = qword_280BE6840;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_77_17(&qword_280BE6840);
  }

  OUTLINED_FUNCTION_168(qword_280C02130);
  OUTLINED_FUNCTION_997();

  if (v57)
  {
    v54 = *(type metadata accessor for ArtistPropertyProvider(0) + 56);
    goto LABEL_59;
  }

  v61 = qword_280BE6940;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_76_19(&qword_280BE6940);
  }

  OUTLINED_FUNCTION_168(qword_280C02190);
  OUTLINED_FUNCTION_997();

  if (v61)
  {
    v62 = *(type metadata accessor for ArtistPropertyProvider(0) + 60);
    memcpy(v158, &v154[v62], 0x221uLL);
    v23 = &v154[v62];
LABEL_4:
    memcpy(v159, v23, 0x221uLL);
    OUTLINED_FUNCTION_104(v159);
    if (!v24)
    {
      v29 = swift_allocObject();
      memcpy(v157, v158, sizeof(v157));
      sub_217284028(v157, &v156);

      memcpy((v29 + 16), v159, 0x221uLL);
      v30 = &type metadata for Artwork;
LABEL_13:
      v31 = v155;
      *v155 = v29;
      v31[1] = 0;
      v31[2] = 0;
      v31[3] = v30;
      goto LABEL_223;
    }

LABEL_6:

    v30 = 0;
    v29 = 0;
    goto LABEL_13;
  }

  v63 = qword_280BE6898;

  if (v63 != -1)
  {
    OUTLINED_FUNCTION_6_98(&qword_280BE6898);
  }

  OUTLINED_FUNCTION_168(qword_280C02138);
  OUTLINED_FUNCTION_997();

  if (v63)
  {
    v64 = &v154[*(type metadata accessor for ArtistPropertyProvider(0) + 64)];
    v26 = v64[1];
    if (v26)
    {
      v27 = *v64;
      goto LABEL_12;
    }

LABEL_71:
    v28 = 0;
    v27 = 0;
    goto LABEL_72;
  }

  v66 = qword_280BE68A0;

  if (v66 != -1)
  {
    OUTLINED_FUNCTION_74_17(&qword_280BE68A0);
  }

  OUTLINED_FUNCTION_168(qword_280C02140);
  OUTLINED_FUNCTION_997();

  if (v66)
  {
    v67 = type metadata accessor for ArtistPropertyProvider(0);
    v68 = OUTLINED_FUNCTION_59_24(*(v67 + 68));
    sub_21726A630(v68, v16, v69, v70);
    sub_2177516D8();
    OUTLINED_FUNCTION_73(v16);
    if (!v24)
    {
      goto LABEL_106;
    }

    v37 = &unk_27CB277C0;
    v38 = &qword_217758DC0;
    v39 = v16;
    goto LABEL_20;
  }

  v71 = qword_280BE6A00;

  if (v71 != -1)
  {
    OUTLINED_FUNCTION_73_20(&qword_280BE6A00);
  }

  OUTLINED_FUNCTION_168(qword_280C021C8);
  OUTLINED_FUNCTION_997();

  if (v71)
  {
    type metadata accessor for ArtistPropertyProvider(0);
    OUTLINED_FUNCTION_165();
    v73 = *(v72 + 72);
    goto LABEL_83;
  }

  v76 = qword_280BE69B8;

  if (v76 != -1)
  {
    OUTLINED_FUNCTION_72_18(&qword_280BE69B8);
  }

  OUTLINED_FUNCTION_168(qword_280C021B0);
  OUTLINED_FUNCTION_997();

  if (v76)
  {
    v77 = type metadata accessor for ArtistPropertyProvider(0);
    v78 = OUTLINED_FUNCTION_59_24(*(v77 + 88));
    sub_21726A630(v78, v11, v79, v80);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v11);
    if (!v24)
    {
      goto LABEL_106;
    }

    v37 = &qword_27CB241C0;
    v38 = &qword_217759480;
    v39 = v11;
    goto LABEL_20;
  }

  v81 = qword_280BE6960;

  if (v81 != -1)
  {
    OUTLINED_FUNCTION_10_33(&qword_280BE6960);
  }

  OUTLINED_FUNCTION_168(qword_280C02198);
  OUTLINED_FUNCTION_997();

  if ((v81 & 1) == 0)
  {
    v86 = qword_280BE6918;

    if (v86 != -1)
    {
      OUTLINED_FUNCTION_70_20(&qword_280BE6918);
    }

    OUTLINED_FUNCTION_168(qword_280C02178);
    OUTLINED_FUNCTION_997();

    if (v86)
    {
      v87 = type metadata accessor for ArtistPropertyProvider(0);
      v88 = OUTLINED_FUNCTION_59_24(*(v87 + 96));
      sub_21726A630(v88, v8, v89, v90);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v8);
      if (!v24)
      {
LABEL_106:
        OUTLINED_FUNCTION_129_13();
        OUTLINED_FUNCTION_41_0();
        (*(v92 + 32))();

        goto LABEL_27;
      }

      v37 = &qword_27CB241C0;
      v38 = &qword_217759480;
      v39 = v8;
LABEL_20:
      sub_2171F0738(v39, v37, v38);
      memset(v159, 0, 32);
LABEL_27:
      v44 = v159[1];
      v45 = v155;
      *v155 = v159[0];
      *(v45 + 1) = v44;
      goto LABEL_223;
    }

    v71 = qword_280BE6938;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_69_20(&qword_280BE6938);
    }

    OUTLINED_FUNCTION_168(qword_280C02188);
    OUTLINED_FUNCTION_997();

    if (v71)
    {
      type metadata accessor for ArtistPropertyProvider(0);
      OUTLINED_FUNCTION_165();
      v73 = *(v91 + 76);
      goto LABEL_83;
    }

    v71 = qword_280BE68C0;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_68_25(&qword_280BE68C0);
    }

    OUTLINED_FUNCTION_168(qword_280C02150);
    OUTLINED_FUNCTION_997();

    if (v71)
    {
      type metadata accessor for ArtistPropertyProvider(0);
      OUTLINED_FUNCTION_165();
      v73 = *(v93 + 80);
      goto LABEL_83;
    }

    v71 = qword_280BE68D8;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_67_21(&qword_280BE68D8);
    }

    OUTLINED_FUNCTION_168(qword_280C02160);
    OUTLINED_FUNCTION_997();

    if (v71)
    {
      type metadata accessor for ArtistPropertyProvider(0);
      OUTLINED_FUNCTION_165();
      v73 = *(v94 + 84);
      goto LABEL_83;
    }

    v95 = qword_280BE69F8;

    if (v95 != -1)
    {
      OUTLINED_FUNCTION_65_26(&qword_280BE69F8);
    }

    OUTLINED_FUNCTION_168(qword_280C021C0);
    OUTLINED_FUNCTION_997();

    if (v95)
    {
      v19 = 0;
      v71 = 0;
      v73 = *(type metadata accessor for ArtistPropertyProvider(0) + 100);
LABEL_83:
      v74 = &v154[v73];
      if ((v74[1] & 1) == 0)
      {
        v19 = *v74;
        v71 = MEMORY[0x277D83B88];
      }

      goto LABEL_85;
    }

    v96 = qword_280BE6880;

    if (v96 != -1)
    {
      OUTLINED_FUNCTION_3_12(&qword_280BE6880);
    }

    OUTLINED_FUNCTION_168(qword_280BE6888);
    OUTLINED_FUNCTION_997();

    if (v96)
    {
      v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 104);
    }

    else
    {
      v101 = qword_280BE69A8;

      if (v101 != -1)
      {
        OUTLINED_FUNCTION_22_57(&qword_280BE69A8);
      }

      OUTLINED_FUNCTION_168(qword_280C021A8);
      OUTLINED_FUNCTION_997();

      if (v101)
      {
        v102 = *(type metadata accessor for ArtistPropertyProvider(0) + 108);
LABEL_134:
        v103 = OUTLINED_FUNCTION_59_24(v102);
        sub_21726A630(v103, v159, v104, v105);
        if (*(&v159[5] + 1))
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
          goto LABEL_136;
        }

        v113 = &qword_27CB25310;
        v114 = &unk_21775D3D0;
LABEL_180:
        sub_2171F0738(v159, v113, v114);
        v19 = 0;
        v71 = 0;
        goto LABEL_86;
      }

      v108 = qword_280BE68E0;

      if (v108 != -1)
      {
        OUTLINED_FUNCTION_21_48(&qword_280BE68E0);
      }

      OUTLINED_FUNCTION_168(qword_280C02168);
      OUTLINED_FUNCTION_997();

      if (v108)
      {
        v109 = type metadata accessor for ArtistPropertyProvider(0);
        v110 = OUTLINED_FUNCTION_59_24(*(v109 + 112));
        sub_21726A630(v110, v159, v111, v112);
        if (*&v159[1])
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24338, &unk_217796E10);
          v19 = swift_allocObject();
          v106 = v19 + 16;
          v107 = 128;
          goto LABEL_137;
        }

        v113 = &unk_27CB24330;
        v114 = &unk_21775D460;
        goto LABEL_180;
      }

      v115 = qword_280BE6870;

      if (v115 != -1)
      {
        OUTLINED_FUNCTION_11_0(&qword_280BE6870);
      }

      OUTLINED_FUNCTION_168(qword_280BE6878);
      OUTLINED_FUNCTION_997();

      if (v115)
      {
        v116 = type metadata accessor for ArtistPropertyProvider(0);
        v117 = OUTLINED_FUNCTION_59_24(*(v116 + 116));
        sub_21726A630(v117, v159, v118, v119);
        if (*(&v159[5] + 1))
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C80, &unk_21775D420);
          goto LABEL_136;
        }

        v113 = &qword_27CB25320;
        v114 = &unk_21776E020;
        goto LABEL_180;
      }

      v120 = qword_280BE69E8;

      if (v120 != -1)
      {
        OUTLINED_FUNCTION_2_7(&qword_280BE69E8);
      }

      OUTLINED_FUNCTION_168(qword_280BE69F0);
      OUTLINED_FUNCTION_997();

      if (v120)
      {
        v121 = *(type metadata accessor for ArtistPropertyProvider(0) + 120);
LABEL_154:
        v122 = OUTLINED_FUNCTION_59_24(v121);
        sub_21726A630(v122, v159, v123, v124);
        if (*(&v159[5] + 1))
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25380, &unk_21775DAA0);
          goto LABEL_136;
        }

        v113 = &unk_27CB25338;
        v114 = &unk_21775D3E0;
        goto LABEL_180;
      }

      v125 = qword_280BE6820;

      if (v125 != -1)
      {
        OUTLINED_FUNCTION_18_57(&qword_280BE6820);
      }

      OUTLINED_FUNCTION_168(qword_280BE6828);
      OUTLINED_FUNCTION_997();

      if (v125)
      {
        v126 = *(type metadata accessor for ArtistPropertyProvider(0) + 124);
LABEL_161:
        v127 = OUTLINED_FUNCTION_59_24(v126);
        sub_21726A630(v127, v159, v128, v129);
        if (*(&v159[5] + 1))
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
          goto LABEL_136;
        }

        v113 = &qword_27CB25330;
        v114 = &unk_21775E9B0;
        goto LABEL_180;
      }

      v130 = qword_280BE6848;

      if (v130 != -1)
      {
        OUTLINED_FUNCTION_17_60(&qword_280BE6848);
      }

      OUTLINED_FUNCTION_168(qword_280BE6850);
      OUTLINED_FUNCTION_997();

      if (v130)
      {
        v131 = type metadata accessor for ArtistPropertyProvider(0);
        v132 = OUTLINED_FUNCTION_59_24(*(v131 + 128));
        sub_21726A630(v132, v159, v133, v134);
        if (*(&v159[5] + 1))
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255B8, &unk_21775D470);
          goto LABEL_136;
        }

        v113 = &unk_27CB255B0;
        v114 = &unk_217793B50;
        goto LABEL_180;
      }

      v135 = qword_280BE6950;

      if (v135 != -1)
      {
        OUTLINED_FUNCTION_16_70(&qword_280BE6950);
      }

      OUTLINED_FUNCTION_168(qword_280BE6958);
      OUTLINED_FUNCTION_997();

      if (v135)
      {
        v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 132);
      }

      else
      {
        v136 = qword_280BE6908;

        if (v136 != -1)
        {
          OUTLINED_FUNCTION_15_64(&qword_280BE6908);
        }

        OUTLINED_FUNCTION_168(qword_280BE6910);
        OUTLINED_FUNCTION_997();

        if ((v136 & 1) == 0)
        {
          while (1)
          {
            v138 = qword_280BE6980;

            if (v138 != -1)
            {
              OUTLINED_FUNCTION_14_62(&qword_280BE6980);
            }

            OUTLINED_FUNCTION_168(qword_280BE6988);
            OUTLINED_FUNCTION_997();

            if (v138)
            {
              v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 140);
              goto LABEL_128;
            }

            v139 = qword_280BE68F8;

            if (v139 != -1)
            {
              OUTLINED_FUNCTION_13_68(&qword_280BE68F8);
            }

            OUTLINED_FUNCTION_168(qword_280BE6900);
            OUTLINED_FUNCTION_997();

            if (v139)
            {
              v126 = *(type metadata accessor for ArtistPropertyProvider(0) + 144);
              goto LABEL_161;
            }

            v140 = qword_280BE6A30;

            if (v140 != -1)
            {
              OUTLINED_FUNCTION_12_63(&qword_280BE6A30);
            }

            OUTLINED_FUNCTION_168(qword_280BE6A38);
            OUTLINED_FUNCTION_997();

            if (v140)
            {
              v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 148);
              goto LABEL_128;
            }

            v141 = qword_280BE69C8;

            if (v141 != -1)
            {
              OUTLINED_FUNCTION_11_75(&qword_280BE69C8);
            }

            OUTLINED_FUNCTION_168(qword_280BE69D0);
            OUTLINED_FUNCTION_997();

            if (v141)
            {
              v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 152);
              goto LABEL_128;
            }

            v142 = qword_280BE6A10;

            if (v142 != -1)
            {
              OUTLINED_FUNCTION_10_68(&qword_280BE6A10);
            }

            OUTLINED_FUNCTION_168(qword_280BE6A18);
            OUTLINED_FUNCTION_997();

            if (v142)
            {
              v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 156);
              goto LABEL_128;
            }

            v143 = qword_280BE6968;

            if (v143 != -1)
            {
              OUTLINED_FUNCTION_9_83(&qword_280BE6968);
            }

            OUTLINED_FUNCTION_168(qword_280BE6970);
            OUTLINED_FUNCTION_997();

            if (v143)
            {
              v102 = *(type metadata accessor for ArtistPropertyProvider(0) + 160);
              goto LABEL_134;
            }

            v144 = qword_280BE6860;

            if (v144 != -1)
            {
              OUTLINED_FUNCTION_8_84(&qword_280BE6860);
            }

            OUTLINED_FUNCTION_168(qword_280BE6868);
            OUTLINED_FUNCTION_997();

            if (v144)
            {
              v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 164);
              goto LABEL_128;
            }

            v145 = qword_280BE6A58;

            if (v145 != -1)
            {
              OUTLINED_FUNCTION_7_82(&qword_280BE6A58);
            }

            OUTLINED_FUNCTION_168(qword_280BE6A60);
            OUTLINED_FUNCTION_997();

            if (v145)
            {
              v121 = *(type metadata accessor for ArtistPropertyProvider(0) + 168);
              goto LABEL_154;
            }

            v146 = qword_280BE6830;

            if (v146 != -1)
            {
              OUTLINED_FUNCTION_6_100(&qword_280BE6830);
            }

            OUTLINED_FUNCTION_168(qword_280BE6838);
            OUTLINED_FUNCTION_997();

            if (v146)
            {
              break;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
            swift_allocObject();
            v151 = OUTLINED_FUNCTION_54_0();
            OUTLINED_FUNCTION_168(v151);
            OUTLINED_FUNCTION_5_4();

            OUTLINED_FUNCTION_155_3();
            sub_217752AA8();
            OUTLINED_FUNCTION_126_4();
            MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
            v158[0] = v3;
            type metadata accessor for AnyMusicProperty();
            sub_217752C78();
            OUTLINED_FUNCTION_217_0();
            OUTLINED_FUNCTION_121_4();
            v137 = 171;
LABEL_182:
            v153 = v137;
            OUTLINED_FUNCTION_4_0("Fatal error");
            __break(1u);
          }

          v147 = type metadata accessor for ArtistPropertyProvider(0);
          v148 = OUTLINED_FUNCTION_59_24(*(v147 + 172));
          sub_21726A630(v148, v159, v149, v150);
          if (*(&v159[5] + 1))
          {
            v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27820, &qword_21775DAB0);
            goto LABEL_136;
          }

          v113 = &unk_27CB255A8;
          v114 = &unk_21775D450;
          goto LABEL_180;
        }

        v97 = *(type metadata accessor for ArtistPropertyProvider(0) + 136);
      }
    }

LABEL_128:
    v98 = OUTLINED_FUNCTION_59_24(v97);
    sub_21726A630(v98, v159, v99, v100);
    if (*(&v159[5] + 1))
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
LABEL_136:
      v19 = swift_allocObject();
      v106 = v19 + 16;
      v107 = 104;
LABEL_137:
      memcpy(v106, v159, v107);
LABEL_85:

LABEL_86:
      v75 = v155;
      *v155 = v19;
      v75[1] = 0;
      v75[2] = 0;
      v75[3] = v71;
      goto LABEL_223;
    }

    v113 = &qword_27CB25318;
    v114 = &qword_2177657C0;
    goto LABEL_180;
  }

  v82 = v154[*(type metadata accessor for ArtistPropertyProvider(0) + 92)];

  v83 = &type metadata for LegacyModelFavoriteStatus;
  if (v82 == 3)
  {
    v84 = 0;
  }

  else
  {
    v84 = v82;
  }

  if (v82 == 3)
  {
    v83 = 0;
  }

  v85 = v155;
  *v155 = v84;
  v85[1] = 0;
  v85[2] = 0;
  v85[3] = v83;
LABEL_223:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176B92C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, v5, &qword_27CB2AD40, &qword_2177583F0);

  return ArtistPropertyProvider.subscript.setter(v5, v3);
}

uint64_t ArtistPropertyProvider.subscript.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EA8, &unk_217794FE0);
  if (!swift_dynamicCastClass())
  {
    v96 = 0;
    v97 = 0xE000000000000000;
    v83 = &v96;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000025, 0x80000002177B5370);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    v95 = 0;
    v93 = 177;
    goto LABEL_101;
  }

  v3 = qword_280BE6A48;
  swift_retain_n();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_28_51(&qword_280BE6A48);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v4, v5);
  OUTLINED_FUNCTION_5_4();

  if (v3)
  {
    swift_getKeyPath(byte_2177952E0);
    OUTLINED_FUNCTION_79_1();
    sub_217351C94();
    goto LABEL_23;
  }

  v6 = qword_280BE68F0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_27_48(&qword_280BE68F0);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v7, v8);
  OUTLINED_FUNCTION_5_4();

  if (v6)
  {
    swift_getKeyPath("0#>e");
    OUTLINED_FUNCTION_79_1();
    sub_217351C74(v9, v10);
    goto LABEL_23;
  }

  v11 = qword_280BE68D0;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_26_43(&qword_280BE68D0);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v12, v13);
  OUTLINED_FUNCTION_5_4();

  if (v11)
  {
    swift_getKeyPath("H#>e");
    OUTLINED_FUNCTION_79_1();
    sub_217351C78(v14, v15);
    goto LABEL_23;
  }

  v16 = qword_280BE6928;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_25_56(&qword_280BE6928);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v17, v18);
  OUTLINED_FUNCTION_5_4();

  if (v16)
  {
LABEL_22:
    OUTLINED_FUNCTION_79_1();
    sub_217351C98();
    goto LABEL_23;
  }

  v19 = qword_280BE6A50;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_24_49(&qword_280BE6A50);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v20, v21);
  OUTLINED_FUNCTION_5_4();

  if (v19)
  {
    swift_getKeyPath("x#>e");
    goto LABEL_22;
  }

  v23 = qword_280BE6880;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_3_12(&qword_280BE6880);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v24, v25);
  OUTLINED_FUNCTION_5_4();

  if (v23)
  {
    swift_getKeyPath(byte_217795240);
LABEL_28:
    OUTLINED_FUNCTION_79_1();
    sub_217351CA0(v26, v27);
    goto LABEL_23;
  }

  v28 = qword_280BE69A8;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_22_57(&qword_280BE69A8);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v29, v30);
  OUTLINED_FUNCTION_5_4();

  if (v28)
  {
    swift_getKeyPath(byte_217795220);
LABEL_33:
    OUTLINED_FUNCTION_79_1();
    sub_217351CA8(v31, v32);
    goto LABEL_23;
  }

  v33 = qword_280BE6870;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280BE6870);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v34, v35);
  OUTLINED_FUNCTION_5_4();

  if (v33)
  {
    swift_getKeyPath(byte_217795200);
    OUTLINED_FUNCTION_79_1();
    sub_217351CA4(v36, v37);
    goto LABEL_23;
  }

  v38 = qword_280BE69E8;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_2_7(&qword_280BE69E8);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v39, v40);
  OUTLINED_FUNCTION_5_4();

  if (v38)
  {
    swift_getKeyPath(byte_2177951E0);
LABEL_42:
    OUTLINED_FUNCTION_79_1();
    sub_217351CB0(v41, v42);
    goto LABEL_23;
  }

  v43 = qword_280BE6820;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_18_57(&qword_280BE6820);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v44, v45);
  OUTLINED_FUNCTION_5_4();

  if (v43)
  {
    swift_getKeyPath(byte_2177951C0);
LABEL_47:
    OUTLINED_FUNCTION_79_1();
    sub_217351CB4(v46, v47);
    goto LABEL_23;
  }

  v48 = qword_280BE68E0;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_21_48(&qword_280BE68E0);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v49, v50);
  OUTLINED_FUNCTION_5_4();

  if (v48)
  {
    swift_getKeyPath("\b$>e");
    OUTLINED_FUNCTION_79_1();
    sub_21734A2D4();
    goto LABEL_23;
  }

  v51 = qword_280BE6848;

  if (v51 != -1)
  {
    OUTLINED_FUNCTION_17_60(&qword_280BE6848);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v52, v53);
  OUTLINED_FUNCTION_5_4();

  if (v51)
  {
    swift_getKeyPath(" $>e");
    OUTLINED_FUNCTION_79_1();
    sub_217351CB8(v54, v55);
    goto LABEL_23;
  }

  v56 = qword_280BE6950;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_16_70(&qword_280BE6950);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v57, v58);
  OUTLINED_FUNCTION_5_4();

  if (v56)
  {
    swift_getKeyPath("8$>e");
    goto LABEL_28;
  }

  v59 = qword_280BE6908;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_15_64(&qword_280BE6908);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v60, v61);
  OUTLINED_FUNCTION_5_4();

  if (v59)
  {
    swift_getKeyPath("P$>e");
    goto LABEL_28;
  }

  v62 = qword_280BE6980;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_14_62(&qword_280BE6980);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v63, v64);
  OUTLINED_FUNCTION_5_4();

  if (v62)
  {
    swift_getKeyPath("h$>e");
    goto LABEL_28;
  }

  v65 = qword_280BE68F8;

  if (v65 != -1)
  {
    OUTLINED_FUNCTION_13_68(&qword_280BE68F8);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v66, v67);
  OUTLINED_FUNCTION_5_4();

  if (v65)
  {
    swift_getKeyPath(byte_217795100);
    goto LABEL_47;
  }

  v68 = qword_280BE6A30;

  if (v68 != -1)
  {
    OUTLINED_FUNCTION_12_63(&qword_280BE6A30);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v69, v70);
  OUTLINED_FUNCTION_5_4();

  if (v68)
  {
    swift_getKeyPath(byte_2177950E0);
    goto LABEL_28;
  }

  v71 = qword_280BE69C8;

  if (v71 != -1)
  {
    OUTLINED_FUNCTION_11_75(&qword_280BE69C8);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v72, v73);
  OUTLINED_FUNCTION_5_4();

  if (v71)
  {
    swift_getKeyPath(byte_2177950C0);
    goto LABEL_28;
  }

  v74 = qword_280BE6A10;

  if (v74 != -1)
  {
    OUTLINED_FUNCTION_10_68(&qword_280BE6A10);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v75, v76);
  OUTLINED_FUNCTION_5_4();

  if (v74)
  {
    swift_getKeyPath(byte_2177950A0);
    goto LABEL_28;
  }

  v77 = qword_280BE6968;

  if (v77 != -1)
  {
    OUTLINED_FUNCTION_9_83(&qword_280BE6968);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v78, v79);
  OUTLINED_FUNCTION_5_4();

  if (v77)
  {
    swift_getKeyPath(qword_217795080);
    goto LABEL_33;
  }

  v80 = qword_280BE6860;

  if (v80 != -1)
  {
    OUTLINED_FUNCTION_8_84(&qword_280BE6860);
  }

  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v81, v82);
  OUTLINED_FUNCTION_5_4();

  if (v80)
  {
    swift_getKeyPath(&qword_217795060);
    goto LABEL_28;
  }

  v83 = qword_280BE6A58;

  if (v83 != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v84, v85);
    OUTLINED_FUNCTION_5_4();

    if (v83)
    {
      swift_getKeyPath(byte_217795040, v94, v95);
      goto LABEL_42;
    }

    v86 = qword_280BE6830;

    if (v86 != -1)
    {
      OUTLINED_FUNCTION_6_100(&qword_280BE6830);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v87, v88);
    OUTLINED_FUNCTION_5_4();

    if (v86)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
    swift_initStackObject();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v91, v92);
    OUTLINED_FUNCTION_5_4();

    v96 = 0;
    v97 = 0xE000000000000000;
    v83 = &v96;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    v95 = 0;
    v93 = 234;
LABEL_101:
    v94 = v93;
    OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_7_82(&qword_280BE6A58);
  }

  swift_getKeyPath("(%>e");
  OUTLINED_FUNCTION_79_1();
  sub_217351CAC(v89, v90);
LABEL_23:

  return sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
}

void (*ArtistPropertyProvider.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  ArtistPropertyProvider.subscript.getter();
  return sub_2176B9D50;
}

void sub_2176B9D50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    ArtistPropertyProvider.subscript.setter(v2 + 32, v3);
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    ArtistPropertyProvider.subscript.setter(v2, v3);
  }

  free(v2);
}

void ArtistPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB286C8, &qword_217795300);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v56[-1] - v10;
  v12 = type metadata accessor for ArtistPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    OUTLINED_FUNCTION_175_6();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177B0A10);
    v56[0] = v6;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v7 + 216), v52, v53);
    sub_217753018();
    v48 = v57;
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_173_8();
    v54 = 241;
    goto LABEL_185;
  }

  v1 = v17;
  sub_2171FF30C(v4, v57);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_2171F0738(v11, &qword_27CB286C8, &qword_217795300);
    OUTLINED_FUNCTION_175_6();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ELL, 0x80000002177B0A40);
    sub_217752C78();
    v48 = v57;
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_173_8();
    v54 = 244;
    goto LABEL_185;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_2174CCA44(v11, v16);
  v18 = qword_280BE6A48;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_28_51(&qword_280BE6A48);
  }

  OUTLINED_FUNCTION_174(qword_280C021D8);
  OUTLINED_FUNCTION_173_3();
  if (v18)
  {

    v19 = *(v16 + 552);
    v20 = *(v16 + 560);
    sub_217751DE8();
    sub_2176BEEA0(v16);
    if (!v20)
    {
      v19 = *(v2 + 552);
      v20 = sub_217751DE8();
    }

    *(v2 + 552) = v19;
    *(v2 + 560) = v20;
    goto LABEL_21;
  }

  v21 = qword_280BE68F0;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_27_48(&qword_280BE68F0);
  }

  OUTLINED_FUNCTION_174(qword_280C02170);
  OUTLINED_FUNCTION_173_3();
  if (v21)
  {

    v22 = *(v16 + v12[7]);
    sub_217751DE8();
    sub_2176BEEA0(v16);
    v23 = v12[7];
LABEL_16:
    if (!v22)
    {
      v22 = sub_217751DE8();
    }

    *(v2 + v23) = v22;
    goto LABEL_21;
  }

  v24 = qword_280BE68D0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_26_43(&qword_280BE68D0);
  }

  OUTLINED_FUNCTION_174(qword_280C02158);
  OUTLINED_FUNCTION_173_3();
  if (v24)
  {

    v22 = *(v16 + v12[9]);
    sub_217751DE8();
    sub_2176BEEA0(v16);
    v23 = v12[9];
    goto LABEL_16;
  }

  v25 = qword_280BE6928;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_25_56(&qword_280BE6928);
  }

  OUTLINED_FUNCTION_174(qword_280C02180);
  OUTLINED_FUNCTION_173_3();
  if ((v25 & 1) == 0)
  {
    v28 = qword_280BE6A50;

    if (v28 != -1)
    {
      OUTLINED_FUNCTION_24_49(&qword_280BE6A50);
    }

    OUTLINED_FUNCTION_174(qword_280C021E0);
    OUTLINED_FUNCTION_173_3();
    if (v28)
    {

      v26 = *(v16 + v12[12]);
      sub_2176BEEA0(v16);
      v27 = v12[12];
      goto LABEL_30;
    }

    v29 = qword_280BE6880;

    if (v29 != -1)
    {
      OUTLINED_FUNCTION_3_12(&qword_280BE6880);
    }

    OUTLINED_FUNCTION_174(qword_280BE6888);
    OUTLINED_FUNCTION_173_3();
    if (v29)
    {

      OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[26]);
      sub_2176BEEA0(v16);
      if (v56[11])
      {
        OUTLINED_FUNCTION_78_12();
      }

      else
      {
        OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[26]);
        if (v56[11])
        {
          sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
        }
      }

      v32 = v12[26];
LABEL_51:
      v33 = &qword_27CB25318;
      v34 = &qword_2177657C0;
LABEL_103:
      sub_21733BBDC(v57, v2 + v32, v33, v34);
      goto LABEL_21;
    }

    v30 = qword_280BE69A8;

    if (v30 != -1)
    {
      OUTLINED_FUNCTION_22_57(&qword_280BE69A8);
    }

    OUTLINED_FUNCTION_174(qword_280C021A8);
    OUTLINED_FUNCTION_173_3();
    if (v30)
    {

      OUTLINED_FUNCTION_167_8(&qword_27CB25310, &unk_21775D3D0, v12[27]);
      sub_2176BEEA0(v16);
      if (v56[11])
      {
        OUTLINED_FUNCTION_78_12();
      }

      else
      {
        OUTLINED_FUNCTION_166_6(&qword_27CB25310, &unk_21775D3D0, v12[27]);
        if (v56[11])
        {
          sub_2171F0738(v56, &qword_27CB25310, &unk_21775D3D0);
        }
      }

      v32 = v12[27];
      goto LABEL_60;
    }

    v31 = qword_280BE6870;

    if (v31 != -1)
    {
      OUTLINED_FUNCTION_11_0(&qword_280BE6870);
    }

    OUTLINED_FUNCTION_174(qword_280BE6878);
    OUTLINED_FUNCTION_173_3();
    if (v31)
    {

      OUTLINED_FUNCTION_167_8(&qword_27CB25320, &unk_21776E020, v12[29]);
      sub_2176BEEA0(v16);
      if (v56[11])
      {
        OUTLINED_FUNCTION_78_12();
      }

      else
      {
        OUTLINED_FUNCTION_166_6(&qword_27CB25320, &unk_21776E020, v12[29]);
        if (v56[11])
        {
          sub_2171F0738(v56, &qword_27CB25320, &unk_21776E020);
        }
      }

      v32 = v12[29];
      v33 = &qword_27CB25320;
      v34 = &unk_21776E020;
      goto LABEL_103;
    }

    v35 = qword_280BE69E8;

    if (v35 != -1)
    {
      OUTLINED_FUNCTION_2_7(&qword_280BE69E8);
    }

    OUTLINED_FUNCTION_174(qword_280BE69F0);
    OUTLINED_FUNCTION_173_3();
    if (v35)
    {

      OUTLINED_FUNCTION_167_8(&qword_27CB25338, &unk_21775D3E0, v12[30]);
      sub_2176BEEA0(v16);
      if (v56[11])
      {
        OUTLINED_FUNCTION_78_12();
      }

      else
      {
        OUTLINED_FUNCTION_166_6(&qword_27CB25338, &unk_21775D3E0, v12[30]);
        if (v56[11])
        {
          sub_2171F0738(v56, &qword_27CB25338, &unk_21775D3E0);
        }
      }

      v32 = v12[30];
LABEL_77:
      v33 = &qword_27CB25338;
      v34 = &unk_21775D3E0;
      goto LABEL_103;
    }

    v36 = qword_280BE6820;

    if (v36 != -1)
    {
      OUTLINED_FUNCTION_18_57(&qword_280BE6820);
    }

    OUTLINED_FUNCTION_174(qword_280BE6828);
    OUTLINED_FUNCTION_173_3();
    if (v36)
    {

      OUTLINED_FUNCTION_167_8(&qword_27CB25330, &unk_21775E9B0, v12[31]);
      sub_2176BEEA0(v16);
      if (v56[11])
      {
        OUTLINED_FUNCTION_78_12();
      }

      else
      {
        OUTLINED_FUNCTION_166_6(&qword_27CB25330, &unk_21775E9B0, v12[31]);
        if (v56[11])
        {
          sub_2171F0738(v56, &qword_27CB25330, &unk_21775E9B0);
        }
      }

      v32 = v12[31];
    }

    else
    {
      v37 = qword_280BE68E0;

      if (v37 != -1)
      {
        OUTLINED_FUNCTION_21_48(&qword_280BE68E0);
      }

      OUTLINED_FUNCTION_174(qword_280C02168);
      OUTLINED_FUNCTION_173_3();
      if (v37)
      {

        OUTLINED_FUNCTION_167_8(&qword_27CB24330, &unk_21775D460, v12[28]);
        sub_2176BEEA0(v16);
        if (v56[2])
        {
          memcpy(v57, v56, 0x80uLL);
        }

        else
        {
          OUTLINED_FUNCTION_166_6(&qword_27CB24330, &unk_21775D460, v12[28]);
          if (v56[2])
          {
            sub_2171F0738(v56, &qword_27CB24330, &unk_21775D460);
          }
        }

        v32 = v12[28];
        v33 = &qword_27CB24330;
        v34 = &unk_21775D460;
        goto LABEL_103;
      }

      v38 = qword_280BE6848;

      if (v38 != -1)
      {
        OUTLINED_FUNCTION_17_60(&qword_280BE6848);
      }

      OUTLINED_FUNCTION_174(qword_280BE6850);
      OUTLINED_FUNCTION_173_3();
      if (v38)
      {

        OUTLINED_FUNCTION_167_8(&qword_27CB255B0, &unk_217793B50, v12[32]);
        sub_2176BEEA0(v16);
        if (v56[11])
        {
          OUTLINED_FUNCTION_78_12();
        }

        else
        {
          OUTLINED_FUNCTION_166_6(&qword_27CB255B0, &unk_217793B50, v12[32]);
          if (v56[11])
          {
            sub_2171F0738(v56, &qword_27CB255B0, &unk_217793B50);
          }
        }

        v32 = v12[32];
        v33 = &qword_27CB255B0;
        v34 = &unk_217793B50;
        goto LABEL_103;
      }

      v39 = qword_280BE6950;

      if (v39 != -1)
      {
        OUTLINED_FUNCTION_16_70(&qword_280BE6950);
      }

      OUTLINED_FUNCTION_174(qword_280BE6958);
      OUTLINED_FUNCTION_173_3();
      if (v39)
      {

        OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[33]);
        sub_2176BEEA0(v16);
        if (v56[11])
        {
          OUTLINED_FUNCTION_78_12();
        }

        else
        {
          OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[33]);
          if (v56[11])
          {
            sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
          }
        }

        v32 = v12[33];
        goto LABEL_51;
      }

      v40 = qword_280BE6908;

      if (v40 != -1)
      {
        OUTLINED_FUNCTION_15_64(&qword_280BE6908);
      }

      OUTLINED_FUNCTION_174(qword_280BE6910);
      OUTLINED_FUNCTION_173_3();
      if (v40)
      {

        OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[34]);
        sub_2176BEEA0(v16);
        if (v56[11])
        {
          OUTLINED_FUNCTION_78_12();
        }

        else
        {
          OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[34]);
          if (v56[11])
          {
            sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
          }
        }

        v32 = v12[34];
        goto LABEL_51;
      }

      v41 = qword_280BE6980;

      if (v41 != -1)
      {
        OUTLINED_FUNCTION_14_62(&qword_280BE6980);
      }

      OUTLINED_FUNCTION_174(qword_280BE6988);
      OUTLINED_FUNCTION_173_3();
      if (v41)
      {

        OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[35]);
        sub_2176BEEA0(v16);
        if (v56[11])
        {
          OUTLINED_FUNCTION_78_12();
        }

        else
        {
          OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[35]);
          if (v56[11])
          {
            sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
          }
        }

        v32 = v12[35];
        goto LABEL_51;
      }

      v42 = qword_280BE68F8;

      if (v42 != -1)
      {
        OUTLINED_FUNCTION_13_68(&qword_280BE68F8);
      }

      OUTLINED_FUNCTION_174(qword_280BE6900);
      OUTLINED_FUNCTION_173_3();
      if ((v42 & 1) == 0)
      {
        v43 = qword_280BE6A30;

        if (v43 != -1)
        {
          OUTLINED_FUNCTION_12_63(&qword_280BE6A30);
        }

        OUTLINED_FUNCTION_174(qword_280BE6A38);
        OUTLINED_FUNCTION_173_3();
        if (v43)
        {

          OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[37]);
          sub_2176BEEA0(v16);
          if (v56[11])
          {
            OUTLINED_FUNCTION_78_12();
          }

          else
          {
            OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[37]);
            if (v56[11])
            {
              sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
            }
          }

          v32 = v12[37];
          goto LABEL_51;
        }

        v44 = qword_280BE69C8;

        if (v44 != -1)
        {
          OUTLINED_FUNCTION_11_75(&qword_280BE69C8);
        }

        OUTLINED_FUNCTION_174(qword_280BE69D0);
        OUTLINED_FUNCTION_173_3();
        if (v44)
        {

          OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[38]);
          sub_2176BEEA0(v16);
          if (v56[11])
          {
            OUTLINED_FUNCTION_78_12();
          }

          else
          {
            OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[38]);
            if (v56[11])
            {
              sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
            }
          }

          v32 = v12[38];
          goto LABEL_51;
        }

        v45 = qword_280BE6A10;

        if (v45 != -1)
        {
          OUTLINED_FUNCTION_10_68(&qword_280BE6A10);
        }

        OUTLINED_FUNCTION_174(qword_280BE6A18);
        OUTLINED_FUNCTION_173_3();
        if (v45)
        {

          OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[39]);
          sub_2176BEEA0(v16);
          if (v56[11])
          {
            OUTLINED_FUNCTION_78_12();
          }

          else
          {
            OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[39]);
            if (v56[11])
            {
              sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
            }
          }

          v32 = v12[39];
          goto LABEL_51;
        }

        v46 = qword_280BE6968;

        if (v46 != -1)
        {
          OUTLINED_FUNCTION_9_83(&qword_280BE6968);
        }

        OUTLINED_FUNCTION_174(qword_280BE6970);
        OUTLINED_FUNCTION_173_3();
        if ((v46 & 1) == 0)
        {
          v47 = qword_280BE6860;

          if (v47 != -1)
          {
            OUTLINED_FUNCTION_8_84(&qword_280BE6860);
          }

          OUTLINED_FUNCTION_174(qword_280BE6868);
          OUTLINED_FUNCTION_173_3();
          if ((v47 & 1) == 0)
          {
            v48 = qword_280BE6A58;

            if (v48 != -1)
            {
              goto LABEL_186;
            }

            while (1)
            {
              OUTLINED_FUNCTION_174(qword_280BE6A60);
              OUTLINED_FUNCTION_173_3();
              if (v48)
              {

                OUTLINED_FUNCTION_167_8(&qword_27CB25338, &unk_21775D3E0, v12[42]);
                sub_2176BEEA0(v16);
                if (v56[11])
                {
                  OUTLINED_FUNCTION_78_12();
                }

                else
                {
                  OUTLINED_FUNCTION_166_6(&qword_27CB25338, &unk_21775D3E0, v12[42]);
                  if (v56[11])
                  {
                    sub_2171F0738(v56, &qword_27CB25338, &unk_21775D3E0);
                  }
                }

                v32 = v12[42];
                goto LABEL_77;
              }

              v49 = qword_280BE6830;

              if (v49 != -1)
              {
                OUTLINED_FUNCTION_6_100(&qword_280BE6830);
              }

              OUTLINED_FUNCTION_174(qword_280BE6838);
              OUTLINED_FUNCTION_173_3();
              if (v49)
              {
                break;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
              swift_allocObject();
              v50 = OUTLINED_FUNCTION_54_0();
              v51 = OUTLINED_FUNCTION_174(v50);

              if (v51)
              {

                v22 = *(v16 + v12[44]);
                sub_217751DE8();
                sub_2176BEEA0(v16);
                v23 = v12[44];
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_175_6();
              sub_217752AA8();
              MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177B1470);
              v56[0] = v1;
              sub_217752C78();
              v48 = v57;
              OUTLINED_FUNCTION_217_0();
              OUTLINED_FUNCTION_173_8();
              v54 = 301;
LABEL_185:
              v55 = v54;
              OUTLINED_FUNCTION_4_0("Fatal error");
              __break(1u);
LABEL_186:
              OUTLINED_FUNCTION_7_82(&qword_280BE6A58);
            }

            OUTLINED_FUNCTION_167_8(&qword_27CB255A8, &unk_21775D450, v12[43]);
            sub_2176BEEA0(v16);
            if (v56[11])
            {
              OUTLINED_FUNCTION_78_12();
            }

            else
            {
              OUTLINED_FUNCTION_166_6(&qword_27CB255A8, &unk_21775D450, v12[43]);
              if (v56[11])
              {
                sub_2171F0738(v56, &qword_27CB255A8, &unk_21775D450);
              }
            }

            v32 = v12[43];
            v33 = &qword_27CB255A8;
            v34 = &unk_21775D450;
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_167_8(&qword_27CB25318, &qword_2177657C0, v12[41]);
          sub_2176BEEA0(v16);
          if (v56[11])
          {
            OUTLINED_FUNCTION_78_12();
          }

          else
          {
            OUTLINED_FUNCTION_166_6(&qword_27CB25318, &qword_2177657C0, v12[41]);
            if (v56[11])
            {
              sub_2171F0738(v56, &qword_27CB25318, &qword_2177657C0);
            }
          }

          v32 = v12[41];
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_167_8(&qword_27CB25310, &unk_21775D3D0, v12[40]);
        sub_2176BEEA0(v16);
        if (v56[11])
        {
          OUTLINED_FUNCTION_78_12();
        }

        else
        {
          OUTLINED_FUNCTION_166_6(&qword_27CB25310, &unk_21775D3D0, v12[40]);
          if (v56[11])
          {
            sub_2171F0738(v56, &qword_27CB25310, &unk_21775D3D0);
          }
        }

        v32 = v12[40];
LABEL_60:
        v33 = &qword_27CB25310;
        v34 = &unk_21775D3D0;
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_167_8(&qword_27CB25330, &unk_21775E9B0, v12[36]);
      sub_2176BEEA0(v16);
      if (v56[11])
      {
        OUTLINED_FUNCTION_78_12();
      }

      else
      {
        OUTLINED_FUNCTION_166_6(&qword_27CB25330, &unk_21775E9B0, v12[36]);
        if (v56[11])
        {
          sub_2171F0738(v56, &qword_27CB25330, &unk_21775E9B0);
        }
      }

      v32 = v12[36];
    }

    v33 = &qword_27CB25330;
    v34 = &unk_21775E9B0;
    goto LABEL_103;
  }

  v26 = *(v16 + v12[11]);
  sub_2176BEEA0(v16);
  v27 = v12[11];
LABEL_30:
  if (v26 == 2)
  {
    LOBYTE(v26) = *(v2 + v27);
  }

  *(v2 + v27) = v26;
LABEL_21:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176BB0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217794FD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  swift_allocObject();
  *(v0 + 32) = OUTLINED_FUNCTION_60_31(qword_282959AF8);
  if (qword_280BE6A48 != -1)
  {
    OUTLINED_FUNCTION_28_51(&qword_280BE6A48);
  }

  *(v0 + 40) = qword_280C021D8;
  v1 = qword_280BE69D8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_81_17(&qword_280BE69D8);
  }

  *(v0 + 48) = qword_280C021B8;
  v2 = qword_280BE68F0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_27_48(&qword_280BE68F0);
  }

  *(v0 + 56) = qword_280C02170;
  v3 = qword_280BE6998;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_280BE6998);
  }

  *(v0 + 64) = qword_280C021A0;
  v4 = qword_280BE68D0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_26_43(&qword_280BE68D0);
  }

  *(v0 + 72) = qword_280C02158;
  v5 = qword_280BE6A28;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_79_19(&qword_280BE6A28);
  }

  *(v0 + 80) = qword_280C021D0;
  v6 = qword_280BE6928;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_25_56(&qword_280BE6928);
  }

  *(v0 + 88) = qword_280C02180;
  v7 = qword_280BE6A50;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_24_49(&qword_280BE6A50);
  }

  *(v0 + 96) = qword_280C021E0;
  v8 = qword_280BE68B0;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_78_18(&qword_280BE68B0);
  }

  *(v0 + 104) = qword_280C02148;
  v9 = qword_280BE6840;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_77_17(&qword_280BE6840);
  }

  *(v0 + 112) = qword_280C02130;
  v10 = qword_280BE6940;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_76_19(&qword_280BE6940);
  }

  *(v0 + 120) = qword_280C02190;
  v11 = qword_280BE6898;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_6_98(&qword_280BE6898);
  }

  *(v0 + 128) = qword_280C02138;
  v12 = qword_280BE68A0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_74_17(&qword_280BE68A0);
  }

  *(v0 + 136) = qword_280C02140;
  v13 = qword_280BE6A00;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_73_20(&qword_280BE6A00);
  }

  *(v0 + 144) = qword_280C021C8;
  v14 = qword_280BE69B8;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_72_18(&qword_280BE69B8);
  }

  *(v0 + 152) = qword_280C021B0;
  v15 = qword_280BE6960;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_10_33(&qword_280BE6960);
  }

  *(v0 + 160) = qword_280C02198;
  v16 = qword_280BE6918;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_70_20(&qword_280BE6918);
  }

  *(v0 + 168) = qword_280C02178;
  v17 = qword_280BE6938;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_69_20(&qword_280BE6938);
  }

  *(v0 + 176) = qword_280C02188;
  v18 = qword_280BE68C0;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_68_25(&qword_280BE68C0);
  }

  *(v0 + 184) = qword_280C02150;
  v19 = qword_280BE68D8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_67_21(&qword_280BE68D8);
  }

  *(v0 + 192) = qword_280C02160;
  v20 = qword_280BE69F8;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_65_26(&qword_280BE69F8);
  }

  *(v0 + 200) = qword_280C021C0;
  v21 = qword_280BE6880;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_3_12(&qword_280BE6880);
  }

  *(v0 + 208) = qword_280BE6888;
  v22 = qword_280BE69A8;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_22_57(&qword_280BE69A8);
  }

  *(v0 + 216) = qword_280C021A8;
  v23 = qword_280BE68E0;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_21_48(&qword_280BE68E0);
  }

  *(v0 + 224) = qword_280C02168;
  v24 = qword_280BE6870;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_11_0(&qword_280BE6870);
  }

  *(v0 + 232) = qword_280BE6878;
  v25 = qword_280BE69E8;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_2_7(&qword_280BE69E8);
  }

  *(v0 + 240) = qword_280BE69F0;
  v26 = qword_280BE6820;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_18_57(&qword_280BE6820);
  }

  *(v0 + 248) = qword_280BE6828;
  v27 = qword_280BE6848;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_17_60(&qword_280BE6848);
  }

  *(v0 + 256) = qword_280BE6850;
  v28 = qword_280BE6950;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_16_70(&qword_280BE6950);
  }

  *(v0 + 264) = qword_280BE6958;
  v29 = qword_280BE6908;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_15_64(&qword_280BE6908);
  }

  *(v0 + 272) = qword_280BE6910;
  v30 = qword_280BE6980;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_14_62(&qword_280BE6980);
  }

  *(v0 + 280) = qword_280BE6988;
  v31 = qword_280BE68F8;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_13_68(&qword_280BE68F8);
  }

  *(v0 + 288) = qword_280BE6900;
  v32 = qword_280BE6A30;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_12_63(&qword_280BE6A30);
  }

  *(v0 + 296) = qword_280BE6A38;
  v33 = qword_280BE69C8;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_11_75(&qword_280BE69C8);
  }

  *(v0 + 304) = qword_280BE69D0;
  v34 = qword_280BE6A10;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_10_68(&qword_280BE6A10);
  }

  *(v0 + 312) = qword_280BE6A18;
  v35 = qword_280BE6968;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_9_83(&qword_280BE6968);
  }

  *(v0 + 320) = qword_280BE6970;
  v36 = qword_280BE6860;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_8_84(&qword_280BE6860);
  }

  *(v0 + 328) = qword_280BE6868;
  v37 = qword_280BE6A58;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_7_82(&qword_280BE6A58);
  }

  *(v0 + 336) = qword_280BE6A60;
  v38 = qword_280BE6830;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_6_100(&qword_280BE6830);
  }

  *(v0 + 344) = qword_280BE6838;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
  swift_allocObject();
  *(v0 + 352) = OUTLINED_FUNCTION_54_0();
  qword_280C01FC8 = v0;
}

uint64_t ArtistPropertyProvider.knownProperties.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_89_19() + 184);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *ArtistPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 184);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t ArtistPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_89_19() + 188));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void ArtistPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for ArtistPropertyProvider(0) + 188);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t ArtistPropertyProvider.href.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void ArtistPropertyProvider.href.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  v6 = (v2 + *(type metadata accessor for ArtistPropertyProvider(v5) + 192));

  *v6 = v3;
  v6[1] = a2;
}

uint64_t ArtistPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for ArtistPropertyProvider(0);

  return sub_217751DE8();
}

void static ArtistPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v2 = v1;
  v4 = v3;
  v5 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v529 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v527 = v13 - v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15);
  v530 = &v520 - v16;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v528 = v18 - v19;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v20);
  v532 = &v520 - v21;
  v22 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v536 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v535 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_1();
  v533 = v29 - v30;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v520 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_1();
  v534 = v36 - v37;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v38);
  v40 = &v520 - v39;
  v41 = OUTLINED_FUNCTION_107_12();
  memcpy(v41, v4, 0x221uLL);
  v42 = OUTLINED_FUNCTION_106_13();
  memcpy(v42, v2, 0x221uLL);
  v43 = OUTLINED_FUNCTION_37_38();
  memcpy(v43, v4, 0x221uLL);
  memcpy(v563, v2, sizeof(v563));
  memcpy(v564, v4, 0x221uLL);
  OUTLINED_FUNCTION_104(v564);
  if (v58)
  {
    v44 = OUTLINED_FUNCTION_38_37();
    OUTLINED_FUNCTION_226_3(v44);
    v45 = OUTLINED_FUNCTION_38_37();
    OUTLINED_FUNCTION_104(v45);
    if (!v58)
    {
      v65 = OUTLINED_FUNCTION_107_12();
      OUTLINED_FUNCTION_157(v65, &v550);
      v66 = OUTLINED_FUNCTION_106_13();
      v67 = &v550;
LABEL_10:
      OUTLINED_FUNCTION_157(v66, v67);
      goto LABEL_11;
    }

    v525 = v7;
    v526 = v5;
    v46 = v4;
    OUTLINED_FUNCTION_62_22();
    OUTLINED_FUNCTION_42_38();
    memcpy(v47, v48, 0x221uLL);
    v49 = OUTLINED_FUNCTION_107_12();
    OUTLINED_FUNCTION_88_18(v49);
    v50 = OUTLINED_FUNCTION_106_13();
    OUTLINED_FUNCTION_88_18(v50);
    v51 = OUTLINED_FUNCTION_62_22();
    sub_2171F0738(v51, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    OUTLINED_FUNCTION_62_22();
    OUTLINED_FUNCTION_42_38();
    memcpy(v52, v53, 0x221uLL);
    OUTLINED_FUNCTION_42_38();
    memcpy(v54, v55, 0x221uLL);
    v56 = OUTLINED_FUNCTION_38_37();
    OUTLINED_FUNCTION_226_3(v56);
    v57 = OUTLINED_FUNCTION_38_37();
    OUTLINED_FUNCTION_104(v57);
    if (v58)
    {
      OUTLINED_FUNCTION_42_38();
      memcpy(v59, v60, 0x221uLL);
      v61 = OUTLINED_FUNCTION_107_12();
      OUTLINED_FUNCTION_157(v61, v541);
      v62 = OUTLINED_FUNCTION_106_13();
      OUTLINED_FUNCTION_157(v62, v541);
      v63 = OUTLINED_FUNCTION_62_22();
      OUTLINED_FUNCTION_157(v63, v541);
      v64 = v542;
LABEL_9:
      sub_217284084(v64);
LABEL_11:
      OUTLINED_FUNCTION_38_37();
      OUTLINED_FUNCTION_42_38();
      memcpy(v68, v69, 0x449uLL);
      v70 = OUTLINED_FUNCTION_38_37();
LABEL_12:
      sub_2171F0738(v70, v71, v72);
      goto LABEL_13;
    }

    v525 = v7;
    v526 = v5;
    v46 = v4;
    OUTLINED_FUNCTION_226_3(v542);
    v73 = OUTLINED_FUNCTION_107_12();
    OUTLINED_FUNCTION_111_15(v73);
    v74 = OUTLINED_FUNCTION_106_13();
    OUTLINED_FUNCTION_111_15(v74);
    v75 = OUTLINED_FUNCTION_62_22();
    OUTLINED_FUNCTION_111_15(v75);
    v76 = static Artwork.== infix(_:_:)(v545, v542);
    memcpy(v540, v542, 0x221uLL);
    sub_217284084(v540);
    memcpy(v541, v545, 0x221uLL);
    sub_217284084(v541);
    OUTLINED_FUNCTION_42_38();
    memcpy(v77, v78, 0x221uLL);
    sub_2171F0738(v542, &qword_27CB24400, &unk_21775E9A0);
    if ((v76 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v79 = *(v46 + 560);
  v80 = v2[70];
  if (v79)
  {
    if (!v80)
    {
      goto LABEL_13;
    }

    v81 = *(v46 + 552) == v2[69] && v79 == v80;
    if (!v81 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v80)
  {
    goto LABEL_13;
  }

  v82 = type metadata accessor for ArtistPropertyProvider(0);
  v523 = v46;
  v524 = v2;
  v522 = v82;
  v83 = v82[6];
  v84 = *(v34 + 48);
  sub_21726A630(v46 + v83, v40, &unk_27CB277C0, &qword_217758DC0);
  v85 = v524 + v83;
  v86 = v524;
  sub_21726A630(v85, &v40[v84], &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(v40);
  if (v58)
  {
    OUTLINED_FUNCTION_73(&v40[v84]);
    if (v58)
    {
      sub_2171F0738(v40, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_34;
    }

LABEL_32:
    v71 = &qword_27CB24840;
    v72 = &unk_217758DD0;
    v70 = v40;
    goto LABEL_12;
  }

  sub_21726A630(v40, v33, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(&v40[v84]);
  if (v87)
  {
    (*(v536 + 8))(v33, v22);
    goto LABEL_32;
  }

  v89 = v535;
  v88 = v536;
  (*(v536 + 32))(v535, &v40[v84], v22);
  OUTLINED_FUNCTION_2_128();
  sub_2176BEF44(v90, v91, MEMORY[0x277CC9278]);
  v92 = sub_217751F08();
  v93 = *(v88 + 8);
  v93(v89, v22);
  v93(v33, v22);
  sub_2171F0738(v40, &unk_27CB277C0, &qword_217758DC0);
  if ((v92 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_34:
  v95 = v522;
  v94 = v523;
  v96 = v522[7];
  v97 = *(v86 + v96);
  if (*(v523 + v96))
  {
    if (!v97)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262A00();
    v99 = v98;

    if ((v99 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v97)
  {
    goto LABEL_13;
  }

  v100 = (v94 + v95[8]);
  v101 = v100[1];
  v543[2] = v100[2];
  v102 = v100[2];
  v543[3] = v100[3];
  v103 = v100[1];
  v543[0] = *v100;
  v543[1] = v103;
  v104 = (v86 + v95[8]);
  v105 = v104[2];
  v544[3] = v104[3];
  v106 = v104[1];
  v544[2] = v104[2];
  v107 = v104[1];
  v544[0] = *v104;
  v544[1] = v107;
  v541[0] = v101;
  v541[1] = v102;
  v541[2] = v100[3];
  v108 = v543[0];
  v109 = v544[0];
  v540[0] = v106;
  v540[1] = v105;
  v540[2] = v104[3];
  if (*(&v543[0] + 1) == 1)
  {
    if (*(&v544[0] + 1) == 1)
    {
      *&v554 = *&v543[0];
      *(&v554 + 1) = 1;
      v110 = v100[2];
      v555 = v100[1];
      v556 = v110;
      OUTLINED_FUNCTION_125_10();
      *(v111 + 255) = v112;
      OUTLINED_FUNCTION_102_14(v543, &v546);
      OUTLINED_FUNCTION_102_14(v544, &v546);
      v113 = OUTLINED_FUNCTION_37_38();
      sub_2171F0738(v113, &qword_27CB24B70, &unk_217759460);
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_42_38();
    sub_21726A630(v125, v126, &qword_27CB24B70, &unk_217759460);
    OUTLINED_FUNCTION_42_38();
    sub_21726A630(v127, v128, &qword_27CB24B70, &unk_217759460);
LABEL_45:
    v554 = v108;
    v555 = v541[0];
    v556 = v541[1];
    OUTLINED_FUNCTION_125_10();
    *(v129 + 255) = v130;
    v557 = v109;
    v558 = v540[0];
    v559 = v540[1];
    v560 = v540[2];
    goto LABEL_46;
  }

  v554 = v543[0];
  v114 = v100[2];
  v555 = v100[1];
  v556 = v114;
  OUTLINED_FUNCTION_125_10();
  *(v116 + 255) = v117;
  v546 = v554;
  v547 = v118;
  v548 = v119;
  v549 = v117;
  if (*(&v109 + 1) == 1)
  {
    v550 = v554;
    v551 = v555;
    OUTLINED_FUNCTION_125_10();
    v121 = *(v120 + 255);
    v552 = v122;
    v553 = v121;
    OUTLINED_FUNCTION_112_15(v543);
    OUTLINED_FUNCTION_112_15(v544);
    v123 = OUTLINED_FUNCTION_37_38();
    OUTLINED_FUNCTION_112_15(v123);
    v124 = OUTLINED_FUNCTION_62_22();
    sub_217351248(v124);
    goto LABEL_45;
  }

  v131 = v115[2];
  v551 = v115[1];
  v552 = v131;
  v553 = v115[3];
  v550 = v109;
  v132 = OUTLINED_FUNCTION_38_37();
  HIDWORD(v521) = static EditorialNotes.== infix(_:_:)(v132, &v550);
  v542[0] = v550;
  v542[1] = v551;
  v542[2] = v552;
  v542[3] = v553;
  OUTLINED_FUNCTION_88_18(v543);
  OUTLINED_FUNCTION_88_18(v544);
  v133 = OUTLINED_FUNCTION_37_38();
  OUTLINED_FUNCTION_88_18(v133);
  sub_217351248(v542);
  v545[0] = v546;
  v545[1] = v547;
  v545[2] = v548;
  v545[3] = v549;
  sub_217351248(v545);
  v550 = v108;
  v551 = v541[0];
  v552 = v541[1];
  v553 = v541[2];
  v134 = OUTLINED_FUNCTION_62_22();
  sub_2171F0738(v134, &qword_27CB24B70, &unk_217759460);
  if ((v521 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_48:
  v135 = v95[9];
  v136 = v523;
  v137 = *(v86 + v135);
  if (*(v523 + v135))
  {
    if (!v137)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262CB4();
    v139 = v138;

    if ((v139 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v137)
  {
    goto LABEL_13;
  }

  v140 = v95[10];
  v141 = *(v86 + v140);
  if (*(v136 + v140))
  {
    if (!v141)
    {
      goto LABEL_13;
    }

    sub_217270790();
    if ((v142 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v141)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_63_24();
  if (v58)
  {
    if (v143 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v143 == 2 || ((v143 ^ v144) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_63_24();
  if (v58)
  {
    if (v145 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v145 == 2 || ((v145 ^ v146) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_63_24();
  if (v58)
  {
    if (v147 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v147 == 2 || ((v147 ^ v148) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_63_24();
  if (v58)
  {
    if (v149 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v149 == 2 || ((v149 ^ v150) & 1) != 0)
  {
    goto LABEL_13;
  }

  v151 = v523;
  v152 = v522[15];
  memcpy(v542, (v523 + v152), 0x221uLL);
  v153 = v522[15];
  v154 = v524;
  memcpy(v545, v524 + v153, 0x221uLL);
  v155 = OUTLINED_FUNCTION_37_38();
  memcpy(v155, (v151 + v152), 0x221uLL);
  memcpy(v563, v154 + v153, sizeof(v563));
  v156 = OUTLINED_FUNCTION_62_22();
  memcpy(v156, (v151 + v152), 0x221uLL);
  v157 = OUTLINED_FUNCTION_62_22();
  OUTLINED_FUNCTION_104(v157);
  if (v58)
  {
    v158 = OUTLINED_FUNCTION_38_37();
    OUTLINED_FUNCTION_226_3(v158);
    v159 = OUTLINED_FUNCTION_38_37();
    OUTLINED_FUNCTION_104(v159);
    if (v58)
    {
      OUTLINED_FUNCTION_42_38();
      memcpy(v160, v161, 0x221uLL);
      OUTLINED_FUNCTION_102_14(v542, v540);
      OUTLINED_FUNCTION_102_14(v545, v540);
      OUTLINED_FUNCTION_43_31();
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_157(v542, v541);
    v66 = v545;
    v67 = v541;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_42_38();
  memcpy(v162, v163, 0x221uLL);
  OUTLINED_FUNCTION_42_38();
  memcpy(v164, v165, 0x221uLL);
  v166 = OUTLINED_FUNCTION_38_37();
  OUTLINED_FUNCTION_226_3(v166);
  v167 = OUTLINED_FUNCTION_38_37();
  OUTLINED_FUNCTION_104(v167);
  if (v168)
  {
    OUTLINED_FUNCTION_42_38();
    memcpy(v169, v170, 0x221uLL);
    OUTLINED_FUNCTION_157(v542, v538);
    OUTLINED_FUNCTION_157(v545, v538);
    OUTLINED_FUNCTION_157(v541, v538);
    v64 = v539;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_226_3(v539);
  OUTLINED_FUNCTION_102_14(v542, v538);
  OUTLINED_FUNCTION_102_14(v545, v538);
  OUTLINED_FUNCTION_102_14(v541, v538);
  v171 = static Artwork.== infix(_:_:)(v540, v539);
  memcpy(v537, v539, 0x221uLL);
  sub_217284084(v537);
  memcpy(v538, v540, 0x221uLL);
  sub_217284084(v538);
  OUTLINED_FUNCTION_42_38();
  memcpy(v172, v173, 0x221uLL);
  sub_2171F0738(v539, &qword_27CB24400, &unk_21775E9A0);
  if ((v171 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_91:
  OUTLINED_FUNCTION_109_16();
  if (v174)
  {
    if (!v175)
    {
      goto LABEL_13;
    }

    v178 = *v176 == *v177 && v174 == v175;
    if (!v178 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v175)
  {
    goto LABEL_13;
  }

  v179 = v522[17];
  v180 = *(v34 + 48);
  v181 = v534;
  OUTLINED_FUNCTION_102_14(v523 + v179, v534);
  OUTLINED_FUNCTION_102_14(v524 + v179, v181 + v180);
  OUTLINED_FUNCTION_73(v181);
  if (v58)
  {
    OUTLINED_FUNCTION_73(v534 + v180);
    if (v58)
    {
      sub_2171F0738(v534, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_110;
    }

LABEL_108:
    v71 = &qword_27CB24840;
    v72 = &unk_217758DD0;
    v70 = v534;
    goto LABEL_12;
  }

  v182 = v534;
  sub_21726A630(v534, v533, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(v182 + v180);
  if (v183)
  {
    (*(v536 + 8))(v533, v22);
    goto LABEL_108;
  }

  v184 = v536;
  v185 = v534;
  v186 = v534 + v180;
  v187 = v535;
  (*(v536 + 32))(v535, v186, v22);
  OUTLINED_FUNCTION_2_128();
  sub_2176BEF44(v188, v189, MEMORY[0x277CC9278]);
  v190 = v533;
  v191 = sub_217751F08();
  v192 = *(v184 + 8);
  v192(v187, v22);
  v192(v190, v22);
  sub_2171F0738(v185, &unk_27CB277C0, &qword_217758DC0);
  if ((v191 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_110:
  OUTLINED_FUNCTION_30_41();
  if (v194)
  {
    if (!v193)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v195)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_30_41();
  if (v197)
  {
    if (!v196)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v198)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_30_41();
  if (v200)
  {
    if (!v199)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v201)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_30_41();
  if (v203)
  {
    if (!v202)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v204)
    {
      goto LABEL_13;
    }
  }

  v205 = v522[22];
  v206 = v532;
  v207 = *(v531 + 48);
  OUTLINED_FUNCTION_157(v523 + v205, v532);
  OUTLINED_FUNCTION_157(v524 + v205, v206 + v207);
  OUTLINED_FUNCTION_31_27(v206);
  if (v58)
  {
    OUTLINED_FUNCTION_31_27(v532 + v207);
    if (v58)
    {
      sub_2171F0738(v532, &qword_27CB241C0, &qword_217759480);
      goto LABEL_136;
    }

LABEL_134:
    v71 = &qword_27CB25C10;
    v72 = &unk_217765A50;
    v70 = v532;
    goto LABEL_12;
  }

  v208 = v532;
  sub_21726A630(v532, v530, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_31_27(v208 + v207);
  if (v209)
  {
    (*(v525 + 8))(v530, v526);
    goto LABEL_134;
  }

  v210 = v525;
  v211 = v526;
  v212 = v532;
  v213 = v529;
  (*(v525 + 32))(v529, v532 + v207, v526);
  OUTLINED_FUNCTION_1_130();
  sub_2176BEF44(v214, v215, MEMORY[0x277CC9598]);
  v216 = v530;
  OUTLINED_FUNCTION_55_18();
  v217 = sub_217751F08();
  v218 = *(v210 + 8);
  v218(v213, v211);
  v218(v216, v211);
  sub_2171F0738(v212, &qword_27CB241C0, &qword_217759480);
  if ((v217 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_136:
  v219 = v522[23];
  v220 = *(v523 + v219);
  v221 = *(v524 + v219);
  if (v220 == 3)
  {
    if (v221 != 3)
    {
      goto LABEL_13;
    }
  }

  else if (v220 != v221)
  {
    goto LABEL_13;
  }

  v222 = v522[24];
  v223 = *(v531 + 48);
  v224 = v528;
  OUTLINED_FUNCTION_157(v523 + v222, v528);
  OUTLINED_FUNCTION_157(v524 + v222, v223 + v224);
  OUTLINED_FUNCTION_31_27(v224);
  if (v58)
  {
    OUTLINED_FUNCTION_31_27(v223 + v528);
    if (v58)
    {
      sub_2171F0738(v528, &qword_27CB241C0, &qword_217759480);
      goto LABEL_150;
    }

LABEL_148:
    v71 = &qword_27CB25C10;
    v72 = &unk_217765A50;
    v70 = v528;
    goto LABEL_12;
  }

  v225 = v528;
  sub_21726A630(v528, v527, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_31_27(v223 + v225);
  if (v226)
  {
    (*(v525 + 8))(v527, v526);
    goto LABEL_148;
  }

  v227 = v525;
  v229 = v528;
  v228 = v529;
  v230 = v223 + v528;
  v223 = v526;
  (*(v525 + 32))(v529, v230, v526);
  OUTLINED_FUNCTION_1_130();
  sub_2176BEF44(v231, v232, MEMORY[0x277CC9598]);
  v233 = v527;
  v234 = sub_217751F08();
  v235 = *(v227 + 8);
  v235(v228, v223);
  v235(v233, v223);
  sub_2171F0738(v229, &qword_27CB241C0, &qword_217759480);
  if ((v234 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_150:
  OUTLINED_FUNCTION_30_41();
  if (v237)
  {
    if (!v236)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v238)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v239);
  v240 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v240, v241, &qword_27CB25318, &qword_2177657C0);
    if (!v562)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_45_35();
    v242 = OUTLINED_FUNCTION_5_99();
    v244 = sub_21733E33C(v242, v243);
    v223 = &unk_21775D410;
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v245 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v245, v246, v247);
    if ((v244 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v248 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v248, v249, v250);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v251);
  v252 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v252, v253, &qword_27CB25310, &unk_21775D3D0);
    if (!v562)
    {
      goto LABEL_250;
    }

    OUTLINED_FUNCTION_45_35();
    v254 = OUTLINED_FUNCTION_5_99();
    v256 = sub_21733E820(v254, v255);
    v223 = &unk_21776C4F0;
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v257 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v257, v258, v259);
    if ((v256 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v260 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v260, v261, v262);
  }

  v263 = v522[28];
  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v264);
  v265 = OUTLINED_FUNCTION_157(v524 + v263, v223 + 128);
  if (v555)
  {
    OUTLINED_FUNCTION_32_46(v265, v266, &qword_27CB24330, &unk_21775D460);
    if (!v561)
    {
      v285 = OUTLINED_FUNCTION_38_37();
      sub_2171F0738(v285, v286, v287);
      goto LABEL_46;
    }

    memcpy(v541, v223 + 128, 0x80uLL);
    v267 = OUTLINED_FUNCTION_5_99();
    v269 = sub_2172DE160(v267, v268);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v270 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v270, v271, v272);
    if ((v269 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v561)
    {
      goto LABEL_46;
    }

    v273 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v273, v274, v275);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v276);
  v277 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v277, v278, &qword_27CB25320, &unk_21776E020);
    if (!v562)
    {
      v300 = OUTLINED_FUNCTION_38_37();
      sub_2171F0738(v300, v301, v302);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_45_35();
    v279 = OUTLINED_FUNCTION_5_99();
    v281 = sub_21733E874(v279, v280);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v282 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v282, v283, v284);
    if ((v281 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v288 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v288, v289, v290);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v291);
  v292 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v292, v293, &qword_27CB25338, &unk_21775D3E0);
    if (!v562)
    {
LABEL_266:
      v459 = OUTLINED_FUNCTION_38_37();
      sub_2171F0738(v459, v460, v461);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_45_35();
    v294 = OUTLINED_FUNCTION_5_99();
    v296 = sub_21733E8C8(v294, v295);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v297 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v297, v298, v299);
    if ((v296 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v303 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v303, v304, v305);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v306);
  v307 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v307, v308, &qword_27CB25330, &unk_21775E9B0);
    if (!v562)
    {
      goto LABEL_224;
    }

    OUTLINED_FUNCTION_45_35();
    v309 = OUTLINED_FUNCTION_5_99();
    v311 = sub_21733E390(v309, v310);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v312 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v312, v313, v314);
    if ((v311 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v315 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v315, v316, v317);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v318);
  v319 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v319, v320, &qword_27CB255B0, &unk_217793B50);
    if (!v562)
    {
      v339 = OUTLINED_FUNCTION_38_37();
      sub_2171F0738(v339, v340, v341);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_45_35();
    v321 = OUTLINED_FUNCTION_5_99();
    v323 = sub_21733E91C(v321, v322);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v324 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v324, v325, v326);
    if ((v323 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v327 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v327, v328, v329);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v330);
  v331 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v331, v332, &qword_27CB25318, &qword_2177657C0);
    if (!v562)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_45_35();
    v333 = OUTLINED_FUNCTION_5_99();
    v335 = sub_21733E33C(v333, v334);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v336 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v336, v337, v338);
    if ((v335 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v342 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v342, v343, v344);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v345);
  v346 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v346, v347, &qword_27CB25318, &qword_2177657C0);
    if (!v562)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_45_35();
    v348 = OUTLINED_FUNCTION_5_99();
    v350 = sub_21733E33C(v348, v349);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v351 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v351, v352, v353);
    if ((v350 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v354 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v354, v355, v356);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v357);
  v358 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v358, v359, &qword_27CB25318, &qword_2177657C0);
    if (!v562)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_45_35();
    v360 = OUTLINED_FUNCTION_5_99();
    v362 = sub_21733E33C(v360, v361);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v363 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v363, v364, v365);
    if ((v362 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v366 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v366, v367, v368);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v369);
  v370 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v370, v371, &qword_27CB25330, &unk_21775E9B0);
    if (v562)
    {
      OUTLINED_FUNCTION_45_35();
      v372 = OUTLINED_FUNCTION_5_99();
      v374 = sub_21733E390(v372, v373);
      OUTLINED_FUNCTION_43_31();
      OUTLINED_FUNCTION_33_44();
      v375 = OUTLINED_FUNCTION_37_38();
      sub_2171F0738(v375, v376, v377);
      if ((v374 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_228;
    }

LABEL_224:
    v378 = OUTLINED_FUNCTION_38_37();
    sub_2171F0738(v378, v379, v380);
    goto LABEL_46;
  }

  if (v562)
  {
    goto LABEL_46;
  }

  v381 = OUTLINED_FUNCTION_37_38();
  sub_2171F0738(v381, v382, v383);
LABEL_228:
  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v384);
  v385 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v385, v386, &qword_27CB25318, &qword_2177657C0);
    if (!v562)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_45_35();
    v387 = OUTLINED_FUNCTION_5_99();
    v389 = sub_21733E33C(v387, v388);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v390 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v390, v391, v392);
    if ((v389 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v393 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v393, v394, v395);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v396);
  v397 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v397, v398, &qword_27CB25318, &qword_2177657C0);
    if (!v562)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_45_35();
    v399 = OUTLINED_FUNCTION_5_99();
    v401 = sub_21733E33C(v399, v400);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v402 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v402, v403, v404);
    if ((v401 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v405 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v405, v406, v407);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v408);
  v409 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v409, v410, &qword_27CB25318, &qword_2177657C0);
    if (!v562)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_45_35();
    v411 = OUTLINED_FUNCTION_5_99();
    v413 = sub_21733E33C(v411, v412);
    OUTLINED_FUNCTION_43_31();
    OUTLINED_FUNCTION_33_44();
    v414 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v414, v415, v416);
    if ((v413 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v562)
    {
      goto LABEL_46;
    }

    v417 = OUTLINED_FUNCTION_37_38();
    sub_2171F0738(v417, v418, v419);
  }

  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v420);
  v421 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v421, v422, &qword_27CB25310, &unk_21775D3D0);
    if (v562)
    {
      OUTLINED_FUNCTION_45_35();
      v423 = OUTLINED_FUNCTION_5_99();
      v425 = sub_21733E820(v423, v424);
      OUTLINED_FUNCTION_43_31();
      OUTLINED_FUNCTION_33_44();
      v426 = OUTLINED_FUNCTION_37_38();
      sub_2171F0738(v426, v427, v428);
      if ((v425 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_254;
    }

LABEL_250:
    v429 = OUTLINED_FUNCTION_38_37();
    sub_2171F0738(v429, v430, v431);
    goto LABEL_46;
  }

  if (v562)
  {
    goto LABEL_46;
  }

  v432 = OUTLINED_FUNCTION_37_38();
  sub_2171F0738(v432, v433, v434);
LABEL_254:
  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v435);
  v436 = OUTLINED_FUNCTION_4_120();
  if (*(&v558 + 1))
  {
    OUTLINED_FUNCTION_32_46(v436, v437, &qword_27CB25318, &qword_2177657C0);
    if (v562)
    {
      OUTLINED_FUNCTION_45_35();
      v438 = OUTLINED_FUNCTION_5_99();
      v440 = sub_21733E33C(v438, v439);
      OUTLINED_FUNCTION_43_31();
      OUTLINED_FUNCTION_33_44();
      v441 = OUTLINED_FUNCTION_37_38();
      sub_2171F0738(v441, v442, v443);
      if ((v440 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_262;
    }

LABEL_258:
    v444 = OUTLINED_FUNCTION_38_37();
    sub_2171F0738(v444, v445, v446);
    goto LABEL_46;
  }

  if (v562)
  {
    goto LABEL_46;
  }

  v447 = OUTLINED_FUNCTION_37_38();
  sub_2171F0738(v447, v448, v449);
LABEL_262:
  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v450);
  v451 = OUTLINED_FUNCTION_4_120();
  if (!*(&v558 + 1))
  {
    if (!v562)
    {
      v462 = OUTLINED_FUNCTION_37_38();
      sub_2171F0738(v462, v463, v464);
      goto LABEL_270;
    }

LABEL_46:
    v70 = OUTLINED_FUNCTION_37_38();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_32_46(v451, v452, &qword_27CB25338, &unk_21775D3E0);
  if (!v562)
  {
    goto LABEL_266;
  }

  OUTLINED_FUNCTION_45_35();
  v453 = OUTLINED_FUNCTION_5_99();
  v455 = sub_21733E8C8(v453, v454);
  OUTLINED_FUNCTION_43_31();
  OUTLINED_FUNCTION_33_44();
  v456 = OUTLINED_FUNCTION_37_38();
  sub_2171F0738(v456, v457, v458);
  if ((v455 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_270:
  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_3_116(v465);
  v466 = OUTLINED_FUNCTION_4_120();
  if (!*(&v558 + 1))
  {
    if (!v562)
    {
      v474 = OUTLINED_FUNCTION_37_38();
      sub_2171F0738(v474, v475, v476);
      goto LABEL_276;
    }

    goto LABEL_46;
  }

  OUTLINED_FUNCTION_32_46(v466, v467, &qword_27CB255A8, &unk_21775D450);
  if (!v562)
  {
    v481 = OUTLINED_FUNCTION_38_37();
    sub_2171F0738(v481, v482, v483);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_45_35();
  v468 = OUTLINED_FUNCTION_5_99();
  v470 = sub_21733E970(v468, v469);
  OUTLINED_FUNCTION_43_31();
  OUTLINED_FUNCTION_33_44();
  v471 = OUTLINED_FUNCTION_37_38();
  sub_2171F0738(v471, v472, v473);
  if ((v470 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_276:
  v477 = v522[44];
  v478 = *(v524 + v477);
  if (*(v523 + v477))
  {
    if (!v478)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_21726F358();
    v480 = v479;

    if ((v480 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v478)
  {
    goto LABEL_13;
  }

  v484 = OUTLINED_FUNCTION_58_22(v522[45]);
  sub_217270140(v484, v485, v486, v487, v488, v489, v490, v491, v520, v521, v522, v523);
  if (v492)
  {
    OUTLINED_FUNCTION_255(v540);
    OUTLINED_FUNCTION_255(v539);
    OUTLINED_FUNCTION_255(v541);
    OUTLINED_FUNCTION_255(v538);
    sub_217269EF4(v540, v537);
    sub_217269EF4(v541, v537);
    static MusicIdentifierSet.== infix(_:_:)();
    v494 = v493;
    v495 = OUTLINED_FUNCTION_38_37();
    memcpy(v495, v538, 0x161uLL);
    v496 = OUTLINED_FUNCTION_38_37();
    sub_217269F50(v496);
    v497 = OUTLINED_FUNCTION_37_38();
    memcpy(v497, v539, 0x161uLL);
    v498 = OUTLINED_FUNCTION_37_38();
    sub_217269F50(v498);
    if (v494)
    {
      v499 = v522[47];
      v500 = *(v523 + v499);
      v501 = *(v523 + v499 + 8);
      v502 = (v524 + v499);
      v503 = v500 == *v502 && v501 == v502[1];
      if (v503 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_109_16();
        if (!v504)
        {
          if (v505)
          {
            goto LABEL_13;
          }

          goto LABEL_299;
        }

        if (v505)
        {
          v508 = *v506 == *v507 && v504 == v505;
          if (v508 || (sub_217753058() & 1) != 0)
          {
LABEL_299:
            v509 = OUTLINED_FUNCTION_58_22(v522[49]);
            sub_217261FB0(v509, v510);
            if (v511)
            {
              v512 = OUTLINED_FUNCTION_58_22(v522[50]);
              sub_217261FB0(v512, v513);
              if (v514)
              {
                v515 = OUTLINED_FUNCTION_58_22(v522[51]);
                sub_217261FB0(v515, v516);
                if (v517)
                {
                  v518 = OUTLINED_FUNCTION_58_22(v522[52]);
                  sub_217261FB0(v518, v519);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}