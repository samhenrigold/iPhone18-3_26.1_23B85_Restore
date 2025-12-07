uint64_t sub_2173B6778(uint64_t a1)
{
  sub_217752DC8();
  OUTLINED_FUNCTION_44_1();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173B67C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2173B6778(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2173B67F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2173B5950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2173B6908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2172849C8;

  return MusicCatalogSearchSuggestionsRequest.catalogResponse()();
}

void static MusicCatalogSearchSuggestionsRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return;
  }

  v5 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return;
    }
  }

  v6 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      return;
    }
  }

  v7 = *(a2 + 56);
  if (a1[7])
  {
    if (!*(a2 + 56))
    {
      return;
    }

    goto LABEL_24;
  }

  if (a1[6] != *(a2 + 48))
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
LABEL_24:
    if (*(a1 + 57) == *(a2 + 57))
    {
      v8 = a1[11];
      v9 = a1[12];
      __swift_project_boxed_opaque_existential_1(a1 + 8, v8);
      v10 = *(v9 + 112);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
      if (v10(a2 + 64, v11, v8, v9))
      {
        sub_217273E7C();
        if (v12)
        {

          sub_217270BE0();
        }
      }
    }
  }
}

void MusicCatalogSearchSuggestionsRequest.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  if (*(v1 + 24) == 1)
  {
    sub_217753208();
  }

  else
  {
    v3 = *(v1 + 16);
    sub_217753208();
    MEMORY[0x21CEA3550](v3);
  }

  if (*(v1 + 40) == 1)
  {
    sub_217753208();
  }

  else
  {
    v4 = *(v1 + 32);
    sub_217753208();
    MEMORY[0x21CEA3550](v4);
  }

  if (*(v1 + 56) == 1)
  {
    sub_217753208();
  }

  else
  {
    v5 = *(v1 + 48);
    sub_217753208();
    MEMORY[0x21CEA3550](v5);
  }

  sub_217753208();
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 64), v6);
  (*(v7 + 120))(a1, v6, v7);
  sub_2172832B8(a1, *(v1 + 104), v8, v9, v10, v11, v12);

  sub_21727D7C8();
}

uint64_t MusicCatalogSearchSuggestionsRequest.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173B6CA4(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsRequest.hash(into:)(v2);
  return sub_217753238();
}

uint64_t *static MusicCatalogSearchSuggestionsRequest.supportedTypeValues.getter()
{
  v1 = sub_2175F30F4();
  v2 = sub_2173B19F4(v1, sub_2176F77F4, sub_2176F865C);
  v7 = v2;
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchSuggestionsResponse, &type metadata for MusicCatalogSearchSuggestionsResponse, &protocol descriptor for MusicCatalogSearchSuggestionsExtendedResponse))
  {
    OUTLINED_FUNCTION_40();
    v3();
    v5 = (*(v4 + 40))();
    v0 = &v7;
    sub_217543D94(v5);
    v2 = v7;
  }

  sub_2173DB0E4(v2);
  OUTLINED_FUNCTION_44_1();

  return v0;
}

uint64_t sub_2173B6DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v46 = a3;
  v52 = a6;
  v53 = a2;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v47 = v16 - v15;
  sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v48 = v18;
  v49 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v23 = OUTLINED_FUNCTION_44_1();
  v25 = v24(v23, v22);
  v27 = v26;
  v28 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v29 = OUTLINED_FUNCTION_44_1();
  v31 = v30(v29, v28);
  v33 = v32;
  sub_217751508();
  sub_217751DE8();
  v45 = v25;
  sub_2177514D8();
  sub_217751DE8();
  MEMORY[0x21CEA17F0](v31, v33);
  v34 = v53;
  sub_217751DE8();
  v35 = v46;
  MEMORY[0x21CEA1810](v50, v34);
  if (*(v35 + 16))
  {
    sub_217751DE8();
    sub_217751458();
  }

  sub_217751488();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2171F0738(v10, &unk_27CB277C0, &qword_217758DC0);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD000000000000036);
    MEMORY[0x21CEA23B0](v50, v53);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_42_10();
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
    sub_21733AB9C(a5);

    v37 = *(v13 + 32);
    v38 = v47;
    v37(v47, v10, v11, v36);
    v39 = v52;
    (v37)(v52, v38, v11);
    v40 = type metadata accessor for MusicAPI.Endpoint(0);
    result = (*(v48 + 32))(v39 + v40[5], v21, v49);
    *(v39 + v40[6]) = v51 & 1;
    v42 = (v39 + v40[7]);
    *v42 = v45;
    v42[1] = v27;
    v43 = (v39 + v40[8]);
    *v43 = v31;
    v43[1] = v33;
  }

  return result;
}

uint64_t sub_2173B728C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_2173B7304(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_217492390();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_2173B73C4(v5);
  *a1 = v2;
}

unint64_t sub_2173B7370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26E30;
  if (!qword_27CB26E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E30);
  }

  return result;
}

void sub_2173B73C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_217752FB8();
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
        v6 = sub_217752348();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2173B7598(v7, v8, a1, v4);
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
    sub_2173B74B8(0, v2, 1, a1);
  }
}

uint64_t sub_2173B74B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 24);
        if (result == *v10 && *(v10 + 32) == *(v10 + 8))
        {
          break;
        }

        result = sub_217753058();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 24);
        v12 = *(v10 + 32);
        v14 = *(v10 + 40);
        v15 = *(v10 + 16);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v15;
        *v10 = v13;
        *(v10 + 8) = v12;
        *(v10 + 16) = v14;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2173B7598(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 24 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 24 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_217753058();
        }

        v10 = v9 + 2;
        v18 = 24 * v9;
        v19 = (v11 + 24 * v9 + 56);
        while (v10 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_217753058()))
          {
            break;
          }

          ++v10;
          v19 += 3;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v21 = 24 * v10 - 8;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = *(v25 + 16);
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v10 < v31)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v93 = v5;
          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
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
LABEL_129:
            __break(1u);
            return;
          }

          if (v10 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v10 - 24;
            v92 = v9;
            v35 = v9 - v10;
            do
            {
              v36 = v35;
              v37 = v34;
              do
              {
                v38 = *(v37 + 24) == *v37 && *(v37 + 32) == *(v37 + 8);
                if (v38 || (sub_217753058() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v40 = *(v37 + 24);
                v39 = *(v37 + 32);
                v41 = *(v37 + 40);
                v42 = *(v37 + 16);
                *(v37 + 24) = *v37;
                *(v37 + 40) = v42;
                *v37 = v40;
                *(v37 + 8) = v39;
                *(v37 + 16) = v41;
                v37 -= 24;
              }

              while (!__CFADD__(v36++, 1));
              ++v10;
              v34 += 24;
              --v35;
            }

            while (v10 != v32);
            v10 = v32;
            v9 = v92;
          }

          v5 = v93;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2310(0, v8[2] + 1, 1, v8);
        v8 = v88;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_2172B2310(v44 > 1, v45 + 1, 1, v8);
        v8 = v89;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v10;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_2173B7C1C((*a3 + 24 * *v81), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v82)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v49 > v86)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_107;
          }

          v46 = v86 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_2173B7AE4(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_2173B7AE4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_217717044(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2173B7C1C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2173B7C1C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2175000D8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_217753058() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_2175000D8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_217753058() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = 24 * ((v10 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

unint64_t sub_2173B7DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26E38;
  if (!qword_27CB26E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E38);
  }

  return result;
}

uint64_t sub_2173B7E4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2173B7E8C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogSearchSuggestionsRequest.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173B7FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26E40;
  if (!qword_27CB26E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E40);
  }

  return result;
}

unint64_t sub_2173B8070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26E58;
  if (!qword_27CB26E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E58);
  }

  return result;
}

unint64_t sub_2173B80C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4108;
  if (!qword_280BE4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4108);
  }

  return result;
}

uint64_t sub_2173B821C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2173B8280(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2173B82E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2173B8358()
{
  result = qword_27CB24868;
  if (!qword_27CB24868)
  {
    sub_217751428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52_12()
{

  return sub_217751DC8();
}

MusicKit::MusicLyrics __swiftcall MusicLyrics.init(hasLyrics:hasTimeSyncedLyrics:hasCustomLyrics:customLyrics:)(Swift::Bool_optional hasLyrics, Swift::Bool_optional hasTimeSyncedLyrics, Swift::Bool_optional hasCustomLyrics, Swift::String_optional customLyrics)
{
  *v4 = hasLyrics;
  *(v4 + 1) = hasTimeSyncedLyrics;
  *(v4 + 2) = hasCustomLyrics;
  *(v4 + 8) = customLyrics;
  LOBYTE(result.customLyrics.value._object) = hasCustomLyrics;
  LOBYTE(result.customLyrics.value._countAndFlagsBits) = hasTimeSyncedLyrics;
  result.hasLyrics = hasLyrics;
  return result;
}

uint64_t MusicLyrics.customLyrics.getter()
{
  v1 = *(v0 + 8);
  sub_217751DE8();
  return v1;
}

void MusicLyrics.customLyrics.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t static MusicLyrics.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
    {
      return v14;
    }
  }

  if (v5 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v10 == 2 || ((v10 ^ v5) & 1) != 0)
    {
      return v14;
    }
  }

  if (v6 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v11 == 2 || ((v11 ^ v6) & 1) != 0)
    {
      return v14;
    }
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v15 = v7 == v12 && v8 == v13;
    if (!v15 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2173B8790(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000002177AD140 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F74737543736168 && a2 == 0xEF73636972794C6DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x794C6D6F74737563 && a2 == 0xEC00000073636972)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

unint64_t sub_2173B8904(char a1)
{
  result = 0x636972794C736168;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6F74737543736168;
      break;
    case 3:
      result = 0x794C6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173B89AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173B8790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173B89D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173B8DA4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173B8A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173B8DA4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t MusicLyrics.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 16);
  if (*v1 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v3 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!v4)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicLyrics.hashValue.getter()
{
  v1 = *(v0 + 2);
  v3[36] = *v0;
  v4 = v1;
  v5 = *(v0 + 8);
  sub_2177531E8();
  MusicLyrics.hash(into:)(v3);
  return sub_217753238();
}

uint64_t sub_2173B8B9C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v4[36] = *v1;
  v5 = v2;
  v6 = *(v1 + 8);
  sub_2177531E8();
  MusicLyrics.hash(into:)(v4);
  return sub_217753238();
}

uint64_t MusicLyrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E88, &qword_217767AB0);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v19 = v1[1];
  v18 = v1[2];
  v10 = *(v1 + 1);
  v17[1] = *(v1 + 2);
  v17[2] = v10;
  v11 = *v1;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173B8DA4(v12, v13, v14);
  sub_2177532F8();
  v23 = 0;
  OUTLINED_FUNCTION_3_41(v11, &v23);
  if (!v2)
  {
    v15 = v18;
    v22 = 1;
    OUTLINED_FUNCTION_3_41(v19, &v22);
    v21 = 2;
    OUTLINED_FUNCTION_3_41(v15, &v21);
    v20 = 3;
    sub_217752EF8();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_2173B8DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26E90;
  if (!qword_27CB26E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E90);
  }

  return result;
}

void MusicLyrics.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E98, &qword_217767AB8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173B8DA4(v11, v12, v13);
  sub_2177532C8();
  if (!v2)
  {
    v26 = 0;
    OUTLINED_FUNCTION_0_46();
    v14 = sub_217752E28();
    v25 = 1;
    OUTLINED_FUNCTION_0_46();
    v15 = sub_217752E28();
    v24 = 2;
    OUTLINED_FUNCTION_0_46();
    v22 = sub_217752E28();
    v23 = 3;
    OUTLINED_FUNCTION_0_46();
    v16 = sub_217752E18();
    v18 = v17;
    v19 = *(v7 + 8);
    v21 = v16;
    v19(v10, v5);
    *a2 = v14;
    *(a2 + 1) = v15;
    *(a2 + 2) = v22;
    *(a2 + 8) = v21;
    *(a2 + 16) = v18;
    sub_217751DE8();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicLyrics.description.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  OUTLINED_FUNCTION_1_41();
  v4 = Optional<A>.musicKit_prettyDescription.getter(v3);
  MEMORY[0x21CEA23B0](v4);

  MEMORY[0x21CEA23B0](0x636972794C736168, 0xEB00000000203A73, v5);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v14 = v6;
  v7 = Optional<A>.musicKit_prettyDescription.getter(v1);
  MEMORY[0x21CEA23B0](v7);

  MEMORY[0x21CEA23B0](0xD000000000000017, v14, v8);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v15 = v9;
  v10 = Optional<A>.musicKit_prettyDescription.getter(v2);
  MEMORY[0x21CEA23B0](v10);

  MEMORY[0x21CEA23B0](0xD000000000000013, v15, v11);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v12);
  return v16;
}

uint64_t MusicLyrics.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  OUTLINED_FUNCTION_1_41();
  OUTLINED_FUNCTION_5_34();
  sub_217752AA8();

  strcpy(v17, "\n  hasLyrics: ");
  HIBYTE(v17[1]) = -18;
  v6 = Optional<A>.musicKit_prettyDescription.getter(v3);
  MEMORY[0x21CEA23B0](v6);

  MEMORY[0x21CEA23B0](v17[0], v17[1], v7);

  OUTLINED_FUNCTION_5_34();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v17[1] = v8;
  v9 = Optional<A>.musicKit_prettyDescription.getter(v4);
  MEMORY[0x21CEA23B0](v9);

  MEMORY[0x21CEA23B0](0xD000000000000019, v17[1], v10);

  OUTLINED_FUNCTION_5_34();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v17[1] = v11;
  v12 = Optional<A>.musicKit_prettyDescription.getter(v5);
  MEMORY[0x21CEA23B0](v12);

  MEMORY[0x21CEA23B0](0xD000000000000015, v17[1], v13);

  if (v2)
  {
    OUTLINED_FUNCTION_5_34();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v17[1] = v15;
    MEMORY[0x21CEA23B0](v1, v2);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000013, v17[1]);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v14);
  return v17[2];
}

unint64_t sub_2173B9394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26EA0;
  if (!qword_27CB26EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EA0);
  }

  return result;
}

uint64_t sub_2173B93E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_2173B943C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicLyrics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173B9580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26EA8;
  if (!qword_27CB26EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EA8);
  }

  return result;
}

unint64_t sub_2173B95D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26EB0;
  if (!qword_27CB26EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EB0);
  }

  return result;
}

unint64_t sub_2173B9630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26EB8;
  if (!qword_27CB26EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EB8);
  }

  return result;
}

uint64_t sub_2173B9684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2173B96C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2173B9700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2173B978C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __src[0] = a1;
  *a5 = sub_217752FC8();
  a5[1] = v9;
  memcpy(v13, a2, 0x49uLL);
  v11 = type metadata accessor for MusicLibraryRequest(0, a3, a4, v10);
  UncheckedSendableWrapper.init(_:)(v13, v11, __src);
  return memcpy(a5 + 2, __src, 0x49uLL);
}

uint64_t sub_2173B9830(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[55] = a5;
  v7[56] = a6;
  v7[53] = a1;
  v7[54] = a4;
  memcpy(v7 + 41, v6, 0x59uLL);
  v11 = swift_task_alloc();
  v7[57] = v11;
  *v11 = v7;
  v11[1] = sub_2173B9900;

  return sub_2173B9C9C((v7 + 2), a2, a3 & 1, a4);
}

