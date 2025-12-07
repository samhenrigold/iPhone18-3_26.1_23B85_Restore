void sub_1D4F593CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v71 = a4;
  v70 = a6;
  sub_1D5615C18();
  OUTLINED_FUNCTION_4();
  v73 = v13;
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v67 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_135();
  v68 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  v69 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v75 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v76 = v25;
  v77 = v24;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v66 - v29;
  v78 = a7;
  OUTLINED_FUNCTION_31_4(a7, 1);
  if (dynamic_cast_existential_1_conditional(a5, a5, MEMORY[0x1E6976660]))
  {
    sub_1D5614C58();
    if (!v7)
    {
      v58 = OUTLINED_FUNCTION_14_16();
      v59(v58);
      (*(a7 + 32))(a5, v30, a1);
      return;
    }

    v72 = a1;
    v31 = a2;
  }

  else
  {
    type metadata accessor for MusicRequestConfiguration(0);
    OUTLINED_FUNCTION_3_19();
    sub_1D4F5A440(v32, v33, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D5614C08();
    if (!v7)
    {
      v62 = OUTLINED_FUNCTION_14_16();
      v63(v62);

      (*(a7 + 32))(a5, v28, a1);
      return;
    }

    v72 = a1;
    v31 = a2;
  }

  v80 = v7;
  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v35 = v74;
  v36 = swift_dynamicCast();
  v37 = v75;
  if (v36)
  {

    v38 = v73;
    (*(v73 + 32))(v37, v23, v35);
    v39 = *(v38 + 16);
    v40 = v69;
    v39(v69, v37, v35);
    v41 = OUTLINED_FUNCTION_21_1();
    if (v42(v41) != *MEMORY[0x1E69E6AF8])
    {
      v60 = *(v38 + 8);
      v60(v37, v35);
      v61 = OUTLINED_FUNCTION_21_1();
      (v60)(v61);

      return;
    }

    v43 = OUTLINED_FUNCTION_21_1();
    v44(v43);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    sub_1D5615C08();
    OUTLINED_FUNCTION_24_0();
    (*(v46 + 8))(v40 + v45);
    if (qword_1EC7E90A8 != -1)
    {
      OUTLINED_FUNCTION_0_28();
      swift_once();
    }

    v47 = sub_1D560C758();
    __swift_project_value_buffer(v47, qword_1EC87C2B8);
    v48 = v68;
    v39(v68, v37, v35);
    v49 = v31;

    v50 = sub_1D560C738();
    v51 = sub_1D56156C8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v52 = 136315394;
      *(v52 + 4) = sub_1D4E6835C(v72, v49, &v79);
      *(v52 + 12) = 2080;
      v39(v67, v48, v35);
      v53 = sub_1D5614DB8();
      v55 = v54;
      v56 = OUTLINED_FUNCTION_15_19();
      v48(v56);
      v57 = sub_1D4E6835C(v53, v55, &v79);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_1D4E3F000, v50, v51, "Type mismatch for bag key %s: %s.", v52, 0x16u);
      swift_arrayDestroy();
      v37 = v75;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    else
    {

      v64 = OUTLINED_FUNCTION_15_19();
      v48(v64);
    }

    sub_1D4F48F20();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v65 = 2;
    swift_willThrow();
    (v48)(v37, v35);
  }

  (*(v76 + 8))(v78, v77);
}

uint64_t Bag.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void sub_1D4F59ACC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {

      sub_1D4F286E0();
    }
  }

  else if ((a4 & 1) == 0)
  {
    type metadata accessor for Bag.UnderlyingBagWrapper();
    [*(a1 + 16) isEqual_];
  }
}

void sub_1D4F59B44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1DA6EC0D0](1);

    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5615858();
  }
}

uint64_t sub_1D4F59BC0(uint64_t a1, char a2)
{
  sub_1D56162D8();
  if (a2)
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5615858();
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F59C84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D56162D8();
  sub_1D4F59B44(v5, v2, v3);
  return sub_1D5616328();
}

uint64_t sub_1D4F59D1C()
{
  sub_1D56162D8();
  sub_1D5615858();
  return sub_1D5616328();
}

uint64_t sub_1D4F59DB4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F59CF8(v2);
  return sub_1D5616328();
}

void static Bag.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static MusicRequestConfiguration.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for Bag(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = a2 + v4;
    v8 = *v7;
    v9 = *(v7 + 8);

    sub_1D4F59ACC(v5, v6, v8, v9);
  }
}

void Bag.hash(into:)(uint64_t a1)
{
  MusicRequestConfiguration.hash(into:)();
  type metadata accessor for Bag(0);
  OUTLINED_FUNCTION_24_10();
  if (*(v1 + 8))
  {
    MEMORY[0x1DA6EC0D0](1);

    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5615858();
  }
}

uint64_t Bag.hashValue.getter()
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  type metadata accessor for Bag(0);
  OUTLINED_FUNCTION_24_10();
  if (*(v0 + 8))
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5615858();
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F59F8C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  sub_1D4F59B44(v5, *(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8));
  return sub_1D5616328();
}

unint64_t sub_1D4F59FE8()
{
  result = qword_1EC7EC378;
  if (!qword_1EC7EC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC378);
  }

  return result;
}

uint64_t sub_1D4F5A0AC(uint64_t a1)
{
  result = type metadata accessor for MusicRequestConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Bag.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D4F5A21C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_1D4F5A25C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D4F5A2C0()
{
  result = qword_1EC7EC388;
  if (!qword_1EC7EC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC388);
  }

  return result;
}

unint64_t sub_1D4F5A37C()
{
  result = qword_1EC7EC3A0;
  if (!qword_1EC7EC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC3A0);
  }

  return result;
}

uint64_t sub_1D4F5A3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F5A440(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F5A490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRequestConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F5A530(void *a1)
{
  result = sub_1D56152D8();
  if (v2 <= 0x3F)
  {
    result = sub_1D56158D8();
    if (v3 <= 0x3F)
    {
      result = sub_1D56152D8();
      if (v4 <= 0x3F)
      {
        result = sub_1D4ECC7A8(319, &qword_1EC7EC448, off_1E84C0358);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t *sub_1D4F5A608(unint64_t *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = 23;
  if (!v6)
  {
    v10 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((result + v9 + 8) & ~v9, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return (EnumTagSinglePayload - 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *result;
      if (*result >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v11 = ((v10 + *(*(v4 - 8) + 64) + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = a2 - v8;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_27:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = (v8 + (v13 | v18) + 1);
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1D4F5A788(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    v15 = a3 - v11;
    if (((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v10 & 0x80000000) != 0)
          {
            v21 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v25 = a2 + 1;
              v26 = &a1[v12 + 8] & ~v12;

              __swift_storeEnumTagSinglePayload(v26, v25, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v22 = ~(-1 << (8 * v13));
              }

              else
              {
                v22 = -1;
              }

              if (v13)
              {
                v23 = v22 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v24 = v13;
                }

                else
                {
                  v24 = 4;
                }

                bzero(v21, v13);
                switch(v24)
                {
                  case 2:
                    *v21 = v23;
                    break;
                  case 3:
                    *v21 = v23;
                    v21[2] = BYTE2(v23);
                    break;
                  case 4:
                    *v21 = v23;
                    break;
                  default:
                    *v21 = v23;
                    break;
                }
              }
            }
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

            *a1 = v20;
          }
        }

        break;
    }
  }

  else
  {
    if (((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v11 + a2;
      bzero(a1, v14);
      *a1 = v19;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D4F5AA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v170 = a4;
  v168 = a3;
  v169 = a1;
  v164 = a2;
  v165 = a9;
  v166 = a12;
  v167 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v18);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4();
  v132 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_11_3(&v130 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v25);
  v143 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v162 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v29 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v32);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  OUTLINED_FUNCTION_4();
  v134 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_11_3(&v130 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v148 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v141 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v43 - v42);
  v146 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v145 = v44;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v46);
  OUTLINED_FUNCTION_1_0();
  v150 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_11_3(&v130 - v51);
  v52 = a6;
  v163 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v54 = v53;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v130 - v56;
  v155 = v52;
  OUTLINED_FUNCTION_1_0();
  v153 = v58;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v61 - v60);
  OUTLINED_FUNCTION_1_0();
  v63 = v62;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5();
  v67 = v66 - v65;
  v171[0] = a5;
  v171[1] = v52;
  v157 = a7;
  v171[2] = a7;
  v172 = v167;
  v173 = a11;
  v68 = type metadata accessor for MusicLibraryImportChangeRequest(0, v171);
  v69 = v68[20];
  v70 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  v71 = v165;
  *(v165 + v69) = v70;
  v160 = v63;
  (*(v63 + 16))(v67, v169, a8);
  v158 = v70;
  v154 = a5;
  v161 = a8;
  v72 = sub_1D5615318();
  *v71 = v72;
  v73 = v68[17];
  *&v167 = v54;
  v74 = *(v54 + 16);
  v76 = v163;
  v75 = v164;
  v74(v71 + v73, v164, v163);
  *(v71 + v68[18]) = v168;
  *(v71 + v68[19]) = v170;

  sub_1D4F5B780(v72, v68);
  v77 = v75;

  v74(v57, v75, v76);
  v78 = v155;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v155);
  v159 = v68;
  if (EnumTagSinglePayload == 1)
  {
    (*(v167 + 8))(v57, v76);
  }

  else
  {
    v80 = v153;
    v81 = v152;
    (*(v153 + 32))(v152, v57, v78);
    sub_1D4F5B9E4(v81, v68);
    (*(v80 + 8))(v81, v78);
  }

  v82 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v83 = sub_1D5615D38();

  v84 = v169;
  v85 = v162;
  v86 = v156;
  if (!*(v83 + 16))
  {
    v90 = v149;
    v87 = v161;
    sub_1D5615018();
    v91 = v154;
    if (__swift_getEnumTagSinglePayload(v90, 1, v154) == 1)
    {
      (*(v145 + 8))(v90, v146);
LABEL_19:
      v88 = v167;
      v89 = v159;
      goto LABEL_20;
    }

    v92 = v90;
    v93 = v150;
    v94 = v151;
    (*(v150 + 32))(v151, v92, v91);
    v168 = *(v93 + 16);
    v168(v144, v94, v91);
    v95 = v148;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v95);
      v96 = v141;
      v97 = OUTLINED_FUNCTION_11_21();
      v98(v97, v86, v95);
      v99 = v137;
      sub_1D5613AC8();
      v100 = v95;
      v101 = v138;
      if (__swift_getEnumTagSinglePayload(v99, 1, v138) != 1)
      {

        v112 = v134;
        v113 = v133;
        (*(v134 + 32))(v133, v99, v101);
        v114 = OUTLINED_FUNCTION_11_21();
        v115(v114, v113, v101);
        sub_1D4F5BEB8(&qword_1EC7EC460, &qword_1EC7EA4E8, &unk_1D561C470);
        v116 = sub_1D5614FB8();
        sub_1D526EBEC(v116);
        v83 = v117;

        (*(v112 + 8))(v113, v101);
        (*(v141 + 8))(v147, v100);
        v118 = OUTLINED_FUNCTION_2_14();
        v119(v118);
        v77 = v164;
        goto LABEL_19;
      }

      (*(v96 + 8))(v147, v100);
      sub_1D4E6C9CC(v99, &qword_1EC7EC458, &unk_1D5620CD0);
      v91 = v154;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v95);
      sub_1D4E6C9CC(v86, &qword_1EC7EEC30, &unk_1D5620CE0);
    }

    v102 = v151;
    v168(v140, v151, v91);
    v103 = v142;
    v104 = v143;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v103, 0, 1, v104);
      v105 = OUTLINED_FUNCTION_11_21();
      v106(v105, v103, v104);
      v107 = v135;
      sub_1D5614858();
      v108 = v136;
      v109 = __swift_getEnumTagSinglePayload(v107, 1, v136);
      v77 = v164;
      if (v109 == 1)
      {
        (*(v85 + 8))(v91, v104);
        v110 = OUTLINED_FUNCTION_2_14();
        v111(v110);
        sub_1D4E6C9CC(v107, &qword_1EC7EC450, &unk_1D5621060);
      }

      else
      {

        v120 = v132;
        v121 = v131;
        (*(v132 + 32))(v131, v107, v108);
        v122 = OUTLINED_FUNCTION_11_21();
        v123(v122, v121, v108);
        sub_1D4F5BEB8(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
        v124 = sub_1D5614FB8();
        sub_1D526EC0C(v124);
        v83 = v125;

        (*(v120 + 8))(v121, v108);
        (*(v162 + 8))(v139, v104);
        v126 = OUTLINED_FUNCTION_2_14();
        v127(v126);
      }
    }

    else
    {
      (*(v150 + 8))(v102, v91);
      __swift_storeEnumTagSinglePayload(v103, 1, 1, v104);
      sub_1D4E6C9CC(v103, &unk_1EC7F1990, &unk_1D561CEF0);
      v77 = v164;
    }

    v82 = v163;
    goto LABEL_19;
  }

  v87 = v161;
  v88 = v167;
  v89 = v159;
LABEL_20:
  sub_1D4F5BC74(v83, v89);

  v128 = v158;
  [v158 setShouldLibraryAdd_];

  (*(v88 + 8))(v77, v82);
  return (*(v160 + 8))(v84, v87);
}

void sub_1D4F5B780(uint64_t a1, uint64_t a2)
{
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  v5 = sub_1D5615EE8();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v15[5] = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v8 = v6 + 32;
      do
      {
        sub_1D4E628D4(v8, v15);
        __swift_project_boxed_opaque_existential_1(v15, v15[3]);
        v9 = OUTLINED_FUNCTION_8_24();
        v10(v9);
        OUTLINED_FUNCTION_13_23();
        v11 = OUTLINED_FUNCTION_10_19();
        v12(v11);
        __swift_destroy_boxed_opaque_existential_1(v15);
        sub_1D5615C88();
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v8 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {
    }

    v13 = *(v2 + *(a2 + 80));
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v14 = sub_1D5615158();

    [v13 setModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D4F5B9E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D56131C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](v8);
  (*(v13 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v18, v20);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v7 + 104))(v10, *MEMORY[0x1E6976988], v6);
    v16 = sub_1D5159364(v10, v14, v15);
    (*(v7 + 8))(v10, v6);
    [*(v3 + *(a2 + 80)) setReferralObject_];

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1D4E6C9CC(v18, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D4F5BC74(uint64_t a1, uint64_t a2)
{
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  sub_1D555A4A8();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v15[5] = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v8 = v6 + 32;
      do
      {
        sub_1D4E628D4(v8, v15);
        __swift_project_boxed_opaque_existential_1(v15, v15[3]);
        v9 = OUTLINED_FUNCTION_8_24();
        v10(v9);
        OUTLINED_FUNCTION_13_23();
        v11 = OUTLINED_FUNCTION_10_19();
        v12(v11);
        __swift_destroy_boxed_opaque_existential_1(v15);
        sub_1D5615C88();
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v8 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {
    }

    v13 = *(v2 + *(a2 + 80));
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v14 = sub_1D5615158();

    [v13 setRelatedModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D4F5BEB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t RadioShow.editorialArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v8);
  result = sub_1D5614AE8();
  if (result)
  {
    sub_1D4ED06C8(0xD000000000000011, 0x80000001D567FAA0, result, v1);

    v10 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v10, v11, v12, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v14);
    if (v15)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v18 = OUTLINED_FUNCTION_11_22();
      v19 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v16 = OUTLINED_FUNCTION_16_2();
      v18 = v17(v16);
      v19 = 0;
    }

    v20 = OUTLINED_FUNCTION_9_21(v18, v19);
    return OUTLINED_FUNCTION_21_16(v20, v21, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

void sub_1D4F5C120()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_6_5();
  v15 = OUTLINED_FUNCTION_2_15(v14);
  v16 = v2(v15);
  if (v16)
  {
    sub_1D4ED06C8(v6, v4, v16, v0);

    v17 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v17, v18, v19, v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v21);
    if (v22)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v8, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v25 = OUTLINED_FUNCTION_11_22();
      v26 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v0, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v8, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v23 = OUTLINED_FUNCTION_16_2();
      v25 = v24(v23);
      v26 = 0;
    }

    v27 = OUTLINED_FUNCTION_9_21(v25, v26);
    OUTLINED_FUNCTION_21_16(v27, v28, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5C2FC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v9);
  if (qword_1EDD54250 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v10 = OUTLINED_FUNCTION_23_17(&qword_1EDD59300);
  OUTLINED_FUNCTION_5_18(v10);
  if (v23)
  {
    OUTLINED_FUNCTION_15_20();

    v11 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v11, v12, v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v15);
    if (v16)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = OUTLINED_FUNCTION_11_22();
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v17 = OUTLINED_FUNCTION_16_2();
      v19 = v18(v17);
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_9_21(v19, v20);
    OUTLINED_FUNCTION_21_16(v21, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F5C564@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v6 = OUTLINED_FUNCTION_22(v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = sub_1D56140F8();
  OUTLINED_FUNCTION_2_15(v12);
  result = type metadata accessor for EditorialCard(0);
  if (*(v1 + *(result + 28)))
  {
    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED06C8(v14, v15, v16, v17);
    sub_1D4ED3750(v11, v9, &qword_1EC7EB5B8, &unk_1D56206A0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v18) == 1)
    {
      sub_1D4E7661C(v11, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = sub_1D4E7661C(v9, &qword_1EC7EB5B8, &unk_1D56206A0);
      v20 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v11, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0();
      v19 = (*(v21 + 8))(v9, v18);
      v20 = 0;
    }

    v22 = OUTLINED_FUNCTION_9_21(v19, v20);
    return OUTLINED_FUNCTION_21_16(v22, v23, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

void sub_1D4F5C79C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v9);
  if (qword_1EDD53FE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  v10 = OUTLINED_FUNCTION_23_17(&qword_1EC7EB3D0);
  OUTLINED_FUNCTION_5_18(v10);
  if (v23)
  {
    OUTLINED_FUNCTION_15_20();

    v11 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v11, v12, v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v15);
    if (v16)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = OUTLINED_FUNCTION_11_22();
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v17 = OUTLINED_FUNCTION_16_2();
      v19 = v18(v17);
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_9_21(v19, v20);
    OUTLINED_FUNCTION_21_16(v21, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5CA04()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v9);
  if (qword_1EC7E8E68 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v10 = OUTLINED_FUNCTION_23_17(&qword_1EC7EC498);
  OUTLINED_FUNCTION_5_18(v10);
  if (v23)
  {
    OUTLINED_FUNCTION_15_20();

    v11 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v11, v12, v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v15);
    if (v16)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = OUTLINED_FUNCTION_11_22();
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v17 = OUTLINED_FUNCTION_16_2();
      v19 = v18(v17);
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_9_21(v19, v20);
    OUTLINED_FUNCTION_21_16(v21, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5CC6C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v9);
  if (qword_1EDD53ED0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v10 = OUTLINED_FUNCTION_23_17(&qword_1EC7EC488);
  OUTLINED_FUNCTION_5_18(v10);
  if (v23)
  {
    OUTLINED_FUNCTION_15_20();

    v11 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v11, v12, v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v15);
    if (v16)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = OUTLINED_FUNCTION_11_22();
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v17 = OUTLINED_FUNCTION_16_2();
      v19 = v18(v17);
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_9_21(v19, v20);
    OUTLINED_FUNCTION_21_16(v21, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5CED4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v9);
  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v10 = OUTLINED_FUNCTION_23_17(&qword_1EC7EC4A0);
  OUTLINED_FUNCTION_5_18(v10);
  if (v23)
  {
    OUTLINED_FUNCTION_15_20();

    v11 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v11, v12, v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v15);
    if (v16)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = OUTLINED_FUNCTION_11_22();
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v17 = OUTLINED_FUNCTION_16_2();
      v19 = v18(v17);
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_9_21(v19, v20);
    OUTLINED_FUNCTION_21_16(v21, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5D13C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v9);
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v10 = OUTLINED_FUNCTION_23_17(&qword_1EC7EA3C8);
  OUTLINED_FUNCTION_5_18(v10);
  if (v23)
  {
    OUTLINED_FUNCTION_15_20();

    v11 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v11, v12, v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v15);
    if (v16)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = OUTLINED_FUNCTION_11_22();
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v17 = OUTLINED_FUNCTION_16_2();
      v19 = v18(v17);
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_9_21(v19, v20);
    OUTLINED_FUNCTION_21_16(v21, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5D3A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v9);
  if (qword_1EC7E91A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v10 = OUTLINED_FUNCTION_23_17(&qword_1EC7EC490);
  OUTLINED_FUNCTION_5_18(v10);
  if (v23)
  {
    OUTLINED_FUNCTION_15_20();

    v11 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v11, v12, v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v15);
    if (v16)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v19 = OUTLINED_FUNCTION_11_22();
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v17 = OUTLINED_FUNCTION_16_2();
      v19 = v18(v17);
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_9_21(v19, v20);
    OUTLINED_FUNCTION_21_16(v21, v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t RadioShow.logoArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v8);
  result = sub_1D5614AE8();
  if (result)
  {
    sub_1D4ED06C8(0x676F4C646E617262, 0xE90000000000006FLL, result, v1);

    v10 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v10, v11, v12, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v14);
    if (v15)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v18 = OUTLINED_FUNCTION_11_22();
      v19 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v16 = OUTLINED_FUNCTION_16_2();
      v18 = v17(v16);
      v19 = 0;
    }

    v20 = OUTLINED_FUNCTION_9_21(v18, v19);
    return OUTLINED_FUNCTION_21_16(v20, v21, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

uint64_t static PartialMusicProperty<A>.editorialArtwork.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E89E0, &qword_1EC7EC468, sub_1D4F5D8E0);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E8CA0, &qword_1EC7EECA8, sub_1D505E760);
}

{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96B0, &qword_1EC7F7408, sub_1D54CCE18);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96E0, &qword_1EC7F7510, sub_1D54D57A8);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E97E0, &qword_1EC7F8490, sub_1D55AF14C);
}

uint64_t sub_1D4F5D92C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4A8, &qword_1D5620D40);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4E74D94(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  v4 = sub_1D560D138();

  *a3 = v4;
  return result;
}

uint64_t static PartialMusicProperty<A>.logoArtwork.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E89E8, &qword_1EC7EC470, sub_1D4F5D918);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96B8, &qword_1EC7F7410, sub_1D54CCFA4);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96E8, &qword_1EC7F7518, sub_1D54D57E0);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E97E8, &qword_1EC7F8498, sub_1D55AF184);
}

uint64_t sub_1D4F5DA4C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

void RadioShow.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v80 = v2;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v77 = v4;
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v76 = v6 - v5;
  v66 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v75 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v70 = v10 - v9;
  v71 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v67 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v17 = OUTLINED_FUNCTION_22(v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v61 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_0();
  v63 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v61 - v29;
  v30 = sub_1D5614B68();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  v74 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = *(v32 + 16);
  v37(v35 - v34, v0, v30);
  v38 = sub_1D5614B38();
  v72 = v39;
  v73 = v38;
  v40 = sub_1D5614B58();
  v68 = v41;
  v69 = v40;
  sub_1D5614B48();
  v42 = sub_1D56106B8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v42);
  sub_1D5614B28();
  v43 = v79;
  v44 = v66;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v66);
  v82 = v30;
  v83 = MEMORY[0x1E6977538];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v81);
  v61 = v36;
  v37(boxed_opaque_existential_0, v36, v30);
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v62 = v30;
  sub_1D5612AF8();
  v46 = v70;
  sub_1D5611A98();
  (*(v67 + 8))(v15, v71);
  sub_1D560FDD8();
  (*(v75 + 8))(v46, v44);
  sub_1D4E7661C(v43, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v44);
  v47 = v20;
  sub_1D4ED3A14(v20, v43, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v48 = v76;
  sub_1D560EC98();
  sub_1D4ED3750(v43, v20, &qword_1EC7EA358, &unk_1D561DF50);
  v49 = type metadata accessor for MusicSiriRepresentation(0);
  v50 = v80;
  v51 = v64;
  sub_1D4ED3750(v64, v80 + v49[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v52 = v63;
  sub_1D4ED3750(v63, v50 + v49[9], &qword_1EC7EC478, &unk_1D56299D0);
  v53 = v65;
  sub_1D4ED3750(v65, v50 + v49[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v81[0]) = 10;
  sub_1D50391CC();
  v55 = v54;
  v57 = v56;
  sub_1D4E7661C(v47, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v77 + 8))(v48, v78);
  sub_1D4E7661C(v79, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v53, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v52, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v51, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v74 + 8))(v61, v62);
  v58 = v80;
  *v80 = v55;
  v58[1] = v57;
  *(v58 + 16) = 10;
  v59 = v72;
  v58[3] = v73;
  v58[4] = v59;
  v60 = v68;
  v58[5] = v69;
  v58[6] = v60;
  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_23_17(unint64_t *a1)
{

  return sub_1D4E74D94(a1, v2, v1);
}

uint64_t sub_1D4F5E0F8()
{
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D4F5E29C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1D5615B68();

      v3 = OUTLINED_FUNCTION_98();
      MEMORY[0x1DA6EAC70](v3);
      MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
      v4 = OUTLINED_FUNCTION_98();
      sub_1D4E58768(v4, v5, 1);
      return 0x696669636570732ELL;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_98();
      sub_1D4E58768(v9, v10, 2);
      return 0xD000000000000013;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_98();
    sub_1D4E58768(v7, v8, 0);
    return 0x6576697463612ELL;
  }
}

void sub_1D4F5E39C(uint64_t a2@<X1>, _BYTE *x8_0@<X8>)
{
  v5 = sub_1D4F5F808(a2);
  v6 = [objc_opt_self() sharedContentTasteController];
  sub_1D52FCF9C([v6 tasteTypeForModelObject_], x8_0);
}

uint64_t sub_1D4F5E430()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_98();
  sub_1D4F5E47C(v1, v2);
  return v0;
}

