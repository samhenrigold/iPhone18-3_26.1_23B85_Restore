uint64_t sub_1C2F3D0D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v4 = sub_1C2F75C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C2F3D148(uint64_t a1)
{
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  return sub_1C2F7661C();
}

uint64_t LanguageSelectionDownloadModel.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v2 = sub_1C2F75C8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_1C2F75DEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LanguageSelectionDownloadModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v2 = sub_1C2F75C8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel___observationRegistrar;
  v4 = sub_1C2F75DEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F3D35C()
{
  sub_1C2F76F9C();
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1C2F7661C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F3D3F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;
  v5 = sub_1C2F75C8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C2F3D474()
{
  sub_1C2F76F9C();
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1C2F7661C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F3D514(uint64_t a1)
{
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  return sub_1C2F7661C();
}

uint64_t sub_1C2F3D59C(uint64_t a1)
{
  sub_1C2F76F9C();
  sub_1C2F75C8C();
  sub_1C2F3F75C(&qword_1EC076B30, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1C2F7661C();
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F3D654()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC628);
  __swift_project_value_buffer(v0, qword_1EDEBC628);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F3D6D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1C2EF5A14(0, &qword_1EDEBC4F8, 0x1E6982C10);
    v2 = sub_1C2F767EC();
  }

  v3(v2);
}

void *sub_1C2F3D75C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1C2F3D7E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978);

  return sub_1C2F38F60(a1);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F3D888(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1C6929560](*(v1 + 40), a1, 4);

  return sub_1C2F3D914(v2, v3);
}

unint64_t sub_1C2F3D8D0(uint64_t a1)
{
  v2 = sub_1C2F76BFC();

  return sub_1C2F3D980(a1, v2);
}

unint64_t sub_1C2F3D914(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C2F3D980(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C2F401E4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C69291E0](v9, a1);
      sub_1C2F265AC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C2F3DA48(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C2F5C3F0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C2F3DAC4(v6);
  return sub_1C2F76CFC();
}

uint64_t sub_1C2F3DAC4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C2F76ECC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LanguageSelectionDownloadModel(0);
        v6 = sub_1C2F7681C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C2F3DE88(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C2F3DBC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C2F3DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_1C2F75C8C();
  result = MEMORY[0x1EEE9AC00](v39);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  if (a3 != a2)
  {
    v12 = (v9 + 8);
    v48 = *a4;
    v13 = (v48 + 8 * a3 - 8);
    v14 = a1 - a3;
LABEL_5:
    v37 = v13;
    v38 = a3;
    v15 = *(v48 + 8 * a3);
    v36 = v14;
    v16 = v14;
    while (1)
    {
      v17 = *v13;
      v18 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

      sub_1C2F75BFC();
      v19 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v15 + v18, v11);
      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      v22 = 0xE000000000000000;
      if (v20)
      {
        v22 = v20;
      }

      v46 = v21;
      v47 = v22;
      v23 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v15 + v18, v11);
      if (v24)
      {
        v44 = 32;
        v45 = 0xE100000000000000;
        MEMORY[0x1C6928D30](v23);

        MEMORY[0x1C6928D30](v44, v45);
      }

      v25 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v17 + v18, v11);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0xE000000000000000;
      }

      if (v26)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v44 = v28;
      v45 = v27;
      v29 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v17 + v18, v11);
      if (v30)
      {
        v42 = 32;
        v43 = 0xE100000000000000;
        MEMORY[0x1C6928D30](v29);

        MEMORY[0x1C6928D30](v42, v43);

        v28 = v44;
        v27 = v45;
      }

      v42 = v46;
      v43 = v47;
      v40 = v28;
      v41 = v27;
      sub_1C2EF66C8();
      v31 = sub_1C2F76B0C();

      (*v12)(v11, v39);

      if (v31 != -1)
      {
LABEL_4:
        a3 = v38 + 1;
        v13 = v37 + 1;
        v14 = v36 - 1;
        if (v38 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v32 = *v13;
      v15 = v13[1];
      *v13 = v15;
      v13[1] = v32;
      --v13;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C2F3DE88(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v131 = a1;
  v141 = sub_1C2F75C8C();
  v8 = MEMORY[0x1EEE9AC00](v141);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v139 = &v127 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v129 = &v127 - v15;
  v16 = a3[1];
  v132 = a3;
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v19 = *v131;
    if (!*v131)
    {
      goto LABEL_156;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_150:
      result = sub_1C2F59928(v18);
      v18 = result;
    }

    v150 = v18;
    v122 = *(v18 + 2);
    if (v122 >= 2)
    {
      while (1)
      {
        v123 = *a3;
        if (!*a3)
        {
          goto LABEL_154;
        }

        a3 = (v122 - 1);
        v124 = *&v18[16 * v122];
        v125 = *&v18[16 * v122 + 24];
        sub_1C2F3E858((v123 + 8 * v124), (v123 + 8 * *&v18[16 * v122 + 16]), (v123 + 8 * v125), v19);
        if (v5)
        {
        }

        if (v125 < v124)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C2F59928(v18);
        }

        if (v122 - 2 >= *(v18 + 2))
        {
          goto LABEL_144;
        }

        v126 = &v18[16 * v122];
        *v126 = v124;
        *(v126 + 1) = v125;
        v150 = v18;
        result = sub_1C2F5989C(v122 - 1);
        v18 = v150;
        v122 = *(v150 + 2);
        a3 = v132;
        if (v122 <= 1)
        {
        }
      }
    }
  }

  v128 = a4;
  v17 = 0;
  v140 = (v14 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17 + 1;
    v137 = v18;
    v133 = v17;
    if (v17 + 1 < v16)
    {
      v136 = v16;
      v130 = v5;
      v20 = *a3;
      v21 = *(*a3 + 8 * v19);
      v134 = 8 * v17;
      v22 = (v20 + 8 * v17);
      v24 = *v22;
      v23 = v22 + 2;
      v25 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

      v26 = v129;
      sub_1C2F75BFC();
      LODWORD(v138) = sub_1C2F30670(v21 + v25, v24 + v25, v26);
      v135 = *v140;
      v135(v26, v141);

      v27 = (v17 + 2);
      while (1)
      {
        v19 = v136;
        if (v136 == v27)
        {
          break;
        }

        v29 = *(v23 - 1);
        v30 = *v23;
        v31 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

        v32 = v139;
        sub_1C2F75BFC();
        v33 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v30 + v31, v32);
        if (v34)
        {
          v35 = v33;
        }

        else
        {
          v35 = 0;
        }

        v36 = 0xE000000000000000;
        if (v34)
        {
          v36 = v34;
        }

        v148 = v35;
        v149 = v36;
        v37 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v30 + v31, v32);
        if (v38)
        {
          v146 = 32;
          v147 = 0xE100000000000000;
          MEMORY[0x1C6928D30](v37);

          MEMORY[0x1C6928D30](v146, v147);
        }

        v39 = v139;
        v40 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v29 + v31, v139);
        if (v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        if (v41)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0;
        }

        v146 = v43;
        v147 = v42;
        v44 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v29 + v31, v39);
        if (v45)
        {
          v144 = 32;
          v145 = 0xE100000000000000;
          MEMORY[0x1C6928D30](v44);

          MEMORY[0x1C6928D30](v144, v145);

          v43 = v146;
          v42 = v147;
        }

        v144 = v148;
        v145 = v149;
        v142 = v43;
        v143 = v42;
        sub_1C2EF66C8();
        v28 = sub_1C2F76B0C();

        v135(v139, v141);

        v27 = (v27 + 1);
        ++v23;
        v18 = v137;
        if (((v138 ^ (v28 != -1)) & 1) == 0)
        {
          v19 = v27 - 1;
          break;
        }
      }

      v5 = v130;
      a3 = v132;
      v46 = v134;
      if (v138)
      {
        v47 = v133;
        if (v19 < v133)
        {
          goto LABEL_147;
        }

        if (v133 < v19)
        {
          v48 = 8 * v19 - 8;
          v49 = v19;
          do
          {
            if (v47 != --v49)
            {
              v51 = *a3;
              if (!*a3)
              {
                goto LABEL_153;
              }

              v50 = *(v51 + v46);
              *(v51 + v46) = *(v51 + v48);
              *(v51 + v48) = v50;
            }

            ++v47;
            v48 -= 8;
            v46 += 8;
          }

          while (v47 < v49);
        }
      }
    }

    v52 = a3[1];
    if (v19 >= v52)
    {
      goto LABEL_66;
    }

    if (__OFSUB__(v19, v133))
    {
      goto LABEL_146;
    }

    if (v19 - v133 >= v128)
    {
LABEL_66:
      v54 = v133;
      goto LABEL_67;
    }

    if (__OFADD__(v133, v128))
    {
      goto LABEL_148;
    }

    if (v133 + v128 >= v52)
    {
      v53 = a3[1];
    }

    else
    {
      v53 = v133 + v128;
    }

    if (v53 < v133)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v54 = v133;
    if (v19 != v53)
    {
      break;
    }

LABEL_67:
    if (v19 < v54)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C2F1C78C(0, *(v18 + 2) + 1, 1, v18);
      v18 = result;
    }

    v77 = *(v18 + 2);
    v76 = *(v18 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_1C2F1C78C((v76 > 1), v77 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = v78;
    v79 = &v18[16 * v77];
    *(v79 + 4) = v133;
    *(v79 + 5) = v19;
    v80 = *v131;
    if (!*v131)
    {
      goto LABEL_155;
    }

    v138 = v19;
    if (v77)
    {
      while (1)
      {
        v19 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v18 + 4);
          v82 = *(v18 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_87:
          if (v84)
          {
            goto LABEL_134;
          }

          v97 = &v18[16 * v78];
          v99 = *v97;
          v98 = *(v97 + 1);
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_137;
          }

          v103 = &v18[16 * v19 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_141;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v19 = v78 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v107 = &v18[16 * v78];
        v109 = *v107;
        v108 = *(v107 + 1);
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_101:
        if (v102)
        {
          goto LABEL_136;
        }

        v110 = &v18[16 * v19];
        v112 = *(v110 + 4);
        v111 = *(v110 + 5);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_139;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_108:
        v118 = v19 - 1;
        if (v19 - 1 >= v78)
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*a3)
        {
          goto LABEL_152;
        }

        v119 = *&v18[16 * v118 + 32];
        v120 = *&v18[16 * v19 + 40];
        sub_1C2F3E858((*a3 + 8 * v119), (*a3 + 8 * *&v18[16 * v19 + 32]), (*a3 + 8 * v120), v80);
        if (v5)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C2F59928(v18);
        }

        if (v118 >= *(v18 + 2))
        {
          goto LABEL_131;
        }

        v121 = &v18[16 * v118];
        *(v121 + 4) = v119;
        *(v121 + 5) = v120;
        v150 = v18;
        result = sub_1C2F5989C(v19);
        v18 = v150;
        v78 = *(v150 + 2);
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = &v18[16 * v78 + 32];
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_132;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_133;
      }

      v92 = &v18[16 * v78];
      v94 = *v92;
      v93 = *(v92 + 1);
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_135;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_138;
      }

      if (v96 >= v88)
      {
        v114 = &v18[16 * v19 + 32];
        v116 = *v114;
        v115 = *(v114 + 1);
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_142;
        }

        if (v83 < v117)
        {
          v19 = v78 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_87;
    }

LABEL_3:
    v16 = a3[1];
    v17 = v138;
    if (v138 >= v16)
    {
      goto LABEL_118;
    }
  }

  v130 = v5;
  v55 = *a3;
  v56 = (v55 + 8 * v19 - 8);
  v57 = (v133 - v19);
  v134 = v53;
LABEL_44:
  v138 = v19;
  v58 = *(v55 + 8 * v19);
  v135 = v57;
  v136 = v56;
  while (1)
  {
    v59 = *v56;
    v60 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

    sub_1C2F75BFC();
    v61 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v58 + v60, v10);
    if (v62)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0;
    }

    v64 = 0xE000000000000000;
    if (v62)
    {
      v64 = v62;
    }

    v148 = v63;
    v149 = v64;
    v65 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v58 + v60, v10);
    if (v66)
    {
      v146 = 32;
      v147 = 0xE100000000000000;
      MEMORY[0x1C6928D30](v65);

      MEMORY[0x1C6928D30](v146, v147);
    }

    v67 = _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(v59 + v60, v10);
    if (v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0xE000000000000000;
    }

    if (v68)
    {
      v70 = v67;
    }

    else
    {
      v70 = 0;
    }

    v146 = v70;
    v147 = v69;
    v71 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(v59 + v60, v10);
    if (v72)
    {
      v144 = 32;
      v145 = 0xE100000000000000;
      MEMORY[0x1C6928D30](v71);

      MEMORY[0x1C6928D30](v144, v145);

      v70 = v146;
      v69 = v147;
    }

    v144 = v148;
    v145 = v149;
    v142 = v70;
    v143 = v69;
    sub_1C2EF66C8();
    v73 = sub_1C2F76B0C();

    (*v140)(v10, v141);

    if (v73 != -1)
    {
LABEL_43:
      v19 = v138 + 1;
      v56 = v136 + 1;
      v57 = v135 - 1;
      if (v138 + 1 != v134)
      {
        goto LABEL_44;
      }

      v19 = v134;
      v5 = v130;
      a3 = v132;
      v18 = v137;
      goto LABEL_66;
    }

    if (!v55)
    {
      break;
    }

    v74 = *v56;
    v58 = v56[1];
    *v56 = v58;
    v56[1] = v74;
    --v56;
    if (__CFADD__(v57++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_1C2F3E858(char *a1, char *a2, char *a3, char *a4)
{
  v44 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 - a1;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      v26 = v8;
      memmove(a4, a2, 8 * v15);
      v8 = v26;
    }

    v19 = &a4[8 * v15];
    v17 = a4;
    if (a3 - a2 < 8)
    {
      v25 = a2;
    }

    else
    {
      v25 = a2;
      if (a2 > a1)
      {
        v41 = v10;
        v42 = (v8 + 8);
        v43 = a4;
        v39 = a1;
        do
        {
          v40 = v25;
          v27 = v25 - 8;
          a3 -= 8;
          v28 = v19;
          v29 = v19;
          while (1)
          {
            v30 = a3 + 8;
            v31 = *(v29 - 1);
            v29 -= 8;
            v32 = v27;
            v33 = *v27;
            v34 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

            v35 = v41;
            sub_1C2F75BFC();
            LOBYTE(v34) = sub_1C2F30670(v31 + v34, v33 + v34, v35);
            (*v42)(v35, v44);

            if (v34)
            {
              break;
            }

            if (v30 != v28)
            {
              *a3 = *v29;
            }

            a3 -= 8;
            v28 = v29;
            v27 = v32;
            if (v29 <= v43)
            {
              v19 = v29;
              v17 = v43;
              v25 = v40;
              goto LABEL_39;
            }
          }

          v36 = v39;
          v37 = v32;
          if (v30 != v40)
          {
            *a3 = *v32;
          }

          v17 = v43;
          v19 = v28;
          if (v28 <= v43)
          {
            break;
          }

          v25 = v37;
        }

        while (v37 > v36);
        v25 = v37;
      }
    }
  }

  else
  {
    v16 = a2;
    v17 = a4;
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      v18 = v8;
      memmove(a4, a1, 8 * v13);
      v8 = v18;
    }

    v19 = &a4[8 * v13];
    if (v11 >= 8 && v16 < a3)
    {
      v42 = (v8 + 8);
      while (1)
      {
        v20 = *v16;
        v21 = *v17;
        v22 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale;

        sub_1C2F75BFC();
        LOBYTE(v22) = sub_1C2F30670(v20 + v22, v21 + v22, v10);
        (*v42)(v10, v44);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v23 = v16;
        v24 = a1 == v16;
        v16 += 8;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 += 8;
        if (v17 >= v19 || v16 >= a3)
        {
          goto LABEL_20;
        }
      }

      v23 = v17;
      v24 = a1 == v17;
      v17 += 8;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v23;
      goto LABEL_18;
    }

LABEL_20:
    v25 = a1;
  }