uint64_t sub_2173B9900()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 464) = v0;

  if (v0)
  {
    v5 = sub_2173B9C84;
  }

  else
  {
    v5 = sub_2173B9A08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2173B9A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 440);
  v5 = *(v4 + 448);
  v7 = type metadata accessor for MusicItemCollection(0, *(*(v4 + 432) + 16), *(*(*(v4 + 432) + 24) + 8), a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4 + 120, v4 + 16, v7);
  type metadata accessor for MusicItemCollection(0, v6, v5, v9);
  if (swift_dynamicCast())
  {
    v10 = *(v4 + 424);
    (*(v8 + 8))(v4 + 16, v7);
    memcpy(v10, (v4 + 224), 0x68uLL);
    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    sub_2177528F8();
    *(v4 + 224) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 272) = 0u;
    *(v4 + 288) = 0u;
    *(v4 + 304) = 0u;
    *(v4 + 320) = 0;
    OUTLINED_FUNCTION_41_0();
    (*(v13 + 8))(v4 + 224);
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000048, 0x80000002177AD190);
    v14 = sub_217753348();
    MEMORY[0x21CEA23B0](v14);

    MEMORY[0x21CEA23B0](0xD00000000000001ELL, 0x80000002177AD1E0, v15);
    v16 = sub_217753348();
    MEMORY[0x21CEA23B0](v16);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v17);
    return sub_217752D08();
  }
}

uint64_t sub_2173B9C9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 912) = a4;
  *(v5 + 193) = a3;
  *(v5 + 904) = a2;
  *(v5 + 896) = a1;
  v6 = v4[1];
  *(v5 + 920) = *v4;
  *(v5 + 928) = v6;
  memcpy((v5 + 120), v4 + 2, 0x49uLL);
  sub_217751DE8();

  return MEMORY[0x2822009F8](sub_2173B9D34, 0, 0);
}

unint64_t sub_2173B9D34()
{
  v1 = *(v0 + 928);
  if (!v1)
  {
    return sub_217752D08();
  }

  result = *(v0 + 920);
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return sub_217752D08();
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    if ((v1 & 0x2000000000000000) != 0)
    {
      if (*(v0 + 920) == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_9_24();
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
              if (v9)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (*(v0 + 920) != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_47();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v9)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_9_24();
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_47();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v9)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_217752B88();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_2();
                if (!v9 & v8)
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_0_47();
                if (!v9)
                {
                  goto LABEL_69;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_2_5();
                if (v9)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }

        goto LABEL_83;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_69;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_69;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_69:
        v7 = 0;
        v12 = 1;
LABEL_70:
        v23 = v12;

        if (v23)
        {
          return sub_217752D08();
        }

        goto LABEL_74;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v9 & v8)
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v9)
              {
                goto LABEL_69;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_2_5();
              if (v9)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_60:
          v12 = 0;
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v7 = sub_2175B1ECC();
  v25 = v24;

  if (v25)
  {
    return sub_217752D08();
  }

LABEL_74:
  v26 = *(v0 + 160);
  *(v0 + 840) = *(v0 + 144);
  *(v0 + 856) = v26;
  v28 = *(v0 + 144);
  v27 = *(v0 + 160);
  *(v0 + 872) = *(v0 + 176);
  *(v0 + 936) = v7;
  v29 = *(v0 + 912);
  v30 = *(v0 + 193);
  v31 = *(v0 + 904);
  v32 = *(v0 + 120);
  *(v0 + 944) = v32;
  v33 = *(v0 + 128);
  *(v0 + 952) = v33;
  *(v0 + 888) = *(v0 + 192);
  if (v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
  }

  *(v0 + 200) = v32;
  *(v0 + 208) = v34;
  *(v0 + 216) = v7;
  *(v0 + 224) = v28;
  *(v0 + 240) = v27;
  *(v0 + 256) = *(v0 + 176);
  *(v0 + 272) = *(v0 + 192);
  memcpy((v0 + 280), (v0 + 200), 0x49uLL);
  v36 = type metadata accessor for MusicLibraryRequest(255, *(v29 + 16), *(v29 + 24), v35);
  *(v0 + 960) = v36;
  type metadata accessor for UncheckedSendableWrapper(0, v36, v37, v38);
  OUTLINED_FUNCTION_41_0();
  (*(v39 + 16))(v0 + 360, v0 + 120);
  v40 = *(v36 - 8);
  *(v0 + 968) = v40;
  (*(v40 + 16))(v0 + 440, v0 + 200, v36);
  v41 = swift_task_alloc();
  *(v0 + 976) = v41;
  *v41 = v0;
  v41[1] = sub_2173BA194;

  return MusicLibraryRequest.response()();
}

uint64_t sub_2173BA194()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v2[121];
  *v4 = *v1;
  v3[123] = v0;

  v6 = v5 + 8;
  v3[124] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = v2[120];
  if (v0)
  {
    memcpy(v3 + 75, v3 + 35, 0x49uLL);
    v8 = *v6;
    v3[126] = *v6;
    v8(v3 + 75, v7);
    v9 = sub_2173BA408;
  }

  else
  {
    memcpy(v3 + 95, v3 + 35, 0x49uLL);
    v10 = *v6;
    v3[125] = *v6;
    v10(v3 + 95, v7);
    v9 = sub_2173BA340;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2173BA340()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 1000);
  v2 = *(v0 + 960);
  v3 = *(v0 + 936);
  v4 = 904;
  if (*(v0 + 193))
  {
    v4 = 952;
  }

  v5 = *(v0 + v4);
  v6 = *(v0 + 896);
  *(v0 + 680) = *(v0 + 944);
  *(v0 + 688) = v5;
  *(v0 + 696) = v3;
  *(v0 + 752) = *(v0 + 888);
  v7 = *(v0 + 856);
  *(v0 + 704) = *(v0 + 840);
  *(v0 + 720) = v7;
  *(v0 + 736) = *(v0 + 872);
  v1(v0 + 680, v2);
  memcpy(v6, (v0 + 16), 0x68uLL);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2173BA408()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 1008);
  v2 = *(v0 + 960);
  v3 = 904;
  if (*(v0 + 193))
  {
    v3 = 952;
  }

  v4 = *(v0 + v3);
  v5 = *(v0 + 936);
  *(v0 + 520) = *(v0 + 944);
  *(v0 + 528) = v4;
  *(v0 + 536) = v5;
  *(v0 + 592) = *(v0 + 888);
  v6 = *(v0 + 856);
  *(v0 + 544) = *(v0 + 840);
  *(v0 + 560) = v6;
  *(v0 + 576) = *(v0 + 872);
  v1(v0 + 520, v2);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2173BA4BC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4 && v5)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_217753058();
    }
  }

  return result;
}

uint64_t sub_2173BA504(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2173BA57C()
{
  sub_2177531E8();
  sub_2173BA504(v1);
  return sub_217753238();
}

uint64_t sub_2173BA5BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2173BA694;

  return sub_2173B9830(a1, a2, a3 & 1, a6, a4, a5);
}

uint64_t sub_2173BA694()
{
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2173BA788(uint64_t a1)
{
  sub_2177531E8();
  sub_2173BA504(v2);
  return sub_217753238();
}

uint64_t sub_2173BA7C4(void *a1)
{
  sub_217752B38();
  OUTLINED_FUNCTION_0_39();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217753298();
  OUTLINED_FUNCTION_2_43();
  sub_217752B08();
  sub_217752B48();
  swift_allocError();
  v8 = v7;
  (*(v5 + 16))(v7, v2, v1);
  OUTLINED_FUNCTION_41_0();
  (*(v9 + 104))(v8);
  swift_willThrow();
  (*(v5 + 8))(v2, v1);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2173BA934(void *a1, uint64_t a2)
{
  sub_217752B68();
  OUTLINED_FUNCTION_0_39();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_2();
  memcpy(__dst, v2, 0x59uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532D8();
  OUTLINED_FUNCTION_2_43();
  sub_217752B08();
  sub_217752B78();
  swift_allocError();
  v11 = v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26EC0, &qword_217786330) + 48);
  v11[3] = a2;
  v13 = swift_allocObject();
  *v11 = v13;
  memcpy((v13 + 16), __dst, 0x59uLL);
  (*(v8 + 16))(v11 + v12, v4, v3);
  OUTLINED_FUNCTION_41_0();
  (*(v14 + 104))(v11);
  swift_willThrow();
  OUTLINED_FUNCTION_41_0();
  (*(v15 + 16))(v17, __dst, a2);
  return (*(v8 + 8))(v4, v3);
}

char *sub_2173BAB60()
{
  if (qword_280BE9F10 != -1)
  {
    OUTLINED_FUNCTION_1_42();
    swift_once();
  }

  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  result = [qword_280C029A0 authorizationStatusForScopes_];
  v1 = result;
  switch(result)
  {
    case 0uLL:
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_2_44(&qword_280BE73E0);
      }

      v2 = sub_217751AF8();
      __swift_project_value_buffer(v2, qword_280C023A8);
      sub_217751DE8();
      v3 = sub_217751AD8();
      v4 = sub_217752808();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_19;
      }

      swift_slowAlloc();
      v5 = OUTLINED_FUNCTION_8_29();
      v38 = v5;
      v13 = OUTLINED_FUNCTION_4_46(4.8151e-34, v5, v6, v7, v8, v9, v10, v11, v12);
      OUTLINED_FUNCTION_5_35(v13);
      *(v1 + 14) = sub_21729C0E8(0x65746544746F6E2ELL, 0xEE0064656E696D72, &v38);
      v14 = "Failed to %s because the music authorization status is set to %s. Please make sure to request authorization for your app to access the user's Apple Music data using MusicAuthorization.request().";
      break;
    case 1uLL:
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_2_44(&qword_280BE73E0);
      }

      v15 = sub_217751AF8();
      __swift_project_value_buffer(v15, qword_280C023A8);
      sub_217751DE8();
      v3 = sub_217751AD8();
      v4 = sub_217752808();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_19;
      }

      swift_slowAlloc();
      v5 = OUTLINED_FUNCTION_8_29();
      v38 = v5;
      v23 = OUTLINED_FUNCTION_4_46(4.8151e-34, v5, v16, v17, v18, v19, v20, v21, v22);
      OUTLINED_FUNCTION_5_35(v23);
      *(v1 + 14) = sub_21729C0E8(0x6465696E65642ELL, 0xE700000000000000, &v38);
      v14 = "Failed to %s because the music authorization status is set to %s. This is recoverable by guiding your user to the privacy settings, so they can grant your app access to Apple Music.";
      break;
    case 2uLL:
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_2_44(&qword_280BE73E0);
      }

      v24 = sub_217751AF8();
      __swift_project_value_buffer(v24, qword_280C023A8);
      sub_217751DE8();
      v3 = sub_217751AD8();
      v4 = sub_217752808();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_19;
      }

      swift_slowAlloc();
      v5 = OUTLINED_FUNCTION_8_29();
      v38 = v5;
      v32 = OUTLINED_FUNCTION_4_46(4.8151e-34, v5, v25, v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_5_35(v32);
      *(v1 + 14) = sub_21729C0E8(0x636972747365722ELL, 0xEB00000000646574, &v38);
      v14 = "Failed to %s because the music authorization status is set to %s. Access to MusicKit is restricted in a way that the user cannot change.";
      break;
    case 3uLL:
      return result;
    default:
      sub_217752AA8();
      v37 = OUTLINED_FUNCTION_7_26();
      MEMORY[0x21CEA23B0](v37);
      type metadata accessor for ICCloudServiceAuthorizationStatus(0);
      sub_217752C78();
      MEMORY[0x21CEA23B0](46, 0xE100000000000000);
      OUTLINED_FUNCTION_6_28();
      OUTLINED_FUNCTION_3_42();
      result = sub_217752D08();
      __break(1u);
      return result;
  }

  _os_log_impl(&dword_2171EE000, v3, v4, v14, v1, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CEA4360](v5, -1, -1);
  MEMORY[0x21CEA4360](v1, -1, -1);
LABEL_19:

  sub_217354318(v33, v34, v35);
  swift_allocError();
  *v36 = 1;
  return swift_willThrow();
}