char *sub_1D4F5E47C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v196 = v6;
  v197 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v191 = &v176 - v9;
  v10 = *(v6 + 80);
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_2();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v176 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v176 - v21;
  *(v4 + *(v6 + 152)) = 0;
  OUTLINED_FUNCTION_12_24();
  v24 = *(v23 + 176);
  *(v4 + v24) = [objc_opt_self() sharedContentTasteController];
  OUTLINED_FUNCTION_12_24();
  v26 = *(v25 + 184);
  v190 = objc_opt_self();
  *(v4 + v26) = [v190 sharedLibraryTransientStateController];
  OUTLINED_FUNCTION_12_24();
  v28 = *(v27 + 192);
  sub_1D56129F8();
  swift_allocObject();
  *(v4 + v28) = sub_1D56129E8();
  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v29 + 208)) = 0;
  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v30 + 216)) = 0;
  OUTLINED_FUNCTION_12_24();
  v32 = *(v31 + 224);
  type metadata accessor for MusicTaskCoalescer(0);
  v33 = swift_allocObject();
  swift_defaultActor_initialize();
  v34 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  *(v32 + v4) = v33;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_0_29(&qword_1EDD54488);
    goto LABEL_18;
  }

  v187 = v18;
  OUTLINED_FUNCTION_12_24();
  v43 = (v12 + 16);
  v42 = *(v12 + 16);
  v34 = v197;
  (v42)(v4 + *(v41 + 136), v197, v10);
  OUTLINED_FUNCTION_12_24();
  v45 = *(v44 + 144);
  (v42)(v4 + v45, v34, v10);
  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v46 + 232)) = a2;
  OUTLINED_FUNCTION_59(v4 + v45, v207);
  (v42)(v22, v4 + v45, v10);
  v185 = *(v196 + 88);
  v47 = *(v185 + 8);

  v193 = v47;
  v48 = sub_1D4F5F808(v10);
  v49 = *(v12 + 8);
  v181 = v22;
  v196 = v12 + 8;
  v195 = v49;
  v49(v22, v10);
  [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  OUTLINED_FUNCTION_12_24();
  v51 = *(v50 + 160);
  *(v4 + v51) = v52;
  v53 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v186 = v48;
  [v53 initWithIdentifyingModelObject_];
  OUTLINED_FUNCTION_12_24();
  v55 = *(v54 + 168);
  *(v4 + v55) = v56;
  v182 = [*(v4 + v51) currentStatus];
  [*(v4 + v55) currentStatus];
  v183 = *(&aBlock + 1);
  v57 = aBlock;
  v3 = v202;
  v58 = sub_1D560F0C8();
  v192 = a2;
  v179 = v57;
  if (v58)
  {
    OUTLINED_FUNCTION_18_20();
    LOBYTE(v205[0]) = 71;
    v59 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FC98(v59);
    swift_endAccess();
    OUTLINED_FUNCTION_18_20();
    *&v205[0] = 0;
    BYTE8(v205[0]) = 2;
    v60 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FD68(v60);
    swift_endAccess();
    v61 = v10;
    v22 = v43;
  }

  else
  {
    v62 = OUTLINED_FUNCTION_75_4(&v208);
    v42(v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    v61 = v10;
    v22 = v43;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v63 = v193;
      *(&v202 + 1) = v61;
      v203 = v193;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v42)(boxed_opaque_existential_0, v34, v61);

      sub_1D518AB68(v182, &aBlock, v205);
      OUTLINED_FUNCTION_18_20();
      v65 = OUTLINED_FUNCTION_70_6();
      sub_1D4F5FC98(v65);
      swift_endAccess();
      *(&v202 + 1) = v61;
      v203 = v63;
      v66 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v42)(v66, v34, v61);

      sub_1D50A911C(v57, v183, &aBlock, v205, v3);
      v67 = *&v205[0];
      v68 = BYTE8(v205[0]);
      OUTLINED_FUNCTION_24_18(v4 + qword_1EDD53510);
      v198 = v67;
      v199 = v68;
      sub_1D4F5FD68(&v198);
      swift_endAccess();
      v32 = v42;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_18_20();
    LOBYTE(v205[0]) = 68;
    v69 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FC98(v69);
    swift_endAccess();
    OUTLINED_FUNCTION_18_20();
    *&v205[0] = 0;
    BYTE8(v205[0]) = 2;
    v70 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FD68(v70);
    swift_endAccess();
  }

  v32 = v42;
LABEL_8:
  v71 = sub_1D4F5FE54(v61);
  if (v71)
  {
    v72 = v71;
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_24_18(v4 + qword_1EDD53500);
  sub_1D4F5FFA0(v72);
  swift_endAccess();
  v73 = OUTLINED_FUNCTION_75_4(&v210);
  v32(v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    v74 = *(&v202 + 1);
    v75 = v203;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v202 + 1));
    v76 = *(v75 + 16);
    v77 = v75;
    v34 = v197;
    v76(v205, v74, v77);
    v78 = v205[0];
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v203 = 0;
    aBlock = 0u;
    v202 = 0u;
    sub_1D4E765C8(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
    v78 = 0;
  }

  OUTLINED_FUNCTION_24_18(v4 + qword_1EDD53508);
  LOBYTE(v205[0]) = v78;
  sub_1D4F60098(v205);
  swift_endAccess();
  v79 = OUTLINED_FUNCTION_75_4(&v209);
  v32(v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v205, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v202 + 1));
    sub_1D4F60168();
    v80 = v198;
    OUTLINED_FUNCTION_54_0(v4 + qword_1EDD53518, v205);
    v200 = v80;
    sub_1D4F601E4(&v200);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v206 = 0;
    memset(v205, 0, sizeof(v205));
    sub_1D4E765C8(v205, &qword_1EC7EC500, &unk_1D5621030);
    OUTLINED_FUNCTION_18_20();
    LOBYTE(v205[0]) = 0;
    v81 = OUTLINED_FUNCTION_70_6();
    sub_1D4F601E4(v81);
    swift_endAccess();
  }

  v18 = v61;
  v82 = *(sub_1D4E5A1CC() + 40);

  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v83 + 200)) = v82;
  v194 = sub_1D4F636B4();
  v10 = v84;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_36;
  }

LABEL_18:
  v85 = sub_1D560C758();
  v86 = __swift_project_value_buffer(v85, qword_1EDD76AA8);
  v87 = v188;
  v88 = v32;
  (v32)(v188, v34, v18);

  v187 = v86;
  v89 = sub_1D560C738();
  LODWORD(v86) = sub_1D56156E8();

  v178 = v86;
  if (os_log_type_enabled(v89, v86))
  {
    v90 = OUTLINED_FUNCTION_86_4();
    v180 = v22;
    v91 = v90;
    v177 = OUTLINED_FUNCTION_85_3();
    *&v205[0] = v177;
    *v91 = 136446978;
    *(v91 + 4) = OUTLINED_FUNCTION_110_2();
    *(v91 + 12) = 2082;
    v176 = v88;
    v88(v181, v87, v18);
    OUTLINED_FUNCTION_222();
    v92 = v18;
    v93 = sub_1D5614DB8();
    v95 = v94;
    v96 = v87;
    v97 = v195;
    v195(v96, v92);
    v98 = sub_1D4E6835C(v93, v95, v205);

    *(v91 + 14) = v98;
    *(v91 + 22) = 2082;
    v99 = sub_1D4F5E0F8();
    v101 = sub_1D4E6835C(v99, v100, v205);

    *(v91 + 24) = v101;
    *(v91 + 32) = 2082;
    *&aBlock = v179;
    *(&aBlock + 1) = v183;
    *&v202 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v102 = sub_1D5614DB8();
    v104 = sub_1D4E6835C(v102, v103, v205);

    *(v91 + 34) = v104;
    _os_log_impl(&dword_1D4E3F000, v89, v178, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v91, 0x2Au);
    swift_arrayDestroy();
    v105 = v197;
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();

    v88 = v176;
  }

  else
  {

    v106 = v87;
    v97 = v195;
    v195(v106, v18);
    v105 = v34;
    v92 = v18;
  }

  v107 = v189;
  v88(v189, v105, v92);
  OUTLINED_FUNCTION_61_14();
  swift_retain_n();

  v108 = v187;
  v109 = sub_1D560C738();
  v110 = sub_1D56156E8();

  v111 = os_log_type_enabled(v109, v110);
  v184 = v10;
  if (v111)
  {
    v188 = v92;
    v112 = OUTLINED_FUNCTION_86_4();
    *&v205[0] = OUTLINED_FUNCTION_85_3();
    *v112 = 136446978;
    *(v112 + 4) = OUTLINED_FUNCTION_110_2();
    *(v112 + 12) = 2082;
    sub_1D4F625B0();
    v113 = v198;
    v114 = v198 >> 6;
    if (v114)
    {
      if (v114 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        v115 = OUTLINED_FUNCTION_10_21();
        MEMORY[0x1DA6EAC70](v115);
        sub_1D502EC78(v113 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v117 = *(&aBlock + 1);
        v116 = aBlock;
      }

      else
      {
        v117 = 0xE600000000000000;
        v116 = 0x64656464612ELL;
      }
    }

    else
    {
      OUTLINED_FUNCTION_105_3();
      if (v113)
      {
        v116 = 0x656C62616464612ELL;
      }

      else
      {
        v116 = 0xD000000000000028;
      }

      if (v113)
      {
        v117 = v119;
      }

      else
      {
        v117 = 0x80000001D567FDB0;
      }
    }

    sub_1D4E6835C(v116, v117, v205);
    OUTLINED_FUNCTION_120_2();
    *(v112 + 14) = v113;
    *(v112 + 22) = 2082;
    sub_1D4F62958();

    v120 = MusicLibrary.DownloadStatus.description.getter();

    v121 = OUTLINED_FUNCTION_222();
    sub_1D4E6835C(v121, v122, v123);
    OUTLINED_FUNCTION_0_6();

    *(v112 + 24) = v120;
    *(v112 + 32) = 2082;
    v124 = v188;
    v108 = sub_1D4F602B4(v188, v193);
    v195(v107, v124);
    v125 = OUTLINED_FUNCTION_222();
    sub_1D4E6835C(v125, v126, v127);
    OUTLINED_FUNCTION_0_6();

    *(v112 + 34) = v108;
    v118 = v124;
    _os_log_impl(&dword_1D4E3F000, v109, v110, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v112, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_61_14();

    v97(v107, v92);
    v118 = v92;
  }

  OUTLINED_FUNCTION_12_24();
  v129 = *(v4 + *(v128 + 160));
  OUTLINED_FUNCTION_40_13();
  v130 = swift_allocObject();
  OUTLINED_FUNCTION_88_4(v130);
  OUTLINED_FUNCTION_83_2();
  v131 = swift_allocObject();
  v132 = v185;
  v131[2] = v118;
  v131[3] = v132;
  v133 = v132;
  v131[4] = v108;
  v203 = sub_1D4F689A4;
  v204 = v131;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v202 = sub_1D5570C18;
  *(&v202 + 1) = &block_descriptor_2;
  v134 = _Block_copy(&aBlock);

  v135 = v129;

  v136 = OUTLINED_FUNCTION_81_4();
  [v136 v137];
  _Block_release(v134);

  OUTLINED_FUNCTION_12_24();
  v139 = *(v4 + *(v138 + 168));
  OUTLINED_FUNCTION_40_13();
  v140 = swift_allocObject();
  OUTLINED_FUNCTION_88_4(v140);
  OUTLINED_FUNCTION_83_2();
  v141 = swift_allocObject();
  v141[2] = v118;
  v141[3] = v133;
  v141[4] = v134;
  v203 = sub_1D4F689B0;
  v204 = v141;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v202 = sub_1D5571B7C;
  *(&v202 + 1) = &block_descriptor_73;
  v142 = _Block_copy(&aBlock);
  v143 = v139;

  v144 = OUTLINED_FUNCTION_81_4();
  [v144 v145];
  _Block_release(v142);

  sub_1D5611CC8();
  v146 = objc_opt_self();
  v147 = [v146 canShowCloudDownloadButtonsDidChangeNotificationName];
  v148 = [v146 sharedCloudController];
  OUTLINED_FUNCTION_40_13();
  v149 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v150 = swift_allocObject();
  v150[2] = v118;
  v150[3] = v133;
  v151 = v133;
  v150[4] = v149;

  OUTLINED_FUNCTION_61();
  v152 = sub_1D5611CB8();

  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v153 + 208)) = v152;

  v154 = [v190 didChangeNotificationName];
  OUTLINED_FUNCTION_12_24();
  v156 = *(v4 + *(v155 + 184));
  OUTLINED_FUNCTION_40_13();
  v157 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v158 = swift_allocObject();
  v158[2] = v118;
  v158[3] = v151;
  v158[4] = v157;
  v159 = v156;

  v160 = sub_1D5611CB8();

  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v161 + 216)) = v160;

  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_40_13();
  v162 = swift_allocObject();
  swift_weakInit();
  v163 = swift_allocObject();
  v163[2] = v118;
  v163[3] = v151;
  v164 = v151;
  v165 = v194;
  v163[4] = v162;
  v163[5] = v165;
  v166 = v184;
  v163[6] = v184;

  OUTLINED_FUNCTION_97_5();
  sub_1D56129D8();

  OUTLINED_FUNCTION_12_24();

  sub_1D56129B8();

  v167 = v192;
  sub_1D560EFA8();
  sub_1D5615458();
  v168 = v191;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
  OUTLINED_FUNCTION_40_13();
  v173 = swift_allocObject();
  OUTLINED_FUNCTION_88_4(v173);

  v174 = swift_allocObject();
  v174[2] = 0;
  v174[3] = 0;
  v174[4] = v118;
  v174[5] = v164;
  v174[6] = v167;
  v174[7] = v165;
  v174[8] = v166;
  sub_1D51EC8B4(0, 0, v168, &unk_1D56210E8, v174);
  OUTLINED_FUNCTION_0_6();

  v195(v197, v118);
  return v4;
}

