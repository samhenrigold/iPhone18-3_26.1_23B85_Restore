void *sub_1B1AB59AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B1AB5CCC(a1, a2);
  sub_1B1AB5A68(&unk_1F28B8578);
  return v3;
}

void *sub_1B1AB59F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C80, &qword_1B1C35DF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1B1AB5A68(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1B1B04C84(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B1AB5B4C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CA98();

  return v3;
}

uint64_t sub_1B1AB5BB8()
{
  if (qword_1EB761490 != -1)
  {
    swift_once();
  }

  if (byte_1EB772D29 == 1)
  {
    type metadata accessor for TTSAssetUAFStrategy();
    return swift_initStaticObject();
  }

  else
  {
    v1 = sub_1B1C2CB28();
    v2 = NSClassFromString(v1);

    if (v2)
    {
      if (qword_1ED9A9520 != -1)
      {
        swift_once();
      }
    }

    else
    {
      type metadata accessor for TTSAssetStubStrategy();
      return swift_initStaticObject();
    }
  }
}

void *sub_1B1AB5CCC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B1C2CD18())
  {
    result = sub_1B1AB59F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B1C2D508();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1B1C2D578();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1AB5DE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1B1C2D468();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1B1AB5F40(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    type metadata accessor for TTSAsset();
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2738A20](v6, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = sub_1B1AB5F60();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B1AB5F40(v12 > 1, v13 + 1, 1);
      }

      ++v6;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v3 != v6);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AB5F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1B2FD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1AB5F60()
{
  if (qword_1ED9A9840 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9A9728;
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  v1 = OUTLINED_FUNCTION_18_0(v0);

  if (v1)
  {
    type metadata accessor for TTSAssetMAStrategy();
    return swift_initStaticObject();
  }

  if (qword_1ED9A94C8 != -1)
  {
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_18_0(qword_1ED9A94B8);

  if (v3)
  {
    type metadata accessor for TTSAsset();
    if (sub_1B1B34578())
    {
      type metadata accessor for TTSAssetTrialStrategy();
      return swift_initStaticObject();
    }
  }

  else
  {
    if (qword_1EB761310 != -1)
    {
      swift_once();
    }

    v4 = OUTLINED_FUNCTION_18_0(qword_1EB761318);

    if (v4)
    {
      return sub_1B1AB5BB8();
    }

    if (qword_1ED9A4F08 != -1)
    {
      swift_once();
    }

    v5 = OUTLINED_FUNCTION_18_0(qword_1ED9A4F10);

    if (v5)
    {
      type metadata accessor for TTSAssetAdhocStrategy();
      return swift_initStaticObject();
    }

    if (qword_1ED9A9630 != -1)
    {
      OUTLINED_FUNCTION_7_25();
      swift_once();
    }

    v6 = OUTLINED_FUNCTION_18_0(qword_1ED9A9638);

    if (v6)
    {
      type metadata accessor for TTSAssetPreinstalledStrategy();
      return swift_initStaticObject();
    }

    if (qword_1ED9A4EF8 != -1)
    {
      swift_once();
    }

    v7 = OUTLINED_FUNCTION_18_0(qword_1ED9A4F00);

    if (v7)
    {
      type metadata accessor for TTSAssetFactoryInstalledStrategy();
      return swift_initStaticObject();
    }
  }

  type metadata accessor for TTSAssetStubStrategy();
  return swift_initStaticObject();
}

uint64_t sub_1B1AB6238(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622E8, &qword_1B1C37900);
  result = sub_1B1C2D4F8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1B1C2D888();

    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1B1C2D7A8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1B1AB63EC(uint64_t a1, char a2, unint64_t a3)
{
  v158 = a3;
  if (a2)
  {
    LODWORD(v4) = 1;
  }

  else
  {
    LODWORD(v4) = sub_1B1C2D7A8();
  }

  sub_1B1AA0AEC(1, a1);
  v5 = &unk_1B1C36000;
  if (!v178)
  {
    sub_1B1A90C78(&v177, &qword_1EB761DE0, &qword_1B1C352C0);
    v10 = 0;
    goto LABEL_12;
  }

  sub_1B1A9EEE0(&v177, &v179);
  sub_1B1A93378(&v179, &v177);
  if (swift_dynamicCast())
  {
    v6 = v174;
    v7 = v175;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B1C361C0;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_1B1AB6238(v8);
LABEL_10:
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(&v179);
    goto LABEL_12;
  }

  sub_1B1A93378(&v179, &v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if (swift_dynamicCast())
  {
    v9 = sub_1B1ACB6B8(v174);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_0(&v179);
  v10 = MEMORY[0x1E69E7CD0];
LABEL_12:
  sub_1B1AA0AEC(8, a1);
  v167 = v10;
  if (v178)
  {
    sub_1B1A9EEE0(&v177, &v179);
    sub_1B1A93378(&v179, &v177);
    if (swift_dynamicCast())
    {
      v11 = v174;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C40, &unk_1B1C37E60);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B1C361C0;
      *(v12 + 32) = v11;
      sub_1B1ABB3B0(0, 1, v12);

      if (v11 < 3)
      {
        sub_1B1ACBAE8();
        v14 = v13;
        v15 = *(v13 + 16);
        v16 = v15 + 1;
        if (v15 >= *(v13 + 24) >> 1)
        {
          goto LABEL_182;
        }

        goto LABEL_16;
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_21:
      __swift_destroy_boxed_opaque_existential_0(&v179);
    }

    else
    {
      sub_1B1A93378(&v179, &v177);
      if (swift_dynamicCast())
      {
        v17 = v174;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BB0, &qword_1B1C35D48);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1B1C361C0;
        *(v14 + 32) = v17;
        goto LABEL_21;
      }

      sub_1B1A93378(&v179, &v177);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C50, &qword_1B1C362A0);
      if (swift_dynamicCast())
      {
        v22 = a1;
        v23 = *(v174 + 16);
        if (v23)
        {
          v24 = (v174 + 32);
          v14 = MEMORY[0x1E69E7CC0];
          do
          {
            v26 = *v24++;
            v25 = v26;
            if (v26 <= 2)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B1ACBAE8();
                v14 = v28;
              }

              v27 = *(v14 + 16);
              if (v27 >= *(v14 + 24) >> 1)
              {
                sub_1B1ACBAE8();
                v14 = v29;
              }

              *(v14 + 16) = v27 + 1;
              *(v14 + 8 * v27 + 32) = v25;
            }

            --v23;
          }

          while (v23);
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_0(&v179);
        v10 = v167;
        a1 = v22;
        v5 = 0x1B1C36000;
      }

      else
      {
        sub_1B1A93378(&v179, &v177);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(&v179);
          v14 = v174;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v179);
          v14 = MEMORY[0x1E69E7CC0];
        }
      }
    }
  }

  else
  {
    sub_1B1A90C78(&v177, &qword_1EB761DE0, &qword_1B1C352C0);
    v14 = 0;
  }

  sub_1B1AA0AEC(2, a1);
  if (v178)
  {
    sub_1B1A9EEE0(&v177, &v179);
    sub_1B1A93378(&v179, &v177);
    if (swift_dynamicCast())
    {
      v11 = v174;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C40, &unk_1B1C37E60);
      v18 = swift_allocObject();
      *(v18 + 16) = *(v5 + 448);
      *(v18 + 32) = v11;
      sub_1B1ABB3B0(0, 1, v18);

      sub_1B1B0472C();
      v20 = v19;
      v10 = v19[2];
      v16 = v10 + 1;
      if (v10 >= v19[3] >> 1)
      {
LABEL_178:
        sub_1B1B0472C();
        v20 = v148;
      }

      v20[2] = v16;
      v20[v10 + 4] = v11;
      __swift_destroy_boxed_opaque_existential_0(&v179);
      v10 = v167;
    }

    else
    {
      sub_1B1A93378(&v179, &v177);
      type metadata accessor for TTSAssetVoiceGender(0);
      if (swift_dynamicCast())
      {
        v21 = v174;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BB8, &qword_1B1C35D50);
        v20 = swift_allocObject();
        *(v20 + 1) = *(v5 + 448);
        v20[4] = v21;
        __swift_destroy_boxed_opaque_existential_0(&v179);
      }

      else
      {
        sub_1B1A93378(&v179, &v177);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C50, &qword_1B1C362A0);
        if (swift_dynamicCast())
        {
          v30 = a1;
          v31 = *(v174 + 16);
          if (v31)
          {
            v32 = (v174 + 32);
            v20 = MEMORY[0x1E69E7CC0];
            do
            {
              v34 = *v32++;
              v33 = v34;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B1B0472C();
                v20 = v36;
              }

              v35 = v20[2];
              if (v35 >= v20[3] >> 1)
              {
                sub_1B1B0472C();
                v20 = v37;
              }

              v20[2] = v35 + 1;
              v20[v35 + 4] = v33;
              --v31;
            }

            while (v31);
          }

          else
          {
            v20 = MEMORY[0x1E69E7CC0];
          }

          __swift_destroy_boxed_opaque_existential_0(&v179);
          v10 = v167;
          a1 = v30;
        }

        else
        {
          sub_1B1A93378(&v179, &v177);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762528, &unk_1B1C380E0);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_0(&v179);
            v20 = v174;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&v179);
            v20 = MEMORY[0x1E69E7CC0];
          }
        }
      }
    }
  }

  else
  {
    sub_1B1A90C78(&v177, &qword_1EB761DE0, &qword_1B1C352C0);
    v20 = 0;
  }

  v169 = v20;
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B1AA0AEC(3, a1);
  v165 = v4;
  v171 = v14;
  if (v178)
  {
    sub_1B1A9EEE0(&v177, &v179);
    sub_1B1A93378(&v179, &v177);
    if (swift_dynamicCast())
    {
      v38 = v174;
      v39 = v175;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1B1C361C0;
      *(v40 + 32) = v38;
      *(v40 + 40) = v39;
      v168 = v40;
LABEL_65:
      __swift_destroy_boxed_opaque_existential_0(&v179);
      goto LABEL_66;
    }

    sub_1B1A93378(&v179, &v177);
    sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
    if (swift_dynamicCast())
    {
      v41 = v174;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1B1C361C0;
      v43 = [v41 string];
      v44 = sub_1B1C2CB58();
      v45 = a1;
      v47 = v46;

      *(v42 + 32) = v44;
      *(v42 + 40) = v47;
      v10 = v167;
      v168 = v42;
      a1 = v45;

      goto LABEL_65;
    }

    sub_1B1A93378(&v179, &v177);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v179);
      v120 = v174;
LABEL_168:
      v168 = v120;
      goto LABEL_66;
    }

    sub_1B1A93378(&v179, &v177);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762678, &qword_1B1C38428);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v179);
      v120 = MEMORY[0x1E69E7CC0];
      goto LABEL_168;
    }

    v121 = v174;
    v122 = sub_1B1A9547C();
    if (v122)
    {
      v123 = v122;
      v172 = a1;
      *&v177 = v5;
      sub_1B1AC9FA8();
      if (v123 < 0)
      {
        __break(1u);
        goto LABEL_184;
      }

      v124 = 0;
      v168 = v177;
      do
      {
        if ((v121 & 0xC000000000000001) != 0)
        {
          v125 = MEMORY[0x1B2738A20](v124, v121);
        }

        else
        {
          v125 = *(v121 + 8 * v124 + 32);
        }

        v126 = v125;
        v127 = [v125 string];
        v128 = sub_1B1C2CB58();
        v4 = v129;

        v130 = v168;
        *&v177 = v168;
        v131 = *(v168 + 16);
        if (v131 >= *(v168 + 24) >> 1)
        {
          sub_1B1AC9FA8();
          v130 = v177;
        }

        ++v124;
        *(v130 + 16) = v131 + 1;
        v168 = v130;
        v132 = v130 + 16 * v131;
        *(v132 + 32) = v128;
        *(v132 + 40) = v4;
        LOBYTE(v4) = v165;
      }

      while (v123 != v124);
      __swift_destroy_boxed_opaque_existential_0(&v179);

      a1 = v172;
    }

    else
    {
LABEL_172:

      __swift_destroy_boxed_opaque_existential_0(&v179);
      v168 = MEMORY[0x1E69E7CC0];
    }

    v10 = v167;
  }

  else
  {
    sub_1B1A90C78(&v177, &qword_1EB761DE0, &qword_1B1C352C0);
    v168 = 0;
  }

LABEL_66:
  sub_1B1AA0AEC(4, a1);
  if (!v178)
  {
    sub_1B1A90C78(&v177, &qword_1EB761DE0, &qword_1B1C352C0);
    v161 = 0;
    v163 = 0;
    v170 = 0;
    goto LABEL_74;
  }

  sub_1B1A9EEE0(&v177, &v179);
  sub_1B1A93378(&v179, &v177);
  if (swift_dynamicCast())
  {
    v48 = v174;
    v49 = v175;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1B1C361C0;
    *(v50 + 32) = v48;
    *(v50 + 40) = v49;
LABEL_72:
    v58 = __swift_destroy_boxed_opaque_existential_0(&v179);
LABEL_73:
    *&v179 = 0x686D75696D657270;
    *(&v179 + 1) = 0xEB00000000686769;
    MEMORY[0x1EEE9AC00](v58);
    v152 = &v179;

    v161 = sub_1B1ABAA5C(sub_1B1ABB394, &v150, v50);
    v170 = 0;
    v163 = v50;

    v10 = v167;
LABEL_74:
    sub_1B1AA0AEC(0, a1);
    if (v180)
    {
      v59 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v179 = v177;
        *&v177 = 45;
        *(&v177 + 1) = 0xE100000000000000;
        v174 = 0;
        v175 = 0xE000000000000000;
        v152 = sub_1B1A8EDAC();
        v153 = v152;
        v150 = v59;
        v151 = v152;
        sub_1B1C2D398();

        v157 = sub_1B1C2CBE8();
        v162 = v60;

LABEL_79:
        sub_1B1AA0AEC(0, a1);
        if (v180)
        {
          sub_1B1A8E474(0, &qword_1ED9A8D88, 0x1E696AE70);
          if (swift_dynamicCast())
          {
            a1 = v177;
          }

          else
          {
            a1 = 0;
          }
        }

        else
        {
          sub_1B1A90C78(&v179, &qword_1EB761DE0, &qword_1B1C352C0);
          a1 = 0;
        }

        v176 = v5;
        v11 = v158;
        v61 = sub_1B1A9547C();
        v16 = 0;
        v172 = v11 & 0xFFFFFFFFFFFFFF8;
        v173 = v11 & 0xC000000000000001;
        v62 = v11 + 32;
        v166 = (v171 + 32);
        v164 = v169 + 4;
        v160 = a1;
        v159 = (v162 | a1) == 0;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                if (v16 == v61)
                {

                  return;
                }

                if (v173)
                {
                  v5 = 45;
                  v14 = 95;
                  v63 = MEMORY[0x1B2738A20](v16, v158);
                }

                else
                {
                  if (v16 >= *(v172 + 16))
                  {
                    goto LABEL_171;
                  }

                  v5 = 45;
                  v14 = 95;
                  v63 = *(v62 + 8 * v16);
                }

                a1 = v63;
                if (__OFADD__(v16++, 1))
                {
                  __break(1u);
LABEL_171:
                  __break(1u);
                  goto LABEL_172;
                }

                if (v10)
                {
                  v11 = sub_1B1ABA04C();
                  v65 = sub_1B1AB7C38(v11, v10);

                  if (v65)
                  {
                    goto LABEL_92;
                  }
                }

                if ((v4 & 1) == 0)
                {
                  break;
                }

LABEL_94:
                v11 = &v176;
                sub_1B1C2D588();
                sub_1B1C2D5C8();
                sub_1B1C2D5D8();
                sub_1B1C2D598();
              }

              v66 = v171;
              if (v171)
              {
                v11 = a1;
                v67 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x130))();
                v68 = *(v66 + 16);
                v69 = v166;
                while (v68)
                {
                  v70 = *v69++;
                  --v68;
                  if (v70 == v67)
                  {
                    goto LABEL_99;
                  }
                }

                goto LABEL_92;
              }

LABEL_99:
              v71 = v169;
              if (v169)
              {
                v11 = a1;
                v72 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
                v73 = v71[2];
                v74 = v164;
                while (v73)
                {
                  v75 = *v74++;
                  --v73;
                  if (v75 == v72)
                  {
                    goto LABEL_103;
                  }
                }

                goto LABEL_92;
              }

LABEL_103:
              v76 = v168;
              if (!v168 || (v77 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16), v78 = sub_1B1ABB3B0(7, 1, v77), v79 = *(v77 + 144), v11 = *(v77 + 152), *&v179 = v79, *(&v179 + 1) = v11, MEMORY[0x1EEE9AC00](v78), v152 = &v179, , v80 = v76, v81 = v170, v82 = sub_1B1ABAA5C(sub_1B1ABB394, &v150, v80), v170 = v81, , v82))
              {
                v83 = v163;
                if (!v163)
                {
                  break;
                }

                v84 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
                v85 = sub_1B1ABB3B0(8, 1, v84);
                v86 = *(v84 + 160);
                v11 = *(v84 + 168);
                *&v179 = v86;
                *(&v179 + 1) = v11;
                MEMORY[0x1EEE9AC00](v85);
                v152 = &v179;

                v87 = v83;
                v88 = v170;
                v89 = sub_1B1ABAA5C(sub_1B1ABAB38, &v150, v87);
                v170 = v88;

                if (v89)
                {
                  break;
                }
              }

              LOBYTE(v4) = v165;
              v10 = v167;
            }

            LODWORD(v4) = v165;
            v10 = v167;
            v90 = MEMORY[0x1E69E6158];
            if (v161)
            {
              break;
            }

            v106 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
            if (v106[2] < 9uLL)
            {
              __break(1u);
LABEL_177:
              __break(1u);
              goto LABEL_178;
            }

            v107 = v106[20] == 0x686D75696D657270 && v106[21] == 0xEB00000000686769;
            if (!v107 && (sub_1B1C2D7A8() & 1) == 0)
            {
              break;
            }