LABEL_39:
  if (v25 != v17 || v25 >= &v17[(v19 - v17 + (v19 - v17 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v25, v17, 8 * ((v19 - v17) / 8));
  }

  return 1;
}

uint64_t (*sub_1C2F3EC08(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6929250](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1C2F3EC88;
  }

  __break(1u);
  return result;
}

void (*sub_1C2F3EC90(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6929250](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C2F3ED10;
  }

  __break(1u);
  return result;
}

void *sub_1C2F3ED30(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_1C2F76BBC();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1C2F3D75C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C2F3EDCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C2F76BBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C2F76BBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C2EF7414(&qword_1EDEBD790, &qword_1EC076B58, &unk_1C2F7BCE0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B58, &unk_1C2F7BCE0);
            v9 = sub_1C2F3EC90(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C2EF5A14(0, &unk_1EDEBD778, 0x1E69D8CA8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F3EF80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C2F76BBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C2F76BBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C2EF7414(&qword_1EC076B48, &qword_1EC076B40, &qword_1C2F7BC40, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B40, &qword_1C2F7BC40);
            v9 = sub_1C2F3EC08(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LanguageSelectionDownloadModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F3F124(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v2[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B20, &qword_1C2F7B980);
  v2[5] = v3;
  v2[6] = sub_1C2EF7414(&qword_1EDEBC528, &qword_1EC076B20, &qword_1C2F7B980, MEMORY[0x1E69E86A0]);
  v2[14] = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  (*(*(v3 - 8) + 16))();
  v2[15] = sub_1C2F7688C();
  v2[16] = sub_1C2F7687C();
  v5 = sub_1C2F7684C();
  v2[17] = v5;
  v2[18] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C2F3F290, v5, v4);
}

uint64_t sub_1C2F3F290()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = sub_1C2F768AC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1C2F09348(v0 + 16, v0 + 56);

  v5 = sub_1C2F7687C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  sub_1C2EF6918((v0 + 56), (v6 + 4));
  v6[9] = v4;

  v8 = sub_1C2F06978(0, 0, v2, &unk_1C2F7BC90, v6);
  v9 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask;
  *(v0 + 152) = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask;
  v10 = *(v1 + v9);
  *(v1 + v9) = v8;
  if (v10)
  {

    sub_1C2F7692C();

    v8 = *(v1 + v9);
  }

  *(v0 + 160) = v8;
  if (v8)
  {

    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_1C2F3F528;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {

    v12 = *(v0 + 152);
    v13 = *(v0 + 96);
    v14 = *(v13 + v12);
    *(v13 + v12) = 0;
    if (v14)
    {
      sub_1C2F7692C();
    }

    sub_1C2F3FD68(*(v0 + 112), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1C2F3F528()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1C2F3F66C, v3, v2);
}

uint64_t sub_1C2F3F66C()
{

  v1 = v0[19];
  v2 = v0[12];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;
  if (v3)
  {
    sub_1C2F7692C();
  }

  sub_1C2F3FD68(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2F3F75C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2F3F7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C2F3F8EC(uint64_t a1)
{
  sub_1C2F3FA2C(319);
  if (v1 <= 0x3F)
  {
    sub_1C2F75DEC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C2F3FA2C(uint64_t a1)
{
  if (!qword_1EDEBD6F8)
  {
    sub_1C2F75C8C();
    v1 = sub_1C2F76ADC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEBD6F8);
    }
  }
}

uint64_t sub_1C2F3FA8C(uint64_t a1)
{
  result = sub_1C2F75C8C();
  if (v2 <= 0x3F)
  {
    result = sub_1C2F75DEC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_1C2F3FD14()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = result;
  return result;
}

uint64_t sub_1C2F3FD2C()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1C2F3FD68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B20, &qword_1C2F7B980);
  v18[3] = v7;
  v18[4] = sub_1C2EF7414(&qword_1EDEBC528, &qword_1EC076B20, &qword_1C2F7B980, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);
  v9 = sub_1C2F768AC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_1C2F09348(v18, v17);
  sub_1C2F7688C();

  v11 = sub_1C2F7687C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  sub_1C2EF6918(v17, (v12 + 4));
  v12[9] = v10;

  v14 = sub_1C2F06978(0, 0, v6, &unk_1C2F7BCA0, v12);
  v15 = *(a2 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observationTask);
  *(a2 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observationTask) = v14;
  if (v15)
  {

    sub_1C2F7692C();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_1C2F3FFC0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_1C2F3FFFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F394C0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_60Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C2F40104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06348;

  return sub_1C2F3BEA8(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1C2F401C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1C2F402BC(int *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v5 = *(a1 + 1);
    v4 = *(a1 + 2);
    v7 = *(a1 + 3);
    v6 = *(a1 + 4);
    v25 = a2;
    if ((([v25 isRTT] & 1) != 0 || objc_msgSend(v25, sel_isTTY)) && v6)
    {
      v8 = *(v2 + 16);
      v9 = *(v2 + 20);
      *(v2 + 16) = v3;
      *(v2 + 20) = 0;
      v10 = objc_opt_self();

      v11 = [v10 sharedInstance];
      if (v11)
      {
        v12 = v11;
        if (v3 == v8)
        {
          v13 = v9;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = 7;
        }

        else
        {
          v14 = 8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076738, &qword_1C2F7A1B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C2F7BCF0;
        sub_1C2F766CC();
        v16 = MEMORY[0x1E69E6158];
        sub_1C2F76C1C();
        *(inited + 96) = v16;
        *(inited + 72) = v5;
        *(inited + 80) = v4;
        sub_1C2F766CC();

        sub_1C2F76C1C();
        *(inited + 168) = v16;
        *(inited + 144) = v7;
        *(inited + 152) = v6;
        sub_1C2F766CC();
        sub_1C2F76C1C();
        v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v18 = sub_1C2F4063C();
        *(inited + 240) = v18;
        *(inited + 216) = v17;
        sub_1C2F766CC();
        sub_1C2F76C1C();
        v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(inited + 312) = v18;
        *(inited + 288) = v19;
        sub_1C2F766CC();
        sub_1C2F76C1C();
        v20 = [v25 callUUID];
        v21 = sub_1C2F766CC();
        v23 = v22;

        *(inited + 384) = v16;
        *(inited + 360) = v21;
        *(inited + 368) = v23;
        sub_1C2F263A4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076740, &qword_1C2F7A1B8);
        swift_arrayDestroy();
        v24 = sub_1C2F7659C();

        [v12 sendMessageWithPayload:v24 andIdentifier:0x400000000000];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1C2F4063C()
{
  result = qword_1EC076748;
  if (!qword_1EC076748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076748);
  }

  return result;
}

uint64_t sub_1C2F40688(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1C2F406CC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [BiomeLibrary() Translation];
    swift_unknownObjectRelease();
    v4 = [v3 Communication];
    swift_unknownObjectRelease();
    v5 = [v4 LanguageCode];
    swift_unknownObjectRelease();
    v6 = *(v0 + 24);
    *(v0 + 24) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_1C2F40798()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1C2F406CC();
    v4 = [v3 source];

    v5 = *(v0 + 32);
    *(v0 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void *sub_1C2F40810()
{
  v10 = sub_1C2F76A1C();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2F769FC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C2F7651C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C2F0CA5C();
  v9[0] = "$__lazy_storage_$_eventSource";
  v9[1] = v6;
  sub_1C2F7650C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C2F41200(&qword_1EC076B78, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B80, &unk_1C2F7BE10);
  sub_1C2F41248(&qword_1EC076B88, &qword_1EC076B80, &unk_1C2F7BE10);
  sub_1C2F76B3C();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  v7 = sub_1C2F76A4C();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v7;
  sub_1C2F761EC();
  return v0;
}

uint64_t sub_1C2F40AB4(void *a1)
{
  v2 = v1;
  v4 = sub_1C2F764EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C2F7651C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1C2F411E0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_6;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  sub_1C2F764FC();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1C2F41200(&qword_1EC076700, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2F41248(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

void sub_1C2F40D78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "send Event to Biome, %@", v5, 0xCu);
    sub_1C2F0C8EC(v6);
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v8 = sub_1C2F40798();
  [v8 sendEvent_];
}

id *CallTranslationBiomeLanguageController.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore38CallTranslationBiomeLanguageController_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CallTranslationBiomeLanguageController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore38CallTranslationBiomeLanguageController_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1C2F40FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_allocWithZone(MEMORY[0x1E698EF68]);
  v8 = sub_1C2F767DC();
  v9 = sub_1C2F766AC();
  v10 = sub_1C2F766AC();
  v11 = [v7 initWithHandles:v8 translationLanguageCode:v9 source:a6 translationToLanguageCode:v10];

  sub_1C2F40AB4(v11);
}

uint64_t type metadata accessor for CallTranslationBiomeLanguageController(uint64_t a1)
{
  result = qword_1EC076B68;
  if (!qword_1EC076B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F4111C(uint64_t a1)
{
  result = sub_1C2F761FC();
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

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F41200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2F41248(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t CallScreeningTranscript.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallScreeningTranscript.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallScreeningTranscript.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CallScreeningTranscript.text.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall CallScreeningTranscript.init(identifier:name:title:text:isAssistant:isRinging:isReasonForCalling:)(CommunicationsUICore::CallScreeningTranscript *__return_ptr retstr, Swift::String identifier, Swift::String_optional name, Swift::String_optional title, Swift::String text, Swift::Bool isAssistant, Swift::Bool isRinging, Swift::Bool isReasonForCalling)
{
  retstr->identifier = identifier;
  retstr->title = title;
  retstr->name = name;
  retstr->text = text;
  retstr->isAssistant = isAssistant;
  retstr->isRinging = isRinging;
  retstr->isReasonForCalling = isReasonForCalling;
}

uint64_t _s20CommunicationsUICore23CallScreeningTranscriptV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v20 = a1[6];
  v21 = a1[7];
  v15 = *(a1 + 66);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v18 = *(a2 + 64);
  v19 = *(a1 + 64);
  v16 = *(a2 + 65);
  v17 = *(a1 + 65);
  v14 = *(a2 + 66);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1C2F76EFC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v6 || v4 != v7) && (sub_1C2F76EFC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v8 || (v3 != v9 || v5 != v8) && (sub_1C2F76EFC() & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (v20 == v10 && v21 == v11)
  {
    result = 0;
    if (v19 != v18)
    {
      return result;
    }

    goto LABEL_25;
  }

  v13 = sub_1C2F76EFC();
  result = 0;
  if ((v13 & 1) != 0 && ((v19 ^ v18) & 1) == 0)
  {
LABEL_25:
    if (((v17 ^ v16) & 1) == 0)
    {
      return v15 ^ v14 ^ 1u;
    }
  }

  return result;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C2F41568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 67))
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

uint64_t sub_1C2F415B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2F4162C()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x656D697465636166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_1C2F4168C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2F42724(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2F416B4(uint64_t a1)
{
  v2 = sub_1C2F41C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F416F0(uint64_t a1)
{
  v2 = sub_1C2F41C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F4172C(uint64_t a1)
{
  v2 = sub_1C2F41C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F41768(uint64_t a1)
{
  v2 = sub_1C2F41C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F417A4(uint64_t a1)
{
  v2 = sub_1C2F41CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F417E0(uint64_t a1)
{
  v2 = sub_1C2F41CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F4181C(uint64_t a1)
{
  v2 = sub_1C2F41CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F41858(uint64_t a1)
{
  v2 = sub_1C2F41CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityLabelStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B90, &qword_1C2F7BEE0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B98, &qword_1C2F7BEE8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BA0, &qword_1C2F7BEF0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BA8, &qword_1C2F7BEF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F41C00();
  sub_1C2F7702C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1C2F41CA8();
      v9 = v21;
      sub_1C2F76E3C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1C2F41C54();
      v9 = v24;
      sub_1C2F76E3C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1C2F41CFC();
    sub_1C2F76E3C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1C2F41C00()
{
  result = qword_1EC076BB0;
  if (!qword_1EC076BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BB0);
  }

  return result;
}

unint64_t sub_1C2F41C54()
{
  result = qword_1EC076BB8;
  if (!qword_1EC076BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BB8);
  }

  return result;
}

unint64_t sub_1C2F41CA8()
{
  result = qword_1EC076BC0;
  if (!qword_1EC076BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BC0);
  }

  return result;
}

unint64_t sub_1C2F41CFC()
{
  result = qword_1EC076BC8;
  if (!qword_1EC076BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BC8);
  }

  return result;
}

uint64_t ActivityLabelStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t ActivityLabelStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BD0, &qword_1C2F7BF00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BD8, &qword_1C2F7BF08);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BE0, &qword_1C2F7BF10);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076BE8, &unk_1C2F7BF18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1C2F41C00();
  v15 = v36;
  sub_1C2F7701C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1C2F76E2C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1C2F2B530();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1C2F76CAC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076810, &qword_1C2F7A880);
      *v24 = &type metadata for ActivityLabelStyle;
      sub_1C2F76DAC();
      sub_1C2F76C9C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1C2F41CA8();
          sub_1C2F76D9C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1C2F41C54();
          v26 = v17;
          sub_1C2F76D9C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1C2F41CFC();
        sub_1C2F76D9C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

unint64_t sub_1C2F42368()
{
  result = qword_1EC076BF0;
  if (!qword_1EC076BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BF0);
  }

  return result;
}

unint64_t sub_1C2F42410()
{
  result = qword_1EC076BF8;
  if (!qword_1EC076BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076BF8);
  }

  return result;
}

unint64_t sub_1C2F42468()
{
  result = qword_1EC076C00;
  if (!qword_1EC076C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C00);
  }

  return result;
}

unint64_t sub_1C2F424C0()
{
  result = qword_1EC076C08;
  if (!qword_1EC076C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C08);
  }

  return result;
}

unint64_t sub_1C2F42518()
{
  result = qword_1EC076C10;
  if (!qword_1EC076C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C10);
  }

  return result;
}

unint64_t sub_1C2F42570()
{
  result = qword_1EC076C18;
  if (!qword_1EC076C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C18);
  }

  return result;
}

unint64_t sub_1C2F425C8()
{
  result = qword_1EC076C20;
  if (!qword_1EC076C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C20);
  }

  return result;
}

unint64_t sub_1C2F42620()
{
  result = qword_1EC076C28;
  if (!qword_1EC076C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C28);
  }

  return result;
}

unint64_t sub_1C2F42678()
{
  result = qword_1EC076C30;
  if (!qword_1EC076C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C30);
  }

  return result;
}

unint64_t sub_1C2F426D0()
{
  result = qword_1EC076C38;
  if (!qword_1EC076C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C38);
  }

  return result;
}

uint64_t sub_1C2F42724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697465636166 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static LanguageDisplayName.inCall(_:in:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C2F7669C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  sub_1C2F75B0C();
  v12 = sub_1C2F7678C();

  if ((v12 & 1) == 0)
  {
    sub_1C2F75B0C();
    v13 = sub_1C2F7678C();

    if ((v13 & 1) == 0)
    {
      return _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a2);
    }
  }

  sub_1C2F7663C();
  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v16 = sub_1C2F766EC();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t static LanguageDisplayName.short(_:in:)()
{
  v0 = sub_1C2F75C6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1C2F75B3C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C2F0A8D8(v6, &unk_1EC076030, qword_1C2F7C380);
    return 0;
  }

  else
  {
    sub_1C2F75B1C();
    (*(v8 + 8))(v6, v7);
    v10 = sub_1C2F75B4C();

    return v10;
  }
}

uint64_t sub_1C2F42CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C48, &qword_1C2F7C3D8);
    v3 = sub_1C2F76C4C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1C2F76F9C();

      sub_1C2F7673C();
      result = sub_1C2F76FDC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1C2F76EFC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C2F42E1C()
{
  v0 = sub_1C2F75C6C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C40, &qword_1C2F7C3D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - v8;
  if (sub_1C2F75B0C() == 0x57545F687ALL && v10 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v12 = sub_1C2F76EFC();

  if (v12)
  {
LABEL_5:
    v11 = 1;
    return v11 & 1;
  }

  sub_1C2F75C7C();
  sub_1C2F75C5C();
  v13 = *(v1 + 8);
  v13(v6, v0);
  v14 = sub_1C2F75BDC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C2F0A8D8(v9, &qword_1EC076C40, &qword_1C2F7C3D0);
    goto LABEL_8;
  }

  v20 = sub_1C2F75B1C();
  v22 = v21;
  (*(v15 + 8))(v9, v14);
  v28 = v20;
  v29 = v22;
  sub_1C2EF66C8();
  v23 = sub_1C2F76AEC();
  v25 = v24;

  if (v23 != 1414414664 || v25 != 0xE400000000000000)
  {
    v26 = sub_1C2F76EFC();

    if (v26)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1C2F75C7C();
    v16 = sub_1C2F75C1C();
    v18 = v17;
    v13(v4, v0);
    v28 = v16;
    v29 = v18;
    v27[0] = 0x2D746E61482DLL;
    v27[1] = 0xE600000000000000;
    sub_1C2EF66C8();
    v11 = sub_1C2F76B1C();

    return v11 & 1;
  }

LABEL_3:

  v11 = 1;
  return v11 & 1;
}

uint64_t sub_1C2F43174()
{
  v0 = sub_1C2F75C6C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C40, &qword_1C2F7C3D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - v8;
  if (sub_1C2F75B0C() == 0x4E435F687ALL && v10 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v12 = sub_1C2F76EFC();

  if (v12)
  {
LABEL_5:
    v11 = 1;
    return v11 & 1;
  }

  sub_1C2F75C7C();
  sub_1C2F75C5C();
  v13 = *(v1 + 8);
  v13(v6, v0);
  v14 = sub_1C2F75BDC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C2F0A8D8(v9, &qword_1EC076C40, &qword_1C2F7C3D0);
    goto LABEL_8;
  }

  v20 = sub_1C2F75B1C();
  v22 = v21;
  (*(v15 + 8))(v9, v14);
  v28 = v20;
  v29 = v22;
  sub_1C2EF66C8();
  v23 = sub_1C2F76AEC();
  v25 = v24;

  if (v23 != 1397637448 || v25 != 0xE400000000000000)
  {
    v26 = sub_1C2F76EFC();

    if (v26)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1C2F75C7C();
    v16 = sub_1C2F75C1C();
    v18 = v17;
    v13(v4, v0);
    v28 = v16;
    v29 = v18;
    v27[0] = 0x2D736E61482DLL;
    v27[1] = 0xE600000000000000;
    sub_1C2EF66C8();
    v11 = sub_1C2F76B1C();

    return v11 & 1;
  }

LABEL_3:

  v11 = 1;
  return v11 & 1;
}

uint64_t _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v48[1] = a2;
  v2 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2F7669C();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v49 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v48 - v9;
  v11 = sub_1C2F75C6C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076040, &qword_1C2F78FF8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v48 - v19;
  sub_1C2F75C7C();
  sub_1C2F75C4C();
  v21 = *(v12 + 8);
  v21(v17, v11);
  v22 = sub_1C2F75BBC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    v24 = &unk_1EC076040;
    v25 = &qword_1C2F78FF8;
    v26 = v20;
LABEL_5:
    sub_1C2F0A8D8(v26, v24, v25);
    return 0;
  }

  v48[0] = sub_1C2F75B1C();
  (*(v23 + 8))(v20, v22);
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  v21(v15, v11);
  v27 = sub_1C2F75B3C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v10, 1, v27) == 1)
  {

    v24 = &unk_1EC076030;
    v25 = qword_1C2F7C380;
    v26 = v10;
    goto LABEL_5;
  }

  v30 = sub_1C2F75B1C();
  v32 = v31;
  (*(v28 + 8))(v10, v27);
  v33 = sub_1C2F42CB4(&unk_1F42B2CB8);
  swift_arrayDestroy();
  v34 = sub_1C2F56A54(v30, v32, v33);

  if (v34)
  {

    if (sub_1C2F42E1C() & 1) != 0 || (sub_1C2F43174())
    {

      v40 = v50;
      sub_1C2F7663C();
      v42 = v52;
      v41 = v53;
      (*(v52 + 16))(v49, v40, v53);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = [objc_opt_self() bundleForClass_];
      sub_1C2F75BFC();
      v45 = sub_1C2F766EC();
      (*(v42 + 8))(v40, v41);
      return v45;
    }

    v37 = sub_1C2F75B6C();
    v38 = sub_1C2F766AC();

    v39 = [v37 localizedStringForRegion:v38 context:3 short:1];
  }

  else
  {
    v35 = sub_1C2F42CB4(&unk_1F42B2CF8);
    swift_arrayDestroy();
    v36 = sub_1C2F56A54(v30, v32, v35);

    if ((v36 & 1) == 0)
    {

      return 0;
    }

    v37 = sub_1C2F75B6C();
    v38 = sub_1C2F766AC();

    v39 = [v37 localizedStringForRegion:v38 context:3 short:0];
  }

  v46 = v39;

  if (!v46)
  {
    return 0;
  }

  v47 = sub_1C2F766CC();

  return v47;
}

uint64_t _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F7669C();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44 - v7;
  v8 = sub_1C2F75C8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = sub_1C2F75C6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - v19;
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  (*(v15 + 8))(v17, v14);
  v21 = sub_1C2F75B3C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_1C2F75B1C();
    (*(v22 + 8))(v20, v21);
    v23 = sub_1C2F75B4C();
    v25 = v24;

    if (v25)
    {
      v51 = v23;
      v52 = v25;
      sub_1C2EF66C8();
      v23 = sub_1C2F76AEC();
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v44 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a2);
    v45 = v28;
    sub_1C2F75BFC();
    v29 = sub_1C2F75B0C();
    v31 = v30;
    (*(v9 + 8))(v13, v8);
    if (v29 == sub_1C2F75B0C() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_1C2F76EFC();

      if ((v33 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1C2F75B0C();
    v34 = sub_1C2F7678C();

    if (v34 & 1) != 0 || (sub_1C2F75B0C(), v35 = sub_1C2F7678C(), , (v35))
    {

      v36 = v48;
      sub_1C2F7663C();
      v38 = v49;
      v37 = v50;
      (*(v49 + 16))(v47, v36, v50);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass_];
      sub_1C2F75BFC();
      v23 = sub_1C2F766EC();
      v27 = v41;
      (*(v38 + 8))(v36, v37);
LABEL_14:

      v42 = v45;
      if (v45)
      {

        v51 = v23;
        v52 = v27;
        MEMORY[0x1C6928D30](10272, 0xE200000000000000);
        MEMORY[0x1C6928D30](v44, v42);

        MEMORY[0x1C6928D30](41, 0xE100000000000000);
        return v51;
      }

LABEL_16:

      return v23;
    }

LABEL_13:
    if (!v27)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1C2F0A8D8(v20, &unk_1EC076030, qword_1C2F7C380);
  return 0;
}

uint64_t sub_1C2F441B8()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBDA78);
  __swift_project_value_buffer(v0, qword_1EDEBDA78);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F44230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1C2F44284()
{
  result = [objc_allocWithZone(type metadata accessor for PhoneLockStateObserver()) init];
  qword_1EDEBCB88 = result;
  return result;
}

id static PhoneLockStateObserver.shared.getter()
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDEBCB88;

  return v0;
}

void static PhoneLockStateObserver.shared.setter(uint64_t a1)
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDEBCB88;
  qword_1EDEBCB88 = a1;
}