uint64_t sub_2173BAFBC()
{
  if (qword_280BE9F10 != -1)
  {
    OUTLINED_FUNCTION_1_42();
    swift_once();
  }

  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  v1 = qword_280C029A0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2173BB124;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB26EC8, &qword_217767E98);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2173BB324;
  v0[13] = &block_descriptor_4;
  v0[14] = v2;
  [v1 requestAuthorizationForScopes:2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2173BB124()
{

  return MEMORY[0x2822009F8](sub_2173BB204, 0, 0);
}

uint64_t sub_2173BB204()
{
  v1 = *(v0 + 144);
  if (v1 >= 4)
  {
    sub_217752AA8();
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    MEMORY[0x21CEA23B0](0xD000000000000038, 0x80000002177AD3A0);
    *(v0 + 144) = v1;
    type metadata accessor for ICCloudServiceAuthorizationStatus(0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_6_28();
    OUTLINED_FUNCTION_3_42();
    return sub_217752D08();
  }

  else
  {
    **(v0 + 152) = v1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2173BB324(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return sub_217717518(v3, a2);
}

_BYTE *storeEnumTagSinglePayload for MusicAuthorization(_BYTE *result, int a2, int a3)
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

void *sub_2173BB41C@<X0>(void *__src@<X5>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a4;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v12;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  result = memcpy((a9 + 40), __src, 0x68uLL);
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  return result;
}

uint64_t MusicCatalogChart.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for MusicItemCollection(0, *(a1 + 16), *(*(a1 + 24) + 8), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3 + 40, v5);
}

uint64_t sub_2173BB544@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogChart.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MusicCatalogChart<>.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v10 || (sub_217753058()) && *(a1 + 16) == *(a2 + 16))
  {
    v11 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
    if (v11 || (sub_217753058()) && (static MusicItemCollection<>.== infix(_:_:)((a1 + 5), a2 + 40, a3, *(a4 + 8), a5))
    {
      v12 = a1[19];
      v13 = *(a2 + 152);
      if (v12)
      {
        if (v13)
        {
          v14 = a1[18] == *(a2 + 144) && v12 == v13;
          if (v14 || (sub_217753058() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v13)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MusicCatalogChart<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217751FF8();
  MEMORY[0x21CEA3550](*(v3 + 16));
  sub_217751FF8();
  v7 = type metadata accessor for MusicItemCollection(0, *(a2 + 16), *(*(a2 + 24) + 8), v6);
  MusicItemCollection<>.hash(into:)(a1, v7);
  if (!*(v3 + 152))
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicCatalogChart<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  MusicCatalogChart<>.hash(into:)(v5, a1, a2);
  return sub_217753238();
}

uint64_t sub_2173BB7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicCatalogChart<>.hash(into:)(v6, a2, v4);
  return sub_217753238();
}

uint64_t MusicCatalogChart<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2171FF30C(a1, v24);
  sub_21737EA04(v24, a2, a4, v25, v11);
  if (!v5)
  {
    v14 = type metadata accessor for CatalogRawChart(0, a2, v12, v13);
    v15 = *(v14 - 8);
    (*(v15 + 16))(v24, v25, v14);
    v16 = a1[3];
    v17 = a1[4];
    v18 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    Decoder.dataRequestConfiguration.getter(v16, v17);
    v20 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v20, v21);
    Decoder.sharedRelatedItemStore.getter();
    sub_21737F0E8(v24, &v23, a2, &type metadata for AnyMusicDataRequestConfiguration, a3, &protocol witness table for AnyMusicDataRequestConfiguration, a5);
    (*(v15 + 8))(v25, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogChart<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  Encoder.dataRequestConfiguration.getter(v6, v7);
  sub_21737F41C(a2, &protocol witness table for AnyMusicDataRequestConfiguration, v13);
  sub_21733AB9C(&v12);
  v10 = type metadata accessor for CatalogRawChart(0, *(a2 + 16), v8, v9);
  sub_21737ED84(a1, v10, a3);
  return (*(*(v10 - 8) + 8))(v13, v10);
}

unint64_t sub_2173BBAC4(char a1, uint64_t a2)
{
  to._countAndFlagsBits = 0x22203A646920200ALL;
  to._object = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v2, *(v2 + 8));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  strcpy(v17, ",\n  kind: ");
  BYTE3(v17[1]) = 0;
  HIDWORD(v17[1]) = -369098752;
  v5 = 0x706F54797469632ELL;
  v6 = 0xEF706F546C61626FLL;
  if (*(v2 + 16) == 1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x6C47796C6961642ELL;
  }

  if (*(v2 + 16))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C5074736F6D2ELL;
  }

  if (*(v2 + 16))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000646579;
  }

  MEMORY[0x21CEA23B0](v7, v8);

  MEMORY[0x21CEA23B0](v17[0], v17[1], v9);

  strcpy(v17, ",\n  title: ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  MEMORY[0x21CEA23B0](*(v2 + 24), *(v2 + 32), v10);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v17[0], v17[1]);

  type metadata accessor for MusicItemCollection(0, *(a2 + 16), *(*(a2 + 24) + 8), v11);
  swift_getWitnessTable();
  v12._countAndFlagsBits = 0x736D657469;
  v12._object = 0xE500000000000000;
  RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(v12, a1 & 1, &to);
  if (MusicItemCollection.hasNextBatch.getter())
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  sub_217752AA8();

  v13 = sub_217753348();
  MEMORY[0x21CEA23B0](v13);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000, v14);
  MEMORY[0x21CEA23B0](to._countAndFlagsBits, to._object);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v15);
  return 0xD000000000000012;
}

uint64_t sub_2173BBDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2173BBE14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2173BBE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MusicCatalogChartsRequest.response()()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_217282D8C;

  return sub_2173BC97C();
}

void MusicCatalogChartsRequest.init(genre:kinds:types:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  swift_beginAccess();
  v8 = off_280BEBCD0;

  (v8)(&v33, v9);

  v10 = v35;
  v11 = v36;
  __swift_project_boxed_opaque_existential_1(&v33, v35);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v10, v11, v7 + 40);
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v12 = *(a3 + 16);
  if (v12)
  {
    v29 = a1;
    v30 = a2;
    v31 = v7;
    v32 = MEMORY[0x277D84F90];
    sub_217276E20(0, v12, 0);
    v13 = 0;
    v14 = 32;
    v15 = v32;
    while (v13 < *(a3 + 16))
    {
      if (!dynamic_cast_existential_1_conditional(*(a3 + v14), *(a3 + v14), &protocol descriptor for MusicItemTypeValueProviding))
      {
        goto LABEL_12;
      }

      (*(v16 + 8))(&v33);
      v17 = v33;
      v19 = v34;
      v18 = v35;
      v21 = *(v32 + 16);
      v20 = *(v32 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_57(v20);
        v28 = v24;
        sub_217276E20(v23, v21 + 1, 1);
        v17 = v28;
      }

      *(v32 + 16) = v21 + 1;
      v22 = v32 + 32 * v21;
      *(v22 + 32) = v17;
      ++v13;
      *(v22 + 48) = v19;
      *(v22 + 56) = v18;
      v14 += 16;
      if (v12 == v13)
      {

        a2 = v30;
        v7 = v31;
        a1 = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v26 = sub_217753348();
    MEMORY[0x21CEA23B0](v26);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AD460, v27);
    OUTLINED_FUNCTION_19_4("Fatal error");
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_10:
    v25 = *(a1 + 16);
    *(v7 + 80) = *a1;
    *(v7 + 96) = v25;
    *(v7 + 112) = *(a1 + 32);
    *(v7 + 128) = *(a1 + 48);
    *(v7 + 136) = a2;
    *(v7 + 144) = v15;
    *(v7 + 152) = 0;
  }
}

double MusicCatalogChartsRequest.genre.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2173C2BB0(v1 + 80, v5);
  if (v8 == 1)
  {
    sub_2173C2BE8(v5);
  }

  else
  {
    sub_2171F0738(a1, &unk_27CB27760, &unk_21775A2D0);

    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void *MusicCatalogChartsRequest.kinds.getter()
{
  sub_2173C2BB0(v0 + 80, v3);
  if (v4)
  {
    sub_2173C2BE8(v3);
    return &unk_28295F518;
  }

  else
  {
    v1 = v3[7];

    sub_2171F0738(v3, &unk_27CB27760, &unk_21775A2D0);
  }

  return v1;
}

uint64_t sub_2173BC370()
{
  sub_2173C2BB0(v0 + 80, v3);
  if (v4 == 1)
  {
    sub_2173C2BE8(v3);
    return 0;
  }

  else
  {
    v1 = v3[7];

    sub_2171F0738(v3, &unk_27CB27760, &unk_21775A2D0);
  }

  return v1;
}

uint64_t MusicCatalogChartsRequest.types.getter()
{
  sub_2173C2BB0(v0 + 80, &v30);
  if (v35)
  {
    KeyPath = swift_getKeyPath(byte_217768188);
    OUTLINED_FUNCTION_20_6();
    sub_2173BC7FC(KeyPath, v2);

    v3 = v28;
  }

  else
  {

    v3 = v34;
    sub_2171F0738(&v30, &unk_27CB27760, &unk_21775A2D0);
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v29 = MEMORY[0x277D84F90];
    sub_217276EB0(0, v4, 0);
    v5 = 0;
    v6 = v29;
    v7 = v3 + 56;
    while (v5 < *(v3 + 16))
    {
      v8 = dynamic_cast_existential_1_conditional(*(v7 - 24), *(v7 - 24), &protocol descriptor for MusicCatalogChartRequestable);
      if (!v8)
      {
        goto LABEL_15;
      }

      v10 = v8;
      v11 = v9;
      v13 = *(v29 + 16);
      v12 = *(v29 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = OUTLINED_FUNCTION_57(v12);
        sub_217276EB0(v15, v13 + 1, 1);
      }

      *(v29 + 16) = v13 + 1;
      v14 = v29 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      ++v5;
      v7 += 32;
      if (v4 == v5)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_15:
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
    sub_217751DE8();
    sub_217285954(1);
    v17 = sub_217752918();
    v19 = v18;

    v30 = 46;
    v31 = 0xE100000000000000;
    MEMORY[0x21CEA23B0](v17, v19, v20);

    v22 = v30;
    v21 = v31;
    sub_217751DE8();
    v30 = sub_2172857F8(1uLL);
    v31 = v23;
    v32 = v24;
    v33 = v25;
    sub_217285A70(v30, v23, v24);
    sub_217751DE8();
    sub_217752048();

    MEMORY[0x21CEA23B0](v22, v21, v26);

    MEMORY[0x21CEA23B0](0xD000000000000031, 0x80000002177AD490, v27);
    result = OUTLINED_FUNCTION_19_4("Fatal error");
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t MusicCatalogChartsRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MusicCatalogChartsRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_2173BC7B8@<X0>(uint64_t *a5@<X8>)
{
  result = MusicItemTypeValue.catalogResourceTypes.getter();
  *a5 = result;
  return result;
}

void sub_2173BC7FC(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  static URL.resourceTypes(extractedFrom:)();
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  v22 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = 24 * v5; ; i += 24)
  {
    if (v6 == v5)
    {

      *a2 = v22;
      return;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v8 = *(v4 + i + 48);
    v10 = *(v4 + i + 32);
    v9 = *(v4 + i + 40);
    sub_217751DE8();
    sub_2173C2A00(v10, v9, v8, a1, v23);

    v11 = v23[0];
    v12 = v23[1];
    v14 = v23[2];
    v13 = v23[3];
    if (v23[0])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B1AC0(0, *(v22 + 16) + 1, 1, v22);
        v22 = v19;
      }

      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_2172B1AC0(v15 > 1, v16 + 1, 1, v22);
        v17 = v16 + 1;
        v22 = v20;
      }

      ++v5;
      *(v22 + 16) = v17;
      v18 = (v22 + 32 * v16);
      v18[4] = v11;
      v18[5] = v12;
      v18[6] = v14;
      v18[7] = v13;
      goto LABEL_2;
    }

    sub_2172AC65C(0);
    ++v5;
  }

  __break(1u);
}

uint64_t sub_2173BC97C()
{
  OUTLINED_FUNCTION_10();
  v1[57] = v2;
  v1[58] = v0;
  v1[59] = sub_2177516D8();
  OUTLINED_FUNCTION_66_3();
  v1[60] = v3;
  v1[61] = swift_task_alloc();
  v1[62] = sub_2177512F8();
  OUTLINED_FUNCTION_66_3();
  v1[63] = v4;
  v1[64] = swift_task_alloc();
  v1[65] = type metadata accessor for MusicDataRequest(0);
  v1[66] = swift_task_alloc();
  type metadata accessor for MusicAPI.Endpoint(0);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[69] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[70] = v6;
  *v6 = v7;
  v6[1] = sub_2173BCB38;

  return sub_2173BD7B0(v5, v0 + 80);
}

uint64_t sub_2173BCB38()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173BCC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = v14[68];
  v16 = v14[67];
  v17 = v14[66];
  v19 = v14[63];
  v18 = v14[64];
  v21 = v14[61];
  v20 = v14[62];
  v22 = v14[59];
  v23 = v14[60];
  v42 = v14[65];
  v44 = v14[58];
  sub_2172CB230(v14[69], v15);
  sub_2172CB230(v15, v16);
  (*(v23 + 16))(v21, v16, v22);
  sub_2177512B8();
  sub_2173C2E74(v16, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v19 + 16))(v17, v18, v20);
  v24 = (v17 + *(v42 + 20));
  swift_beginAccess();
  v25 = off_280BEBCD0;

  (v25)(v26);

  __swift_project_boxed_opaque_existential_1(v14 + 36, v14[39]);
  v27 = OUTLINED_FUNCTION_153();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v27, v28, v29);
  (*(v19 + 8))(v18, v20);
  sub_2173C2E74(v15, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v14 + 36);
  sub_21725EE54(v44 + 40, v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v43 = OUTLINED_FUNCTION_5_4() + 104;
  OUTLINED_FUNCTION_66_3();
  v45 = v30 + *v30;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v14[72] = v31;
  *v31 = v32;
  v31[1] = sub_2173BCEC0;
  OUTLINED_FUNCTION_120_0();

  return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, v43, v45, a12, a13, a14);
}

uint64_t sub_2173BCEC0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173BCFBC()
{
  v36 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  *(v0 + 592) = v3;
  *(v0 + 600) = v4;
  v5 = *(v0 + 448);
  *(v0 + 608) = v5;
  sub_217751348();
  swift_allocObject();
  *(v0 + 616) = sub_217751338();
  sub_2172CA838(v2 + 40, v0 + 328);
  JSONDecoder.dataRequestConfiguration.setter(v0 + 328);
  type metadata accessor for SharedRelatedItemStore();
  v6 = swift_allocObject();
  *(v0 + 624) = SharedRelatedItemStore.init()(v6, v7, v8);
  v9 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v9);
  sub_2173C2ECC(v10, v11, v12);
  sub_217751308();
  if (v1)
  {
    v13 = *(v0 + 552);
    v14 = *(v0 + 528);

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_1_17();
    sub_2173C2E74(v13, v15);
    OUTLINED_FUNCTION_21();
    sub_2173C2E74(v14, v16);

    OUTLINED_FUNCTION_20_0();

    return v17();
  }

  else
  {
    v19 = *(v0 + 464);
    v20 = *(v0 + 160);
    *(v0 + 96) = *(v0 + 144);
    *(v0 + 112) = v20;
    *(v0 + 128) = *(v0 + 176);
    sub_2173C2BB0(v19 + 80, v0 + 16);
    if (*(v0 + 88))
    {
      KeyPath = swift_getKeyPath(byte_217768188);
      sub_2173BC7FC(KeyPath, v31);
    }

    else
    {

      sub_2171F0738(v0 + 16, &unk_27CB27760, &unk_21775A2D0);
    }

    v22 = *(v0 + 464);
    sub_2173BC370();
    sub_2172CA838(v22 + 40, v0 + 368);
    sub_2175E7B50();
    v23 = v31[0];
    v24 = v31[1];
    *(v0 + 632) = v31[0];
    *(v0 + 640) = v24;
    v25 = v32;
    v26 = v33;
    *(v0 + 648) = v32;
    *(v0 + 656) = v26;
    v27 = v34;
    v28 = v35;
    *(v0 + 664) = v34;
    *(v0 + 672) = v28;
    *(v0 + 240) = v23;
    *(v0 + 248) = v24;
    *(v0 + 256) = v25;
    *(v0 + 264) = v26;
    *(v0 + 272) = v27;
    *(v0 + 280) = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 680) = v29;
    *v29 = v30;
    v29[1] = sub_2173BD3A0;

    return sub_2173BDBF4(v0 + 192, (v0 + 240));
  }
}

uint64_t sub_2173BD2F0()
{
  v1 = *(v0 + 528);
  OUTLINED_FUNCTION_1_17();
  sub_2173C2E74(v2, v3);
  OUTLINED_FUNCTION_21();
  sub_2173C2E74(v1, v4);
  OUTLINED_FUNCTION_34_15();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2173BD3A0()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 688) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173BD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = *(v14 + 608);
  v16 = *(v14 + 600);
  v17 = *(v14 + 592);
  v18 = *(v14 + 552);
  v19 = *(v14 + 528);
  v34 = *(v14 + 512);
  v35 = *(v14 + 488);
  v20 = *(v14 + 456);

  sub_217275694(v17, v16);

  OUTLINED_FUNCTION_1_17();
  sub_2173C2E74(v18, v21);
  v22 = *(v14 + 208);
  v23 = *(v14 + 224);
  *v20 = *(v14 + 192);
  v20[1] = v22;
  v20[2] = v23;
  OUTLINED_FUNCTION_21();
  sub_2173C2E74(v19, v24);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
}

uint64_t sub_2173BD5F4(uint64_t a1)
{
  OUTLINED_FUNCTION_34_15();

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173BD688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v31 = v14[83];
  v32 = v14[84];
  v15 = v14[76];
  v16 = v14[75];
  v17 = v14[74];
  v18 = v14[69];
  v30 = v14[66];

  sub_217275694(v17, v16);

  OUTLINED_FUNCTION_1_17();
  sub_2173C2E74(v18, v19);

  OUTLINED_FUNCTION_21();
  sub_2173C2E74(v30, v20);
  OUTLINED_FUNCTION_34_15();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, a12, a13, a14);
}

uint64_t sub_2173BD7B0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  type metadata accessor for MusicAPI.Endpoint(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2173BD850, 0, 0);
}