LABEL_92:
          }

          if (v159)
          {
            goto LABEL_94;
          }

          v91 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
          if (v91[2] < 7uLL)
          {
            goto LABEL_177;
          }

          v156 = a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier;
          v93 = v91[16];
          v92 = v91[17];
          *&v179 = v93;
          *(&v179 + 1) = v92;
          *&v177 = 95;
          *(&v177 + 1) = 0xE100000000000000;
          v174 = 45;
          v175 = 0xE100000000000000;
          v15 = sub_1B1A8EDAC();
          v152 = v15;
          v153 = v15;
          v150 = v90;
          v151 = v15;
          v11 = sub_1B1C2D398();
          v95 = v94;

          v96 = HIBYTE(v95) & 0xF;
          if ((v95 & 0x2000000000000000) == 0)
          {
            v96 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (v96)
          {
            if (v162)
            {
              v97 = *(v156 + 16);
              if (v97[2] < 7uLL)
              {
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                sub_1B1ACBAE8();
                v14 = v149;
LABEL_16:
                *(v14 + 16) = v16;
                *(v14 + 8 * v15 + 32) = v11;
                v10 = v167;
                goto LABEL_21;
              }

              v99 = v97[16];
              v98 = v97[17];
              *&v179 = v99;
              *(&v179 + 1) = v98;
              *&v177 = 95;
              *(&v177 + 1) = 0xE100000000000000;
              v5 = 45;
              v174 = 45;
              v175 = 0xE100000000000000;
              v152 = v15;
              v153 = v15;
              v151 = v15;
              v100 = MEMORY[0x1E69E6158];
              v150 = MEMORY[0x1E69E6158];
              *&v179 = sub_1B1C2D398();
              *(&v179 + 1) = v101;
              *&v177 = 45;
              *(&v177 + 1) = 0xE100000000000000;
              v174 = 0;
              v175 = 0xE000000000000000;
              v152 = v15;
              v153 = v15;
              v150 = v100;
              v151 = v15;
              sub_1B1C2D398();

              v102 = sub_1B1C2CBE8();
              v11 = v103;

              if (v157 == v102 && v162 == v11)
              {

                LODWORD(v4) = v165;
              }

              else
              {
                v105 = sub_1B1C2D7A8();

                LODWORD(v4) = v165;
                if ((v105 & 1) == 0)
                {
                  goto LABEL_137;
                }
              }
            }

            if (!v160)
            {
              goto LABEL_136;
            }

            v5 = v156;
            v108 = *(v156 + 16);
            if (v108[2] < 7uLL)
            {
              goto LABEL_180;
            }

            v110 = v108[16];
            v109 = v108[17];
            *&v179 = v110;
            *(&v179 + 1) = v109;
            *&v177 = 95;
            *(&v177 + 1) = 0xE100000000000000;
            v174 = 45;
            v175 = 0xE100000000000000;
            v155 = v160;
            v152 = v15;
            v153 = v15;
            v151 = v15;
            v111 = MEMORY[0x1E69E6158];
            v150 = MEMORY[0x1E69E6158];
            sub_1B1C2D398();
            v11 = v112;
            v154 = sub_1B1C2CB28();

            v113 = *(v5 + 16);
            if (v113[2] < 7uLL)
            {
              goto LABEL_181;
            }

            v115 = v113[16];
            v114 = v113[17];
            *&v179 = v115;
            *(&v179 + 1) = v114;
            *&v177 = 95;
            *(&v177 + 1) = 0xE100000000000000;
            v174 = 45;
            v175 = 0xE100000000000000;
            v152 = v15;
            v153 = v15;
            v150 = v111;
            v151 = v15;
            sub_1B1C2D398();
            v117 = (v116 & 0x1000000000000000) != 0 ? sub_1B1C2CD68() : sub_1B1C2CD78();
            v118 = v117;

            v5 = v155;
            v119 = v154;
            v11 = [v155 numberOfMatchesInString:v154 options:4 range:{0, v118}];

            if (v11)
            {
LABEL_136:
              v10 = v167;
              goto LABEL_94;
            }
          }

LABEL_137:

          v10 = v167;
        }
      }
    }

    else
    {
      sub_1B1A90C78(&v179, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v157 = 0;
    v162 = 0;
    goto LABEL_79;
  }

  sub_1B1A93378(&v179, &v177);
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  if (swift_dynamicCast())
  {
    v51 = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1B1C361C0;
    v52 = [v51 string];
    v53 = sub_1B1C2CB58();
    v54 = v5;
    v55 = a1;
    v57 = v56;

    *(v50 + 32) = v53;
    *(v50 + 40) = v57;
    a1 = v55;
    v5 = v54;

    goto LABEL_72;
  }

  sub_1B1A93378(&v179, &v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if (swift_dynamicCast())
  {
    v58 = __swift_destroy_boxed_opaque_existential_0(&v179);
    v50 = v174;
    goto LABEL_73;
  }

  sub_1B1A93378(&v179, &v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762670, &unk_1B1C38418);
  if (!swift_dynamicCast())
  {
    v58 = __swift_destroy_boxed_opaque_existential_0(&v179);
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  v133 = v174;
  v134 = sub_1B1A9547C();
  if (!v134)
  {

    v58 = __swift_destroy_boxed_opaque_existential_0(&v179);
    v50 = MEMORY[0x1E69E7CC0];
LABEL_175:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  v135 = v134;
  v172 = a1;
  *&v177 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  if ((v135 & 0x8000000000000000) == 0)
  {
    v136 = 0;
    v137 = v177;
    v173 = v133 & 0xC000000000000001;
    v138 = v133;
    do
    {
      if (v173)
      {
        v139 = MEMORY[0x1B2738A20](v136, v133);
      }

      else
      {
        v139 = *(v133 + 8 * v136 + 32);
      }

      v140 = v139;
      v141 = [v139 string];
      v142 = sub_1B1C2CB58();
      v144 = v143;

      v145 = v137;
      *&v177 = v137;
      v146 = *(v137 + 16);
      if (v146 >= *(v137 + 24) >> 1)
      {
        sub_1B1AC9FA8();
        v145 = v177;
      }

      ++v136;
      *(v145 + 16) = v146 + 1;
      v137 = v145;
      v147 = v145 + 16 * v146;
      *(v147 + 32) = v142;
      *(v147 + 40) = v144;
      v133 = v138;
    }

    while (v135 != v136);
    __swift_destroy_boxed_opaque_existential_0(&v179);

    a1 = v172;
    v50 = v137;
    goto LABEL_175;
  }

LABEL_184:
  __break(1u);
}

uint64_t sub_1B1AB7C38(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_1B1C2D888();

  sub_1B1C2CC48();
  v11 = sub_1B1C2D8E8();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_1B1C2D7A8();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

void sub_1B1AB7D70(uint64_t a1)
{
  aBlock[7] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for TTSAssetUAFStrategy();
  sub_1B1AB83A4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v4 = sub_1B1A9547C();
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2738A20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    j = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v22 = MEMORY[0x1B2738A20](0, a1);
      goto LABEL_26;
    }

    v3 = &v6[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
    os_unfair_lock_lock(&v6[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
    v7 = *(v3 + 4);
    os_unfair_lock_unlock(v3);
    if (v7)
    {
      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      v3 = aBlock;
      sub_1B1C2D598();
    }

    else
    {
    }
  }

  a1 = aBlock[0];
  v8 = sub_1B1A9547C();
  if (!v8)
  {

    return;
  }

  v4 = v8;
  v9 = [objc_opt_self() currentProcess];
  v10 = [v9 isManaged];

  if (v10)
  {
    sub_1B1A8E474(0, &qword_1EB762768, 0x1E69C7560);
    v11 = sub_1B1B432F4(0xD000000000000010, 0x80000001B1C4DA60, 0xD000000000000019, 0x80000001B1C4DA80);
    v12 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    OUTLINED_FUNCTION_66();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B1C37D90;
    *(v13 + 32) = v11;
    v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v15 = v11;
    v16 = sub_1B1B47364(0xD00000000000001DLL, 0x80000001B1C4DAA0, v12, v13);
    v17 = v16;
    if (v16)
    {
      aBlock[0] = 0;
      if (![v16 acquireWithError_])
      {
        v19 = aBlock[0];
        v20 = sub_1B1C2C058();

        swift_willThrow();
        goto LABEL_23;
      }

      v18 = aBlock[0];
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_23:
  v21 = sub_1B1A9547C();
  i = [objc_opt_self() sharedManager];
  j = sub_1B1C2CB28();
  if (v21 == 1)
  {
    v3 = (a1 & 0xC000000000000001);
    sub_1B1A9EC44(0, (a1 & 0xC000000000000001) == 0, a1);
    v35 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    v22 = *(a1 + 32);
LABEL_26:
    v23 = v22;
    v24 = *&v22[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v25 = *&v22[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v26 = *&v22[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16];

    sub_1B1B67C04(v24, v25, v26);

    v27 = sub_1B1C2CA78();

    v28 = [i retrieveAssetSet:j usages:v27];

    if (!v28)
    {

      i = 0;
      v17 = v35;
      goto LABEL_41;
    }

    v17 = v35;
LABEL_30:
    i = v28;
    for (j = 0; v4 != j; ++j)
    {
      if (v3)
      {
        v29 = MEMORY[0x1B2738A20](j, a1);
      }

      else
      {
        if (j >= *(a1 + 16))
        {
          goto LABEL_46;
        }

        v29 = *(a1 + 8 * j + 32);
      }

      v30 = v29;
      if (__OFADD__(j, 1))
      {
        goto LABEL_45;
      }

      aBlock[0] = v29;
      sub_1B1B43388(aBlock, a1, i);
    }

    if (v17)
    {
      v31 = swift_allocObject();
      v31[2] = v17;
      aBlock[4] = sub_1B1B480AC;
      aBlock[5] = v31;
      OUTLINED_FUNCTION_10_14();
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_13_1();
      aBlock[2] = v32;
      aBlock[3] = &block_descriptor_94;
      v33 = _Block_copy(aBlock);
      v34 = v17;

      [i invalidateWithQueue:0 completion:v33];

      _Block_release(v33);
LABEL_42:

      return;
    }

LABEL_41:
    [v17 invalidate];

    goto LABEL_42;
  }

  v28 = [i retrieveAssetSet:j usages:0];

  if (v28)
  {
    v3 = (a1 & 0xC000000000000001);
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_1B1AB836C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B1AB83A4()
{
  if (qword_1EB761348 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB761350);
  sub_1B1B68430(&qword_1EB761358, v0);

  os_unfair_lock_unlock(&dword_1EB761350);
}

unsigned __int8 *sub_1B1AB8434()
{

  sub_1B1AB9288();

  v0 = v2[3];
  sub_1B1A90C20(v2, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v0)
  {
    OUTLINED_FUNCTION_64();
  }

  return sub_1B1AB84E0();
}

unsigned __int8 *sub_1B1AB84E0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_72();
  sub_1B1AB9288();

  v6 = OUTLINED_FUNCTION_35_0(v0, v1, &qword_1EB761DE0, &qword_1B1C352C0, v2, v3, v4, v5, v59, v63, v67, v68, v69, v70, v71[0]);
  v10 = sub_1B1AA101C(v6, v7, v8, v9);
  if (v70)
  {
    v17 = OUTLINED_FUNCTION_73_2(v10, v11, v12, MEMORY[0x1E69E6530], v13, v14, v15, v16, v60, v64, v67);
    if (v17)
    {
      sub_1B1A90C20(v71, &qword_1EB761DE0, &qword_1B1C352C0);
      return v60;
    }
  }

  else
  {
    v17 = sub_1B1A90C20(&v67, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v24 = OUTLINED_FUNCTION_35_0(v17, v18, &qword_1EB761DE0, &qword_1B1C352C0, v19, v20, v21, v22, v60, v64, v67, v68, v69, v70, v71[0]);
  v28 = sub_1B1AA101C(v24, v25, v26, v27);
  if (!v70)
  {
    sub_1B1A90C20(v71, &qword_1EB761DE0, &qword_1B1C352C0);
    v45 = &v67;
LABEL_29:
    sub_1B1A90C20(v45, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }

  if ((OUTLINED_FUNCTION_73_2(v28, v29, v30, MEMORY[0x1E69E6158], v31, v32, v33, v34, v61, v65, v67) & 1) == 0)
  {
    v45 = v71;
    goto LABEL_29;
  }

  result = v62;
  v36 = HIBYTE(v66) & 0xF;
  v37 = v62 & 0xFFFFFFFFFFFFLL;
  if ((v66 & 0x2000000000000000) != 0)
  {
    v38 = HIBYTE(v66) & 0xF;
  }

  else
  {
    v38 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    sub_1B1A90C20(v71, &qword_1EB761DE0, &qword_1B1C352C0);

    return 0;
  }

  if ((v66 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v62, v66, 10);
    v23 = v57;
    v56 = v58;
LABEL_81:
    sub_1B1A90C20(v71, &qword_1EB761DE0, &qword_1B1C352C0);

    if ((v56 & 1) == 0)
    {
      return v23;
    }

    return 0;
  }

  if ((v66 & 0x2000000000000000) == 0)
  {
    if ((v62 & 0x1000000000000000) != 0)
    {
      result = ((v66 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v39 = *result;
    if (v39 == 43)
    {
      if (v37 >= 1)
      {
        if (v37 != 1)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v41 & v40)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_3_0();
              if (!v41)
              {
                goto LABEL_79;
              }

              v23 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_16_2();
              if (v41)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_70;
        }

        goto LABEL_79;
      }

      goto LABEL_88;
    }

    if (v39 != 45)
    {
      if (v37)
      {
        v23 = 0;
        if (result)
        {
          while (1)
          {
            v52 = *result - 48;
            if (v52 > 9)
            {
              goto LABEL_79;
            }

            v53 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              goto LABEL_79;
            }

            v23 = v53 + v52;
            if (__OFADD__(v53, v52))
            {
              goto LABEL_79;
            }

            ++result;
            if (!--v37)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_79:
      v23 = 0;
      v44 = 1;
      goto LABEL_80;
    }

    if (v37 >= 1)
    {
      if (v37 != 1)
      {
        v23 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v41 & v40)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v41)
            {
              goto LABEL_79;
            }

            v23 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_16_2();
            if (v41)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_70:
        v44 = 0;
LABEL_80:
        v56 = v44;
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v67 = v62;
  v68 = v66 & 0xFFFFFFFFFFFFFFLL;
  if (v62 != 43)
  {
    if (v62 != 45)
    {
      if (v36)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v41 & v40)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v41)
          {
            break;
          }

          v23 = v55 + v54;
          if (__OFADD__(v55, v54))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v41)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v36)
    {
      if (v36 != 1)
      {
        OUTLINED_FUNCTION_10();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v41 & v40)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v41)
          {
            break;
          }

          v23 = v47 - v46;
          if (__OFSUB__(v47, v46))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v41)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_87;
  }

  if (v36)
  {
    if (v36 != 1)
    {
      OUTLINED_FUNCTION_10();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v41 & v40)
        {
          break;
        }

        OUTLINED_FUNCTION_3_0();
        if (!v41)
        {
          break;
        }

        v23 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v41)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1B1AB888C()
{
  v1 = &v0[OBJC_IVAR____TtC14SiriTTSService21TTSAssetUAFVoiceAsset_lazyName];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService21TTSAssetUAFVoiceAsset_lazyName]);
  result = *(v1 + 2);
  if (result)
  {
    v3 = *(v1 + 1);
LABEL_8:

    os_unfair_lock_unlock(v1);
    return v3;
  }

  if (*(*&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16] + 16) >= 7uLL)
  {
    v18 = sub_1B1A8EDAC();
    v17 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_4();
    v4 = sub_1B1C2D398();
    v6 = v5;
    sub_1B1C2CBE8();
    type metadata accessor for AssistantAsset();
    v7 = [v0 primaryLanguage];
    v8 = sub_1B1C2CB58();
    v10 = v9;

    sub_1B1B65420(v8, v10);

    sub_1B1C2CBE8();

    v11 = sub_1B1C2CDA8();

    if (v11)
    {

      v12 = v4;
      v13 = v6;
    }

    else
    {
      v12 = sub_1B1C2D378();
      v13 = v14;
    }

    v3 = sub_1B1AC8BF0(v4, v6, v12, v13);
    v16 = v15;

    *(v1 + 1) = v3;
    *(v1 + 2) = v16;

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1B1AB8A9C()
{
  OUTLINED_FUNCTION_28_2();
  if (v1 < 9)
  {
    __break(1u);
    goto LABEL_40;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = v2 == 0x746361706D6F63 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_4_16(0x746361706D6F63, 0xE700000000000000) & 1) != 0)
  {
    if (qword_1ED9A97D8 == -1)
    {
LABEL_8:
      v5 = qword_1ED9A9830;
LABEL_9:

      return v5;
    }

LABEL_40:
    OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    goto LABEL_8;
  }

  v7 = v2 == 0x6D75696D657270 && v3 == 0xE700000000000000;
  if (v7 || (OUTLINED_FUNCTION_4_16(0x6D75696D657270, 0xE700000000000000) & 1) != 0)
  {
    if (qword_1ED9A9100 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
    }

    v5 = qword_1ED9A90A8;
    goto LABEL_9;
  }

  v8 = v2 == 0x686D75696D657270 && v3 == 0xEB00000000686769;
  if (v8 || (OUTLINED_FUNCTION_4_16(0x686D75696D657270, 0xEB00000000686769) & 1) != 0)
  {
    if (qword_1ED9A9628 != -1)
    {
      OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
    }

    v5 = qword_1ED9A9598;
    goto LABEL_9;
  }

  v9 = v2 == 1635018082 && v3 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_4_16(1635018082, 0xE400000000000000) & 1) != 0)
  {
    if (qword_1EB7615E0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB7625D8;
    goto LABEL_9;
  }

  v10 = sub_1B1C2D0C8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v11 = qword_1ED9AA668;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v13 = OUTLINED_FUNCTION_54_0(v12);
  *(v13 + 16) = xmmword_1B1C361C0;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1B1AC9204();
  *(v13 + 32) = v2;
  *(v13 + 40) = v3;
  sub_1B1C2C7C8(v10, &dword_1B1A8A000, v11, "Unknown footprint for voice: %@", 31, 2, v13);

  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  OUTLINED_FUNCTION_11_1();
  return sub_1B1ABA9E8();
}

id sub_1B1AB8D40()
{
  OUTLINED_FUNCTION_28_2();
  if (v1 < 8)
  {
    __break(1u);
    goto LABEL_53;
  }

  v2 = OUTLINED_FUNCTION_27_5();
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  v6 = v0 + 7;
  v7 = v4 == v2 && v5 == v6;
  if (v7 || (OUTLINED_FUNCTION_4_16(v2, v6) & 1) != 0)
  {
    if (qword_1ED9A9890 == -1)
    {
LABEL_8:
      v8 = qword_1ED9A9818;
LABEL_9:

      return v8;
    }

LABEL_53:
    swift_once();
    goto LABEL_8;
  }

  v10 = v4 == 0x6E6F6870797267 && v5 == 0xE700000000000000;
  if (v10 || (OUTLINED_FUNCTION_4_16(0x6E6F6870797267, 0xE700000000000000) & 1) != 0)
  {
    if (qword_1ED9A97A8 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A9898;
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_25_3();
  v12 = v4 == v11 && v5 == 0xE600000000000000;
  if (v12 || (OUTLINED_FUNCTION_4_16(v11, 0xE600000000000000) & 1) != 0)
  {
    if (qword_1ED9A9820 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A9828;
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000;
  v14 = v4 == v13 && v5 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_4_16(v13, 0xE800000000000000) & 1) != 0)
  {
    if (qword_1ED9A9698 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A9710;
    goto LABEL_9;
  }

  v15 = OUTLINED_FUNCTION_63();
  v16 = v4 == v15 && v5 == 0xE700000000000000;
  if (v16 || (OUTLINED_FUNCTION_4_16(v15, 0xE700000000000000) & 1) != 0)
  {
    if (qword_1ED9A8D90 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A8D98;
    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_51_2();
  v18 = v7 && v5 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_4_16(v17, 0xE600000000000000) & 1) != 0)
  {
    if (qword_1ED9A97B8 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A97C0;
    goto LABEL_9;
  }

  v19 = OUTLINED_FUNCTION_36_4();
  v20 = v7 && v5 == v0;
  if (v20 || (OUTLINED_FUNCTION_4_16(v19, 0xE90000000000006BLL) & 1) != 0)
  {
    if (qword_1ED9A5280 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A5288;
    goto LABEL_9;
  }

  sub_1B1C2D0C8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v22 = OUTLINED_FUNCTION_54_0(v21);
  *(v22 + 16) = xmmword_1B1C361C0;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1B1AC9204();
  *(v22 + 64) = v23;
  *(v22 + 32) = v4;
  *(v22 + 40) = v5;
  OUTLINED_FUNCTION_39_5(v23, &dword_1B1A8A000, v24, "Unknown asset type for voice: %@");

  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  OUTLINED_FUNCTION_11_1();
  return sub_1B1ABA9E8();
}

uint64_t sub_1B1AB90E4()
{
  OUTLINED_FUNCTION_39_0();
  sub_1B1AB9288();

  if (v8)
  {
    OUTLINED_FUNCTION_16_12();
    if (swift_dynamicCast())
    {
      v0 = v5 == 1701601645 && v6 == 0xE400000000000000;
      if (v0 || (OUTLINED_FUNCTION_3(1701601645, 0xE400000000000000) & 1) != 0)
      {

        return 1;
      }

      v2 = v5 == 0x656C616D6566 && v6 == 0xE600000000000000;
      if (v2 || (OUTLINED_FUNCTION_3(0x656C616D6566, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      if (v5 == 0x6C61727475656ELL && v6 == 0xE700000000000000)
      {

        return 3;
      }

      v4 = OUTLINED_FUNCTION_3(0x6C61727475656ELL, 0xE700000000000000);

      if (v4)
      {
        return 3;
      }
    }
  }

  else
  {
    sub_1B1A90C20(v7, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

id sub_1B1AB923C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

void sub_1B1AB9288()
{
  OUTLINED_FUNCTION_62();
  v2 = v1;
  os_unfair_lock_lock((v0 + 16));
  sub_1B1B2A308((v0 + 24), v2);
  os_unfair_lock_unlock((v0 + 16));
}

void sub_1B1AB92E8()
{
  OUTLINED_FUNCTION_53_0();
  v4 = OUTLINED_FUNCTION_20_5(v2, v3);
  sub_1B1AB2878(v4);
  OUTLINED_FUNCTION_1_14();
  if (v7)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for TTSAssetProperty(0);
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F8, &unk_1B1C38038);
  if (OUTLINED_FUNCTION_17_8(v10))
  {
    sub_1B1AB2878(v0);
    OUTLINED_FUNCTION_23_7();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0((*(*v1 + 56) + 32 * v8));
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_34_3();

    sub_1B1A9EEE0(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_34_3();

    sub_1B1AB540C(v16, v17, v18, v19);
  }
}

unint64_t sub_1B1AB940C()
{
  result = qword_1ED9A99D0;
  if (!qword_1ED9A99D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A99D0);
  }

  return result;
}

uint64_t sub_1B1AB9450()
{

  sub_1B1AB9288();

  if (v2 || (sub_1B1A90C20(&v1, &qword_1EB761DE0, &qword_1B1C352C0), , OUTLINED_FUNCTION_64(), sub_1B1AB9288(), , v2))
  {
    sub_1B1A9EEE0(&v1, v3);
    *&v1 = 0;
    *(&v1 + 1) = 0xE000000000000000;
    MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
    sub_1B1C2D618();
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_1B1A90C20(&v1, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1AB959C(char a1, uint64_t a2)
{
  v85 = swift_allocObject();
  *(v85 + 16) = MEMORY[0x1E69E7CC8];
  v3 = v85 + 16;
  v84 = swift_allocObject();
  *(v84 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v84 + 16);
  v88 = a2;
  v91 = sub_1B1A9547C();
  if (!v91)
  {
    goto LABEL_77;
  }

  v5 = 0;
  v90 = a2 & 0xC000000000000001;
  v86 = a2 + 32;
  v87 = a2 & 0xFFFFFFFFFFFFFF8;
  v89 = (v85 + 16);
  while (1)
  {
    if (v90)
    {
      v6 = MEMORY[0x1B2738A20](v5, v88);
    }

    else
    {
      if (v5 >= *(v87 + 16))
      {
        goto LABEL_84;
      }

      v6 = *(v86 + 8 * v5);
    }

    v7 = v6;
    v8 = __OFADD__(v5, 1);
    v9 = v5 + 1;
    if (v8)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if ((a1 & 1) == 0)
    {
      swift_beginAccess();
      v10 = v7;
      MEMORY[0x1B2738320]();
      v11 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
      {
        OUTLINED_FUNCTION_19_1(v11);
        sub_1B1C2CE98();
      }

      OUTLINED_FUNCTION_72();
      sub_1B1C2CEC8();
      swift_endAccess();
    }

    v93 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x98);
    v93();
    swift_beginAccess();
    v12 = *v3;
    if (*(*v3 + 16) && (OUTLINED_FUNCTION_72(), v13 = sub_1B1A8EB10(), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    swift_endAccess();
    v94 = v12;
    v95 = v9;
    v16 = v15 >> 62 ? sub_1B1C2D468() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v101 = v7;
    if (!v16)
    {
      break;
    }

    v17 = 0;
    v98 = v15;
    v99 = v15 & 0xC000000000000001;
    v96 = v15 & 0xFFFFFFFFFFFFFF8;
    v97 = v16;
    while (1)
    {
      if (v99)
      {
        v18 = MEMORY[0x1B2738A20](v17, v15);
      }

      else
      {
        if (v17 >= *(v96 + 16))
        {
          goto LABEL_79;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v100 = v17 + 1;
      v20 = [v7 primaryLanguage];
      v21 = sub_1B1C2CB58();
      v23 = v22;

      v24 = [v19 primaryLanguage];
      v25 = sub_1B1C2CB58();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {
        break;
      }

      v29 = sub_1B1C2D7A8();

      if (v29)
      {
        goto LABEL_32;
      }

LABEL_43:

      ++v17;
      v15 = v98;
      v7 = v101;
      if (v100 == v97)
      {
        goto LABEL_44;
      }
    }

LABEL_32:
    OUTLINED_FUNCTION_5_32();
    v31 = *(v30 + 144);
    v32 = v31();
    OUTLINED_FUNCTION_5_32();
    v34 = *(v33 + 144);
    v35 = v34();
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v36 = OUTLINED_FUNCTION_13_27();

    if ((v36 & 1) == 0)
    {
      v49 = v31();
      if (qword_1ED9A97D8 != -1)
      {
        swift_once();
      }

      v50 = OUTLINED_FUNCTION_29_13(qword_1ED9A9830);

      if (v50)
      {
        goto LABEL_43;
      }

      v51 = v34();
      v52 = v31;
      v53 = OUTLINED_FUNCTION_13_27();

      if (v53)
      {
        goto LABEL_43;
      }
    }

    OUTLINED_FUNCTION_5_32();
    v38 = *(v37 + 136);
    v39 = v38();
    OUTLINED_FUNCTION_5_32();
    v41 = *(v40 + 136);
    v42 = v41();
    sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
    v43 = OUTLINED_FUNCTION_13_27();

    if ((v43 & 1) == 0)
    {
      v44 = v38();
      if (qword_1ED9A8D90 != -1)
      {
        swift_once();
      }

      v45 = OUTLINED_FUNCTION_29_13(qword_1ED9A8D98);

      if (v45)
      {
        goto LABEL_43;
      }

      v46 = v41();
      v47 = v38;
      v48 = OUTLINED_FUNCTION_13_27();

      if (v48)
      {
        goto LABEL_43;
      }
    }

    type metadata accessor for TTSAsset();
    v68 = v101;
    if (static TTSAsset.isBetterAsset(_:_:)(v19))
    {
      v69 = a1 & 1;
      v70 = v101;
      v71 = v19;
    }

    else
    {
      v70 = OUTLINED_FUNCTION_72();
    }

    sub_1B1AF3310(v70, v71, v85, v69, v84);

    v4 = (v84 + 16);
    v3 = v85 + 16;
    v5 = v95;
LABEL_73:

    if (v5 == v91)
    {
LABEL_77:
      swift_beginAccess();
      v82 = *(v84 + 16);

      return v82;
    }
  }

LABEL_44:

  v55 = (v93)(v54);
  v57 = v56;
  v93();
  if (*(v94 + 16))
  {
    v58 = sub_1B1A8EB10();
    v60 = v59;

    v61 = MEMORY[0x1E69E7CC0];
    if (v60)
    {
      v61 = *(*(v94 + 56) + 8 * v58);
    }
  }

  else
  {

    v61 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C37D90;
  *(inited + 32) = v7;
  v63 = v61 >> 62;
  v3 = v85 + 16;
  if (v61 >> 62)
  {
    v64 = sub_1B1C2D468();
  }

  else
  {
    v64 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v64 + 1;
  if (__OFADD__(v64, 1))
  {
    goto LABEL_81;
  }

  v66 = v7;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v63)
    {
LABEL_60:
      v61 = sub_1B1C2D568();
      v67 = v61 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_61;
    }

LABEL_59:
    sub_1B1C2D468();
    goto LABEL_60;
  }

  if (v63)
  {
    goto LABEL_59;
  }

  v67 = v61 & 0xFFFFFFFFFFFFFF8;
  if (v65 > *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (*(v67 + 16) >= *(v67 + 24) >> 1)
  {
    goto LABEL_82;
  }

  type metadata accessor for TTSAsset();
  swift_arrayInitWithCopy();

  ++*(v67 + 16);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v72 = *v89;
  v102 = *v89;
  v73 = sub_1B1A8EB10();
  if (__OFADD__(v72[2], (v74 & 1) == 0))
  {
    goto LABEL_83;
  }

  v75 = v73;
  v76 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625B0, &qword_1B1C38168);
  if ((sub_1B1C2D628() & 1) == 0)
  {
    goto LABEL_66;
  }

  v77 = sub_1B1A8EB10();
  if ((v76 & 1) == (v78 & 1))
  {
    v75 = v77;
LABEL_66:
    if (v76)
    {
      *(v102[7] + 8 * v75) = v61;

LABEL_70:
      *v89 = v102;
      swift_endAccess();
      v4 = (v84 + 16);
      v5 = v95;
      v68 = v101;
      goto LABEL_73;
    }

    v102[(v75 >> 6) + 8] |= 1 << v75;
    v79 = (v102[6] + 16 * v75);
    *v79 = v55;
    v79[1] = v57;
    *(v102[7] + 8 * v75) = v61;
    v80 = v102[2];
    v8 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (!v8)
    {
      v102[2] = v81;
      goto LABEL_70;
    }

LABEL_85:
    __break(1u);
  }

  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

uint64_t sub_1B1AB9EEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B1AB9F28(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B1A9547C();
    for (i = 0; v3 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2738A20](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if ([v5 locallyAvailable])
      {
      }

      else
      {
        sub_1B1C2D588();
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1B1ABA04C()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages));
  sub_1B1B43F04((v1 + 8), &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

id sub_1B1ABA0AC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t TTSAsset.primaryLanguage.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t TTSAsset.description.getter()
{
  v1 = v0;
  sub_1B1AB940C();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED9A9968;
  v4 = sub_1B1C2D248();

  sub_1B1C2D538();
  if (v4)
  {

    v30 = 0x656372756F736572;
    v5 = [v1 primaryLanguage];
    v6 = sub_1B1C2CB58();
    v8 = v7;

    MEMORY[0x1B27381B0](v6, v8);

    OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_0_34();
    v10 = (*(v9 + 136))();
  }

  else
  {
    OUTLINED_FUNCTION_0_34();
    v17 = (*(v14 + 152))(v15, v16);

    v30 = v17;
    OUTLINED_FUNCTION_3_25();
    v18 = [v1 primaryLanguage];
    v19 = sub_1B1C2CB58();
    v21 = v20;

    MEMORY[0x1B27381B0](v19, v21);

    OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_0_34();
    v23 = (*(v22 + 136))();
    v24 = [v23 description];
    sub_1B1C2CB58();
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_7_22();

    OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_0_34();
    v10 = (*(v25 + 144))();
  }

  v11 = [v10 description];
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_9_27();
  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_0_34();
  v13 = (*(v12 + 128))();
  v26 = [v13 description];
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_9_27();
  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_0_34();
  v28 = (*(v27 + 176))();
  MEMORY[0x1B27381B0](v28);

  return v30;
}

uint64_t sub_1B1ABA598()
{
  v1 = v0 + OBJC_IVAR___TTSAsset____lazy_storage___brand;
  if (*(v0 + OBJC_IVAR___TTSAsset____lazy_storage___brand + 8) != 1)
  {
    return *v1;
  }

  swift_getObjectType();
  result = sub_1B1AC62D8(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_1B1ABA5F0()
{
  OUTLINED_FUNCTION_28_2();
  if (v0 < 8)
  {
    __break(1u);
    goto LABEL_47;
  }

  v1 = OUTLINED_FUNCTION_63();
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v5 = v3 == v1 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_4_16(v1, 0xE700000000000000) & 1) != 0 || ((v6 = OUTLINED_FUNCTION_25_3(), v3 == v6) ? (v7 = v4 == 0xE600000000000000) : (v7 = 0), v7 || (OUTLINED_FUNCTION_4_16(v6, 0xE600000000000000) & 1) != 0 || ((v8 = OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000, v3 == v8) ? (v9 = v4 == 0xE800000000000000) : (v9 = 0), v9 || ((v10 = OUTLINED_FUNCTION_4_16(v8, 0xE800000000000000), v3 == 0x6E6F6870797267) ? (v11 = v4 == 0xE700000000000000) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), (v10 & 1) != 0 || (v12 & 1) != 0 || (OUTLINED_FUNCTION_4_16(0x6E6F6870797267, 0xE700000000000000) & 1) != 0))))
  {
    if (qword_1ED9A9978 == -1)
    {
LABEL_26:
      v13 = qword_1ED9A9980;
LABEL_27:

      return v13;
    }

LABEL_47:
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
    goto LABEL_26;
  }

  v15 = OUTLINED_FUNCTION_27_5();
  v16 = v3 == v15 && v4 == 0x6E6F687079726ELL;
  if (v16 || (OUTLINED_FUNCTION_4_16(v15, 0x6E6F687079726ELL) & 1) != 0)
  {
    if (qword_1ED9A9850 != -1)
    {
      OUTLINED_FUNCTION_22(&qword_1ED9A9850);
    }

    v13 = qword_1ED9A97E0;
    goto LABEL_27;
  }

  v17 = OUTLINED_FUNCTION_51_2();
  v18 = v5 && v4 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_4_16(v17, 0xE600000000000000) & 1) != 0)
  {
    if (qword_1ED9A98D0 != -1)
    {
      OUTLINED_FUNCTION_23_0(&qword_1ED9A98D0);
    }

    v13 = qword_1ED9A98D8;
    goto LABEL_27;
  }

  v19 = v3 == 0x64656E69626D6F63 && v4 == 0xE800000000000000;
  if (v19 || (OUTLINED_FUNCTION_4_16(0x64656E69626D6F63, 0xE800000000000000) & 1) != 0)
  {
    if (qword_1ED9A98B8 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED9A98C0;
    goto LABEL_27;
  }

  v20 = OUTLINED_FUNCTION_36_4();
  v21 = v5 && v4 == 0x6E6F6870797267;
  if (v21 || (OUTLINED_FUNCTION_4_16(v20, 0xE90000000000006BLL) & 1) != 0)
  {
    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
    }

    v13 = qword_1ED9A98B0;
    goto LABEL_27;
  }

  sub_1B1C2D0C8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v23 = OUTLINED_FUNCTION_54_0(v22);
  *(v23 + 16) = xmmword_1B1C361C0;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1B1AC9204();
  *(v23 + 64) = v24;
  *(v23 + 32) = v3;
  *(v23 + 40) = v4;
  OUTLINED_FUNCTION_39_5(v24, &dword_1B1A8A000, v25, "Unknown asset type for voice: %@");

  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v26 = OUTLINED_FUNCTION_11_1();
  return sub_1B1AAFB2C(v26, v27);
}

uint64_t SynthesisPrewarmAction.init(pool:)(uint64_t a1)
{
  v2 = sub_1B1AA2740();

  *(v1 + 16) = v2;
  return v1;
}

id sub_1B1ABA9E8()
{
  OUTLINED_FUNCTION_62();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_72();
  v1 = sub_1B1C2CB28();

  v2 = [v0 initWithString_];

  return v2;
}

BOOL sub_1B1ABAA5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1B1ABAB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B1C2D7A8() & 1;
  }
}

void sub_1B1ABABCC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2738A20](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

void *sub_1B1ABAD6C()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = qword_1ED9A9850;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1ED9A9850);
  }

  v5 = qword_1ED9A97E0;
  *(v1 + 40) = qword_1ED9A97E0;
  v6 = v5;
  v7 = sub_1B1ABB11C(v0, 1u);
  v8 = static TTSAsset.bestAsset(ofTypes:matching:)(v1, v7);

  if (v8)
  {
    OUTLINED_FUNCTION_21_6();
    v10 = (*(v9 + 280))();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1B1ABFFF8();
      v13 = [v11 bundlePath];
      v14 = sub_1B1C2CB58();
      v16 = v15;

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      result = swift_allocObject();
      result[2] = v12;
      result[3] = v14;
      result[4] = v16;
      return result;
    }
  }

  return 0;
}

uint64_t sub_1B1ABAF00(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1ABB2F4(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty);
  v5 = sub_1B1C2CAB8();
  v105 = v5;
  if (v4 != 2)
  {
    v103 = MEMORY[0x1E69E6370];
    v13 = OUTLINED_FUNCTION_90(v5, v6, v7, v8, v9, v10, v11, v12, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, a1 & 1);
    sub_1B1AB51D0(v13, 5);
  }

  v14 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_26_2(v5, v104);
  v16 = *v14;
  v15 = v14[1];
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = *v14 & 0xFFFFFFFFFFFFLL;
  }

  v18 = MEMORY[0x1E69E6158];
  if (v17)
  {
    v103 = MEMORY[0x1E69E6158];
    LOBYTE(v101) = v16;
    v102 = v15;

    v27 = OUTLINED_FUNCTION_90(v19, v20, v21, v22, v23, v24, v25, v26, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    sub_1B1AB51D0(v27, 1);
  }

  v28 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_26_2(v15, &v98);
  v35 = v28[1];
  if (v35)
  {
    v36 = *v28;
    v103 = v18;
    v101 = v36;
    v102 = v35;

    v45 = OUTLINED_FUNCTION_90(v37, v38, v39, v40, v41, v42, v43, v44, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    sub_1B1AB51D0(v45, 0);
  }

  v46 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_57_0(v2 + OBJC_IVAR___SiriTTSSynthesisVoice_type, v29, v30, v31, v32, v33, v34);
  v47 = *(v2 + v46);
  if (v47)
  {
    v48 = SynthesisVoice.VoiceType.description.getter(v47);
    v103 = v18;
    v102 = v49;
    v56 = OUTLINED_FUNCTION_90(v48, v49, v50, v51, v52, v53, v54, v55, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v48);
    sub_1B1AB51D0(v56, 3);
  }

  v57 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_65(v2 + OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0], &v92);
  v65 = *(v2 + v57);
  if (v65)
  {
    v66 = SynthesisVoice.Footprint.description.getter(v65);
    v103 = v18;
    v102 = v67;
    v74 = OUTLINED_FUNCTION_90(v66, v67, v68, v69, v70, v71, v72, v73, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v66);
    sub_1B1AB51D0(v74, 4);
  }

  v75 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_44_1(v2 + OBJC_IVAR___SiriTTSSynthesisVoice_gender, v58, v59, v60, v61, v62, v63, v64, v88);
  v76 = *(v2 + v75);
  switch(v76)
  {
    case 3:
      type metadata accessor for TTSAssetVoiceGender(0);
      v85 = 3;
      goto LABEL_19;
    case 2:
      type metadata accessor for TTSAssetVoiceGender(0);
      v85 = 2;
      goto LABEL_19;
    case 1:
      type metadata accessor for TTSAssetVoiceGender(0);
      v85 = 1;
LABEL_19:
      v103 = v77;
      v86 = OUTLINED_FUNCTION_90(v77, v78, v79, v80, v81, v82, v83, v84, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v85);
      sub_1B1AB51D0(v86, 2);
      break;
  }

  return v105;
}

uint64_t sub_1B1ABB11C(void *a1, unsigned __int8 a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_1B1ABAF00(a2);
  }

  else
  {
    if (a2 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
      inited = swift_initStackObject();
      v8 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C361C0);
      v8[4].n128_u64[0] = MEMORY[0x1E69E6370];
      v8[2].n128_u8[8] = a2 & 1;
    }

    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_19();
    sub_1B1A97A14(v5, v6, &unk_1B1C35CF4);
    v4 = sub_1B1C2CAB8();
  }

  v14 = v4;
  v12 = 0u;
  v13 = 0u;
  sub_1B1AB51D0(&v12, 2);
  *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
  *&v12 = &unk_1F28BA508;
  sub_1B1AB51D0(&v12, 8);
  if (qword_1EB761310 != -1)
  {
    OUTLINED_FUNCTION_6_14(&qword_1EB761310);
  }

  v9 = qword_1EB761318;
  *(&v13 + 1) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *&v12 = v9;
  v10 = v9;
  sub_1B1AB51D0(&v12, 7);
  return v14;
}

uint64_t sub_1B1ABB2F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_107();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_88_0()
{

  JUMPOUT(0x1B27381B0);
}

uint64_t sub_1B1ABB3B8()
{
  OUTLINED_FUNCTION_1_35();
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  return OUTLINED_FUNCTION_0_33() & 1;
}

uint64_t sub_1B1ABB420(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_1(v2 + *a1, a2);
  OUTLINED_FUNCTION_95();
  return sub_1B1A91C70();
}

uint64_t OspreyChainedConfigs.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t OspreyBuiltInConfig.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *TaskOperation.queue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue);
  v2 = v1;
  return v1;
}

uint64_t ObjectPool.deinit()
{

  return v0;
}

uint64_t ObjectPool.__deallocating_deinit()
{
  ObjectPool.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B1ABB5B8(id a1, uint64_t a2)
{
  v5 = v2;
  v6 = a1;
  v7 = v2[10];
  if (v7)
  {
    if (qword_1ED9A4DE0 != -1)
    {
      swift_once();
    }

    a1 = [v7 postNotificationName:qword_1ED9A4DE8 object:0];
  }

  v8 = sub_1B1ABF3B8(a1, a2);
  if (!v8)
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0xD000000000000035;
    *(v11 + 16) = 0x80000001B1C4FDB0;
    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = sub_1B1AAAD2C(v8);
  if (v3)
  {

    return;
  }

  v77 = v10;
  v83[5] = qword_1F28D9340;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v13 = v9;
    v76 = SynthesizingRequestProtocol.disableCompactVoice.getter(ObjectType);

    v4 = v13;
    v75 = SynthesizingRequestProtocol.disableThermalFallback.getter(ObjectType);
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v14 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v14, qword_1ED9A9120);
  v15 = sub_1B1C2C888();
  v16 = sub_1B1C2D0D8();
  v78 = v6;
  if (OUTLINED_FUNCTION_8_21(v16))
  {
    v17 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v83[0] = v72;
    *v17 = 67109890;
    if (qword_1EB761470 != -1)
    {
      OUTLINED_FUNCTION_1_29(&qword_1EB761470);
    }

    v74 = v5;
    *(v17 + 4) = byte_1EB761479;
    *(v17 + 8) = 1024;
    if (qword_1ED9A9590 != -1)
    {
      OUTLINED_FUNCTION_2_27(&qword_1ED9A9590);
    }

    *(v17 + 10) = byte_1ED9A9643;
    *(v17 + 14) = 2080;
    v18 = objc_opt_self();
    v19 = [v18 processInfo];
    [v19 thermalState];

    v20 = NSProcessInfoThermalState.description.getter();
    v22 = sub_1B1A930E4(v20, v21, v83);

    *(v17 + 16) = v22;
    *(v17 + 24) = 1024;
    v23 = [v18 processInfo];
    LODWORD(v19) = [v23 isLowPowerModeEnabled];

    *(v17 + 26) = v19;
    _os_log_impl(&dword_1B1A8A000, v15, v4, "isNaturalPlatform: %{BOOL}d, isNeuralPlatform: %{BOOL}d, thermal level: %s, low power mode: %{BOOL}d", v17, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v5 = v74;
  }

  else
  {
  }

  v24 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_65(&v9[OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime], v83);
  v25 = sub_1B1A9DB98(v77, v75 & 1, v76 & 1, *&v9[v24]);

  sub_1B1ABBEB0(v26);
  v27 = v25[2];
  v28 = v27;
  sub_1B1AA795C(v27);
  if (v7)
  {
    if (qword_1ED9A4EB8 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_1ED9A4EC0 object:v25[2]];
  }

  v29 = v25[2];
  v30 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_65(v29 + OBJC_IVAR___SiriTTSSynthesisVoice_type, v82);
  if (*(v29 + v30) == 5)
  {
    v31 = v29 + OBJC_IVAR___SiriTTSSynthesisVoice_language;
  }

  else
  {
    v31 = &v77[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  }

  OUTLINED_FUNCTION_65(v31, v81);

  if (v5[4])
  {
    if (v5[11])
    {

      sub_1B1AB2758();
      if (v32 == 2 || (v32 & 1) == 0)
      {
      }

      else
      {
        v33 = OUTLINED_FUNCTION_9_21();
        v35 = sub_1B1B6EA30(v33, v34);

        if (v35)
        {

          v36 = v78;
          goto LABEL_42;
        }
      }
    }

    v35 = v5[5];
    if (v35)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v35 = v5[5];
    if (v35)
    {
LABEL_39:

      v37 = OUTLINED_FUNCTION_9_21();
      sub_1B1ABBEE0(v37, v38);
      OUTLINED_FUNCTION_7_17();
      v36 = v78;
LABEL_41:

      goto LABEL_42;
    }
  }

  v35 = v5[6];
  v36 = v78;
  if (v35)
  {

    v39 = OUTLINED_FUNCTION_9_21();
    sub_1B1B6D8C0(v39, v40);
    OUTLINED_FUNCTION_7_17();
    goto LABEL_41;
  }

  v35 = v5[9];
  if (v35)
  {

    v47 = OUTLINED_FUNCTION_9_21();
    sub_1B1B6FF08(v47, v48);
    OUTLINED_FUNCTION_7_17();

LABEL_42:

    v42 = v35;
    sub_1B1ABE964(v41);
    v43 = v35[2];
    v44 = v43;
    sub_1B1AA9764(v43);
    if (v7)
    {
      if (qword_1ED9A4D20 != -1)
      {
        swift_once();
      }

      v45 = qword_1ED9A4D28;
      v46 = v42[2];
      [v7 postNotificationName:v45 object:v46];

      v36 = v78;
    }

    else
    {
    }

    goto LABEL_50;
  }

LABEL_50:
  v49 = v9;

  v50 = sub_1B1C2C888();
  v51 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v50, v51))
  {
    v71 = v51;
    v73 = v49;
    v52 = 1819047278;
    v53 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v80 = v70;
    *v53 = 136446978;
    v55 = sub_1B1AA95A0(v70, v54);
    if (v55)
    {
      v56 = v55;
      v36 = [v55 description];

      v57 = sub_1B1C2CB58();
      v59 = v58;
    }

    else
    {
      v59 = 0xE400000000000000;
      v57 = 1819047278;
    }

    sub_1B1A930E4(v57, v59, &v80);
    OUTLINED_FUNCTION_11_19();
    *(v53 + 4) = v36;
    *(v53 + 12) = 2082;
    v61 = sub_1B1AA9644();
    if (v61)
    {
      v62 = v61;
      v36 = [v61 &selRef_isANEOnly];

      v52 = sub_1B1C2CB58();
      v64 = v63;
    }

    else
    {
      v64 = 0xE400000000000000;
    }

    sub_1B1A930E4(v52, v64, &v80);
    OUTLINED_FUNCTION_11_19();
    *(v53 + 14) = v36;
    *(v53 + 22) = 2082;
    v49 = v73;
    v65 = &v73[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    OUTLINED_FUNCTION_65(&v73[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId], v79);
    v67 = *v65;
    v66 = v65[1];

    sub_1B1A930E4(v67, v66, &v80);
    OUTLINED_FUNCTION_11_19();
    *(v53 + 24) = v36;
    *(v53 + 32) = 2080;
    v68 = sub_1B1C2D778();
    sub_1B1A930E4(v68, v69, &v80);
    OUTLINED_FUNCTION_11_19();
    *(v53 + 34) = v36;
    _os_log_impl(&dword_1B1A8A000, v50, v71, "Select voice: {%{public}s}, resource: {%{public}s}, request: {client: %{public}s, id: %s}", v53, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v60 = v77;
    v36 = v78;
  }

  else
  {

    v60 = v77;
  }

  sub_1B1AA81A8(v36);
}

void *sub_1B1ABBEE0(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v6 = MEMORY[0x1E69E6370];
  v5[2].n128_u8[8] = 1;
  v5[4].n128_u64[0] = v6;
  v5[4].n128_u64[1] = 1;
  v7 = MEMORY[0x1E69E6158];
  v5[5].n128_u64[0] = a1;
  v5[5].n128_u64[1] = a2;
  v5[6].n128_u64[1] = v7;
  v5[7].n128_u64[0] = 7;
  v8 = qword_1EB761310;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_6_14(&qword_1EB761310);
  }

  v9 = qword_1EB761318;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v9;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_19();
  sub_1B1A97A14(v10, v11, &unk_1B1C35CF4);
  v12 = v9;
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
  }

  v14 = qword_1ED9A9968;
  *(v13 + 32) = qword_1ED9A9968;
  v15 = v14;
  v16 = static TTSAsset.bestAsset(ofTypes:matching:)(v13, inited);

  if (v16)
  {
    OUTLINED_FUNCTION_21_6();
    v18 = (*(v17 + 280))();
    if (v18)
    {
      v19 = v18;
      v20 = sub_1B1ABC174();
      v21 = [v19 bundlePath];
      v22 = sub_1B1C2CB58();
      v24 = v23;

      type metadata accessor for ResourceAsset();
      OUTLINED_FUNCTION_66();
      result = swift_allocObject();
      result[2] = v20;
      result[3] = v22;
      result[4] = v24;
      return result;
    }
  }

  return 0;
}

char *sub_1B1ABC174()
{
  v1 = v0;
  v2 = [v0 primaryLanguage];
  sub_1B1C2CB58();
  v4 = v3;

  v5 = objc_allocWithZone(type metadata accessor for SynthesisResource());
  v6 = OUTLINED_FUNCTION_5_4();
  v7 = SynthesisResource.init(language:)(v6, v4);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v8();
  v8();
  OUTLINED_FUNCTION_35_8();
  v9 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_66_0(&v7[OBJC_IVAR___SiriTTSSynthesisResource_version], v11);
  *&v7[v9] = v1;
  return v7;
}

uint64_t sub_1B1ABC260()
{
  type metadata accessor for DataContainer();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1B1C2CAB8();
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request);
  v5[3] = type metadata accessor for BaseRequest(0);
  v5[0] = v2;
  v3 = v2;
  sub_1B1AA5E5C(v5, 0x74736575716572, 0xE700000000000000);
  sub_1B1ABD380(v1);
}

uint64_t sub_1B1ABC718(unint64_t i, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }
  }

LABEL_47:
  if (!sub_1B1C2D468())
  {
  }

LABEL_3:
  v29 = v5;
  v30 = a4;
  v10 = v8 & 0xC000000000000001;
  if (i)
  {
    v33 = v10 == 0;
    a4 = i;
  }

  else
  {
    sub_1B1A9EC44(0, v10 == 0, v8);
    if (v10)
    {
      a4 = MEMORY[0x1B2738A20](0, v8);
      v33 = 0;
    }

    else
    {
      a4 = *(v8 + 32);

      v33 = 1;
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
  v11 = *(a3 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v12 = a3 + 32;
  v13 = v8 & 0xFFFFFFFFFFFFFF8;

  v5 = 0;
  v31 = v8;
  v32 = v11;
LABEL_8:
  for (i = v5; v11 != i; ++i)
  {
    if (i >= v11)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v5 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_43;
    }

    a3 = *(v12 + 8 * i);
    if (v33)
    {
      if (i >= *(v13 + 16))
      {
        goto LABEL_44;
      }

      if (*(v8 + 8 * i + 32) != a4)
      {
        continue;
      }
    }

    else
    {

      v15 = MEMORY[0x1B2738A20](i, v8);
      swift_unknownObjectRelease();
      v16 = v15 == a4;
      v8 = v31;
      if (!v16)
      {

        continue;
      }
    }

    v14 = *(a3 + 16);
    if (v14)
    {
      v28 = a4;
      a4 = 32;
      do
      {
        v17 = *(a3 + a4);
        if (v33)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v17 >= *(v13 + 16))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v18 = MEMORY[0x1B2738A20](v17, v8);
        }

        MEMORY[0x1B2738320](v18);
        v19 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
        {
          OUTLINED_FUNCTION_19_1(v19);
          sub_1B1C2CE98();
        }

        i = &v34;
        sub_1B1C2CEC8();
        a4 += 8;
        --v14;
        v8 = v31;
      }

      while (v14);

      a4 = v28;
      v11 = v32;
      goto LABEL_8;
    }

    v11 = v32;
  }

  if (sub_1B1A9547C())
  {
    v20 = sub_1B1AA89E8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a4 + 40);
  v22 = *(a4 + 48);
  __swift_project_boxed_opaque_existential_1((a4 + 16), v21);
  v23 = *(v22 + 8);

  v23(v30, v21, v22);
  if (v29)
  {
  }

  if (v20)
  {
    MEMORY[0x1B2738320](v24);
    v25 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v25 >> 1)
    {
      OUTLINED_FUNCTION_19_1(v25);
      sub_1B1C2CE98();
    }

    sub_1B1C2CEC8();
  }

  else
  {
    if (!(MEMORY[0x1E69E7CC0] >> 62) || !sub_1B1C2D468())
    {
    }

    result = sub_1B1C00F10(MEMORY[0x1E69E7CC0]);
    v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v27 - 1;
    }

    __break(1u);
  }

  return result;
}

void sub_1B1ABCB5C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1((v0 + 44), v1);
  v2 = v0[44];
  OUTLINED_FUNCTION_56_2();
  v3 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

unint64_t sub_1B1ABCBC8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_1B1C2CB28();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      sub_1B1A93378(v14, v13);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v14);

        LOBYTE(v8) = 0;
        LODWORD(a4) = v12;
      }

      else
      {
        a4 = sub_1B1C2CB28();
        [v5 floatForKey_];
        v10 = v9;

        __swift_destroy_boxed_opaque_existential_0(v14);
        LOBYTE(v8) = 0;
        LODWORD(a4) = v10;
      }
    }

    else
    {
      v8 = HIDWORD(a4) & 1;
    }
  }

  else
  {
    LODWORD(a4) = 0;
    LOBYTE(v8) = 1;
  }

  return a4 | (v8 << 32);
}

void sub_1B1ABCD1C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1((v0 + 48), v1);
  v2 = v0[48];
  OUTLINED_FUNCTION_56_2();
  v3 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

unint64_t sub_1B1ABCD88(uint64_t a1, unint64_t a2)
{
  v4 = OUTLINED_FUNCTION_32_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v72 - v7;
  v85 = a1;
  v86 = a2;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = 7;
  }

  v10 = v9 | (v8 << 16);
  v80 = sub_1B1C2C4D8();
  v77 = "<phoneme alphabet=lhp ph=";
  v73 = "AssistantEtiquette";
  swift_bridgeObjectRetain_n();
  v72 = xmmword_1B1C361C0;
LABEL_7:
  OUTLINED_FUNCTION_12_12();
  if ((v12 & v13) != 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = 7;
  }

  v75 = 4 * v11;
  v76 = v14 | (v11 << 16);
  while (1)
  {
    v83 = a1;
    v84 = a2;
    v81 = 0x3D6F696475615C1BLL;
    v82 = 0xE800000000000000;
    v15 = v79;
    __swift_storeEnumTagSinglePayload(v79, 1, 1, v80);
    sub_1B1A8EDAC();
    OUTLINED_FUNCTION_17_14();
    v78 = sub_1B1C2D3C8();
    v17 = v16;
    v19 = v18;
    sub_1B1A90C78(v15, &qword_1EB762320, &unk_1B1C39760);

    if (v19)
    {
      return a1;
    }

    v83 = a1;
    v84 = a2;
    v81 = 92;
    v82 = 0xE100000000000000;
    v21 = v17 >> 14;
    if (v17 >> 14 > v10 >> 14)
    {
      break;
    }

    v22 = v79;
    v23 = OUTLINED_FUNCTION_19_7();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

    OUTLINED_FUNCTION_17_14();
    v27 = sub_1B1C2D3C8();
    v29 = v28;
    v31 = v30;
    sub_1B1A90C78(v22, &qword_1EB762320, &unk_1B1C39760);

    if (v31)
    {
      return a1;
    }

    if (v21 > v27 >> 14)
    {
      goto LABEL_39;
    }

    v32 = a1;
    sub_1B1C2CE08();
    OUTLINED_FUNCTION_18_6();

    OUTLINED_FUNCTION_2_25();
    v39 = sub_1B1B5FF00(v33, v34, v35, v36, v37, v38);

    if (v39)
    {
      OUTLINED_FUNCTION_2_25();
      if (sub_1B1B5FD5C(v40, v41, v42, v43, v44, v45))
      {
        OUTLINED_FUNCTION_2_25();
        if (sub_1B1C2D318() >= 2)
        {

          OUTLINED_FUNCTION_27_7();
          result = sub_1B1C2D2E8();
          if (v46)
          {
            result = &qword_1EB762320;
          }

          if (&qword_1EB762320 >> 14 < result >> 14)
          {
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_2_25();
          sub_1B1C2D348();
          OUTLINED_FUNCTION_18_6();

          OUTLINED_FUNCTION_30_7();
          result = sub_1B1C2D318();
          if (__OFSUB__(result, 1))
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_27_7();
          result = sub_1B1C2D2E8();
          if (v47)
          {
            v48 = &qword_1EB762320;
          }

          else
          {
            v48 = result;
          }

          if (v48 >> 14 < v31 >> 14)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_30_7();
          sub_1B1C2D348();
          OUTLINED_FUNCTION_18_6();
          v74 = v49;
        }
      }
    }

    a1 = v32;
    OUTLINED_FUNCTION_2_25();
    if (sub_1B1B5FF00(v50, v51, v52, v53, v54, v55))
    {
      v56 = sub_1B1C2D338();
      sub_1B1B5F378(0xD00000000000005FLL, v73 | 0x8000000000000000, v56, v57, v58, v59);

      if (v29 >> 14 < v78 >> 14)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v60 = swift_allocObject();
      *(v60 + 16) = v72;

      v61 = OUTLINED_FUNCTION_32_7();
      v62 = MEMORY[0x1B27380D0](v61);
      v64 = v63;
      *(v60 + 56) = MEMORY[0x1E69E6158];
      *(v60 + 64) = sub_1B1AC9204();
      *(v60 + 32) = v62;
      *(v60 + 40) = v64;
      v83 = sub_1B1C2CB98();
      v84 = v65;
      sub_1B1AA4020();
      sub_1B1C2CC28();

      a1 = v85;
      a2 = v86;

      OUTLINED_FUNCTION_32_7();
      v66 = sub_1B1C2D318();

      if (__OFADD__(v66, 3))
      {
        goto LABEL_45;
      }

      v67 = sub_1B1C2CCA8();

      OUTLINED_FUNCTION_12_12();
      if ((v69 & v70) != 0)
      {
        v71 = 11;
      }

      else
      {
        v71 = 7;
      }

      v10 = v71 | (v68 << 16);
      if (4 * v68 < v67 >> 14)
      {
        __break(1u);
        return a1;
      }

      goto LABEL_7;
    }

    v10 = v76;
    if (v75 < v21)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
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
  return result;
}

void sub_1B1ABD380(uint64_t a1)
{
  v4 = v1;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v80 = v7;
  v81 = v6;

  sub_1B1AA5FAC(a1, &v80);
  v8 = v2;
  if (!v2)
  {

    return;
  }

  v9 = v2;
  if (qword_1ED9A9288 != -1)
  {
LABEL_40:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v10 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v10, qword_1ED9A9120);
  v11 = v8;
  v12 = sub_1B1C2C888();
  v13 = sub_1B1C2D0B8();

  v74 = v7;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_21_0();
    v15 = OUTLINED_FUNCTION_19_0();
    v80 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_1B1C2D828();
    sub_1B1A930E4(v16, v17, &v80);
    OUTLINED_FUNCTION_19_5();

    *(v14 + 4) = v3;
    _os_log_impl(&dword_1B1A8A000, v12, v13, "Encountered error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
    v7 = v74;
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  *&v78 = v8;
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  if (swift_dynamicCast())
  {
    v19 = v82;
    if (v80 == 2)
    {
      v20 = v81;

      sub_1B1A9EC9C();
      swift_allocError();
      *v21 = 2;
      *(v21 + 8) = v20;
      *(v21 + 16) = v19;
      swift_willThrow();

      return;
    }

    v69 = v4;
  }

  else
  {
    v69 = v4;
  }

  v22 = sub_1B1A95484(v7);
  v70 = v8;
  v68 = a1;
  if (v22)
  {
    v23 = v22;
    if (v22 < 1)
    {
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_33;
    }

    v24 = 0;
    v25 = v7 & 0xC000000000000001;
    v71 = 136315138;
    v72 = v7 & 0xC000000000000001;
    v73 = v22;
    do
    {
      if (v25)
      {
        v26 = MEMORY[0x1B2738A20](v24, v7);
      }

      else
      {
        v26 = *(v7 + 8 * v24 + 32);
      }

      sub_1B1A94FC4(v26 + 16, &v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762680, &qword_1B1C38458);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762688, &qword_1B1C38460);
      if (swift_dynamicCast())
      {
        sub_1B1A8D0E0(&v75, &v80);

        v27 = sub_1B1C2C888();
        v28 = sub_1B1C2D098();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = OUTLINED_FUNCTION_21_0();
          v30 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_16_11(v30, v31, v32, v33, v34, v35, v36, v37, v67, v68, v69, v70, v71);
          v38 = sub_1B1C2CBD8();
          v40 = sub_1B1A930E4(v38, v39, &v75);
          v7 = v74;

          *(v29 + 4) = v40;
          v25 = v72;
          _os_log_impl(&dword_1B1A8A000, v27, v28, "Interrupting action: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }

        v41 = v83;
        v42 = v84;
        __swift_project_boxed_opaque_existential_1(&v80, v83);
        (*(v42 + 40))(v41, v42);
        v43 = v83;
        v44 = v84;
        __swift_project_boxed_opaque_existential_1(&v80, v83);
        (*(v44 + 32))(v43, v44);

        v23 = v73;
        __swift_destroy_boxed_opaque_existential_0(&v80);
      }

      else
      {

        v77 = 0;
        v75 = 0u;
        v76 = 0u;
        sub_1B1B3E078(&v75, &unk_1EB762690);
      }

      ++v24;
    }

    while (v23 != v24);
  }

  v7 = 0;
  a1 = v69;
  v8 = v70;
  v3 = *(v69 + 32);
  v4 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v4 == v7)
    {

      swift_willThrow();
      return;
    }

    if (v7 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1B1A94FC4(i, &v75);
    v46 = *(&v76 + 1);
    v47 = v77;
    __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    if ((*(v47 + 16))(v70, v46, v47))
    {
      break;
    }

    ++v7;
    __swift_destroy_boxed_opaque_existential_0(&v75);
  }

  sub_1B1A8D0E0(&v75, &v78);
  sub_1B1A8D0E0(&v78, &v80);
  v48 = v70;
  v49 = sub_1B1C2C888();
  v50 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_21_0();
    v52 = OUTLINED_FUNCTION_19_0();
    *&v78 = v52;
    *v51 = 136315138;
    swift_getErrorValue();
    v53 = sub_1B1C2D828();
    sub_1B1A930E4(v53, v54, &v78);
    OUTLINED_FUNCTION_89_0();

    *(v51 + 4) = v47;
    _os_log_impl(&dword_1B1A8A000, v49, v50, "Gracefully handle error: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  v7 = 0;
  sub_1B1B3D0CC(v70, &v78);
  v23 = v79;
  if (!*(v69 + 64))
  {
    goto LABEL_34;
  }

  LOBYTE(v12) = v78;
  v13 = *(&v78 + 1);
  if (qword_1ED9A4E28 != -1)
  {
    goto LABEL_42;
  }

LABEL_33:
  sub_1B1AC638C(qword_1ED9A4E30, v12, v13, v23);
LABEL_34:

  v55 = v83;
  v56 = v84;
  __swift_project_boxed_opaque_existential_1(&v80, v83);
  (*(v56 + 8))(&v78, v55, v56);
  v75 = v78;
  v57 = v7;
  sub_1B1AA5FAC(v68, &v75);
  v58 = v7;
  if (v7)
  {

    v59 = v7;
    v60 = sub_1B1C2C888();
    v61 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_21_0();
      v63 = OUTLINED_FUNCTION_19_0();
      *&v78 = v63;
      *v62 = 136315138;
      swift_getErrorValue();
      v64 = sub_1B1C2D828();
      v66 = sub_1B1A930E4(v64, v65, &v78);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1B1A8A000, v60, v61, "Encountered error during error handling: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(&v80);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v80);
  }
}

void sub_1B1ABDCD0()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1((v0 + 52), v1);
  v2 = v0[52];
  OUTLINED_FUNCTION_56_2();
  v3 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1ABDD3C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (a1)
  {
    a1 = a2(0);
    v7 = v6;
  }

  else
  {
    v7 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v7;
  v9[3] = a1;

  sub_1B1AA5E5C(v9, a3, a4);
}

void sub_1B1ABDDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v7 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v7, qword_1ED9A9120);
  v8 = sub_1B1C2C888();
  v9 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&dword_1B1A8A000, v8, v9, "#PrewarmRequest %llu is prewarming engine in background.", v10, 0xCu);
    MEMORY[0x1B2739FD0](v10, -1, -1);
  }

  sub_1B1ABDF84(a3, a4);
  oslog = sub_1B1C2C888();
  v11 = sub_1B1C2D0D8();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_1B1A8A000, oslog, v11, "#PrewarmRequest %llu finished prewarming engine.", v12, 0xCu);
    MEMORY[0x1B2739FD0](v12, -1, -1);
  }
}

uint64_t sub_1B1ABDF84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_10(a1, a2);

  [v5 lock];
  sub_1B1ABE074(v3, v4, v2);
  [v5 unlock];
}

uint64_t sub_1B1ABE028(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_10(a1, a2);

  return sub_1B1ABE2D4(v5, v4, v2, v3);
}

void sub_1B1ABE074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1ABE028(a2, a3);
  if (!v3)
  {
    v13 = v4;
    if (qword_1EB761470 != -1)
    {
      swift_once();
    }

    if (byte_1EB761479 == 1)
    {
      v17[0] = 0;
      if (![v13 preheatWithError_])
      {
        v15 = v17[0];
        v16 = sub_1B1C2C058();

        swift_willThrow();
        return;
      }

      v14 = v17[0];
    }

    return;
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v5 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v5, qword_1ED9A9120);
  v6 = v3;
  v7 = sub_1B1C2C888();
  v8 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v3;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1A8A000, v7, v8, "Unable to fetch TTS engine for prewarming, error: %@", v9, 0xCu);
    sub_1B1B1AF0C(v10);
    MEMORY[0x1B2739FD0](v10, -1, -1);
    MEMORY[0x1B2739FD0](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B1ABE2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 lock];
  sub_1B1ABE39C(a2, a3, a4, &v10);
  [a1 unlock];

  if (!v4)
  {
    a2 = v10;
  }

  return a2;
}