uint64_t (*static PhoneLockStateObserver.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1C2F44440@<X0>(void *a1@<X8>)
{
  if (qword_1EDEBCB80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDEBCB88;
  *a1 = qword_1EDEBCB88;

  return v2;
}

void sub_1C2F444CC(id *a1)
{
  v1 = qword_1EDEBCB80;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EDEBCB88;
  qword_1EDEBCB88 = v2;
}

uint64_t PhoneLockStateObserver.isLocked.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *sub_1C2F44654()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  type metadata accessor for DeviceConditions();
  swift_initStaticObject();
  sub_1C2F25CF4();
  sub_1C2F7628C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  swift_allocObject();
  *&v0[v2] = sub_1C2F7629C();
  *&v0[OBJC_IVAR___CUICPhoneLockStateObserver_token] = 0;
  v3 = &v0[OBJC_IVAR___CUICPhoneLockStateObserver_lockStateNotification];
  *v3 = 0xD00000000000002DLL;
  *(v3 + 1) = 0x80000001C2F7DEE0;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v18, sel_init);
  sub_1C2F0CA5C();
  v5 = v4;

  v6 = sub_1C2F76A2C();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_1C2F45A1C;
  v17[5] = v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C2F44230;
  v17[3] = &block_descriptor_7;
  v8 = _Block_copy(v17);

  v9 = sub_1C2F7672C();

  v10 = OBJC_IVAR___CUICPhoneLockStateObserver_token;
  swift_beginAccess();
  v11 = notify_register_dispatch((v9 + 32), &v5[v10], v6, v8);
  swift_endAccess();

  _Block_release(v8);

  if (v11)
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v12 = sub_1C2F761FC();
    __swift_project_value_buffer(v12, qword_1EDEBDA78);
    v13 = sub_1C2F761DC();
    v14 = sub_1C2F769DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_1C2EF2000, v13, v14, "Failed to observe PhoneLockState with status %{public}u", v15, 8u);
      MEMORY[0x1C6929E80](v15, -1, -1);
    }
  }

  return v5;
}

uint64_t sub_1C2F4494C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1C2F768AC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1C2F7688C();

  v7 = sub_1C2F7687C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1C2F06C78(0, 0, v5, &unk_1C2F7C468, v8);
}

uint64_t sub_1C2F44A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C2F7688C();
  v4[7] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F44B08, v6, v5);
}

uint64_t sub_1C2F44B08()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1C2F44BA4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C2F44BA4()
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C2F761FC();
  __swift_project_value_buffer(v0, qword_1EDEBDA78);
  v1 = sub_1C2F761DC();
  v2 = sub_1C2F769EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    type metadata accessor for DeviceConditions();
    swift_initStaticObject();
    sub_1C2F25CF4();
    sub_1C2F7628C();

    *(v3 + 4) = v5;
    _os_log_impl(&dword_1C2EF2000, v1, v2, "updateLockState, send value: %{BOOL}d", v3, 8u);
    MEMORY[0x1C6929E80](v3, -1, -1);
  }

  swift_beginAccess();
  type metadata accessor for DeviceConditions();
  swift_initStaticObject();

  sub_1C2F25CF4();
  sub_1C2F7628C();

  sub_1C2F7627C();
}

Swift::Bool __swiftcall PhoneLockStateObserver.fetchLockState()()
{
  swift_beginAccess();

  sub_1C2F7628C();

  return v1;
}

uint64_t PhoneLockStateObserver.listen_objc(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1C2F768AC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1C2F7688C();
  v11 = v3;

  v12 = sub_1C2F7687C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a1;
  v13[6] = a2;
  v15 = sub_1C2F06F8C(0, 0, v9, &unk_1C2F7C3F0, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C58, &qword_1C2F7C3F8);
  a3[3] = result;
  *a3 = v15;
  return result;
}

uint64_t sub_1C2F44F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C60, qword_1C2F7C400);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  sub_1C2F7688C();
  v6[13] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F45034, v9, v8);
}