id sub_1D4F5F808(uint64_t a1)
{
  v3 = sub_1D56131C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v12 = *(v8 + 16);
  v12(&v18 - v13, v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_1D4E765C8(&v22, &qword_1EC7EC520, &unk_1D5621050);
    goto LABEL_6;
  }

  v19 = v3;
  sub_1D4E48324(&v22, &v25);
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1D4E765C8(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v3 = v19;
LABEL_6:
    v12(v11, v1, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E765C8(v28, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(&v22, &v25);
      sub_1D4E48324(&v25, v28);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      sub_1D4E765C8(&v22, &unk_1EC7ED400, &qword_1D5620CF0);
    }

    goto LABEL_9;
  }

  sub_1D4E765C8(v28, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(v20, &v22);
  sub_1D4E48324(&v22, v28);
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v3 = v19;
LABEL_9:
  sub_1D4F68934(v28, &v22);
  if (*(&v23 + 1))
  {
    sub_1D4E48324(&v22, &v25);
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    (*(v4 + 104))(v7, *MEMORY[0x1E6976988], v3);
    v16 = sub_1D5159364(v7, v14, v15);
    (*(v4 + 8))(v7, v3);
    sub_1D4E765C8(v28, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v25);
    return v16;
  }

  else
  {
    sub_1D4E765C8(&v22, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F5FCCC()
{
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

uint64_t sub_1D4F5FDA4()
{
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

uint64_t sub_1D4F5FE54(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC560, &qword_1D56210A8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = sub_1D5370A10(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D4E765C8(v7, qword_1EC7EC568, &unk_1D56210B0);
    return 0;
  }

  return v5;
}

uint64_t sub_1D4F5FFF0(uint64_t a1)
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D4F600CC()
{
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

uint64_t sub_1D4F60168()
{
  sub_1D4E5A1CC();
  sub_1D5329168();

  OUTLINED_FUNCTION_61();
  sub_1D5200C94(v0);
}

uint64_t sub_1D4F60218()
{
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

unint64_t sub_1D4F602B4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v48 = sub_1D560D838();
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - v13;
  v15 = *(a1 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = 0xD000000000000018;
  v60 = 0x80000001D56800B0;
  v46 = *(v15 + 16);
  v46(&v43 - v19, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v52, &v55);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v52 = 0xD000000000000015;
    *(&v52 + 1) = 0x80000001D5680110;
    v44 = v18;
    v43 = v7;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    sub_1D560DB28();
    v20 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v20);

    MEMORY[0x1DA6EAC70](v52, *(&v52 + 1));

    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v52 = 0xD00000000000001CLL;
    *(&v52 + 1) = 0x80000001D5680130;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    sub_1D560DB18();
    v21 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v21);

    MEMORY[0x1DA6EAC70](v52, *(&v52 + 1));

    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v52 = 0xD00000000000001ELL;
    *(&v52 + 1) = 0x80000001D5680150;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    sub_1D560DB38();
    v22 = sub_1D5615898();
    v24 = v23;
    sub_1D4E765C8(v14, &qword_1EC7EC538, &unk_1D5621080);
    MEMORY[0x1DA6EAC70](v22, v24);

    MEMORY[0x1DA6EAC70](v52, *(&v52 + 1));

    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v52 = 0xD00000000000001ELL;
    *(&v52 + 1) = 0x80000001D5680170;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    sub_1D560DB48();
    v25 = sub_1D56158A8();
    v27 = v26;
    sub_1D4E765C8(v10, &qword_1EC7EC530, &unk_1D5632150);
    MEMORY[0x1DA6EAC70](v25, v27);

    MEMORY[0x1DA6EAC70](v52, *(&v52 + 1));

    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v52 = 0xD000000000000025;
    *(&v52 + 1) = 0x80000001D5680190;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    v28 = v43;
    sub_1D560DB58();
    v29 = sub_1D56158B8();
    v31 = v30;
    sub_1D4E765C8(v28, &qword_1EC7EC528, &unk_1D5621070);
    MEMORY[0x1DA6EAC70](v29, v31);

    MEMORY[0x1DA6EAC70](v52, *(&v52 + 1));
    v18 = v44;

    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    sub_1D4E765C8(&v52, &qword_1EC7EC548, &qword_1D5621090);
  }

  v46(v18, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v52, &v55);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v52 = 0xD000000000000015;
    *(&v52 + 1) = 0x80000001D56800F0;
    v32 = v57;
    v33 = v58;
    __swift_project_boxed_opaque_existential_1(&v55, v57);
    (*(v33 + 16))(v51, v32, v33);
    v34 = 0xEA00000000006465;
    v35 = 0x7469726F7661662ELL;
    if (LOBYTE(v51[0]) != 1)
    {
      v35 = 0x656B696C7369642ELL;
      v34 = 0xE900000000000064;
    }

    if (LOBYTE(v51[0]))
    {
      v36 = v35;
    }

    else
    {
      v36 = 0x6C61727475656E2ELL;
    }

    if (LOBYTE(v51[0]))
    {
      v37 = v34;
    }

    else
    {
      v37 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v36, v37);

    MEMORY[0x1DA6EAC70](v52, *(&v52 + 1));

    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    sub_1D4E765C8(&v52, &qword_1EC7EC510, &unk_1D5621040);
  }

  MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1D5615B68();

  v55 = 0xD000000000000013;
  v56 = 0x80000001D56800D0;
  sub_1D560EC98();
  *&v52 = sub_1D5614DD8();
  *(&v52 + 1) = v38;
  v51[0] = 10;
  v51[1] = 0xE100000000000000;
  v49 = 2105354;
  v50 = 0xE300000000000000;
  sub_1D4F53278();
  v39 = sub_1D5615968();
  v41 = v40;

  MEMORY[0x1DA6EAC70](v39, v41);

  MEMORY[0x1DA6EAC70](v55, v56);

  MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
  return v59;
}

uint64_t sub_1D4F60B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();

  v12 = sub_1D56153B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = v11;
  v13[7] = a1;

  sub_1D51ECB60(0, 0, v9, &unk_1D5621128, v13);
}

uint64_t sub_1D4F60CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1D56153C8();
  v5[8] = sub_1D56153B8();
  v7 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F60D60, v7, v6);
}

uint64_t sub_1D4F60D60()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D4F669F8(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4F60DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();

  v16 = sub_1D56153B8();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = v15;
  *(v17 + 56) = a1;
  *(v17 + 64) = a2;
  *(v17 + 72) = a6;

  sub_1D51ECB60(0, 0, v13, &unk_1D5621118, v17);
}

uint64_t sub_1D4F60F84(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a2;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a1;
  *(v7 + 48) = a5;
  sub_1D56153C8();
  *(v7 + 80) = sub_1D56153B8();
  v9 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61024, v9, v8);
}

uint64_t sub_1D4F61024()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D4F66DBC(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4F610B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61150, v4, v3);
}

uint64_t sub_1D4F61150()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D4F678D0();
  }

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4F611CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61264, v4, v3);
}

uint64_t sub_1D4F61264()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D4F678D0();
  }

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4F612E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = v13;
  v14[7] = a2;
  v14[8] = a3;

  sub_1D51ECB60(0, 0, v11, &unk_1D56210F8, v14);
}

uint64_t sub_1D4F61440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  v9 = sub_1D5615458();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61508, 0, 0);
}

uint64_t sub_1D4F61508()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = *(Strong + *(*Strong + 224));
    *(v0 + 144) = v5;

    v10 = *(v0 + 96);

    sub_1D5615438();
    OUTLINED_FUNCTION_40_13();
    v6 = swift_allocObject();
    *(v0 + 152) = v6;
    OUTLINED_FUNCTION_59(v4 + 16, v0 + 40);
    swift_weakLoadStrong();
    swift_weakInit();

    v7 = swift_allocObject();
    *(v0 + 160) = v7;
    *(v7 + 16) = v10;
    *(v7 + 32) = v6;
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1D4F616B0, v5, 0);
  }

  else
  {
    **(v0 + 64) = 1;

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D4F616B0()
{
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_93_4();
  sub_1D529A3DC(v0, v1, v2);

  v3 = OUTLINED_FUNCTION_85_0();
  v4(v3);

  return MEMORY[0x1EEE6DFA0](sub_1D4F61774, 0, 0);
}

uint64_t sub_1D4F61774()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_115_4(*(v0 + 136));
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4F617CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1D56158D8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61894, 0, 0);
}

uint64_t sub_1D4F61894()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_102_3(v6);

    return sub_1D4F64934();
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D4F61978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_8();
  *v16 = v15;
  *(v13 + 112) = v10;

  v17 = OUTLINED_FUNCTION_74_6();
  v18(v17);

  if (v10)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_25_3();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_1D4F61C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_1D56158D8();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61CF4, 0, 0);
}

uint64_t sub_1D4F61CF4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_102_3(v6);

    return sub_1D4F64934();
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D4F61DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_8();
  *v16 = v15;
  *(v13 + 112) = v10;

  v17 = OUTLINED_FUNCTION_74_6();
  v18(v17);

  if (v10)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_25_3();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t MusicLibrary.ItemState.deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_6();
  v3 = v2;

  sub_1D56129C8();

  OUTLINED_FUNCTION_12_24();

  sub_1D560EF98();

  if (qword_1EDD54488 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EDD54488);
  }

  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76AA8);
  OUTLINED_FUNCTION_82();

  v5 = sub_1D560C738();
  v6 = sub_1D56156E8();

  if (os_log_type_enabled(v5, v6))
  {
    v32 = v3;
    v7 = OUTLINED_FUNCTION_142();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446210;
    v9 = sub_1D4F636B4();
    v11 = sub_1D4E6835C(v9, v10, &v33);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D4E3F000, v5, v6, "%{public}s ╰ De-initializing library item state.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_41_1();
    v3 = v32;
    OUTLINED_FUNCTION_122();
  }

  v12 = qword_1EDD53520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B0, &qword_1D5620EA8);
  OUTLINED_FUNCTION_4_0();
  (*(v13 + 8))(v1 + v12);
  v14 = qword_1EDD53510;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B8, &qword_1D5620EB0);
  OUTLINED_FUNCTION_4_0();
  (*(v15 + 8))(v1 + v14);
  v16 = qword_1EDD53500;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C0, &qword_1D5620EB8);
  OUTLINED_FUNCTION_4_0();
  (*(v17 + 8))(v1 + v16);
  v18 = qword_1EDD53508;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C8, &qword_1D5620EC0);
  OUTLINED_FUNCTION_4_0();
  (*(v19 + 8))(v1 + v18);
  v20 = qword_1EDD53518;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4D0, &qword_1D5620EC8);
  OUTLINED_FUNCTION_4_0();
  (*(v21 + 8))(v1 + v20);
  OUTLINED_FUNCTION_12_24();
  v23 = *(v3 + 80);
  v24 = *(*(v23 - 8) + 8);
  v24(v1 + *(v22 + 136), v23);
  OUTLINED_FUNCTION_12_24();
  v24(v1 + *(v25 + 144), v23);
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_12_24();

  return v1;
}

uint64_t MusicLibrary.ItemState.__deallocating_deinit()
{
  MusicLibrary.ItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D4F6254C()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D4F625B0();
  *v0 = v1;
}

void sub_1D4F625B0()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_20_2(KeyPath);

  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F62640()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v3 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v3);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F6270C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4D8, &qword_1D5620ED0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B0, &qword_1D5620EA8);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

void sub_1D4F628D8()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D4F62958();
  *v0 = v1;
  *(v0 + 8) = v2;
}

void sub_1D4F62958()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_20_2(KeyPath);

  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F629E8()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v3 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v3);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F62A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = OUTLINED_FUNCTION_61();
  v12(v11);
  return a7(v10);
}

uint64_t sub_1D4F62B78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4E0, &qword_1D5620ED8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B8, &qword_1D5620EB0);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

void sub_1D4F62D44(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1D4F62E0C()
{
  OUTLINED_FUNCTION_65_5();
  result = sub_1D4F62E60();
  *v0 = result;
  return result;
}

uint64_t sub_1D4F62E60()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v1;
}

void sub_1D4F62F08()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v3 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v3);
  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F62FB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1D4F6303C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4E8, &qword_1D5620EE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C0, &qword_1D5620EB8);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

void sub_1D4F63208()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D4F6326C();
  *v0 = v1;
}

void sub_1D4F6326C()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_20_2(KeyPath);

  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F63318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC558, &qword_1D56210A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C8, &qword_1D5620EC0);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

void sub_1D4F63400()
{
  OUTLINED_FUNCTION_65_5();
  sub_1D4F63464();
  *v0 = v1;
}

void sub_1D4F63464()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_13_5();
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_20_2(KeyPath);

  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F63510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_54_0(v20 + *v23, &a10);
  v24 = OUTLINED_FUNCTION_98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F63574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC550, &qword_1D5621098);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4D0, &qword_1D5620EC8);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_15_8();
  return v6(v5);
}

uint64_t sub_1D4F637C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v47 - v5;
  v6 = *(v2 + 80);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v52 = v13;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v47 - v14;
  v16 = *(v2 + 136);
  swift_beginAccess();
  v17 = *(v7 + 16);
  v17(v15, &v1[v16], v6);
  if (qword_1EDD54488 != -1)
  {
    swift_once();
  }

  v18 = sub_1D560C758();
  __swift_project_value_buffer(v18, qword_1EDD76AA8);
  v54 = v15;
  v17(v12, v15, v6);

  v19 = sub_1D560C738();
  v20 = sub_1D56156E8();

  v21 = os_log_type_enabled(v19, v20);
  v56 = v2;
  if (v21)
  {
    v22 = v7;
    v23 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v23 = 136446466;
    v24 = sub_1D4F636B4();
    v26 = sub_1D4E6835C(v24, v25, &v57);
    v49 = v17;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v28 = sub_1D4F602B4(v6, *(*(v56 + 88) + 8));
    v30 = v29;
    v31 = *(v22 + 8);
    v50 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51 = v31;
    v31(v12, v6);
    v32 = sub_1D4E6835C(v28, v30, &v57);
    v17 = v49;

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1D4E3F000, v19, v20, "%{public}s | Client manually updated item to %{public}s in the item state.", v23, 0x16u);
    v33 = v48;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v33, -1, -1);
    MEMORY[0x1DA6ED200](v23, -1, -1);
  }

  else
  {

    v34 = *(v7 + 8);
    v50 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51 = v34;
    v34(v12, v6);
    v22 = v7;
  }

  v49 = sub_1D4F636B4();
  v36 = v35;
  v37 = sub_1D5615458();
  v38 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v53;
  v41 = v54;
  v17(v53, v54, v6);
  v42 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v43 = (v52 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v6;
  *(v44 + 5) = *(v56 + 88);
  *(v44 + 6) = v39;
  (*(v22 + 32))(&v44[v42], v40, v6);
  v45 = &v44[v43];
  *v45 = v49;
  v45[1] = v36;
  sub_1D51ECB60(0, 0, v38, &unk_1D5621138, v44);

  return v51(v41, v6);
}