void sub_1B1ABE39C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v68[2] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (a2)
  {
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v68[0] = v8;
  v68[1] = v9;

  MEMORY[0x1B27381B0](v10, v11);

  v12 = *(a3 + 32);
  if (v12)
  {
    v64 = a4;
    v66 = v5;
    v13 = v12;
    v14 = [v13 tag];
    v15 = sub_1B1C2CB58();
    v17 = v16;

    if (v15 == v8 && v17 == v9)
    {

LABEL_13:

      *v64 = v13;
      return;
    }

    v19 = sub_1B1C2D7A8();

    if (v19)
    {
      goto LABEL_13;
    }

    v12 = *(a3 + 32);
    a4 = v64;
    v5 = v66;
  }

  *(a3 + 32) = 0;

  if (a2)
  {
    v20 = *(a2 + 24);
    v21 = *(a2 + 32);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = objc_allocWithZone(SiriTTSSynthesisEngine);

  v23 = sub_1B1B23504(v8, v9, v20, v21);
  if (v5)
  {

    return;
  }

  v24 = v23;
  if (a2)
  {
    v65 = a4;
    v25 = sub_1B1B41C60();
    v26 = sub_1B1A9547C();
    if (v26)
    {
      v28 = v26;
      if (v26 < 1)
      {
        __break(1u);
      }

      v29 = 0;
      *&v27 = 136315394;
      v58 = v27;
      v63 = v24;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1B2738A20](v29, v25);
        }

        else
        {
          v30 = *(v25 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = [v30 mimeType];
        v33 = sub_1B1C2CB58();
        v35 = v34;

        if (v33 == 0xD000000000000010 && 0x80000001B1C4AC10 == v35)
        {
        }

        else
        {
          v37 = sub_1B1C2D7A8();

          if ((v37 & 1) == 0)
          {
            v68[0] = 0;
            if (![v24 loadResourceWithPath:v31 error:v68])
            {
              v39 = v68[0];
              v40 = sub_1B1C2C058();

              swift_willThrow();
              if (qword_1ED9A9288 != -1)
              {
                swift_once();
              }

              v41 = sub_1B1C2C8A8();
              __swift_project_value_buffer(v41, qword_1ED9A9120);
              v42 = v31;
              v43 = v40;
              v44 = sub_1B1C2C888();
              v45 = sub_1B1C2D0B8();

              if (os_log_type_enabled(v44, v45))
              {
                v60 = v45;
                v46 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                v68[0] = v62;
                *v46 = v58;
                log = v44;
                v47 = [v42 path];
                v61 = v42;
                v48 = sub_1B1C2CB58();
                v50 = v49;

                v51 = sub_1B1A930E4(v48, v50, v68);

                *(v46 + 4) = v51;
                *(v46 + 12) = 2080;
                swift_getErrorValue();
                v52 = sub_1B1C2D828();
                v54 = sub_1B1A930E4(v52, v53, v68);

                *(v46 + 14) = v54;
                _os_log_impl(&dword_1B1A8A000, log, v60, "Unable to load resource %s, error: %s", v46, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1B2739FD0](v62, -1, -1);
                MEMORY[0x1B2739FD0](v46, -1, -1);
              }

              else
              {
              }

              v24 = v63;
              goto LABEL_36;
            }

            v38 = v68[0];
          }
        }

LABEL_36:
        ++v29;
      }

      while (v28 != v29);
    }

    a4 = v65;
  }

  v55 = sub_1B1C2CB28();

  [v24 setTag_];

  v56 = *(a3 + 32);
  *(a3 + 32) = v24;
  v57 = v24;

  *a4 = v57;
}