uint64_t sub_1C2F45034()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v12 = v0[6];

  v7 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v0[5] = *(v6 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8, MEMORY[0x1E695BFB0]);
  sub_1C2F762FC();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  sub_1C2EF7414(&qword_1EC076C68, &qword_1EC076C60, qword_1C2F7C400, MEMORY[0x1E695BD78]);

  v9 = sub_1C2F7631C();

  (*(v3 + 8))(v1, v2);
  *v12 = v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1C2F451FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2F0AC48;

  return sub_1C2F44F30(a1, v4, v5, v6, v7, v8);
}

uint64_t PhoneLockStateObserver.listen(wantsCurrentValue:with:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C60, qword_1C2F7C400);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR___CUICPhoneLockStateObserver_isLocked;
  swift_beginAccess();
  v14 = *(v3 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8, MEMORY[0x1E695BFB0]);
  sub_1C2F762FC();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_1C2EF7414(&qword_1EC076C68, &qword_1EC076C60, qword_1C2F7C400, MEMORY[0x1E695BD78]);

  v12 = sub_1C2F7631C();

  (*(v7 + 8))(v9, v6);
  return v12;
}

uint64_t sub_1C2F45684(unsigned __int8 *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EDEBDA78);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Spring Board has updated value to: %{BOOL}d", v7, 8u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  return a2(v3);
}

id PhoneLockStateObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CUICPhoneLockStateObserver_token;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2F45954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2F06348;

  return sub_1C2F44F30(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F45A3C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C2F45A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F44A70(a1, v4, v5, v6);
}

uint64_t FTMenuItem.buttonLabel()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076640, &qword_1C2F79E70);
  v2 = sub_1C2F20A98();
  v3 = MEMORY[0x1E6981148];
  v4 = MEMORY[0x1E6981138];

  return MEMORY[0x1EEDDC7A0](sub_1C2F20A88, v0, sub_1C2F20A90, v0, v3, v1, v4, v2);
}

uint64_t FTMenuItem.SymbolConfig.init(name:foreground:background:font:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v14 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x1EEE9AC00](v14);
  (*(v16 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a6 + 16) = sub_1C2F7632C();
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  (*(v19 + 16))(&v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a6 + 24) = sub_1C2F7632C();
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  *(a6 + 48) = a8;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return __swift_destroy_boxed_opaque_existential_1Tm(a3);
}

uint64_t FTMenuItem.SymbolConfig.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FTMenuItem.SecondaryViewPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t FTMenuItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id;
  v4 = sub_1C2F75AEC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C2F45F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1C2F46058(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2F46168(v1, v2);
}

uint64_t sub_1C2F46098()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C2F46168(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (sub_1C2F76EFC() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F462C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*sub_1C2F4633C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F45F2C(v4);
  return sub_1C2F46474;
}

uint64_t (*sub_1C2F46548(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F46480(v4);
  return sub_1C2F46680;
}

uint64_t sub_1C2F466EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return sub_1C2F4F3F0(v5, v6, v7, v8);
}

uint64_t sub_1C2F467C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1C2F4F3F0(*a1, v2, v3, v4);
  return sub_1C2F46908(v1, v2, v3, v4);
}

uint64_t sub_1C2F46820()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v2 = *v1;
  sub_1C2F4F3F0(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

uint64_t sub_1C2F46908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  if (!v12)
  {
    if (!a4)
    {
      v20 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
    sub_1C2F4F468(a1, a2, a3, a4);
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v23 = a4;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = *v9;
  sub_1C2F4F434(v10, v11, v13 & 1);

  v18 = sub_1C2F7639C();
  v19 = v17;
  a3 = v16;
  a2 = v15;
  a1 = v14;
  a4 = v23;
  sub_1C2F4F468(v19, v11, v13, v12);
  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v20 = v9[3];
LABEL_8:
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_1C2F4F468(v10, v11, v13, v20);
}

uint64_t sub_1C2F46B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  sub_1C2F4F3F0(a2, a3, a4, a5);
  return sub_1C2F4F468(v10, v11, v13, v12);
}

uint64_t (*sub_1C2F46BC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4668C(v4);
  return sub_1C2F46CF8;
}

uint64_t sub_1C2F46D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  return sub_1C2F4F4BC(v3 + v4, a2);
}

uint64_t sub_1C2F46E2C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1C2F4F4BC(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();

  return sub_1C2F4F548(v6);
}

uint64_t sub_1C2F46F5C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v3 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  return sub_1C2F4F4BC(v5 + v3, a1);
}

uint64_t sub_1C2F47024(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();

  return sub_1C2F4F548(a1);
}

uint64_t sub_1C2F470F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C2F4F4BC(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  sub_1C2F511A8(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_1C2F471B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F46D04(v4);
  return sub_1C2F472F0;
}

uint64_t (*sub_1C2F473E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4730C(v4);
  return sub_1C2F4751C;
}

uint64_t sub_1C2F4759C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t (*sub_1C2F476C8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F47528(v4);
  return sub_1C2F47800;
}

uint64_t (*sub_1C2F4791C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4781C(v4);
  return sub_1C2F47A54;
}

uint64_t sub_1C2F47AF0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v10 = (v9 + *a3);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *a6 = a5;
  a6[1] = v13;
}

uint64_t sub_1C2F47C24(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

  sub_1C2F75D9C();
}

uint64_t sub_1C2F47D40(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t (*sub_1C2F47E08(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F47A60(v4);
  return sub_1C2F47F40;
}

uint64_t sub_1C2F47F4C()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  return *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss);
}

uint64_t sub_1C2F47FF4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F48190@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v7 = (v6 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t keypath_set_3Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C2F482D4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_1C2F483C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  if (v9)
  {
    if (a2)
    {
      v10 = *v8 == a1 && v9 == a2;
      if (v10 || (sub_1C2F76EFC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v8 = a1;
    v8[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();
}

uint64_t sub_1C2F4854C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

uint64_t (*sub_1C2F485BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F4811C(v4);
  return sub_1C2F486F4;
}

uint64_t sub_1C2F48760@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C2F48854()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  swift_beginAccess();
}

uint64_t sub_1C2F48914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {

      v4 = sub_1C2F763EC();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1C2F48A78(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_1C2F48AE8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F48700(v4);
  return sub_1C2F48C20;
}

uint64_t sub_1C2F48CA0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C2F48D7C(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F48E98(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_1C2F48EF4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F48C2C(v4);
  return sub_1C2F4902C;
}

uint64_t sub_1C2F49098@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v4 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1C2F51128;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1C2EFDE20(v5, v6);
}

uint64_t sub_1C2F491A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1C2F510F0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2EFDE20(v2, v3);
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2EFDE10(v5, v4);
}

uint64_t sub_1C2F49300()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v1 = (v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_1C2EFDE20(*v1, v1[1]);
  return v2;
}

uint64_t sub_1C2F493D4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2EFDE10(a1, a2);
}

uint64_t sub_1C2F494B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1C2EFDE20(a2, a3);
  return sub_1C2EFDE10(v6, v7);
}

uint64_t (*sub_1C2F4953C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F49038(v4);
  return sub_1C2F49674;
}

uint64_t sub_1C2F496E0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v3 = (v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_1C2F20B44(v4, v5, v6);
}

uint64_t sub_1C2F497B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75D9C();
  sub_1C2F2039C(v1, v2, v3);
}

uint64_t sub_1C2F4989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  sub_1C2F20B44(a2, a3, a4);
  return sub_1C2F2039C(v8, v9, v10);
}

uint64_t (*sub_1C2F4993C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F49680(v4);
  return sub_1C2F49A74;
}

void sub_1C2F49A80()
{
  if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) == 1)
  {
    *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F49B98(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();

    if (v3)
    {
      return result;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    if (result)
    {
      return result;
    }
  }

  v5 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView;
  result = swift_beginAccess();
  if (*(v2 + v5))
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *(v2 + v5) = 0;
  }

  return result;
}