uint64_t sub_1D4F63CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v13;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[8] = a1;
  v9 = *(a8 - 8);
  v8[15] = v9;
  v8[16] = *(v9 + 64);
  v8[17] = swift_task_alloc();
  v10 = sub_1D5615458();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F63DDC, 0, 0);
}

uint64_t sub_1D4F63DDC()
{
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v17 = *(v0 + 88);
    v6 = *(v0 + 72);
    *(v0 + 176) = *(Strong + *(*Strong + 224));

    v18 = *(v0 + 104);

    sub_1D56153D8();
    OUTLINED_FUNCTION_40_13();
    v7 = swift_allocObject();
    *(v0 + 184) = v7;
    OUTLINED_FUNCTION_59(v6 + 16, v0 + 40);
    swift_weakLoadStrong();
    swift_weakInit();

    v8 = OUTLINED_FUNCTION_112();
    v9(v8);
    v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v11 = swift_allocObject();
    *(v0 + 192) = v11;
    *(v11 + 16) = v18;
    *(v11 + 32) = v7;
    (*(v4 + 32))(v11 + v10, v2, v18);
    v12 = (v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v12 = v17;
    v12[1] = v5;

    v13 = OUTLINED_FUNCTION_98();

    return MEMORY[0x1EEE6DFA0](v13, v14, 0);
  }

  else
  {
    **(v0 + 64) = 1;

    OUTLINED_FUNCTION_55();

    return v15();
  }
}

uint64_t sub_1D4F64008()
{
  OUTLINED_FUNCTION_91();
  v0 = OUTLINED_FUNCTION_93_4();
  sub_1D529A3DC(v0, v1, v2);

  v3 = OUTLINED_FUNCTION_85_0();
  v4(v3);

  return MEMORY[0x1EEE6DFA0](sub_1D4F640CC, 0, 0);
}

uint64_t sub_1D4F640CC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_115_4(*(v0 + 168));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4F64130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_1D56158D8();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F641FC, 0, 0);
}

uint64_t sub_1D4F641FC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  v2 = v0[12];
  if (Strong)
  {
    v3 = v0[9];
    OUTLINED_FUNCTION_24_0();
    (*(v4 + 16))(v2);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_1D4F64338;

    return sub_1D4F64934();
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D4F64338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_8();
  *v16 = v15;
  *(v13 + 120) = v10;

  v17 = OUTLINED_FUNCTION_74_6();
  v18(v17);

  if (v10)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_25_3();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_1D4F645EC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_38_14();
  v4 = *(v3 + 136);
  v5 = OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_59(v5, v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0();
  return (*(v7 + 16))(a1, v1 + v4);
}

void sub_1D4F64670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108_1();
  v22 = v21;
  OUTLINED_FUNCTION_38_14();
  v24 = *(v23 + 136);
  v25 = OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_54_0(v25, v26);
  OUTLINED_FUNCTION_46_3();
  v28 = *(v27 + 80);
  OUTLINED_FUNCTION_24_0();
  (*(v29 + 24))(v20 + v24, v22, v28);
  swift_endAccess();
  sub_1D4F637C4();
  v30 = OUTLINED_FUNCTION_15_8();
  v31(v30);
  OUTLINED_FUNCTION_107_1();
}

uint64_t (*sub_1D4F6472C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_54_0(v1 + *(*v1 + 136), a1);
  return sub_1D4F64794;
}

uint64_t sub_1D4F64794(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D4F637C4();
  }

  return result;
}

uint64_t sub_1D4F647C8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_38_14();
  v4 = *(v3 + 144);
  v5 = OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_59(v5, v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0();
  return (*(v7 + 16))(a1, v1 + v4);
}

uint64_t sub_1D4F6484C(uint64_t a1)
{
  OUTLINED_FUNCTION_38_14();
  v4 = *(v3 + 144);
  v5 = OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_54_0(v5, v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0();
  (*(v7 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void *sub_1D4F648D8()
{
  v1 = *(v0 + *(*v0 + 152));
  v2 = v1;
  return v1;
}

uint64_t sub_1D4F64934()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 464) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  v4 = *v0;
  *(v1 + 72) = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v5);
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  *(v1 + 88) = v6;
  OUTLINED_FUNCTION_69(v6);
  *(v1 + 96) = v7;
  *(v1 + 104) = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v8);
  *(v1 + 112) = OUTLINED_FUNCTION_127();
  v9 = sub_1D5614898();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_69(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_127();
  v11 = sub_1D560C998();
  *(v1 + 144) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v1 + 152) = v12;
  *(v1 + 160) = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v13);
  *(v1 + 168) = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  *(v1 + 176) = v14;
  OUTLINED_FUNCTION_69(v14);
  *(v1 + 184) = v15;
  *(v1 + 192) = OUTLINED_FUNCTION_127();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v16);
  *(v1 + 200) = OUTLINED_FUNCTION_127();
  v17 = sub_1D5613AF8();
  *(v1 + 208) = v17;
  OUTLINED_FUNCTION_69(v17);
  *(v1 + 216) = v18;
  *(v1 + 224) = OUTLINED_FUNCTION_127();
  v19 = sub_1D560DF28();
  *(v1 + 232) = v19;
  OUTLINED_FUNCTION_69(v19);
  *(v1 + 240) = v20;
  *(v1 + 248) = OUTLINED_FUNCTION_127();
  v21 = sub_1D560DF38();
  *(v1 + 256) = v21;
  OUTLINED_FUNCTION_69(v21);
  *(v1 + 264) = v22;
  *(v1 + 272) = OUTLINED_FUNCTION_127();
  *(v1 + 280) = *(v4 + 80);
  v23 = sub_1D56158D8();
  *(v1 + 288) = v23;
  OUTLINED_FUNCTION_69(v23);
  *(v1 + 296) = v24;
  *(v1 + 304) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_13_5();
  *(v1 + 312) = v25;
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  sub_1D56153C8();
  *(v1 + 368) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  v27 = sub_1D5615338();
  *(v1 + 376) = v27;
  *(v1 + 384) = v26;

  return MEMORY[0x1EEE6DFA0](sub_1D4F64DC0, v27, v26);
}

uint64_t sub_1D4F64DC0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[38];
  v2 = v0[35];
  (*(v0[37] + 16))(v1, v0[7], v0[36]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[38];
    v4 = v0[35];
    sub_1D4F647C8(v0[45]);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      (*(v0[37] + 8))(v0[38], v0[36]);
    }
  }

  else
  {
    (*(v0[39] + 32))(v0[45], v0[38], v0[35]);
  }

  v5 = v0[9];
  (*(v0[33] + 104))(v0[34], *MEMORY[0x1E6975100], v0[32]);
  v6 = OUTLINED_FUNCTION_96_2();
  v7(v6);
  v8 = swift_task_alloc();
  v0[49] = v8;
  v9 = *(*(v5 + 88) + 8);
  v0[50] = v9;
  *v8 = v0;
  v8[1] = sub_1D4F64F5C;
  v10 = v0[44];
  v11 = v0[34];
  v12 = v0[35];
  v13 = v0[31];

  return MEMORY[0x1EEDCF270](v10, v11, v13, v12, v9);
}

uint64_t sub_1D4F64F5C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[29];
  *v4 = *v1;
  *(v3 + 408) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = OUTLINED_FUNCTION_85_0();
  v9(v8);
  v10 = v2[48];
  v11 = v2[47];
  if (v0)
  {
    v12 = sub_1D4F664EC;
  }

  else
  {
    v12 = sub_1D4F6514C;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1D4F6514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_95_2();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v39 = *(v36 + 312);
  v40 = *(v39 + 16);
  *(v36 + 416) = v40;
  *(v36 + 424) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41 = OUTLINED_FUNCTION_96_2();
  v40(v41);
  OUTLINED_FUNCTION_16_19();
  if (swift_dynamicCast())
  {
    v43 = *(v36 + 168);
    v42 = *(v36 + 176);
    OUTLINED_FUNCTION_113_3();
    v44 = OUTLINED_FUNCTION_222();
    v45(v44);
    sub_1D5613AC8();
    if (__swift_getEnumTagSinglePayload(v43, 1, v42) != 1)
    {
      (*(*(v36 + 184) + 32))(*(v36 + 192), *(v36 + 168), *(v36 + 176));
      v75 = OUTLINED_FUNCTION_96_2();
      v76(v75);
      v77 = swift_task_alloc();
      *(v36 + 432) = v77;
      sub_1D4F688F0();
      OUTLINED_FUNCTION_42_12(&qword_1EC7EC460, &qword_1EC7EA4E8, &unk_1D561C470);
      *v77 = v36;
      v77[1] = sub_1D4F65A9C;
      goto LABEL_31;
    }

    v46 = *(v36 + 168);
    (*(*(v36 + 216) + 8))(*(v36 + 224), *(v36 + 208));
    v47 = &qword_1EC7EC458;
    v48 = &unk_1D5620CD0;
  }

  else
  {
    v46 = *(v36 + 200);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    v47 = &qword_1EC7EEC30;
    v48 = &unk_1D5620CE0;
  }

  sub_1D4E765C8(v46, v47, v48);
  v53 = *(v36 + 120);
  v54 = OUTLINED_FUNCTION_96_2();
  v40(v54);
  OUTLINED_FUNCTION_16_19();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = *(v36 + 112);
    v64 = *(v36 + 120);

    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v64);
    v60 = &unk_1EC7F1990;
    v61 = &unk_1D561CEF0;
    v62 = v63;
    goto LABEL_9;
  }

  v56 = *(v36 + 80);
  v55 = *(v36 + 88);
  OUTLINED_FUNCTION_113_3();
  v57 = OUTLINED_FUNCTION_222();
  v58(v57);
  sub_1D5614858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v55);
  v53 = *(v36 + 80);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v36 + 128) + 8))(*(v36 + 136), *(v36 + 120));

    v60 = &qword_1EC7EC450;
    v61 = &unk_1D5621060;
    v62 = v53;
LABEL_9:
    sub_1D4E765C8(v62, v60, v61);
    if (*(v36 + 464) == 1)
    {
      v68 = 0x80000001D5680090;
      v141 = 0xD000000000000013;
    }

    else
    {
      OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_11_23();
      if (!v69)
      {
        v72 = 0xD000000000000016;
      }

      v141 = v72;
      if (v69)
      {
        v68 = v70;
      }

      else
      {
        v68 = v71;
      }
    }

    sub_1D4E62628(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_120_2();
    v73 = 0xE000000000000000;
    if (v53)
    {
      a24 = 0;
      a25 = 0xE000000000000000;
      sub_1D5615B68();

      a24 = 0xD000000000000016;
      a25 = 0x80000001D5680050;
      *(v36 + 16) = sub_1D4F0B2D8(MEMORY[0x1E69E7CC0]);
      v74 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v74);

      v73 = a25;
      v139 = a24;
    }

    else
    {
      v139 = 0;
    }

    if (qword_1EDD54488 != -1)
    {
      OUTLINED_FUNCTION_0_29(&qword_1EDD54488);
    }

    v78 = *(v36 + 416);
    v79 = *(v36 + 352);
    v80 = *(v36 + 328);
    v81 = *(v36 + 280);
    v82 = sub_1D560C758();
    __swift_project_value_buffer(v82, qword_1EDD76AA8);
    v78(v80, v79, v81);

    v83 = sub_1D560C738();
    v84 = sub_1D56156E8();

    if (os_log_type_enabled(v83, v84))
    {
      v134 = *(v36 + 400);
      v85 = *(v36 + 328);
      v86 = *(v36 + 280);
      v136 = v84;
      v87 = OUTLINED_FUNCTION_86_4();
      a24 = OUTLINED_FUNCTION_85_3();
      *v87 = 136446978;
      v88 = sub_1D4F636B4();
      v90 = v89;
      v91 = sub_1D4E6835C(v88, v89, &a24);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2082;
      sub_1D4E6835C(v141, v68, &a24);
      OUTLINED_FUNCTION_82();

      *(v87 + 14) = v90;
      *(v87 + 22) = 2082;
      v92 = sub_1D4F602B4(v86, v134);
      v94 = v93;
      v95 = OUTLINED_FUNCTION_222();
      v142 = v96;
      (v96)(v95);
      sub_1D4E6835C(v92, v94, &a24);
      OUTLINED_FUNCTION_82();

      *(v87 + 24) = v85;
      *(v87 + 32) = 2082;
      v97 = sub_1D4E6835C(v139, v73, &a24);

      *(v87 + 34) = v97;
      _os_log_impl(&dword_1D4E3F000, v83, v136, "%{public}s | ↳ %{public}s to: %{public}s%{public}s.", v87, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      v98 = OUTLINED_FUNCTION_222();
      v142 = v99;
      (v99)(v98);
    }

    v101 = *(v36 + 352);
    v100 = *(v36 + 360);
    v102 = *(v36 + 320);
    v125 = *(v36 + 328);
    v126 = *(v36 + 304);
    v103 = *(v36 + 280);
    v127 = *(v36 + 272);
    v128 = *(v36 + 248);
    v129 = *(v36 + 224);
    v130 = *(v36 + 200);
    v131 = *(v36 + 192);
    v132 = *(v36 + 168);
    v133 = *(v36 + 160);
    v135 = *(v36 + 136);
    v137 = *(v36 + 112);
    v138 = *(v36 + 104);
    v140 = *(v36 + 80);
    (*(v36 + 416))(v102, v101, v103);
    sub_1D4F6484C(v102);
    OUTLINED_FUNCTION_112();
    sub_1D4F66890();

    v142(v101, v103);
    v142(v100, v103);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_71_2();

    return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, v125, v126, v127, v128, v129, v130, v131, v132, v133, v135, v137, v138, v140, v142, a24, a25, a26, a27, a28);
  }

  v113 = OUTLINED_FUNCTION_222();
  v114(v113);
  sub_1D4E62A60(&unk_1EDD53B80, &unk_1EC7F6A30, &qword_1D561C4C0, MEMORY[0x1E6975020]);
  sub_1D5615608();
  sub_1D5615648();
  if (sub_1D5615638() >= 301)
  {
    OUTLINED_FUNCTION_98();
    sub_1D5615608();
    OUTLINED_FUNCTION_98();
    sub_1D5615648();
    sub_1D5615638();
  }

  (*(*(v36 + 152) + 104))(*(v36 + 160), *MEMORY[0x1E69E7F88], *(v36 + 144));
  v115 = swift_task_alloc();
  *(v36 + 448) = v115;
  sub_1D4F688F0();
  OUTLINED_FUNCTION_42_12(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
  *v115 = v36;
  v115[1] = sub_1D4F65FC4;
LABEL_31:
  OUTLINED_FUNCTION_71_2();

  return MEMORY[0x1EEDD2260](v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4F65A9C()
{
  OUTLINED_FUNCTION_91();
  v1 = *v0;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v7 + 440) = v6;

  v8 = OUTLINED_FUNCTION_128();
  v9(v8);
  v10 = *(v1 + 384);
  v11 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1D4F65C14, v11, v10);
}

uint64_t sub_1D4F65FC4()
{
  OUTLINED_FUNCTION_91();
  v1 = *v0;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v7 + 456) = v6;

  v8 = OUTLINED_FUNCTION_128();
  v9(v8);
  v10 = *(v1 + 384);
  v11 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1D4F6613C, v11, v10);
}

uint64_t sub_1D4F664EC()
{
  v1 = v0[45];
  v2 = v0[39];
  v3 = v0[35];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_55();

  return v4();
}

void sub_1D4F666B4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  v6 = v5(0);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v24 - v20;
  v22 = MEMORY[0x1DA6EC3C0](v19);
  (*(v14 + 104))(v21, *MEMORY[0x1E6976988], v12);
  (*(v14 + 16))(v18, v21, v12);
  (*(v8 + 16))(v11, v3, v6);
  v23 = v1(v11, v18);
  (*(v14 + 8))(v21, v12);
  objc_autoreleasePoolPop(v22);
  *v25 = v23;
  OUTLINED_FUNCTION_46();
}

void sub_1D4F66890()
{
  OUTLINED_FUNCTION_94_3();
  v2 = sub_1D4F5F808(*(*v0 + 80));
  OUTLINED_FUNCTION_12_24();
  v3 = OUTLINED_FUNCTION_81_4();
  [v3 v4];
  if (sub_1D4E62628(v1))
  {
    sub_1D4F688F0();
    v5 = sub_1D5615158();
    v6 = OUTLINED_FUNCTION_81_4();
    [v6 v7];

    OUTLINED_FUNCTION_12_24();
    v8 = sub_1D5615158();
    v9 = OUTLINED_FUNCTION_81_4();
    [v9 v10];
  }

  else
  {
    OUTLINED_FUNCTION_12_24();
    [*(v0 + *(v11 + 160)) setIdentifyingModelObject_];
  }

  v12 = v2;
  sub_1D4F64914(v2);
  sub_1D4F678D0();
}