uint64_t sub_1B1ABE99C()
{
  OUTLINED_FUNCTION_125();
  v7[0] = 0;
  v7[1] = v1;
  sub_1B1C2D538();

  v8 = 0x65676175676E616CLL;
  v9 = 0xEA0000000000203ALL;
  OUTLINED_FUNCTION_26_2(v2, v7);

  v3 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v3);

  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR___SiriTTSSynthesisResource_version, v6);
  v4 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v4);

  return v8;
}

uint64_t SynthesisPrewarmAction.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B1ABEAC8(id a1, void *a2, uint64_t (*a3)(id))
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = a2;
    v10 = sub_1B1C2C888();
    v11 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 134218242;
      v14 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v12 + 4) = *&v9[v14];

      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_1B1C2D828();
      v17 = sub_1B1A930E4(v15, v16, &v24);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1B1A8A000, v10, v11, "#Error #PrewarmRequest id %llu, error: %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B2739FD0](v13, -1, -1);
      MEMORY[0x1B2739FD0](v12, -1, -1);

LABEL_12:
      return a3(a1);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v10 = a2;
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v19, v20))
    {

      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v21 + 4) = *(v10 + v22);

    _os_log_impl(&dword_1B1A8A000, v19, v20, "#Success #PrewarmRequest id %llu", v21, 0xCu);
    MEMORY[0x1B2739FD0](v21, -1, -1);
  }

  return a3(a1);
}