uint64_t sub_1C2F49DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id;
  v5 = sub_1C2F75AEC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void static FTMenuItem.addPeopleRow(subtitle:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v5 = sub_1C2F75AEC();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v48 - v12);
  v14 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1C2F7669C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  sub_1C2F7663C();
  (*(v16 + 16))(v19, v21, v15);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v24 = sub_1C2F766EC();
  v49 = v25;
  v50 = v24;
  (*(v16 + 8))(v21, v15);
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v52 = a4;
  v26 = qword_1EDEBCF90;
  v27 = sub_1C2F766AC();
  v28 = [objc_opt_self() imageNamed:v27 inBundle:v26];

  if (v28)
  {
    *v13 = sub_1C2F7644C();
    v29 = type metadata accessor for FTMenuItem.IconType(0);
    swift_storeEnumTagMultiPayload();
    v30 = *(*(v29 - 8) + 56);
    v30(v13, 0, 1, v29);
    sub_1C2F75ADC();
    type metadata accessor for FTMenuItem(0);
    v31 = swift_allocObject();
    v32 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
    *v32 = 0;
    v32[1] = 0;
    v33 = v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
    *v33 = 0u;
    *(v33 + 16) = 0u;
    v34 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
    v30((v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v29);
    *(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    v35 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v35 = 0;
    v35[1] = 0;
    *(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
    *(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
    v36 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
    *v36 = 0;
    v36[1] = 0;
    v37 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
    v37[1] = 0;
    v37[2] = 0;
    *v37 = 0;
    sub_1C2F75DDC();
    v38 = *(v53 + 16);
    v48 = v7;
    v38(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v7, v54);
    v39 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
    v40 = v49;
    *v39 = v50;
    v39[1] = v40;
    sub_1C2F4F468(*v33, *(v33 + 8), *(v33 + 16), *(v33 + 24));
    *v33 = 0u;
    *(v33 + 16) = 0u;
    sub_1C2F4F4BC(v13, v11);
    sub_1C2F4F548(v31 + v34);
    sub_1C2F4F72C(v11, v31 + v34);
    *(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
    *(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
    *(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
    *(v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 1;
    v41 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
    v42 = v52;
    *v41 = v51;
    v41[1] = v42;
    v43 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
    *v43 = nullsub_1;
    v43[1] = 0;
    v44 = (v31 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    swift_beginAccess();
    if (v44[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v48 - 3) = 0;
      *(&v48 - 2) = 0;
      *(&v48 - 4) = v31;
      v56 = v31;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

      sub_1C2F75D9C();
    }

    else
    {
      *v44 = 0;
      v44[1] = 0;
    }

    v46 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
    swift_beginAccess();
    if (*(v31 + v46))
    {
      v47 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v47);
      *(&v48 - 2) = v31;
      *(&v48 - 1) = 0;
      v55 = v31;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
      sub_1C2F75D9C();
    }

    (*(v53 + 8))(v48, v54);
    sub_1C2F4F548(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static FTMenuItem.addViewContactRow(title:iconType:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v45 = a1;
  v46 = a2;
  v6 = sub_1C2F75AEC();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v44 - v15);
  sub_1C2F4F4BC(a3, v14);
  v17 = type metadata accessor for FTMenuItem.IconType(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v14, 1, v17) == 1)
  {
    if (qword_1EDEBCF88 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDEBCF90;
    *v16 = sub_1C2F7647C();
    swift_storeEnumTagMultiPayload();
    if (v19(v14, 1, v17) != 1)
    {
      sub_1C2F4F548(v14);
    }
  }

  else
  {
    sub_1C2F4F79C(v14, v16);
  }

  v21 = *(v18 + 56);
  v21(v16, 0, 1, v17);
  v22 = v49;
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v24 = 0;
  v24[1] = 0;
  v25 = v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v26 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v21((v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v17);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v27 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v27 = 0;
  v27[1] = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v28 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 0;
  sub_1C2F75DDC();
  (*(v50 + 16))(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v22, v51);
  v30 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v31 = v46;
  *v30 = v45;
  v30[1] = v31;
  v32 = *v25;
  v33 = *(v25 + 8);
  v35 = *(v25 + 16);
  v34 = *(v25 + 24);

  sub_1C2F4F468(v32, v33, v35, v34);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  sub_1C2F4F4BC(v16, v11);
  sub_1C2F4F548(v23 + v26);
  sub_1C2F4F72C(v11, v23 + v26);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 1;
  v36 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  v38 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v38 = nullsub_1;
  v38[1] = 0;
  v39 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v39[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v44 - 3) = 0;
    *(&v44 - 2) = 0;
    *(&v44 - 4) = v23;
    v53 = v23;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v39 = 0;
    v39[1] = 0;
  }

  v41 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v23 + v41))
  {
    v42 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v42);
    *(&v44 - 2) = v23;
    *(&v44 - 1) = 0;
    v52 = v23;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  (*(v50 + 8))(v49, v51);
  sub_1C2F4F548(v16);
  return v23;
}

void static FTMenuItem.callRecordingRow(isSessionActive:dismissOnTap:rowAction:stopAction:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a4;
  v86 = a6;
  v83 = a3;
  v84 = a5;
  v82 = a2;
  v7 = sub_1C2F75AEC();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = (&v76 - v12);
  v13 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1C2F7669C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  sub_1C2F7663C();
  v21 = *(v15 + 16);
  v21(v18, v20, v14);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v89 = objc_opt_self();
  v87 = ObjCClassFromMetadata;
  v23 = [v89 bundleForClass_];
  sub_1C2F75BFC();
  v24 = sub_1C2F766EC();
  v26 = v25;
  v88 = *(v15 + 8);
  v88(v20, v14);
  v81 = a1;
  if (a1)
  {
    goto LABEL_2;
  }

  if (qword_1EC075CA8 != -1)
  {
    swift_once();
  }

  v29 = sub_1C2F75FFC();
  v30 = TUTranscriptionAvailabilityForUseCase();
  if (v29)
  {
    if ((v30 - 1) >= 2)
    {
LABEL_2:
      v27 = v21;
      v28 = v87;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if ((v30 - 1) < 2)
  {
LABEL_7:

    sub_1C2F7663C();
    v27 = v21;
    v21(v18, v20, v14);
    v28 = v87;
    v31 = [v89 bundleForClass_];
LABEL_11:
    v32 = v31;
    sub_1C2F75BFC();
    v24 = sub_1C2F766EC();
    v26 = v33;
    v88(v20, v14);
    goto LABEL_12;
  }

  v27 = v21;
  if (!v30)
  {

    sub_1C2F7663C();
    v21(v18, v20, v14);
    v28 = v87;
    v31 = [v89 bundleForClass_];
    goto LABEL_11;
  }

  v28 = v87;
LABEL_12:
  sub_1C2F7663C();
  v27(v18, v20, v14);
  v34 = [v89 bundleForClass_];
  sub_1C2F75BFC();
  v79 = sub_1C2F766EC();
  v78 = v35;
  v88(v20, v14);
  v96 = v24;
  v97 = v26;
  sub_1C2EF66C8();

  v87 = sub_1C2F763AC();
  v88 = v36;
  v38 = v37;
  v89 = v39;
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDEBCF90;
  v41 = sub_1C2F766AC();
  v42 = [objc_opt_self() imageNamed:v41 inBundle:v40];

  if (v42)
  {

    v43 = sub_1C2F7644C();
    v44 = v93;
    *v93 = v43;
    v45 = type metadata accessor for FTMenuItem.IconType(0);
    swift_storeEnumTagMultiPayload();
    v46 = *(*(v45 - 8) + 56);
    v46(v44, 0, 1, v45);
    v47 = v90;
    sub_1C2F75ADC();
    v77 = v38 & 1;
    type metadata accessor for FTMenuItem(0);
    v48 = swift_allocObject();
    v49 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
    *v49 = 0;
    v49[1] = 0;
    v50 = v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
    *v50 = 0u;
    *(v50 + 16) = 0u;
    v51 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
    v46((v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v45);
    *(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
    v52 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v52 = 0;
    v52[1] = 0;
    *(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
    *(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
    v53 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
    *v53 = 0;
    v53[1] = 0;
    v54 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
    v54[1] = 0;
    v54[2] = 0;
    *v54 = 0;
    sub_1C2F75DDC();
    (*(v91 + 16))(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v47, v92);
    v55 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
    v56 = v78;
    *v55 = v79;
    v55[1] = v56;
    v57 = *v50;
    v58 = *(v50 + 8);
    v59 = *(v50 + 16);
    v60 = *(v50 + 24);
    v61 = v89;

    v79 = v38;
    v62 = v38 & 1;
    v63 = v87;
    v64 = v88;
    sub_1C2F4F434(v87, v88, v62);
    sub_1C2F4F468(v57, v58, v59, v60);
    *v50 = v63;
    *(v50 + 8) = v64;
    *(v50 + 16) = v77;
    *(v50 + 24) = v61;
    v65 = v80;
    sub_1C2F4F4BC(v93, v80);
    sub_1C2F4F548(v48 + v51);
    sub_1C2F4F72C(v65, v48 + v51);
    *(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
    *(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v81 & 1;
    v66 = v82 & 1;
    *(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = v82 & 1;
    *(v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = v66;
    v67 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
    v69 = v85;
    v68 = v86;
    *v67 = v83;
    v67[1] = v69;
    v70 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
    v71 = (v48 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
    *v70 = v84;
    v70[1] = v68;
    swift_beginAccess();
    if (v71[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v76 - 3) = 0;
      *(&v76 - 2) = 0;
      *(&v76 - 4) = v48;
      v95 = v48;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

      sub_1C2F75D9C();
    }

    else
    {
      *v71 = 0;
      v71[1] = 0;
    }

    v73 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
    swift_beginAccess();
    v74 = v79;
    if (*(v48 + v73))
    {
      v75 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v75);
      *(&v76 - 2) = v48;
      *(&v76 - 1) = 0;
      v94 = v48;
      sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
      sub_1C2F75D9C();

      sub_1C2F4F4AC(v87, v88, v74 & 1);
    }

    else
    {
      sub_1C2F4F4AC(v87, v88, v79 & 1);
    }

    (*(v91 + 8))(v90, v92);
    sub_1C2F4F548(v93);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static FTMenuItem.tvHandoffRow(id:title:icon:dismissOnTap:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v47 = a3;
  v48 = a7;
  v51 = a6;
  v52 = 0;
  v49 = a5;
  v46 = a2;
  v9 = sub_1C2F75AEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  sub_1C2F4F800(a4, &v44 - v16);
  v18 = type metadata accessor for FTMenuItem.IconType(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v54 = v10;
  v44 = *(v10 + 16);
  v44(v12, a1, v9);
  type metadata accessor for FTMenuItem(0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v21 = 0;
  v21[1] = 0;
  v22 = v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v19((v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v18);
  *(v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v24 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v24 = 0;
  v24[1] = 0;
  *(v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v25 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v26[1] = 0;
  v26[2] = 0;
  *v26 = 0;
  sub_1C2F75DDC();
  v53 = v12;
  v50 = v9;
  v44((v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id), v12, v9);
  v27 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v28 = v47;
  *v27 = v46;
  v27[1] = v28;
  v29 = *v22;
  v30 = *(v22 + 8);
  v32 = *(v22 + 16);
  v31 = *(v22 + 24);

  v33 = v30;
  v34 = v17;
  v35 = v48;
  sub_1C2F4F468(v29, v33, v32, v31);
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v36 = v45;
  sub_1C2F4F4BC(v34, v45);
  sub_1C2F4F548(v20 + v23);
  sub_1C2F4F72C(v36, v20 + v23);
  *(v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = v49;
  *(v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v37 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v37 = v51;
  v37[1] = v35;
  v38 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v38 = nullsub_1;
  v38[1] = 0;
  v39 = (v20 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v39[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v44 - 3) = 0;
    *(&v44 - 2) = 0;
    *(&v44 - 4) = v20;
    v56 = v20;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v39 = 0;
    v39[1] = 0;
  }

  v41 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v20 + v41))
  {
    v42 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v42);
    *(&v44 - 2) = v20;
    *(&v44 - 1) = 0;
    v55 = v20;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  (*(v54 + 8))(v53, v50);
  sub_1C2F4F548(v34);
  return v20;
}

uint64_t static FTMenuItem.liveCaptionsRow(isSessionActive:rowAction:stopAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v75 = a4;
  v76 = a3;
  v74 = a2;
  v80 = a1;
  v5 = sub_1C2F75AEC();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = (&v68 - v10);
  v11 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C2F7669C();
  v71 = v14;
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v84 = 0x80000001C2F7FB80;
  v21 = sub_1C2F7642C();

  v22 = sub_1C2F7641C();

  sub_1C2F7636C();
  sub_1C2F7635C();
  v83 = sub_1C2F7637C();

  v91 = v21;
  v82 = sub_1C2F7632C();
  v91 = v22;
  v81 = sub_1C2F7632C();

  sub_1C2F7663C();
  v23 = *(v15 + 16);
  v23(v18, v20, v14);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass_];
  sub_1C2F75BFC();
  v79 = v13;
  v72 = sub_1C2F766EC();
  v70 = v27;
  v28 = v71;
  v78 = *(v15 + 8);
  v78(v20);
  sub_1C2F7663C();
  v23(v18, v20, v28);
  v29 = [v25 bundleForClass_];
  sub_1C2F75BFC();
  v30 = sub_1C2F766EC();
  v32 = v31;
  (v78)(v20, v28);
  v91 = v30;
  v92 = v32;
  sub_1C2EF66C8();
  v33 = sub_1C2F763AC();
  v78 = v35;
  v79 = v34;
  LODWORD(v71) = v36;
  v69 = v36 & 1;
  v37 = v84;
  v38 = v85;
  *v85 = 0xD000000000000014;
  v38[1] = v37;
  v39 = v81;
  v38[2] = v82;
  v38[3] = v39;
  v38[4] = v83;
  *(v38 + 5) = xmmword_1C2F7C470;
  v40 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v41 = *(*(v40 - 8) + 56);
  v41(v38, 0, 1, v40);

  v42 = v86;
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v43 = swift_allocObject();
  v44 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v44 = 0;
  v44[1] = 0;
  v45 = v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  v68 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v41((v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v40);
  *(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v46 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v46 = 0;
  v46[1] = 0;
  *(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v47 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v48[1] = 0;
  v48[2] = 0;
  *v48 = 0;
  sub_1C2F75DDC();
  (*(v87 + 16))(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v42, v88);
  v49 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v50 = v70;
  *v49 = v72;
  v49[1] = v50;
  v51 = *v45;
  v52 = *(v45 + 8);
  v53 = *(v45 + 16);
  v72 = *(v45 + 24);
  v54 = v78;

  v55 = v79;
  v56 = v69;
  sub_1C2F4F434(v33, v79, v69);
  sub_1C2F4F468(v51, v52, v53, v72);
  v72 = v33;
  *v45 = v33;
  *(v45 + 8) = v55;
  *(v45 + 16) = v56;
  *(v45 + 24) = v54;
  v57 = v73;
  sub_1C2F4F4BC(v38, v73);
  v58 = v68;
  sub_1C2F4F548(v43 + v68);
  sub_1C2F4F72C(v57, v43 + v58);
  *(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v80 & 1;
  *(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 1;
  v59 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  v60 = v76;
  *v59 = v74;
  v59[1] = v60;
  v61 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v62 = (v43 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  v63 = v77;
  *v61 = v75;
  v61[1] = v63;
  swift_beginAccess();
  if (v62[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v68 - 3) = 0;
    *(&v68 - 2) = 0;
    *(&v68 - 4) = v43;
    v90 = v43;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v62 = 0;
    v62[1] = 0;
  }

  v65 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v43 + v65))
  {
    v66 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v66);
    *(&v68 - 2) = v43;
    *(&v68 - 1) = 0;
    v89 = v43;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v72, v79, v71 & 1);

  (*(v87 + 8))(v86, v88);
  sub_1C2F4F548(v85);
  return v43;
}

uint64_t static FTMenuItem.liveTranslationRow(isVideo:)(uint64_t a1)
{
  v1 = a1;
  v80 = 0;
  v2 = sub_1C2F75AEC();
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v91 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v69 - v7;
  v87 = &v69 - v7;
  v9 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2F7669C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  v88 = _s20CommunicationsUICore10FTMenuItemC30liveTranslationDefaultSubtitle7isVideoSSSb_tFZ_0(v1);
  v81 = v19;
  v20 = sub_1C2F7642C();

  v21 = sub_1C2F7640C();

  sub_1C2F7634C();
  sub_1C2F7635C();
  v89 = sub_1C2F7637C();

  v96 = v20;
  v90 = sub_1C2F7632C();
  v96 = v21;
  v22 = sub_1C2F7632C();

  sub_1C2F7663C();
  v23 = *(v13 + 16);
  v79 = v13 + 16;
  v78 = v23;
  v23(v16, v18, v12);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v76 = objc_opt_self();
  v77 = ObjCClassFromMetadata;
  v25 = [v76 bundleForClass_];
  sub_1C2F75BFC();
  v82 = v16;
  v85 = v11;
  v72 = sub_1C2F766EC();
  v71 = v26;
  v27 = *(v13 + 8);
  v83 = v18;
  v84 = v13 + 8;
  v28 = v89;
  v86 = v12;
  v75 = v27;
  v27(v18, v12);
  v96 = v88;
  v97 = v81;
  sub_1C2EF66C8();
  v29 = sub_1C2F763AC();
  v88 = v30;
  v32 = v31;
  v74 = v33;
  v34 = v33 & 1;
  *v8 = 0x74616C736E617274;
  v35 = v90;
  *(v8 + 1) = 0xE900000000000065;
  *(v8 + 2) = v35;
  *(v8 + 3) = v22;
  *(v8 + 4) = v28;
  *(v8 + 40) = xmmword_1C2F7C480;
  v36 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v37 = *(*(v36 - 8) + 56);
  v37(v8, 0, 1, v36);

  v81 = v22;

  v38 = v91;
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v39 = swift_allocObject();
  v40 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v40 = 0;
  v40[1] = 0;
  v41 = v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  v70 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v37((v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v36);
  *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v42 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v42 = 0;
  v42[1] = 0;
  *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v43 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v43 = 0;
  v43[1] = 0;
  v44 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v44[1] = 0;
  v44[2] = 0;
  *v44 = 0;
  sub_1C2F75DDC();
  (*(v92 + 16))(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v38, v93);
  v45 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v46 = v71;
  *v45 = v72;
  v45[1] = v46;
  v47 = *v41;
  v48 = *(v41 + 8);
  v50 = *(v41 + 16);
  v49 = *(v41 + 24);

  v51 = v29;
  v52 = v29;
  v53 = v88;
  sub_1C2F4F434(v52, v88, v34);
  sub_1C2F4F468(v47, v48, v50, v49);
  *v41 = v51;
  *(v41 + 8) = v53;
  *(v41 + 16) = v34;
  *(v41 + 24) = v32;
  v54 = v73;
  sub_1C2F4F4BC(v87, v73);
  v55 = v70;
  sub_1C2F4F548(v39 + v70);
  sub_1C2F4F72C(v54, v39 + v55);
  *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 0;
  *(v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v56 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v56 = nullsub_1;
  v56[1] = 0;
  v57 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v57 = nullsub_1;
  v57[1] = 0;
  v58 = (v39 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v58[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v69 - 3) = 0;
    *(&v69 - 2) = 0;
    *(&v69 - 4) = v39;
    v95 = v39;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v58 = 0;
    v58[1] = 0;
  }

  v60 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v39 + v60))
  {
    v61 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v61);
    *(&v69 - 2) = v39;
    *(&v69 - 1) = 0;
    v94 = v39;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v51, v88, v74 & 1);

  (*(v92 + 8))(v91, v93);
  sub_1C2F4F548(v87);
  v62 = v83;
  sub_1C2F7663C();
  v63 = v86;
  v78(v82, v62, v86);
  v64 = [v76 bundleForClass_];
  sub_1C2F75BFC();
  v65 = sub_1C2F766EC();
  v67 = v66;
  v75(v62, v63);
  sub_1C2F46520(v65, v67);

  return v39;
}

uint64_t static FTMenuItem.holdThisCallRow(rowAction:stopAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v80 = a3;
  v78 = a2;
  v79 = a1;
  v82 = 0;
  v89 = sub_1C2F75AEC();
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v92 = (&v71 - v8);
  v9 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1C2F7669C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v71 - v15;
  v17 = [objc_opt_self() systemOrangeColor];
  v18 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v19 = [v17 resolvedColorWithTraitCollection_];

  v88 = 0x80000001C2F7FC10;
  v20 = sub_1C2F7642C();

  v81 = v19;
  v21 = sub_1C2F7643C();

  sub_1C2F7636C();
  sub_1C2F7635C();
  v86 = sub_1C2F7637C();

  v95 = v20;
  v87 = sub_1C2F7632C();
  v95 = v21;
  v85 = sub_1C2F7632C();

  sub_1C2F7663C();
  v22 = *(v11 + 16);
  v22(v14, v16, v10);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v25 = [v24 bundleForClass_];
  sub_1C2F75BFC();
  v75 = sub_1C2F766EC();
  v73 = v26;
  v27 = *(v11 + 8);
  v27(v16, v10);
  sub_1C2F7663C();
  v22(v14, v16, v10);
  v28 = [v24 bundleForClass_];
  sub_1C2F75BFC();
  v29 = sub_1C2F766EC();
  v31 = v30;
  v27(v16, v10);
  v95 = v29;
  v96 = v31;
  sub_1C2EF66C8();
  v83 = sub_1C2F763AC();
  v84 = v32;
  v34 = v33;
  v74 = v35;
  v72 = v35 & 1;
  v36 = v92;
  v38 = v87;
  v37 = v88;
  *v92 = 0xD000000000000010;
  v36[1] = v37;
  v40 = v85;
  v39 = v86;
  v36[2] = v38;
  v36[3] = v40;
  v36[4] = v39;
  *(v36 + 5) = xmmword_1C2F7C490;
  v41 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v42 = *(*(v41 - 8) + 56);
  v42(v36, 0, 1, v41);

  v43 = v90;
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v44 = swift_allocObject();
  v45 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v45 = 0;
  v45[1] = 0;
  v46 = v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  v71 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v42((v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v41);
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v47 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v47 = 0;
  v47[1] = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v48 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v49[1] = 0;
  v49[2] = 0;
  *v49 = 0;
  sub_1C2F75DDC();
  (*(v91 + 16))(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v43, v89);
  v50 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v51 = v73;
  *v50 = v75;
  v50[1] = v51;
  v52 = *v46;
  v53 = *(v46 + 8);
  v55 = *(v46 + 16);
  v54 = *(v46 + 24);
  v56 = v34;

  v58 = v83;
  v57 = v84;
  v59 = v72;
  sub_1C2F4F434(v83, v84, v72);
  sub_1C2F4F468(v52, v53, v55, v54);
  *v46 = v58;
  *(v46 + 8) = v57;
  *(v46 + 16) = v59;
  *(v46 + 24) = v56;
  v75 = v56;
  v60 = v77;
  v61 = v76;
  sub_1C2F4F4BC(v92, v76);
  v62 = v71;
  sub_1C2F4F548(v44 + v71);
  v63 = v78;
  sub_1C2F4F72C(v61, v44 + v62);
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v64 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v64 = v79;
  v64[1] = v63;
  v65 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v66 = (v44 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v65 = v80;
  v65[1] = v60;
  swift_beginAccess();
  if (v66[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v71 - 3) = 0;
    *(&v71 - 2) = 0;
    *(&v71 - 4) = v44;
    v94 = v44;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v66 = 0;
    v66[1] = 0;
  }

  v68 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v44 + v68))
  {
    v69 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v69);
    *(&v71 - 2) = v44;
    *(&v71 - 1) = 0;
    v93 = v44;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v83, v84, v74 & 1);

  (*(v91 + 8))(v90, v89);
  sub_1C2F4F548(v92);
  return v44;
}

uint64_t static FTMenuItem.deskViewRow()()
{
  v49 = 0;
  v0 = sub_1C2F75AEC();
  v52 = *(v0 - 8);
  v53 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v51 = v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v46 - v5);
  v7 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = sub_1C2F7669C();
  v8 = *(v48 - 8);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v46 - v12;
  v14 = sub_1C2F7642C();

  v15 = sub_1C2F7641C();

  sub_1C2F7636C();
  sub_1C2F7635C();
  v50 = sub_1C2F7637C();

  v56 = v14;
  v16 = sub_1C2F7632C();
  v56 = v15;
  v17 = sub_1C2F7632C();

  sub_1C2F7663C();
  v18 = v48;
  (*(v8 + 16))(v11, v13, v48);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v21 = sub_1C2F766EC();
  v46[0] = v22;
  (*(v8 + 8))(v13, v18);
  *v6 = 0x776569766B736564;
  v6[1] = 0xE800000000000000;
  v6[2] = v16;
  v6[3] = v17;
  v6[4] = v50;
  v23 = type metadata accessor for FTMenuItem.IconType(0);
  v6[5] = 0;
  v6[6] = 0;
  swift_storeEnumTagMultiPayload();
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 0, 1, v23);

  v48 = v16;
  v25 = v6;

  v46[1] = v17;

  v26 = v51;
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v27 = swift_allocObject();
  v28 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v28 = 0;
  v28[1] = 0;
  v29 = v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v30 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v24((v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v23);
  *(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v31 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v31 = 0;
  v31[1] = 0;
  *(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v32 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v33[1] = 0;
  v33[2] = 0;
  *v33 = 0;
  sub_1C2F75DDC();
  (*(v52 + 16))(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v26, v53);
  v34 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v35 = v46[0];
  *v34 = v21;
  v34[1] = v35;
  sub_1C2F4F468(*v29, *(v29 + 8), *(v29 + 16), *(v29 + 24));
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v36 = v25;
  v37 = v25;
  v38 = v47;
  sub_1C2F4F4BC(v37, v47);
  sub_1C2F4F548(v27 + v30);
  sub_1C2F4F72C(v38, v27 + v30);
  *(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v39 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v39 = nullsub_1;
  v39[1] = 0;
  v40 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v40 = nullsub_1;
  v40[1] = 0;
  v41 = (v27 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v41[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v46[-3] = 0;
    v46[-2] = 0;
    v46[-4] = v27;
    v55 = v27;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v41 = 0;
    v41[1] = 0;
  }

  v43 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v27 + v43))
  {
    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44);
    v46[-2] = v27;
    v46[-1] = 0;
    v54 = v27;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
  }

  (*(v52 + 8))(v51, v53);
  sub_1C2F4F548(v36);
  return v27;
}

uint64_t static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v44 = a5;
  v45 = 0;
  v43 = a4;
  v9 = sub_1C2F75AEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  sub_1C2F4F4BC(a3, &v41 - v17);
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v20 = 0;
  v20[1] = 0;
  v21 = v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v23 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  *(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v24 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v24 = 0;
  v24[1] = 0;
  *(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v25 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v26[1] = 0;
  v26[2] = 0;
  *v26 = 0;
  sub_1C2F75DDC();
  v46 = v12;
  v47 = v10;
  v27 = *(v10 + 16);
  v48 = v9;
  v27(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v12, v9);
  v28 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  *v28 = a1;
  v28[1] = a2;
  v30 = *v21;
  v29 = *(v21 + 8);
  v32 = *(v21 + 16);
  v31 = *(v21 + 24);
  v33 = v42;

  sub_1C2F4F468(v30, v29, v32, v31);
  *v21 = 0u;
  *(v21 + 16) = 0u;
  sub_1C2F4F4BC(v18, v16);
  sub_1C2F4F548(v19 + v22);
  sub_1C2F4F72C(v16, v19 + v22);
  *(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = v43;
  *(v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v34 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v34 = v44;
  v34[1] = v33;
  v35 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v35 = nullsub_1;
  v35[1] = 0;
  v36 = (v19 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v36[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v41 - 3) = 0;
    *(&v41 - 2) = 0;
    *(&v41 - 4) = v19;
    v50 = v19;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v36 = 0;
    v36[1] = 0;
  }

  v38 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v19 + v38))
  {
    v39 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v39);
    *(&v41 - 2) = v19;
    *(&v41 - 1) = 0;
    v49 = v19;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  (*(v47 + 8))(v46, v48);
  sub_1C2F4F548(v18);
  return v19;
}

uint64_t static FTMenuItem.routeMenuRow(title:subtitle:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v53 = a2;
  v54 = 0;
  v8 = sub_1C2F75AEC();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v58 = &v48 - v14;
  v63 = a3;
  v64 = a4;
  sub_1C2EF66C8();

  v59 = sub_1C2F763AC();
  v50 = v16;
  v18 = v17;
  v55 = v19;
  v20 = v19 & 1;
  sub_1C2F4F800(a5, v15);
  v21 = type metadata accessor for FTMenuItem.IconType(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v15, 0, 1, v21);
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v24 = 0;
  v24[1] = 0;
  v25 = v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v49 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v22((v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v21);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v26 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v26 = 0;
  v26[1] = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v27 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v28[1] = 0;
  v28[2] = 0;
  *v28 = 0;
  sub_1C2F75DDC();
  v29 = *(v60 + 16);
  v56 = v10;
  v57 = v8;
  v29(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v10, v8);
  v30 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v31 = v53;
  *v30 = v52;
  v30[1] = v31;
  v32 = *v25;
  v33 = *(v25 + 8);
  v35 = *(v25 + 16);
  v34 = *(v25 + 24);

  v36 = v18;

  v37 = v59;
  v38 = v50;
  sub_1C2F4F434(v59, v50, v20);
  sub_1C2F4F468(v32, v33, v35, v34);
  *v25 = v37;
  *(v25 + 8) = v38;
  *(v25 + 16) = v20;
  *(v25 + 24) = v36;
  v39 = v51;
  sub_1C2F4F4BC(v58, v51);
  v40 = v49;
  sub_1C2F4F548(v23 + v49);
  sub_1C2F4F72C(v39, v23 + v40);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v41 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v41 = nullsub_1;
  v41[1] = 0;
  v42 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v42 = nullsub_1;
  v42[1] = 0;
  v43 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v43[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v48 - 3) = 0;
    *(&v48 - 2) = 0;
    *(&v48 - 4) = v23;
    v62 = v23;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v43 = 0;
    v43[1] = 0;
  }

  v45 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v23 + v45))
  {
    v46 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v46);
    *(&v48 - 2) = v23;
    *(&v48 - 1) = 0;
    v61 = v23;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v59, v38, v55 & 1);

  (*(v60 + 8))(v56, v57);
  sub_1C2F4F548(v58);
  return v23;
}

uint64_t sub_1C2F4EF68@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  swift_beginAccess();
  sub_1C2EF66C8();

  result = sub_1C2F763AC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1C2F4F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2F7645C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  swift_getKeyPath();
  v25 = a1;
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
  sub_1C2F75DAC();

  v14 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  swift_beginAccess();
  sub_1C2F4F4BC(a1 + v14, v13);
  v15 = type metadata accessor for FTMenuItem.IconType(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    goto LABEL_5;
  }

  sub_1C2F4F4BC(v13, v11);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C2F51218(v11);
LABEL_5:
    v21 = 0;
    v22 = 1;
    sub_1C2F7633C();
    goto LABEL_6;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v16 = sub_1C2F7646C();
  (*(v5 + 8))(v7, v4);
  v21 = v16;
  v22 = 0;
  swift_retain_n();
  sub_1C2F7633C();

LABEL_6:
  v17 = v23;
  v18 = v24;
  result = sub_1C2F4F548(v13);
  *a2 = v17;
  *(a2 + 8) = v18;
  return result;
}

uint64_t sub_1C2F4F3F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2F4F434(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2F4F434(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2F4F468(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2F4F4AC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2F4F4AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2F4F4BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F4F548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F4F6B4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_1C2F4F72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F4F79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F4F800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s20CommunicationsUICore10FTMenuItemC30liveTranslationDefaultSubtitle7isVideoSSSb_tFZ_0(char a1)
{
  v1 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C2F7669C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  sub_1C2F7663C();
  (*(v3 + 16))(v6, v8, v2);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v11 = sub_1C2F766EC();
  (*(v3 + 8))(v8, v2);
  return v11;
}

uint64_t _s20CommunicationsUICore10FTMenuItemC13splitCallsRow5titleACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v51 = 0;
  v2 = sub_1C2F75AEC();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v45 - v8);
  v10 = sub_1C2F764DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v17 = sub_1C2F7642C();

  sub_1C2F764CC();
  sub_1C2F7636C();
  sub_1C2F7635C();
  v18 = sub_1C2F7637C();

  v58 = v17;
  v19 = sub_1C2F7632C();
  (*(v11 + 16))(v14, v16, v10);
  v20 = sub_1C2F7632C();

  (*(v11 + 8))(v16, v10);
  *v9 = 0xD000000000000019;
  v9[1] = 0x80000001C2F7FE10;
  v9[2] = v19;
  v9[3] = v20;
  v9[4] = v18;
  v21 = type metadata accessor for FTMenuItem.IconType(0);
  v9[5] = 0;
  v9[6] = 0;
  swift_storeEnumTagMultiPayload();
  v22 = *(*(v21 - 8) + 56);
  v22(v9, 0, 1, v21);
  v52 = 0x80000001C2F7FE10;

  v50 = v19;

  v48 = v20;

  v49 = v18;

  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v24 = 0;
  v24[1] = 0;
  v25 = v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v26 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v22((v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v21);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v27 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v27 = 0;
  v27[1] = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v28 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v29[1] = 0;
  v29[2] = 0;
  *v29 = 0;
  sub_1C2F75DDC();
  v30 = *(v54 + 16);
  v53 = v4;
  v30(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v4, v55);
  v31 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v32 = v47;
  *v31 = v46;
  v31[1] = v32;
  v33 = *v25;
  v34 = *(v25 + 8);
  v35 = *(v25 + 16);
  v36 = *(v25 + 24);

  sub_1C2F4F468(v33, v34, v35, v36);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v37 = v45;
  sub_1C2F4F4BC(v9, v45);
  sub_1C2F4F548(v23 + v26);
  sub_1C2F4F72C(v37, v23 + v26);
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 0;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v38 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v38 = nullsub_1;
  v38[1] = 0;
  v39 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  *v39 = nullsub_1;
  v39[1] = 0;
  v40 = (v23 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  swift_beginAccess();
  if (v40[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v45 - 3) = 0;
    *(&v45 - 2) = 0;
    *(&v45 - 4) = v23;
    v57 = v23;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
    *v40 = 0;
    v40[1] = 0;
  }

  v42 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  if (*(v23 + v42))
  {
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    *(&v45 - 2) = v23;
    *(&v45 - 1) = 0;
    v56 = v23;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem, &protocol conformance descriptor for FTMenuItem);
    sub_1C2F75D9C();
  }

  else
  {
  }

  (*(v54 + 8))(v53, v55);
  sub_1C2F4F548(v9);
  return v23;
}

uint64_t _s20CommunicationsUICore10FTMenuItemC24conferenceParticipantRow5title8iconType13endCallActionACSS_AC04IconJ0OSgyyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v7 = sub_1C2F75AEC();
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  sub_1C2F4F4BC(a3, &v35 - v15);
  v38 = sub_1C2F763FC();
  sub_1C2F75ADC();
  type metadata accessor for FTMenuItem(0);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v18 = 0;
  v18[1] = 0;
  v19 = v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v20 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v21 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v21 - 8) + 56))(v17 + v20, 1, 1, v21);
  *(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v22 = (v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v22 = 0;
  v22[1] = 0;
  *(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v23 = (v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v24[1] = 0;
  v24[2] = 0;
  *v24 = 0;
  sub_1C2F75DDC();
  (*(v8 + 16))(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v10, v7);
  v25 = (v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v26 = v37;
  *v25 = a1;
  v25[1] = v26;
  v28 = *v19;
  v27 = *(v19 + 8);
  v30 = *(v19 + 16);
  v29 = *(v19 + 24);

  sub_1C2F4F468(v28, v27, v30, v29);
  *v19 = 0u;
  *(v19 + 16) = 0u;
  sub_1C2F4F4BC(v16, v14);
  sub_1C2F4F548(v17 + v20);
  sub_1C2F4F72C(v14, v17 + v20);
  *(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = 1;
  *(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 1;
  *(v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v31 = (v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction[0]);
  *v31 = nullsub_1;
  v31[1] = 0;
  v32 = (v17 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v33 = v40;
  *v32 = v39;
  v32[1] = v33;

  sub_1C2F4839C(6581829, 0xE300000000000000);
  sub_1C2F48914(v38);
  (*(v36 + 8))(v10, v35);
  sub_1C2F4F548(v16);
  return v17;
}

unint64_t sub_1C2F50568()
{
  result = qword_1EC076C88;
  if (!qword_1EC076C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076C88);
  }

  return result;
}

void sub_1C2F5060C(uint64_t a1)
{
  sub_1C2F75AEC();
  if (v1 <= 0x3F)
  {
    sub_1C2F50E84(319);
    if (v2 <= 0x3F)
    {
      sub_1C2F75DEC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C2F50E84(uint64_t a1)
{
  if (!qword_1EDEBD5A8[0])
  {
    type metadata accessor for FTMenuItem.IconType(255);
    v1 = sub_1C2F76ADC();
    if (!v2)
    {
      atomic_store(v1, qword_1EDEBD5A8);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C2F50EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C2F50F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2F50FEC(uint64_t a1)
{
  result = sub_1C2F75A5C();
  if (v2 <= 0x3F)
  {
    result = sub_1C2F208DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2F5108C()
{
  result = qword_1EC076630;
  if (!qword_1EC076630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC076620, &qword_1C2F79E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076630);
  }

  return result;
}

uint64_t sub_1C2F51128@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C2F511A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F51218(uint64_t a1)
{
  v2 = type metadata accessor for FTMenuItem.IconType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F51344()
{
  v1[2] = v0;
  sub_1C2F7688C();
  v1[3] = sub_1C2F7687C();
  v3 = sub_1C2F7684C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F513DC, v3, v2);
}

uint64_t sub_1C2F513DC()
{
  if ([*(v0[2] + 56) audioCallTranslationEnabled])
  {
    v1 = v0[2];
    v2 = v1[5];
    v3 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
    v8 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1C2F51560;

    return v8(v2, v3);
  }

  else
  {

    v6 = v0[1];
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_1C2F51560(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C2F51688, v4, v3);
}

uint64_t sub_1C2F51688()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C2F516EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v2[7] = swift_task_alloc();
  v4 = sub_1C2F75E3C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = sub_1C2F75C8C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = sub_1C2F7688C();
  v2[16] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v2[17] = v7;
  v2[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2F518EC, v7, v6);
}

uint64_t sub_1C2F518EC()
{
  v1 = *(v0[3] + 56);
  v0[19] = v1;
  if ([v1 audioCallTranslationEnabled])
  {
    v0[20] = sub_1C2F7687C();
    v3 = sub_1C2F7684C();
    v0[21] = v3;
    v0[22] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1C2F51A10, v3, v2);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }
}

uint64_t sub_1C2F51A10()
{
  if ([*(v0 + 152) audioCallTranslationEnabled])
  {
    v1 = *(v0 + 24);
    v2 = v1[5];
    v3 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
    v8 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1C2F51B98;

    return v8(v2, v3);
  }

  else
  {

    *(v0 + 200) = MEMORY[0x1E69E7CC0];
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);

    return MEMORY[0x1EEE6DFA0](sub_1C2F51D2C, v6, v7);
  }
}

uint64_t sub_1C2F51B98(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 192) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1C2F51CC0, v4, v3);
}

uint64_t sub_1C2F51CC0()
{

  v0[25] = v0[24];
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x1EEE6DFA0](sub_1C2F51D2C, v1, v2);
}

uint64_t sub_1C2F51D2C()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v5 + 80);
    *(v0 + 264) = v6;
    *(v0 + 216) = *(v5 + 72);
    v7 = *(v5 + 16);
    *(v0 + 268) = *MEMORY[0x1E6982BD8];
    *(v0 + 272) = *MEMORY[0x1E6982BD0];
    v8 = MEMORY[0x1E69E7CC0];
    *(v0 + 224) = v7;
    *(v0 + 232) = 0;
    v9 = *(v0 + 112);
    v10 = *(v0 + 56);
    *(v0 + 240) = v8;
    *(v0 + 248) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v9, v1 + ((v6 + 32) & ~v6), v4);
    v11 = v3[5];
    v12 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
    v7(v10, v9, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    v20 = (*(v12 + 8) + **(v12 + 8));
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_1C2F51FCC;
    v14 = *(v0 + 88);
    v15 = *(v0 + 56);
    v16 = *(v0 + 16);

    return v20(v14, v16, v15, v11, v12);
  }

  else
  {

    v18 = *(v0 + 8);
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }
}

uint64_t sub_1C2F51FCC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_1C2F0A8D8(v2, &unk_1EC076A90, &qword_1C2F78FF0);
  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1C2F52120, v4, v3);
}

uint64_t sub_1C2F52120()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v3 + 104);
  v4(v1, *(v0 + 268), v2);
  v5 = sub_1C2F75E2C();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5 & 1) != 0 || (v7 = *(v0 + 80), v8 = *(v0 + 64), v4(v7, *(v0 + 272), v8), v9 = sub_1C2F75E2C(), v6(v7, v8), (v9))
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(*(v0 + 32) + 48);
    (*(v0 + 224))(v13, *(v0 + 112), *(v0 + 96));
    (*(v12 + 16))(v13 + v14, v10, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1C2F1C098(0, v16[2] + 1, 1, *(v0 + 240));
    }

    v18 = v16[2];
    v17 = v16[3];
    v19 = v6;
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1C2F1C098((v17 > 1), v18 + 1, 1, v16);
    }

    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 96);
    v24 = *(v0 + 40);
    v23 = *(v0 + 48);
    v19(*(v0 + 88), *(v0 + 64));
    (*(v21 + 8))(v20, v22);
    v16[2] = v18 + 1;
    sub_1C2F52F80(v23, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18);
  }

  else
  {
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    v27 = *(v0 + 96);
    v6(*(v0 + 88), *(v0 + 64));
    (*(v26 + 8))(v25, v27);
    v16 = *(v0 + 240);
  }

  v28 = *(v0 + 232) + 1;
  if (v28 == *(v0 + 208))
  {

    v29 = *(v0 + 8);

    return v29(v16);
  }

  else
  {
    *(v0 + 232) = v28;
    *(v0 + 240) = v16;
    v31 = *(v0 + 224);
    v33 = *(v0 + 104);
    v32 = *(v0 + 112);
    v34 = *(v0 + 96);
    v35 = *(v0 + 56);
    v36 = *(v0 + 24);
    v37 = *(v0 + 200) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 216) * v28;
    *(v0 + 248) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v32, v37, v34);
    v38 = v36[5];
    v39 = v36[6];
    __swift_project_boxed_opaque_existential_1(v36 + 2, v38);
    v31(v35, v32, v34);
    (*(v33 + 56))(v35, 0, 1, v34);
    v44 = (*(v39 + 8) + **(v39 + 8));
    v40 = swift_task_alloc();
    *(v0 + 256) = v40;
    *v40 = v0;
    v40[1] = sub_1C2F51FCC;
    v41 = *(v0 + 88);
    v42 = *(v0 + 56);
    v43 = *(v0 + 16);

    return v44(v41, v43, v42, v38, v39);
  }
}

uint64_t LanguageAssetManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t sub_1C2F52594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC076C90, qword_1C2F7C9E8);
  v4[7] = swift_task_alloc();
  v5 = sub_1C2F75C6C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2F526C8, 0, 0);
}

uint64_t sub_1C2F526C8(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[4];
  sub_1C2F75C7C();
  sub_1C2EF5C98(v3, v2);
  v4 = sub_1C2F75C8C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1C2F0A8D8(v1[6], &unk_1EC076A90, &qword_1C2F78FF0);
    v6 = 1;
  }

  else
  {
    v7 = v1[6];
    sub_1C2F75C7C();
    (*(v5 + 8))(v7, v4);
    v6 = 0;
  }

  (*(v1[9] + 56))(v1[7], v6, 1, v1[8]);
  v13 = (*MEMORY[0x1E6982BF0] + MEMORY[0x1E6982BF0]);
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_1C2F52860;
  v9 = v1[10];
  v10 = v1[7];
  v11 = v1[2];

  return v13(v11, v9, v10);
}

uint64_t sub_1C2F52860()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v7 = *v0;

  sub_1C2F0A8D8(v4, qword_1EC076C90, qword_1C2F7C9E8);
  (*(v2 + 8))(v1, v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1C2F52A10()
{
  v1 = sub_1C2F75C6C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1C2F75C8C();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v5 = (*MEMORY[0x1E6982BC0] + MEMORY[0x1E6982BC0]);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1C2F52B68;

  return v5();
}

uint64_t sub_1C2F52B68(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C2F52C68, 0, 0);
}

uint64_t sub_1C2F52C68()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C2EF671C(0, v2, 0);
    v5 = v19;
    v7 = *(v4 + 16);
    v6 = v4 + 16;
    v8 = v1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v17 = *(v6 + 56);
    v18 = v7;
    do
    {
      v9 = v0[4];
      v10 = v0[2];
      v18(v9, v8, v10);
      sub_1C2F75C1C();
      sub_1C2F75AFC();
      (*(v6 - 8))(v9, v10);
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C2EF671C((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[7];
      v14 = v0[5];
      *(v19 + 16) = v12 + 1;
      (*(v3 + 32))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v8 += v17;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v15 = v0[1];

  return v15(v5);
}

uint64_t sub_1C2F52E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C2F06348;

  return sub_1C2F52594(a1, a2, a3);
}

uint64_t sub_1C2F52EF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F06110;

  return sub_1C2F52A10();
}

uint64_t sub_1C2F52F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LanguageAssetManager.supportedLanguages()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C2F06110;

  return v4();
}

uint64_t dispatch thunk of LanguageAssetManager.supportTranslationLanguages(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C2F53238;

  return v6(a1);
}

uint64_t sub_1C2F5323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C2F06348;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1C2F53380(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F06110;

  return v7(a1, a2);
}

void _Streamed.wrappedValue.getter(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  type metadata accessor for _Streamed.State(0, *(*v2 + 80), *(*v2 + 88), a1);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1C2F535F4(v4 + v5, a2, v7);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t _Streamed.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1C2F54B04(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1C2F535F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(v3 + 16);
  v7 = type metadata accessor for _Streamed.State(0, v6, *(v3 + 24), a3);
  return (*(*(v6 - 8) + 16))(a2, a1 + *(v7 + 40), v6);
}

uint64_t sub_1C2F53688(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v31 - v6;
  v38 = sub_1C2F768CC();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - v8;
  v9 = sub_1C2F7691C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v31 - v11;
  v12 = v1[2];
  v43 = v4;
  v44 = *(v3 + 88);
  v45 = a1;
  v40 = v4;
  v41 = a1;
  type metadata accessor for _Streamed.State(0, v4, v44, v13);
  v36 = v9;
  sub_1C2F765CC();
  sub_1C2F76ADC();
  v14 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v15));
  sub_1C2F5539C(v12 + v14, &v46);
  os_unfair_lock_unlock((v12 + v15));
  result = v46;
  if (v46)
  {
    v17 = v46 + 64;
    v18 = 1 << *(v46 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v46 + 64);
    v21 = (v18 + 63) >> 6;
    v32 = (v5 + 16);
    v33 = v10 + 16;
    v34 = v10;
    v31 = v10 + 8;
    v22 = (v7 + 8);
    v42 = v46;

    v23 = 0;
    v24 = v34;
    for (i = v37; v20; result = (*v22)(i, v38))
    {
      v26 = v23;
      v27 = v42;
LABEL_11:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v35;
      v30 = v36;
      (*(v24 + 16))(v35, *(v27 + 56) + *(v24 + 72) * (v28 | (v26 << 6)), v36);
      (*v32)(v39, v41, v40);
      sub_1C2F768FC();
      (*(v24 + 8))(v29, v30);
    }

    v27 = v42;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v21)
      {
      }

      v20 = *(v17 + 8 * v26);
      ++v23;
      if (v20)
      {
        v23 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void (*_Streamed.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  _Streamed.wrappedValue.getter(v10, v9);
  return sub_1C2F53B84;
}

void sub_1C2F53B84(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1C2F53688(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1C2F53688(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *_Streamed.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1C2F54B84(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void *_Streamed.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1C2F54B84(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t _Streamed.deinit()
{
  sub_1C2F53D7C();

  return v0;
}

void sub_1C2F53D7C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1C2F7691C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v7 = v0[2];
  v21[4] = v2;
  v22 = *(v1 + 88);
  type metadata accessor for _Streamed.State(0, v2, v22, v8);
  sub_1C2F765EC();
  v9 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v10));
  sub_1C2F552E8(v7 + v9, &v23);
  os_unfair_lock_unlock((v7 + v10));
  v11 = 0;
  v12 = v23;
  v14 = v23 + 64;
  v13 = *(v23 + 64);
  v15 = 1 << *(v23 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v21[1] = v4 + 16;
  if ((v16 & v13) != 0)
  {
    do
    {
      v19 = v11;
LABEL_9:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v4 + 16))(v6, *(v12 + 56) + *(v4 + 72) * (v20 | (v19 << 6)), v3);
      sub_1C2F7690C();
      (*(v4 + 8))(v6, v3);
    }

    while (v17);
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v11;
    if (v17)
    {
      v11 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _Streamed.__deallocating_deinit()
{
  sub_1C2F53D7C();

  return swift_deallocClassInstance();
}

uint64_t _Streamed.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = v2;
  v6 = sub_1C2F768CC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = v36 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = TupleTypeMetadata2 - 8;
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v36 - v11;
  v39 = *(v4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v41 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = v36 - v15;
  v16 = sub_1C2F768EC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v36 - v18;
  v20 = sub_1C2F7691C();
  v40 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - v21;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8650], v16);
  sub_1C2F768BC();
  (*(v17 + 8))(v19, v16);
  v36[1] = v5;
  v23 = v5[2];
  v45 = v4;
  v24 = *(v3 + 88);
  v46 = v24;
  v47 = v22;
  type metadata accessor for _Streamed.State(0, v4, v24, v25);
  v26 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  v27 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v27));
  sub_1C2F54D64((v23 + v26), v12);
  os_unfair_lock_unlock((v23 + v27));
  v28 = *v12;
  v29 = v39;
  v30 = &v12[*(v9 + 56)];
  v31 = v37;
  (*(v39 + 32))(v37, v30, v4);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v33[2] = v4;
  v33[3] = v24;
  v33[4] = v32;
  v33[5] = v28;
  sub_1C2F768DC();
  (*(v29 + 16))(v41, v31, v4);
  v34 = v42;
  sub_1C2F768FC();
  (*(v43 + 8))(v34, v44);
  (*(v29 + 8))(v31, v4);
  return (*(v40 + 8))(v22, v20);
}

uint64_t sub_1C2F544F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_1C2F7691C();
  v11 = sub_1C2F76ADC();
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v21 - v13;
  v15 = *a1;
  v16 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v21[0] = a4;
    *a1 = v16;
    v17 = *(v10 - 8);
    (*(v17 + 16))(v14, a2, v10);
    (*(v17 + 56))(v14, 0, 1, v10);
    v21[3] = v15;
    sub_1C2F765EC();
    sub_1C2F765FC();
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = v15;
    v20 = type metadata accessor for _Streamed.State(0, a3, v21[0], v19);
    return (*(*(a3 - 8) + 16))(&a5[v18], a1 + *(v20 + 40), a3);
  }

  return result;
}

uint64_t sub_1C2F546DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 16);

    MEMORY[0x1EEE9AC00](v9);
    type metadata accessor for _Streamed.State(0, a4, a5, v10);
    v11 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
    v12 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v12));
    sub_1C2F552C8(v8 + v11);
    os_unfair_lock_unlock((v8 + v12));
  }

  return result;
}

uint64_t sub_1C2F54800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C2F7691C();
  v4 = sub_1C2F76ADC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = a2;
  sub_1C2F765EC();
  sub_1C2F765BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C2F5491C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for _Streamed.State(0, v12, v13, v13) + 40);
  (*(v9 + 16))(v11, a1 + v14, a3);
  v15 = sub_1C2F7662C();
  result = (*(v9 + 8))(v11, a3);
  v17 = 0;
  if ((v15 & 1) == 0)
  {
    (*(v9 + 24))(a1 + v14, a2, a3);
    v17 = *(a1 + 8);
    sub_1C2F7691C();
  }

  *a5 = v17;
  return result;
}

uint64_t sub_1C2F54A8C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  sub_1C2F7691C();
  sub_1C2F765EC();

  result = sub_1C2F765DC();
  *a3 = v4;
  return result;
}

uint64_t sub_1C2F54B08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1C2F76CCC();
  return sub_1C2F76CBC();
}

void *sub_1C2F54B84(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - v5;
  v9 = type metadata accessor for _Streamed.State(0, v3, *(v7 + 88), v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v4 + 16))(v6, a1, v3);
  sub_1C2F7691C();
  v13 = sub_1C2F7658C();
  *v12 = 0;
  *(v12 + 1) = v13;
  (*(v4 + 32))(&v12[*(v9 + 40)], v6, v3);
  v14 = sub_1C2F54B08(v12, v9);
  (*(v10 + 8))(v12, v9);
  v1[2] = v14;
  return v1;
}