uint64_t sub_1D4F669F8(uint64_t a1)
{
  v4 = [objc_opt_self() isMainThread];
  if (v4)
  {
    v12 = OUTLINED_FUNCTION_90_4(v4, v5, v6, v7, v8, v9, v10, v11, v31, v32, v33, v34, v35, v36, v37, v38);
    sub_1D4F645EC(v12);
    OUTLINED_FUNCTION_12_24();

    sub_1D518AB68(a1, &v34, &v33);
    v2 = v33;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_29(&qword_1EDD54488);
LABEL_3:
  v13 = sub_1D560C758();
  __swift_project_value_buffer(v13, qword_1EDD76AA8);
  OUTLINED_FUNCTION_82();
  swift_retain_n();
  v14 = sub_1D560C738();
  v15 = sub_1D56156E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = 0x64656464612ELL;
    v17 = OUTLINED_FUNCTION_86_4();
    v33 = OUTLINED_FUNCTION_85_3();
    *v17 = 136446978;
    v18 = sub_1D4F636B4();
    sub_1D4E6835C(v18, v19, &v33);
    OUTLINED_FUNCTION_118_3();
    *(v17 + 4) = v1;
    *(v17 + 12) = 2082;
    if (v2 >> 6)
    {
      if (v2 >> 6 == 1)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        v20 = OUTLINED_FUNCTION_10_21();
        MEMORY[0x1DA6EAC70](v20);
        sub_1D502EC78(v2 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v21 = v34;
        v22 = v35;
      }

      else
      {
        v22 = 0xE600000000000000;
        v21 = 0x64656464612ELL;
      }
    }

    else
    {
      if (v2)
      {
        v21 = 0x656C62616464612ELL;
      }

      else
      {
        v21 = 0xD000000000000028;
      }

      if (v2)
      {
        v22 = 0xED0000296C696E28;
      }

      else
      {
        v22 = 0x80000001D567FDB0;
      }
    }

    sub_1D4E6835C(v21, v22, &v33);
    OUTLINED_FUNCTION_118_3();
    *(v17 + 14) = v1;
    *(v17 + 22) = 2082;
    sub_1D4F625B0();

    v23 = HIBYTE(v32) >> 6;
    if (v23)
    {
      if (v23 == 1)
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        v24 = OUTLINED_FUNCTION_10_21();
        MEMORY[0x1DA6EAC70](v24);
        sub_1D502EC78(HIBYTE(v32) & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v16 = v34;
        v25 = v35;
      }

      else
      {

        v25 = 0xE600000000000000;
      }
    }

    else
    {

      OUTLINED_FUNCTION_105_3();
      if ((v32 & 0x100000000000000) != 0)
      {
        v16 = 0x656C62616464612ELL;
      }

      else
      {
        v16 = 0xD000000000000028;
      }

      if ((v32 & 0x100000000000000) != 0)
      {
        v25 = v26;
      }

      else
      {
        v25 = 0x80000001D567FDB0;
      }
    }

    v27 = sub_1D4E6835C(v16, v25, &v33);

    *(v17 + 24) = v27;
    *(v17 + 32) = 2082;
    v28 = sub_1D4F5E0F8();
    sub_1D4E6835C(v28, v29, &v33);
    OUTLINED_FUNCTION_120_2();
    *(v17 + 34) = a1;
    _os_log_impl(&dword_1D4E3F000, v14, v15, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v17, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_61_14();
  }

  sub_1D4F625B0();
  LOBYTE(v33) = v2;
  result = static MusicLibrary.AddStatus.== infix(_:_:)(&v34, &v33);
  if ((result & 1) == 0)
  {
    LOBYTE(v34) = v2;
    return sub_1D4F5FCCC();
  }

  return result;
}

void sub_1D4F66DBC(uint64_t a1, uint64_t a2, double a3)
{
  v7 = [objc_opt_self() isMainThread];
  if (v7)
  {
    v15 = OUTLINED_FUNCTION_90_4(v7, v8, v9, v10, v11, v12, v13, v14, v39, v40, v41, v42, v43, v44, v45, v46);
    sub_1D4F645EC(v15);
    OUTLINED_FUNCTION_12_24();

    v16 = OUTLINED_FUNCTION_61();
    sub_1D50A911C(v16, v17, v18, v19, *&a3);
    v41 = v47;
    HIDWORD(v40) = v48;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_29(&qword_1EDD54488);
LABEL_3:
  v20 = sub_1D560C758();
  __swift_project_value_buffer(v20, qword_1EDD76AA8);
  OUTLINED_FUNCTION_82();
  swift_retain_n();
  v21 = sub_1D560C738();
  v22 = sub_1D56156E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_86_4();
    v47 = OUTLINED_FUNCTION_85_3();
    *v23 = 136446978;
    v24 = sub_1D4F636B4();
    sub_1D4E6835C(v24, v25, &v47);
    OUTLINED_FUNCTION_118_3();
    *(v23 + 4) = v3;
    *(v23 + 12) = 2082;
    v26 = MusicLibrary.DownloadStatus.description.getter();
    sub_1D4E6835C(v26, v27, &v47);
    OUTLINED_FUNCTION_118_3();
    *(v23 + 14) = v3;
    *(v23 + 22) = 2082;
    sub_1D4F62958();

    v28 = MusicLibrary.DownloadStatus.description.getter();
    v30 = v29;

    v31 = sub_1D4E6835C(v28, v30, &v47);

    *(v23 + 24) = v31;
    *(v23 + 32) = 2082;
    v42 = a1;
    LOBYTE(v43) = a2;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v32 = sub_1D5614DB8();
    sub_1D4E6835C(v32, v33, &v47);
    OUTLINED_FUNCTION_120_2();
    *(v23 + 34) = a2;
    _os_log_impl(&dword_1D4E3F000, v21, v22, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v23, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_61_14();
  }

  sub_1D4F62958();
  if (v43)
  {
    if (v43 == 1)
    {
      if (HIDWORD(v40) != 1 || v42 != v41)
      {
        goto LABEL_25;
      }
    }

    else
    {
      switch(v42)
      {
        case 1:
          if (HIDWORD(v40) != 2 || v41 != 1)
          {
            goto LABEL_25;
          }

          break;
        case 2:
          if (HIDWORD(v40) != 2 || v41 != 2)
          {
            goto LABEL_25;
          }

          break;
        case 3:
          if (HIDWORD(v40) != 2 || v41 != 3)
          {
            goto LABEL_25;
          }

          break;
        case 4:
          if (HIDWORD(v40) != 2 || v41 != 4)
          {
            goto LABEL_25;
          }

          break;
        default:
          if (HIDWORD(v40) != 2 || *&v41 != 0.0)
          {
            goto LABEL_25;
          }

          break;
      }
    }
  }

  else if (HIDWORD(v40) || *&v42 != *&v41)
  {
LABEL_25:
    sub_1D4F5FDA4();
  }
}

id sub_1D4F67140()
{
  OUTLINED_FUNCTION_94_3();
  v1 = v0;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    sub_1D4F62E60();
    v4 = sub_1D4F0B2E4();

    if (v4)
    {
    }

    else
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x100000000000001ALL, 0x80000001D567FD70);
      v5 = MEMORY[0x1DA6EAF70](v3, &type metadata for MusicLibrary.DownloadWarning);
      MEMORY[0x1DA6EAC70](v5);

      MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D567FD90);
      sub_1D4F62E60();
      MEMORY[0x1DA6EAF70]();

      v6 = OUTLINED_FUNCTION_85_0();
      MEMORY[0x1DA6EAC70](v6);

      MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

      return sub_1D4F5FFF0(v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D4F672F0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94_3();
  v3 = v2;
  OUTLINED_FUNCTION_5_6();
  v5 = v4;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_71_1();
  if ([objc_opt_self() isMainThread])
  {
    if (v3)
    {
      if (v3 <= 3)
      {
        v9 = (0x2010000u >> (8 * v3)) & 3;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      sub_1D4F647C8(v0);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((OUTLINED_FUNCTION_92_2(v10) & 1) == 0)
      {
        memset(v21, 0, sizeof(v21));
        sub_1D4E765C8(v21, &qword_1EC7EC510, &unk_1D5621040);
LABEL_27:
        OUTLINED_FUNCTION_46();
        return;
      }

      OUTLINED_FUNCTION_121_2();
      (*(v1 + 16))(v21, v0, v1);
      v9 = LOBYTE(v21[0]);
      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    sub_1D4F6326C();
    if (v9 != v22)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      v11 = 0x7469726F7661662ELL;
      v12 = 0xEA00000000006465;
      if (v9 != 1)
      {
        v11 = 0x656B696C7369642ELL;
        v12 = 0xE900000000000064;
      }

      if (v9)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x6C61727475656E2ELL;
      }

      if (v9)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v13, v14);

      OUTLINED_FUNCTION_117_2();
      sub_1D4F6326C();
      v15 = 0x7469726F7661662ELL;
      v16 = 0xEA00000000006465;
      if (LOBYTE(v21[0]) != 1)
      {
        v15 = 0x656B696C7369642ELL;
        v16 = 0xE900000000000064;
      }

      if (LOBYTE(v21[0]))
      {
        v17 = v15;
      }

      else
      {
        v17 = 0x6C61727475656E2ELL;
      }

      if (LOBYTE(v21[0]))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v17, v18);

      OUTLINED_FUNCTION_55_7();
      LOBYTE(v21[0]) = v3 == 0;
      _s9ItemStateC12StatusSourceOMa(0, v7, *(v5 + 88), v19);
      OUTLINED_FUNCTION_29_11();
      v20 = sub_1D5614DC8();
      MEMORY[0x1DA6EAC70](v20);

      MEMORY[0x1DA6EAC70](v22, v23);

      LOBYTE(v22) = v9;
      sub_1D4F600CC();
    }

    goto LABEL_27;
  }

  __break(1u);
}

void sub_1D4F675FC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94_3();
  v2 = v1;
  OUTLINED_FUNCTION_5_6();
  v4 = v3;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_71_1();
  if ([objc_opt_self() isMainThread])
  {
    if (v2)
    {
      v8 = v2 == 1;
    }

    else
    {
      sub_1D4F645EC(v0);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      if ((OUTLINED_FUNCTION_92_2(v9) & 1) == 0)
      {
        v18 = 0;
        memset(v17, 0, sizeof(v17));
        sub_1D4E765C8(v17, &qword_1EC7EC500, &unk_1D5621030);
LABEL_21:
        OUTLINED_FUNCTION_46();
        return;
      }

      OUTLINED_FUNCTION_121_2();
      OUTLINED_FUNCTION_12_24();
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D5200C94(v17);

      v8 = v17[0];
      __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    sub_1D4F63464();
    if (v8 != v19)
    {
      v16 = v2 == 0;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v8)
      {
        v10 = 0x64656E6E69702ELL;
      }

      else
      {
        v10 = 0x6E6E6950746F6E2ELL;
      }

      if (v8)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v10, v11);

      OUTLINED_FUNCTION_117_2();
      sub_1D4F63464();
      if (v17[0])
      {
        v12 = 0x64656E6E69702ELL;
      }

      else
      {
        v12 = 0x6E6E6950746F6E2ELL;
      }

      if (v17[0])
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v12, v13);

      OUTLINED_FUNCTION_55_7();
      v17[0] = v16;
      _s9ItemStateC12StatusSourceOMa(0, v6, *(v4 + 88), v14);
      OUTLINED_FUNCTION_29_11();
      v15 = sub_1D5614DC8();
      MEMORY[0x1DA6EAC70](v15);

      MEMORY[0x1DA6EAC70](v19, v20);

      LOBYTE(v19) = v8;
      sub_1D4F60218();
    }

    goto LABEL_21;
  }

  __break(1u);
}

void sub_1D4F678D0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_71_1();
  v6 = sub_1D4F648D8();
  if (v6)
  {
    v7 = v6;
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1D4F647C8(v0);
    sub_1D4F5FE54(v2);
    (*(v4 + 8))(v0, v2);
    sub_1D4F67140();

    v8 = OUTLINED_FUNCTION_93_4();
    [v8 v9];
    sub_1D4F672F0();
    v10 = OUTLINED_FUNCTION_93_4();
    [v10 v11];
    sub_1D4F675FC();
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F67C34(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t sub_1D4F67CA0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4EA7328(v3, *v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F67CF8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for MusicLibrary.ItemState(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_1D560C838();
  *a3 = result;
  return result;
}

uint64_t MusicLibrary.state<A>(for:)()
{
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for MusicLibrary.ItemState(0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_61();
  v5(v4);

  return sub_1D4F5E430();
}

void sub_1D4F67E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_56_8(a1, a2, a3);
  v7 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v8 = [v7 currentStatus];
  v11 = v4;
  v12 = v5;
  __swift_allocate_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_24_0();
  (*(v9 + 16))();

  sub_1D518AB68(v8, v10, v3);
}

void sub_1D4F67EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_56_8(a1, a2, a3);
  v7 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver) initWithIdentifyingModelObject_];
  [v7 currentStatus];
  v8 = v12[0];
  v9 = v12[1];
  v10 = v12[2];
  v13 = v4;
  v14 = v5;
  __swift_allocate_boxed_opaque_existential_0(v12);
  OUTLINED_FUNCTION_24_0();
  (*(v11 + 16))();

  sub_1D50A911C(v8, v9, v12, v3, v10);
}

uint64_t MusicLibrary.downloadWarnings<A>(for:)(uint64_t a1, uint64_t a2)
{
  result = sub_1D4F5FE54(a2);
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1D4F68014(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = sub_1D4F5F808(a1);
  v9 = [objc_opt_self() sharedLibraryTransientStateController];
  v4 = [v9 transientFavoriteStateForModelObject_];
  if (v4)
  {
    v5 = v4;

    v6 = 0x2010000u >> (8 * v5);
    if (v5 >= 4)
    {
      LOBYTE(v6) = 0;
    }

    *a2 = v6;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_61();
    v8(v7);
  }
}

void sub_1D4F68140(uint64_t a1)
{
  sub_1D4F6888C(319, &qword_1EDD543E8, &type metadata for MusicLibrary.AddStatus);
  if (v1 <= 0x3F)
  {
    sub_1D4F6888C(319, &qword_1EDD543F8, &type metadata for MusicLibrary.DownloadStatus);
    if (v2 <= 0x3F)
    {
      sub_1D4F68828(319);
      if (v3 <= 0x3F)
      {
        sub_1D4F6888C(319, &qword_1EDD54430, &type metadata for MusicFavoriteStatus);
        if (v4 <= 0x3F)
        {
          sub_1D4F6888C(319, &qword_1EDD54410, &type metadata for MusicPinStatus);
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1D4F68828(uint64_t a1)
{
  if (!qword_1EDD543D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC4F0, &qword_1D565B520);
    v1 = sub_1D560C928();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD543D0);
    }
  }
}

void sub_1D4F6888C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D560C928();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D4F688F0()
{
  result = qword_1EDD52630;
  if (!qword_1EDD52630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52630);
  }

  return result;
}

uint64_t sub_1D4F68934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED400, &qword_1D5620CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F689BC()
{
  OUTLINED_FUNCTION_80();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_69_6(v1);

  return sub_1D4F610B8(v3, v4);
}

uint64_t sub_1D4F68A50()
{
  OUTLINED_FUNCTION_80();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_69_6(v1);

  return sub_1D4F611CC(v3, v4);
}

uint64_t sub_1D4F68AF4()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_34_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_25(v1);
  OUTLINED_FUNCTION_98_2();

  return sub_1D4F61C2C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_90Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4F68BE4()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_34_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_25(v1);
  OUTLINED_FUNCTION_98_2();

  return sub_1D4F61440(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_86Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D4F68CCC()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v4[1] = sub_1D4F69338;
  v6 = OUTLINED_FUNCTION_85_0();

  return sub_1D4F617CC(v6, v7, v2, v1);
}

uint64_t sub_1D4F68D7C()
{
  OUTLINED_FUNCTION_34_13();
  v1 = *(v0 + 7);
  v2 = *(v0 + 8);
  v3 = v0[9];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_8_25(v5);

  return sub_1D4F60F84(v7, v3, v8, v9, v10, v1, v2);
}

uint64_t objectdestroy_107Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4F68E90()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_34_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_8_25(v1);
  OUTLINED_FUNCTION_25_3();

  return sub_1D4F60CC4(v3, v4, v5, v6, v7);
}

uint64_t sub_1D4F68F2C(uint64_t a1)
{
  v2 = v1[4];
  OUTLINED_FUNCTION_1_0();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = (v1 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_32(v12);
  *v13 = v14;
  v13[1] = sub_1D4F69064;

  return sub_1D4F63CB4(a1, v6, v7, v8, v1 + v4, v10, v11, v2);
}

uint64_t sub_1D4F69064()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F69148()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  v1[1] = sub_1D4F69338;
  OUTLINED_FUNCTION_25_3();

  return sub_1D4F64130(v3, v4, v5, v6, v7);
}

_BYTE *sub_1D4F6924C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_42_12(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E6975008];

  return sub_1D4E62A60(a1, a2, a3, v4);
}

unint64_t OUTLINED_FUNCTION_57_10(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1D4E6835C(v11, v10, &a10);
}

unint64_t OUTLINED_FUNCTION_62_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 + 4) = v23;
  *(v24 + 12) = 2082;

  return sub_1D4E6835C(a22, v22, (v25 - 88));
}

unint64_t OUTLINED_FUNCTION_76_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v23 + 24) = v21;
  *(v23 + 32) = 2082;

  return sub_1D4E6835C(a21, v22, (v24 - 88));
}