uint64_t sub_2173BD850()
{
  OUTLINED_FUNCTION_30_0();
  sub_2173C2BB0(*(v0 + 168), v0 + 16);
  if (*(v0 + 88))
  {
    sub_2173BF94C(*(v0 + 16), *(v0 + 184));
    v9 = *(v0 + 184);
    v10 = *(v0 + 160);

    sub_2172CB2E8(v9, v10);

    OUTLINED_FUNCTION_20_0();

    return v11();
  }

  else
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 64);
    *(v0 + 200) = v2;
    *(v0 + 208) = v1;
    v4 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v4;
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v3;
    *(v0 + 152) = v1;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 216) = v5;
    *v5 = v6;
    v5[1] = sub_2173BD9CC;
    v7 = *(v0 + 192);

    return sub_2173BE4A4(v7, v0 + 96, v2, (v0 + 152));
  }
}

uint64_t sub_2173BD9CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173BDADC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  sub_2171F0738(v0 + 96, &unk_27CB27760, &unk_21775A2D0);
  sub_2172CB2E8(v1, v2);

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173BDB6C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 96, &unk_27CB27760, &unk_21775A2D0);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173BDBF4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = a2[1];
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = a2[2];
  return MEMORY[0x2822009F8](sub_2173BDC24, 0, 0);
}

uint64_t sub_2173BDC24()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  v1 = OUTLINED_FUNCTION_20_6();
  if (v2(v1))
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_2173BDD80;
    v4 = OUTLINED_FUNCTION_58_10(v0[4]);

    return sub_2173BFE9C(v4);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v11 = v0[2];
    *v11 = v0[4];
    v11[1] = v10;
    v11[2] = v9;
    v11[3] = v8;
    v11[4] = v6;
    v11[5] = v7;
    OUTLINED_FUNCTION_37_13();
    v13 = v12;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    return v13();
  }
}

uint64_t sub_2173BDD80()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[11] = v6;

  if (v0)
  {
    v7 = v5[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v3[12] = v9;
    *v9 = v5;
    v9[1] = sub_2173BDEE8;
    v10 = OUTLINED_FUNCTION_58_10(v3[5]);

    return sub_2173C06C8(v10);
  }
}

uint64_t sub_2173BDEE8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[13] = v6;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[15] = v10;
    *v10 = v5;
    v10[1] = sub_2173BE044;
    v11 = OUTLINED_FUNCTION_58_10(v3[6]);

    return sub_2173C0EF4(v11);
  }
}

uint64_t sub_2173BE044()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[16] = v6;
  v3[17] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[18] = v10;
    *v10 = v5;
    v10[1] = sub_2173BE1A0;
    v11 = OUTLINED_FUNCTION_58_10(v3[7]);

    return sub_2173C1720(v11);
  }
}

uint64_t sub_2173BE1A0()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  OUTLINED_FUNCTION_155();
  v5 = v4;
  OUTLINED_FUNCTION_10_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173BE2AC()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  sub_217751DE8();
  sub_2175E8440();
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v6;
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2173BE374()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2173BE3D0()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2173BE434()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2173BE4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[34] = a3;
  v5[35] = v4;
  v5[32] = a1;
  v5[33] = a2;
  v7 = sub_217751428();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a4;
  v5[52] = v8;
  v5[53] = v9;

  return MEMORY[0x2822009F8](sub_2173BE618, 0, 0);
}

uint64_t sub_2173BE618()
{
  if (sub_217696E10(1u, *(v2 + 272)))
  {
    if (**(v2 + 280))
    {
      v4 = 0x706F742D79746963;
    }

    else
    {
      v4 = 0x7261684379746963;
    }

    if (**(v2 + 280))
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000007374;
    }

    sub_2172AFF2C(0, 1, 1, MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_57_10();
    if (v7)
    {
      OUTLINED_FUNCTION_57(v6);
      OUTLINED_FUNCTION_52_13();
      sub_2172AFF2C(v32, v33, v34, v35);
      v1 = v36;
    }

    *(v1 + 16) = v0;
    v8 = v1 + 16 * v3;
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (sub_217696E10(2u, *(v2 + 272)))
  {
    if (**(v2 + 280))
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0xD000000000000014;
    }

    if (**(v2 + 280))
    {
      v10 = "it";
    }

    else
    {
      v10 = "incremental-loader";
    }

    v11 = v10 | 0x8000000000000000;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = OUTLINED_FUNCTION_17();
      sub_2172AFF2C(v37, v38, v39, v1);
      v1 = v40;
    }

    v3 = *(v1 + 16);
    v12 = *(v1 + 24);
    if (v3 >= v12 >> 1)
    {
      OUTLINED_FUNCTION_57(v12);
      OUTLINED_FUNCTION_52_13();
      sub_2172AFF2C(v41, v42, v43, v44);
      v1 = v45;
    }

    *(v1 + 16) = v3 + 1;
    v13 = v1 + 16 * v3;
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;
  }

  *(v2 + 432) = v1;
  sub_2171F5110(*(v2 + 264), v2 + 72, &unk_27CB27760, &unk_21775A2D0);
  if (*(v2 + 80))
  {
    v14 = *(v2 + 408);
    v15 = *(v2 + 416);
    v16 = *(v2 + 288);
    v17 = *(v2 + 296);
    v18 = *(v2 + 88);
    *(v2 + 16) = *(v2 + 72);
    *(v2 + 32) = v18;
    *(v2 + 48) = *(v2 + 104);
    *(v2 + 64) = *(v2 + 120);
    sub_2177513F8();
    (*(v17 + 16))(v14, v15, v16);
    sub_2172B1A50(0, 1, 1, MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_57_10();
    if (v7)
    {
      OUTLINED_FUNCTION_57(v19);
      OUTLINED_FUNCTION_52_13();
      sub_2172B1A50(v27, v28, v29, v30);
      v15 = v31;
    }

    v20 = *(v2 + 408);
    v21 = *(v2 + 288);
    v22 = *(v2 + 296);
    (*(v22 + 8))(*(v2 + 416), v21);
    *(v15 + 16) = v14;
    (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v3, v20, v21);
    sub_21728418C(v2 + 16);
  }

  else
  {
    sub_2171F0738(v2 + 72, &unk_27CB27760, &unk_21775A2D0);
    v15 = MEMORY[0x277D84F90];
  }

  *(v2 + 440) = v15;
  __swift_project_boxed_opaque_existential_1((*(v2 + 280) + 40), *(*(v2 + 280) + 64));
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_66_3();
  v46 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v2 + 448) = v24;
  *v24 = v2;
  v24[1] = sub_2173BE9BC;
  v25 = OUTLINED_FUNCTION_20_6();

  return v46(v25);
}

uint64_t sub_2173BE9BC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  *v3 = *v1;
  v2[57] = v4;
  v2[58] = v5;
  v2[59] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2173BEAC4()
{
  v1 = v0;
  v2 = v0[58];
  if (v2)
  {
    sub_2177513F8();

    v3 = OUTLINED_FUNCTION_36_13();
    v4(v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[55];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v88 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v88, v89, v90, v6);
      v6 = v91;
    }

    OUTLINED_FUNCTION_32_17();
    if (v8)
    {
      sub_2172B1A50(v7 > 1, v2, 1, v6);
      v6 = v92;
    }

    OUTLINED_FUNCTION_17_15();
    v9();
    v10 = OUTLINED_FUNCTION_2_45();
    v11(v10);
  }

  else
  {
    v6 = v0[55];
  }

  v12 = v0[54];
  v17 = sub_2176E6868();
  v18 = *(v12 + 16);
  if (v18)
  {
    if (qword_280BE8A38 != -1)
    {
      swift_once();
    }

    v19 = *algn_280BE8A48;
    v20 = byte_280BE8A50;
    v1[25] = qword_280BE8A40;
    v1[26] = v19;
    *(v1 + 216) = v20;
    *(swift_task_alloc() + 16) = v1 + 25;
    v21 = sub_2173DD9E8();

    if (!v21)
    {
      v23 = qword_280BE8A40;
      v22 = *algn_280BE8A48;
      v24 = byte_280BE8A50;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_17();
        sub_2172B199C();
        v17 = v123;
      }

      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_2172B199C();
        v17 = v124;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 24 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      *(v26 + 48) = v24;
    }
  }

  v27 = *(v17 + 16);
  if (v27)
  {
    v125 = v18;
    v126 = v6;
    v127 = v1;
    v129 = MEMORY[0x277D84F90];
    sub_217275C90(0, v27, 0, v13, v14, v15, v16);
    v28 = 0;
    v29 = *(v129 + 16);
    v30 = 16 * v29;
    do
    {
      v31 = *(v17 + v28 + 32);
      v32 = *(v17 + v28 + 40);
      v33 = *(v129 + 24);
      v34 = v29 + 1;
      sub_217751DE8();
      if (v29 >= v33 >> 1)
      {
        sub_217275C90(v33 > 1, v34, 1, v35, v36, v37, v38);
      }

      *(v129 + 16) = v34;
      v39 = v129 + v30;
      *(v39 + 32) = v31;
      *(v39 + 40) = v32;
      v30 += 16;
      v28 += 24;
      ++v29;
      --v27;
    }

    while (v27);
    v1 = v127;

    v127[28] = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    sub_217751ED8();

    sub_2177513F8();

    v6 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v93, v94, v95, v126);
      v6 = v96;
    }

    OUTLINED_FUNCTION_51_11();
    v18 = v125;
    if (v8)
    {
      OUTLINED_FUNCTION_9_23(v40);
      v6 = v97;
    }

    v41 = OUTLINED_FUNCTION_15_23(v127[37]);
    v42(v41);
  }

  else
  {
  }

  if (v18)
  {
    v1[29] = v1[54];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    sub_217751ED8();

    sub_2177513F8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v98, v99, v100, v6);
      v6 = v101;
    }

    OUTLINED_FUNCTION_51_11();
    if (v8)
    {
      OUTLINED_FUNCTION_9_23(v43);
      v6 = v102;
    }

    v44 = OUTLINED_FUNCTION_15_23(v1[37]);
    v45(v44);
  }

  else
  {
  }

  v46 = v1[35];
  if ((*(v46 + 16) & 1) == 0)
  {
    v1[31] = *(v46 + 8);
    sub_217752FC8();
    sub_2177513F8();

    v47 = OUTLINED_FUNCTION_36_13();
    v48(v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v103, v104, v105, v6);
      v6 = v106;
    }

    OUTLINED_FUNCTION_32_17();
    if (v8)
    {
      OUTLINED_FUNCTION_9_23(v49);
      v6 = v107;
    }

    OUTLINED_FUNCTION_17_15();
    v50();
    v51 = OUTLINED_FUNCTION_2_45();
    v52(v51);
    v46 = v1[35];
  }

  if ((*(v46 + 32) & 1) == 0)
  {
    v1[30] = *(v46 + 24);
    sub_217752FC8();
    sub_2177513F8();

    v53 = OUTLINED_FUNCTION_36_13();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v108, v109, v110, v6);
      v6 = v111;
    }

    OUTLINED_FUNCTION_32_17();
    if (v8)
    {
      OUTLINED_FUNCTION_9_23(v55);
      v6 = v112;
    }

    OUTLINED_FUNCTION_17_15();
    v56();
    v57 = OUTLINED_FUNCTION_2_45();
    v58(v57);
    v46 = v1[35];
  }

  if (*(v46 + 1) == 1)
  {
    sub_2177513F8();
    v59 = OUTLINED_FUNCTION_56_9();
    v60(v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v113, v114, v115, v6);
      v6 = v116;
    }

    OUTLINED_FUNCTION_32_17();
    if (v8)
    {
      OUTLINED_FUNCTION_9_23(v61);
      v6 = v117;
    }

    OUTLINED_FUNCTION_17_15();
    v62();
    v63 = OUTLINED_FUNCTION_2_45();
    v64(v63);
    v46 = v1[35];
  }

  if (*(v46 + 33) == 1)
  {
    sub_2177513F8();
    v65 = OUTLINED_FUNCTION_56_9();
    v66(v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v118, v119, v120, v6);
      v6 = v121;
    }

    OUTLINED_FUNCTION_32_17();
    if (v8)
    {
      OUTLINED_FUNCTION_9_23(v67);
      v6 = v122;
    }

    OUTLINED_FUNCTION_17_15();
    v68();
    v69 = OUTLINED_FUNCTION_2_45();
    v70(v69);
  }

  if (qword_280BE7420 != -1)
  {
    swift_once();
  }

  v72 = v1[37];
  v71 = v1[38];
  v73 = v1[36];
  v74 = __swift_project_value_buffer(v73, qword_280BE7428);
  (*(v72 + 16))(v71, v74, v73);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v83 = OUTLINED_FUNCTION_17();
    sub_2172B1A50(v83, v84, v85, v6);
    v6 = v86;
  }

  OUTLINED_FUNCTION_51_11();
  if (v8)
  {
    OUTLINED_FUNCTION_9_23(v75);
    v6 = v87;
  }

  v1[60] = v6;
  v76 = v1[35];
  v77 = OUTLINED_FUNCTION_15_23(v1[37]);
  v78(v77);
  __swift_project_boxed_opaque_existential_1((v76 + 40), *(v76 + 64));
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_66_3();
  v128 = (v79 + *v79);
  v80 = swift_task_alloc();
  v1[61] = v80;
  *v80 = v1;
  v80[1] = sub_2173BF520;
  v81 = OUTLINED_FUNCTION_20_6();

  return v128(v81);
}

uint64_t sub_2173BF420()
{

  OUTLINED_FUNCTION_40_14();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2173BF520()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v5;
  v2[24] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 496) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173BF624()
{
  v9 = v0;
  if (qword_280BE8078 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[60];
  v4 = v0[35];
  v5 = v0[32];
  sub_2177188E8(v2, v1);
  strcpy(v8, "/v1/catalog/");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  MEMORY[0x21CEA23B0](v2, v1);
  MEMORY[0x21CEA23B0](0x737472616863, 0xE600000000000000);
  MEMORY[0x21CEA23B0](47, 0xE100000000000000);

  sub_2172CA838(v4 + 40, (v0 + 16));
  sub_217751DE8();
  sub_2173B6DA4(v8[0], v8[1], v3, 1, v0 + 16, v5);

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_2173BF854()
{

  OUTLINED_FUNCTION_40_14();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2173BF94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = a1;
  v3 = sub_217751908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_217751928();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217751428();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for MusicAPI.Endpoint(0);
  MEMORY[0x28223BE20](v12);
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_2172CA838(v2 + 40, v36);
  sub_217751DE8();
  sub_217434F08();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2171F0738(v11, &qword_27CB277B0, &qword_2177684B0);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    sub_217751618();
    sub_217751918();
    (*(v32 + 8))(v6, v4);
    return swift_willThrow();
  }

  else
  {
    sub_2172CB2E8(v11, v19);
    sub_2172CB230(v19, v16);
    v21 = v33;
    v22 = v34;
    if ((*(v2 + 16) & 1) == 0)
    {
      v36[0] = *(v2 + 8);
      sub_217752FC8();
      v23 = v31;
      sub_2177513F8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
      v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2177586E0;
      (*(v21 + 16))(v25 + v24, v23, v22);
      v26 = v30;
      MusicAPI.Endpoint.applying(_:)();
      swift_setDeallocating();
      sub_217275AFC();
      (*(v21 + 8))(v23, v22);
      sub_2173C2E74(v16, type metadata accessor for MusicAPI.Endpoint);
      sub_2172CB2E8(v26, v16);
    }

    if (qword_280BE7420 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v22, qword_280BE7428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
    v28 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2177586E0;
    (*(v21 + 16))(v29 + v28, v27, v22);
    MusicAPI.Endpoint.applying(_:)();
    swift_setDeallocating();
    sub_217275AFC();
    sub_2173C2E74(v16, type metadata accessor for MusicAPI.Endpoint);
    return sub_2173C2E74(v19, type metadata accessor for MusicAPI.Endpoint);
  }
}

uint64_t sub_2173BFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB248E8, &qword_21775A380, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for Album, &type metadata for Album, &protocol descriptor for PolymorphicMusicItem))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_217509B44(v20, v21);
    }

    if (qword_280BE85B8 != -1)
    {
      OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
    }

    OUTLINED_FUNCTION_46_14();
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
    }

    v32 = off_280BE71C8;
    if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
    {
      OUTLINED_FUNCTION_30_18();
      v33 = OUTLINED_FUNCTION_153();
      v14(v33);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v34, v35, v36, v37, v38);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_19_14(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_3_43(v40);
    OUTLINED_FUNCTION_120_0();

    return sub_21755EB98(v42);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C0100()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C01FC()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2173C0260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &qword_27CB25388, &unk_21775D410);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB248E8, &qword_21775A380);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_17();
    sub_2172B1D58();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1D58();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &qword_27CB25388, &unk_21775D410);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB248E8, &qword_21775A380, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for Album, &type metadata for Album, &protocol descriptor for PolymorphicMusicItem))
  {
    goto LABEL_10;
  }

  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
  }

  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
  }

  v40 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_12_20();
    v41 = OUTLINED_FUNCTION_150_0();
    v14(v41);
    OUTLINED_FUNCTION_20_23();
    v42 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v42, v43, v44, v45, v46);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_217509B44(v37, v38);
    }
  }

  else
  {
  }

  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_19_14(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_3_43(v48);
  OUTLINED_FUNCTION_120_0();

  return sub_21755EB98(v50);
}