uint64_t sub_1C2F54E24(uint64_t a1)
{
  sub_1C2F7691C();
  result = sub_1C2F765EC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2F54EE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C2F55070(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_1C2F55304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1C2F553BC()
{
  type metadata accessor for AudioAccessoryAssetDownloadService();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E698D420]) init];
  sub_1C2F55470();
  qword_1EC076D98 = v0;
}

uint64_t static AudioAccessoryAssetDownloadService.sharedInstance.getter()
{
  if (qword_1EC075C98 != -1)
  {
    swift_once();
  }
}

void sub_1C2F55470()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v13 = sub_1C2F55B68;
    v14 = v2;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1C2F40688;
    v12 = &block_descriptor_8;
    v3 = _Block_copy(&v9);
    v4 = v1;

    [v4 setInterruptionHandler_];
    _Block_release(v3);

    v5 = *(v0 + 16);
    if (v5)
    {
      v6 = swift_allocObject();
      swift_weakInit();
      v13 = sub_1C2F55B8C;
      v14 = v6;
      v9 = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_1C2F40688;
      v12 = &block_descriptor_12_0;
      v7 = _Block_copy(&v9);
      v8 = v5;

      [v8 setInvalidationHandler_];
      _Block_release(v7);
    }
  }
}

void sub_1C2F55624(uint64_t a1, const char *a2)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBDA78);
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2EF2000, v4, v5, a2, v6, 2u);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    *(Strong + 16) = 0;

    if (v8)
    {
    }
  }
}