id SynthesisResource.init(language:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SiriTTSSynthesisResource_version] = 0;
  v3 = &v2[OBJC_IVAR___SiriTTSSynthesisResource_language];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SynthesisResource();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B1ABEE50()
{
  v0 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v35 = v5 - v4;
  sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v30 = v7;
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v33 = v13;
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  result = sub_1B1ABF388();
  if (result)
  {
    v19 = result;
    v29 = v2;
    v20 = sub_1B1ABF3B8(result, v18);
    if (v20)
    {
      v21 = v20;
      v22 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      v28 = *&v21[v22];

      v27 = sub_1B1ABF3D0();
      sub_1B1AA7918();
      sub_1B1C2C9A8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B1A979CC(&qword_1ED9A9720, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
      sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
      sub_1B1C2D418();
      (*(v30 + 104))(v10, *MEMORY[0x1E69E8090], v31);
      v23 = sub_1B1C2D158();
      v24 = *(v32 + 16);
      v25 = swift_allocObject();
      v25[2] = v28;
      v25[3] = v24;
      v25[4] = v19;
      v25[5] = v27;
      aBlock[4] = sub_1B1ABDDC8;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B1A95870;
      aBlock[3] = &block_descriptor_29;
      v26 = _Block_copy(aBlock);

      sub_1B1C2C9A8();
      v37 = MEMORY[0x1E69E7CC0];
      sub_1B1A979CC(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
      sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
      sub_1B1C2D418();
      MEMORY[0x1B2738610](0, v16, v35, v26);
      _Block_release(v26);

      (*(v29 + 8))(v35, v0);
      (*(v33 + 8))(v16, v34);
    }
  }

  return result;
}

uint64_t sub_1B1ABF340()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1B1ABF41C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 608, v2);
  v3 = *(v0 + 608);
  v4 = *(v0 + 632);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1ABF484(uint64_t a1)
{
  v1 = sub_1B1C2C838();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1C2C7F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9A4F68 != -1)
  {
    swift_once();
  }

  v9 = sub_1B1C2C828();
  __swift_project_value_buffer(v9, qword_1ED9A4F70);
  v10 = sub_1B1C2C818();
  sub_1B1C2C848();
  v11 = sub_1B1C2D178();
  if (sub_1B1C2D278())
  {

    sub_1B1C2C878();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v10, v11, v14, "TTS Select Voice", v12, v13, 2u);
    MEMORY[0x1B2739FD0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Buffer.deinit()
{

  return v0;
}

uint64_t VoiceSelectionAction.deinit()
{
  v0 = Buffer.deinit();

  return v0;
}

uint64_t VoiceSelectionAction.__deallocating_deinit()
{
  v0 = VoiceSelectionAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t type metadata accessor for PreinstalledAudioStorage(uint64_t a1)
{
  result = qword_1ED9A4FB0;
  if (!qword_1ED9A4FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1ABF93C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B1AC067C(v4, 1, sub_1B1A9ED54);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_27_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B1ABFA54()
{
  OUTLINED_FUNCTION_21_6();
  v1 = (*(v0 + 144))();
  v2 = qword_1ED9A97D8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A9830;
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v5 = OUTLINED_FUNCTION_18_0(v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = qword_1ED9A9100;
    v8 = v3;
    OUTLINED_FUNCTION_29_7();
    if (!v9)
    {
      swift_once();
    }

    v10 = OUTLINED_FUNCTION_18_0(qword_1ED9A90A8);

    if (v10)
    {
      v6 = 2;
    }

    else
    {
      v11 = qword_1ED9A9628;
      v12 = v3;
      OUTLINED_FUNCTION_29_7();
      if (!v9)
      {
        swift_once();
      }

      v13 = OUTLINED_FUNCTION_18_0(qword_1ED9A9598);

      if (v13)
      {
        v6 = 3;
      }

      else
      {
        if (qword_1EB7615E0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_18_0(qword_1EB7625D8);

        v6 = 0;
        v3 = v11;
      }
    }
  }

  return v6;
}

unint64_t sub_1B1ABFC30()
{
  OUTLINED_FUNCTION_21_6();
  result = (*(v0 + 192))();
  if (result >= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B1ABFC7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B1ABFD14();
  v4 = MEMORY[0x1B2738440](v2, &type metadata for SynthesisVoice.VoiceType, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1B1ABFD68(&v9, *(a1 + v6));
      v6 += 8;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

unint64_t sub_1B1ABFD14()
{
  result = qword_1EB761210;
  if (!qword_1EB761210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761210);
  }

  return result;
}

BOOL sub_1B1ABFD68(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](a2);
  v6 = sub_1B1C2D8E8();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_1B1ABFE58(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

unint64_t sub_1B1ABFE58(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B1B1E920(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1B1B1FAE8(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1B1C2D888();
      MEMORY[0x1B2738D60](v5);
      result = sub_1B1C2D8E8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1B1B1F3D4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1B1C2D808();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1B1ABFF90()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 912, v2);
  v3 = *(v0 + 912);
  v4 = *(v0 + 936);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

char *sub_1B1ABFFF8()
{
  v1 = v0;
  v2 = [v0 primaryLanguage];
  sub_1B1C2CB58();

  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  v4 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v5 = SynthesisVoice.init(language:name:)();
  v6 = sub_1B1AC01A4();
  v7 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_66_0(&v5[OBJC_IVAR___SiriTTSSynthesisVoice_type], v19);
  *&v5[v7] = v6;
  v8 = sub_1B1ABFA54();
  v9 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_66_0(&v5[OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0]], v18);
  *&v5[v9] = v8;
  v10 = sub_1B1ABFC30();
  v11 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  v12 = OUTLINED_FUNCTION_66_0(&v5[OBJC_IVAR___SiriTTSSynthesisVoice_gender], v17);
  *&v5[v11] = v10;
  v13 = *((*v3 & *v1) + 0xA8);
  (v13)(v12);
  v13();
  OUTLINED_FUNCTION_35_8();
  v14 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_66_0(OBJC_IVAR___SiriTTSSynthesisVoice_version + v5, &v16);
  *(v14 + v5) = v1;
  return v5;
}

uint64_t sub_1B1AC01A4()
{
  OUTLINED_FUNCTION_21_6();
  v1 = (*(v0 + 136))();
  v2 = qword_1ED9A9820;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A9828;
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v5 = OUTLINED_FUNCTION_18_0(v4);

  if (v5)
  {

    return 4;
  }

  else
  {
    v7 = qword_1ED9A9698;
    v8 = v3;
    OUTLINED_FUNCTION_29_7();
    if (!v9)
    {
      swift_once();
    }

    v10 = OUTLINED_FUNCTION_18_0(qword_1ED9A9710);

    if (v10)
    {

      return 5;
    }

    else
    {
      v11 = qword_1ED9A8D90;
      v12 = v3;
      OUTLINED_FUNCTION_29_7();
      if (!v9)
      {
        swift_once();
      }

      v13 = OUTLINED_FUNCTION_18_0(qword_1ED9A8D98);

      if (v13)
      {

        return 6;
      }

      else
      {
        v14 = qword_1ED9A97A8;
        v15 = v3;
        OUTLINED_FUNCTION_29_7();
        if (!v9)
        {
          swift_once();
        }

        v16 = OUTLINED_FUNCTION_18_0(qword_1ED9A9898);

        if (v16)
        {

          return 3;
        }

        else
        {
          v17 = qword_1ED9A97B8;
          v18 = v3;
          OUTLINED_FUNCTION_29_7();
          if (!v9)
          {
            OUTLINED_FUNCTION_8_0(&qword_1ED9A97B8);
          }

          v19 = OUTLINED_FUNCTION_18_0(qword_1ED9A97C0);

          if (v19)
          {

            return 2;
          }

          else
          {
            if (qword_1ED9A9890 != -1)
            {
              swift_once();
            }

            v20 = OUTLINED_FUNCTION_18_0(qword_1ED9A9818);

            return v20 & 1;
          }
        }
      }
    }
  }
}

uint64_t sub_1B1AC0438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_1B1C2D888();
    MEMORY[0x1B2738D60](a1);
    v5 = sub_1B1C2D8E8();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

void sub_1B1AC04F4()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 640, v2);
  v3 = *(v0 + 640);
  v4 = *(v0 + 664);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC055C()
{
  result = OUTLINED_FUNCTION_1_40();
  v3 = -v2;
  v4 = -1;
  while (1)
  {
    if (v3 + v4 == -1)
    {
      return 0;
    }

    if (++v4 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    sub_1B1A94FC4(result, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v6 = OUTLINED_FUNCTION_0_39();
    v8 = v7(v6);
    __swift_destroy_boxed_opaque_existential_0(v9);
    result = v5;
    if (v8)
    {
      sub_1B1ABF93C(&unk_1F28C0388);
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AC067C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void sub_1B1AC06F4()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 1008, v2);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1032);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC0788(uint64_t a1)
{
  v2 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_7_3(a1);
  return *(v1 + v2);
}

uint64_t static NeuralUtils.shared.getter()
{
  type metadata accessor for NeuralUtils();

  return swift_initStaticObject();
}

uint64_t VoiceAsset.path.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

Swift::Float __swiftcall NeuralUtils.currentSampleRate(voicePath:)(Swift::String voicePath)
{
  v1 = objc_opt_self();
  v2 = sub_1B1C2CB28();
  [v1 currentSampleRate_];
  v4 = v3;

  return v4;
}

void sub_1B1AC0918()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 944, v2);
  v3 = *(v0 + 944);
  v4 = *(v0 + 968);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC0980()
{
  v1 = OUTLINED_FUNCTION_65(v0 + 144, v29);
  v2 = *(v0 + 160);
  v30 = *(v0 + 144);
  v31 = v2;
  v32 = *(v0 + 176);
  OUTLINED_FUNCTION_6_15(v1, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23, v25, v27, v29[0], v29[1], v29[2]);
  v10 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v28, v29[0], v29[1], v29[2]);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1AC09EC()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = *v0;
  v2 = sub_1B1C2CB28();
  v3 = [v1 objectForKey_];

  if (!v3)
  {

    goto LABEL_8;
  }

  sub_1B1C2D3F8();
  swift_unknownObjectRelease();
  sub_1B1A93378(v10, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = sub_1B1B517F4(v1, v0);
    v6 = v5;

    __swift_destroy_boxed_opaque_existential_0(v10);
    if (v6)
    {
      return v4;
    }

LABEL_8:
    v4 = *(v0 + 24);

    return v4;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);

  return v8;
}

id Preferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Preferences();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AudioQueueInterface.beginAudioPowerUpdate()()
{

  sub_1B1AAD66C(1, "Unable to begin access power, error: %s");
}

void sub_1B1AC0BA4()
{
  v1 = *(v0 + 80);
  [v1 lock];
  v2 = AudioQueueStart(*(v0 + 72), 0);
  [v1 unlock];
  if (v2 == sub_1B1C2C958())
  {
    if (*(v0 + 96) > 0.0 && !*(v0 + 88))
    {
      *(v0 + 88) = mach_absolute_time();
    }

    AudioQueueInterface.beginAudioPowerUpdate()();
  }

  else
  {
    sub_1B1C2D538();

    OUTLINED_FUNCTION_47();
    v8 = v3;
    v4 = sub_1B1B269CC(v2);
    MEMORY[0x1B27381B0](v4);

    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_27();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_59(v5, v6);
    *(v7 + 8) = 0xD000000000000030;
    *(v7 + 16) = v8;
    swift_willThrow();
  }
}

uint64_t sub_1B1AC0CBC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = sub_1B1C2C888();
  v6 = sub_1B1C2D098();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1A8A000, v5, v6, "Starting AudioQueue...", v7, 2u);
    MEMORY[0x1B2739FD0](v7, -1, -1);
  }

  (*(*(v3 + 88) + 32))(*(v3 + 80));
  v8 = sub_1B1C2C888();
  v9 = sub_1B1C2D098();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B1A8A000, v8, v9, "Started AudioQueue.", v10, 2u);
    MEMORY[0x1B2739FD0](v10, -1, -1);
  }

  v11 = sub_1B1C2C888();
  v12 = sub_1B1C2D098();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    sub_1B1AC10C4();
    v15 = AudioRouteInfo.description.getter();
    v17 = v16;

    v18 = sub_1B1A930E4(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1B1A8A000, v11, v12, "Current route info: {%s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2739FD0](v14, -1, -1);
    MEMORY[0x1B2739FD0](v13, -1, -1);
  }

  else
  {
  }

  return a2(0);
}

uint64_t AudioQueueInterface.outputRouteInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = *(v1 + 48);
  *(a1 + 40) = v5;
}

uint64_t AudioRouteInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0x7079546574756F72, 0xEB00000000203A65);
  MEMORY[0x1B27381B0](v1, v2);
  MEMORY[0x1B27381B0](0x65756C427369202CLL, 0xEE003A68746F6F74);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v5, v6);

  OUTLINED_FUNCTION_75();
  MEMORY[0x1B27381B0](0xD000000000000011);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v7, v8);

  MEMORY[0x1B27381B0](0x726F646E6576202CLL, 0xED0000203A444920);
  OUTLINED_FUNCTION_71_0();
  v9 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v9);

  MEMORY[0x1B27381B0](0x6375646F7270202CLL, 0xEE00203A44492074);
  OUTLINED_FUNCTION_71_0();
  v10 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v10);

  return 0;
}