uint64_t sub_2173C054C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB248E8, &qword_21775A380);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173C05B8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {

    *(v3 + 656) = v0;
  }

  else
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C06E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB248F8, &unk_21775A370, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for MusicVideo, &type metadata for MusicVideo, &protocol descriptor for PolymorphicMusicItem))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_21750928C(v20, v21);
    }

    if (qword_280BE7F40 != -1)
    {
      OUTLINED_FUNCTION_45_2(&qword_280BE7F40);
    }

    OUTLINED_FUNCTION_46_14();
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
    }

    v32 = off_280BE71C8;
    if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
    {
      OUTLINED_FUNCTION_30_18();
      v33 = OUTLINED_FUNCTION_153();
      v14(v33);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v34, v35, v36, v37, v38);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_19_14(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_3_43(v40);
    OUTLINED_FUNCTION_120_0();

    return sub_21755DFF8(v42);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C092C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C0A28()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2173C0A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &qword_27CB25380, &unk_21775DAA0);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB248F8, &unk_21775A370);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_17();
    sub_2172B1C98();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1C98();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &qword_27CB25380, &unk_21775DAA0);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB248F8, &unk_21775A370, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicVideo, &type metadata for MusicVideo, &protocol descriptor for PolymorphicMusicItem))
  {
    goto LABEL_10;
  }

  if (qword_280BE7F40 != -1)
  {
    OUTLINED_FUNCTION_45_2(&qword_280BE7F40);
  }

  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
  }

  v40 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_12_20();
    v41 = OUTLINED_FUNCTION_150_0();
    v14(v41);
    OUTLINED_FUNCTION_20_23();
    v42 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v42, v43, v44, v45, v46);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_21750928C(v37, v38);
    }
  }

  else
  {
  }

  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_19_14(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_3_43(v48);
  OUTLINED_FUNCTION_120_0();

  return sub_21755DFF8(v50);
}

uint64_t sub_2173C0D78()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB248F8, &unk_21775A370);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173C0DE4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {

    *(v3 + 656) = v0;
  }

  else
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C0F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB24918, &unk_217768490, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for PolymorphicMusicItem))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_217508FA4(v20, v21);
    }

    if (qword_280BE84D8 != -1)
    {
      OUTLINED_FUNCTION_44_0(&qword_280BE84D8);
    }

    OUTLINED_FUNCTION_46_14();
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
    }

    v32 = off_280BE71C8;
    if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
    {
      OUTLINED_FUNCTION_30_18();
      v33 = OUTLINED_FUNCTION_153();
      v14(v33);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v34, v35, v36, v37, v38);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_19_14(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_3_43(v40);
    OUTLINED_FUNCTION_120_0();

    return sub_21755DC2C(v42);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C1158()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C1254()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2173C12B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &unk_27CB28230, &unk_21775CD50);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB24918, &unk_217768490);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_17();
    sub_2172B1AF0();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1AF0();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &unk_27CB28230, &unk_21775CD50);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB24918, &unk_217768490, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for PolymorphicMusicItem))
  {
    goto LABEL_10;
  }

  if (qword_280BE84D8 != -1)
  {
    OUTLINED_FUNCTION_44_0(&qword_280BE84D8);
  }

  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
  }

  v40 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_12_20();
    v41 = OUTLINED_FUNCTION_150_0();
    v14(v41);
    OUTLINED_FUNCTION_20_23();
    v42 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v42, v43, v44, v45, v46);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_217508FA4(v37, v38);
    }
  }

  else
  {
  }

  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_19_14(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_3_43(v48);
  OUTLINED_FUNCTION_120_0();

  return sub_21755DC2C(v50);
}

uint64_t sub_2173C15A4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB24918, &unk_217768490);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173C1610()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {

    *(v3 + 656) = v0;
  }

  else
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C1740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB24908, &unk_21775A360, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for Song, &type metadata for Song, &protocol descriptor for PolymorphicMusicItem))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_2175086EC(v20, v21);
    }

    if (qword_280BEB230 != -1)
    {
      OUTLINED_FUNCTION_42_11(&qword_280BEB230);
    }

    OUTLINED_FUNCTION_46_14();
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
    }

    v32 = off_280BE71C8;
    if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
    {
      OUTLINED_FUNCTION_30_18();
      v33 = OUTLINED_FUNCTION_153();
      v14(v33);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v34, v35, v36, v37, v38);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_19_14(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_3_43(v40);
    OUTLINED_FUNCTION_120_0();

    return sub_21755D0B0(v42);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C1984()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C1A80()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2173C1AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &qword_27CB27820, &qword_21775DAB0);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB24908, &unk_21775A360);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_17();
    sub_2172B1BD8();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1BD8();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &qword_27CB27820, &qword_21775DAB0);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB24908, &unk_21775A360, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for Song, &type metadata for Song, &protocol descriptor for PolymorphicMusicItem))
  {
    goto LABEL_10;
  }

  if (qword_280BEB230 != -1)
  {
    OUTLINED_FUNCTION_42_11(&qword_280BEB230);
  }

  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43(&qword_280BE71C0);
  }

  v40 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_12_20();
    v41 = OUTLINED_FUNCTION_150_0();
    v14(v41);
    OUTLINED_FUNCTION_20_23();
    v42 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v42, v43, v44, v45, v46);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_2175086EC(v37, v38);
    }
  }

  else
  {
  }

  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_19_14(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_3_43(v48);
  OUTLINED_FUNCTION_120_0();

  return sub_21755D0B0(v50);
}