void sub_1C2F55744(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EDEBDA78);

  v11 = sub_1C2F761DC();
  v12 = sub_1C2F769DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v13 = 136315394;
    v14 = MEMORY[0x1C6928DD0](a1, MEMORY[0x1E69E6158]);
    v16 = v5;
    v17 = a4;
    v18 = a2;
    v19 = a3;
    v20 = sub_1C2EFAB28(v14, v15, aBlock);

    *(v13 + 4) = v20;
    a3 = v19;
    a2 = v18;
    a4 = v17;
    v5 = v16;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2 & 1;
    _os_log_impl(&dword_1C2EF2000, v11, v12, "AudioAccessoryAssetDownloadService requested to download assets identifiers: %s useCellular: %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1C6929E80](v31, -1, -1);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

  v21 = *(v5 + 16);
  if (v21)
  {
    v22 = *(v5 + 16);
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E698D420]) init];
    v21 = 0;
  }

  v23 = v21;
  v24 = sub_1C2F767DC();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F02584;
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);

  [v22 downloadTranslationAssets:v24 useCellular:a2 & 1 showDownloadCompleteNotification:0 completion:v25];
  _Block_release(v25);

  v26 = *(v5 + 16);
  *(v5 + 16) = v22;
  if (!v26)
  {
    v30 = v22;
    if (!v22)
    {
LABEL_13:

      v28 = v26;
      goto LABEL_14;
    }

LABEL_12:
    sub_1C2F55470();
    goto LABEL_13;
  }

  sub_1C2F55ABC();
  v27 = v22;
  v28 = v26;
  v29 = sub_1C2F76AAC();

  if ((v29 & 1) == 0)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
}