uint64_t sub_1B1AC138C(uint64_t result, void *a2, void *a3, uint64_t a4, void *a5, float a6)
{
  if (!result)
  {
    v49 = v9;
    v50 = v8;
    v51 = v6;
    v52 = v7;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v14, qword_1ED9A9120);
    v15 = a2;
    v16 = sub_1B1C2C888();
    v17 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = (*((*MEMORY[0x1E69E7D40] & v15->isa) + 0x90))();

      _os_log_impl(&dword_1B1A8A000, v16, v17, "Audio playback started for request_id: %llu", v18, 0xCu);
      MEMORY[0x1B2739FD0](v18, -1, -1);
    }

    else
    {

      v16 = v15;
    }

    v19 = a3;
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      v23 = &v19[OBJC_IVAR___SiriTTSAudioData_asbd];
      swift_beginAccess();
      v24 = *(v23 + 2);
      *(v22 + 4) = v24;
      *(v22 + 8) = 1024;
      *(v22 + 10) = v24 == 1869641075;

      _os_log_impl(&dword_1B1A8A000, v20, v21, "# Audio playback format %u, isOpus: %{BOOL}d", v22, 0xEu);
      MEMORY[0x1B2739FD0](v22, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = *(Strong + 96);
      v27 = v26;

      if (v26)
      {
        if (qword_1ED9A4D90 != -1)
        {
          swift_once();
        }

        v28 = qword_1ED9A4D98;
        v29 = a5[3];
        v30 = a5[4];
        __swift_project_boxed_opaque_existential_1(a5, v29);
        (*(v30 + 8))(v48, v29, v30);
        sub_1B1AC1940(v28, v48);

        sub_1B1AC23A8(v48);
      }
    }

    v31 = a5[3];
    v32 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v31);
    (*(v32 + 24))(&v43, v31, v32);
    if (v44)
    {
      sub_1B1A8D0E0(&v43, v45);
      swift_beginAccess();
      v33 = swift_weakLoadStrong();
      if (v33)
      {
        v34 = *(v33 + 96);
        v35 = v34;

        if (v34)
        {
          if (qword_1ED9A4CC0 != -1)
          {
            swift_once();
          }

          sub_1B1AC2480(qword_1ED9A4CC8, v45);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      sub_1B1A90C78(&v43, &unk_1EB762990, &unk_1B1C352D0);
    }

    v36 = a5[3];
    v37 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v36);
    (*(v37 + 32))(&v43, v36, v37);
    if (v44)
    {
      sub_1B1A8D0E0(&v43, v45);
      swift_beginAccess();
      v38 = swift_weakLoadStrong();
      if (v38)
      {
        v39 = *(v38 + 96);
        v40 = v39;

        if (v39)
        {
          if (qword_1ED9A4CA8 != -1)
          {
            swift_once();
          }

          sub_1B1AC29FC(qword_1ED9A4CB0, v45);
        }
      }

      if (a6 != 1.0)
      {
        v41 = v46;
        v42 = v47;
        __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
        (*(v42 + 16))(v41, v42, a6);
      }

      return __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      return sub_1B1A90C78(&v43, &qword_1EB7618F8, &unk_1B1C352E0);
    }
  }

  return result;
}

uint64_t sub_1B1AC1940(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v5[3] = *a2;
  v6[0] = v2;
  *(v6 + 12) = *(a2 + 28);
  sub_1B1AC18E4(a2, v5);
  v3 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v3, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1B1AC19D8(uint64_t a1, void *a2, void (*a3)(__int128 *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    if (*(&v24[0] + 1))
    {
      v25 = v24[0];
      v26 = v24[1] & 0x101;
      v27 = *(&v24[1] + 8);
      v28 = DWORD2(v24[2]);
      a3(&v25);

      return;
    }
  }

  else
  {
    memset(v24, 0, 44);
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v11 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v11, qword_1ED9A9120);
  (*(v7 + 16))(v9, a1, v6);
  v12 = a2;
  v13 = sub_1B1C2C888();
  v14 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v24[0] = v16;
    *v15 = 136315650;
    v17 = sub_1B1C2CB58();
    v19 = sub_1B1A930E4(v17, v18, v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1B1A930E4(0x756F526F69647541, 0xEE006F666E496574, v24);
    *(v15 + 22) = 2080;
    sub_1B1C2BED8();
    sub_1B1A90C78(&v25, &qword_1EB761DE0, &qword_1B1C352C0);
    *&v25 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
    v20 = sub_1B1C2CBD8();
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    v23 = sub_1B1A930E4(v20, v22, v24);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_1B1A8A000, v13, v14, "Event '%s' expect associated object as %s, got: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v16, -1, -1);
    MEMORY[0x1B2739FD0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1B1AC1D7C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10[0] = v2;
    v10[1] = v3;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    sub_1B1AC1E20(v10);
  }

  return result;
}

uint64_t sub_1B1AC1E20(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 72);

  v5 = mach_absolute_time();
  v6 = *(v1 + 80);
  v7 = v5 - v6;
  if (v5 < v6)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1ED9A5270 != -1)
  {
LABEL_5:
    swift_once();
  }

  v8 = *&qword_1ED9AA500 * v7;
  v9 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_66_0(v4 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency, v13);
  *(v4 + v9) = v8;
  v10 = (v4 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioOutputRoute);
  OUTLINED_FUNCTION_66_0(v4 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioOutputRoute, &v12);
  *v10 = v3;
  v10[1] = v2;
}

uint64_t sub_1B1AC1F04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC1F5C();
  }

  return result;
}

void sub_1B1AC1F5C()
{
  OUTLINED_FUNCTION_25();
  sub_1B1C2C838();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_audioStartingInterval))
  {

    v3 = sub_1B1C2C818();
    sub_1B1C2C848();
    sub_1B1C2D178();
    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      v4 = OUTLINED_FUNCTION_15_8();
      if (v5(v4) != *MEMORY[0x1E69E93E8])
      {
        v6 = OUTLINED_FUNCTION_15_8();
        v7(v6);
      }

      *OUTLINED_FUNCTION_20_0() = 0;
      v8 = sub_1B1C2C7D8();
      OUTLINED_FUNCTION_12_5(&dword_1B1A8A000, v9, v10, v8, "TTSStartAudio");
      OUTLINED_FUNCTION_11();
    }

    v11 = OUTLINED_FUNCTION_9_5();
    v12(v11);
  }

  OUTLINED_FUNCTION_26_1();
}