uint64_t OUTLINED_FUNCTION_78_4()
{

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_89_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_log_type_t a20)
{

  _os_log_impl(a1, v20, a20, a4, v21, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_91_3()
{
}

uint64_t OUTLINED_FUNCTION_109_4(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_110_2()
{
  v3 = *(v1 - 272);

  return sub_1D4E6835C(v3, v0, (v1 - 176));
}

uint64_t OUTLINED_FUNCTION_113_3()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_115_4@<X0>(uint64_t a2@<X8>)
{
  **(v2 + 64) = a2 == 0;
}

uint64_t OUTLINED_FUNCTION_116_3@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 88) = v2;
  *(v3 - 80) = (a1 - 32) | 0x8000000000000000;

  return sub_1D4F0B2D8(v1);
}

void OUTLINED_FUNCTION_117_2()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_120_2()
{
}

void *OUTLINED_FUNCTION_121_2()
{
  sub_1D4E48324((v0 - 160), v0 - 120);
  v1 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
}

uint64_t sub_1D4F6964C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC678, &qword_1D56214B0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F6B870();
  sub_1D56163D8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1D4F697AC(uint64_t a1)
{
  v2 = sub_1D4F6B870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F697E8(uint64_t a1)
{
  v2 = sub_1D4F6B870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F69858(void *a1, void *a2)
{
  v5 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC6C8, &qword_1D56214D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = *a1 == *a2 && v17 == v18;
    if (!v19 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v40 = v7;
  v39 = type metadata accessor for CloudSuggestedSongsRawRequest.Body(0);
  v20 = *(v39 + 20);
  v21 = *(v13 + 48);
  sub_1D4E69910(a1 + v20, v16, &qword_1EC7EAB90, &qword_1D5621260);
  sub_1D4E69910(a2 + v20, &v16[v21], &qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_10(v16);
  if (!v19)
  {
    sub_1D4E69910(v16, v2, &qword_1EC7EAB90, &qword_1D5621260);
    OUTLINED_FUNCTION_10(&v16[v21]);
    if (!v22)
    {
      v24 = v40;
      (*(v40 + 32))(v11, &v16[v21], v5);
      OUTLINED_FUNCTION_0_30();
      sub_1D4F6BC08(v25, v26, MEMORY[0x1E6976498]);
      v27 = sub_1D5614D18();
      v28 = *(v24 + 8);
      v28(v11, v5);
      v28(v2, v5);
      sub_1D4E50004(v16, &qword_1EC7EAB90, &qword_1D5621260);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }

    (*(v40 + 8))(v2, v5);
LABEL_18:
    sub_1D4E50004(v16, &qword_1EC7EC6C8, &qword_1D56214D0);
    return 0;
  }

  OUTLINED_FUNCTION_10(&v16[v21]);
  if (!v19)
  {
    goto LABEL_18;
  }

  sub_1D4E50004(v16, &qword_1EC7EAB90, &qword_1D5621260);
LABEL_22:
  v29 = v39;
  v30 = *(v39 + 24);
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    sub_1D4F293CC(v31, v32);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v35 = *(v29 + 28);
  v36 = *(a2 + v35);
  if (*(a1 + v35))
  {
    if (v36)
    {

      sub_1D4EF7F48();
      v38 = v37;

      if (v38)
      {
        return 1;
      }
    }
  }

  else if (!v36)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D4F69BE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473696C79616C70 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F43746567726174 && a2 == 0xED0000746E65746ELL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465726566666FLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
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

uint64_t sub_1D4F69D44(char a1)
{
  result = 0x7473696C79616C70;
  switch(a1)
  {
    case 1:
      result = 0x6F43746567726174;
      break;
    case 2:
      result = 0x6465726566666FLL;
      break;
    case 3:
      result = 0x64657463656C6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F69DDC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC638, &qword_1D56214A8);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F6B6B0();
  sub_1D56163D8();
  LOBYTE(v26) = 0;
  sub_1D5616028();
  if (!v2)
  {
    v11 = type metadata accessor for CloudSuggestedSongsRawRequest.Body(0);
    v12 = v11[5];
    LOBYTE(v26) = 1;
    sub_1D5612478();
    OUTLINED_FUNCTION_0_30();
    v15 = sub_1D4F6BC08(v13, v14, MEMORY[0x1E6976488]);
    OUTLINED_FUNCTION_4_3(v3 + v12, &v26, v16, v17, v15);
    v26 = *(v3 + v11[6]);
    HIBYTE(v25) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC610, &qword_1D5621270);
    v18 = sub_1D4F6B704();
    OUTLINED_FUNCTION_4_3(&v26, &v25 + 7, v19, v20, v18);
    v26 = *(v3 + v11[7]);
    HIBYTE(v25) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC620, qword_1D5621278);
    v21 = sub_1D4F6BAA4(&qword_1EC7EC658, &qword_1EC7EC660, MEMORY[0x1E69766F8], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_4_3(&v26, &v25 + 7, v22, v23, v21);
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1D4F6A030(uint64_t a1)
{
  v3 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v13 = type metadata accessor for CloudSuggestedSongsRawRequest.Body(0);
  sub_1D4E69910(v1 + v13[5], v12, &qword_1EC7EAB90, &qword_1D5621260);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v5 + 32))(v9, v12, v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_30();
    sub_1D4F6BC08(v14, v15, MEMORY[0x1E6976490]);
    sub_1D5614CB8();
    (*(v5 + 8))(v9, v3);
  }

  v16 = *(v1 + v13[6]);
  if (v16)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F32B58(a1, v16);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v13[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F07A30(a1);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1D4F6A254()
{
  OUTLINED_FUNCTION_164();
  sub_1D4F6A030(v1);
  return sub_1D5616328();
}

void sub_1D4F6A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v56 = v20;
  v22 = v21;
  v50 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v53 = &v48 - v25;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC6A0, &qword_1D56214C8);
  OUTLINED_FUNCTION_4();
  v52 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - v28;
  v30 = type metadata accessor for CloudSuggestedSongsRawRequest.Body(0);
  v31 = (v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v34 = (v33 - v32);
  *v34 = 0;
  v34[1] = 0;
  v35 = v31[7];
  v36 = sub_1D5612478();
  v51 = v35;
  __swift_storeEnumTagSinglePayload(v34 + v35, 1, 1, v36);
  v37 = v31[8];
  *(v34 + v37) = 0;
  v38 = v31[9];
  *(v34 + v38) = 0;
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1D4F6B6B0();
  v54 = v29;
  v39 = v56;
  sub_1D5616398();
  if (v39)
  {
    v47 = v22;
  }

  else
  {
    v48 = v38;
    v49 = v37;
    v40 = v52;
    v41 = v53;
    v56 = v22;
    v42 = v54;
    v43 = v55;
    *v34 = sub_1D5615F38();
    v34[1] = v44;
    LOBYTE(a10) = 1;
    OUTLINED_FUNCTION_0_30();
    sub_1D4F6BC08(v45, v46, MEMORY[0x1E69764A0]);
    sub_1D5615F78();
    sub_1D4F6B970(v41, v34 + v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC610, &qword_1D5621270);
    v57 = 2;
    sub_1D4F6B9E0();
    OUTLINED_FUNCTION_5_19();
    *(v34 + v49) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC620, qword_1D5621278);
    v57 = 3;
    sub_1D4F6BAA4(&qword_1EC7EC6B8, &qword_1EC7EC6C0, MEMORY[0x1E6976710], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_5_19();
    (*(v40 + 8))(v42, v43);
    *(v34 + v48) = a10;
    sub_1D4F6BBA4(v34, v50);
    v47 = v56;
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  sub_1D4F6B918(v34, type metadata accessor for CloudSuggestedSongsRawRequest.Body);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6A604(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v8 = a1 == a4 && a2 == a5;
    if (!v8 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }

LABEL_15:
    if (BYTE1(a3) == 2)
    {
      if (BYTE1(a6) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a6) == 2 || ((BYTE1(a6) ^ BYTE1(a3)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (a6 != 2 && ((a6 ^ a3) & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1D4F6A6C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573736572706D69 && a2 == 0xE900000000000064;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6577656976657270 && a2 == 0xE900000000000064)
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

uint64_t sub_1D4F6A7E8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](a1);
  return sub_1D5616328();
}

uint64_t sub_1D4F6A828(char a1)
{
  if (!a1)
  {
    return 0x656372756F73;
  }

  if (a1 == 1)
  {
    return 0x6573736572706D69;
  }

  return 0x6577656976657270;
}

void sub_1D4F6A884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v25;
  a24 = v26;
  a10 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC698, &qword_1D56214C0);
  OUTLINED_FUNCTION_4();
  v32 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1D4F6B8C4();
  sub_1D56163D8();
  a14 = 0;
  sub_1D5616028();
  if (!v24)
  {
    a13 = 1;
    sub_1D5616038();
    a12 = 2;
    sub_1D5616038();
  }

  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6AA04(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (a3)
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (a4 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (HIBYTE(a4) != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t sub_1D4F6AAA8(uint64_t a1, uint64_t a2, __int16 a3)
{
  OUTLINED_FUNCTION_164();
  sub_1D4F6AA04(v7, a1, a2, a3);
  return sub_1D5616328();
}

void sub_1D4F6AB00()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC688, &qword_1D56214B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1D4F6B8C4();
  sub_1D5616398();
  OUTLINED_FUNCTION_6_24();
  sub_1D5615F38();
  OUTLINED_FUNCTION_6_24();
  sub_1D5615F48();
  OUTLINED_FUNCTION_6_24();
  sub_1D5615F48();
  v3 = OUTLINED_FUNCTION_7_25();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6ACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F69BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F6ACFC(uint64_t a1)
{
  v2 = sub_1D4F6B6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F6AD38(uint64_t a1)
{
  v2 = sub_1D4F6B6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F6ADB0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F6A030(v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F6ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4F6AE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F6A6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F6AE68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F6A7E0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F6AE90(uint64_t a1)
{
  v2 = sub_1D4F6B8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F6AECC(uint64_t a1)
{
  v2 = sub_1D4F6B8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D4F6AF08(uint64_t a1@<X8>)
{
  sub_1D4F6AB00();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1D4F6AF94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D56162D8();
  sub_1D4F6AA04(v6, v2, v3, v4);
  return sub_1D5616328();
}

void sub_1D4F6AFEC()
{
  OUTLINED_FUNCTION_25_1();
  v30 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE68, &unk_1D5621200);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9();
  v8 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  OUTLINED_FUNCTION_10_22();

  sub_1D4F6B31C(v0, v14);
  OUTLINED_FUNCTION_10_22();
  v15 = *(v0 + *(v6 + 56));
  sub_1D4F6B918(v0, type metadata accessor for MusicSuggestedSongsEntry);
  v16 = sub_1D4ED17E4();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5613838();
  OUTLINED_FUNCTION_14();
  (*(v18 + 16))(v12, v14);
  v19 = &v12[*(v9 + 28)];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  v20 = v15;
  v21 = v28;
  v22 = sub_1D54E4C60(v20);
  sub_1D542ACA8(v22, v21);

  sub_1D4F6B918(v12, type metadata accessor for MusicSuggestedSongsEntry);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4F00530(0, *(v17 + 16) + 1, 1, v17);
    v17 = v26;
  }

  v24 = *(v17 + 16);
  v23 = *(v17 + 24);
  if (v24 >= v23 >> 1)
  {
    sub_1D4F00530(v23 > 1, v24 + 1, 1, v17);
    v17 = v27;
  }

  *(v17 + 16) = v24 + 1;
  (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v21, v29);
  v25 = v30;
  swift_isUniquelyReferenced_nonNull_native();
  v31 = *v25;
  sub_1D4F13C7C();
  *v25 = v31;
  sub_1D4F6B918(v14, type metadata accessor for MusicSuggestedSongsEntry);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6B31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedSongsEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D4F6B3A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1D4F6B3F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for CloudSuggestedSongsRawRequest.Body(uint64_t a1)
{
  result = qword_1EC7EC5F0;
  if (!qword_1EC7EC5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F6B4D0(uint64_t a1)
{
  sub_1D4F18AF4();
  if (v1 <= 0x3F)
  {
    sub_1D4F6B5B4(319);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EC7EC608, &qword_1EC7EC610, &qword_1D5621270);
      if (v3 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7EC618, &qword_1EC7EC620, qword_1D5621278);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D4F6B5B4(uint64_t a1)
{
  if (!qword_1EC7EC600)
  {
    sub_1D5612478();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EC600);
    }
  }
}

unint64_t sub_1D4F6B65C()
{
  result = qword_1EC7EC630;
  if (!qword_1EC7EC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC630);
  }

  return result;
}

unint64_t sub_1D4F6B6B0()
{
  result = qword_1EC7EC640;
  if (!qword_1EC7EC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC640);
  }

  return result;
}

unint64_t sub_1D4F6B704()
{
  result = qword_1EC7EC650;
  if (!qword_1EC7EC650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC610, &qword_1D5621270);
    sub_1D4F6BAA4(&qword_1EC7EC658, &qword_1EC7EC660, MEMORY[0x1E69766F8], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC650);
  }

  return result;
}

unint64_t sub_1D4F6B7C8()
{
  result = qword_1EC7EC668;
  if (!qword_1EC7EC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC668);
  }

  return result;
}

unint64_t sub_1D4F6B81C()
{
  result = qword_1EC7EC670;
  if (!qword_1EC7EC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC670);
  }

  return result;
}

unint64_t sub_1D4F6B870()
{
  result = qword_1EC7EC680;
  if (!qword_1EC7EC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC680);
  }

  return result;
}

unint64_t sub_1D4F6B8C4()
{
  result = qword_1EC7EC690;
  if (!qword_1EC7EC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC690);
  }

  return result;
}

uint64_t sub_1D4F6B918(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4F6B970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4F6B9E0()
{
  result = qword_1EC7EC6B0;
  if (!qword_1EC7EC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC610, &qword_1D5621270);
    sub_1D4F6BAA4(&qword_1EC7EC6B8, &qword_1EC7EC6C0, MEMORY[0x1E6976710], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6B0);
  }

  return result;
}

uint64_t sub_1D4F6BAA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC620, qword_1D5621278);
    sub_1D4F6BB2C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F6BB2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE68, &unk_1D5621200);
    sub_1D4F6B7C8();
    sub_1D4F6B81C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F6BBA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSuggestedSongsRawRequest.Body(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F6BC08(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CloudSuggestedSongsRawRequest.EntryMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudSuggestedSongsRawRequest.Body.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F6BE1C()
{
  result = qword_1EC7EC6D0;
  if (!qword_1EC7EC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6D0);
  }

  return result;
}

unint64_t sub_1D4F6BE74()
{
  result = qword_1EC7EC6D8;
  if (!qword_1EC7EC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6D8);
  }

  return result;
}

unint64_t sub_1D4F6BECC()
{
  result = qword_1EC7EC6E0;
  if (!qword_1EC7EC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6E0);
  }

  return result;
}

unint64_t sub_1D4F6BF24()
{
  result = qword_1EC7EC6E8;
  if (!qword_1EC7EC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6E8);
  }

  return result;
}

unint64_t sub_1D4F6BF7C()
{
  result = qword_1EC7EC6F0;
  if (!qword_1EC7EC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6F0);
  }

  return result;
}

unint64_t sub_1D4F6BFD4()
{
  result = qword_1EC7EC6F8;
  if (!qword_1EC7EC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6F8);
  }

  return result;
}

unint64_t sub_1D4F6C02C()
{
  result = qword_1EC7EC700;
  if (!qword_1EC7EC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC700);
  }

  return result;
}

unint64_t sub_1D4F6C084()
{
  result = qword_1EC7EC708;
  if (!qword_1EC7EC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC708);
  }

  return result;
}

uint64_t sub_1D4F6C17C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC728, &unk_1D5621810);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612EC8();

  *(v0 + 48) = v3;
  qword_1EC87BE70 = v0;
  return result;
}

uint64_t sub_1D4F6C25C()
{
  type metadata accessor for UploadedVideo(0);
  sub_1D4F6C3F0(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  return sub_1D560EC98();
}

uint64_t sub_1D4F6C33C(void *a1)
{
  a1[1] = sub_1D4F6C3F0(&qword_1EC7EC710, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  a1[2] = sub_1D4F6C3F0(&qword_1EC7EC718, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  result = sub_1D4F6C3F0(&qword_1EC7EC720, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  a1[3] = result;
  return result;
}

uint64_t sub_1D4F6C3F0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_1D4F6C438()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC738, &qword_1D56218F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v8 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__libraries;
  v17[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC748, &qword_1D56219E0);
  sub_1D560C8B8();
  (*(v5 + 32))(v0 + v8, v7, v4);
  v9 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask) = 0;
  v10 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_libraryDidChangeObservationTasks;
  sub_1D560F0D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC770, &qword_1D5621A50);
  sub_1D4F6F854(&qword_1EDD53438, MEMORY[0x1E6975598], &protocol conformance descriptor for MusicLibrary);
  *(v0 + v10) = sub_1D5614BD8();
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    swift_beginAccess();
    sub_1D560C8B8();
    swift_endAccess();
    v12 = sub_1D5615458();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;

    *(v0 + v9) = sub_1D51EC8B4(0, 0, v3, &unk_1D5621A68, v14);

    [objc_opt_self() beginDiscoveringMediaLibraries];
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v12);
    v15 = swift_allocObject();
    swift_weakInit();

    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v15;
    sub_1D51ECB60(0, 0, v3, &unk_1D5621A78, v16);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F6C7B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D4F6C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC750, &unk_1D5667A30);
  v4[7] = swift_task_alloc();
  v5 = sub_1D56157D8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F6C914, 0, 0);
}

uint64_t sub_1D4F6C914()
{
  v1 = *(v0 + 48);
  v2 = [objc_opt_self() defaultCenter];
  v3 = [objc_opt_self() availableMediaLibrariesDidChangeNotificationName];
  sub_1D56157E8();

  sub_1D56157C8();
  OUTLINED_FUNCTION_15_21(v1 + 16);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v4, v5, MEMORY[0x1E6969F00]);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 88) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_16(v6);

  return MEMORY[0x1EEE6D8C8](v8);
}

uint64_t sub_1D4F6CA38()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = sub_1D4F6CCF4;
  }

  else
  {
    v7 = sub_1D4F6CB34;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D4F6CB48()
{
  OUTLINED_FUNCTION_60();
  v1 = sub_1D560BB18();
  OUTLINED_FUNCTION_18_21(v1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_22_17();
    v4(v3);

    OUTLINED_FUNCTION_55();

    return v5();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {
      v0[14] = sub_1D56153C8();
      v0[15] = sub_1D56153B8();
      v8 = swift_task_alloc();
      v0[16] = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_26_12(v8);

      return sub_1D4F6DC58();
    }

    else
    {
      sub_1D4E765C8(v0[7], &qword_1EC7EC750, &unk_1D5667A30);
      OUTLINED_FUNCTION_0_31();
      sub_1D4F6F854(v9, v10, MEMORY[0x1E6969F00]);
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      v0[11] = v11;
      *v11 = v12;
      v13 = OUTLINED_FUNCTION_2_16(v11);

      return MEMORY[0x1EEE6D8C8](v13);
    }
  }
}

uint64_t sub_1D4F6CCF4()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 40) = *(v0 + 96);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_28_15(v1);

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D4F6CD6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  sub_1D5615338();
  v3 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4F6CE90()
{
  OUTLINED_FUNCTION_60();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D4F6CEF8()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(*(v0 + 56), &qword_1EC7EC750, &unk_1D5667A30);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v1, v2, MEMORY[0x1E6969F00]);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 88) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_16(v3);

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1D4F6CFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D4F6CFC8, 0, 0);
}

uint64_t sub_1D4F6CFC8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_15_21(*(v0 + 48) + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_26_12(v2);

    return sub_1D4F6DC58();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t sub_1D4F6D0A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4F6D1A4()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_55();
  return v1();
}