uint64_t sub_2173C1DD0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB24908, &unk_21775A360);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2173C1E3C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {

    *(v3 + 656) = v0;
  }

  else
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173C1F4C(uint64_t a1, uint64_t a2)
{
  sub_2173C2BB0(a1, v30);
  sub_2173C2BB0(a2, v31);
  if ((v30[72] & 1) == 0)
  {
    sub_2173C2BB0(v30, v28);
    if (v33)
    {

      sub_2171F0738(v28, &unk_27CB27760, &unk_21775A2D0);
LABEL_12:
      sub_2171F0738(v30, &qword_27CB26F68, &qword_217768448);
LABEL_36:
      v11 = 0;
      return v11 & 1;
    }

    v22[0] = v28[0];
    v22[1] = v28[1];
    v22[2] = v28[2];
    v24 = v31[0];
    v25 = v31[1];
    v26 = v31[2];
    v23 = v29;
    v27 = v32;
    if (*(&v28[0] + 1))
    {
      sub_2171F5110(v22, v18, &unk_27CB27760, &unk_21775A2D0);
      if (*(&v24 + 1))
      {
        v15 = v24;
        v16[0] = v25;
        v16[1] = v26;
        v17 = v27;
        v5 = v18[0] == v24 && v18[1] == *(&v24 + 1);
        if (!v5 && (sub_217753058() & 1) == 0)
        {
          sub_21728418C(&v15);
          sub_21728418C(v18);
          sub_2171F0738(v22, &unk_27CB27760, &unk_21775A2D0);
LABEL_33:

LABEL_34:

          goto LABEL_35;
        }

        v6 = v20;
        v7 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v8 = *(v7 + 104);
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v10 = v8(v16, v9, v6, v7);
        sub_21728418C(&v15);
        sub_21728418C(v18);
        sub_2171F0738(v22, &unk_27CB27760, &unk_21775A2D0);
        if ((v10 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_29:
        v12 = sub_2172849D0();

        if (v12)
        {
          sub_217270BE0();
          v11 = v13;

          sub_2173C2BE8(v30);
          return v11 & 1;
        }

        goto LABEL_34;
      }

      sub_21728418C(v18);
    }

    else
    {
      if (!*(&v24 + 1))
      {
        sub_2171F0738(v22, &unk_27CB27760, &unk_21775A2D0);
        goto LABEL_29;
      }
    }

    sub_2171F0738(v22, &qword_27CB26F70, &unk_217768450);
LABEL_35:
    sub_2173C2BE8(v30);
    goto LABEL_36;
  }

  sub_2173C2BB0(v30, v22);
  if (v33 != 1)
  {

    goto LABEL_12;
  }

  if (*&v22[0] == *&v31[0] && *(&v22[0] + 1) == *(&v31[0] + 1))
  {
  }

  else
  {
    v4 = sub_217753058();

    if ((v4 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  sub_2173C2BE8(v30);
  v11 = 1;
  return v11 & 1;
}

double sub_2173C2308(uint64_t a1)
{
  sub_2173C2BB0(v1, v14);
  if (v16)
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    v12[0] = v14[0];
    v12[1] = v14[1];
    v12[2] = v14[2];
    v13 = v15;
    MEMORY[0x21CEA3550](0);
    sub_2171F5110(v12, v10, &unk_27CB27760, &unk_21775A2D0);
    if (*(&v10[0] + 1))
    {
      v6 = v10[0];
      v7 = v10[1];
      v8 = v10[2];
      v9 = v11;
      sub_217753208();
      sub_217751FF8();
      v3 = *(&v8 + 1);
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
      (*(v4 + 112))(a1, v3, v4);
      sub_21728418C(&v6);
    }

    else
    {
      sub_217753208();
    }

    sub_2172849DC();

    sub_21727D7C8();
    sub_2171F0738(v12, &unk_27CB27760, &unk_21775A2D0);
  }
}

uint64_t sub_2173C2494()
{
  sub_2177531E8();
  sub_2173C2308(v1);
  return sub_217753238();
}

uint64_t sub_2173C24E0(uint64_t a1)
{
  sub_2177531E8();
  sub_2173C2308(v2);
  return sub_217753238();
}

uint64_t static MusicCatalogChartsRequest.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = a2[32];
  if (a1[32])
  {
    if (a2[32])
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

LABEL_16:
  if (a1[33] != a2[33])
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  v9 = *(v8 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if ((v9(a2 + 40, v10, v7, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_2173C1F4C((a1 + 80), (a2 + 80));
}

double MusicCatalogChartsRequest.hash(into:)(uint64_t a1)
{
  sub_217753208();
  sub_217753208();
  if (*(v1 + 16) == 1)
  {
    sub_217753208();
  }

  else
  {
    v3 = *(v1 + 8);
    sub_217753208();
    MEMORY[0x21CEA3550](v3);
  }

  if (*(v1 + 32) == 1)
  {
    sub_217753208();
  }

  else
  {
    v4 = *(v1 + 24);
    sub_217753208();
    MEMORY[0x21CEA3550](v4);
  }

  MEMORY[0x21CEA3550](*(v1 + 33));
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v1 + 40), v5);
  (*(v6 + 120))(a1, v5, v6);
  return sub_2173C2308(a1);
}

uint64_t MusicCatalogChartsRequest.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogChartsRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173C27A4(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogChartsRequest.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2173C27E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217758490;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  v1 = xmmword_280BE6308;
  *(v0 + 32) = xmmword_280BE62F8;
  *(v0 + 48) = v1;
  v2 = qword_280BE6378;
  sub_217751DE8();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = xmmword_280BE6390;
  *(v0 + 64) = xmmword_280BE6380;
  *(v0 + 80) = v3;
  v4 = qword_280BE6220;
  sub_217751DE8();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280BE6238;
  *(v0 + 96) = xmmword_280BE6228;
  *(v0 + 112) = v5;
  v6 = qword_280BEB138;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = xmmword_280BEB150;
  *(v0 + 128) = xmmword_280BEB140;
  *(v0 + 144) = v7;
  off_27CB26F50 = v0;

  return sub_217751DE8();
}

uint64_t static MusicCatalogChartsRequest.supportedTypeValues.getter()
{
  if (qword_27CB23B70 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

unint64_t sub_2173C29D0(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2173C29EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

void sub_2173C2A00(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18 = a2;
  v19 = a4;
  LOBYTE(v5) = a3;
  v17 = a1;
  v15 = a5;
  if (qword_27CB23B70 != -1)
  {
LABEL_10:
    swift_once();
  }

  v6 = 0;
  v7 = *(off_27CB26F50 + 2);
  v20 = off_27CB26F50;
  v21 = v7;
  v16 = v5 & 1;
  v8 = (off_27CB26F50 + 56);
  while (v21 != v6)
  {
    if (v6 >= v20[2])
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = *(v8 - 1);
    v5 = *v8;
    v10 = *(v8 - 3);
    v11 = *(v8 - 2);
    v23 = v10;
    v24 = v11;
    v25 = v9;
    v26 = v5;
    swift_bridgeObjectRetain_n();
    swift_getAtKeyPath();

    v22 = &v15;
    v23 = v17;
    v24 = v18;
    LOBYTE(v25) = v16;
    MEMORY[0x28223BE20](v12);
    v13 = sub_2173DD9E8();

    if (v13)
    {
      goto LABEL_8;
    }

    ++v6;
    v8 += 4;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  v5 = 0;
LABEL_8:
  v14 = v15;
  *v15 = v10;
  v14[1] = v11;
  v14[2] = v9;
  v14[3] = v5;
}

unint64_t sub_2173C2C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26F58;
  if (!qword_27CB26F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit5GenreVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2173C2C9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_2173C2CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2173C2D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173C2D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_2173C2DE0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t sub_2173C2E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26F60;
  if (!qword_27CB26F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F60);
  }

  return result;
}

uint64_t sub_2173C2E74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2173C2ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26F78;
  if (!qword_27CB26F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F78);
  }

  return result;
}

unint64_t sub_2173C2F20()
{
  result = qword_280BE2320;
  if (!qword_280BE2320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C58, &unk_2177677B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2320);
  }

  return result;
}

void OUTLINED_FUNCTION_11_28()
{
  *(v0 + 176) = v3;
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  *(v0 + 184) = v1;
  *(v0 + 192) = v4;
  *(v0 + 200) = v5;
  *(v0 + 208) = v2;
  *(v0 + 320) = v6;
  *(v0 + 328) = v7;
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_21_19()
{
  *(v2 + 16) = v1;

  return memcpy((v2 + 160 * v3 + 32), (v0 + 160), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_34_15()
{
}

uint64_t OUTLINED_FUNCTION_40_14()
{
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_12()
{

  return sub_2171F0738(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_50_9()
{

  return sub_2171F0738(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_12@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2171F5110(a3 + 192, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_65_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F5110(v4, v4 + 160, a3, a4);
}

double OUTLINED_FUNCTION_67_9()
{
}

uint64_t OUTLINED_FUNCTION_68_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F5110(v4 + 496, v4 + 216, a3, a4);
}

uint64_t OUTLINED_FUNCTION_69_11@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2171F5110(a3 + 32, v3 + 16, a1, a2);
}

uint64_t static PartialMusicProperty.attribute<A>(_:for:)()
{
  OUTLINED_FUNCTION_6_30();
  v1 = OUTLINED_FUNCTION_13_24();
  type metadata accessor for MusicAttributeProperty(v1, v2, v3, v4);
  OUTLINED_FUNCTION_2_46();
  MusicAttributeProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

{
  OUTLINED_FUNCTION_6_30();
  type metadata accessor for MusicAttributeProperty(0, *(v0 + 208), *(*v1 + *MEMORY[0x277D84DE8] + 8), v2);
  OUTLINED_FUNCTION_2_46();
  MusicAttributeProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

uint64_t static PartialMusicProperty.extendedAttribute<A>(_:for:typeDescription:supportedSources:)()
{
  OUTLINED_FUNCTION_18_22();
  v1 = OUTLINED_FUNCTION_13_24();
  type metadata accessor for MusicExtendedAttributeProperty(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_0_50();
  sub_2173C419C(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_36_14();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return v0;
}

uint64_t static PartialMusicProperty.metadata<A>(_:for:)()
{
  OUTLINED_FUNCTION_6_30();
  v1 = OUTLINED_FUNCTION_13_24();
  type metadata accessor for MusicMetadataProperty(v1, v2, v3, v4);
  OUTLINED_FUNCTION_2_46();
  MusicMetadataProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

{
  OUTLINED_FUNCTION_6_30();
  type metadata accessor for MusicMetadataProperty(0, *(v0 + 208), *(*v1 + *MEMORY[0x277D84DE8] + 8), v2);
  OUTLINED_FUNCTION_2_46();
  MusicMetadataProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

uint64_t MusicRelationshipProperty.__allocating_init(_:kind:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  OUTLINED_FUNCTION_45_13();
  MusicRelationshipProperty.init(_:kind:)();
  return v0;
}

uint64_t sub_2173C352C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a1 ^ 1 | a2)
    {
      if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a4 != 1)
    {
      return 0;
    }

    if (!a5)
    {
      return 1;
    }
  }

  else if (!a6)
  {
LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_217753058();
    }

    return 1;
  }

  return 0;
}

uint64_t MusicItem<>.with(_:preferredSource:options:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = *a3;
  *(v8 + 33) = *a4;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_19(v9);
  *v10 = v11;
  v10[1] = sub_2173C36CC;

  return MusicItem<>.with(_:preferredSource:options:)();
}

uint64_t sub_2173C36CC()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    v8 = *(v2 + 8);

    return v8();
  }
}

void sub_2173C3830()
{
  OUTLINED_FUNCTION_214();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  (*(*v0 + 144))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1, v2, v3, *(v0 + 65));
  sub_217751DE8();
  sub_217751DE8();
  sub_2173C6730(v1, v2, v3);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_213();
}

uint64_t static AnyMusicProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 32) == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_2173C352C(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  sub_217270790();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 96);
  v10 = *(a2 + 96);

  return sub_21727533C(v9, v10);
}

void sub_2173C3A00(uint64_t a1)
{
  v2 = v1;
  sub_217751FF8();
  if (*(v2 + 40))
  {
    sub_217753208();
    sub_217751DE8();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_2173C3AA8(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64));
  sub_217281100();

  sub_2172834CC();
}

uint64_t sub_2173C3AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 2;
LABEL_5:
    MEMORY[0x21CEA3550](v4);

    return sub_217751FF8();
  }

  if (a2 | a3)
  {
    if (a2 ^ 1 | a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x21CEA3550](v6);
}

uint64_t sub_2173C3B50(uint64_t a1, uint64_t a2, char a3)
{
  sub_2177531E8();
  sub_2173C3AA8(v7, a1, a2, a3);
  return sub_217753238();
}

uint64_t sub_2173C3BE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_2177531E8();
  sub_2173C3AA8(v6, v2, v3, v4);
  return sub_217753238();
}

void sub_2173C3C48()
{
  v1 = *(v0 + 72);
  v2 = sub_217204DD0(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEA2E30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v7 = *(v5 + 32);
    v8 = *(v5 + 40);
    sub_217751DE8();

    ++v3;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172AFF2C(0, *(v4 + 16) + 1, 1, v4);
        v4 = v12;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2172AFF2C(v9 > 1, v10 + 1, 1, v4);
        v4 = v13;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v3 = v6;
    }
  }

  if ((*(v17 + 65) & 1) == 0)
  {
    v14 = *(v17 + 40);
    if (v14)
    {
      v15 = *(v17 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2177586E0;
      *(inited + 32) = v15;
      *(inited + 40) = v14;
      sub_217751DE8();
      sub_2175437A8(inited);
    }
  }
}

uint64_t AnyMusicProperty.deinit()
{

  sub_2173C6748(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t AnyMusicProperty.__deallocating_deinit()
{
  AnyMusicProperty.deinit();
  v0 = OUTLINED_FUNCTION_28_18();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2173C3E74()
{
  sub_2177531E8();
  sub_2173C3A00(v1);
  return sub_217753238();
}

uint64_t sub_2173C3F20(uint64_t a1)
{
  sub_2177531E8();
  sub_2173C3A00(v2);
  return sub_217753238();
}

double MusicAttributeProperty.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_28_18();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 2;
  v4 = MEMORY[0x277D84F90];
  *(v2 + 72) = MEMORY[0x277D84F90];
  *(v2 + 80) = v4;
  *(v2 + 88) = v4;
  *(v2 + 96) = qword_282959AF8;
  return result;
}

uint64_t static PartialMusicProperty.extendedAttribute<A>(_:scopedTo:for:typeDescription:supportedSources:)()
{
  OUTLINED_FUNCTION_17_16();
  type metadata accessor for MusicExtendedAttributeProperty(0, *(v1 + 208), *(*v2 + *MEMORY[0x277D84DE8] + 8), v3);
  OUTLINED_FUNCTION_36_14();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v4 = OUTLINED_FUNCTION_3_44();
  return sub_2173C407C(v4, v5, v6, v7, v8, v0);
}

{
  OUTLINED_FUNCTION_17_16();
  v1 = OUTLINED_FUNCTION_13_24();
  type metadata accessor for MusicExtendedAttributeProperty(v1, v2, v3, v4);
  OUTLINED_FUNCTION_36_14();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v5 = OUTLINED_FUNCTION_3_44();
  return sub_2173C407C(v5, v6, v7, v8, v9, v0);
}

uint64_t MusicRelationshipProperty.__allocating_init(_:kind:supportedSources:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46_15();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_36_14();
  MusicRelationshipProperty.init(_:kind:supportedSources:)(v8, v5, a3, a4);
  return v4;
}

uint64_t sub_2173C42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_46_15();
  OUTLINED_FUNCTION_5_36();
  v11 = v7;
  type metadata accessor for MusicRelationshipProperty(0, v10);
  v10[0] = 0;
  sub_217751DE8();
  sub_217751DE8();
  v8 = OUTLINED_FUNCTION_42_12();
  return a6(v8);
}

uint64_t sub_2173C4358(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46_15();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_36_14();
  sub_2173C5240(v8, v5, a3, a4);
  return v4;
}

uint64_t static PartialMusicProperty.association<A>(_:for:supportedSources:)()
{
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_5_36();
  v3 = v0;
  type metadata accessor for MusicRelationshipProperty(0, v2);
  v2[0] = 1;
  sub_217751DE8();
  return MusicRelationshipProperty.__allocating_init(_:kind:)();
}

uint64_t static PartialMusicProperty.association<A>(_:for:supportedSources:options:)()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_46_15();
  OUTLINED_FUNCTION_5_36();
  v3 = v0;
  type metadata accessor for MusicRelationshipProperty(0, v2);
  v2[0] = 1;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_42_12();
  return sub_2173C4518();
}

uint64_t sub_2173C4518()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_50();
  sub_2173C53E4(v1, v2, v3, v4, v5);
  return v0;
}

uint64_t MusicMetadataProperty.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_2_46();
  MusicMetadataProperty.init(_:)(v1, v2);
  return v0;
}

uint64_t sub_2173C4630()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_50();
  sub_2173C5D50(v1, v2, v3, v4);
  return v0;
}

uint64_t sub_2173C4694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_24_18();
  type metadata accessor for MusicMetadataProperty(0, *(v6 + 208), *(*v8 + 264), *(*v8 + 280));
  sub_217751DE8();

  sub_217751DE8();
  v9 = OUTLINED_FUNCTION_3_44();
  return a6(v9);
}

uint64_t sub_2173C4738()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  OUTLINED_FUNCTION_0_50();
  sub_2173C5EE8();
  return v0;
}

uint64_t sub_2173C47F0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_2173C4894()
{
  sub_2173C3830();
  v1 = v0;
  v2 = sub_2173C47B8();
  sub_2173C47F0(v2, v3 & 1);
  return v1;
}

uint64_t PartialMusicAsyncProperty.__deallocating_deinit()
{
  AnyMusicProperty.deinit();
  v0 = OUTLINED_FUNCTION_1_44();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t MusicAttributeProperty.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 72) = MEMORY[0x277D84F90];
  *(v2 + 80) = v3;
  *(v2 + 88) = v3;
  *(v2 + 96) = qword_282959AF8;
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_2173C4994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 65) = a8;
  *(v11 + 72) = a9;
  *(v11 + 88) = a10;
  *(v11 + 96) = a11;
  return OUTLINED_FUNCTION_5_26();
}

unint64_t sub_2173C49BC()
{
  OUTLINED_FUNCTION_33_15();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v1 = sub_217753348();
  MEMORY[0x21CEA23B0](v1);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v2 = sub_217753348();
  MEMORY[0x21CEA23B0](v2);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0xD000000000000017;
}

uint64_t MusicExtendedAttributeProperty.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  OUTLINED_FUNCTION_2_46();
  MusicExtendedAttributeProperty.init(_:)();
  return v0;
}

uint64_t MusicExtendedAttributeProperty.init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_217753348();
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = 0;
  v5 = MEMORY[0x277D84F90];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = v5;
  *(v1 + 88) = v5;
  *(v1 + 96) = qword_282959AF8;
  return v1;
}

uint64_t MusicExtendedAttributeProperty.__allocating_init(_:supportedSources:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  OUTLINED_FUNCTION_45_13();
  MusicExtendedAttributeProperty.init(_:supportedSources:)();
  return v0;
}

uint64_t MusicExtendedAttributeProperty.init(_:supportedSources:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_0_41();
  v4 = sub_217753348();
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = MEMORY[0x277D84F90];
  *(v1 + 64) = 0;
  *(v1 + 72) = v6;
  *(v1 + 80) = v6;
  *(v1 + 88) = v6;
  *(v1 + 96) = v0;
  return v1;
}

uint64_t sub_2173C4C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 64) = 0;
  *(v5 + 72) = v6;
  *(v5 + 80) = v6;
  *(v5 + 88) = v6;
  *(v5 + 96) = a5;
  return v5;
}

uint64_t sub_2173C4C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = MEMORY[0x277D84F90];
  if (a3)
  {
    if (*(a3 + 16))
    {
      v31[1] = v31;
      v34 = a3;
      MEMORY[0x28223BE20](a1);
      v32 = a4;
      v33 = a5;
      v15 = v14[33];
      v25 = v14[32];
      v26 = v15;
      v27 = v14[34];
      v28 = a1;
      v29 = a2;
      v30 = a6;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
      v17 = type metadata accessor for MusicExtendedAttributeProperty(0, v25, v15, v27);
      v18 = sub_2173C71E0();
      v19 = v16;
      v13 = MEMORY[0x277D84F90];
      sub_2175FA70C(sub_2173C71B8, &v24, v19, v17, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v20);

      type metadata accessor for AnyMusicProperty();
      a4 = v32;
      v21 = sub_217752C68();
      a5 = v33;

      a6 = qword_282959AF8;
      v22 = 1;
    }

    else
    {

      v22 = 0;
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v22 = 0;
    v21 = MEMORY[0x277D84F90];
  }

  *(v7 + 96) = a6;
  *(v7 + 104) = 0;
  *(v7 + 112) = 1;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 64) = 0;
  *(v7 + 65) = v22;
  *(v7 + 72) = v21;
  *(v7 + 80) = v13;
  *(v7 + 88) = v13;
  return v7;
}

uint64_t sub_2173C4E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = *(a1 + 16);
  type metadata accessor for MusicExtendedAttributeProperty(0, a5, a6, a7);
  v16[0] = v13;
  v16[1] = v12;
  v17 = v14;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  result = sub_2173C4F00(a2, a3, v16, a4);
  *a8 = result;
  return result;
}

uint64_t sub_2173C4F64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = sub_217753348();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  *(v4 + 56) = v11;
  v12 = MEMORY[0x277D84F90];
  *(v4 + 64) = 0;
  *(v4 + 72) = v12;
  *(v4 + 80) = v12;
  *(v4 + 88) = v12;
  *(v4 + 96) = a4;
  return v4;
}

unint64_t sub_2173C4FEC()
{
  OUTLINED_FUNCTION_33_15();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v1 = sub_217753348();
  MEMORY[0x21CEA23B0](v1);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v2 = sub_217753348();
  MEMORY[0x21CEA23B0](v2);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

uint64_t *MusicRelationshipProperty.init(_:kind:)()
{
  OUTLINED_FUNCTION_143();
  v4 = *v3;
  *(v1 + 113) = *v3;
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_26_20();
  }

  else
  {
    v5 = sub_217753348();
    v7 = 1;
  }

  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_27_21(v5, v6, v7);
  *(v1 + 65) = 0;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = v8;
  *(v1 + 88) = v8;
  *(v1 + 96) = qword_282959AF8;
  return v1;
}

uint64_t *MusicRelationshipProperty.init(_:kind:supportedSources:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a3;
  *(v4 + 113) = *a3;
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_26_20();
  }

  else
  {
    v9 = sub_217753348();
    v11 = 1;
  }

  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_27_21(v9, v10, v11);
  v12 = MEMORY[0x277D84F90];
  *(v4 + 65) = 0;
  *(v4 + 72) = v12;
  *(v4 + 80) = v12;
  *(v4 + 88) = v12;
  *(v4 + 96) = a4;
  return v4;
}