double sub_1B1AC2158@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_61_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_60();
  v4(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7618E0, &qword_1B1C352C8);
  if (OUTLINED_FUNCTION_52(v5))
  {
    sub_1B1A8D0E0(v7, a1);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1B1A90C20(v7, &unk_1EB762990, &unk_1B1C352D0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B1AC2294(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 10);
  v9 = *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v10 = mach_absolute_time();
  v11 = *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_audioStartingTimestamp);
  v12 = v10 - v11;
  if (v10 < v11)
  {
    __break(1u);
  }

  else if (qword_1ED9A5270 == -1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_73(&qword_1ED9A5270);
LABEL_3:
  v13 = *&qword_1ED9AA500 * v12;
  v14 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_66_0(v9 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency, v18);
  *(v9 + v14) = v13;
  v15 = 256;
  v16 = v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo;
  if (!v5)
  {
    v15 = 0;
  }

  *v16 = v3;
  *(v16 + 8) = v2;
  *(v16 + 16) = v15 | v4;
  *(v16 + 24) = v6;
  *(v16 + 32) = v7;
  *(v16 + 40) = v8;
}

uint64_t sub_1B1AC23FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B1A94FC4(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  [v4 postNotificationName:a1 object:sub_1B1C2D7F8()];
  return swift_unknownObjectRelease();
}

void sub_1B1AC2494(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7618E0, &qword_1B1C352C8);
  if (swift_dynamicCast())
  {
    sub_1B1A8D0E0(v24, v26);
    a3(v26);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1B1A90C78(v24, &unk_1EB762990, &unk_1B1C352D0);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    (*(v7 + 16))(v9, a1, v6);
    v12 = a2;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v24[0] = v16;
      *v15 = 136315650;
      v17 = sub_1B1C2CB58();
      v19 = sub_1B1A930E4(v17, v18, v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1B1A930E4(0xD000000000000013, 0x80000001B1C49700, v24);
      *(v15 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      v26[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v20 = sub_1B1C2CBD8();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_1B1A930E4(v20, v22, v24);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "Event '%s' expect associated object as %s, got: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v16, -1, -1);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

os_unfair_lock_s *sub_1B1AC2834(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    os_unfair_lock_lock(result + 8);
    sub_1B1A90C78(&v4[10], &unk_1EB762990, &unk_1B1C352D0);
    sub_1B1A94FC4(a1, &v4[10]);
    os_unfair_lock_unlock(v4 + 8);
  }

  return result;
}

double sub_1B1AC28E4@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_61_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_60();
  v4(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7618F0, &qword_1B1C37270);
  if (OUTLINED_FUNCTION_52(v5))
  {
    sub_1B1A8D0E0(v7, a1);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1B1A90C20(v7, &qword_1EB7618F8, &unk_1B1C352E0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1B1AC2A10(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7618F0, &qword_1B1C37270);
  if (swift_dynamicCast())
  {
    sub_1B1A8D0E0(v24, v26);
    a3(v26);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1B1A90C78(v24, &qword_1EB7618F8, &unk_1B1C352E0);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    (*(v7 + 16))(v9, a1, v6);
    v12 = a2;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v24[0] = v16;
      *v15 = 136315650;
      v17 = sub_1B1C2CB58();
      v19 = sub_1B1A930E4(v17, v18, v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1B1A930E4(0xD000000000000014, 0x80000001B1C496E0, v24);
      *(v15 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      v26[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v20 = sub_1B1C2CBD8();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_1B1A930E4(v20, v22, v24);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "Event '%s' expect associated object as %s, got: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v16, -1, -1);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1B1AC2DB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1B1A94FC4(a1, v5);
    swift_beginAccess();
    sub_1B1AAD5FC(v5, v4 + 80);
    swift_endAccess();
  }

  return result;
}

uint64_t static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = a2;
  v9 = a1;
  v10 = HIBYTE(a4) & 0xF;
  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  v56 = a2;
  if (a1 < 0 || (a2 & 0x8000000000000000) != 0)
  {
    v4 = a4 & 0x1000000000000000;
LABEL_11:
    v17 = (v9 & ~(v9 >> 63));
    if (!v4)
    {
      OUTLINED_FUNCTION_6_8();
      if (v14)
      {
        result = v18;
      }

      else
      {
        result = v10;
      }

      goto LABEL_15;
    }

    goto LABEL_66;
  }

  v12 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_72;
  }

  v4 = a4 & 0x1000000000000000;
  if ((a4 & 0x1000000000000000) != 0)
  {
LABEL_72:
    v15 = sub_1B1C2CD18();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_6_8();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

LABEL_8:
  if (v15 < v12)
  {
    goto LABEL_11;
  }

  v5 = v8;
  v16 = v9;
  while (1)
  {
    if (v4)
    {
      v8 = (a3 >> 59) & 1;
    }

    else
    {
      v8 = 1;
    }

    if (v4)
    {
      v12 = MEMORY[0x1B2738200](15, v16, a3, a4);
LABEL_45:
      result = v12;
      if ((v12 & 0xC) != 4 << v8)
      {
        if (v4)
        {
LABEL_47:
          v4 = p_cache;
          MEMORY[0x1B2738200](result, v5, a3, a4);
          goto LABEL_57;
        }

LABEL_51:
        v42 = v5 + (result >> 16);
        if (__OFADD__(v5, result >> 16))
        {
          goto LABEL_75;
        }

        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        v43 = a3 & 0xFFFFFFFFFFFFLL;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v43 = v10;
        }

        if (v43 < v42)
        {
          goto LABEL_77;
        }

        v4 = p_cache;
LABEL_57:
        v8 = sub_1B1A8EDAC();
        p_cache = MEMORY[0x1E69E6158];
        v16 = sub_1B1C2CC58();
        a3 = sub_1B1C2CC58();
        if (*(v4 + 648) == -1)
        {
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_50:
      result = sub_1B1B276E0(v12, a3, a4);
      if (v4)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_6_8();
    if (!v14)
    {
      v41 = v10;
    }

    if (v41 >= v16)
    {
      v12 = (v16 << 16) | 4;
      goto LABEL_45;
    }

    __break(1u);
LABEL_64:
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
LABEL_58:
    v44 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v44, qword_1ED9A9120);
    v17 = sub_1B1C2C888();
    v5 = sub_1B1C2D098();
    if (os_log_type_enabled(v17, v5))
    {
      break;
    }

    v9 = a3 - v16;
    if (!__OFSUB__(a3, v16))
    {
      return v16;
    }

    __break(1u);
LABEL_66:
    result = sub_1B1C2CD18();
LABEL_15:
    if (result >= v17)
    {
      v16 = v17;
    }

    else
    {
      v16 = result;
    }

    v20 = v9 - v16;
    if (__OFSUB__(v9, v16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v21 = __OFADD__(v8, v20);
    v22 = v8 + v20;
    if (v21)
    {
      goto LABEL_68;
    }

    if (v22 <= 0)
    {
      v23 = v16;
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v23 = v16 + v22;
      if (__OFADD__(v16, v22))
      {
        goto LABEL_74;
      }

      if (!v4)
      {
LABEL_25:
        OUTLINED_FUNCTION_6_8();
        if (v14)
        {
          v24 = v25;
        }

        else
        {
          v24 = v10;
        }

        goto LABEL_28;
      }
    }

    v24 = sub_1B1C2CD18();
LABEL_28:
    if (v24 >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    v5 = v26 - v16;
    if (!__OFSUB__(v26, v16))
    {
      v27 = p_cache[81];

      if (v27 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_70;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
LABEL_33:
    v28 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v28, qword_1ED9A9120);
    v12 = sub_1B1C2C888();
    v29 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v12, v29))
    {
      v30 = swift_slowAlloc();
      v38 = OUTLINED_FUNCTION_4_7(v30, 3.8523e-34, v31, v32, v33, v34, v35, v36, v37, v55, v56);
      *(v38 + 24) = v5;
      *(v38 + 32) = v39;
      *(v38 + 34) = v16;
      _os_log_impl(&dword_1B1A8A000, v12, v29, "Adjusted %ld@%ld -> %ld@%ld", v30, 0x2Au);
      v40 = v30;
      p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
      MEMORY[0x1B2739FD0](v40, -1, -1);
    }
  }

  v45 = swift_slowAlloc();
  result = OUTLINED_FUNCTION_4_7(v45, 3.8523e-34, v46, v47, v48, v49, v50, v51, v52, v55, v56);
  if (!__OFSUB__(a3, v16))
  {
    v54 = result;
    *(result + 24) = a3 - v16;
    *(result + 32) = v53;
    *(result + 34) = v16;
    _os_log_impl(&dword_1B1A8A000, v17, v5, "Mapped %ld@%ld -> %ld@%ld", result, 0x2Au);
    MEMORY[0x1B2739FD0](v54, -1, -1);

    return v16;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

id WordTimingInfo.init(startTiming:textRange:)()
{
  OUTLINED_FUNCTION_62();
  v4 = v3;
  v5 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  *&v1[OBJC_IVAR___SiriTTSWordTimingInfo_startTime] = 0;
  v6 = &v1[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  OUTLINED_FUNCTION_66_0(&v1[v5], v10);
  *&v1[v5] = v4;
  OUTLINED_FUNCTION_66_0(v6, v9);
  *v6 = v2;
  *(v6 + 1) = v0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WordTimingInfo();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B1AC3328(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B1C2D468();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1A9547C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for WordTimingInfo();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B1B9A440(&qword_1EB764300, &qword_1EB761DA8, &unk_1B1C364B0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
          v9 = sub_1B1B37C88(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1AC3788@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 routeType];
  v4 = sub_1B1C2CB58();
  v6 = v5;

  LOBYTE(v3) = [v1 isBluetooth];
  v7 = [v1 isAppleProduct];
  v8 = [v1 vendorId];
  v9 = [v1 productId];
  result = [v1 volume];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 17) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  return result;
}

uint64_t SiriTTSService_SetAudioQueueClientUID(void *a1, OpaqueAudioQueue *a2)
{
  inData = a1;
  v3 = AudioQueueSetProperty(a2, 0x63756964u, &inData, 8u);

  return v3;
}

NSObject *sub_1B1AC3900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (sub_1B1C2CBF8() + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = SiriTTSService_create_workloop(v4, a3);
  swift_unknownObjectRelease();
  return v5;
}

NSObject *SiriTTSService_create_workloop(const char *a1, uint64_t a2)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);

  return inactive;
}

uint64_t static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v22 = v8;
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v13 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  if ((a4 & 0x100000000) == 0)
  {
    sub_1B1AA7918();
    sub_1B1AC3900(a1, a2, a4);
  }

  sub_1B1AA7918();
  (*(v15 + 16))(v19, a3, v13);
  sub_1B1AC3BF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AC3C50();
  sub_1B1C2D418();
  (*(v22 + 104))(v11, *MEMORY[0x1E69E8090], v23);
  return sub_1B1C2D158();
}

unint64_t sub_1B1AC3BF8()
{
  result = qword_1ED9A9720;
  if (!qword_1ED9A9720)
  {
    sub_1B1C2D118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A9720);
  }

  return result;
}

unint64_t sub_1B1AC3C50()
{
  result = qword_1ED9A96A0;
  if (!qword_1ED9A96A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7629A0, &unk_1B1C38440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A96A0);
  }

  return result;
}

void sub_1B1AC3CB4(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v27 = v25[0];
    a3(&v27);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    (*(v7 + 16))(v9, a1, v6);
    v12 = a2;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315650;
      v17 = sub_1B1C2CB58();
      v19 = sub_1B1A930E4(v17, v18, v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1B1A930E4(0x3436746E49, 0xE500000000000000, v25);
      *(v15 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      v26[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v20 = sub_1B1C2CBD8();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_1B1A930E4(v20, v22, v25);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "Event '%s' expect associated object as %s, got: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v16, -1, -1);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1B1AC3FF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 40) = v2;
    *(result + 48) = 0;
  }

  return result;
}

void sub_1B1AC4088()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  sub_1B1C2C7E8();
  v15 = sub_1B1C2C818();
  v16 = sub_1B1C2D188();
  if (sub_1B1C2D278())
  {
    v17 = OUTLINED_FUNCTION_20_0();
    v22 = v2;
    v18 = v17;
    *v17 = 0;
    v19 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v15, v16, v19, v4, "", v18, 2u);
    v2 = v22;
    OUTLINED_FUNCTION_11();
  }

  (*(v8 + 16))(v12, v14, v6);
  sub_1B1C2C868();
  swift_allocObject();
  v20 = sub_1B1C2C858();
  (*(v8 + 8))(v14, v6);
  *(v5 + *v2) = v20;

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1AC425C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1C2C988();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = sub_1B1C2C9D8();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_66();
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_1B1AC4674;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_25_0();
  aBlock[2] = v21;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);

  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_24_0();
  sub_1B1AADDE4(v23, v24, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA6F40();
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v19, v12, v22);
  _Block_release(v22);
  (*(v8 + 8))(v12, v6);
  (*(v15 + 8))(v19, v13);
}

uint64_t sub_1B1AC44DC()
{

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B1AC4518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F90, &unk_1B1C40840);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1AC4588()
{
  OUTLINED_FUNCTION_46_1();
  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1AC45F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 80) = mach_absolute_time();
  }

  return result;
}

void AudioQueueInterface.init(audioSessionId:asbd:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v21 = *MEMORY[0x1E69E9840];
  *(v3 + 16) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 1;
  OUTLINED_FUNCTION_47();
  *(v3 + 176) = 0;
  *(v3 + 184) = 0xD00000000000001CLL;
  *(v3 + 192) = v5;
  sub_1B1C2C958();
  v20 = 0;
  v6 = a2[1];
  v17 = *a2;
  *v18 = v6;
  *&v18[16] = *(a2 + 4);
  OUTLINED_FUNCTION_11_0();
  v7 = SiriTTSService_AudioQueueNewOutputWithAudioSession();
  if (v7 == sub_1B1C2C958())
  {
    v8 = [objc_opt_self() defaultOutput];
    sub_1B1AC3788(&v17);

    v9 = *(&v17 + 1);
    v10 = v18[0];
    v11 = v18[1];
    v12 = v19;
    *(v3 + 24) = v17;
    *(v3 + 32) = v9;
    *(v3 + 40) = v10;
    *(v3 + 41) = v11;
    *(v3 + 48) = *&v18[8];
    *(v3 + 64) = v12;
    if (v20)
    {
      *(v3 + 72) = v20;
      *(v3 + 80) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];

      OUTLINED_FUNCTION_36();
      v13 = sub_1B1C2CB28();

      SiriTTSService_SetAudioQueueClientUID(v13, *(v3 + 72));
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000039, 0x80000001B1C48680);
    v14 = sub_1B1B269CC(v7);
    MEMORY[0x1B27381B0](v14);

    v15 = v17;
    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_27();
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = v15;
    swift_willThrow();

    type metadata accessor for AudioQueueInterface();
    swift_deallocPartialClassInstance();
  }
}

uint64_t sub_1B1AC4910(uint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = sub_1B1C2C9D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioQueueInterface();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  swift_allocObject();
  AudioQueueInterface.init(audioSessionId:asbd:)(a1, a2);
  if (v3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FA0, &qword_1B1C40870);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v11;
    sub_1B1AA7918();
    sub_1B1C2C9B8();
    v15 = 0;
    v12 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(0xD00000000000001CLL, 0x80000001B1C48640, v10, 46);
    (*(v8 + 8))(v10, v7);
    *(v4 + 24) = v12;
  }

  return v4;
}

uint64_t AudibleRequestProtocol.audioSessionId.getter()
{
  v1 = [v0 audibleContext];
  v2 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_17_1(&v1[OBJC_IVAR___SiriTTSAudibleContext_audioSessionId], v3);
  v4 = *&v1[v2];

  return v4;
}

void sub_1B1AC4B08()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 48, v2);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC4B6C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v5 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v5, qword_1ED9A9120);

    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D0B8();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v8 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v8, qword_1ED9A9120);

    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D098();
  }

  v9 = v7;

  if (os_log_type_enabled(v6, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1B1A930E4(a1, a2, &v13);
    _os_log_impl(&dword_1B1A8A000, v6, v9, "Invalidate synthesis caching. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2739FD0](v11, -1, -1);
    MEMORY[0x1B2739FD0](v10, -1, -1);
  }

  return sub_1B1AC4D60(1);
}

BOOL sub_1B1AC4D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1AA78A0(a1, a2);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_1B1AC4D60(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  [v3 lock];
  *(v1 + 32) = a1;
  [v3 unlock];
  return swift_endAccess();
}

uint64_t sub_1B1AC4DD4()
{
  OUTLINED_FUNCTION_46_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

void sub_1B1AC4E50(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
  if (swift_dynamicCast())
  {
    v26 = v24;
    a3(&v26);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    (*(v7 + 16))(v9, a1, v6);
    v12 = a2;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315650;
      v17 = sub_1B1C2CB58();
      v19 = sub_1B1A930E4(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1B1A930E4(0xD000000000000015, 0x80000001B1C496C0, &v26);
      *(v15 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v25, &qword_1EB761DE0, &qword_1B1C352C0);
      v25[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v20 = sub_1B1C2CBD8();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_1B1A930E4(v20, v22, &v26);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "Event '%s' expect associated object as %s, got: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v16, -1, -1);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_1B1AC51B4(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = OUTLINED_FUNCTION_3_19(a1, a2, a3, a4, a5, a6, a7, a8, v18[0], v18[1], v18[2], v18[3]);
  if (v11)
  {
    v12 = v11;
    if (v10 >> 62)
    {
      if (!sub_1B1C2D468())
      {
        return;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    OUTLINED_FUNCTION_65(a3 + 16, v18);
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = a2;

      if (Strong)
      {
        v16 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x90))(v15);
        type metadata accessor for WordTimingInfo();
        v17 = sub_1B1C2CE68();
        [Strong didGenerateWordTimingsWithRequestId:v16 wordTimingInfo:v17];

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1B1AC52F0()
{
  OUTLINED_FUNCTION_125();
  v7 = 0;
  v8 = v1;
  sub_1B1C2D538();
  v9 = 0;
  v10 = v8;
  v2 = OUTLINED_FUNCTION_61_1();
  MEMORY[0x1B27381B0](v2, 0xEB00000000203A65);
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR___SiriTTSWordTimingInfo_startTime, &v7);
  sub_1B1C2CF18();
  MEMORY[0x1B27381B0](0x6F2074786574202CLL, 0xEF203A7465736666);
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR___SiriTTSWordTimingInfo_textRange, v6);
  OUTLINED_FUNCTION_51();
  v3 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v3);

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_51();
  v4 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v4);

  return v9;
}

void sub_1B1AC5444(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  OUTLINED_FUNCTION_52_0(a1, a2, a3);
  v6 = *(v3 + v5);
  OUTLINED_FUNCTION_61_1();
  v7 = sub_1B1C2CB28();
  [a1 encodeDouble:v7 forKey:v6];

  v8 = (v3 + OBJC_IVAR___SiriTTSWordTimingInfo_textRange);
  OUTLINED_FUNCTION_26_2(v9, &v12);
  v10 = [objc_opt_self() valueWithRange_];
  v11 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_115(v11, sel_encodeObject_forKey_);
}

uint64_t sub_1B1AC559C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for SynthesisCacheFile(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  result = sub_1B1AAE10C(v15, v18);
  if ((result & 1) == 0)
  {
    v51 = a5;
    v20 = (a1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheHashKey);
    if (*(a1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheHashKey + 8))
    {
      goto LABEL_3;
    }

    v24 = sub_1B1AA95C4();
    if (!v24)
    {
      return sub_1B1AC4B6C(0xD000000000000030, 0x80000001B1C4D1E0, 1);
    }

    v49 = v24;
    v26 = sub_1B1AA95A0(v24, v25);
    if (v26)
    {
      v27 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
      v50 = v26;
      swift_beginAccess();
      if (*(v27 + v50))
      {
        v28 = sub_1B1AA9644();
        if (v28)
        {
          v29 = v28;
          v30 = OBJC_IVAR___SiriTTSSynthesisResource_version;
          swift_beginAccess();
          if (*&v29[v30])
          {
            v48 = v29;
            v31 = v49;
            ObjectType = swift_getObjectType();
            v32 = v31;
            v46 = sub_1B1ACC8C8();
            v34 = v33;
            v49 = v32;

            ObjectType = v20[1];
            *v20 = v46;
            v20[1] = v34;

            sub_1B1ACC580();

            __swift_storeEnumTagSinglePayload(v17, 0, 1, v8);
            v43 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile;
            swift_beginAccess();
            sub_1B1AD0BC4(v17, a1 + v43);
            swift_endAccess();
            sub_1B1AAE090(1, v44);

LABEL_3:
            v21 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile;
            swift_beginAccess();
            sub_1B1AAC040(a1 + v21, v14);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v8);
            v23 = v51;
            if (EnumTagSinglePayload)
            {
              return sub_1B1AAC0B0(v14);
            }

            sub_1B1AD0F78(v14, v10);
            sub_1B1AAC0B0(v14);
            *&v52 = a4;
            *(&v52 + 1) = v23;
            v35 = a4;

            SynthesisCacheFile.append(chunk:)(&v52);
            v36 = v52;

            return sub_1B1ACD41C(v10);
          }
        }

        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1B1C2D538();
        v40 = MEMORY[0x1B27381B0](0xD000000000000044, 0x80000001B1C4D260);
        v41 = v49;
        *&v52 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0x90))(v40);
        v42 = sub_1B1C2D778();
        MEMORY[0x1B27381B0](v42);

        sub_1B1AC4B6C(v53, v54, 1);
      }
    }

    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1B1C2D538();
    v37 = MEMORY[0x1B27381B0](0xD00000000000003BLL, 0x80000001B1C4D220);
    v38 = v49;
    v53 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0x90))(v37);
    v39 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v39);

    sub_1B1AC4B6C(v55, v56, 1);
  }

  return result;
}

void sub_1B1AC5D40()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1(v0 + 112, v2);
  v3 = *(v0 + 112);
  v4 = *(v0 + 136);
  v5 = v3;
  OUTLINED_FUNCTION_7_13();

  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v6, v7, v8, v4);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC5DA4()
{
  sub_1B1AA61C0(0x664F656372756F73, &v20);
  if (v21)
  {
    OUTLINED_FUNCTION_0_8(v0, v1, v2, &type metadata for InstrumentationMetrics.SourceOfTTS, v3, v4, v5, v6, v16, v18);
    v7 = swift_dynamicCast();
    return OUTLINED_FUNCTION_5_5(v7, v8, v9, v10, v11, v12, v13, v14, v17, v19);
  }

  else
  {
    sub_1B1A9937C(&v20);
    return 0;
  }
}

uint64_t sub_1B1AC5E20()
{
  sub_1B1AA61C0(0x6E49676E696D6974, &v20);
  if (v21)
  {
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
    OUTLINED_FUNCTION_0_8(v0, v1, v2, v0, v3, v4, v5, v6, v16, v18);
    v7 = swift_dynamicCast();
    return OUTLINED_FUNCTION_4_5(v7, v8, v9, v10, v11, v12, v13, v14, v17, v19);
  }

  else
  {
    sub_1B1A9937C(&v20);
    return 0;
  }
}

uint64_t sub_1B1AC5EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1B1A8E474(0, &qword_1EB760F80, off_1E7AF1A70);
  v3 = sub_1B1C2CE78();

  v2(v3);
}

uint64_t sub_1B1AC5F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v10 = sub_1B1A9547C();
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v12 = v10;
      v36[0] = MEMORY[0x1E69E7CC0];
      sub_1B1C2D5B8();
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_20;
      }

      v34 = a4;
      v35 = a5;
      type metadata accessor for NSRangeUtil();
      swift_getObjectType();
      v13 = 0;
      v14 = a1 & 0xC000000000000001;
      v15 = a1;
      do
      {
        if (v14)
        {
          v16 = MEMORY[0x1B2738A20](v13, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v13 + 32);
        }

        v17 = v16;
        ++v13;
        [v16 startTime];
        v18 = [v17 textRange];
        v20 = v19;
        v21 = SynthesizingRequestProtocol.text.getter();
        static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v18, v20, v21, v22);

        v23 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
        WordTimingInfo.init(startTiming:textRange:)();

        sub_1B1C2D588();
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
        a1 = v15;
      }

      while (v12 != v13);
      v11 = v36[0];
      a5 = v35;
    }

    swift_beginAccess();

    sub_1B1AC32FC(v24);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);

    v26 = sub_1B1C2C888();
    v27 = sub_1B1C2D098();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315138;
      v30 = type metadata accessor for WordTimingInfo();
      v31 = MEMORY[0x1B2738350](v11, v30);
      v33 = sub_1B1A930E4(v31, v32, v36);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1B1A8A000, v26, v27, "Received word timings: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1B2739FD0](v29, -1, -1);
      MEMORY[0x1B2739FD0](v28, -1, -1);
    }

    if (!*(a5 + 48))
    {
    }

    if (qword_1ED9A4DA0 == -1)
    {
LABEL_16:
      sub_1B1AC4DD4();
    }

LABEL_20:
    swift_once();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B1AC62D8(void *a1)
{
  v2 = [a1 primaryLanguage];
  v3 = sub_1B1C2CB58();
  v5 = v4;

  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x98))();
  v8 = static TTSAsset.brand(forLanguage:name:)(v3, v5, v6, v7);

  return v8;
}