uint64_t MusicAutoupdatingSharedLibrariesResponse.deinit()
{
  [objc_opt_self() endDiscoveringMediaLibraries];
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask))
  {

    sub_1D56154B8();
  }

  v1 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__request;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC730, &qword_1D56218E8);
  OUTLINED_FUNCTION_4_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__libraries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC738, &qword_1D56218F0);
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t MusicAutoupdatingSharedLibrariesResponse.__deallocating_deinit()
{
  MusicAutoupdatingSharedLibrariesResponse.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4F6D390()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

void (*sub_1D4F6D408(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1D560C8E8();
  return sub_1D4F62FB8;
}

uint64_t sub_1D4F6D4B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC740, &qword_1D56218F8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_1_3(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__request, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC730, &qword_1D56218E8);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*sub_1D4F6D5B8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC740, &qword_1D56218F8);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__request, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC730, &qword_1D56218E8);
  sub_1D560C8C8();
  swift_endAccess();
  return sub_1D4F6D6D4;
}

void sub_1D4F6D6D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1D4F6D4B4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1D4F6D4B4(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D4F6D788@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4F6D7E0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F6D7E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D4F6D854(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D4F6D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_1D4F6D9A4(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_54_0(v3 + *a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D4F6DA14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC780, &qword_1D5621A58);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_1_3(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__libraries, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC738, &qword_1D56218F0);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1D4F6DB18()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 16) = v0;
  sub_1D56153C8();
  *(v1 + 24) = sub_1D56153B8();
  sub_1D5615338();
  v2 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4F6DBA4()
{
  OUTLINED_FUNCTION_60();

  type metadata accessor for MusicAutoupdatingSharedLibrariesResponse(0);
  sub_1D4F6F854(&qword_1EC7EC778, type metadata accessor for MusicAutoupdatingSharedLibrariesResponse, &protocol conformance descriptor for MusicAutoupdatingSharedLibrariesResponse);
  sub_1D560C838();
  sub_1D560C888();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4F6DC58()
{
  OUTLINED_FUNCTION_60();
  v1[18] = v0;
  v1[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC758, &qword_1D5621A38);
  v1[20] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC760, &qword_1D5621A40);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1D56153C8();
  v1[25] = sub_1D56153B8();
  sub_1D5615338();
  v3 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4F6DD94()
{
  v38 = v0[24];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v34 = v0[20];
  v39 = v0[19];
  v37 = v0[18];

  sub_1D560F0D8();
  v33 = sub_1D560EFE8();
  v0[15] = v33;
  v0[16] = sub_1D4F6D7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC748, &qword_1D56219E0);
  sub_1D4E62A60(&qword_1EDD527D8, &qword_1EC7EC748, &qword_1D56219E0, MEMORY[0x1E69E6310]);
  v4 = MEMORY[0x1E6975598];
  sub_1D4F6F854(&qword_1EDD53430, MEMORY[0x1E6975598], &protocol conformance descriptor for MusicLibrary);
  sub_1D5614CE8();

  v5 = v4;
  v6 = v34;
  sub_1D4F6F854(&qword_1EDD53438, v5, &protocol conformance descriptor for MusicLibrary);
  sub_1D5615EC8();
  v7 = OUTLINED_FUNCTION_22_17();
  v32 = v8;
  v8(v7, v3);
  (*(v2 + 16))(v1, v38, v3);
  sub_1D4E62A60(&unk_1EDD52588, &qword_1EC7EC760, &qword_1D5621A40, MEMORY[0x1E69E6EF8]);
  sub_1D5614F98();
  v9 = *(v39 + 36);
  v36 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_libraryDidChangeObservationTasks;
  swift_beginAccess();
  sub_1D4E62A60(&qword_1EDD52580, &qword_1EC7EC760, &qword_1D5621A40, MEMORY[0x1E69E6F00]);
  while (1)
  {
    sub_1D5615648();
    if (*(v6 + v9) == v0[17])
    {
      break;
    }

    v10 = sub_1D5615688();
    v12 = *(v11 + 8);
    v13 = *(v11 + 24);
    v14 = *(v11 + 25);
    sub_1D4F6F844(*v11, v12);
    v10(v0 + 2, 0);
    sub_1D5615658();
    if (v14 == 1)
    {
      if ((v13 & 1) != 0 && *(*(v37 + v36) + 16))
      {

        sub_1D4F0E290();
        if ((v15 & 1) == 0)
        {

          goto LABEL_22;
        }

        sub_1D56154B8();
        sub_1D56154B8();
        OUTLINED_FUNCTION_54_0(v37 + v36, (v0 + 12));
        sub_1D4F0E290();
        if (v16)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v37 + v36);
          *(v37 + v36) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC768, &qword_1D5621A48);
          sub_1D5615D78();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC770, &qword_1D5621A50);
          sub_1D5615D98();
          *(v37 + v36) = v40;
        }

        swift_endAccess();
        OUTLINED_FUNCTION_9_22();
        sub_1D4F6F84C();
      }

      else
      {
LABEL_22:
        OUTLINED_FUNCTION_9_22();
        sub_1D4F6F84C();
      }
    }

    else
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_22;
      }

      v35 = sub_1D4F6E498(v12);
      v18 = v17;
      OUTLINED_FUNCTION_54_0(v37 + v36, (v0 + 9));
      swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v37 + v36);
      *(v37 + v36) = 0x8000000000000000;
      result = sub_1D4F0E290();
      if (__OFADD__(v41[2], (v20 & 1) == 0))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      v21 = result;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC768, &qword_1D5621A48);
      result = sub_1D5615D78();
      if (result)
      {
        result = sub_1D4F0E290();
        if ((v22 & 1) != (v23 & 1))
        {

          return sub_1D5616238();
        }

        v21 = result;
        if (v22)
        {
LABEL_19:
          v28 = (v41[7] + 16 * v21);
          *v28 = v35;
          v28[1] = v18;

          goto LABEL_20;
        }
      }

      else if (v22)
      {
        goto LABEL_19;
      }

      v41[(v21 >> 6) + 8] |= 1 << v21;
      *(v41[6] + 8 * v21) = v12;
      v24 = (v41[7] + 16 * v21);
      *v24 = v35;
      v24[1] = v18;
      v25 = v41[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_30;
      }

      v41[2] = v27;

LABEL_20:
      *(v37 + v36) = v41;
      swift_endAccess();
      OUTLINED_FUNCTION_9_22();
      sub_1D4F6F84C();
      v6 = v34;
    }
  }

  v29 = v0[24];
  v30 = v0[21];
  sub_1D4E765C8(v0[20], &qword_1EC7EC758, &qword_1D5621A38);
  v32(v29, v30);
  sub_1D4F6D854(v33);

  OUTLINED_FUNCTION_55();

  return v31();
}

uint64_t sub_1D4F6E498(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  sub_1D5615458();
  OUTLINED_FUNCTION_27_11();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = a1;
  v4[5] = v3;

  v5 = OUTLINED_FUNCTION_21_18();
  v9 = sub_1D51EC8B4(v5, v6, v7, v8, v4);
  OUTLINED_FUNCTION_27_11();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = v10;

  v12 = OUTLINED_FUNCTION_21_18();
  sub_1D51EC8B4(v12, v13, v14, v15, v11);
  return v9;
}

uint64_t sub_1D4F6E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC750, &unk_1D5667A30);
  v5[8] = swift_task_alloc();
  v6 = sub_1D56157D8();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F6E708, 0, 0);
}

uint64_t sub_1D4F6E708()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 56);
  sub_1D560F048();
  sub_1D56157C8();
  OUTLINED_FUNCTION_15_21(v1 + 16);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v2, v3, MEMORY[0x1E6969F00]);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_25(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_33(v5);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1D4F6E7DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_1D4F6F9CC;
  }

  else
  {
    v7 = sub_1D4F6E8D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D4F6E8EC()
{
  OUTLINED_FUNCTION_60();
  v1 = sub_1D560BB18();
  OUTLINED_FUNCTION_18_21(v1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_22_17();
    v4(v3);

    OUTLINED_FUNCTION_55();

    return v5();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[14] = Strong;
    if (Strong)
    {
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_26_12(v8);

      return sub_1D4F6DB18();
    }

    else
    {
      sub_1D4E765C8(v0[8], &qword_1EC7EC750, &unk_1D5667A30);
      OUTLINED_FUNCTION_0_31();
      sub_1D4F6F854(v9, v10, MEMORY[0x1E6969F00]);
      v11 = swift_task_alloc();
      v12 = OUTLINED_FUNCTION_6_25(v11);
      *v12 = v13;
      v14 = OUTLINED_FUNCTION_1_33(v12);

      return MEMORY[0x1EEE6D8C8](v14);
    }
  }
}

uint64_t sub_1D4F6EA90()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4F6EB90()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(*(v0 + 64), &qword_1EC7EC750, &unk_1D5667A30);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v1, v2, MEMORY[0x1E6969F00]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_25(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_33(v4);

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1D4F6EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC750, &unk_1D5667A30);
  v5[8] = swift_task_alloc();
  v6 = sub_1D56157D8();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F6ED4C, 0, 0);
}