uint64_t *sub_2173C5240(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v21 = a1;
  v6 = *v4;
  v7 = *a3;
  *(v4 + 113) = *a3;
  v8 = *(v6 + 264);
  if (v7)
  {
    v9 = 0;
    v10 = 2;
    v11 = 1;
  }

  else
  {
    a1 = sub_217753348();
    v11 = a1;
    v9 = v12;
    v10 = 1;
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for PartialMusicProperty(255, v8, v13, v14);
  sub_217752418();
  v15 = type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_11_29(v15, v16, v17);
  v18 = sub_217752148();

  v5[13] = 0;
  *(v5 + 112) = 1;
  v5[2] = v21;
  v5[3] = a2;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = v11;
  v5[7] = v9;
  *(v5 + 64) = v10;
  *(v5 + 65) = 0;
  v19 = MEMORY[0x277D84F90];
  v5[9] = MEMORY[0x277D84F90];
  v5[10] = v18;
  v5[11] = v19;
  v5[12] = qword_282959AF8;
  return v5;
}

uint64_t *sub_2173C53E4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  *(v5 + 113) = *a3;
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_26_20();
  }

  else
  {
    v11 = sub_217753348();
    v13 = 1;
  }

  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  OUTLINED_FUNCTION_27_21(v11, v12, v13);
  v14 = MEMORY[0x277D84F90];
  *(v5 + 65) = 0;
  *(v5 + 72) = v14;
  *(v5 + 80) = v14;
  *(v5 + 88) = a5;
  *(v5 + 96) = a4;
  return v5;
}

uint64_t sub_2173C5494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PartialMusicAsyncProperty(255, *(*v4 + 264), a3, a4);
  sub_217752418();
  v5 = type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_11_29(v5, v6, v7);
  sub_217752148();
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  v10 = *(v4 + 64);
  sub_2173C5A40(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v8, v9, v10, *(v4 + 65), v11, v12, v13);
  v15 = v14;
  sub_217751DE8();
  sub_217751DE8();
  sub_2173C6730(v8, v9, v10);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return v15;
}

void sub_2173C5648(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = dynamic_cast_existential_1_conditional(a2, a2, &protocol descriptor for CloudResourceConvertible);
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = static CloudResourceConvertible.catalogTypes.getter(v5, v6);
  if (!v7[2])
  {

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v9 = v7[4];
  v8 = v7[5];
  sub_217751DE8();

  v11 = (*(*v4 + 176))(v10);
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;

LABEL_6:
  *a3 = v11;
}

uint64_t sub_2173C5710()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v21[0] = *(*v0 + 256);
  v21[1] = v2;
  v3 = type metadata accessor for MusicRelationshipProperty(0, v21);
  if (v3 == v1)
  {
    v6 = v3;
    v7 = v0[2];
    v8 = v0[3];
    LOBYTE(v21[0]) = *(v0 + 113);
    v9 = v0[4];
    v10 = v0[6];
    v11 = v0[7];
    v12 = *(v0 + 64);
    v19 = v0[9];
    v20 = v0[10];
    v18 = *(v0 + 65);
    v13 = v0[5];
    v14 = v6;
    sub_2173C5980(v7, v8, v21, v9, v13, v10, v11, v12, v4, v18, v5, v19, v20);
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_39_9();
      sub_217751DE8();
      sub_2173C6730(v10, v11, v12);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      return v14;
    }

    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_217751DE8();
    sub_217751DE8();
    sub_2173C6730(v10, v11, v12);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD580);
    v16 = sub_217753348();
    MEMORY[0x21CEA23B0](v16);

    MEMORY[0x21CEA23B0](0xD00000000000004DLL, 0x80000002177AD5A0, v17);
  }

  else
  {
    OUTLINED_FUNCTION_30_19();
  }

  result = OUTLINED_FUNCTION_19_15("Fatal error");
  __break(1u);
  return result;
}

__n128 sub_2173C5980(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, __n128 a10, char a9, __n128 a11, uint64_t a12, uint64_t a13)
{
  v19 = swift_allocObject();
  *(v19 + 113) = *a3;
  *(v19 + 96) = a13;
  *(v19 + 104) = 0;
  *(v19 + 112) = 1;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 65) = a9;
  result = a11;
  *(v19 + 72) = a11;
  *(v19 + 88) = a12;
  return result;
}

double sub_2173C5A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __n128 a9, __n128 a10, __n128 a11)
{
  v12 = 0;
  *&result = sub_2173C5980(a1, a2, &v12, a3, a4, a5, a6, a7, a11, a8, a10, a11.n128_i64[0], a11.n128_i64[1]).n128_u64[0];
  return result;
}

unint64_t sub_2173C5AA0()
{
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v1 = sub_217753348();
  MEMORY[0x21CEA23B0](v1);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v2 = sub_217753348();
  MEMORY[0x21CEA23B0](v2);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  if (*(v0 + 113) == 1)
  {
    BYTE8(v5) = 0;
    MEMORY[0x21CEA23B0](0x203A646E696B202CLL, 0xE90000000000002ELL);
    *&v5 = *(v0 + 113);
    sub_217752C78();
    MEMORY[0x21CEA23B0](*(&v5 + 1), 0xE000000000000000);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v3);
  return 0xD00000000000001ALL;
}

uint64_t MusicRelationshipProperty.__deallocating_deinit()
{
  AnyMusicProperty.deinit();
  v0 = OUTLINED_FUNCTION_4_47();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t MusicRelationshipPropertyKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t MusicMetadataProperty.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = 0;
  *(v2 + 112) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = xmmword_217768550;
  *(v2 + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 72) = MEMORY[0x277D84F90];
  *(v2 + 80) = v3;
  *(v2 + 88) = v3;
  *(v2 + 96) = qword_282959AF8;
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_2173C5D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_0_41();
  v11 = static CloudResourceConvertible.catalogTypes.getter(*(v9 + 256), v10);
  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];
    sub_217751DE8();

    v22 = v13;
    v23 = v12;
    MEMORY[0x21CEA23B0](58, 0xE100000000000000, v14);
    v15 = *(a3 + 16);
    v16 = *(a3 + 24);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v15, v16);

    *(v4 + 104) = 0;
    *(v4 + 112) = 1;
    *(v4 + 16) = v6;
    *(v4 + 24) = v5;
    *(v4 + 32) = v22;
    *(v4 + 40) = v23;
    *(v4 + 48) = xmmword_217768550;
    *(v4 + 64) = 2;
    v17 = MEMORY[0x277D84F90];
    *(v4 + 72) = MEMORY[0x277D84F90];
    *(v4 + 80) = v17;
    *(v4 + 88) = v17;
    *(v4 + 96) = a4;

    return v4;
  }

  else
  {

    OUTLINED_FUNCTION_23_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_30_19();
    MEMORY[0x21CEA23B0](v19 + 30, v20 | 0x8000000000000000);
    v21 = sub_217753348();
    MEMORY[0x21CEA23B0](v21);

    OUTLINED_FUNCTION_38_11();
    result = OUTLINED_FUNCTION_19_15("Fatal error");
    __break(1u);
  }

  return result;
}

void sub_2173C5EE8()
{
  OUTLINED_FUNCTION_214();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_0_41();
  v7 = *(v6 + 256);
  v9 = static CloudResourceConvertible.catalogTypes.getter(v7, v8);
  if (v9[2])
  {
    v11 = v9[4];
    v10 = v9[5];
    sub_217751DE8();

    v22 = v11;
    v23 = v10;
    MEMORY[0x21CEA23B0](58, 0xE100000000000000, v12);
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v13, v14);

    type metadata accessor for PartialMusicProperty(0, v7, v15, v16);
    type metadata accessor for AnyMusicProperty();
    v17 = sub_217752C68();

    *(v3 + 104) = 0;
    *(v3 + 112) = 1;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v3 + 32) = v22;
    *(v3 + 40) = v23;
    *(v3 + 48) = xmmword_217768550;
    *(v3 + 64) = 2;
    v18 = MEMORY[0x277D84F90];
    *(v3 + 72) = v17;
    *(v3 + 80) = v18;
    *(v3 + 88) = v18;
    *(v3 + 96) = qword_282959AF8;

    OUTLINED_FUNCTION_213();
  }

  else
  {

    OUTLINED_FUNCTION_23_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_30_19();
    MEMORY[0x21CEA23B0](v19 + 30, v20 | 0x8000000000000000);
    v21 = sub_217753348();
    MEMORY[0x21CEA23B0](v21);

    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_19_15("Fatal error");
    __break(1u);
  }
}

unint64_t sub_2173C611C()
{
  OUTLINED_FUNCTION_23_1();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v1 = sub_217753348();
  MEMORY[0x21CEA23B0](v1);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v2 = sub_217753348();
  MEMORY[0x21CEA23B0](v2);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](v0[2], v0[3]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  v4 = v0[5];
  if (v4)
  {
    v5 = v0[4];
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v5, v4);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000, v6);
    MEMORY[0x21CEA23B0](0x3A65706F6373202CLL, 0xEA00000000002220);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v3);
  return 0xD000000000000016;
}

uint64_t MusicItem<>.with(_:preferredSource:options:)()
{
  OUTLINED_FUNCTION_182();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v6;
  *(v1 + 80) = v4;
  *(v1 + 56) = v14;
  *(v1 + 64) = v8;
  *(v1 + 48) = v15;
  *(v1 + 104) = *(v8 - 8);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 16) = v9;
  *(v1 + 24) = v7;
  *(v1 + 32) = v5;
  *(v1 + 40) = v3;
  *(v1 + 120) = type metadata accessor for MusicAsyncPropertyRequest(0, v1 + 16);
  OUTLINED_FUNCTION_66_3();
  *(v1 + 128) = v16;
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 160) = *v13;
  *(v1 + 161) = *v11;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2173C6414()
{
  v14 = v0;
  v1 = *(v0 + 161);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  (*(*(v0 + 104) + 16))(v4, *(v0 + 96), v8);
  v12 = v2;
  v13 = v1;
  sub_217751DE8();
  sub_21738F0D4(v4, v9, &v12, &v13, v8, v7, v6, v5, v3);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_2173C653C;

  return sub_21738F380();
}