uint64_t sub_1B1AC638C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v4, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_1B1AC6418(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v11 = v27;
    v12 = v26;
    if (v28 != 1)
    {
      LOBYTE(v30[0]) = v26;
      v30[1] = v27;
      v30[2] = v28;
      a3(v30);

      return;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 1;
  }

  sub_1B1AAA204(v12, v11, 1);
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v13 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v13, qword_1ED9A9120);
  (*(v7 + 16))(v9, a1, v6);
  v14 = a2;
  v15 = sub_1B1C2C888();
  v16 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30[0] = v18;
    *v17 = 136315650;
    v19 = sub_1B1C2CB58();
    v21 = sub_1B1A930E4(v19, v20, v30);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1B1A930E4(0x726F727245535454, 0xE800000000000000, v30);
    *(v17 + 22) = 2080;
    sub_1B1C2BED8();
    sub_1B1A90C78(v29, &qword_1EB761DE0, &qword_1B1C352C0);
    v29[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
    v22 = sub_1B1C2CBD8();
    v24 = v23;
    (*(v7 + 8))(v9, v6);
    v25 = sub_1B1A930E4(v22, v24, v30);

    *(v17 + 24) = v25;
    _os_log_impl(&dword_1B1A8A000, v15, v16, "Event '%s' expect associated object as %s, got: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v18, -1, -1);
    MEMORY[0x1B2739FD0](v17, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

_BYTE *sub_1B1AC67A8(_BYTE *result, uint64_t a2)
{
  if ((*result & 0xFE) == 0xA)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1B1AC4B6C(0xD000000000000024, 0x80000001B1C4D330, 1);
    }
  }

  return result;
}

uint64_t sub_1B1AC6860(char *a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  OUTLINED_FUNCTION_65(a2 + 16, v11);
  result = swift_weakLoadStrong();
  if (result)
  {
    v8[0] = v4;
    v9 = v5;
    v10 = v6;
    a3(v8);
  }

  return result;
}

void sub_1B1AC68DC(char *a1)
{
  v2 = *(v1 + 72);
  v3 = qword_1B1C39968[*a1];
  v4 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  OUTLINED_FUNCTION_66_0(v2 + OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode, v6);
  *(v2 + v4) = v3;
  OUTLINED_FUNCTION_66_0(v2 + OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues, &v5);
  sub_1B1AA149C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_8_20();
}

uint64_t sub_1B1AC696C(char *a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  OUTLINED_FUNCTION_65(a2 + 16, v11);
  result = swift_weakLoadStrong();
  if (result)
  {
    v8[0] = v4;
    v9 = v5;
    v10 = v6;
    a3(v8);
  }

  return result;
}

uint64_t sub_1B1AC6A84(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x636972656E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x636972656E6567;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x656E6F685069;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1685016681;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 3158381;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x58416C617275656ELL;
      break;
    case 5:
      v5 = 0x6267385F333168;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x656E6F685069;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1685016681;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 3158381;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x58416C617275656ELL;
      break;
    case 5:
      v2 = 0x6267385F333168;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_6(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1B1AC6C24()
{
  v108 = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C1C8();
  v82 = *(v0 - 8);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = (v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v1);
  v80 = v71 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v71 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v81 = v71 - v9;
  if (qword_1ED9A9588 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v10 = qword_1ED9AA640;
    v11 = sub_1B1BE34F8(0x696F567465737341, 0xEB00000000736563, 0x7473696C70, 0xE500000000000000, qword_1ED9AA640);
    if (!v11)
    {
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v12 = v11;
    sub_1B1C2C168();

    v13 = *(v82 + 32);
    v79 = v0;
    v13(v81, v8, v0);
    v14 = sub_1B1C2C208();
    v16 = v15;
    v17 = objc_opt_self();
    v74 = v14;
    v78 = v16;
    v18 = sub_1B1C2C298();
    v102[0] = 0;
    v19 = [v17 propertyListWithData:v18 options:0 format:0 error:v102];

    v20 = v102[0];
    if (!v19)
    {
      v69 = v20;
      sub_1B1C2C058();

      swift_willThrow();
      goto LABEL_58;
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v101, v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F8, &unk_1B1C39828);
    swift_dynamicCast();
    v77 = v98;
    v21 = sub_1B1BE34F8(0xD000000000000016, 0x80000001B1C4F640, 0x7473696C70, 0xE500000000000000, v10);
    if (!v21)
    {
      goto LABEL_54;
    }

    v22 = v21;
    sub_1B1C2C168();

    v13(v80, v3, v79);
    v23 = sub_1B1C2C208();
    v73 = v24;
    v8 = sub_1B1C2C298();
    v102[0] = 0;
    v25 = [v17 propertyListWithData:v8 options:0 format:0 error:v102];

    v26 = v102[0];
    if (!v25)
    {
      break;
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v100, v102);
    swift_dynamicCast();
    v91 = v98;
    v75 = MEMORY[0x1E69E7CC0];
    v94 = MEMORY[0x1E69E7CC0];
    v27 = v77;
    v28 = v77 + 64;
    v29 = 1 << *(v77 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v0 = v30 & *(v77 + 64);
    v3 = ((v29 + 63) >> 6);

    v31 = 0;
    v32 = v78;
    v88 = v3;
    v84 = v28;
LABEL_9:
    if (v0)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v3)
      {

        sub_1B1A94524(v74, v32);
        sub_1B1A94524(v23, v73);

        __swift_destroy_boxed_opaque_existential_0(v100);
        v66 = *(v82 + 8);
        v67 = v79;
        v66(v80, v79);
        __swift_destroy_boxed_opaque_existential_0(v101);
        v66(v81, v67);

        return v75;
      }

      v0 = *(v28 + 8 * v33);
      ++v31;
      if (v0)
      {
        v31 = v33;
LABEL_14:
        v34 = __clz(__rbit64(v0)) | (v31 << 6);
        v35 = *(v27 + 56);
        v36 = (*(v27 + 48) + 16 * v34);
        v37 = v36[1];
        *&v92 = *v36;
        *(&v92 + 1) = v37;
        v8 = *(v35 + 8 * v34);
        v38 = qword_1EB7614A0;

        if (v38 != -1)
        {
          swift_once();
        }

        v0 &= v0 - 1;
        if ((byte_1ED9AA5A8 & 1) == 0)
        {
          v98 = v92;
          *&v96 = 0x2D54502D7470;
          *(&v96 + 1) = 0xE600000000000000;
          sub_1B1A8EDAC();
          if (sub_1B1C2D3D8())
          {

            v3 = v88;
            goto LABEL_9;
          }
        }

        v39 = *(v91 + 16);

        if (!v39)
        {
          goto LABEL_43;
        }

        v40 = sub_1B1A8EB10();
        if ((v41 & 1) == 0)
        {
          goto LABEL_43;
        }

        v72 = v23;
        v3 = *(*(v91 + 56) + 8 * v40);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v8;
        sub_1B1AA0B44(v102, v3, sub_1B1AA0B88, 0);
        v87 = v102[0];
        v83 = v102[1];
        v42 = v104;
        v43 = v8;
        v8 = v105;
        v85 = v106;
        v86 = v107;
        v71[0] = v103;
        v71[1] = v3;
        v76 = (v103 + 64) >> 6;

        v71[2] = v43;
        while (2)
        {
          v89 = v42;
          v44 = v8;
          if (!v8)
          {
            v45 = v89;
            do
            {
              v42 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                goto LABEL_49;
              }

              if (v42 >= v76)
              {
                goto LABEL_41;
              }

              v44 = v83[v42];
              ++v45;
            }

            while (!v44);
          }

          v46 = __clz(__rbit64(v44)) | (v42 << 6);
          v47 = (v87[6] + 16 * v46);
          v49 = *v47;
          v48 = v47[1];
          sub_1B1A93378(v87[7] + 32 * v46, v95);
          *&v96 = v49;
          *(&v96 + 1) = v48;
          sub_1B1A9EEE0(v95, v97);
          v50 = v96;

          if (!*(&v50 + 1))
          {
LABEL_41:
            memset(v99, 0, sizeof(v99));
            v98 = 0u;
LABEL_42:
            sub_1B1A9D350(v87);

            v27 = v77;
            v32 = v78;
            v23 = v72;
LABEL_43:
            v64 = objc_allocWithZone(type metadata accessor for TTSAssetUAFVoiceAsset(0));
            v8 = sub_1B1AC960C();

            v28 = v84;
            v3 = v88;
            if (v8)
            {
              MEMORY[0x1B2738320](v65);
              if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B1C2CE98();
              }

              sub_1B1C2CEC8();
              v75 = v94;
              v3 = v88;
            }

            goto LABEL_9;
          }

          v95[0] = v50;
          v95[1] = v97[0];
          v95[2] = v97[1];
          v85(&v98, v95);
          sub_1B1A90C78(v95, &qword_1EB762900, &qword_1B1C39838);
          v51 = *(&v98 + 1);
          if (!*(&v98 + 1))
          {
            goto LABEL_42;
          }

          v52 = v98;
          sub_1B1A9EEE0(v99, &v96);
          v89 = v52;
          v3 = v43;
          v8 = sub_1B1A8EB10();
          v54 = v43[2];
          v55 = (v53 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_50;
          }

          v57 = v53;
          if (v43[3] >= v56)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v53 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
              v3 = &v93;
              sub_1B1C2D638();
              if ((v57 & 1) == 0)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            sub_1B1AC891C(v56, isUniquelyReferenced_nonNull_native & 1);
            v3 = v93;
            v58 = sub_1B1A8EB10();
            if ((v57 & 1) != (v59 & 1))
            {
              sub_1B1C2D818();
              __break(1u);
              goto LABEL_58;
            }

            v8 = v58;
            if ((v57 & 1) == 0)
            {
LABEL_33:
              v43 = v93;
              v93[(v8 >> 6) + 8] |= 1 << v8;
              v60 = (v43[6] + 16 * v8);
              *v60 = v89;
              v60[1] = v51;
              sub_1B1A9EEE0(&v96, (v43[7] + 32 * v8));
              v61 = v43[2];
              v62 = __OFADD__(v61, 1);
              v63 = v61 + 1;
              if (v62)
              {
                goto LABEL_51;
              }

              v43[2] = v63;
              goto LABEL_38;
            }
          }

          v43 = v93;
          v3 = (v93[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_0(v3);
          sub_1B1A9EEE0(&v96, v3);
LABEL_38:
          v8 = (v44 - 1) & v44;
          isUniquelyReferenced_nonNull_native = 1;
          continue;
        }
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v70 = v26;
  sub_1B1C2C058();

  swift_willThrow();
LABEL_58:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B1AC763C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v69 = v2;
  v70 = v3;
  v72 = v4;
  sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v67 = v6;
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v66 = v8 - v7;
  sub_1B1C2D118();
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v65 = v11 - v10;
  v12 = sub_1B1C2C9D8();
  v13 = OUTLINED_FUNCTION_23(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  OUTLINED_FUNCTION_23(v14);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762460, &unk_1B1C37E30);
  swift_allocObject();
  v19 = sub_1B1B2A370();
  v71 = v18;
  *&v0[v18] = v19;
  v20 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path];
  v21 = sub_1B1C2C1C8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v21);
  *v20 = 0;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762790, &unk_1B1C38A70);
  OUTLINED_FUNCTION_23(v23);
  bzero(&v20[v22], *(v24 + 64));
  v63 = v22;
  v64 = v20;
  sub_1B1B480BC(v17, &v20[v22]);
  v25 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
  *v25 = 0;
  v25[4] = 1;
  v26 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
  *v26 = 0;
  v26[4] = 0;
  v27 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_progressQueue;
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1B1AADE74(&qword_1ED9A9720, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AA624C(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440, MEMORY[0x1E69E6328]);
  sub_1B1C2D418();
  (*(v67 + 104))(v66, *MEMORY[0x1E69E8090], v68);
  v29 = v69;
  v30 = sub_1B1C2D158();
  v68 = v28;
  *&v0[v28] = v30;
  v31 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDownloadSize];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = (v31 + 8);
  v33 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDiskSize;
  *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDiskSize] = 0;
  *&v0[v33 + 8] = 0;
  v34 = &v0[v33 + 8];
  v35 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = (v35 + 8);
  v37 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId];
  *v37 = 0;
  *(v37 + 2) = 0;
  *(v37 + 1) = 0;
  v38 = (v37 + 8);

  v39 = sub_1B1AC7E40(v72, v29);
  if (!v40)
  {
LABEL_12:

    sub_1B1A90C20(&v64[v63], &unk_1EB761F00, &qword_1B1C36480);

    OUTLINED_FUNCTION_58_3(v32);
    OUTLINED_FUNCTION_58_3(v34);
    sub_1B1A90C20(v36, &qword_1EB762788, &qword_1B1C38A68);
    sub_1B1A90C20(v38, &qword_1EB761D78, &qword_1B1C38F90);
    type metadata accessor for TTSAssetUAFAsset(0);
    swift_deallocPartialClassInstance();
    goto LABEL_13;
  }

  v42 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  *v42 = v39;
  v42[1] = v40;
  v42[2] = v41;
  v43 = v70;
  v44 = sub_1B1B42D78(0x7A69537465737361, 0xE900000000000065, v70);
  if (v45)
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v46 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v46, qword_1ED9A9120);

    v47 = sub_1B1C2C888();
    v48 = sub_1B1C2D0D8();

    v70 = v47;
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      LODWORD(v67) = v48;
      v51 = v50;
      v74 = v50;
      *v49 = 136315138;
      v52 = sub_1B1A930E4(v72, v29, &v74);

      *(v49 + 4) = v52;
      v53 = v70;
      _os_log_impl(&dword_1B1A8A000, v70, v67, "Unavailable UAF asset for this device: %s.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

    goto LABEL_12;
  }

  v54 = v44;

  v74 = v54;

  v55 = sub_1B1C2D778();
  v56 = MEMORY[0x1E69E6158];
  v76 = MEMORY[0x1E69E6158];
  v74 = v55;
  v75 = v57;
  sub_1B1AC965C(&v74, 0x7A69537465737361, 0xE900000000000065);

  v58 = sub_1B1B42D78(0x657A69536B736964, 0xE800000000000000, v43);
  if ((v59 & 1) == 0)
  {
    v74 = v58;

    v60 = sub_1B1C2D778();
    v76 = v56;
    v74 = v60;
    v75 = v61;
    sub_1B1AC965C(&v74, 0x657A69536B736964, 0xE800000000000000);
  }

  sub_1B1A93AEC(0x65676175676E614CLL, 0xE900000000000073, v43);
  sub_1B1AC965C(&v74, 0x65676175676E614CLL, 0xE900000000000073);

  sub_1B1A93AEC(0x7265646E6567, 0xE600000000000000, v43);

  sub_1B1AC965C(&v74, 0x7265646E6567, 0xE600000000000000);

  v62 = type metadata accessor for TTSAssetUAFAsset(0);
  v73.receiver = v1;
  v73.super_class = v62;
  objc_msgSendSuper2(&v73, sel_init);
LABEL_13:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1AC7E40(uint64_t a1, uint64_t a2)
{
  sub_1B1A8EDAC();
  v3 = sub_1B1C2D368();
  v4 = v3[2];
  if (v4 < 6)
  {

    v21 = sub_1B1C2D0C8();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
    }

    v22 = qword_1ED9AA670;
    if (!os_log_type_enabled(qword_1ED9AA670, v21))
    {
      goto LABEL_30;
    }

    v23 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_6_18(4.8149e-34, v12, v24, v25, v26, 46, 0xE100000000000000, v12, a2);
    OUTLINED_FUNCTION_13_17();
    *(v23 + 4) = a1;
    v16 = "Factor %s does not have expected prefix.";
    goto LABEL_17;
  }

  v5 = v3[12];
  v6 = v3[13];
  v7 = v5 == 0x6563696F76 && v6 == 0xE500000000000000;
  if (v7 || (sub_1B1C2D7A8() & 1) != 0)
  {
    if (v4 != 9)
    {
      v8 = 9;
      goto LABEL_9;
    }

    return a1;
  }

  v27 = v5 == 0x656372756F736572 && v6 == 0xE800000000000000;
  if (!v27 && (sub_1B1C2D7A8() & 1) == 0)
  {

    v21 = sub_1B1C2D0C8();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
    }

    v22 = qword_1ED9AA670;
    if (!os_log_type_enabled(qword_1ED9AA670, v21))
    {
      goto LABEL_30;
    }

    v23 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_6_18(4.8149e-34, v12, v28, v29, v30, 46, 0xE100000000000000, v12, a2);
    OUTLINED_FUNCTION_13_17();
    *(v23 + 4) = a1;
    v16 = "Encountered entirely unexpected factor %s.";
LABEL_17:
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = 12;
    goto LABEL_18;
  }

  if (v4 != 6)
  {
    v8 = 6;
LABEL_9:

    v9 = sub_1B1C2D0C8();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
    }

    v10 = qword_1ED9AA670;
    if (os_log_type_enabled(qword_1ED9AA670, v9))
    {
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_6_18(4.8151e-34, v12, v13, v14, v15, 46, 0xE100000000000000, v12, a2);
      OUTLINED_FUNCTION_13_17();
      *(v11 + 4) = a1;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v8;
      v16 = "Factor %s does not have %ld components as expected.";
      v17 = v9;
      v18 = v10;
      v19 = v11;
      v20 = 22;
LABEL_18:
      _os_log_impl(&dword_1B1A8A000, v18, v17, v16, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
      return 0;
    }

LABEL_30:

    return 0;
  }

  return a1;
}

void sub_1B1AC8160()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
  if (v1[2] < 9uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v2 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr;
  v3 = v1[20];
  v4 = v1[21];
  v5 = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69E6158];
  *&v67 = v3;
  *(&v67 + 1) = v4;

  sub_1B1AC965C(&v67, 0x6E697270746F6F46, 0xE900000000000074);

  if (v1[2] < 8uLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = v1[18];
  v7 = v1[19];
  v68 = v5;
  *&v67 = v6;
  *(&v67 + 1) = v7;

  sub_1B1AC965C(&v67, 1701869908, 0xE400000000000000);

  if (v1[2] < 7uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v1[17];
  *&v67 = v1[16];
  *(&v67 + 1) = v8;
  *&v63 = 95;
  *(&v63 + 1) = 0xE100000000000000;
  v65 = 45;
  v66 = 0xE100000000000000;
  v9 = sub_1B1A8EDAC();

  v47 = v9;
  v48 = v9;
  v45 = v5;
  v46 = v9;
  OUTLINED_FUNCTION_4();
  v10 = sub_1B1C2D398();
  v68 = v5;
  *&v67 = v10;
  *(&v67 + 1) = v11;
  sub_1B1AC965C(&v67, 1701667150, 0xE400000000000000);

  v54 = v0;
  v55 = v2;

  sub_1B1AB9288();

  v12 = v68;
  sub_1B1A90C20(&v67, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B1C361C0;
    if (v1[2] < 6uLL)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v14 = v13;
    v15 = v1[15];
    *(v13 + 32) = v1[14];
    *(v13 + 40) = v15;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    *&v67 = v14;

    sub_1B1AC965C(&v67, 0x65676175676E614CLL, 0xE900000000000073);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 1634886004;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1851878753;
  *(inited + 56) = 0xE400000000000000;
  v17 = v1[16];
  v18 = v1[17];
  v56 = v1;
  *&v67 = v17;
  *(&v67 + 1) = v18;
  *&v63 = 95;
  *(&v63 + 1) = 0xE100000000000000;
  v65 = 45;
  v66 = 0xE100000000000000;
  v48 = v9;
  v45 = v5;
  v46 = v9;
  OUTLINED_FUNCTION_4();
  sub_1B1C2D398();
  v19 = sub_1B1C2CBE8();
  v21 = v20;

  *&v67 = v19;
  *(&v67 + 1) = v21;
  MEMORY[0x1EEE9AC00](v22);
  v47 = &v67;
  v23 = sub_1B1ABAA5C(sub_1B1ABAB38, &v45, inited);
  v53 = 0;
  swift_setDeallocating();
  sub_1B1AC9708();

  if (!v23)
  {
LABEL_21:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v24 = *(v54 + v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1B1C361C0;
  v51 = v25;
  *(v25 + 32) = 0x65676175676E614CLL;
  *(v25 + 40) = 0xE900000000000073;

  v52 = v24;
  sub_1B1AB9288();
  if (v64)
  {
    sub_1B1A9EEE0(&v63, &v67);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    swift_dynamicCast();
    v26 = 0;
    v27 = v62;
    v55 = *(v62 + 16);
    v28 = v62 + 40;
    v54 = MEMORY[0x1E69E7CC0];
    v49 = v62 + 40;
LABEL_10:
    for (i = (v28 + 16 * v26); ; i += 2)
    {
      if (v55 == v26)
      {

        v41 = v51;
        *(v51 + 72) = v50;
        *(v41 + 48) = v54;
        sub_1B1C2CAB8();
        v42 = v52;
        os_unfair_lock_lock(v52 + 4);

        OUTLINED_FUNCTION_5_8();
        sub_1B1B479F4(v43, v44, 0, &v42[6]);
        os_unfair_lock_unlock(v42 + 4);

        goto LABEL_21;
      }

      if (v26 >= *(v27 + 16))
      {
        break;
      }

      v30 = *(i - 1);
      v31 = *i;
      v32 = v56[17];
      v65 = v56[16];
      v66 = v32;
      v59 = 95;
      v60 = 0xE100000000000000;
      v57 = 45;
      v58 = 0xE100000000000000;

      v47 = v9;
      v48 = v9;
      v46 = v9;
      v45 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_4();
      sub_1B1C2D398();
      v33 = sub_1B1C2CBE8();
      v35 = v34;

      v36 = sub_1B1AC974C(v33, v35, v30, v31);

      if (v36)
      {
        v37 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B1AC9FA8();
          v37 = v61;
        }

        v39 = *(v37 + 16);
        if (v39 >= *(v37 + 24) >> 1)
        {
          sub_1B1AC9FA8();
          v37 = v61;
        }

        ++v26;
        *(v37 + 16) = v39 + 1;
        v54 = v37;
        v40 = v37 + 16 * v39;
        *(v40 + 32) = v30;
        *(v40 + 40) = v31;
        v28 = v49;
        goto LABEL_10;
      }

      ++v26;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1B1AC87D4(uint64_t a1, char a2, _BYTE *a3)
{
  v7[3] = &type metadata for TTSFeatureFlags.FFKey;
  v7[4] = sub_1B1AC8844();
  LOBYTE(v7[0]) = a2;
  v5 = sub_1B1C2C4E8();
  result = __swift_destroy_boxed_opaque_existential_0(v7);
  *a3 = v5 & 1;
  return result;
}

unint64_t sub_1B1AC8844()
{
  result = qword_1ED9A9730;
  if (!qword_1ED9A9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A9730);
  }

  return result;
}

uint64_t sub_1B1AC891C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
  v33 = v4;
  result = sub_1B1C2D698();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1B1ADFF70(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_1B1A9EEE0(v22, v34);
    }

    else
    {
      sub_1B1A93378(v22, v34);
    }

    sub_1B1C2D888();
    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1B1A9EEE0(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B1AC8BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v7 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))();
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v8 = qword_1ED9A9980;
  v9 = sub_1B1C2D248();

  if (v9)
  {
    a3 = a1;
  }

  else
  {
    if (qword_1ED9A8DC8 != -1)
    {
      swift_once();
    }

    v10 = off_1ED9A8DD0;
    if (*(off_1ED9A8DD0 + 2))
    {
      v11 = sub_1B1A8EB10();
      if (v12)
      {
        a3 = *(v10[7] + 16 * v11);
      }
    }
  }

  return a3;
}

id sub_1B1AC8D50()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C(0xD000000000000030, v0);
  qword_1ED9A9980 = result;
  return result;
}

uint64_t static TTSAsset.brand(forLanguage:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (qword_1ED9A8F68 != -1)
  {
    swift_once();
  }

  if (sub_1B1A93A00(a1, a2, qword_1ED9AA5C0))
  {
    return 0;
  }

  sub_1B1A8EDAC();
  if (sub_1B1C2D3D8())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B1AC8E94()
{
  result = sub_1B1ACB6B8(&unk_1F28B8FE8);
  qword_1ED9AA5C0 = result;
  return result;
}

id sub_1B1AC8EBC()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C(0xD000000000000031, v0);
  qword_1ED9A97E0 = result;
  return result;
}

void *sub_1B1AC8F14()
{
  result = sub_1B1C2CAB8();
  off_1ED9A8DD0 = result;
  return result;
}

uint64_t sub_1B1AC8F78()
{
  v9 = sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v5 = v4 - v3;
  v6 = sub_1B1C2D118();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v7 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_16();
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  sub_1B1A979CC(&qword_1ED9A9720, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v9);
  result = sub_1B1C2D158();
  qword_1EB772D00 = result;
  return result;
}