uint64_t sub_1D4F6ED4C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 56);
  sub_1D560F068();
  sub_1D56157C8();
  OUTLINED_FUNCTION_15_21(v1 + 16);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v2, v3, MEMORY[0x1E6969F00]);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_25(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_33(v5);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1D4F6EE20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_1D4F6F0D4;
  }

  else
  {
    v7 = sub_1D4F6EF1C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D4F6EF30()
{
  OUTLINED_FUNCTION_60();
  v1 = sub_1D560BB18();
  OUTLINED_FUNCTION_18_21(v1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_22_17();
    v4(v3);

    OUTLINED_FUNCTION_55();

    return v5();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[14] = Strong;
    if (Strong)
    {
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_26_12(v8);

      return sub_1D4F6DB18();
    }

    else
    {
      sub_1D4E765C8(v0[8], &qword_1EC7EC750, &unk_1D5667A30);
      OUTLINED_FUNCTION_0_31();
      sub_1D4F6F854(v9, v10, MEMORY[0x1E6969F00]);
      v11 = swift_task_alloc();
      v12 = OUTLINED_FUNCTION_6_25(v11);
      *v12 = v13;
      v14 = OUTLINED_FUNCTION_1_33(v12);

      return MEMORY[0x1EEE6D8C8](v14);
    }
  }
}

uint64_t sub_1D4F6F0D4()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 40) = *(v0 + 104);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_28_15(v1);

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D4F6F14C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4F6F24C()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(*(v0 + 64), &qword_1EC7EC750, &unk_1D5667A30);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v1, v2, MEMORY[0x1E6969F00]);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_25(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_33(v4);

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1D4F6F310@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MusicAutoupdatingSharedLibrariesResponse(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

id MusicSharedLibrariesRequest.autoupdatingResponse.getter()
{
  type metadata accessor for MusicAutoupdatingSharedLibrariesResponse(0);
  swift_allocObject();
  return sub_1D4F6C438();
}

uint64_t type metadata accessor for MusicAutoupdatingSharedLibrariesResponse(uint64_t a1)
{
  result = qword_1EDD59678;
  if (!qword_1EDD59678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F6F3DC(uint64_t a1)
{
  sub_1D4F6F5F8();
  if (v1 <= 0x3F)
  {
    sub_1D4F6F648(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D4F6F5F8()
{
  if (!qword_1EDD54420)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD54420);
    }
  }
}

void sub_1D4F6F648(uint64_t a1)
{
  if (!qword_1EDD543C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC748, &qword_1D56219E0);
    v1 = sub_1D560C928();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD543C0);
    }
  }
}

uint64_t sub_1D4F6F6AC()
{
  OUTLINED_FUNCTION_25_14();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_4(v4);

  return sub_1D4F6E610(v6, v7, v8, v3, v2);
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D4F6F79C()
{
  OUTLINED_FUNCTION_25_14();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_4(v4);

  return sub_1D4F6EC54(v6, v7, v8, v3, v2);
}

uint64_t sub_1D4F6F854(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F6F89C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D4F6C81C(v5, v6, v7, v2);
}

uint64_t sub_1D4F6F934()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D4F6CFA8(v5, v6, v7, v2);
}

uint64_t OUTLINED_FUNCTION_28_15(uint64_t a1)
{

  return swift_dynamicCast();
}

id sub_1D4F6F9F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D4F6FA4C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D4F6FAA8()
{
  type metadata accessor for MusicKitInternal_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDD76788 = result;
  return result;
}

uint64_t MusicPin.Item.id.getter()
{
  MusicPin.Item.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_45_0();
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t MusicPin.Item.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for MusicPin.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1D4F6FD08(v2, v6 - v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = sub_1D5613EF8();
      v9 = MEMORY[0x1E6976EF8];
      break;
    case 2u:
      v8 = sub_1D560EEA8();
      v9 = MEMORY[0x1E69754B0];
      break;
    case 3u:
      v8 = sub_1D5614898();
      v9 = MEMORY[0x1E69773A0];
      break;
    case 4u:
      v8 = sub_1D5613838();
      v9 = MEMORY[0x1E6976BB0];
      break;
    default:
      v8 = sub_1D5613AF8();
      v9 = MEMORY[0x1E6976CF0];
      break;
  }

  a1[3] = v8;
  a1[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, v7, v8);
}

uint64_t type metadata accessor for MusicPin.Item(uint64_t a1)
{
  result = qword_1EDD59468;
  if (!qword_1EDD59468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F6FD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MusicPin.Item.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v38 = v3;
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v37 = v4;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v35 = v6;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v34 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v14 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for MusicPin.Item(v18);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1D4F6FD08(v0, v21 - v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v29 = OUTLINED_FUNCTION_16_20();
      v30(v29);
      sub_1D5613E18();
      v31 = OUTLINED_FUNCTION_161();
      v33(v31, v32);
      break;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v27(v1, v22, v10);
      sub_1D560EDC8();
      (*(v34 + 8))(v1, v10);
      break;
    case 3u:
      OUTLINED_FUNCTION_81();
      v28(v9, v22, v36);
      sub_1D5614598();
      (*(v35 + 8))(v9, v36);
      break;
    case 4u:
      v0 = v37;
      v16 = v38;
      OUTLINED_FUNCTION_81();
      v25 = OUTLINED_FUNCTION_222();
      v14 = v39;
      v26(v25);
      sub_1D56136D8();
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_81();
      v23 = OUTLINED_FUNCTION_222();
      v24(v23);
      sub_1D5613968();
LABEL_4:
      (*(v16 + 8))(v0, v14);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicPin.Item.artwork.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v32 = v4;
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v31 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v29 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v30 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v28 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v14 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for MusicPin.Item(v14);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_60_7(v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_11_18();
      v27(v2, v0, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC7D0, &qword_1D562DEE0);
      swift_allocObject();
      sub_1D560DE48();
      sub_1D5613EE8();
      (*(v28 + 8))(v2, v30);

      break;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v22 = OUTLINED_FUNCTION_16_20();
      v23(v22);
      sub_1D560EE78();
      v24 = OUTLINED_FUNCTION_161();
      v25(v24);
      break;
    case 3u:
      OUTLINED_FUNCTION_81();
      v26(v1, v0, v31);
      sub_1D5614848();
      (*(v29 + 8))(v1, v31);
      break;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v21(v7, v0, v33);
      sub_1D56137F8();
      (*(v32 + 8))(v7, v33);
      break;
    default:
      OUTLINED_FUNCTION_11_18();
      v17 = OUTLINED_FUNCTION_222();
      v18(v17);
      sub_1D5613AE8();
      v19 = OUTLINED_FUNCTION_159();
      v20(v19);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void MusicPin.Item.playParameters.getter()
{
  OUTLINED_FUNCTION_47();
  v30 = v3;
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v5 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v29 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v13 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v15 = OUTLINED_FUNCTION_14_3();
  type metadata accessor for MusicPin.Item(v15);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_1D4F6FD08(v0, v18 - v17);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = sub_1D56109F8();
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v28);
      sub_1D4F70890(v19);
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v26(v1, v19, v10);
      sub_1D560ED68();
      (*(v29 + 8))(v1, v10);
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_33_1();
      v27(v9, v19, v5);
      sub_1D5614518();
      v21 = OUTLINED_FUNCTION_15_2();
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_33_1();
      v24 = OUTLINED_FUNCTION_159();
      v25(v24);
      sub_1D5613688();
      v21 = OUTLINED_FUNCTION_159();
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_33_1();
      v20(v2, v19, v13);
      sub_1D5613918();
      v21 = OUTLINED_FUNCTION_161();
LABEL_6:
      v23(v21, v22);
LABEL_7:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D4F70890(uint64_t a1)
{
  v2 = type metadata accessor for MusicPin.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MusicPin.Item.title.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v10 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v12 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v14 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for MusicPin.Item(v14);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1D4F6FD08(v0, v17 - v16);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v32(v2, v18, v10);
      sub_1D5613ED8();
      OUTLINED_FUNCTION_44_10();
      v22 = OUTLINED_FUNCTION_176();
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v28(v1, v18, v8);
      sub_1D560EE68();
      OUTLINED_FUNCTION_44_10();
      v22 = v1;
      v23 = v8;
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_11_18();
      v29(v7, v18, v33);
      sub_1D56146D8();
      v30 = OUTLINED_FUNCTION_93();
      v31(v30);
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v24 = OUTLINED_FUNCTION_159();
      v25(v24);
      sub_1D56137E8();
      v26 = OUTLINED_FUNCTION_222();
      v27(v26);
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_33_1();
      v19 = OUTLINED_FUNCTION_159();
      v20(v19);
      sub_1D5613AB8();
      OUTLINED_FUNCTION_44_10();
      v22 = v0;
      v23 = v12;
LABEL_7:
      v21(v22, v23);
LABEL_8:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void static MusicPin.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v77 = v1;
  v78 = v2;
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v75 = v4;
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v67 = v5;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v73 = v7;
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v66 = v8;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v71 = v10;
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v65 = v11;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v69 = v13;
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v64 = v14;
  OUTLINED_FUNCTION_70_0();
  v15 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v68 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_15_3();
  type metadata accessor for MusicPin.Item(v18);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v22 = v20 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v63 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v63 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v63 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC7D8, &qword_1D5621AA0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v63 - v37;
  v39 = *(v36 + 56);
  sub_1D4F6FD08(v77, &v63 - v37);
  sub_1D4F6FD08(v78, &v38[v39]);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4F6FD08(v38, v32);
      if (OUTLINED_FUNCTION_54_8() != 1)
      {
        (*(v69 + 8))(v32, v70);
        goto LABEL_18;
      }

      v56 = v69;
      v55 = v70;
      OUTLINED_FUNCTION_11_18();
      v57(v64, &v38[v39], v55);
      sub_1D5613EA8();
      v58 = *(v56 + 8);
      v59 = OUTLINED_FUNCTION_93();
      v58(v59);
      (v58)(v32, v55);
      goto LABEL_13;
    case 2u:
      sub_1D4F6FD08(v38, v29);
      if (OUTLINED_FUNCTION_54_8() == 2)
      {
        v47 = v71;
        v46 = v72;
        (*(v71 + 32))(v65, &v38[v39], v72);
        OUTLINED_FUNCTION_15_2();
        sub_1D560EE28();
        v48 = *(v47 + 8);
        v49 = OUTLINED_FUNCTION_93();
        v48(v49);
        (v48)(v29, v46);
        goto LABEL_13;
      }

      (*(v71 + 8))(v29, v72);
      goto LABEL_18;
    case 3u:
      sub_1D4F6FD08(v38, v26);
      if (OUTLINED_FUNCTION_54_8() == 3)
      {
        v51 = v73;
        v50 = v74;
        OUTLINED_FUNCTION_11_18();
        v52(v66, &v38[v39], v50);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v53 = *(v51 + 8);
        v54 = OUTLINED_FUNCTION_93();
        v53(v54);
        (v53)(v26, v50);
        goto LABEL_13;
      }

      (*(v73 + 8))(v26, v74);
      goto LABEL_18;
    case 4u:
      sub_1D4F6FD08(v38, v22);
      if (OUTLINED_FUNCTION_54_8() == 4)
      {
        v40 = v75;
        OUTLINED_FUNCTION_11_18();
        v41 = &v38[v39];
        v42 = v67;
        v43 = v76;
        v44(v67, v41, v76);
        sub_1D56137A8();
        v45 = *(v40 + 8);
        v45(v42, v43);
        v45(v22, v43);
        goto LABEL_13;
      }

      (*(v75 + 8))(v22, v76);
      goto LABEL_18;
    default:
      sub_1D4F6FD08(v38, v34);
      if (OUTLINED_FUNCTION_54_8())
      {
        (*(v68 + 8))(v34, v15);
LABEL_18:
        sub_1D4E50004(v38, &qword_1EC7EC7D8, &qword_1D5621AA0);
      }

      else
      {
        v60 = v68;
        OUTLINED_FUNCTION_11_18();
        v61(v0, &v38[v39], v15);
        OUTLINED_FUNCTION_176();
        sub_1D5613A68();
        v62 = *(v60 + 8);
        v62(v0, v15);
        v62(v34, v15);
LABEL_13:
        sub_1D4F70890(v38);
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

void MusicPin.Item.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v50 = v1;
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v48 = v5;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v47 = v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v45 = v8;
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v15 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v17 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for MusicPin.Item(v21);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  sub_1D4F6FD08(v50, v24 - v23);
  OUTLINED_FUNCTION_222();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v38(v3, v25, v15);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_20_24();
      sub_1D4F73958(v39, v40, MEMORY[0x1E6976F30]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      v41 = OUTLINED_FUNCTION_161();
      v43(v41, v42);
      break;
    case 2u:
      OUTLINED_FUNCTION_52_8();
      v32(v2, v25, v12);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_22_18();
      sub_1D4F73958(v33, v34, MEMORY[0x1E69754F8]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v44 + 8))(v2, v12);
      break;
    case 3u:
      OUTLINED_FUNCTION_33_1();
      v35(v11, v25, v46);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_21_19();
      sub_1D4F73958(v36, v37, MEMORY[0x1E69773F0]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v45 + 8))(v11, v46);
      break;
    case 4u:
      OUTLINED_FUNCTION_33_1();
      v29(v47, v25, v49);
      MEMORY[0x1DA6EC0D0](4);
      OUTLINED_FUNCTION_23_18();
      sub_1D4F73958(v30, v31, MEMORY[0x1E6976BF8]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v48 + 8))(v47, v49);
      break;
    default:
      OUTLINED_FUNCTION_81();
      v26(v0, v25, v17);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_25_24();
      sub_1D4F73958(v27, v28, MEMORY[0x1E6976D38]);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v19 + 8))(v0, v17);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicPin.Item.hashValue.getter()
{
  sub_1D56162D8();
  MusicPin.Item.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F717C4(uint64_t a1)
{
  sub_1D56162D8();
  MusicPin.Item.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F71800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4F73958(&qword_1EC7EC830, type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  *v9 = v4;
  v9[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v10);
}

uint64_t MusicPin.Item.init(from:)(void *a1)
{
  type metadata accessor for MusicPin.Item(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_18_22();
  sub_1D4F73958(v3, v4, &protocol conformance descriptor for MusicPin.Item);
  OUTLINED_FUNCTION_17_18();
  sub_1D4F73958(v5, v1, &protocol conformance descriptor for LegacyModelCodableMusicPinItem);
  OUTLINED_FUNCTION_28_16(&qword_1EC7EC800);
  sub_1D560CA18();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPin.Item.encode(to:)(uint64_t a1)
{
  type metadata accessor for MusicPin.Item(0);
  OUTLINED_FUNCTION_18_22();
  sub_1D4F73958(v2, v3, &protocol conformance descriptor for MusicPin.Item);
  OUTLINED_FUNCTION_17_18();
  sub_1D4F73958(v4, v1, &protocol conformance descriptor for LegacyModelCodableMusicPinItem);
  OUTLINED_FUNCTION_28_16(&qword_1EC7EC800);
  return sub_1D560CA28();
}

uint64_t sub_1D4F71AE0()
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
  qword_1EC7EC788 = v4;
  return result;
}

uint64_t sub_1D4F71C3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  v6(v5 + v2, *MEMORY[0x1E6975218], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6975200], v0);
  qword_1EC7EC790 = v4;
  return result;
}

void MusicPin.Item.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v110 = v3;
  v97[3] = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v97[2] = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v97[1] = v6;
  OUTLINED_FUNCTION_70_0();
  v97[9] = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v97[8] = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v97[7] = v9;
  OUTLINED_FUNCTION_70_0();
  v97[6] = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v97[5] = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v97[4] = v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v97[11] = v14;
  v97[12] = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v97[10] = v15;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v106 = v17;
  v107 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v105 = v18;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v103 = v20;
  v104 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v102 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v101 = v97 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_31_6();
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v27 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v100 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  v98 = v30 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v99 = v97 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = v97 - v35;
  v109 = type metadata accessor for MusicPin.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v108 = v38;
  v39 = v2[3];
  v40 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v39);
  v41 = v27;
  sub_1D5610CD8();
  sub_1D560D5E8();
  v42 = OUTLINED_FUNCTION_16_20();
  v43(v42);
  if (__swift_getEnumTagSinglePayload(v0, 1, v27) == 1)
  {
    sub_1D4E50004(v0, &qword_1EC7F6DF0, &qword_1D561D1E0);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    OUTLINED_FUNCTION_45_0();
    sub_1D5610CF8();
    v44 = v102;
    sub_1D560FFB8();
    OUTLINED_FUNCTION_24_19();
    sub_1D4F73958(v45, v46, MEMORY[0x1E6975BE0]);
    OUTLINED_FUNCTION_16_20();
    v47 = v104;
    v48 = sub_1D5614D18();
    v39 = *(v103 + 8);
    (v39)(v44, v47);
    if (v48)
    {
      v50 = OUTLINED_FUNCTION_220();
      v39(v50);
      OUTLINED_FUNCTION_55_8();
      sub_1D5613978();
    }

    else
    {
      sub_1D560FEA8();
      OUTLINED_FUNCTION_5_20();
      v49 = OUTLINED_FUNCTION_8_26();
      v39(v49);
      sub_1D5610038();
      OUTLINED_FUNCTION_5_20();
      v68 = OUTLINED_FUNCTION_8_26();
      v39(v68);
      if (v48)
      {
        v70 = OUTLINED_FUNCTION_220();
        v39(v70);
        OUTLINED_FUNCTION_55_8();
        OUTLINED_FUNCTION_38_15();
        sub_1D56145A8();
      }

      else
      {
        sub_1D560FF58();
        OUTLINED_FUNCTION_5_20();
        v69 = OUTLINED_FUNCTION_8_26();
        v39(v69);
        sub_1D560FFA8();
        OUTLINED_FUNCTION_5_20();
        v79 = OUTLINED_FUNCTION_8_26();
        v39(v79);
        if (v48)
        {
          v81 = OUTLINED_FUNCTION_220();
          v39(v81);
          OUTLINED_FUNCTION_55_8();
          OUTLINED_FUNCTION_38_15();
          sub_1D56136E8();
        }

        else
        {
          sub_1D560FE48();
          OUTLINED_FUNCTION_5_20();
          v80 = OUTLINED_FUNCTION_8_26();
          v39(v80);
          sub_1D560FE38();
          OUTLINED_FUNCTION_5_20();
          v85 = OUTLINED_FUNCTION_8_26();
          v39(v85);
          if (v48)
          {
            v87 = OUTLINED_FUNCTION_220();
            v39(v87);
            OUTLINED_FUNCTION_55_8();
            OUTLINED_FUNCTION_38_15();
            sub_1D560EDD8();
          }

          else
          {
            sub_1D560FDF8();
            OUTLINED_FUNCTION_5_20();
            v86 = OUTLINED_FUNCTION_8_26();
            v39(v86);
            sub_1D560FFD8();
            OUTLINED_FUNCTION_5_20();
            v88 = OUTLINED_FUNCTION_8_26();
            v39(v88);
            if ((v48 & 1) == 0)
            {
              sub_1D560FEE8();
              OUTLINED_FUNCTION_5_20();
              v89 = OUTLINED_FUNCTION_8_26();
              v39(v89);
              while (1)
              {
                v111 = 0;
                v112 = 0xE000000000000000;
                sub_1D5615B68();
                MEMORY[0x1DA6EAC70](0xD00000000000004FLL, 0x80000001D56803A0);
                __swift_project_boxed_opaque_existential_1(v40, v40[3]);
                OUTLINED_FUNCTION_45_0();
                sub_1D5610CF8();
                OUTLINED_FUNCTION_24_19();
                sub_1D4F73958(v94, v95, MEMORY[0x1E6975BF8]);
                v96 = sub_1D56160F8();
                MEMORY[0x1DA6EAC70](v96);

                (v39)(v44, v47);
                MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
LABEL_29:
                sub_1D5615E08();
                __break(1u);
              }
            }

            v90 = OUTLINED_FUNCTION_220();
            v39(v90);
            OUTLINED_FUNCTION_55_8();
            sub_1D5613E28();
          }
        }
      }
    }
  }

  else
  {
    v47 = v2;
    v51 = v100;
    OUTLINED_FUNCTION_81();
    v52(v36, v0, v41);
    v40 = v99;
    v53 = OUTLINED_FUNCTION_15_2();
    v54(v53);
    v44 = v98;
    sub_1D560D908();
    OUTLINED_FUNCTION_19_16();
    v48 = sub_1D4F73958(v55, v56, MEMORY[0x1E6974F90]);
    v57 = OUTLINED_FUNCTION_12_25();
    v58 = *(v51 + 8);
    v59 = OUTLINED_FUNCTION_161();
    v58(v59);
    if (v57)
    {
      v60 = OUTLINED_FUNCTION_159_0();
      v58(v60);
      OUTLINED_FUNCTION_34_14();
      sub_1D5613978();
      v61 = OUTLINED_FUNCTION_47_12();
      v58(v61);
    }

    else
    {
      sub_1D560D938();
      v64 = OUTLINED_FUNCTION_12_25();
      v65 = OUTLINED_FUNCTION_161();
      v58(v65);
      if (v64)
      {
        v66 = OUTLINED_FUNCTION_159_0();
        v58(v66);
        OUTLINED_FUNCTION_34_14();
        sub_1D5613E28();
        v67 = OUTLINED_FUNCTION_47_12();
        v58(v67);
      }

      else
      {
        sub_1D560D878();
        v71 = OUTLINED_FUNCTION_12_25();
        v72 = OUTLINED_FUNCTION_161();
        v58(v72);
        if (v71)
        {
          v73 = OUTLINED_FUNCTION_159_0();
          v58(v73);
          OUTLINED_FUNCTION_34_14();
          OUTLINED_FUNCTION_38_15();
          sub_1D560EDD8();
          v74 = OUTLINED_FUNCTION_47_12();
          v58(v74);
        }

        else
        {
          sub_1D560D968();
          v75 = OUTLINED_FUNCTION_12_25();
          v76 = OUTLINED_FUNCTION_161();
          v58(v76);
          if (v75)
          {
            v77 = OUTLINED_FUNCTION_159_0();
            v58(v77);
            OUTLINED_FUNCTION_34_14();
            OUTLINED_FUNCTION_38_15();
            sub_1D56145A8();
            v78 = OUTLINED_FUNCTION_47_12();
            v58(v78);
          }

          else
          {
            sub_1D560D8E8();
            v48 = OUTLINED_FUNCTION_12_25();
            v82 = OUTLINED_FUNCTION_161();
            v58(v82);
            if ((v48 & 1) == 0)
            {
              v111 = 0;
              v112 = 0xE000000000000000;
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD000000000000060, 0x80000001D56803F0);
              OUTLINED_FUNCTION_19_16();
              sub_1D4F73958(v91, v92, MEMORY[0x1E6974F98]);
              v93 = sub_1D56160F8();
              MEMORY[0x1DA6EAC70](v93);

              MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
              goto LABEL_29;
            }

            v83 = OUTLINED_FUNCTION_159_0();
            v58(v83);
            OUTLINED_FUNCTION_34_14();
            OUTLINED_FUNCTION_38_15();
            sub_1D56136E8();
            v84 = OUTLINED_FUNCTION_47_12();
            v58(v84);
          }
        }
      }
    }
  }

  v62 = OUTLINED_FUNCTION_9_23();
  v63(v62);
  swift_storeEnumTagMultiPayload();
  sub_1D4F7296C(v48, v110);
  __swift_destroy_boxed_opaque_existential_1(v40);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F7296C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void MusicPin.Item.description.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v48 = v5;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v47 = v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v45 = v8;
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v43 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v44 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v13 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v17 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for MusicPin.Item(v21);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_60_7(v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v39(v0, v1, v17);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_20_24();
      sub_1D4F73958(v40, v41, MEMORY[0x1E6976F48]);
      v42 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v42);

      OUTLINED_FUNCTION_56_2();
      (*(v19 + 8))(v0, v17);
      break;
    case 2u:
      OUTLINED_FUNCTION_81();
      v32(v2, v1, v10);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_22_18();
      sub_1D4F73958(v33, v34, MEMORY[0x1E6975508]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v28 = *(v44 + 8);
      v26 = v2;
      v27 = v10;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_11_18();
      v35 = OUTLINED_FUNCTION_93();
      v36(v35);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_21_19();
      sub_1D4F73958(v37, v38, MEMORY[0x1E6977408]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      (*(v45 + 8))(v43, v46);
      break;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v29(v47, v1, v49);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_23_18();
      sub_1D4F73958(v30, v31, MEMORY[0x1E6976C10]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      (*(v48 + 8))(v47, v49);
      break;
    default:
      (*(v15 + 32))(v3, v1, v13);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_11_24();
      OUTLINED_FUNCTION_25_24();
      sub_1D4F73958(v24, v25, MEMORY[0x1E6976D50]);
      sub_1D56160F8();
      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_56_2();
      v26 = OUTLINED_FUNCTION_176();
LABEL_5:
      v28(v26, v27);
      break;
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46();
}

void MusicPin.Item.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v82 = v5;
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v81 = v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v79 = v8;
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v76 = v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v77 = v11;
  v78 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v12 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v14 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for MusicPin.Item(v18);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1D4F6FD08(v1, v21 - v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v64(v3, v22, v12);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v65 = sub_1D5613DF8();
      v67 = OUTLINED_FUNCTION_7_4(v65, v66);
      OUTLINED_FUNCTION_4_2(v67, v68, v69, v70, v71, v72, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      v73 = OUTLINED_FUNCTION_176();
      v75(v73, v74);
      break;
    case 2u:
      OUTLINED_FUNCTION_40_3();
      v45(v2, v22, v78);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v46 = sub_1D560EDB8();
      v48 = OUTLINED_FUNCTION_7_4(v46, v47);
      OUTLINED_FUNCTION_4_2(v48, v49, v50, v51, v52, v53, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      (*(v77 + 8))(v2, v78);
      break;
    case 3u:
      (*(v79 + 32))(v76, v22, v80);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v54 = sub_1D5614588();
      v56 = OUTLINED_FUNCTION_7_4(v54, v55);
      OUTLINED_FUNCTION_4_2(v56, v57, v58, v59, v60, v61, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      v62 = OUTLINED_FUNCTION_15_2();
      v63(v62);
      break;
    case 4u:
      OUTLINED_FUNCTION_11_18();
      v36(v81, v22, v83);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v37 = sub_1D56136C8();
      v39 = OUTLINED_FUNCTION_7_4(v37, v38);
      OUTLINED_FUNCTION_4_2(v39, v40, v41, v42, v43, v44, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_41_13();

      OUTLINED_FUNCTION_53();
      (*(v82 + 8))(v81, v83);
      break;
    default:
      OUTLINED_FUNCTION_11_18();
      v23 = OUTLINED_FUNCTION_24();
      v24(v23);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_10_23();
      v25 = sub_1D5613958();
      v27 = OUTLINED_FUNCTION_7_4(v25, v26);
      v33 = OUTLINED_FUNCTION_4_2(v27, v28, v29, v30, v31, v32, MEMORY[0x1E69E6158]);
      v35 = v34;

      MEMORY[0x1DA6EAC70](v33, v35);

      OUTLINED_FUNCTION_53();
      (*(v16 + 8))(v0, v14);
      break;
  }

  OUTLINED_FUNCTION_46();
}