uint64_t AudioAccessoryAssetDownloadService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F55ABC()
{
  result = qword_1EC076DA0;
  if (!qword_1EC076DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076DA0);
  }

  return result;
}

uint64_t CallTranslationTranscript.init(identifier:isTranslating:isLocal:originalText:translatedText:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 4) = a2;
  *(a8 + 5) = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t CallTranslationTranscript.revertedTranscripts()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 32))
  {
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 5) = v3 ^ 1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t CallTranslationTranscript.description.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v18 = *(v0 + 8);
  v19 = *(v0 + 24);

  sub_1C2F76C6C();
  MEMORY[0x1C6928D30](540697705, 0xE400000000000000);
  v5 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v5);

  MEMORY[0x1C6928D30](0xD000000000000011, 0x80000001C2F7FF30);
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1C6928D30](v6, v7);

  MEMORY[0x1C6928D30](0x61636F4C7369202CLL, 0xEB00000000203A6CLL);
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C6928D30](v8, v9);

  MEMORY[0x1C6928D30](0xD000000000000010, 0x80000001C2F7FF50);
  v10 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v10 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1C6928D30](v11, v12);

  MEMORY[0x1C6928D30](0xD000000000000012, 0x80000001C2F7FF70);
  if (v4)
  {
    v13 = v19 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0xE000000000000000;
    v13 = 0;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    v15 = 0x65736C6166;
  }

  else
  {
    v15 = 1702195828;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x1C6928D30](v15, v16);

  return 0;
}

uint64_t CallTranslationTranscript.originalText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CallTranslationTranscript.translatedText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C2F55EF4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C61636F4C7369;
  v4 = 0x6C616E696769726FLL;
  if (v1 != 3)
  {
    v4 = 0x74616C736E617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C736E6172547369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C2F55FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2F567DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2F55FDC(uint64_t a1)
{
  v2 = sub_1C2F56618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F56018(uint64_t a1)
{
  v2 = sub_1C2F56618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CallTranslationTranscript.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DA8, &qword_1C2F7CB10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 4);
  v12 = *(v1 + 5);
  v13 = v7;
  v8 = *(v1 + 8);
  v11[2] = *(v1 + 16);
  v11[3] = v8;
  v11[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F56618();
  sub_1C2F7702C();
  v19 = 0;
  v9 = v14;
  sub_1C2F76EAC();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = 1;
  sub_1C2F76E7C();
  v17 = 2;
  sub_1C2F76E7C();
  v16 = 3;
  sub_1C2F76E6C();
  v15 = 4;
  sub_1C2F76E4C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CallTranslationTranscript.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DB8, &qword_1C2F7CB18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F56618();
  sub_1C2F7701C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = 0;
  v9 = sub_1C2F76E1C();
  v25 = 1;
  v10 = sub_1C2F76DEC();
  v24 = 2;
  v21 = sub_1C2F76DEC();
  v23 = 3;
  v19 = sub_1C2F76DDC();
  v20 = v11;
  v22 = 4;
  v12 = sub_1C2F76DBC();
  v14 = v13;
  HIDWORD(v18) = v10 & 1;
  v21 &= 1u;
  v15 = v12;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 4) = BYTE4(v18);
  *(a2 + 5) = v21;
  v16 = v20;
  *(a2 + 8) = v19;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s20CommunicationsUICore25CallTranslationTranscriptV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0 && ((*(a1 + 5) ^ *(a2 + 5)) & 1) == 0)
  {
    if (v5 = *(a1 + 24), v4 = *(a1 + 32), v7 = *(a2 + 24), v6 = *(a2 + 32), *(a1 + 8) == *(a2 + 8)) && *(a1 + 16) == *(a2 + 16) || (v8 = sub_1C2F76EFC(), result = 0, (v8))
    {
      if (v4)
      {
        if (v6 && (v5 == v7 && v4 == v6 || (sub_1C2F76EFC() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v6)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2F56618()
{
  result = qword_1EC076DB0;
  if (!qword_1EC076DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DB0);
  }

  return result;
}

uint64_t sub_1C2F5666C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1C2F566D8()
{
  result = qword_1EC076DC0;
  if (!qword_1EC076DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DC0);
  }

  return result;
}

unint64_t sub_1C2F56730()
{
  result = qword_1EC076DC8;
  if (!qword_1EC076DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DC8);
  }

  return result;
}

unint64_t sub_1C2F56788()
{
  result = qword_1EC076DD0;
  if (!qword_1EC076DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076DD0);
  }

  return result;
}

uint64_t sub_1C2F567DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C736E6172547369 && a2 == 0xED0000676E697461 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC00000074786554 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616C736E617274 && a2 == 0xEE00747865546465)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C2F569A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C2F56A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C2F76F9C();
  sub_1C2F7673C();
  v6 = sub_1C2F76FDC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C2F76EFC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C2F56B4C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C2F76F9C();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  sub_1C2F7673C();
  v23 = v6;
  sub_1C2F7673C();
  v22 = v8;
  MEMORY[0x1C6929580](v8);
  v9 = sub_1C2F76FDC();
  v10 = a2 + 56;
  v11 = -1 << *(a2 + 32);
  v12 = v9 & ~v11;
  if ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(a2 + 48);
    do
    {
      v15 = v14 + 40 * v12;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *v15 == v4 && *(v15 + 8) == v5;
      if (v19 || (sub_1C2F76EFC() & 1) != 0)
      {
        if (v16 == v23 && v17 == v7)
        {
          if (v22 == v18)
          {
            return 1;
          }
        }

        else if ((sub_1C2F76EFC() & 1) != 0 && ((v22 ^ v18) & 1) == 0)
        {
          return 1;
        }
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return 0;
}

uint64_t BlocklistViewModel.__allocating_init(presentContactPicker:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1C2F56D64;

  return sub_1C2F59D10();
}

uint64_t sub_1C2F56D64(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F56E64, 0, 0);
}

uint64_t sub_1C2F56E64()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[2];
  swift_allocObject();
  v5 = sub_1C2F1AD08(v1, v2, v4, v3, sub_1C2F56F10, 0);
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1C2F56F10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1C2F5B8E0(v4);
}

uint64_t BlocklistViewModel.refreshBlocklistEntries()()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_1C2F56FD4;

  return sub_1C2F59D10();
}

uint64_t sub_1C2F56FD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C2F570D4, 0, 0);
}

uint64_t sub_1C2F570D4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  swift_getKeyPath();
  v0[5] = v3;
  sub_1C2F5C354(&unk_1EC076DE0, type metadata accessor for BlocklistViewModel, &protocol conformance descriptor for BlocklistViewModel);
  sub_1C2F75DAC();

  swift_beginAccess();

  sub_1C2F2958C(v2);

  BlocklistViewModel.unknownEntries.setter(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2F571F0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    LOBYTE(v9) = *(v10 + 32);
    v11 = *(v10 + 16);
    v13[0] = *v10;
    v13[1] = v11;
    v14 = v9;
    sub_1C2F1CF38(v13, v12);
    sub_1C2F57C18(v12, v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C2F57300(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a2[4];
  if (a1[2])
  {
    if (v2)
    {
      goto LABEL_10;
    }
  }

  else if (*(a1[4] + 16))
  {

    if (v2)
    {
      goto LABEL_10;
    }
  }

  else if (v2)
  {
    goto LABEL_10;
  }

  if (*(v3 + 16))
  {
  }

LABEL_10:
  sub_1C2EF66C8();

  v4 = sub_1C2F76B0C();

  return v4 == -1;
}

uint64_t sub_1C2F57410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C2F0AC48;

  return MEMORY[0x1EEDF6240](a5);
}

uint64_t sub_1C2F574B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C2F5C164(a3, v22 - v9);
  v11 = sub_1C2F768AC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C2F5C1D4(v10);
  }

  else
  {
    sub_1C2F7689C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C2F7684C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C2F7672C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1C2F5C1D4(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C2F5C1D4(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C2F5771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C2F06348;

  return MEMORY[0x1EEDF6238](a5);
}

void *sub_1C2F57804(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1C2F579EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2F57AF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E00, &qword_1C2F79BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}