uint64_t sub_2173C653C()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 152) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2173C6640()
{
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_201_0();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2173C66B8()
{
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_201_0();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2173C6730(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_217751DE8();
  }

  return result;
}

double sub_2173C6748(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_2173C67C0()
{
  result = qword_27CB26F80;
  if (!qword_27CB26F80)
  {
    type metadata accessor for AnyMusicProperty();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F80);
  }

  return result;
}

unint64_t sub_2173C6818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26F88;
  if (!qword_27CB26F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicRelationshipPropertyKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of MusicPropertyContainer.with(_:)()
{
  OUTLINED_FUNCTION_182();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_66_3();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_19(v7);
  *v8 = v9;
  v8[1] = sub_2173C7278;

  return v11(v1, v0, v5, v3);
}

uint64_t dispatch thunk of MusicPropertyContainer.with(_:preferredSource:)()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_66_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_22(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_66_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_22(v1);

  return v4(v3);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit03AnyA8PropertyC0D4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2173C70B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173C70F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2173C7138(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_2173C7164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26F90;
  if (!qword_27CB26F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F90);
  }

  return result;
}

unint64_t sub_2173C71E0()
{
  result = qword_27CB26FA0;
  if (!qword_27CB26FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26F98, qword_217768A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26FA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_29(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_15_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, int a12, char a13)
{
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v16;
  *(a1 + 48) = v15;
  *(a1 + 56) = v14;
  *(a1 + 64) = v13;
  *(a1 + 65) = a13;
  result = a10;
  *(a1 + 72) = a10;
  return result;
}

void OUTLINED_FUNCTION_22_20()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_48_11()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t ResourceType.supportsFilteredByEquivalencies.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_9_25(&qword_280BE8A88);
  }

  if (xmmword_280BE8A90 == v1 && *(&xmmword_280BE8A90 + 1) == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_37();
  if (sub_217753058())
  {
    return 1;
  }

  if (qword_280BE8B28 != -1)
  {
    OUTLINED_FUNCTION_8_31(&qword_280BE8B28);
  }

  if (qword_280BE8B30 == v1 && *algn_280BE8B38 == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_37();
  if (sub_217753058())
  {
    return 1;
  }

  if (qword_280BEA1C8 != -1)
  {
    OUTLINED_FUNCTION_7_29(&qword_280BEA1C8);
  }

  if (xmmword_280BEA1D0 == v1 && *(&xmmword_280BEA1D0 + 1) == v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_37();

  return sub_217753058();
}

uint64_t sub_2173C74C0()
{
  sub_217751DE8();
  sub_217751DE8();
  do
  {
    while (1)
    {
      v0 = sub_217752068();
      if (!v1)
      {

        sub_217752068();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_217752068();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_217753058();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

void sub_2173C7608(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_217751DE8();
  OUTLINED_FUNCTION_1_45();
  v6 = sub_2173C74C0();

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6 & 1;
}

uint64_t ResourceType.rawValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

void sub_2173C76A4()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.album.getter()
{
  if (qword_280BE8A88 != -1)
  {
    OUTLINED_FUNCTION_9_25(&qword_280BE8A88);
  }

  OUTLINED_FUNCTION_0_51(&xmmword_280BE8A90);

  return sub_217751DE8();
}

void sub_2173C774C()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.appleCurator.getter()
{
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4BF8);

  return sub_217751DE8();
}

void sub_2173C780C()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.artist.getter()
{
  if (qword_280BE4A68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&xmmword_280BE4A70);

  return sub_217751DE8();
}

void sub_2173C78C8()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.audioAnalysis.getter()
{
  if (qword_27CB23B80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FA8);

  return sub_217751DE8();
}

uint64_t sub_2173C7988()
{
  result = sub_2173C74C0();
  qword_280BE4A30 = 0x7265736F706D6F63;
  *algn_280BE4A38 = 0xE900000000000073;
  byte_280BE4A40 = result & 1;
  return result;
}

uint64_t static ResourceType.composer.getter()
{
  if (qword_280BE4A28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A30);

  return sub_217751DE8();
}

void sub_2173C7A60()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.creditArtist.getter()
{
  if (qword_280BE4BD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4BD8);

  return sub_217751DE8();
}

void sub_2173C7B20()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.creditsSection.getter()
{
  if (qword_27CB23B88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FC0);

  return sub_217751DE8();
}

void sub_2173C7BE0()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.curator.getter()
{
  if (qword_280BE7E50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE7E58);

  return sub_217751DE8();
}

void sub_2173C7C9C()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.editorialItem.getter()
{
  if (qword_280BE4BA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE4BB0);

  return sub_217751DE8();
}

void sub_2173C7D5C()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.flexAnalysis.getter()
{
  if (qword_27CB23B90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FD8);

  return sub_217751DE8();
}

void sub_2173C7E1C()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.genre.getter()
{
  if (qword_280BE4A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A90);

  return sub_217751DE8();
}

uint64_t sub_2173C7ED4()
{
  result = sub_2173C74C0();
  qword_27CB26FF0 = 0x6E6974656B72616DLL;
  *algn_27CB26FF8 = 0xEF736D6574692D67;
  byte_27CB27000 = result & 1;
  return result;
}

uint64_t static ResourceType.marketingItem.getter()
{
  if (qword_27CB23BA0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB26FF0);

  return sub_217751DE8();
}

void sub_2173C7FB0()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.musicMovie.getter()
{
  if (qword_280BE8B48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE8B50);

  return sub_217751DE8();
}

uint64_t sub_2173C806C()
{
  result = sub_2173C74C0();
  qword_27CB27008 = 0x75732D636973756DLL;
  unk_27CB27010 = 0xEF73656972616D6DLL;
  byte_27CB27018 = result & 1;
  return result;
}

uint64_t static ResourceType.musicSummary.getter()
{
  if (qword_27CB23BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27008);

  return sub_217751DE8();
}

void sub_2173C8148()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.musicVideo.getter()
{
  if (qword_280BE8B28 != -1)
  {
    OUTLINED_FUNCTION_8_31(&qword_280BE8B28);
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8B30);

  return sub_217751DE8();
}

void sub_2173C81F4()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v2 = OUTLINED_FUNCTION_13_25(v0, v1, 23);
  OUTLINED_FUNCTION_10_22(v2 & 1);
}

uint64_t static ResourceType.personalRecommendation.getter()
{
  if (qword_280BE4AB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4AB8);

  return sub_217751DE8();
}

void sub_2173C82B0()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.playlist.getter()
{
  if (qword_280BE8A38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8A40);

  return sub_217751DE8();
}

void sub_2173C8374()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v2 = OUTLINED_FUNCTION_13_25(v0, v1, 23);
  OUTLINED_FUNCTION_10_22(v2 & 1);
}

uint64_t static ResourceType.playlistCollaboration.getter()
{
  if (qword_280BE4AD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4AD8);

  return sub_217751DE8();
}

void sub_2173C8430()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v2 = OUTLINED_FUNCTION_13_25(v0, v1, 16);
  OUTLINED_FUNCTION_10_22(v2 & 1);
}

uint64_t static ResourceType.playlistEntry.getter()
{
  if (qword_280BE8AC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&xmmword_280BE8AD0);

  return sub_217751DE8();
}

uint64_t sub_2173C84EC()
{
  result = sub_2173C74C0();
  qword_27CB27020 = 0xD000000000000018;
  *algn_27CB27028 = 0x80000002177AD790;
  byte_27CB27030 = result & 1;
  return result;
}

uint64_t static ResourceType.playlistEntryReaction.getter()
{
  if (qword_27CB23BC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27020);

  return sub_217751DE8();
}

void sub_2173C85C4()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.recordLabel.getter()
{
  if (qword_280BE4C38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4C40);

  return sub_217751DE8();
}

void sub_2173C8684()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.socialProfile.getter()
{
  if (qword_280BE4B60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4B68);

  return sub_217751DE8();
}

void sub_2173C8744()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.song.getter()
{
  if (qword_280BEA1C8 != -1)
  {
    OUTLINED_FUNCTION_7_29(&qword_280BEA1C8);
  }

  OUTLINED_FUNCTION_0_51(&xmmword_280BEA1D0);

  return sub_217751DE8();
}

void sub_2173C87EC()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_4_48();
  v0 = sub_2173C74C0();
  OUTLINED_FUNCTION_3_45(v0 & 1);
}

uint64_t static ResourceType.station.getter()
{
  if (qword_280BE8A60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8A68);

  return sub_217751DE8();
}

void sub_2173C88A8()
{
  v0 = OUTLINED_FUNCTION_1_45();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.tvEpisode.getter()
{
  if (qword_280BE49D8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE49E0);

  return sub_217751DE8();
}

uint64_t sub_2173C8964()
{
  result = sub_2173C74C0();
  qword_280BE4A08 = 0x6F736165732D7674;
  unk_280BE4A10 = 0xEA0000000000736ELL;
  byte_280BE4A18 = result & 1;
  return result;
}

uint64_t static ResourceType.tvSeason.getter()
{
  if (qword_280BE4A00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A08);

  return sub_217751DE8();
}

uint64_t sub_2173C8A3C()
{
  result = sub_2173C74C0();
  qword_280BE4A50 = 0x73776F68732D7674;
  *algn_280BE4A58 = 0xE800000000000000;
  byte_280BE4A60 = result & 1;
  return result;
}

uint64_t static ResourceType.tvShow.getter()
{
  if (qword_280BE4A48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4A50);

  return sub_217751DE8();
}

void sub_2173C8B0C()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_16_27();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.uploadedAudio.getter()
{
  if (qword_280BE4B40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE4B48);

  return sub_217751DE8();
}

void sub_2173C8BC0()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_16_27();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.uploadedVideo.getter()
{
  if (qword_280BE4B18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE4B20);

  return sub_217751DE8();
}

void sub_2173C8C74()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v2 = OUTLINED_FUNCTION_13_25(v0, v1, 24);
  OUTLINED_FUNCTION_10_22(v2 & 1);
}

uint64_t static ResourceType.userProfile.getter()
{
  if (qword_280BE4C10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(qword_280BE4C18);

  return sub_217751DE8();
}

void sub_2173C8D30()
{
  OUTLINED_FUNCTION_6_31();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.libraryAlbum.getter()
{
  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8AF0);

  return sub_217751DE8();
}

void sub_2173C8DE4()
{
  OUTLINED_FUNCTION_6_31();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.libraryArtist.getter()
{
  if (qword_280BE4B80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4B88);

  return sub_217751DE8();
}

void sub_2173C8E98()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v2 = OUTLINED_FUNCTION_13_25(v0, v1, 20);
  OUTLINED_FUNCTION_10_22(v2 & 1);
}

uint64_t static ResourceType.libraryMusicVideo.getter()
{
  if (qword_280BE8B68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8B70);

  return sub_217751DE8();
}

uint64_t sub_2173C8F54()
{
  result = sub_2173C74C0();
  strcpy(&qword_27CB27038, "library-pins");
  unk_27CB27045 = 0;
  unk_27CB27046 = -5120;
  byte_27CB27048 = result & 1;
  return result;
}

uint64_t static ResourceType.libraryPin.getter()
{
  if (qword_27CB23BD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27038);

  return sub_217751DE8();
}

void sub_2173C9020()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v2 = OUTLINED_FUNCTION_13_25(v0, v1, 17);
  OUTLINED_FUNCTION_10_22(v2 & 1);
}

uint64_t static ResourceType.libraryPlaylist.getter()
{
  if (qword_280BE8AA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8AB0);

  return sub_217751DE8();
}

void sub_2173C90DC()
{
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_11_30();
  v2 = OUTLINED_FUNCTION_13_25(v0, v1, 24);
  OUTLINED_FUNCTION_10_22(v2 & 1);
}

uint64_t static ResourceType.libraryPlaylistFolder.getter()
{
  if (qword_280BE4AF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4AF8);

  return sub_217751DE8();
}

void sub_2173C9198()
{
  OUTLINED_FUNCTION_6_31();
  v1 = OUTLINED_FUNCTION_2_47(v0);
  OUTLINED_FUNCTION_3_45(v1 & 1);
}

uint64_t static ResourceType.librarySong.getter()
{
  if (qword_280BE8B08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE8B10);

  return sub_217751DE8();
}

uint64_t sub_2173C924C()
{
  result = sub_2173C74C0();
  qword_27CB27050 = 0x6E776F6E6B6E75;
  *algn_27CB27058 = 0xE700000000000000;
  byte_27CB27060 = result & 1;
  return result;
}

uint64_t static ResourceType.unknown.getter()
{
  if (qword_27CB23BE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_27CB27050);

  return sub_217751DE8();
}

unint64_t sub_2173C940C@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  result = ResourceType.init(stringLiteral:)(*a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_2173C9454@<X0>(uint64_t *a1@<X8>)
{
  result = ResourceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ResourceType.correspondingCatalogType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16) == 1)
  {
    OUTLINED_FUNCTION_12_21();
    sub_21733A5C8(v4, v5, v6);
    OUTLINED_FUNCTION_15_25();
    v3 = OUTLINED_FUNCTION_14_0(v7, v8, v9, v10, v11, v12, v13, v14, v17);
    result = v15;
  }

  else
  {
    result = sub_217751DE8();
  }

  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

Swift::String_optional __swiftcall ResourceType.hrefForResource(with:)(MusicKit::MusicItemID with)
{
  object = with.rawValue._object;
  countAndFlagsBits = with.rawValue._countAndFlagsBits;
  v5 = *v1;
  v4 = v1[1];
  if (*(v1 + 16) == 1)
  {
    OUTLINED_FUNCTION_12_21();
    sub_21733A5C8(v6, v7, v8);
    OUTLINED_FUNCTION_15_25();
    v17 = OUTLINED_FUNCTION_14_0(v9, v10, v11, v12, v13, v14, v15, v16, v33);
    v19 = v18;
    sub_217752AA8();

    v34[0] = 0x6C2F656D2F31762FLL;
    v34[1] = 0xEF2F797261726269;
    MEMORY[0x21CEA23B0](v17, v19, v20);
  }

  else
  {
    sub_217752AA8();

    strcpy(v34, "/v1/catalog/");
    BYTE5(v34[1]) = 0;
    HIWORD(v34[1]) = -5120;
    sub_217353968();
    if (qword_280BE8078 != -1)
    {
      swift_once();
    }

    v22 = qword_280C023D0;
    v23 = *(qword_280C023D0 + 40);
    v24 = *(v23 + 16);

    os_unfair_lock_lock(v24);
    v26 = *(v22 + 24);
    v25 = *(v22 + 32);
    v27 = *(v23 + 16);
    sub_217751DE8();
    os_unfair_lock_unlock(v27);

    if (v25)
    {
      v28 = v26;
    }

    else
    {
      v28 = 29557;
    }

    if (!v25)
    {
      v25 = 0xE200000000000000;
    }

    MEMORY[0x21CEA23B0](v28, v25);

    MEMORY[0x21CEA23B0](47, 0xE100000000000000, v29);
    MEMORY[0x21CEA23B0](v5, v4);
  }

  MEMORY[0x21CEA23B0](47, 0xE100000000000000, v21);
  MEMORY[0x21CEA23B0](countAndFlagsBits, object);
  v30 = v34[0];
  v31 = v34[1];
  result.value._object = v31;
  result.value._countAndFlagsBits = v30;
  return result;
}

uint64_t ResourceType.description.getter()
{
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  return 34;
}

BOOL static Array<A>.~= infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (a1 + 40);
  v5 = *(a1 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    if (*(v4 - 1) == v2 && *v4 == v3)
    {
      break;
    }

    v4 += 3;
    OUTLINED_FUNCTION_5_37();
  }

  while ((sub_217753058() & 1) == 0);
  return v5 != 0;
}

unint64_t sub_2173C97B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE49D0;
  if (!qword_280BE49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE49D0);
  }

  return result;
}

unint64_t sub_2173C980C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27068;
  if (!qword_27CB27068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27068);
  }

  return result;
}

unint64_t sub_2173C9870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27070;
  if (!qword_27CB27070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27070);
  }

  return result;
}

unint64_t sub_2173C98EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE49C8;
  if (!qword_280BE49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE49C8);
  }

  return result;
}

id sub_2173C997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_217717554(a1, a2, a3, a4, a5);
  if (result)
  {
    return sub_2175B770C(result);
  }

  return result;
}

uint64_t ArtworkCatalog.__allocating_init(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6);
  v10 = sub_2173CAF74(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_2173C9A78@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_217751818();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  if (a3)
  {
    goto LABEL_2;
  }

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 24))(v17, v18);
  if (!v19)
  {
LABEL_7:
    sub_217751808();
    v15 = sub_2177517E8();
    v16 = v32;
    type metadata accessor for ArtworkLoadingProtocol();
    sub_217751DE8();
    a2 = sub_21757596C(v15, v16);
    a3 = v33;

    (*(v10 + 8))(v14, v8, v34);
    goto LABEL_8;
  }

  v20 = v19;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 8))(v21, v22);
  if (!v24)
  {

    goto LABEL_7;
  }

  v25 = v23;
  v26 = v24;
  type metadata accessor for ArtworkLoadingProtocol();
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = (*(v28 + 16))(v27, v28);
  a2 = sub_217575358(v20, v25, v26, v29, v30);
  a3 = v31;

LABEL_2:
  v15 = 0;
  v16 = 0;
LABEL_8:
  *a4 = v15;
  a4[1] = v16;
  a4[2] = a2;
  a4[3] = a3;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *ArtworkCatalog.deinit()
{
  v1 = sub_217751C58();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_217751C88();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = v0[3];
  if (v15)
  {
    v16 = v0[2];
    v21 = v11;
    sub_2172B38C0();
    sub_217751DE8();
    v17 = sub_217752838();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    aBlock[4] = sub_2173CB0E0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2172B5448;
    aBlock[3] = &block_descriptor_5;
    v19 = _Block_copy(aBlock);

    sub_217751C78();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2171FC290(&qword_280BE99E8, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24DA8, &qword_217768C60);
    sub_2172B3934();
    sub_217752A08();
    MEMORY[0x21CEA2BA0](0, v14, v7, v19);
    _Block_release(v19);

    (*(v3 + 8))(v7, v1);
    (*(v9 + 8))(v14, v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  return v0;
}

uint64_t sub_2173C9F6C(uint64_t a1, uint64_t a2)
{
  if (qword_280BE8888 != -1)
  {
    swift_once();
  }

  return sub_217577358(a1, a2);
}

uint64_t ArtworkCatalog.__deallocating_deinit()
{
  ArtworkCatalog.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t ArtworkCatalog.resizing(to:)(double a1, double a2)
{
  v5 = v2 + 32;
  OUTLINED_FUNCTION_138(v5, v24);
  sub_2171FF30C(v5, v21);
  v6 = v22;
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (*(v7 + 80))(v6, v7, a1, a2);
  v15 = MEMORY[0x28223BE20](v14);
  (*(v9 + 16))(v21 - v13, v21 - v13, v6, v15);
  OUTLINED_FUNCTION_6_32();
  v19 = sub_2173CAF74(v16, v17, v18, v7);
  (*(v9 + 8))(v21 - v13, v6);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v19;
}

uint64_t ArtworkCatalog.underlyingArtworkCatalog.setter(__int128 *a1)
{
  OUTLINED_FUNCTION_10_23(a1);
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_2171F3F0C(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t sub_2173CA28C(uint64_t a1, double a2, double a3)
{
  OUTLINED_FUNCTION_10_23(a1);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 32, v6);
  (*(v7 + 64))(v6, v7, a2, a3);
  return swift_endAccess();
}

uint64_t sub_2173CA32C()
{
  OUTLINED_FUNCTION_209();
  v1 = v0[10];
  OUTLINED_FUNCTION_138(v1 + 32, (v0 + 7));
  sub_2171FF30C(v1 + 32, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  OUTLINED_FUNCTION_7_30(v3);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2173CA45C;

  return v7(v2, v3);
}

uint64_t sub_2173CA45C()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v6[12] = v0;

  if (v0)
  {
    v9 = sub_2173CA5EC;
  }

  else
  {
    v6[13] = v3;
    v6[14] = v5;
    v9 = sub_2173CA584;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2173CA584()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_2173CA5EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ArtworkCatalog.== infix(_:_:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (sub_217753058() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_16:
    v32 = 0;
    return v32 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_8:
  OUTLINED_FUNCTION_138((a1 + 4), v35);
  v8 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_2_48(v12);
  v14(v13);
  v15 = OUTLINED_FUNCTION_8_32();
  v17 = v16(v15);
  v19 = v18;
  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_138((a2 + 4), v34);
  v20 = a2[7];
  v21 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v20);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  (*(v23 + 16))(v26 - v25);
  v28 = (*(v21 + 40))(v20, v21);
  v30 = v29;
  (*(v23 + 8))(v27, v20);
  if (v19)
  {
    if (v30)
    {
      if (v17 == v28 && v19 == v30)
      {

        v32 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_6_32();
        v32 = sub_217753058();
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    if (!v30)
    {
      v32 = 1;
      return v32 & 1;
    }

    v32 = 0;
  }

  return v32 & 1;
}