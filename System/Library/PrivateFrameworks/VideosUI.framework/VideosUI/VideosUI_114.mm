void sub_1E3F9EB44(uint64_t a1, double a2, double a3)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v6 = (a1 - 1);
    v7 = v3[5];
    v13 = v3[6];
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1E3952BD8(v7, v13, v8);
    v11 = v3[3];
    v12 = v3[4];
    sub_1E40BF114((a3 - v10 * v6) / a1, v11, v12);
    sub_1E3952BE0(v7, v13, v8, v9);
    sub_1E40BF120();
    sub_1E40BF114(a3, v11, v12);
    sub_1E3952BE0(v7, v13, v8, v9);
  }
}

uint64_t sub_1E3F9ECA0()
{

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void (*sub_1E3F9ED64(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 168))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3F9EEBC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = a2 + 56;
  v4 = result + 56;
  while (v2)
  {
    result = CGRectEqualToRect(*(v4 - 24), *(v3 - 24));
    if (result)
    {
      v5 = v2 == 1;
    }

    else
    {
      v5 = 1;
    }

    --v2;
    v3 += 32;
    v4 += 32;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F9EFB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MultiPlayerViewControllerPlayerDistribution(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1E3F9F02C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3F9F04C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3F9F04C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

uint64_t sub_1E3F9F164(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v3, v4);
  sub_1E4205D64();
}

double sub_1E3F9F204@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _OWORD *a3@<X8>, uint64_t a4@<X0>, uint64_t a5@<X1>)
{
  v8 = sub_1E3F9F27C(a4, a5, a1);
  if (v8)
  {
    sub_1E3F9F95C(v8, a1, a2, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E3F9F27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E32822E0(a1, a2, a3);
  result = sub_1E4207194();
  v4 = result;
  v5 = *(result + 16);
  v6 = (result + 16 * v5 + 24);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    while (v5 <= *(v4 + 16))
    {
      v9 = *(v6 - 1);
      v8 = *v6;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E3740F88(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1E3740F88((v10 > 1), v11 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v6 -= 2;
      if (!--v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    if (!*(v7 + 16))
    {

      return 0;
    }

    return v7;
  }

  return result;
}

void sub_1E3F9F3BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = a1 + 16 + 16 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);

    sub_1E3277E60(v8, v9, a2, &v62);

    if (!v63)
    {
      sub_1E329505C(&v62);
      goto LABEL_93;
    }

    sub_1E329504C(&v62, v64);
    if (v5 == 1)
    {
      *(a3 + 24) = MEMORY[0x1E69E7CA0] + 8;
      v10 = swift_allocObject();
      *a3 = v10;
      sub_1E329504C(v64, (v10 + 16));
      return;
    }

    sub_1E328438C(v64, &v62);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    if (OUTLINED_FUNCTION_15_150(v11, v12))
    {

      v13 = OUTLINED_FUNCTION_12_152();
      sub_1E39E7FEC(v13, v14);
      OUTLINED_FUNCTION_20_117();
      sub_1E3FA1AE0(v15, v16, v17, v18);
      if (v19)
      {
        OUTLINED_FUNCTION_18_128();
        if (!v24)
        {

          goto LABEL_91;
        }

        if ((v21 & 0x1000000000000000) != 0)
        {
          v27 = sub_1E37801A4(v20, v21, 10);
          v55 = v54;

          if (v55)
          {
            goto LABEL_91;
          }

LABEL_96:
          if (v27 >= *(v61 + 16))
          {
            __swift_destroy_boxed_opaque_existential_1(v64);

            swift_unknownObjectRelease();
            goto LABEL_93;
          }

          if ((v27 & 0x8000000000000000) == 0)
          {
            v56 = *(v61 + 8 * v27 + 32);

            swift_unknownObjectRetain();
            v57 = OUTLINED_FUNCTION_12_152();
            v59 = sub_1E3FA1B34(v57, v58, v8, v9, v5);
            sub_1E3F9F3BC(v59, v56, a3);

            swift_unknownObjectRelease();

            goto LABEL_99;
          }

          __break(1u);
          goto LABEL_105;
        }

        if ((v21 & 0x2000000000000000) != 0)
        {
          *&v62 = v20;
          *(&v62 + 1) = v21 & 0xFFFFFFFFFFFFFFLL;
          if (v20 == 43)
          {
            if (!v23)
            {
LABEL_108:
              __break(1u);
              return;
            }

            if (v23 != 1)
            {
              OUTLINED_FUNCTION_10_154();
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v29 & v28)
                {
                  break;
                }

                OUTLINED_FUNCTION_32_6();
                if (!v29)
                {
                  break;
                }

                v27 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  break;
                }

                OUTLINED_FUNCTION_132();
                if (v29)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v20 == 45)
          {
            if (!v23)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            if (v23 != 1)
            {
              OUTLINED_FUNCTION_10_154();
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v29 & v28)
                {
                  break;
                }

                OUTLINED_FUNCTION_32_6();
                if (!v29)
                {
                  break;
                }

                v27 = v39 - v38;
                if (__OFSUB__(v39, v38))
                {
                  break;
                }

                OUTLINED_FUNCTION_132();
                if (v29)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v23)
          {
            v48 = &v62;
            while (*v48 - 48 <= 9)
            {
              OUTLINED_FUNCTION_32_6();
              if (!v29)
              {
                break;
              }

              v27 = v52 + v51;
              if (__OFADD__(v52, v51))
              {
                break;
              }

              v48 = (v49 + 1);
              if (v50 == 1)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_89;
        }

        if ((v20 & 0x1000000000000000) != 0)
        {
          v25 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v25 = sub_1E4207524();
          v22 = v60;
        }

        v26 = *v25;
        if (v26 == 43)
        {
          if (v22 < 1)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v22 == 1)
          {
            goto LABEL_89;
          }

          v27 = 0;
          if (v25)
          {
            OUTLINED_FUNCTION_11_171();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v29 & v28)
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_32_6();
              if (!v29)
              {
                goto LABEL_89;
              }

              v27 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_132();
              if (v29)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else if (v26 == 45)
        {
          if (v22 < 1)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          if (v22 == 1)
          {
            goto LABEL_89;
          }

          v27 = 0;
          if (v25)
          {
            OUTLINED_FUNCTION_11_171();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v29 & v28)
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_32_6();
              if (!v29)
              {
                goto LABEL_89;
              }

              v27 = v31 - v30;
              if (__OFSUB__(v31, v30))
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_132();
              if (v29)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else
        {
          if (!v22)
          {
LABEL_89:
            v27 = 0;
            LOBYTE(v22) = 1;
LABEL_90:
            v53 = v22;

            if (v53)
            {
LABEL_91:
              swift_unknownObjectRelease();

              goto LABEL_92;
            }

            goto LABEL_96;
          }

          v27 = 0;
          if (v25)
          {
            while (1)
            {
              v46 = *v25 - 48;
              if (v46 > 9)
              {
                goto LABEL_89;
              }

              v47 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_89;
              }

              v27 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_89;
              }

              ++v25;
              if (!--v22)
              {
                goto LABEL_90;
              }
            }
          }
        }

LABEL_88:
        LOBYTE(v22) = 0;
        goto LABEL_90;
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
      swift_unknownObjectRelease();

LABEL_93:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    sub_1E328438C(v64, &v62);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if ((OUTLINED_FUNCTION_15_150(v32, v33) & 1) == 0)
    {
LABEL_92:
      __swift_destroy_boxed_opaque_existential_1(v64);
      goto LABEL_93;
    }

    v34 = OUTLINED_FUNCTION_12_152();
    sub_1E39E7FEC(v34, v35);
    OUTLINED_FUNCTION_20_117();
    if (v5)
    {
      sub_1E42079E4();
      OUTLINED_FUNCTION_33_10();
      swift_unknownObjectRetain_n();
      v40 = swift_dynamicCastClass();
      if (!v40)
      {
        swift_unknownObjectRelease();
        v40 = MEMORY[0x1E69E7CC0];
      }

      v41 = *(v40 + 16);

      if (__OFSUB__(v5 >> 1, v9))
      {
        __break(1u);
      }

      else if (v41 == (v5 >> 1) - v9)
      {
        v37 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v37)
        {
LABEL_52:
          sub_1E3F9F3BC(v37, v61, a3);

LABEL_99:
          __swift_destroy_boxed_opaque_existential_1(v64);
          return;
        }

        v37 = MEMORY[0x1E69E7CC0];
LABEL_51:
        swift_unknownObjectRelease();
        goto LABEL_52;
      }

      swift_unknownObjectRelease();
    }

    sub_1E3FA276C(a1, v8, v9, v5);
    v37 = v36;
    goto LABEL_51;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *a3 = a2;
}

void sub_1E3F9F95C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  OUTLINED_FUNCTION_1_2();
  v90 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = *(a1 + 16);
  if (v23)
  {
    v88 = &v88 - v22;
    v89 = a4;
    v24 = (a1 + 16 + 16 * v23);
    v25 = v24[1];
    v92 = *v24;
    v93 = v25;

    sub_1E4205D64();

    OUTLINED_FUNCTION_34_8();
    if (__swift_getEnumTagSinglePayload(v26, v27, v28) == 1)
    {
      (*(v10 + 8))(v13, v8);
      v29 = v89;
      *v89 = 0u;
      *(v29 + 1) = 0u;
      return;
    }

    v30 = v90;
    v31 = *(v90 + 32);
    v32 = v88;
    v31(v88, v13, a3);
    v33 = v89;
    if (v23 == 1)
    {
      v89[3] = a3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      v31(boxed_opaque_existential_1, v32, a3);
      return;
    }

    v35 = *(v30 + 16);
    v35(v20, v32, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    if (swift_dynamicCast())
    {
      v36 = v33;
      v37 = v92;

      sub_1E39E7FEC(1, a1);
      OUTLINED_FUNCTION_19_139();
      sub_1E3FA1AE0(v38, v39, v40, v41);
      if (!v42)
      {
        v60 = OUTLINED_FUNCTION_5_215();
        v61(v60);
        swift_unknownObjectRelease();

LABEL_98:
        v33 = v36;
        goto LABEL_99;
      }

      OUTLINED_FUNCTION_18_128();
      if (!v47)
      {

        goto LABEL_93;
      }

      if ((v44 & 0x1000000000000000) != 0)
      {
        v50 = sub_1E37801A4(v43, v44, 10);
        v77 = v86;
        v36 = v89;
        goto LABEL_92;
      }

      if ((v44 & 0x2000000000000000) != 0)
      {
        v92 = v43;
        v93 = v44 & 0xFFFFFFFFFFFFFFLL;
        if (v43 == 43)
        {
          if (!v46)
          {
LABEL_109:
            __break(1u);
            return;
          }

          if (v46 != 1)
          {
            OUTLINED_FUNCTION_10_154();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v52 & v51)
              {
                break;
              }

              OUTLINED_FUNCTION_1_21();
              if (!v52)
              {
                break;
              }

              v50 = v69 + v68;
              if (__OFADD__(v69, v68))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v52)
              {
                goto LABEL_91;
              }
            }
          }
        }

        else if (v43 == 45)
        {
          if (!v46)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v46 != 1)
          {
            OUTLINED_FUNCTION_10_154();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v52 & v51)
              {
                break;
              }

              OUTLINED_FUNCTION_1_21();
              if (!v52)
              {
                break;
              }

              v50 = v63 - v62;
              if (__OFSUB__(v63, v62))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v52)
              {
                goto LABEL_91;
              }
            }
          }
        }

        else if (v46)
        {
          v72 = &v92;
          while (*v72 - 48 <= 9)
          {
            OUTLINED_FUNCTION_1_21();
            if (!v52)
            {
              break;
            }

            v50 = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            v72 = (v73 + 1);
            if (v74 == 1)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_90;
      }

      if ((v43 & 0x1000000000000000) != 0)
      {
        v48 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v48 = sub_1E4207524();
        v45 = v87;
      }

      v49 = *v48;
      if (v49 == 43)
      {
        if (v45 < 1)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        if (v45 == 1)
        {
          goto LABEL_90;
        }

        v50 = 0;
        if (v48)
        {
          OUTLINED_FUNCTION_11_171();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v52 & v51)
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_1_21();
            if (!v52)
            {
              goto LABEL_90;
            }

            v50 = v67 + v66;
            if (__OFADD__(v67, v66))
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_132();
            if (v52)
            {
              goto LABEL_91;
            }
          }
        }
      }

      else if (v49 == 45)
      {
        if (v45 < 1)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        if (v45 == 1)
        {
          goto LABEL_90;
        }

        v50 = 0;
        if (v48)
        {
          OUTLINED_FUNCTION_11_171();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v52 & v51)
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_1_21();
            if (!v52)
            {
              goto LABEL_90;
            }

            v50 = v54 - v53;
            if (__OFSUB__(v54, v53))
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_132();
            if (v52)
            {
              goto LABEL_91;
            }
          }
        }
      }

      else
      {
        if (!v45)
        {
LABEL_90:
          v50 = 0;
          LOBYTE(v45) = 1;
          goto LABEL_91;
        }

        v50 = 0;
        if (v48)
        {
          while (1)
          {
            v70 = *v48 - 48;
            if (v70 > 9)
            {
              goto LABEL_90;
            }

            v71 = 10 * v50;
            if ((v50 * 10) >> 64 != (10 * v50) >> 63)
            {
              goto LABEL_90;
            }

            v50 = v71 + v70;
            if (__OFADD__(v71, v70))
            {
              goto LABEL_90;
            }

            ++v48;
            if (!--v45)
            {
              goto LABEL_91;
            }
          }
        }
      }

LABEL_89:
      LOBYTE(v45) = 0;
LABEL_91:
      v91 = v45;
      v77 = v45;
LABEL_92:

      if (v77)
      {
LABEL_93:
        swift_unknownObjectRelease();

        v78 = OUTLINED_FUNCTION_5_215();
        v79(v78);
        goto LABEL_98;
      }

      if (v50 >= *(v37 + 16))
      {
        v84 = OUTLINED_FUNCTION_5_215();
        v85(v84);

        swift_unknownObjectRelease();
        goto LABEL_98;
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        v80 = *(v37 + 8 * v50 + 32);

        swift_unknownObjectRetain();
        v81 = sub_1E3FA1B34(1, a1, v31, v30, v33);
        sub_1E3F9F3BC(v81, v80, v36);
        swift_unknownObjectRelease();

        v82 = OUTLINED_FUNCTION_5_215();
        v83(v82);
        return;
      }

      __break(1u);
      goto LABEL_106;
    }

    v35(v17, v32, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (!swift_dynamicCast())
    {
      (*(v30 + 8))(v32, a3);
LABEL_99:
      *v33 = 0u;
      *(v33 + 16) = 0u;
      return;
    }

    v55 = v92;

    sub_1E39E7FEC(1, a1);
    OUTLINED_FUNCTION_19_139();
    if (v33)
    {
      sub_1E42079E4();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x1E69E7CC0];
      }

      v65 = *(v64 + 16);

      if (__OFSUB__(v33 >> 1, v30))
      {
        __break(1u);
      }

      else if (v65 == (v33 >> 1) - v30)
      {
        v57 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v58 = a3;
        v59 = v90;
        if (v57)
        {
LABEL_53:
          sub_1E3F9F3BC(v57, v55, v33);

          (*(v59 + 8))(v88, v58);
          return;
        }

        v57 = MEMORY[0x1E69E7CC0];
LABEL_52:
        swift_unknownObjectRelease();
        goto LABEL_53;
      }

      swift_unknownObjectRelease();
    }

    sub_1E3FA276C(a1, v31, v30, v33);
    v57 = v56;
    v58 = a3;
    v59 = v90;
    goto LABEL_52;
  }

  a4[3] = sub_1E4205D34();
  *a4 = a2;
}

uint64_t sub_1E3FA012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E3F9F27C(a2, a3, a3);

  if (v6)
  {
    sub_1E3294F34(a1, &v8);
    if (v9)
    {
      sub_1E329504C(&v8, v10);
      sub_1E3FA0C04(v10, v6, a4);

      sub_1E329505C(a1);
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_1E329505C(a1);

      return sub_1E329505C(&v8);
    }
  }

  else
  {

    return sub_1E329505C(a1);
  }
}

uint64_t sub_1E3FA0218(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 16 + 16 * v4);
    v7 = *v5;
    v6 = v5[1];

    OUTLINED_FUNCTION_7_206();
    if (!*(&v165 + 1))
    {
      goto LABEL_39;
    }

    sub_1E329505C(&v164);
    if (v4 == 1)
    {
      sub_1E328438C(v3, &v164);
      return sub_1E3946774(&v164, v7, v6);
    }

    OUTLINED_FUNCTION_7_206();
    if (*(&v165 + 1))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
      OUTLINED_FUNCTION_16_140(v16, v17, v18, v19, v20, v21, v22, v23, v114, v117, v120, v123, v126, v129, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161);
      if (swift_dynamicCast())
      {

        v24 = OUTLINED_FUNCTION_12_152();
        v26 = sub_1E39E7FEC(v24, v25);
        v124 = v28;
        v127 = v27;
        v121 = v29;
        v30 = sub_1E3FA1AE0(v26, v27, v28, v29);
        if (v31)
        {
          v32 = v30;
          v33 = v31;
          OUTLINED_FUNCTION_7_206();
          if (*(&v165 + 1))
          {
            OUTLINED_FUNCTION_16_140(v34, v35, v36, v37, v38, v39, v40, v41, v115, v118, v121, v124, v127, v26, v161, v135, v138, v141, v144, v147, v150, v153, v156, v159, v161);
            if (swift_dynamicCast())
            {
              v42 = v161;
              v43 = HIBYTE(v33) & 0xF;
              v44 = v32 & 0xFFFFFFFFFFFFLL;
              if ((v33 & 0x2000000000000000) != 0)
              {
                v45 = HIBYTE(v33) & 0xF;
              }

              else
              {
                v45 = v32 & 0xFFFFFFFFFFFFLL;
              }

              if (!v45)
              {

                goto LABEL_103;
              }

              if ((v33 & 0x1000000000000000) != 0)
              {
                v48 = sub_1E37801A4(v32, v33, 10);
                v76 = v113;
                goto LABEL_102;
              }

              if ((v33 & 0x2000000000000000) != 0)
              {
                *&v164 = v32;
                *(&v164 + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
                if (v32 == 43)
                {
                  if (!v43)
                  {
LABEL_152:
                    __break(1u);
                    goto LABEL_153;
                  }

                  if (v43 != 1)
                  {
                    OUTLINED_FUNCTION_10_154();
                    while (1)
                    {
                      OUTLINED_FUNCTION_1_4();
                      if (!v50 & v49)
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_6_11();
                      if (!v50)
                      {
                        break;
                      }

                      v48 = v71 + v70;
                      if (__OFADD__(v71, v70))
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_132();
                      if (v50)
                      {
                        goto LABEL_101;
                      }
                    }
                  }
                }

                else if (v32 == 45)
                {
                  if (!v43)
                  {
LABEL_150:
                    __break(1u);
                    goto LABEL_151;
                  }

                  if (v43 != 1)
                  {
                    OUTLINED_FUNCTION_10_154();
                    while (1)
                    {
                      OUTLINED_FUNCTION_1_4();
                      if (!v50 & v49)
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_6_11();
                      if (!v50)
                      {
                        break;
                      }

                      v48 = v67 - v66;
                      if (__OFSUB__(v67, v66))
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_132();
                      if (v50)
                      {
                        goto LABEL_101;
                      }
                    }
                  }
                }

                else if (v43)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_4();
                    if (!v50 & v49)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_6_11();
                    if (!v50)
                    {
                      break;
                    }

                    v48 = v75 + v74;
                    if (__OFADD__(v75, v74))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_132();
                    if (v50)
                    {
                      goto LABEL_101;
                    }
                  }
                }

                goto LABEL_100;
              }

              if ((v32 & 0x1000000000000000) != 0)
              {
                v46 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v46 = sub_1E4207524();
              }

              v47 = *v46;
              if (v47 == 43)
              {
                if (v44 < 1)
                {
LABEL_151:
                  __break(1u);
                  goto LABEL_152;
                }

                if (v44 == 1)
                {
                  goto LABEL_100;
                }

                v48 = 0;
                if (v46)
                {
                  OUTLINED_FUNCTION_11_171();
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_4();
                    if (!v50 & v49)
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_6_11();
                    if (!v50)
                    {
                      goto LABEL_100;
                    }

                    v48 = v69 + v68;
                    if (__OFADD__(v69, v68))
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_132();
                    if (v50)
                    {
                      goto LABEL_101;
                    }
                  }
                }
              }

              else if (v47 == 45)
              {
                if (v44 < 1)
                {
LABEL_149:
                  __break(1u);
                  goto LABEL_150;
                }

                if (v44 == 1)
                {
                  goto LABEL_100;
                }

                v48 = 0;
                if (v46)
                {
                  OUTLINED_FUNCTION_11_171();
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_4();
                    if (!v50 & v49)
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_6_11();
                    if (!v50)
                    {
                      goto LABEL_100;
                    }

                    v48 = v52 - v51;
                    if (__OFSUB__(v52, v51))
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_132();
                    if (v50)
                    {
                      goto LABEL_101;
                    }
                  }
                }
              }

              else
              {
                if (!v44)
                {
LABEL_100:
                  v48 = 0;
                  v53 = 1;
                  goto LABEL_101;
                }

                v48 = 0;
                if (v46)
                {
                  do
                  {
                    v72 = *v46 - 48;
                    if (v72 > 9)
                    {
                      goto LABEL_100;
                    }

                    v73 = 10 * v48;
                    if ((v48 * 10) >> 64 != (10 * v48) >> 63)
                    {
                      goto LABEL_100;
                    }

                    v48 = v73 + v72;
                    if (__OFADD__(v73, v72))
                    {
                      goto LABEL_100;
                    }

                    ++v46;
                  }

                  while (--v44);
                }
              }

              v53 = 0;
LABEL_101:
              LOBYTE(v161) = v53;
              v76 = v53;
LABEL_102:

              if (v76)
              {
LABEL_103:

                swift_unknownObjectRelease();
              }

              v32 = v132;
              if (v48 >= v132[2])
              {

                return swift_unknownObjectRelease();
              }

              v119 = v48;
              swift_unknownObjectRetain();
              v33 = sub_1E3FA1B34(1, v130, v128, v125, v122);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v32 = sub_1E3FA2A70(v132);
              }

              if (v48 < 0)
              {
                __break(1u);
              }

              else
              {
                v128 = v42;
                if (v48 < *(v32 + 16))
                {
                  sub_1E3FA0218(v3, v33);

                  OUTLINED_FUNCTION_34_8();
                  sub_1E39ABF00(v77, v78, v79);
                  v163 = *(v32 + 8 * v48 + 32);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
                  v80 = swift_dynamicCast();
                  if (v80)
                  {
                    v88 = OUTLINED_FUNCTION_16_140(v80, v81, v82, v83, v84, v85, v86, v87, v116, v48, v122, v125, v42, v130, v32, v136, v139, v142, v145, v148, v151, v154, v157, v160, v161);
                    sub_1E329504C(v88, v89);
                    v33 = MEMORY[0x1E69E7CC0];
                    v42 = v128;
                    if (!v48)
                    {
                      goto LABEL_124;
                    }

                    sub_1E39E8C20(0, v48 + 1, v128);
                    v32 = v90;
                    v33 = v91;
                    v42 = v92;
                    v3 = v93;
                    if (v93)
                    {
                      sub_1E42079E4();
                      OUTLINED_FUNCTION_33_10();
                      swift_unknownObjectRetain_n();
                      v95 = swift_dynamicCastClass();
                      if (!v95)
                      {
                        swift_unknownObjectRelease();
                        v95 = MEMORY[0x1E69E7CC0];
                      }

                      v96 = *(v95 + 16);

                      if (__OFSUB__(v3 >> 1, v42))
                      {
                        goto LABEL_154;
                      }

                      if (v96 != (v3 >> 1) - v42)
                      {
                        goto LABEL_155;
                      }

                      v33 = swift_dynamicCastClass();
                      swift_unknownObjectRelease();
                      v42 = v128;
                      if (v33)
                      {
                        goto LABEL_124;
                      }

                      v33 = MEMORY[0x1E69E7CC0];
                      goto LABEL_123;
                    }

                    while (1)
                    {
                      sub_1E3FA283C(v32, v33, v42, v3);
                      v33 = v94;
                      v42 = v128;
LABEL_123:
                      swift_unknownObjectRelease();
LABEL_124:
                      v97 = *(v42 + 16);
                      if (v119 == v97 - 1)
                      {

                        goto LABEL_126;
                      }

                      if (v97 > v119 + 1)
                      {
                        break;
                      }

LABEL_153:
                      __break(1u);
LABEL_154:
                      __break(1u);
LABEL_155:
                      swift_unknownObjectRelease();
                    }

                    sub_1E39E8C20(v119 + 1, v97, v42);
                    v100 = v99;
                    v102 = v101;
                    v104 = v103;
                    v106 = v105;

                    if ((v106 & 1) == 0)
                    {
                      goto LABEL_129;
                    }

                    sub_1E42079E4();
                    swift_unknownObjectRetain_n();
                    v108 = swift_dynamicCastClass();
                    if (!v108)
                    {
                      swift_unknownObjectRelease();
                      v108 = MEMORY[0x1E69E7CC0];
                    }

                    v109 = *(v108 + 16);

                    if (__OFSUB__(v106 >> 1, v104))
                    {
                      __break(1u);
                    }

                    else if (v109 == (v106 >> 1) - v104)
                    {
                      v98 = swift_dynamicCastClass();
                      OUTLINED_FUNCTION_33_10();
                      swift_unknownObjectRelease_n();
                      if (v98)
                      {
                        goto LABEL_135;
                      }

                      swift_unknownObjectRelease();
LABEL_126:
                      v98 = MEMORY[0x1E69E7CC0];
                      goto LABEL_135;
                    }

                    swift_unknownObjectRelease_n();
LABEL_129:
                    sub_1E3FA283C(v100, v102, v104, v106);
                    v98 = v107;
                    swift_unknownObjectRelease();
LABEL_135:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1E4297BE0;
                    sub_1E328438C(&v164, inited + 32);
                    v111 = sub_1E3BA7DD8(inited);
                    swift_setDeallocating();
                    sub_1E3FA2724();
                    if (v111)
                    {
                      v112 = v111;
                    }

                    else
                    {
                      v112 = MEMORY[0x1E69E7CC0];
                    }

                    sub_1E3EA0974(v112);
                    sub_1E3EA0974(v98);
                    v163 = v33;
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      v161 = 0u;
                      v162 = 0u;
                    }

                    sub_1E3946774(&v161, v7, v6);
                    swift_unknownObjectRelease();
                    __swift_destroy_boxed_opaque_existential_1(&v164);
                  }

                  else
                  {
                    v161 = 0u;
                    v162 = 0u;

                    swift_unknownObjectRelease();
                    sub_1E329505C(&v161);
                  }
                }
              }

              __break(1u);
              goto LABEL_149;
            }

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();

            sub_1E329505C(&v164);
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1E329505C(&v164);
    }

    OUTLINED_FUNCTION_7_206();
    if (!*(&v165 + 1))
    {
LABEL_39:

      return sub_1E329505C(&v164);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    *&v161 = v163;

    v54 = OUTLINED_FUNCTION_12_152();
    v57 = sub_1E39E7FEC(v54, v55);
    v59 = v58;
    v61 = v60;
    if (v60)
    {
      v133 = v56;
      sub_1E42079E4();
      OUTLINED_FUNCTION_33_10();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x1E69E7CC0];
      }

      v65 = *(v64 + 16);

      if (__OFSUB__(v61 >> 1, v59))
      {
        __break(1u);
      }

      else if (v65 == (v61 >> 1) - v59)
      {
        v63 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v63)
        {
          goto LABEL_48;
        }

        v63 = MEMORY[0x1E69E7CC0];
LABEL_47:
        swift_unknownObjectRelease();
LABEL_48:
        sub_1E3FA0218(v3, v63);

        v163 = v161;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v164 = 0u;
          v165 = 0u;
        }

        return sub_1E3946774(&v164, v7, v6);
      }

      swift_unknownObjectRelease();
      v56 = v133;
    }

    sub_1E3FA276C(v57, v56, v59, v61);
    v63 = v62;
    goto LABEL_47;
  }

  sub_1E328438C(a1, &v164);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_16_140(v9, v10, v11, v9, v12, v13, v14, v15, v114, v117, v120, v123, v126, v129, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161);
  result = swift_dynamicCast();
  if (result)
  {

    *v2 = v161;
  }

  return result;
}

uint64_t sub_1E3FA0C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  OUTLINED_FUNCTION_1_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](&v147 - v19);
  v21 = &v147 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v147 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v32 = &v147 - v31;
  v164 = a2;
  v33 = a2 + 16;
  v34 = *(a2 + 16);
  if (v34)
  {
    v157 = v30;
    v158 = v27;
    v155 = v29;
    v156 = v26;
    v160 = a1;
    v161 = a3;
    v153 = v28;
    v154 = v9;
    v35 = (v33 + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    v159 = v3;
    v38 = *v3;
    v162 = v36;
    v168 = v36;
    v169 = v37;
    swift_bridgeObjectRetain_n();
    sub_1E4205D64();

    if (__swift_getEnumTagSinglePayload(v32, 1, v7) == 1)
    {

      return (*(v13 + 8))(v32, v165);
    }

    v41 = v7;
    v44 = *(v13 + 8);
    v43 = v13 + 8;
    v42 = v44;
    v45 = v165;
    v44(v32, v165);
    if (v34 == 1)
    {
      sub_1E328438C(v160, &v168);
      v46 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v24, v46 ^ 1u, 1, v41);
      v166 = v162;
      v167 = v37;
      return sub_1E4205D74();
    }

    v47 = v162;
    v168 = v162;
    v169 = v37;
    v48 = v37;

    sub_1E4205D64();

    OUTLINED_FUNCTION_34_8();
    if (__swift_getEnumTagSinglePayload(v49, v50, v51) == 1)
    {
      v42(v21, v45);
      goto LABEL_16;
    }

    v152 = v42;
    v151 = v43;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v42 = v152;
LABEL_16:
      v168 = v47;
      v169 = v37;

      v66 = v158;
      sub_1E4205D64();

      OUTLINED_FUNCTION_34_8();
      if (__swift_getEnumTagSinglePayload(v67, v68, v69) == 1)
      {

        return (v42)(v66, v45);
      }

      if (swift_dynamicCast())
      {
        v70 = v41;
        v166 = v168;

        v71 = OUTLINED_FUNCTION_12_152();
        v73 = sub_1E39E7FEC(v71, v72);
        v75 = v74;
        v77 = v76;
        v79 = v78;
        if (v78)
        {
          sub_1E42079E4();
          OUTLINED_FUNCTION_33_10();
          swift_unknownObjectRetain_n();
          v84 = swift_dynamicCastClass();
          if (!v84)
          {
            swift_unknownObjectRelease();
            v84 = MEMORY[0x1E69E7CC0];
          }

          v85 = *(v84 + 16);

          if (__OFSUB__(v79 >> 1, v77))
          {
            __break(1u);
          }

          else if (v85 == (v79 >> 1) - v77)
          {
            v81 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v82 = v160;
            v83 = v161;
            if (v81)
            {
LABEL_31:
              sub_1E3FA0C04(v82, v81, v83);

              v171 = v166;
              v86 = v157;
              v87 = swift_dynamicCast();
              __swift_storeEnumTagSinglePayload(v86, v87 ^ 1u, 1, v70);
              v168 = v47;
              v169 = v37;
              return sub_1E4205D74();
            }

            v81 = MEMORY[0x1E69E7CC0];
LABEL_30:
            swift_unknownObjectRelease();
            goto LABEL_31;
          }

          swift_unknownObjectRelease();
        }

        sub_1E3FA276C(v73, v75, v77, v79);
        v81 = v80;
        v82 = v160;
        v83 = v161;
        goto LABEL_30;
      }
    }

    v157 = v52;
    v158 = v41;
    v53 = v168;
    v54 = v164;

    v55 = sub_1E39E7FEC(1, v54);
    v150 = v56;
    v149 = v57;
    v148 = v58;
    v59 = sub_1E3FA1AE0(v55, v56, v57, v58);
    if (!v60)
    {

      swift_unknownObjectRelease();
    }

    v61 = v59;
    v62 = v60;
    v164 = v55;
    v168 = v47;
    v169 = v37;

    v63 = v156;
    v64 = v158;
    sub_1E4205D64();

    if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
    {

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_13_167();
      v65();
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_107:

      swift_unknownObjectRelease();
    }

    v156 = v168;
    v88 = HIBYTE(v62) & 0xF;
    v89 = v61 & 0xFFFFFFFFFFFFLL;
    if ((v62 & 0x2000000000000000) != 0)
    {
      v90 = HIBYTE(v62) & 0xF;
    }

    else
    {
      v90 = v61 & 0xFFFFFFFFFFFFLL;
    }

    v91 = v164;
    v92 = v53;
    if (!v90)
    {

      goto LABEL_107;
    }

    if ((v62 & 0x1000000000000000) != 0)
    {
      v147 = sub_1E37801A4(v61, v62, 10);
      v114 = v146;
      goto LABEL_106;
    }

    if ((v62 & 0x2000000000000000) != 0)
    {
      v168 = v61;
      v169 = v62 & 0xFFFFFFFFFFFFFFLL;
      if (v61 == 43)
      {
        if (!v88)
        {
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (v88 != 1)
        {
          OUTLINED_FUNCTION_10_154();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v97 & v96)
            {
              break;
            }

            OUTLINED_FUNCTION_3_231();
            if (!v97 || __OFADD__(v106, v105))
            {
              break;
            }

            OUTLINED_FUNCTION_132();
            if (v97)
            {
              goto LABEL_104;
            }
          }
        }
      }

      else if (v61 == 45)
      {
        if (!v88)
        {
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (v88 != 1)
        {
          OUTLINED_FUNCTION_10_154();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v97 & v96)
            {
              break;
            }

            OUTLINED_FUNCTION_3_231();
            if (!v97 || __OFSUB__(v102, v101))
            {
              break;
            }

            OUTLINED_FUNCTION_132();
            if (v97)
            {
              goto LABEL_104;
            }
          }
        }
      }

      else if (v88)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v97 & v96)
          {
            break;
          }

          OUTLINED_FUNCTION_3_231();
          if (!v97 || __OFADD__(v113, v112))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v97)
          {
            goto LABEL_104;
          }
        }
      }

      goto LABEL_103;
    }

    if ((v61 & 0x1000000000000000) != 0)
    {
      v93 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v93 = sub_1E4207524();
    }

    v94 = *v93;
    if (v94 == 43)
    {
      if (v89 < 1)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      if (v89 == 1)
      {
        goto LABEL_103;
      }

      v95 = 0;
      if (v93)
      {
        OUTLINED_FUNCTION_11_171();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v97 & v96)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_3_231();
          if (!v97 || __OFADD__(v104, v103))
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_132();
          if (v97)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_119:
      v100 = 0;
      goto LABEL_104;
    }

    if (v94 == 45)
    {
      if (v89 < 1)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v89 == 1)
      {
        goto LABEL_103;
      }

      v95 = 0;
      if (v93)
      {
        OUTLINED_FUNCTION_11_171();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v97 & v96)
          {
            break;
          }

          OUTLINED_FUNCTION_3_231();
          if (!v97 || __OFSUB__(v99, v98))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v97)
          {
            goto LABEL_104;
          }
        }

LABEL_103:
        v95 = 0;
        v100 = 1;
LABEL_104:
        v147 = v95;
LABEL_105:
        LOBYTE(v166) = v100;
        v114 = v100;
LABEL_106:

        if (v114)
        {
          goto LABEL_107;
        }

        if (v147 >= v53[2])
        {

          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRetain();
        v115 = sub_1E3FA1B34(1, v91, v150, v149, v148);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1E3FA2A70(v53);
        }

        v38 = v147;
        if (v147 < 0)
        {
          __break(1u);
        }

        else if (v147 < v92[2])
        {
          sub_1E3FA0218(v160, v115);

          sub_1E39ABF00(v38, 1, v92);
          v168 = v92[v38 + 4];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          v91 = v155;
          v116 = v158;
          if ((swift_dynamicCast() & 1) == 0)
          {

            swift_unknownObjectRelease();

            __swift_storeEnumTagSinglePayload(v91, 1, 1, v116);
            OUTLINED_FUNCTION_13_167();
            v122();
          }

          __swift_storeEnumTagSinglePayload(v91, 0, 1, v116);
          (*(v154 + 32))(v163, v91, v116);
          v62 = MEMORY[0x1E69E7CC0];
          v150 = v92;
          if (!v38)
          {
            v53 = v156;
            goto LABEL_130;
          }

          v53 = v156;
          sub_1E39E8C20(0, v38 + 1, v156);
          v91 = v117;
          v38 = v118;
          v92 = v119;
          v62 = v120;
          if (v120)
          {
            sub_1E42079E4();
            swift_unknownObjectRetain_n();
            v123 = swift_dynamicCastClass();
            if (!v123)
            {
              swift_unknownObjectRelease();
              v123 = MEMORY[0x1E69E7CC0];
            }

            v124 = *(v123 + 16);

            if (__OFSUB__(v62 >> 1, v92))
            {
              goto LABEL_157;
            }

            if (v124 != (v62 >> 1) - v92)
            {
              goto LABEL_158;
            }

            v62 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v47 = v162;
            v38 = v147;
            if (v62)
            {
              goto LABEL_130;
            }

            v62 = MEMORY[0x1E69E7CC0];
            goto LABEL_129;
          }

          while (1)
          {
            sub_1E3FA283C(v91, v38, v92, v62);
            v62 = v121;
LABEL_129:
            swift_unknownObjectRelease();
            v38 = v147;
LABEL_130:
            v125 = v53[2];
            if (v38 == v125 - 1)
            {

              v126 = MEMORY[0x1E69E7CC0];
              goto LABEL_141;
            }

            if (v125 > v38 + 1)
            {
              break;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            swift_unknownObjectRelease();
            v47 = v162;
          }

          sub_1E39E8C20(v38 + 1, v125, v53);
          v128 = v127;
          v130 = v129;
          v132 = v131;
          v134 = v133;

          if (v134)
          {
            sub_1E42079E4();
            swift_unknownObjectRetain_n();
            v136 = swift_dynamicCastClass();
            if (!v136)
            {
              swift_unknownObjectRelease();
              v136 = MEMORY[0x1E69E7CC0];
            }

            v137 = *(v136 + 16);

            if (__OFSUB__(v134 >> 1, v132))
            {
              __break(1u);
            }

            else if (v137 == (v134 >> 1) - v132)
            {
              v126 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              v48 = v37;
              v47 = v162;
              if (!v126)
              {
                swift_unknownObjectRelease();
                v126 = MEMORY[0x1E69E7CC0];
              }

              goto LABEL_141;
            }

            swift_unknownObjectRelease_n();
            v48 = v37;
            v47 = v162;
          }

          sub_1E3FA283C(v128, v130, v132, v134);
          v126 = v135;
          swift_unknownObjectRelease();
LABEL_141:
          v138 = v158;
          sub_1E3FA26B8(v158, v158);
          v139 = v154;
          swift_allocObject();
          sub_1E42062E4();
          v140 = v163;
          (*(v139 + 16))(v141, v163, v138);
          sub_1E4206374();
          v142 = sub_1E4207774();

          if (v142)
          {
            v143 = v142;
          }

          else
          {
            v143 = MEMORY[0x1E69E7CC0];
          }

          v170 = v62;
          sub_1E3EA0974(v143);
          sub_1E3EA0974(v126);
          v166 = v170;
          v144 = v153;
          v145 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v144, v145 ^ 1u, 1, v138);
          v168 = v47;
          v169 = v48;
          sub_1E4205D74();
          swift_unknownObjectRelease();
          (*(v139 + 8))(v140, v138);
        }

        __break(1u);
        goto LABEL_152;
      }

      goto LABEL_119;
    }

    if (v89)
    {
      v107 = 0;
      if (!v93)
      {
LABEL_94:
        v100 = 0;
LABEL_121:
        v147 = v107;
        goto LABEL_105;
      }

      while (1)
      {
        v108 = *v93 - 48;
        if (v108 > 9)
        {
          break;
        }

        v109 = (v107 * 10) >> 64;
        v110 = 10 * v107;
        if (v109 != v110 >> 63)
        {
          break;
        }

        v111 = __OFADD__(v110, v108);
        v107 = v110 + v108;
        if (v111)
        {
          break;
        }

        ++v93;
        if (!--v89)
        {
          goto LABEL_94;
        }
      }
    }

    v107 = 0;
    v100 = 1;
    goto LABEL_121;
  }

  sub_1E328438C(a1, &v168);
  result = swift_dynamicCast();
  if (result)
  {
    v40 = v166;

    *v3 = v40;
  }

  return result;
}

uint64_t sub_1E3FA1AE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) > a3)
  {
    v4 = *(a2 + 16 * (a4 >> 1) - 16);

    return v4;
  }

  __break(1u);
  return result;
}

char **sub_1E3FA1B34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v6 = a4;
  v43 = a4;
  if (a1)
  {
    v41 = 0;
    v5 = a5 >> 1;
    v8 = a3 + 1;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = a4;
    v42 = MEMORY[0x1E69E7CC0];
    for (i = a3 + 1; ; v8 = i)
    {
      v11 = &v8[2 * v10];
      v12 = v10;
      for (j = v10; ; v10 = j)
      {
        if (v5 == v12)
        {

          swift_unknownObjectRelease();
          return v42;
        }

        if (v10 < v6 || v12 >= v5)
        {
          __break(1u);
          goto LABEL_42;
        }

        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = *(v9 + 2);
        if (v16 >= a1)
        {
          break;
        }

        v17 = v5;
        v18 = a1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E377FD30(0, v16 + 1, 1);
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          sub_1E377FD30((v19 > 1), v20 + 1, 1);
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[16 * v20];
        *(v21 + 4) = v14;
        *(v21 + 5) = v15;
        v11 += 2;
        ++v12;
        a1 = v18;
        v5 = v17;
        v6 = v43;
      }

      if (v41 >= v16)
      {
        goto LABEL_43;
      }

      v38 = a1;
      v22 = &v9[16 * v41];
      v24 = *(v22 + 4);
      v23 = *(v22 + 5);

      v25 = v42;
      v39 = v12;
      v45 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1E377FD30(0, *(v42 + 16) + 1, 1);
        v25 = v42;
      }

      v26 = v14;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1E377FD30((v27 > 1), v28 + 1, 1);
        v25 = v42;
      }

      v29 = v5;
      *(v25 + 16) = v28 + 1;
      v42 = v25;
      v30 = v25 + 16 * v28;
      *(v30 + 32) = v24;
      *(v30 + 40) = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E3C3DB74(v9);
      }

      v5 = v41;
      if (v41 >= *(v9 + 2))
      {
        break;
      }

      v31 = &v9[16 * v41];
      v10 = v39 + 1;
      *(v31 + 4) = v26;
      *(v31 + 5) = v15;

      a1 = v38;
      if ((v41 + 1) < v38)
      {
        v32 = v41 + 1;
      }

      else
      {
        v32 = 0;
      }

      v41 = v32;
      v5 = v29;
    }

    goto LABEL_44;
  }

  if (a5)
  {
    sub_1E42079E4();
    swift_unknownObjectRetain_n();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {
      swift_unknownObjectRelease();
      v35 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(v35 + 16);

    v5 = a5 >> 1;
    v37 = __OFSUB__(v5, v6);
    v6 = v5 - v6;
    if (v37)
    {
      goto LABEL_46;
    }

    if (v36 != v6)
    {
      goto LABEL_47;
    }

    v33 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v33)
    {
      return v33;
    }

LABEL_41:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (!__OFSUB__(a5 >> 1, a4))
  {
    if (v6)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_34:
  result = sub_1E397A388(v6, 0);
  if (v5 != v43)
  {
    v33 = result;
    swift_arrayInitWithCopy();
    swift_unknownObjectRelease();
    return v33;
  }

  __break(1u);
  return result;
}

void *sub_1E3FA1E90()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CA0];
  v3 = sub_1E4205CB4();
  v4 = [v0 allKeys];
  v5 = sub_1E42062B4();

  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_18:

    return v3;
  }

  v7 = v5 + 32;
  v23 = v1;
  while (1)
  {
    sub_1E328438C(v7, v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v8 = v26[0];
    v9 = sub_1E4205ED4();
    v10 = [v1 valueForKey_];

    if (!v10)
    {

      goto LABEL_17;
    }

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3FA217C(v27, &v24);
    if (!v25)
    {
      __swift_destroy_boxed_opaque_existential_1(v27);

      sub_1E329505C(&v24);
      goto LABEL_17;
    }

    v11 = v2;
    sub_1E329504C(&v24, v26);
    sub_1E328438C(v26, &v24);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1E327D33C(v8, *(&v8 + 1));
    if (__OFADD__(v3[2], (v13 & 1) == 0))
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
    if (sub_1E4207644())
    {
      v16 = sub_1E327D33C(v8, *(&v8 + 1));
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_21;
      }

      v14 = v16;
    }

    if (v15)
    {
      v18 = (v3[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_1E329504C(&v24, v18);
    }

    else
    {
      v3[(v14 >> 6) + 8] |= 1 << v14;
      *(v3[6] + 16 * v14) = v8;
      sub_1E329504C(&v24, (v3[7] + 32 * v14));
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v3[2] = v21;
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v2 = v11;
    v1 = v23;
LABEL_17:
    v7 += 32;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E3FA217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E328438C(a1, v64);
  v5 = sub_1E3280A90(0, &qword_1EE23AD58, 0x1E696AEC0);
  OUTLINED_FUNCTION_3_19(v5, v6, v7, v5, v8, v9, v10, v11, v47, v51, v55, number);
  if (swift_dynamicCast())
  {
    v12 = numbera;
    v13 = sub_1E4205F74();
    v15 = v14;
    *(a2 + 24) = MEMORY[0x1E69E6158];

    *a2 = v13;
    *(a2 + 8) = v15;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v16 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  OUTLINED_FUNCTION_3_19(v16, v17, v18, v19, v20, v21, v22, v23, v48, v52, v56, numbera);
  if (swift_dynamicCast())
  {
    v24 = numberb;
    Type = CFNumberGetType(numberb);
    if (Type <= kCFNumberDoubleType)
    {
      if (((1 << Type) & 0xF1E) != 0)
      {
        v26 = [(__CFNumber *)numberb integerValue];
        *(a2 + 24) = MEMORY[0x1E69E6530];

        *a2 = v26;
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }

      if (((1 << Type) & 0x3060) != 0)
      {
        [(__CFNumber *)numberb doubleValue];
        v44 = v43;
        *(a2 + 24) = MEMORY[0x1E69E63B0];

        *a2 = v44;
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }

      if (Type == kCFNumberCharType)
      {
        v45 = [(__CFNumber *)numberb BOOLValue];
        *(a2 + 24) = MEMORY[0x1E69E6370];

        *a2 = v45;
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }
    }

    *(a2 + 24) = v16;
LABEL_11:
    *a2 = v24;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v27 = sub_1E3280A90(0, &qword_1ECF3D4C8, 0x1E695DEC8);
  OUTLINED_FUNCTION_3_19(v27, v28, v29, v27, v30, v31, v32, v33, v49, v53, v57, numberb);
  if (swift_dynamicCast())
  {
    v34 = v2;
    v24 = sub_1E3FA244C(numberc, v34, v35);
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4D0, &qword_1E42E1990);

    goto LABEL_11;
  }

  v36 = sub_1E3280A90(0, &qword_1EE23B398, 0x1E695DF20);
  OUTLINED_FUNCTION_3_19(v36, v37, v38, v36, v39, v40, v41, v42, v50, v54, v58, numberc);
  if (swift_dynamicCast())
  {
    sub_1E4205C54();

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_1E328438C(a1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

void *sub_1E3FA244C(void *a1, void *a2, __n128 a3)
{
  v5 = sub_1E41FE2B4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 count];
  v27 = MEMORY[0x1E69E7CC0];
  sub_1E3FA2A50(0, v10 & ~(v10 >> 63), 0);
  v11 = v27;
  result = sub_1E4206EF4();
  if (v10 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v23 = v6;
  if (v10)
  {
    sub_1E399D328(v13);
    do
    {
      result = sub_1E4207174();
      if (!*(&v25 + 1))
      {
        goto LABEL_15;
      }

      sub_1E3FA217C(&v24, v26);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      v27 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E3FA2A50((v14 > 1), v15 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v15 + 1;
      v16 = v11 + 32 * v15;
      v13 = v26[0];
      v17 = v26[1];
      *(v16 + 32) = v26[0];
      *(v16 + 48) = v17;
    }

    while (--v10);
  }

  sub_1E399D328(v13);
  v18 = v23;
  while (1)
  {
    sub_1E4207174();
    if (!*(&v25 + 1))
    {
      break;
    }

    sub_1E329504C(&v24, v26);
    sub_1E3FA217C(v26, &v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v27 = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E3FA2A50((v19 > 1), v20 + 1, 1);
      v11 = v27;
    }

    *(v11 + 16) = v20 + 1;
    v21 = v11 + 32 * v20;
    v22 = v25;
    *(v21 + 32) = v24;
    *(v21 + 48) = v22;
  }

  (*(v18 + 8))(v9, v5);
  sub_1E329505C(&v24);

  return v11;
}

uint64_t sub_1E3FA26B8(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  }

  else
  {

    return sub_1E4207954();
  }
}

uint64_t sub_1E3FA2724()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1E3FA276C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1E3FA283C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 8);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1E3FA2920(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4D8, &qword_1E42E1998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3FA2A50(void *a1, int64_t a2, char a3)
{
  result = sub_1E3FA2920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3FA2A84(uint64_t a1, void *a2)
{
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4E0, &unk_1E42E19A0);
  result = sub_1E4207714();
  v4 = result;
  v5 = 0;
  v27 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v26 = result + 8;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v27 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1E328438C(*(v27 + 56) + 32 * v16, v29);

      sub_1E3FA217C(v29, v28);
      result = __swift_destroy_boxed_opaque_existential_1(v29);
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (v4[6] + 16 * v16);
      *v20 = v19;
      v20[1] = v18;
      v21 = (v4[7] + 32 * v16);
      v22 = v28[1];
      *v21 = v28[0];
      v21[1] = v22;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {

        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FA2C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E3FA2CC4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E3FA2D34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return OUTLINED_FUNCTION_18();
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1E3FA2E6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3FA30B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8, &qword_1E42E1B00);
  OUTLINED_FUNCTION_26_27(0, a1, v3);
  sub_1E4206304();

  return sub_1E4205CB4();
}

uint64_t sub_1E3FA3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a2 + 32))(&v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8, &qword_1E42E1B00);
  sub_1E4205D34();
  return sub_1E4205CE4();
}

uint64_t sub_1E3FA31F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E3FA30B4(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1E3FA3220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = a2;
  v7[5] = a3;
  return sub_1E3FA3130(a1, v7, v5, v4);
}

void *sub_1E3FA3258(void *a1, uint64_t a2)
{

  result = (*(a2 + 32))(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_1E3FA32AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E3FA3254(*(a1 + 16));
  *a2 = result;
  return result;
}

void *sub_1E3FA32D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[1] = *(a4 + 16);
  v6 = a2;
  v7 = a3;
  return sub_1E3FA3258(a1, v5);
}

void sub_1E3FA3308()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v0;
  v38 = v1;
  v3 = v2;
  v39 = v4;
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_151();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  v30 = sub_1E42020F4();
  type metadata accessor for CGRect(255);
  v34 = v10;
  v11 = *(v3 + 16);
  v31 = *(v3 + 24);
  v32 = v11;
  type metadata accessor for MonitoredItemsPreferenceKey(255, v11, v31, v12);
  OUTLINED_FUNCTION_4_230();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_52_3();
  v36 = sub_1E42021F4();
  v13 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v35 = &v30 - v21;
  sub_1E4203944();
  (*(v6 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v3);
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v32;
  *(v23 + 24) = v24;
  (*(v6 + 32))(v23 + v22, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  OUTLINED_FUNCTION_2_45();
  v25 = swift_getWitnessTable();
  sub_1E4203044();

  OUTLINED_FUNCTION_1_35();
  v26 = swift_getWitnessTable();
  v40 = v25;
  v41 = v26;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v27 = *(v15 + 16);
  v28 = v35;
  v27(v35, v19, v13);
  v29 = *(v15 + 8);
  v29(v19, v13);
  v27(v39, v28, v13);
  v29(v28, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FA360C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v36 = v4;
  v37 = v5;
  OUTLINED_FUNCTION_13_168();
  swift_getWitnessTable();
  v31[1] = sub_1E42020F4();
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v38 = type metadata accessor for MonitoredItemsPreferenceKey(255, v7, v6, v8);
  v33 = v6;
  v34 = v7;
  type metadata accessor for VisibleItemsPreferenceKey(255, v7, v6, v9);
  OUTLINED_FUNCTION_3_232();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_118();
  sub_1E42024F4();
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_230();
  WitnessTable = swift_getWitnessTable();
  v41[10] = MEMORY[0x1E6981580];
  v41[11] = WitnessTable;
  v35 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  sub_1E4201034();
  sub_1E4206374();
  v41[9] = *(v6 + 8);
  OUTLINED_FUNCTION_7_207();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_118();
  sub_1E4202454();
  OUTLINED_FUNCTION_52_3();
  v11 = sub_1E42013A4();
  OUTLINED_FUNCTION_4_230();
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_200();
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_216();
  v41[7] = v12;
  v41[8] = swift_getWitnessTable();
  v41[0] = v38;
  v41[1] = v11;
  v41[2] = v32;
  v41[3] = swift_getWitnessTable();
  sub_1E42024E4();
  v13 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v31 - v21;
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v34;
  *(v23 + 24) = v24;
  v25 = *(v1 + 16);
  *(v23 + 32) = *v1;
  *(v23 + 48) = v25;
  *(v23 + 64) = *(v1 + 32);
  *(v23 + 80) = *(v1 + 48);
  OUTLINED_FUNCTION_37_1();
  (*(v26 + 16))(v41, v1, v3);
  OUTLINED_FUNCTION_2_45();
  v27 = swift_getWitnessTable();
  sub_1E4203DA4();
  sub_1E42032E4();

  OUTLINED_FUNCTION_12_153();
  v28 = swift_getWitnessTable();
  v39 = v27;
  v40 = v28;
  swift_getWitnessTable();
  v29 = *(v15 + 16);
  v29(v22, v19, v13);
  v30 = *(v15 + 8);
  v30(v19, v13);
  v29(v37, v22, v13);
  v30(v22, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FA39C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v2 + 16);
  OUTLINED_FUNCTION_26_27(0, MEMORY[0x1E69E7DE0], v8);
  v28 = v5;
  v29 = sub_1E4205C34();
  v9 = *(v3 + 24);
  v27[2] = v8;
  v27[3] = v9;
  v27[4] = v7;
  v27[5] = v1;
  v27[6] = &v29;
  v26[2] = v8;
  v26[3] = v9;
  v26[4] = sub_1E3FA4A14;
  v26[5] = v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8, &qword_1E42E1B00);
  OUTLINED_FUNCTION_32_10();
  v10 = sub_1E4205D34();
  WitnessTable = swift_getWitnessTable();
  sub_1E3CA543C(sub_1E3FA4A24, v26, v10, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  v14 = *(v1 + 33);
  v15 = v29;
  if (v14)
  {
    v28 = v29;
    MEMORY[0x1EEE9AC00](v13);
    v24 = v8;
    v25 = v9;
    OUTLINED_FUNCTION_26_108();
    sub_1E4206374();

    OUTLINED_FUNCTION_15_6();
    swift_getWitnessTable();
    v16 = sub_1E4206214();
  }

  else
  {

    v16 = v15;
  }

  v28 = v16;
  MEMORY[0x1EEE9AC00](v17);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v24 = v9;
  v25 = v19;
  OUTLINED_FUNCTION_26_108();
  v20 = sub_1E4206374();
  v21 = swift_getWitnessTable();
  sub_1E3CA543C(sub_1E3FA4A48, &v23, v20, v8, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FA3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v59 = a1;
  v60 = a6;
  v58 = OUTLINED_FUNCTION_26_27(0, MEMORY[0x1E69E7DE0], a6);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v56 - v8);
  v10 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4202064();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1E4200E64();
  v62 = v25;
  v63 = v24;
  type metadata accessor for CGRect(0);
  sub_1E4200EB4();
  v27 = v64;
  v26 = v65;
  v28 = v66;
  v29 = v67;
  v30 = 1.0 - *(a4 + 24);
  v68.origin.x = OUTLINED_FUNCTION_10_155();
  MinX = CGRectGetMinX(v68);
  v69.origin.x = OUTLINED_FUNCTION_10_155();
  MaxX = CGRectGetMaxX(v69);
  v70.origin.x = OUTLINED_FUNCTION_10_155();
  MinY = CGRectGetMinY(v70);
  v57 = v27;
  v71.origin.x = OUTLINED_FUNCTION_10_155();
  MaxY = CGRectGetMaxY(v71);
  v35 = *(a4 + 16);
  if (v35 == sub_1E42026E4())
  {
    v36 = MaxX - v28 * v30;
    v37 = MinX + v28 * v30 <= 0.0;
    v38 = v63;
  }

  else
  {
    v36 = MaxY - v29 * v30;
    v37 = v29 * v30 + MinY <= 0.0;
    v38 = v62;
  }

  if (v37 || v36 >= v38)
  {
    return;
  }

  if ((*(a4 + 32) & 1) == 0)
  {
    if (v28 == 0.0 || v29 == 0.0)
    {
      return;
    }

LABEL_19:
    v74.origin.x = v57;
    v74.origin.y = v26;
    v74.size.width = v28;
    v74.size.height = v29;
    v53 = CGRectGetMinX(v74);
    v54 = v59;
    v55 = *(v58 + 48);
    *v9 = v53;
    (*(*(v60 - 8) + 16))(v9 + v55, v54);
    OUTLINED_FUNCTION_32_10();
    sub_1E4206374();
    sub_1E4206354();
    return;
  }

  sub_1E4202284();
  sub_1E4200E84();
  v56 = v40;
  v62 = v41;
  v63 = v42;
  (*(v19 + 8))(v23, v17);
  (*(v12 + 104))(v16, *MEMORY[0x1E697E668], v10);
  sub_1E4200E54();
  v44 = v64;
  v43 = v65;
  v46 = v66;
  v45 = v67;
  (*(v12 + 8))(v16, v10);
  v47 = sub_1E42026E4();
  v48 = v44;
  v49 = v43;
  v50 = v46;
  v51 = v45;
  if (v35 == v47)
  {
    CGRectGetHeight(*&v48);
    v72.origin.x = OUTLINED_FUNCTION_27_90();
    Height = CGRectGetHeight(v72);
  }

  else
  {
    CGRectGetWidth(*&v48);
    v73.origin.x = OUTLINED_FUNCTION_27_90();
    Height = CGRectGetWidth(v73);
  }

  if (v28 != 0.0 && v29 != 0.0 && v45 == Height)
  {
    goto LABEL_19;
  }
}

uint64_t sub_1E3FA4028(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8, &qword_1E42E1B00);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t sub_1E3FA40B4(void x0_0, uint64_t *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a1 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  (*(v6 + 16))(&v17 - v13, v12);
  v15 = *(v4 + 48);
  *v10 = *v14;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v10[v15], &v14[v15]);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1E3FA42D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(type metadata accessor for TrackItemVisibilityModifier(0, v5, *(v3 + 24), a2) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D4E8, &qword_1E42E1B00);
  v9 = OUTLINED_FUNCTION_52_3();
  v11 = OUTLINED_FUNCTION_26_27(v9, v10, v8);
  sub_1E4207954();
  swift_allocObject();
  sub_1E42062E4();
  v13 = v12;
  v14 = *(v11 + 48);
  OUTLINED_FUNCTION_37_1();
  (*(v15 + 16))(v13, v3 + v7, v5);
  *(v13 + v14) = a1;
  sub_1E4206374();

  result = sub_1E4205CB4();
  *a3 = result;
  return result;
}

double sub_1E3FA4488@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *a1;
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_18_129(v5);
  *(v6 + 80) = v7;
  *(v6 + 88) = v4;
  v8 = OUTLINED_FUNCTION_26_108();
  v11 = type metadata accessor for ScrollViewItemsVisibilityModifier(v8, v9, v3, v10);
  OUTLINED_FUNCTION_37_1();
  v26 = *(v12 + 16);
  v26(&v34, v2 + 32, v11);
  v13 = OUTLINED_FUNCTION_41_41();
  type metadata accessor for VisibleItemsPreferenceKey(v13, v14, v3, v15);

  OUTLINED_FUNCTION_3_232();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_52_3();
  sub_1E42024F4();
  sub_1E42013A4();
  OUTLINED_FUNCTION_2_230();
  WitnessTable = swift_getWitnessTable();
  v32 = MEMORY[0x1E6981580];
  v33 = WitnessTable;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v28 = sub_1E4201024();
  *&v29 = v17;
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_18_129(v18);
  *(v20 + 80) = v21;
  (v26)(&v34, v2 + 32, v11, v19);
  OUTLINED_FUNCTION_32_10();
  sub_1E4201034();
  OUTLINED_FUNCTION_6_200();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  sub_1E4206374();
  v31 = *(v3 + 8);
  OUTLINED_FUNCTION_7_207();
  swift_getWitnessTable();
  sub_1E4203164();

  v28 = v37;
  v29 = v38;
  v30 = v39;
  OUTLINED_FUNCTION_52_3();
  sub_1E4202454();
  OUTLINED_FUNCTION_32_10();
  v22 = sub_1E42013A4();
  OUTLINED_FUNCTION_5_216();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_1();
  v24 = *(v23 + 16);
  v24(&v34, &v28, v22);

  v38 = v35;
  v37 = v34;
  v39 = v36;
  v24(a2, &v37, v22);

  return result;
}

uint64_t sub_1E3FA47A8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_26_108();
  type metadata accessor for ScrollViewItemsVisibilityModifier(v4, v5, v3, v6);
  sub_1E3FA39C8();
  v17[0] = sub_1E42036E4();
  v7 = OUTLINED_FUNCTION_26_108();
  type metadata accessor for VisibleItemsPreferenceKey(v7, v8, v3, v9);
  OUTLINED_FUNCTION_3_232();
  swift_getWitnessTable();
  sub_1E4202D54();

  v14[0] = v15;
  v14[1] = v16;
  OUTLINED_FUNCTION_41_41();
  sub_1E42024F4();
  v10 = sub_1E42013A4();
  OUTLINED_FUNCTION_2_230();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_1();
  v12 = *(v11 + 16);
  v12(v17, v14, v10);

  v15 = v17[0];
  v16 = v17[1];
  v12(a1, &v15, v10);
}

uint64_t objectdestroy_9Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E3FA4988(uint64_t *a1)
{
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_32_10();
  sub_1E4206374();

  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  sub_1E4206384();
  v2();
}

void sub_1E3FA4A8C()
{
  v1 = v0;
  v2 = sub_1E3FA4DB4();
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol;
  OUTLINED_FUNCTION_15_0(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol, v4);
  if (*(v1 + v3))
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*(v1 + v3))
  {
    v6 = "onDistributionChange";
  }

  else
  {
    v6 = "tributeFeaturedAccessibility";
  }

  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x70))(v5, v6 | 0x8000000000000000);

  v8 = sub_1E3FA4FA4();
  v9 = v8;
  if (*(v1 + v3))
  {
    v10 = "rectangle.split.rightthird";
  }

  else
  {
    v10 = "tributeEquallyAccessibility";
  }

  (*((*v7 & *v8) + 0x70))(0xD000000000000013, v10 | 0x8000000000000000);
}

uint64_t sub_1E3FA4BB4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol, a2);
  return *(v2 + v3);
}

void sub_1E3FA4BEC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol, v4);
  *(v1 + v3) = a1 & 1;
  sub_1E3FA4A8C();
}

void (*sub_1E3FA4C3C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3FA4C90;
}

void sub_1E3FA4C90(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3FA4A8C();
  }
}

uint64_t sub_1E3FA4CC4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution, a2);
  return *(v2 + v3);
}

void (*sub_1E3FA4CFC(uint64_t a1))(void)
{
  v3 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution, &v10);
  *(v1 + v3) = a1;
  OUTLINED_FUNCTION_21();
  result = (*(v4 + 216))();
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution;
    swift_beginAccess();
    v7(*(v1 + v9));
    return sub_1E34AF594(v7, v8);
  }

  return result;
}

id sub_1E3FA4DB4()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
LABEL_8:
    v18 = v2;
    return v3;
  }

  v4 = v0;
  OUTLINED_FUNCTION_21();
  (*(v5 + 120))();
  type metadata accessor for MultiPlayerDistributionButton();
  v6 = sub_1E3F68CF8();
  OUTLINED_FUNCTION_0_306();
  OUTLINED_FUNCTION_1_267();
  v19[2] = v7;
  v19[3] = &block_descriptor_146;
  v8 = _Block_copy(v19);
  v9 = v6;
  [v9 setSelectActionHandler_];
  _Block_release(v8);

  v10 = objc_opt_self();
  v11 = v9;
  result = [v10 sharedInstance];
  if (result)
  {
    v13 = result;
    sub_1E3741090(0xD00000000000002CLL, 0x80000001E428B8D0, result);
    v15 = v14;

    if (v15)
    {
      v16 = sub_1E4205ED4();
    }

    else
    {
      v16 = 0;
    }

    [v11 setAccessibilityLabel_];

    v17 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1E3FA4FA4()
{
  v1 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton);
LABEL_8:
    v18 = v2;
    return v3;
  }

  v4 = v0;
  OUTLINED_FUNCTION_21();
  (*(v5 + 120))();
  type metadata accessor for MultiPlayerDistributionButton();
  v6 = sub_1E3F68CF8();
  OUTLINED_FUNCTION_0_306();
  OUTLINED_FUNCTION_1_267();
  v19[2] = v7;
  v19[3] = &block_descriptor_13_3;
  v8 = _Block_copy(v19);
  v9 = v6;
  [v9 setSelectActionHandler_];
  _Block_release(v8);

  v10 = objc_opt_self();
  v11 = v9;
  result = [v10 sharedInstance];
  if (result)
  {
    v13 = result;
    sub_1E3741090(0xD00000000000002BLL, 0x80000001E428B940, result);
    v15 = v14;

    if (v15)
    {
      v16 = sub_1E4205ED4();
    }

    else
    {
      v16 = 0;
    }

    [v11 setAccessibilityLabel_];

    v17 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FA5188()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E34AF604(v0, v1);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E3FA51DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_onDistributionChange);
  OUTLINED_FUNCTION_3_0(v5, v9);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E34AF594(v6, v7);
}

id sub_1E3FA5284()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution) = 1;
  OUTLINED_FUNCTION_6_201(&OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_onDistributionChange);
  v2 = type metadata accessor for MultiPlayerDistributionPicker();
  *v1 = 0;
  v1[1] = 0;
  v8 = v2;
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v8);
  sub_1E3FA5538();

  return v6;
}

uint64_t sub_1E3FA5370(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_featuredDistributionSymbol) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_distribution) = 1;
  OUTLINED_FUNCTION_6_201(&OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton);
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker_onDistributionChange);
  *v2 = 0;
  v2[1] = 0;
  sub_1E34AF594(0, 0);
  type metadata accessor for MultiPlayerDistributionPicker();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1E3FA5484()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 144))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E429DCC0;
  if (v1 == 1)
  {
    *(v2 + 32) = sub_1E3FA4DB4();
    v3 = sub_1E3FA4FA4();
  }

  else
  {
    *(v2 + 32) = sub_1E3FA4FA4();
    v3 = sub_1E3FA4DB4();
  }

  *(v2 + 40) = v3;
  return v2;
}

void sub_1E3FA5538()
{
  v1 = v0;
  v2 = sub_1E3FA4DB4();
  [v1 addSubview_];

  v3 = sub_1E3FA4FA4();
  [v1 addSubview_];

  v4 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton;
  [*(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___featuredDistributionButton) setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v6 = *(v1 + v4);
  v5();
  v7 = OUTLINED_FUNCTION_9_171();
  (*(v8 + 136))(v7);

  v9 = OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton;
  [*(v1 + OBJC_IVAR____TtC8VideosUI29MultiPlayerDistributionPicker____lazy_storage___equalDistributionButton) setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = *(v1 + v9);
  v5();
  v11 = OUTLINED_FUNCTION_9_171();
  (*(v12 + 136))(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E42A6DD0;
  v14 = [*(v1 + v4) widthAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v13 + 32) = v15;
  v16 = OUTLINED_FUNCTION_5_217([*(v1 + v4) heightAnchor]);

  *(v13 + 40) = v16;
  v17 = [*(v1 + v4) centerXAnchor];
  v18 = [v1 centerXAnchor];
  if ([v1 vuiIsRTL])
  {
    v19 = 40.0;
  }

  else
  {
    v19 = -40.0;
  }

  v20 = [v17 constraintEqualToAnchor:v18 constant:v19];

  *(v13 + 48) = v20;
  v21 = [*(v1 + v4) centerYAnchor];
  v22 = [v1 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v13 + 56) = v23;
  v24 = OUTLINED_FUNCTION_5_217([*(v1 + v9) widthAnchor]);

  *(v13 + 64) = v24;
  v25 = OUTLINED_FUNCTION_5_217([*(v1 + v9) heightAnchor]);

  *(v13 + 72) = v25;
  v26 = [*(v1 + v9) centerXAnchor];
  v27 = [v1 centerXAnchor];
  if ([v1 vuiIsRTL])
  {
    v28 = -40.0;
  }

  else
  {
    v28 = 40.0;
  }

  v29 = objc_opt_self();
  v30 = [v26 constraintEqualToAnchor:v27 constant:v28];

  *(v13 + 80) = v30;
  v31 = [*(v1 + v9) centerYAnchor];
  v32 = [v1 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v13 + 88) = v33;
  sub_1E3B51B98();
  v34 = sub_1E42062A4();

  [v29 activateConstraints_];
}

id sub_1E3FA59E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerDistributionPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3FA5A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D510;
  if (!qword_1ECF3D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D510);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MultiPlayerDistributionPicker.FeaturedDistributionSymbol(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3FA5BB0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3FA5BFC(char a1)
{
  if (!a1)
  {
    return 0x6569766F6DLL;
  }

  if (a1 == 1)
  {
    return 0x776F68537674;
  }

  return 0x65646F73697065;
}

uint64_t sub_1E3FA5C58(unsigned __int8 a1, char a2)
{
  v2 = 0x6569766F6DLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x776F68537674;
    }

    else
    {
      v4 = 0x65646F73697065;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6569766F6DLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x776F68537674;
    }

    else
    {
      v2 = 0x65646F73697065;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3FA5D64(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3FA5DF0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3FA5E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FA5BB0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FA5EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FA5BFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3FA5EE4()
{
  v19 = 0;
  v20 = 0;
  v17 = 0x3FE22E8BA2E8BA2FLL;
  v18 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v13 = v15;
  v14 = v16;
  sub_1E3C3DE00();
  v9 = v11;
  v10 = v12;
  sub_1E3C3DE00();
  v5 = v7;
  v6 = v8;
  sub_1E3C3DE00();
  v1 = v3;
  v2 = v4;
  sub_1E3C2FCB8(&v19, &v17, &v13, &v9, &v5, &v1, v0, &unk_1ECF71948);
}

void *sub_1E3FA5FC8()
{
  if (_MergedGlobals_258 != -1)
  {
    OUTLINED_FUNCTION_13_169(&_MergedGlobals_258);
  }

  return &unk_1ECF71948;
}

uint64_t sub_1E3FA6008()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(3, v4, v3, v5);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6090()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(10, v4, v3, v5);
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = TVAppFeature.isEnabled.getter(10, a2, a3);
  v4 = 20.0;
  if (result)
  {
    v4 = 22.0;
  }

  qword_1ECF719A8 = *&v4;
  return result;
}

uint64_t *sub_1E3FA614C()
{
  if (qword_1EE28C928 != -1)
  {
    OUTLINED_FUNCTION_34_72(&qword_1EE28C928);
  }

  return &qword_1ECF719A8;
}

uint64_t sub_1E3FA618C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = TVAppFeature.isEnabled.getter(10, a2, a3);
  v4 = 20.0;
  if (result)
  {
    v4 = 22.0;
  }

  qword_1ECF719B0 = *&v4;
  return result;
}

uint64_t *sub_1E3FA61C0()
{
  if (qword_1EE29C350 != -1)
  {
    swift_once();
  }

  return &qword_1ECF719B0;
}

uint64_t sub_1E3FA621C()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6284()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 184) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA62EC()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 192) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6354()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 200) = v1;
  }

  return v1;
}

double sub_1E3FA63E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 208, a2);
  *(v2 + 208) = a1;

  return result;
}

double sub_1E3FA6450(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 216, a2);
  *(v2 + 216) = a1;

  return result;
}

uint64_t sub_1E3FA648C()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6500()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    type metadata accessor for RolesSummaryViewLayout();
    v1 = sub_1E3A2349C();
    *(v0 + 232) = v1;
  }

  return v1;
}

id sub_1E3FA6574()
{
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v0 + 240);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 240);
    *(v0 + 240) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA65E4(uint64_t a1)
{
  v2 = *(v1 + 240);
  *(v1 + 240) = a1;
}

id sub_1E3FA65F0()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 248);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 248);
    *(v0 + 248) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA6660(uint64_t a1)
{
  v2 = *(v1 + 248);
  *(v1 + 248) = a1;
}

id sub_1E3FA666C()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 256);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 256);
    *(v0 + 256) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA66DC(uint64_t a1)
{
  v2 = *(v1 + 256);
  *(v1 + 256) = a1;
}

id sub_1E3FA66E8()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 264);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 264);
    *(v0 + 264) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3FA6758(uint64_t a1)
{
  v2 = *(v1 + 264);
  *(v1 + 264) = a1;
}

uint64_t sub_1E3FA6764()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 272) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6804(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 280, a2);
  *(v2 + 280) = a1;
  *(v2 + 288) = v3 & 1;
  return result;
}

uint64_t sub_1E3FA684C()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 296);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 296) = v1;
  }

  return v1;
}

double sub_1E3FA68EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 304, a2);
  *(v2 + 304) = a1;

  return result;
}

double sub_1E3FA6954(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 312, a2);
  *(v2 + 312) = a1;

  return result;
}

uint64_t sub_1E3FA6990()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 320);
  }

  else
  {
    type metadata accessor for ProductGradientLayout();
    v1 = sub_1E3886290(0);
    *(v0 + 320) = v1;
  }

  return v1;
}

uint64_t sub_1E3FA6A08(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3FA6A44(v1);
}

uint64_t sub_1E3FA6A44(char a1)
{
  v2 = v1;
  *(v2 + 98) = 3;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 1;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  swift_beginAccess();
  *(v2 + 98) = a1;
  TVAppFeature.isEnabled.getter(10, v4, v5);
  type metadata accessor for ButtonLayout();
  *(v2 + 208) = sub_1E3BBB724();
  *(v2 + 216) = sub_1E3BBB724();
  v6 = sub_1E3C2F9A0();

  OUTLINED_FUNCTION_15_9();
  (*(v7 + 336))(0x4059000000000000, 0);
  type metadata accessor for BannerUberBackgroundViewLayout();
  OUTLINED_FUNCTION_9_2();
  v9 = *(v8 + 2488);
  v10 = v9();
  v11 = sub_1E3DF1318(0, v10);
  swift_beginAccess();
  *(v6 + 304) = v11;

  sub_1E3FA87E0();
  if ((TVAppFeature.isEnabled.getter(10, v12, v13) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    (*(v14 + 2248))();
    OUTLINED_FUNCTION_111();
    (*(v15 + 2600))();
  }

  sub_1E3E5FD88();
  OUTLINED_FUNCTION_111();
  v17 = *(v16 + 2008);
  v19 = v18;
  v17();
  OUTLINED_FUNCTION_2_1();
  v21 = (*(v20 + 2048))();

  v22 = *(*v21 + 872);
  v62 = v19;
  v22(v19);

  (v17)(v23);
  sub_1E3952C58();
  v63[0] = v24;
  v63[1] = v25;
  v63[2] = v26;
  v63[3] = v27;
  v64 = 0;
  OUTLINED_FUNCTION_8();
  (*(v28 + 184))(v63);

  OUTLINED_FUNCTION_9_2();
  v30 = (*(v29 + 1936))();
  sub_1E3C37CBC(v30, 43);

  OUTLINED_FUNCTION_9_2();
  v32 = (*(v31 + 1960))();
  sub_1E3C37CBC(v32, 23);

  OUTLINED_FUNCTION_9_2();
  v34 = (*(v33 + 1984))();
  sub_1E3C37CBC(v34, 15);

  v36 = (v17)(v35);
  sub_1E3C37CBC(v36, 60);

  OUTLINED_FUNCTION_9_2();
  v38 = (*(v37 + 2032))();
  sub_1E3C37CBC(v38, 61);

  OUTLINED_FUNCTION_9_2();
  v40 = (*(v39 + 2224))();
  sub_1E3C37CBC(v40, 9);

  OUTLINED_FUNCTION_9_2();
  v42 = (*(v41 + 2056))();
  sub_1E3C37CBC(v42, 12);

  OUTLINED_FUNCTION_9_2();
  v44 = (*(v43 + 2080))();
  sub_1E3C37CBC(v44, 13);

  OUTLINED_FUNCTION_9_2();
  v46 = (*(v45 + 2104))();
  sub_1E3C37CBC(v46, 27);

  OUTLINED_FUNCTION_9_2();
  v48 = (*(v47 + 2176))();
  sub_1E3C37CBC(v48, 3);

  OUTLINED_FUNCTION_9_2();
  v50 = (*(v49 + 2200))();
  sub_1E3C37CBC(v50, 34);

  OUTLINED_FUNCTION_9_2();
  v52 = (*(v51 + 2152))();
  sub_1E3C37CBC(v52, 11);

  OUTLINED_FUNCTION_9_2();
  v54 = (*(v53 + 2320))();
  sub_1E3C37CBC(v54, 93);

  OUTLINED_FUNCTION_9_2();
  v56 = (*(v55 + 2248))();
  sub_1E3C37EC8(v56, &unk_1F5D902E0);

  OUTLINED_FUNCTION_9_2();
  v58 = (*(v57 + 2440))();
  sub_1E3C37CBC(v58, 39);

  v60 = (v9)(v59);
  sub_1E3C37CBC(v60, 35);

  return v6;
}

uint64_t sub_1E3FA71EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 98) = 3;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 1;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  v4 = TVAppFeature.isEnabled.getter(10, a2, a3);
  type metadata accessor for ButtonLayout();
  if (v4)
  {
    j__OUTLINED_FUNCTION_18();
    v5 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    *(v3 + 208) = sub_1E3BBD964(1, v6, v5, v7);
    j__OUTLINED_FUNCTION_18();
    v8 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v11 = sub_1E3BBD964(2, v9, v8, v10);
  }

  else
  {
    *(v3 + 208) = sub_1E3BBB724();
    v11 = sub_1E3BBB724();
  }

  *(v3 + 216) = v11;

  return sub_1E3C2F9A0();
}

void sub_1E3FA72E0(void *a1, char a2, double a3, double a4, double a5)
{
  v6 = v5;
  OUTLINED_FUNCTION_8();
  v13 = (*(v12 + 2512))();
  if (v13)
  {
    v14 = v13;
    OUTLINED_FUNCTION_111();
    v16 = (*(v15 + 432))();
    (*(*v14 + 152))(a1, v16, v17 & 1, a3, a4, a5);
  }

  type metadata accessor for LayoutGrid();
  v18 = sub_1E3A2579C(a3);
  if ((sub_1E3A24FDC(v18) & 1) == 0)
  {
    [objc_opt_self() vui:a3 paddingForWindowWidth:?];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    if (sub_1E373F630(v18, 3, v34))
    {
      v36 = 352.0;
    }

    else
    {
      v36 = 305.0;
    }

    OUTLINED_FUNCTION_14_0(v6 + 280, v35);
    *(v6 + 280) = v36;
    *(v6 + 288) = 0;
    if (sub_1E373F630(v18, 3, v37))
    {
      v38 = sub_1E3952BE0(v27, v29, v31, v33);
      v39 = a3 - (v38 + v38);
      v40 = *(*v6 + 2440);
      v40();
      OUTLINED_FUNCTION_15_9();
      v42 = COERCE_DOUBLE((*(v41 + 432))());
      v44 = v43;

      if (v44)
      {
        v25 = v39;
        if (v36 >= v39)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v25 = v39 / v42;
        if (v36 >= v39 / v42)
        {
          goto LABEL_18;
        }
      }

      (v40)(v45);
    }

    else
    {
      OUTLINED_FUNCTION_111();
      (*(v46 + 2440))();
    }

    OUTLINED_FUNCTION_30();
    (*(v47 + 432))();

    v25 = v36;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_111();
  (*(v19 + 2440))();
  OUTLINED_FUNCTION_30();
  *&v21 = COERCE_DOUBLE((*(v20 + 432))());
  v23 = v22;

  v24 = *&v21;
  if (v23)
  {
    v24 = 1.0;
  }

  v25 = a3 / v24;
LABEL_18:
  OUTLINED_FUNCTION_111();
  v48 += 305;
  v49 = *v48;
  (*v48)();
  OUTLINED_FUNCTION_8();
  (*(v50 + 208))();

  v52 = (v49)(v51);
  (*(*v52 + 312))(ceil(v25), 0);

  sub_1E3A2579C(a3);
  if ((TVAppFeature.isEnabled.getter(10, v53, v54) & 1) != 0 && ((type metadata accessor for CanonicalBannerInfoView(), v55 = OUTLINED_FUNCTION_38(), (sub_1E39A6A94(v55, a3) & 1) == 0) || [a1 isAXLargeEnabled]))
  {
    v56 = 4;
    v57 = 4;
  }

  else
  {
    v56 = 1;
    v57 = 1;
  }

  OUTLINED_FUNCTION_111();
  v59 = (*(v58 + 2368))();
  v60 = [v59 textLayout];

  [v60 setAlignment_];
  OUTLINED_FUNCTION_9_2();
  (*(v61 + 1960))();
  OUTLINED_FUNCTION_2_1();
  (*(v62 + 1984))(v57);

  OUTLINED_FUNCTION_9_2();
  (*(v63 + 1984))();
  OUTLINED_FUNCTION_2_1();
  (*(v64 + 1984))(v57);

  if (TVAppFeature.isEnabled.getter(10, v65, v66))
  {
    if (a2)
    {
      type metadata accessor for ViewLayout();
      sub_1E3C8BE74();
      v67 = OUTLINED_FUNCTION_63_33();
      v68 = sub_1E3DEFC38(v67);
    }

    else
    {
      v68 = *sub_1E3E5FD88();
    }

    v69 = v68;
    sub_1E3FA7984(v69);
  }

  v70 = a1;
  sub_1E3C2AE10();
  v72 = v71;
  OUTLINED_FUNCTION_9_2();
  (*(v73 + 1640))();
}

void sub_1E3FA7984(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v2 += 293;
  v3 = *v2;
  v4 = (*v2)();
  v5 = [v4 textLayout];

  [v5 setColor_];
  v6 = v3();
  [v6 setBadgeTintColor_];

  v7 = v3();
  v8 = [v7 immersiveTextLayout];

  [v8 setColor_];
  v9 = v3();
  v10 = [v9 highMotionTextLayout];

  [v10 setColor_];
}

void sub_1E3FA7AD8(uint64_t a1, void *a2, unsigned int a3)
{
  sub_1E3C35CF4(a1, a2);
  if (TVAppFeature.isEnabled.getter(10, v6, v7))
  {
    OUTLINED_FUNCTION_111();
    (*(v8 + 2560))();
    sub_1E3886EEC(a1, a2, a3);

    v9 = sub_1E3A24FDC(a1);
    OUTLINED_FUNCTION_9_2();
    v11 = (*(v10 + 2344))();
    [v11 updateLayoutForPhoneSizeClass_];

    OUTLINED_FUNCTION_9_2();
    v13 = (*(v12 + 2368))();
    [v13 updateLayoutForPhoneSizeClass_];
  }
}

double sub_1E3FA7C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    OUTLINED_FUNCTION_111();
    (*(v5 + 312))(0x4049000000000000, 0);
    OUTLINED_FUNCTION_9_2();
    (*(v6 + 2048))();
    OUTLINED_FUNCTION_2_1();
    (*(v7 + 1696))(16);
  }

  OUTLINED_FUNCTION_111();
  (*(v8 + 2048))();
  OUTLINED_FUNCTION_30();
  (*(v9 + 1720))(12);

  return result;
}

uint64_t sub_1E3FA7D9C(uint64_t a1)
{
  nullsub_1();
  result = TVAppFeature.isEnabled.getter(10, v2, v3);
  if (result)
  {
    result = sub_1E385050C();
    if (result)
    {
      type metadata accessor for TextBadgeLayout(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        v5 = result;
        swift_beginAccess();
        v1[39] = v5;
        swift_retain_n();

        OUTLINED_FUNCTION_3_11();
        v7 = (*(v6 + 1872))();
        if (v7)
        {
          OUTLINED_FUNCTION_30();
          (*(v8 + 2024))(3, 0);
        }

        if ((*(*v1 + 2536))(v7))
        {
          sub_1E3952C58();
          *v46 = v9;
          *&v46[8] = v10;
          *&v46[16] = v11;
          *&v46[24] = v12;
          v46[32] = 0;
          sub_1E3952C58();
          v54[0] = v13;
          v54[1] = v14;
          v54[2] = v15;
          v54[3] = v16;
          v55 = 0;
          sub_1E3952C58();
          v52[0] = v17;
          v52[1] = v18;
          v52[2] = v19;
          v52[3] = v20;
          v53 = 0;
          sub_1E3952C58();
          v50[0] = v21;
          v50[1] = v22;
          v50[2] = v23;
          v50[3] = v24;
          v51 = 0;
          type metadata accessor for UIEdgeInsets();
          v26 = v25;
          sub_1E3C2FC98();
          OUTLINED_FUNCTION_51_47();
          v27 = sub_1E3C3DE00();
          OUTLINED_FUNCTION_107(v27, v28, v29, v30, v31, v32, v33, v34, *v46, *&v46[8], *&v46[16], *&v46[24], *&v46[32], *&v46[40], *&v46[48], *&v46[56], *&v46[64], *&v46[72], *&v46[80], *&v46[88], *&v46[96], *&v46[104], *&v46[112], *&v46[120], *&v46[128], *&v46[136], *&v46[144], *&v46[152], *&v46[160], *&v46[168], *&v46[176], *&v46[184], *&v46[192], *&v46[200], *&v46[208], *&v46[216], *&v46[224], *&v46[232], v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v48);
          sub_1E3C2FCB8(v46, v49, v54, v52, v50, v47, v26, __src);
          memcpy(v46, __src, 0xE9uLL);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_14();
          v43 = OUTLINED_FUNCTION_30_3(v35, v36, v37, v38, v39, v40, v41, v42, *v46);
          v44(v43, 0);
        }

        v45 = *sub_1E3810A0C();

        sub_1E3C37EC8(v5, v45);
      }
    }
  }

  return result;
}

uint64_t sub_1E3FA8038(double a1)
{
  v2 = objc_opt_self();
  if ([v2 isTV])
  {
    return TVAppFeature.isEnabled.getter(10, v3, v4);
  }

  result = [v2 isVision];
  if ((result & 1) == 0)
  {
    result = [v2 isMac];
    if ((result & 1) == 0)
    {
      type metadata accessor for LayoutGrid();
      v6 = sub_1E3A2579C(a1);
      return sub_1E3A24FDC(v6);
    }
  }

  return result;
}

double sub_1E3FA8108()
{

  return result;
}

id *sub_1E3FA81F8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3FA82F0()
{
  v0 = sub_1E3FA81F8();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

uint64_t sub_1E3FA8320()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  v80[0] = 21;
  LOBYTE(v110[0]) = 25;
  LOBYTE(v108[0]) = 15;
  LOBYTE(v103) = 22;
  sub_1E3C2FC98();
  LOBYTE(v92) = v98;
  v1 = sub_1E3C3DE00();
  LOBYTE(v81) = v87;
  OUTLINED_FUNCTION_29_70(v1, v2, v3, v4, v5, v6, v7, v8, *v80, *&v80[8], *&v80[16], *&v80[24], *&v80[32], *&v80[40], *&v80[48], *&v80[56], *&v80[64], *&v80[72], *&v80[80], *&v80[88], *&v80[96], *&v80[104], *&v80[112], *&v80[120], *&v80[128], *&v80[136], *&v80[144], *&v80[152], *&v80[160], *&v80[168], *&v80[176], *&v80[184], *&v80[192], *&v80[200], *&v80[208], *&v80[216], *&v80[224], *&v80[232], v81, v82, v83, v84, v85, v86, v87, *(&v87 + 1), v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  OUTLINED_FUNCTION_60_35();
  OUTLINED_FUNCTION_14();
  v10 = *(v9 + 1600);
  v19 = OUTLINED_FUNCTION_30_3(v11, v12, v13, v14, v15, v16, v17, v18, *v80);
  v10(v19, 48);
  v80[0] = 0;
  LOBYTE(v110[0]) = 5;
  LOBYTE(v108[0]) = 7;
  sub_1E3C2FC98();
  LOBYTE(v98) = v103;
  sub_1E3C3DE00();
  LOBYTE(v87) = v92;
  sub_1E3C3DE00();
  v113 = v81;
  sub_1E3C2FCB8(v80, &v98, &v87, v110, &v113, v108, &qword_1F5D54AF8, __src);
  v20 = OUTLINED_FUNCTION_60_35();
  v28 = OUTLINED_FUNCTION_30_3(v20, v21, v22, v23, v24, v25, v26, v27, *v80);
  v10(v28, 54);
  sub_1E3C8BE74();
  v29 = OUTLINED_FUNCTION_63_33();
  sub_1E3DEFBE8(v29, v30);
  OUTLINED_FUNCTION_36();
  (*(v31 + 1984))(1);
  OUTLINED_FUNCTION_36();
  v32 = OUTLINED_FUNCTION_8_5();
  v33(v32);
  OUTLINED_FUNCTION_36();
  v34 = OUTLINED_FUNCTION_10_7();
  v35(v34);
  OUTLINED_FUNCTION_36();
  v36 = OUTLINED_FUNCTION_10_7();
  v37(v36);
  sub_1E3952C58();
  *v80 = v38;
  *&v80[8] = v39;
  *&v80[16] = v40;
  *&v80[24] = v41;
  v80[32] = 0;
  sub_1E3952C88();
  v110[0] = v42;
  v110[1] = v43;
  v110[2] = v44;
  v110[3] = v45;
  v111 = 0;
  sub_1E3952C58();
  v108[0] = v46;
  v108[1] = v47;
  v108[2] = v48;
  v108[3] = v49;
  v109 = 0;
  sub_1E3952C58();
  v103 = v50;
  v104 = v51;
  v105 = v52;
  v106 = v53;
  v107 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_51_47();
  v54 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v54, v55, v56, v57, v58, v59, v60, v61, *v80, *&v80[8], *&v80[16], *&v80[24], *&v80[32], *&v80[40], *&v80[48], *&v80[56], *&v80[64], *&v80[72], *&v80[80], *&v80[88], *&v80[96], *&v80[104], *&v80[112], *&v80[120], *&v80[128], *&v80[136], *&v80[144], *&v80[152], *&v80[160], *&v80[168], *&v80[176], *&v80[184], *&v80[192], *&v80[200], *&v80[208], *&v80[216], *&v80[224], *&v80[232], v81, v82, v83, v84, v85, v86, v87);
  OUTLINED_FUNCTION_29_70(v62, v63, v64, v65, v66, v67, v68, v69, *v80, *&v80[8], *&v80[16], *&v80[24], *&v80[32], *&v80[40], *&v80[48], *&v80[56], *&v80[64], *&v80[72], *&v80[80], *&v80[88], *&v80[96], *&v80[104], *&v80[112], *&v80[120], *&v80[128], *&v80[136], *&v80[144], *&v80[152], *&v80[160], *&v80[168], *&v80[176], *&v80[184], *&v80[192], *&v80[200], *&v80[208], *&v80[216], *&v80[224], *&v80[232], v81, v82, v83, v84, v85, v86, v87, *(&v87 + 1), v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  memcpy(v80, __src, 0xE9uLL);
  v70 = OUTLINED_FUNCTION_18();
  v78 = OUTLINED_FUNCTION_30_3(v70, v71, v72, v73, v74, v75, v76, v77, *v80);
  v10(v78, 0);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for CanonicalBannerLayout.ContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CanonicalBannerLayout.ColumnWidth(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_6_105(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CanonicalBannerLayout.ColumnWidth(uint64_t result, int a2, int a3)
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

uint64_t sub_1E3FA879C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_6_105(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FA87B0(uint64_t result, int a2)
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

void sub_1E3FA87E0()
{
  v8 = v0;
  if (_MergedGlobals_258 != -1)
  {
    OUTLINED_FUNCTION_13_169(&_MergedGlobals_258);
  }

  memcpy(__dst, &unk_1ECF71948, 0x59uLL);
  v9 = MEMORY[0x1E69E7DE0];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 1600))(__dst, 81, v11 & 1, v9);
  OUTLINED_FUNCTION_9_2();
  v13 = *(v12 + 1936);
  v13();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1808))(1);

  if ((TVAppFeature.isEnabled.getter(10, v15, v16) & 1) == 0)
  {
    v13();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v804) = 0;
    *&__src[0] = 0x404E000000000000;
    BYTE8(__src[0]) = 0;
    *&v784[0] = 0x4056800000000000;
    BYTE8(v784[0]) = 0;
    *&v818 = 0;
    BYTE8(v818) = 0;
    *&v813 = 0x404E000000000000;
    BYTE8(v813) = 0;
    OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00();
    v801 = v809;
    v802 = BYTE8(v809);
    v19 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v19, v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_25_96();
    memcpy(v24, v25, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v26 = OUTLINED_FUNCTION_43_4();
    v27(v26, 8);

    OUTLINED_FUNCTION_9_2();
    v2 = *(v28 + 1960);
    v2();
    LOBYTE(v803) = 27;
    LOBYTE(__src[0]) = 2;
    LOBYTE(v784[0]) = 2;
    LOBYTE(v818) = 27;
    LOBYTE(v813) = 2;
    OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_42_65();
    v29 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v34 = OUTLINED_FUNCTION_16_141();
    v35(v34);

    (v2)(v36);
    OUTLINED_FUNCTION_2_1();
    (*(v37 + 1792))(10);

    (v2)(v38);
    OUTLINED_FUNCTION_2_1();
    (*(v39 + 2176))(4, 0);

    (v2)(v40);
    OUTLINED_FUNCTION_2_1();
    v41 = OUTLINED_FUNCTION_52_50();
    v42(v41);

    v44 = (v2)(v43);
    v45 = sub_1E3E5FD88();
    v46 = *v45;
    v3 = (*v44 + 680);
    v47 = *v3;
    v48 = *v45;
    v47(v46);

    (v2)(v49);
    OUTLINED_FUNCTION_2_1();
    v50 = OUTLINED_FUNCTION_8_5();
    v51(v50);

    (v2)(v52);
    OUTLINED_FUNCTION_2_1();
    v53 = OUTLINED_FUNCTION_8_5();
    v54(v53);

    OUTLINED_FUNCTION_9_2();
    v1 = (v55 + 1984);
    v56 = *(v55 + 1984);
    v56();
    LOBYTE(v803) = 27;
    LOBYTE(__src[0]) = 17;
    LOBYTE(v784[0]) = 2;
    LOBYTE(v818) = 27;
    LOBYTE(v813) = 2;
    OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_42_65();
    v57 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v57, v58, v59, v60, v61);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v62 = OUTLINED_FUNCTION_16_141();
    v63(v62);

    (v56)(v64);
    OUTLINED_FUNCTION_2_1();
    (*(v65 + 1792))(10);

    (v56)(v66);
    OUTLINED_FUNCTION_2_1();
    (*(v67 + 2176))(4, 0);

    (v56)(v68);
    v738 = v1;
    OUTLINED_FUNCTION_2_1();
    v69 = OUTLINED_FUNCTION_52_50();
    v70(v69);

    (v56)(v71);
    v803 = *v45;
    *&__src[0] = v803;
    v72 = v803;
    *&v784[0] = *sub_1E3E5FDEC();
    *&v818 = 0;
    v73 = sub_1E3755B54();
    v74 = *&v784[0];
    OUTLINED_FUNCTION_48_51();
    sub_1E3C3DE00();
    *&v809 = v813;
    sub_1E3C3DE00();
    *&v799[0] = v801;
    v75 = OUTLINED_FUNCTION_1_268();
    sub_1E3C2FCB8(v75, v76, v77, v78, &v809, v799, v73, v79);
    OUTLINED_FUNCTION_28_83();
    OUTLINED_FUNCTION_14();
    v80 = OUTLINED_FUNCTION_43_4();
    v81(v80, 21);

    v56();
    OUTLINED_FUNCTION_2_1();
    v82 = OUTLINED_FUNCTION_8_5();
    v83(v82);

    (v56)(v84);
    OUTLINED_FUNCTION_2_1();
    v85 = OUTLINED_FUNCTION_8_5();
    v86(v85);
  }

  v87 = TVAppFeature.isEnabled.getter(10, v17, v18);
  OUTLINED_FUNCTION_111();
  v88 += 251;
  v89 = *v88;
  v90 = v88;
  (*v88)();
  OUTLINED_FUNCTION_15_9();
  (*(v91 + 2048))();

  if (v87)
  {
    v803 = 0;
    *&__src[0] = *sub_1E3E5FD88();
    v92 = *&__src[0];
    *&v784[0] = *sub_1E3E5FDEC();
    sub_1E3755B54();
    v93 = *&v784[0];
    OUTLINED_FUNCTION_71_31();
    *&v813 = v818;
    OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00();
    v801 = v809;
    OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00();
    *&v797[0] = *&v799[0];
    v94 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_29_94(v94, v95, v96, v97);
    v738 = v90;
    OUTLINED_FUNCTION_28_83();
    OUTLINED_FUNCTION_14();
    v98 = OUTLINED_FUNCTION_43_4();
    v99(v98, 21);

    v100 = v90;
    v89();
    OUTLINED_FUNCTION_15_9();
    (*(v101 + 2048))();
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_37_74(27);
    LOBYTE(v784[0]) = 2;
    OUTLINED_FUNCTION_71_31();
    LOBYTE(v813) = v818;
    OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_42_65();
    OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00();
    LOBYTE(v797[0]) = v799[0];
    v102 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_29_94(v102, v103, v104, v105);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v106 = OUTLINED_FUNCTION_16_141();
    v107(v106);

    (v89)(v108);
    OUTLINED_FUNCTION_15_9();
    (*(v109 + 2048))();
    OUTLINED_FUNCTION_38();

    LOBYTE(v803) = 11;
    OUTLINED_FUNCTION_53_48();
  }

  else
  {
    v110 = *sub_1E3E5FDEC();
    OUTLINED_FUNCTION_8();
    v100 = *(v111 + 680);
    v112 = v110;
    (v100)(v110);

    (v89)(v113);
    OUTLINED_FUNCTION_15_9();
    (*(v114 + 2048))();
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_37_74(27);
    LOBYTE(v784[0]) = 15;
    OUTLINED_FUNCTION_71_31();
    LOBYTE(v813) = v818;
    OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_42_65();
    OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00();
    LOBYTE(v797[0]) = v799[0];
    v115 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_29_94(v115, v116, v117, v118);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v119 = OUTLINED_FUNCTION_16_141();
    v120(v119);

    (v89)(v121);
    OUTLINED_FUNCTION_15_9();
    (*(v122 + 2048))();
    OUTLINED_FUNCTION_38();

    LOBYTE(v803) = 11;
    LOBYTE(__src[0]) = 11;
    LOBYTE(v784[0]) = 10;
  }

  OUTLINED_FUNCTION_71_31();
  LOBYTE(v813) = v818;
  OUTLINED_FUNCTION_40_67();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_42_65();
  OUTLINED_FUNCTION_57_35();
  sub_1E3C3DE00();
  LOBYTE(v797[0]) = v799[0];
  v123 = OUTLINED_FUNCTION_2_231();
  OUTLINED_FUNCTION_29_94(v123, v124, v125, v126);
  OUTLINED_FUNCTION_10_156();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v127 = OUTLINED_FUNCTION_43_4();
  v128(v127, 54);

  OUTLINED_FUNCTION_111();
  v129 += 254;
  v130 = *v129;
  (*v129)();
  OUTLINED_FUNCTION_30();
  (*(v131 + 2048))();
  OUTLINED_FUNCTION_30_6();
  v132 = sub_1E3E5FDEC();
  v133 = *v132;
  v134 = *(*v100 + 85);
  v135 = *v132;
  v134(v133);

  (v130)(v136);
  OUTLINED_FUNCTION_2_1();
  (*(v137 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v138 + 1696))(19);

  (v130)(v139);
  OUTLINED_FUNCTION_2_1();
  (*(v140 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v141 + 1792))(10);

  (v130)(v142);
  OUTLINED_FUNCTION_2_1();
  (*(v143 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v144 + 1984))(5);

  (v130)(v145);
  OUTLINED_FUNCTION_2_1();
  (*(v146 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  v147 = OUTLINED_FUNCTION_10_7();
  v148(v147);

  (v130)(v149);
  OUTLINED_FUNCTION_2_1();
  (*(v150 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  v151 = OUTLINED_FUNCTION_10_7();
  v152(v151);

  (v130)(v153);
  OUTLINED_FUNCTION_2_1();
  (*(v154 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  v155 = OUTLINED_FUNCTION_10_7();
  v156(v155);

  TVAppFeature.isEnabled.getter(10, v157, v158);
  v130();
  OUTLINED_FUNCTION_15_9();
  (*(v159 + 2048))();

  sub_1E3952C78();
  v757 = v160;
  v758 = v161;
  v759 = v162;
  v760 = v163;
  LOBYTE(v761) = 0;
  OUTLINED_FUNCTION_8();
  (*(v164 + 160))();

  (v130)(v165);
  OUTLINED_FUNCTION_2_1();
  (*(v166 + 2048))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v167 + 1720))(12);

  (v130)(v168);
  OUTLINED_FUNCTION_15_9();
  (*(v169 + 2096))();

  if (qword_1EE28C928 != -1)
  {
    OUTLINED_FUNCTION_34_72(&qword_1EE28C928);
  }

  v170 = qword_1ECF719A8;
  OUTLINED_FUNCTION_8();
  (*(v171 + 208))(v170, 0);

  (v130)(v172);
  OUTLINED_FUNCTION_2_1();
  v174 = (*(v173 + 2096))();

  (*(*v174 + 312))(v170, 0);

  (v130)(v175);
  OUTLINED_FUNCTION_2_1();
  (*(v176 + 2096))();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_3_11();
  (*(v177 + 440))(0x3FF0000000000000, 0);

  (v130)(v178);
  OUTLINED_FUNCTION_2_1();
  (*(v179 + 2096))();
  OUTLINED_FUNCTION_30_6();
  v180.n128_u64[0] = 0.5;
  v752 = j__OUTLINED_FUNCTION_7_78(v180);
  v753 = v181;
  v754 = v182;
  v755 = v183;
  LOBYTE(v756) = 0;
  (*(*v170 + 1856))(&v752);

  (v130)(v184);
  OUTLINED_FUNCTION_2_1();
  (*(v185 + 2096))();
  OUTLINED_FUNCTION_30_6();
  v186 = *sub_1E3E60CFC();
  v187 = *(*v170 + 1832);
  v188 = v186;
  v187(v186);

  (v130)(v189);
  OUTLINED_FUNCTION_2_1();
  (*(v190 + 2096))();
  OUTLINED_FUNCTION_30_6();
  sub_1E39537A8();
  v747 = v191;
  v748 = v192;
  v749 = v193;
  v750 = v194;
  LOBYTE(v751) = 0;
  (*(*v170 + 560))(&v747);

  OUTLINED_FUNCTION_9_2();
  v196 = *(v195 + 2056);
  v196();
  OUTLINED_FUNCTION_2_1();
  (*(v197 + 1696))(15);

  (v196)(v198);
  OUTLINED_FUNCTION_2_1();
  (*(v199 + 1792))(10);

  (v196)(v200);
  OUTLINED_FUNCTION_2_1();
  (*(v201 + 2176))(4, 0);

  (v196)(v202);
  OUTLINED_FUNCTION_2_1();
  v203 = OUTLINED_FUNCTION_52_50();
  v204(v203);

  v206 = (v196)(v205);
  v207 = *v132;
  v208 = *(*v206 + 680);
  v209 = v207;
  v208(v207);

  (v196)(v210);
  OUTLINED_FUNCTION_2_1();
  v211 = OUTLINED_FUNCTION_8_5();
  v212(v211);

  (v196)(v213);
  OUTLINED_FUNCTION_2_1();
  v214 = OUTLINED_FUNCTION_8_5();
  v215(v214);

  if ((TVAppFeature.isEnabled.getter(10, v216, v217) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v218 += 278;
    v219 = *v218;
    (*v218)();
    OUTLINED_FUNCTION_30();
    (*(v220 + 1696))(17);

    OUTLINED_FUNCTION_9_2();
    switch((*(v221 + 1912))())
    {
      case 2u:

        goto LABEL_15;
      case 3u:
        goto LABEL_13;
      default:
        OUTLINED_FUNCTION_68_32();
        v222 = sub_1E42079A4();

        if (v222)
        {
LABEL_15:
          v223 = 0;
        }

        else
        {
LABEL_13:
          v223 = 3;
        }

        v219();
        OUTLINED_FUNCTION_30();
        (*(v224 + 1984))(4);

        v226 = (v219)(v225);
        v227 = *sub_1E3E5FD88();
        v228 = *(*v226 + 680);
        v229 = v227;
        v228(v227);

        (v219)(v230);
        OUTLINED_FUNCTION_50_51();
        LOBYTE(v804) = 1;
        *&__src[0] = v223;
        OUTLINED_FUNCTION_54_48();
        *&v818 = 2;
        BYTE8(v818) = 0;
        OUTLINED_FUNCTION_48_51();
        sub_1E3C3DE00();
        OUTLINED_FUNCTION_26_109();
        sub_1E3C3DE00();
        *&v799[0] = v801;
        BYTE8(v799[0]) = v802;
        v231 = OUTLINED_FUNCTION_2_231();
        OUTLINED_FUNCTION_69_29(v231, v232, v233, v234);
        v235 = OUTLINED_FUNCTION_25_96();
        memcpy(v235, v236, 0x59uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v237 = OUTLINED_FUNCTION_43_4();
        v238(v237, 62);

        OUTLINED_FUNCTION_9_2();
        v240 = *(v239 + 2152);
        v240();
        OUTLINED_FUNCTION_2_1();
        (*(v241 + 1696))(21);

        v243 = (v240)(v242);
        sub_1E3755B54();
        OUTLINED_FUNCTION_2_7();
        v244 = sub_1E4206F24();
        v4 = 0x3FE6666666666666;
        v245 = [v244 colorWithAlphaComponent_];

        v246 = sub_1E4206F24();
        v247 = [v246 colorWithAlphaComponent_];

        v248 = sub_1E3E5F2F8(v245, v247);
        (*(*v243 + 680))(v248);

        (v240)(v249);
        OUTLINED_FUNCTION_2_1();
        (*(v250 + 1984))(1);

        (v240)(v251);
        OUTLINED_FUNCTION_2_1();
        v252 = OUTLINED_FUNCTION_10_7();
        v253(v252);

        break;
    }
  }

  v254 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v255 = sub_1E3755B54();
  OUTLINED_FUNCTION_2_7();
  v256 = sub_1E4206F24();
  v257 = [v256 colorWithAlphaComponent_];

  [v254 setShadowColor_];
  [v254 setShadowOffset_];
  [v254 setShadowBlurRadius_];
  OUTLINED_FUNCTION_9_2();
  v259 = *(v258 + 2440);
  v259();
  OUTLINED_FUNCTION_2_1();
  (*(v260 + 1808))(1);

  (v259)(v261);
  OUTLINED_FUNCTION_2_1();
  (*(v262 + 440))(0x3FFC71C71C71C71CLL, 0);

  (v259)(v263);
  OUTLINED_FUNCTION_2_1();
  (*(v264 + 2000))(0);

  TVAppFeature.isEnabled.getter(10, v265, v266);
  sub_1E39537A8();
  OUTLINED_FUNCTION_3();
  v259();
  v803 = v4;
  v804 = v5;
  v805 = v6;
  v806 = v7;
  LOBYTE(v807) = 0;
  v267 = *(MEMORY[0x1E69DDCE0] + 16);
  __src[0] = *MEMORY[0x1E69DDCE0];
  __src[1] = v267;
  LOBYTE(__src[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v269 = v268;
  v270 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_47_54(v270, v271, v272, v273, v274, v275, v276, v277, v711, v714, v716, v719, v723, v725, v728, v731, v734, v738, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765, v766, v767, v768, *(&v768 + 1), v769, *(&v769 + 1), v770, v771, v772, *(&v772 + 1), v773, *(&v773 + 1), v774, v775, v776, v777, v778, v779, v780, v781, v782);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_208();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_12_154();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_30_80();
  OUTLINED_FUNCTION_6_202();
  OUTLINED_FUNCTION_62_34();
  sub_1E3C2FCB8(v278, v279, v280, v281, v282, v283, v269, v284);
  v285 = OUTLINED_FUNCTION_25_96();
  memcpy(v285, v286, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v287 = OUTLINED_FUNCTION_43_4();
  v288(v287, 17);

  v291 = TVAppFeature.isEnabled.getter(10, v289, v290);
  if (v291)
  {
    v259();
    v292 = [objc_opt_self() whiteColor];
    v293 = [v292 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v294 + 1832))(v293);

    v296 = (v259)(v295);
    __dst[0] = sub_1E3952CA4();
    __dst[1] = v297;
    __dst[2] = v298;
    __dst[3] = v299;
    LOBYTE(__dst[4]) = 0;
    (*(*v296 + 1856))(__dst);
  }

  (v259)(v291);
  OUTLINED_FUNCTION_30();
  v301 = *(v300 + 608);
  v302 = v254;
  v301(v254);

  (v259)(v303);
  OUTLINED_FUNCTION_2_1();
  (*(v304 + 632))(1);

  if ((TVAppFeature.isEnabled.getter(10, v305, v306) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v307 += 260;
    v308 = *v307;
    (*v307)();
    OUTLINED_FUNCTION_30();
    (*(v309 + 1696))(21);

    (v308)(v310);
    OUTLINED_FUNCTION_2_1();
    (*(v311 + 1792))(10);

    (v308)(v312);
    OUTLINED_FUNCTION_2_1();
    (*(v313 + 1984))(1);

    v315 = (v308)(v314);
    v316 = *sub_1E3E5FD88();
    v317 = *(*v315 + 680);
    v318 = v316;
    v317(v316);

    (v308)(v319);
    OUTLINED_FUNCTION_2_1();
    v320 = OUTLINED_FUNCTION_10_7();
    v321(v320);
  }

  OUTLINED_FUNCTION_111();
  v322 += 263;
  v323 = *v322;
  (*v322)();
  OUTLINED_FUNCTION_30();
  (*(v324 + 1696))(17);

  (v323)(v325);
  OUTLINED_FUNCTION_2_1();
  (*(v326 + 1792))(10);

  (v323)(v327);
  OUTLINED_FUNCTION_2_1();
  (*(v328 + 1984))(5);

  v330 = (v323)(v329);
  v331 = *sub_1E3E5FD88();
  v332 = *(*v330 + 680);
  v333 = v331;
  v332(v331);

  (v323)(v334);
  OUTLINED_FUNCTION_2_1();
  v335 = OUTLINED_FUNCTION_10_7();
  v336(v335);

  if (TVAppFeature.isEnabled.getter(10, v337, v338))
  {
    v323();
    sub_1E3952C58();
    v742 = v341;
    v743 = v342;
    v744 = v343;
    v745 = v344;
    LOBYTE(v746) = 0;
    OUTLINED_FUNCTION_8();
    (*(v345 + 160))(&v742);
  }

  if (TVAppFeature.isEnabled.getter(10, v339, v340))
  {
    OUTLINED_FUNCTION_111();
    (*(v346 + 2248))();
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v807) = 1;
    __src[0] = xmmword_1E42E1CD0;
    memset(&__src[1], 0, 17);
    v784[0] = xmmword_1E42E1CE0;
    memset(&v784[1], 0, 17);
    v818 = xmmword_1E42E1CF0;
    v819 = 0;
    v820 = 0;
    v821 = 0;
    v813 = xmmword_1E42E1CE0;
    v815 = 0;
    v814 = 0;
    v816 = 0;
    v809 = xmmword_1E42E1D00;
    v811 = 0;
    v810 = 0;
    v812 = 0;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v347, v348, v349, v350, v351, v352, v269, v353);
    v354 = OUTLINED_FUNCTION_25_96();
    memcpy(v354, v355, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v356 = OUTLINED_FUNCTION_8_181();
    v357(v356);

    OUTLINED_FUNCTION_9_2();
    (*(v358 + 2008))();
    OUTLINED_FUNCTION_2_1();
    v360 = (*(v359 + 2048))();

    (*(*v360 + 1720))(12);

    OUTLINED_FUNCTION_9_2();
    v717 = v361 + 1960;
    v720 = *(v361 + 1960);
    v720();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v804) = 1;
    *&__src[0] = 0x4075400000000000;
    BYTE8(__src[0]) = 0;
    *&v784[0] = 0x4076800000000000;
    BYTE8(v784[0]) = 0;
    *&v818 = 0x4082C00000000000;
    BYTE8(v818) = 0;
    *&v813 = 0x4071800000000000;
    BYTE8(v813) = 0;
    *&v809 = 0x407C200000000000;
    BYTE8(v809) = 0;
    v362 = MEMORY[0x1E69E7DE0];
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v363, v364, v365, v366, v367, v368, v362, v369);
    v370 = OUTLINED_FUNCTION_25_96();
    memcpy(v370, v371, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v372();

    OUTLINED_FUNCTION_9_2();
    v732 = v373 + 1984;
    v735 = *(v373 + 1984);
    v735();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v804) = 1;
    *&__src[0] = 0x4075400000000000;
    OUTLINED_FUNCTION_54_48();
    *&v818 = 0x4082C00000000000;
    BYTE8(v818) = 0;
    *&v813 = 0x4071800000000000;
    BYTE8(v813) = 0;
    *&v809 = 0x407C200000000000;
    BYTE8(v809) = 0;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v374, v375, v376, v377, v378, v379, v362, v380);
    v381 = OUTLINED_FUNCTION_25_96();
    memcpy(v381, v382, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v383();

    OUTLINED_FUNCTION_9_2();
    v726 = v384 + 2056;
    v729 = *(v384 + 2056);
    v729();
    OUTLINED_FUNCTION_50_51();
    LOBYTE(v804) = 1;
    *&__src[0] = 0x4075400000000000;
    OUTLINED_FUNCTION_54_48();
    *&v818 = 0x4082C00000000000;
    BYTE8(v818) = 0;
    *&v813 = 0x4071800000000000;
    BYTE8(v813) = 0;
    *&v809 = 0x407C200000000000;
    BYTE8(v809) = 0;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v385, v386, v387, v388, v389, v390, v362, v391);
    v392 = OUTLINED_FUNCTION_25_96();
    memcpy(v392, v393, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v394();

    OUTLINED_FUNCTION_9_2();
    v396 = *(v395 + 1936);
    v396();
    v803 = 0x406D600000000000;
    LOBYTE(v804) = 0;
    *&__src[0] = 0x407A400000000000;
    BYTE8(__src[0]) = 0;
    *&v784[0] = 0x406FE00000000000;
    BYTE8(v784[0]) = 0;
    OUTLINED_FUNCTION_70_29(0x4077800000000000);
    OUTLINED_FUNCTION_26_109();
    sub_1E3C3DE00();
    *&v799[0] = v801;
    BYTE8(v799[0]) = v802;
    v397 = OUTLINED_FUNCTION_17_136();
    sub_1E3C2FCB8(v397, v398, v399, v400, v401, v402, v362, v403);
    v404 = OUTLINED_FUNCTION_25_96();
    memcpy(v404, v405, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_65_35();
    v406();

    (v396)(v407);
    v803 = 0x404E000000000000;
    LOBYTE(v804) = 0;
    *&__src[0] = 0x405F800000000000;
    BYTE8(__src[0]) = 0;
    *&v784[0] = 0x4049000000000000;
    BYTE8(v784[0]) = 0;
    OUTLINED_FUNCTION_70_29(0x4057400000000000);
    OUTLINED_FUNCTION_26_109();
    sub_1E3C3DE00();
    *&v799[0] = v801;
    BYTE8(v799[0]) = v802;
    v408 = OUTLINED_FUNCTION_17_136();
    sub_1E3C2FCB8(v408, v409, v410, v411, v412, v413, v362, v414);
    v415 = OUTLINED_FUNCTION_25_96();
    memcpy(v415, v416, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v417 = OUTLINED_FUNCTION_43_4();
    v418(v417, 8);

    (v396)(v419);
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v807) = 1;
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v420, v421, v422, v423);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v424, v425, v426, v427);
    sub_1E3952C88();
    OUTLINED_FUNCTION_14_164(v428, v429, v430, v431);
    sub_1E3952C88();
    OUTLINED_FUNCTION_56_37(v432, v433, v434, v435);
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v436, v437, v438, v439, v440, v441, v269, v442);
    v443 = OUTLINED_FUNCTION_25_96();
    memcpy(v443, v444, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v445 = OUTLINED_FUNCTION_8_181();
    v446(v445);

    (v720)(v447);
    OUTLINED_FUNCTION_2_1();
    v448 = OUTLINED_FUNCTION_8_5();
    v449(v448);

    (v720)(v450);
    LOBYTE(v803) = 27;
    LOBYTE(__src[0]) = 2;
    LOBYTE(v784[0]) = 1;
    LOBYTE(v818) = 3;
    LOBYTE(v813) = 1;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_42_65();
    v451 = OUTLINED_FUNCTION_1_268();
    sub_1E3C2FCB8(v451, v452, v453, v454, &v813, &v801, &qword_1F5D549D8, v455);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v456 = OUTLINED_FUNCTION_16_141();
    v457(v456);

    v459 = (v720)(v458);
    v739 = sub_1E3E5FD88();
    v460 = *v739;
    v461 = *(*v459 + 680);
    v462 = *v739;
    v461(v460);

    (v720)(v463);
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v807) = 1;
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v464, v465, v466, v467);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v468, v469, v470, v471);
    sub_1E3952C88();
    OUTLINED_FUNCTION_14_164(v472, v473, v474, v475);
    OUTLINED_FUNCTION_40_67();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_55_47();
    v476 = OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_49_57(v476, v477, v478, v479, v480);
    v481 = OUTLINED_FUNCTION_25_96();
    memcpy(v481, v482, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v483 = OUTLINED_FUNCTION_8_181();
    v484(v483);

    (v720)(v485);
    LOBYTE(v803) = 0;
    LOBYTE(__src[0]) = 10;
    LOBYTE(v784[0]) = 10;
    LOBYTE(v818) = 7;
    LOBYTE(v813) = 10;
    LOBYTE(v809) = 7;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v486, v487, v488, v489, v490, v491, &qword_1F5D54AF8, v492);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v493 = OUTLINED_FUNCTION_43_4();
    v494(v493, 54);

    (v735)(v495);
    OUTLINED_FUNCTION_2_1();
    v496 = OUTLINED_FUNCTION_8_5();
    v497(v496);

    (v735)(v498);
    OUTLINED_FUNCTION_37_74(27);
    LOBYTE(v784[0]) = 2;
    LOBYTE(v818) = 7;
    LOBYTE(v813) = 1;
    LOBYTE(v809) = 2;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v499, v500, v501, v502, v503, v504, &qword_1F5D549D8, v505);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v506 = OUTLINED_FUNCTION_16_141();
    v507(v506);

    (v735)(v508);
    OUTLINED_FUNCTION_50_51();
    *&__src[0] = *v739;
    v509 = *&__src[0];
    v721 = sub_1E3E5FDEC();
    *&v784[0] = *v721;
    *&v818 = *&v784[0];
    *&v813 = *v739;
    v510 = v813;
    *&v809 = *&v784[0];
    v511 = *&v784[0];
    v512 = v510;
    OUTLINED_FUNCTION_1_268();
    OUTLINED_FUNCTION_43_63();
    sub_1E3C2FCB8(v513, v514, v515, v516, v517, v518, v255, v519);
    v520 = __dst[0];
    v521 = __dst[1];
    v522 = __dst[2];
    v523 = __dst[3];
    v524 = __dst[4];
    v525 = __dst[5];
    v803 = __dst[0];
    v804 = __dst[1];
    v805 = __dst[2];
    v806 = __dst[3];
    v807 = __dst[4];
    v808 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v526 = OUTLINED_FUNCTION_43_4();
    v527(v526, 21);

    v735();
    OUTLINED_FUNCTION_39_62();
    LOBYTE(v807) = 1;
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v528, v529, v530, v531);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v532, v533, v534, v535);
    OUTLINED_FUNCTION_48_51();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_208();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_12_154();
    v536 = OUTLINED_FUNCTION_2_231();
    OUTLINED_FUNCTION_69_29(v536, v537, v538, v539);
    v540 = OUTLINED_FUNCTION_25_96();
    memcpy(v540, v541, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v542 = OUTLINED_FUNCTION_8_181();
    v543(v542);

    (v735)(v544);
    LOBYTE(v803) = 0;
    OUTLINED_FUNCTION_53_48();
    LOBYTE(v818) = 7;
    LOBYTE(v813) = 7;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_42_65();
    v545 = OUTLINED_FUNCTION_1_268();
    sub_1E3C2FCB8(v545, v546, v547, v548, &v801, &v813, &qword_1F5D54AF8, v549);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v550 = OUTLINED_FUNCTION_43_4();
    v551(v550, 54);

    (v729)(v552);
    sub_1E3952C88();
    OUTLINED_FUNCTION_15_152(v553, v554, v555, v556);
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v557, v558, v559, v560);
    v561 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_47_54(v561, v562, v563, v564, v565, v566, v567, v568, v712, 0x6569766F6DLL, v717, v721, v255, v726, v729, v732, v735, v739, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765, v766, v767, v768, *(&v768 + 1), v769, *(&v769 + 1), v770, v771, v772, *(&v772 + 1), v773, *(&v773 + 1), v774, v775, v776, v777, v778, v779, v780, v781, v782);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_208();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_12_154();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_30_80();
    v569 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v569, &v818, &v809, v799, &v796, __src, v269, v570);
    v571 = OUTLINED_FUNCTION_25_96();
    memcpy(v571, v572, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v573 = OUTLINED_FUNCTION_8_181();
    v574(v573);

    OUTLINED_FUNCTION_9_2();
    v576 = v575 + 2080;
    v577 = *(v575 + 2080);
    v577();
    sub_1E3952C88();
    OUTLINED_FUNCTION_15_152(v578, v579, v580, v581);
    sub_1E3952C88();
    OUTLINED_FUNCTION_9_172(v582, v583, v584, v585);
    sub_1E3952C88();
    OUTLINED_FUNCTION_33_79();
    sub_1E3952C88();
    OUTLINED_FUNCTION_32_82(v586, v587, v588, v589);
    OUTLINED_FUNCTION_48_51();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_208();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_12_154();
    v590 = OUTLINED_FUNCTION_17_136();
    sub_1E3C2FCB8(v590, v591, v592, v593, v594, v595, v269, v596);
    v597 = OUTLINED_FUNCTION_25_96();
    memcpy(v597, v598, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v599 = OUTLINED_FUNCTION_8_181();
    v600(v599);

    v733 = v576;
    (v577)(v601);
    v736 = v577;
    OUTLINED_FUNCTION_37_74(14);
    LOBYTE(v784[0]) = 21;
    LOBYTE(v818) = 15;
    LOBYTE(v813) = 15;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_42_65();
    v602 = OUTLINED_FUNCTION_6_202();
    sub_1E3C2FCB8(v602, v603, &v801, v784, &v818, &v813, &qword_1F5D549D8, v604);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v605 = OUTLINED_FUNCTION_16_141();
    v606(v605);

    (v577)(v607);
    v803 = *v740;
    *&__src[0] = *v722;
    v608 = *&__src[0];
    v609 = v803;
    v610 = v608;
    sub_1E3C3DE00();
    *&v818 = *&v784[0];
    sub_1E3C3DE00();
    *&v809 = v813;
    sub_1E3C3DE00();
    *&v799[0] = v801;
    sub_1E3C3DE00();
    *&v796 = *&v797[0];
    OUTLINED_FUNCTION_6_202();
    OUTLINED_FUNCTION_62_34();
    sub_1E3C2FCB8(v611, v612, v613, v614, v615, v616, v255, v617);
    v618 = __dst[0];
    v619 = __dst[1];
    v620 = __dst[2];
    v621 = __dst[3];
    v622 = __dst[4];
    v623 = __dst[5];
    v803 = __dst[0];
    v804 = __dst[1];
    v805 = __dst[2];
    v806 = __dst[3];
    v807 = __dst[4];
    v808 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v624 = OUTLINED_FUNCTION_43_4();
    v625(v624, 21);

    v736();
    LOBYTE(v803) = 0;
    OUTLINED_FUNCTION_53_48();
    LOBYTE(v818) = 10;
    sub_1E3C3DE00();
    LOBYTE(v809) = v813;
    sub_1E3C3DE00();
    LOBYTE(v799[0]) = v801;
    v626 = OUTLINED_FUNCTION_2_231();
    sub_1E3C2FCB8(v626, v627, v628, &v809, &v818, v799, &qword_1F5D54AF8, v629);
    OUTLINED_FUNCTION_4_231();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v630 = OUTLINED_FUNCTION_43_4();
    v631(v630, 54);

    OUTLINED_FUNCTION_9_2();
    v737 = *(v632 + 2344);
    v741 = v632 + 2344;
    v633 = v737();
    sub_1E3952C88();
    [v633 setMargin_];

    OUTLINED_FUNCTION_9_2();
    v635 = (*(v634 + 2368))();
    sub_1E3952C88();
    [v635 setMargin_];

    type metadata accessor for ViewLayout();
    sub_1E3C8BE74();
    v636 = OUTLINED_FUNCTION_63_33();
    v637 = sub_1E3DEFC38(v636);
    sub_1E3FA7984(v637);

    OUTLINED_FUNCTION_9_2();
    v639 = 0;
    switch((*(v638 + 1912))())
    {
      case 1u:
        v715 = 0x776F68537674;
        goto LABEL_26;
      case 2u:

        v639 = 1;
        break;
      case 3u:
        break;
      default:
LABEL_26:
        OUTLINED_FUNCTION_68_32();
        v639 = sub_1E42079A4();

        break;
    }

    OUTLINED_FUNCTION_111();
    v640 += 278;
    v641 = *v640;
    (*v640)();
    v793 = 0;
    v794 = 1;
    v791 = 0x4075400000000000;
    v792 = 0;
    v789 = 0x4076800000000000;
    v790 = 0;
    v642 = (v639 & 1) == 0;
    v643 = 0x4085280000000000;
    if (v639)
    {
      v643 = 0x408AE00000000000;
    }

    v787 = v643;
    v788 = 0;
    v785 = 0x4071800000000000;
    v786 = 0;
    v644 = 0x4079000000000000;
    if (v639)
    {
      v644 = 0x4082580000000000;
    }

    __dst[0] = v644;
    LOBYTE(__dst[1]) = 0;
    v645 = MEMORY[0x1E69E7DE0];
    if (v642)
    {
      v646 = 2;
    }

    else
    {
      v646 = 0;
    }

    if (v642)
    {
      v647 = 2;
    }

    else
    {
      v647 = 4;
    }

    sub_1E3C2FCB8(&v793, &v791, &v789, &v787, &v785, __dst, MEMORY[0x1E69E7DE0], __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v648 + 1600))(__dst, 4, v649 & 1, v645);

    v651 = (v641)(v650);
    v652 = v737();
    [v652 margin];
    OUTLINED_FUNCTION_3();

    *&v818 = v4;
    *(&v818 + 1) = v5;
    v819 = v6;
    v820 = v7;
    v821 = 0;
    (*(*v651 + 160))(&v818);

    (v641)(v653);
    v782 = 0;
    v783 = 1;
    v780 = v646;
    LOBYTE(v781) = 0;
    v778 = v646;
    LOBYTE(v779) = 0;
    v776 = 4;
    LOBYTE(v777) = 0;
    __dst[0] = v647;
    LOBYTE(__dst[1]) = 0;
    v803 = 2;
    LOBYTE(v804) = 0;
    v654 = MEMORY[0x1E69E6810];
    sub_1E3C2FCB8(&v782, &v780, &v778, &v776, __dst, &v803, MEMORY[0x1E69E6810], v784);
    memcpy(__dst, v784, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v655 + 1600))(__dst, 62, v656 & 1, v654);

    (v641)(v657);
    LOBYTE(v803) = 17;
    LOBYTE(v813) = 14;
    LOBYTE(v809) = 22;
    LOBYTE(v801) = 15;
    LOBYTE(v799[0]) = 15;
    sub_1E3C2FC98();
    LOBYTE(v796) = v797[0];
    v658 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v658, &v796, &v813, &v809, &v801, v799, &qword_1F5D549D8, v659);
    OUTLINED_FUNCTION_10_156();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v660 = OUTLINED_FUNCTION_16_141();
    v661(v660);

    (v641)(v662);
    sub_1E3C8BE74();
    v663 = OUTLINED_FUNCTION_63_33();
    sub_1E3DEFBE8(v663, v664);

    (v641)(v665);
    OUTLINED_FUNCTION_2_1();
    (*(v666 + 2392))(1);

    OUTLINED_FUNCTION_9_2();
    (*(v667 + 2440))();
    sub_1E3952C58();
    OUTLINED_FUNCTION_15_152(v668, v669, v670, v671);
    sub_1E3952C58();
    OUTLINED_FUNCTION_14_164(v672, v673, v674, v675);
    OUTLINED_FUNCTION_40_67();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_55_47();
    OUTLINED_FUNCTION_57_35();
    sub_1E3C3DE00();
    v797[0] = v799[0];
    v797[1] = v799[1];
    v798 = v800;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_51_47();
    v676 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_107(v676, v677, v678, v679, v680, v681, v682, v683, v713, v715, v718, v722, v724, v727, v730, v733, v737, v741, v742, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765, v766, v767, v768);
    v684 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v684, &v801, &v813, v797, &v772, &v762, v269, v685);
    v686 = OUTLINED_FUNCTION_25_96();
    memcpy(v686, v687, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v688 = OUTLINED_FUNCTION_8_181();
    v689(v688);

    OUTLINED_FUNCTION_9_2();
    (*(v690 + 2320))();
    sub_1E3952C88();
    OUTLINED_FUNCTION_15_152(v691, v692, v693, v694);
    sub_1E3952C88();
    OUTLINED_FUNCTION_14_164(v695, v696, v697, v698);
    sub_1E3952C88();
    OUTLINED_FUNCTION_56_37(v699, v700, v701, v702);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_12_154();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_30_80();
    sub_1E3C3DE00();
    v768 = v772;
    v769 = v773;
    LOBYTE(v770) = v774;
    v703 = OUTLINED_FUNCTION_23_93();
    sub_1E3C2FCB8(v703, v799, &v796, &v813, &v809, &v768, v269, v704);
    v705 = OUTLINED_FUNCTION_25_96();
    memcpy(v705, v706, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v707 = OUTLINED_FUNCTION_8_181();
    v708(v707);

    type metadata accessor for TextLayout();
    *(v8 + 176) = sub_1E3FA8320();

    OUTLINED_FUNCTION_9_2();
    [(*(v709 + 2152))() copyWithZone_];
    OUTLINED_FUNCTION_30_6();
    sub_1E4207264();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_25_96();
    if (swift_dynamicCast())
    {
      v710 = v803;
    }

    else
    {
      v710 = sub_1E383BCC0();
    }

    *(v8 + 184) = v710;
  }
}

void OUTLINED_FUNCTION_32_82(double a1, double a2, double a3, double a4)
{
  *(v4 - 160) = a1;
  *(v4 - 152) = a2;
  *(v4 - 144) = a3;
  *(v4 - 136) = a4;
  *(v4 - 128) = 0;
}

void OUTLINED_FUNCTION_56_37(double a1, double a2, double a3, double a4)
{
  *&STACK[0x480] = a1;
  *&STACK[0x488] = a2;
  *&STACK[0x490] = a3;
  *&STACK[0x498] = a4;
  LOBYTE(STACK[0x4A0]) = 0;
}

void OUTLINED_FUNCTION_69_29(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1E3C2FCB8(a1, a2, a3, &STACK[0x480], &STACK[0x330], v5 - 160, v4, a4);
}

uint64_t OUTLINED_FUNCTION_70_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
  *(v1 - 152) = 0;

  return sub_1E3C2FC98();
}

uint64_t sub_1E3FAC790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  if (!a2)
  {

    v14 = sub_1E3C27528(v12, v13);

    if (v14)
    {
      type metadata accessor for TextLayout();
      v5 = swift_dynamicCastClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }
  }

  result = sub_1E3FAC85C(v8);
  *a4 = a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = a3;
  *(a4 + 24) = result;
  *(a4 + 26) = BYTE2(result);
  *(a4 + 32) = v11;
  *(a4 + 40) = v10 & 1;
  return result;
}

uint64_t sub_1E3FAC85C(uint64_t a1)
{
  if (!a1)
  {
    return 460551;
  }

  v2 = *(*a1 + 1560);

  LOBYTE(v2) = v2(v3);

  v4 = *(*a1 + 456);

  v6 = v4(v5);

  v7 = *(*a1 + 1976);

  v9 = v7(v8);

  v10 = *(*a1 + 1808);

  v10(v11);

  return v2 | (v6 << 8) | (v9 << 16);
}

void sub_1E3FAC9E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InternalTextView(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D518, &qword_1E42E1EC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v15 = *v2;
  v14 = v2[1];
  v16 = *(v2 + 16);
  v17 = v5[10];
  *&v7[v17] = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_8_182(v18);
  v19 = v5[11];
  *&v7[v19] = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  OUTLINED_FUNCTION_8_182(v20);
  v21 = v5[12];
  *&v7[v21] = swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428, &qword_1E42AC180);
  OUTLINED_FUNCTION_8_182(v22);
  v23 = &v7[v5[13]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *v7 = v15;

  v25 = v14;
  if (!v14)
  {
    v25 = sub_1E3C27528(0, v24);
    if (v25)
    {
      type metadata accessor for TextLayout();
      OUTLINED_FUNCTION_20_2();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {

        v25 = 0;
      }
    }
  }

  *(v7 + 1) = v25;
  v7[16] = v16;
  *(v7 + 24) = *(v2 + 3);
  v7[40] = *(v2 + 40);
  sub_1E3FAE630(v7, v10);
  sub_1E3FAE630(v10, v13);
  sub_1E3FAE694(v13, a1);

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for InternalTextView(uint64_t a1)
{
  result = qword_1EE2A2F60;
  if (!qword_1EE2A2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FACC60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v9 = a3;
  v11 = a1;
  if (a1 != 7)
  {
    if (a4 == 7)
    {
      return 0;
    }

    sub_1E37F99D4(a1, a2, a3);
    a1 = sub_1E4205E84();
    if ((a1 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (BYTE1(v11) == 7)
    {
      if (BYTE1(a4) != 7)
      {
        return 0;
      }
    }

    else
    {
      if (BYTE1(a4) == 7)
      {
        return 0;
      }

      sub_1E3793D00(a1, a2, a3);
      a1 = sub_1E4205E84();
      if ((a1 & 1) == 0)
      {
        return 0;
      }
    }

    if (BYTE2(v11) == 7)
    {
      if (BYTE2(a4) != 7)
      {
        return 0;
      }
    }

    else
    {
      if (BYTE2(a4) == 7)
      {
        return 0;
      }

      sub_1E376C3B8(a1, a2, a3);
      if ((sub_1E4205E84() & 1) == 0)
      {
        return 0;
      }
    }

    if (v9)
    {
      if ((a6 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a6 & 1) != 0 || *&a2 != *&a5)
    {
      return 0;
    }

    return 1;
  }

  if (a4 == 7)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1E3FACE10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewModel();
  if ((static ViewModel.== infix(_:_:)(*a1, *a2) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 24) | (*(a1 + 26) << 16);
  v9 = *(a2 + 24) | (*(a2 + 26) << 16);

  return sub_1E3FACC60(v8, v4, v5, v9, v6, v7);
}

void sub_1E3FACEC0(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v73 = v4;
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v72 = (v6 - v5);
  v71 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v69 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v66 = (v10 - v9);
  v65 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v64 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v63 = (v14 - v13);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v68 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v57 - v17;
  v18 = *v1;
  swift_beginAccess();
  v19 = v18[36];
  v20 = *(*v18 + 320);

  v22 = (v20)(v21);
  if (v23)
  {

    type metadata accessor for Accessibility();
    v20();
    sub_1E40A7DC8();
    v61 = v24;
    v62 = v25;
  }

  else
  {
    v62 = 0;
    v61 = v22;
  }

  v60 = sub_1E3CB6974(*(v1 + 8));
  v26 = sub_1E4201C14();
  v30 = OUTLINED_FUNCTION_6_203(v26, v27, v28, v29);
  v32 = v31;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v30);
  v57 = v2;
  v39 = sub_1E3FAE49C(v36, v37, v35 & 1, v38, sub_1E3FAEBE8, (&v59 - 4), v19);
  v58 = v39;
  v41 = v40;
  v59 = v40;
  v43 = v42;
  v45 = v44;
  sub_1E37434B8(v30, v32, v34 & 1);

  v76 = v39;
  v77 = v41;
  LOBYTE(v39) = v43 & 1;
  v78 = v43 & 1;
  v79 = v45;
  v46 = type metadata accessor for InternalTextView(0);
  v47 = v63;
  sub_1E3746E10(v63);
  v48 = v66;
  sub_1E374709C(v66);
  v49 = *(v2 + 16);
  v50 = v72;
  sub_1E39305C4(v72);
  v51 = sub_1E38D5E2C(*(v2 + *(v46 + 44)), *(v2 + *(v46 + 44) + 8));
  v52 = MEMORY[0x1E6981138];
  v53 = v67;
  v54 = v49;
  v55 = MEMORY[0x1E6981148];
  sub_1E37B6028(v60, v47, v48, v54, v50, v51 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v67);
  (*(v73 + 8))(v50, v74);
  (*(v69 + 8))(v48, v71);
  (*(v64 + 8))(v47, v65);
  sub_1E37434B8(v58, v59, v39);

  v76 = v55;
  v77 = v52;
  OUTLINED_FUNCTION_2_232();
  swift_getOpaqueTypeConformance2();
  v56 = v70;
  sub_1E3E03180();

  (*(v68 + 8))(v53, v56);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FAD410(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1E41FE1B4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_5();
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v247 = *a1;
  v249 = v12;
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 40);
  switch(*(a2 + 48))
  {
    case 0:
      v252 = *a2;
      v253 = v15;
      v20 = v15;
      v21 = sub_1E32822E0(v11, v12, v17);

      sub_1E4202C44();
      OUTLINED_FUNCTION_1_269();
      v22 = sub_1E4202BF4();
      goto LABEL_13;
    case 1:
      v252 = *a2;
      v253 = v15;
      v20 = v15;
      v21 = sub_1E32822E0(v11, v12, v17);

      sub_1E4202C44();
      OUTLINED_FUNCTION_1_269();
      v22 = sub_1E4202C14();
LABEL_13:
      v84 = v22;
      v85 = v23;
      v86 = v24;
      OUTLINED_FUNCTION_7_209();
      OUTLINED_FUNCTION_3_233();
      sub_1E4202BD4();
      OUTLINED_FUNCTION_1_269();
      sub_1E37434B8(v84, v85, v86 & 1);

      *a5 = v21;
      *(a5 + 8) = v20;
      *(a5 + 16) = a4 & 1;
      *(a5 + 24) = v19;
      goto LABEL_53;
    case 2:
      v241 = *(a2 + 16);
      v243 = *(a2 + 24);
      v237 = *(a2 + 32);
      v62 = *a3;
      LOBYTE(v250) = 2;
      v63 = *(*v62 + 776);
      v64 = v15;

      v63(&v252, &v250, &unk_1F5D5DD98, &off_1F5D5CA38);
      if (v254)
      {
        v65 = OUTLINED_FUNCTION_13_170();
        if (v65)
        {
          if (v250)
          {
            v68 = sub_1E32870AC();
            v234 = *((*MEMORY[0x1E69E7D40] & **v68) + 0x58);
            v69 = *v68;
            v70 = v64;
            v71 = v234(v16, v64);
            v73 = v72;
            sub_1E3FAECBC(v16, v70, v241, v243, v237, v19, 2);

            v16 = v71;
            v64 = v73;
          }
        }
      }

      else
      {
        v65 = sub_1E329505C(&v252);
      }

      v252 = v16;
      v253 = v64;
      sub_1E32822E0(v65, v66, v67);
      sub_1E4202C44();
      OUTLINED_FUNCTION_1_269();
      v100 = OUTLINED_FUNCTION_14_165(v247, v249, v13, v97, v98, v99, v96 & 1);
      v102 = v101;
      v104 = v103;
      OUTLINED_FUNCTION_7_209();
      *a5 = v100;
      *(a5 + 8) = v102;
      *(a5 + 16) = v104 & 1;
      *(a5 + 24) = v16;
      goto LABEL_53;
    case 3:
      v235 = a5;
      v74 = *(*v16 + 392);
      v229 = *(a2 + 8);
      v242 = *(a2 + 16);
      v244 = *(a2 + 24);
      v238 = *(a2 + 32);
      OUTLINED_FUNCTION_11_172();
      sub_1E3FAEC14(v75, v76, v77, v78, v79, v80, v81);

      v227 = v74;
      if ((v74)(v82))
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        v83 = swift_dynamicCastClass();
        if (!v83)
        {
        }
      }

      else
      {
        v83 = 0;
      }

      v105 = OUTLINED_FUNCTION_1_36();
      v106 = (*(*v16 + 1000))(0, v105);
      v232 = v19;
      if (v107 == 255)
      {
        goto LABEL_23;
      }

      if (v107)
      {
        sub_1E379098C(v106, v107);
LABEL_23:
        v111 = 0;
      }

      else
      {
        v108 = v106;
        v224 = v106;
        if ([v106 type] == 1)
        {
          v109 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v110 = [v108 name];
          sub_1E4205F14();

          v111 = sub_1E3D525D8();
        }

        else
        {
          v193 = [v108 name];
          v222 = sub_1E4205F14();
          v195 = v194;

          if (a4)
          {
            v196 = objc_opt_self();
            v197 = *(*a4 + 2408);

            v199 = v197(v198);
            v200 = [v196 vui:v199 fontFromTextLayout:?];

            if (v200)
            {
              if (v83)
              {
                v201 = *(*v83 + 2016);

                v203 = v201(v202);
                LOBYTE(v201) = v204;

                if (v201)
                {
                  v203 = -1;
                }
              }

              else
              {
                v203 = -1;
              }

              v109 = [objc_opt_self() configurationWithFont:v200 scale:v203];

              sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
              if (v109)
              {
                v205 = v109;
              }
            }

            else
            {

              sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
              v109 = 0;
            }
          }

          else
          {
            sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
            v109 = 0;
          }

          v111 = sub_1E37E96E8(v222, v195, v109);
        }

        if (v83 && (v206 = (*(*v83 + 672))()) != 0 && (v206, v111))
        {
          v207 = [v111 vuiTemplateImage];
          sub_1E379098C(v224, 0);

          v111 = v207;
        }

        else
        {
          sub_1E379098C(v224, 0);
        }
      }

      if (v111)
      {
        v113 = (v227)(v112);
        OUTLINED_FUNCTION_11_172();
        sub_1E3FAECBC(v114, v115, v116, v117, v118, v119, v120);
        if (v113)
        {
          type metadata accessor for ImageLayout();
          OUTLINED_FUNCTION_20_2();
          v121 = swift_dynamicCastClass();
          if (!v121)
          {
          }
        }

        else
        {
          v121 = 0;
        }

        v137 = sub_1E4201C14();
        v141 = OUTLINED_FUNCTION_6_203(v137, v138, v139, v140);
        v219 = v142;
        v221 = v141;
        v214 = v143;
        v213 = v111;
        sub_1E381AC64(v213);
        v144 = sub_1E4202C54();
        v146 = v145;
        v148 = v147;
        v228 = v121;
        if (!v121 || !(*(*v121 + 672))())
        {
          v149 = [objc_opt_self() clearColor];
        }

        sub_1E4203644();
        v150 = sub_1E4202B94();
        v152 = v151;
        v154 = v153;

        sub_1E37434B8(v144, v146, v148 & 1);

        v156 = (*(*v16 + 904))(v155);
        if (v157)
        {
          v159 = v156;
        }

        else
        {
          v159 = 0;
        }

        if (v157)
        {
          v160 = v157;
        }

        else
        {
          v160 = 0xE000000000000000;
        }

        v252 = v159;
        v253 = v160;
        sub_1E32822E0(v156, v157, v158);
        v161 = sub_1E4202BC4();
        v217 = v162;
        v218 = v163;
        sub_1E37434B8(v150, v152, v154 & 1);

        LOBYTE(v250) = 2;
        (*(*v16 + 776))(&v252, &v250, &unk_1F5D5D408, &off_1F5D5C818);
        v212 = v16;
        v216 = v161;
        if (v254)
        {
          v164 = OUTLINED_FUNCTION_13_170();
          if (v164)
          {
            v166 = v250;
            v165 = v251;
            if (v228 && (v167 = (*(*v228 + 1896))(v164), v167 != 2) && sub_1E3B65750(v167 & 1, 1) && [objc_opt_self() isSearchEnabled])
            {
              v252 = v166;
              v253 = v165;
              sub_1E4202C44();
              OUTLINED_FUNCTION_1_269();
              v171 = OUTLINED_FUNCTION_14_165(v161, v217, v218 & 1, v168, v169, v170, v166 & 1);
              v210 = v172;
              v208 = v173;
              OUTLINED_FUNCTION_7_209();
              sub_1E37434B8(v161, v217, v218 & 1);

              v174 = v214;
              v216 = v171;
              v217 = v210;
              v218 = v208;
            }

            else
            {
              v252 = v166;
              v253 = v165;
              v175 = sub_1E4202C44();
              v177 = v176;
              v179 = v178;
              v180 = sub_1E4202BD4();
              v209 = v181;
              v211 = v180;
              v174 = v182;
              sub_1E37434B8(v175, v177, v179 & 1);

              sub_1E37434B8(v221, v219, v214 & 1);

              v219 = v209;
              v221 = v211;
            }
          }

          else
          {
            v174 = v214;
          }
        }

        else
        {
          sub_1E329505C(&v252);
          v174 = v214;
        }

        v225 = sub_1E4202BD4();
        v215 = v183;
        v185 = v184;
        sub_1E37434B8(v216, v217, v218 & 1);

        sub_1E37434B8(v221, v219, v174 & 1);

        OUTLINED_FUNCTION_3_233();
        v186 = sub_1E4202BD4();
        v188 = v187;
        v190 = v189;
        v192 = v191;
        sub_1E3FAECBC(v212, v229, v242, v244, v238, v232, 3);
        sub_1E37434B8(v225, v215, v185 & 1);

        *v235 = v186;
        *(v235 + 8) = v188;
        *(v235 + 16) = v190 & 1;
        *(v235 + 24) = v192;
LABEL_53:
        OUTLINED_FUNCTION_25_2();
      }

      else
      {
        OUTLINED_FUNCTION_11_172();
        sub_1E3FAECBC(v122, v123, v124, v125, v126, v127, v128);
        OUTLINED_FUNCTION_11_172();
        sub_1E3FAECBC(v129, v130, v131, v132, v133, v134, v135);
        a5 = v235;
        v11 = v247;
        v12 = v249;
LABEL_29:
        *a5 = v11;
        *(a5 + 8) = v12;
        *(a5 + 16) = v13;
        *(a5 + 24) = v14;
        sub_1E37E6F1C(v11, v12, v13);
        OUTLINED_FUNCTION_25_2();
      }

      return;
    case 4:
      v233 = a5;
      v252 = *a2;
      v253 = v15;
      v250 = 32;
      v251 = 0xE100000000000000;
      v239._countAndFlagsBits = v17;
      v239._object = v18;
      sub_1E32822E0(v11, v12, v17);
      v25 = sub_1E42071F4();
      v230 = v19;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35760, &qword_1E42E0F60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v29 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      v30 = v29;
      v31 = sub_1E3E60700();
      v32 = *v31;
      *(inited + 40) = *v31;
      type metadata accessor for Key(0);
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      sub_1E3FAEDAC(&qword_1EE23B100);
      v33 = v32;
      v34 = sub_1E4205CB4();
      v252 = 32;
      v253 = 0xE100000000000000;
      MEMORY[0x1E69109E0](v25, v27);

      MEMORY[0x1E69109E0](41154, 0xA200000000000000);

      sub_1E3C28388(v34);
      v36 = v35;

      v37 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v38 = sub_1E3C2A044(32, 0xE100000000000000, v36);
      v39._countAndFlagsBits = v25;
      v39._object = v27;
      NSMutableAttributedString.setAsLink(textToFind:linkURL:)(v39, v239);

      v40 = v38;
      sub_1E41FE1D4();
      v41 = sub_1E4202C34();
      v43 = v42;
      v45 = v44;
      if (v230)
      {

        sub_1E42037C4();
        v46 = sub_1E4202C54();
        v48 = v47;
        v240 = v40;
        v50 = v49;
        v51 = *v31;
        sub_1E4203644();
        v236 = sub_1E4202B94();
        v231 = v52;
        v220 = v53;

        sub_1E37434B8(v46, v48, v50 & 1);

        OUTLINED_FUNCTION_3_233();
        v223 = sub_1E4202BD4();
        v55 = v54;
        v57 = v56;
        v58 = sub_1E4202BD4();
        v245 = v59;
        v246 = v58;
        v226 = v60;
        v248 = v61;

        sub_1E37434B8(v41, v43, v45 & 1);

        sub_1E37434B8(v236, v231, v220 & 1);

        sub_1E37434B8(v223, v55, v57 & 1);

        *v233 = v246;
        *(v233 + 8) = v245;
        *(v233 + 16) = v226 & 1;
        *(v233 + 24) = v248;
      }

      else
      {
        OUTLINED_FUNCTION_3_233();
        v87 = sub_1E4202BD4();
        v89 = v88;
        v90 = v41;
        v92 = v91;
        v93 = v45;
        v95 = v94;

        sub_1E37434B8(v90, v43, v93 & 1);

        *v233 = v87;
        *(v233 + 8) = v89;
        *(v233 + 16) = v92 & 1;
        *(v233 + 24) = v95;
      }

      goto LABEL_53;
    default:
      goto LABEL_29;
  }
}

uint64_t sub_1E3FAE49C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v11 = *(a7 + 16);
  sub_1E37E6F1C(a1, a2, a3 & 1);

  v12 = (a7 + 80);
  if (v11)
  {
    while (1)
    {
      v21 = v11;
      v35 = v8;
      v22 = v10;
      v23 = v9;
      v13 = *(v12 - 6);
      v14 = *(v12 - 5);
      v16 = *(v12 - 4);
      v15 = *(v12 - 3);
      v17 = *(v12 - 2);
      v18 = *(v12 - 1);
      v10 = *v12;
      v29[0] = v13;
      v29[1] = v14;
      v29[2] = v16;
      v29[3] = v15;
      v29[4] = v17;
      v29[5] = v18;
      v30 = v10;
      sub_1E3FAEC14(v13, v14, v16, v15, v17, v18, v10);
      a5(&v25, &v31, v29);
      if (v24)
      {
        break;
      }

      sub_1E3FAECBC(v13, v14, v16, v15, v17, v18, v10);
      sub_1E37434B8(v22, v23, v35 & 1);

      v10 = v25;
      v9 = v26;
      v8 = v27;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v12 += 56;
      v11 = v21 - 1;
      if (v21 == 1)
      {
        return v10;
      }
    }

    sub_1E3FAECBC(v13, v14, v16, v15, v17, v18, v10);
    sub_1E37434B8(v22, v23, v35 & 1);
  }

  return v10;
}

uint64_t sub_1E3FAE630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FAE694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D518, &qword_1E42E1EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3FAE708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D520;
  if (!qword_1ECF3D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextLayoutState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InternalTextLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && a1[17])
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 7)
      {
        v4 = 7;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 8;
      if (v3 < 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalTextLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_1E3FAE900()
{
  result = qword_1EE289DB8;
  if (!qword_1EE289DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D518, &qword_1E42E1EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289DB8);
  }

  return result;
}

void sub_1E3FAE98C(uint64_t a1)
{
  type metadata accessor for TextViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3FAEB6C(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3FAEB6C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E3FAEB6C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E3FAEB6C(319, &qword_1EE289EA0, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1E3FAED5C(319, &qword_1EE289E70, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E3FAEB6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3FAEC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:
    case 2:
      goto LABEL_3;
    case 3:

      break;
    case 4:

LABEL_3:

      break;
    default:
      return;
  }
}

double sub_1E3FAECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:
    case 2:

      goto LABEL_4;
    case 3:

      break;
    case 4:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1E3FAED5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E3FAEDAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1E3FAEDEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E3A79350();
  result = 0.0;
  if (!v8)
  {
    sub_1E3FAEE48(a5);
    result = *&a1;
    if (a2)
    {
      return 10.0;
    }
  }

  return result;
}

uint64_t sub_1E3FAEE48(uint64_t a1)
{
  v29 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4201044();
  sub_1E3960028();
  v7 = sub_1E42066D4();
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v7;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1E3A79F84(0, v7 & ~(v7 >> 63), 0);
    v8 = v32;
    result = sub_1E42066B4();
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = (v3 + 16);
    do
    {
      v11 = sub_1E4206764();
      v12 = v29;
      (*v28)(v6);
      v11(v31, 0);
      sub_1E4201504();
      v31[0] = v13 & 1;
      v30 = v14 & 1;
      sub_1E4200EF4();
      v16 = v15;
      v18 = v17;
      (*(v3 + 8))(v6, v12);
      v32 = v8;
      v19 = a1;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E3A79F84((v20 > 1), v21 + 1, 1);
        v8 = v32;
      }

      *(v8 + 16) = v21 + 1;
      v22 = v8 + 16 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v18;
      sub_1E4206734();
      --v9;
      a1 = v19;
    }

    while (v9);
  }

  v23 = *(v8 + 16);
  if (v23)
  {
    v24 = (v8 + 32);
    v25 = 0uLL;
    do
    {
      v26 = *v24++;
      v25 = vbslq_s8(vcgeq_f64(v26, v25), v26, v25);
      --v23;
    }

    while (v23);
  }
}

void sub_1E3FAF0B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  sub_1E4201044();
  sub_1E3960028();
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  OUTLINED_FUNCTION_39_0();
  sub_1E4206724();
  if (sub_1E4206714() != 3)
  {
    goto LABEL_11;
  }

  sub_1E4201054();
  sub_1E4201054();
  v20 = sub_1E4201054();
  sub_1E3FAF604(v20, v21, v22);
  v23 = sub_1E4205CB4();
  LOBYTE(v55) = 0;
  LOBYTE(v57) = 0;
  sub_1E4200EF4();
  sub_1E4203F64();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v23;
  OUTLINED_FUNCTION_3_234(v25, v26, v27, isUniquelyReferenced_nonNull_native);
  v28 = v55;
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  sub_1E4203F74();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v28;
  OUTLINED_FUNCTION_3_234(v30, v31, v32, v29);
  v33 = v55;
  sub_1E4203F84();
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v33;
  OUTLINED_FUNCTION_3_234(v35, v36, v37, v34);
  v38 = v55;
  v58.origin.x = a1;
  v58.origin.y = a2;
  v58.size.width = a3;
  v58.size.height = a4;
  CGRectGetMidX(v58);
  sub_1E4203F64();
  sub_1E3FAF658(v38, v39, v40);
  if (v41)
  {
    __break(1u);
    goto LABEL_8;
  }

  v59.origin.x = a1;
  v54 = a2;
  v59.origin.y = a2;
  v59.size.width = a3;
  v59.size.height = a4;
  CGRectGetMinY(v59);
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  sub_1E4203F74();
  sub_1E4203F64();
  sub_1E3FAF658(v38, v42, v43);
  if (v44)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_233();
  CGRectGetHeight(v60);
  OUTLINED_FUNCTION_1_270();
  sub_1E4200F04();
  OUTLINED_FUNCTION_2_233();
  CGRectGetMinX(v61);
  OUTLINED_FUNCTION_2_233();
  CGRectGetMinY(v62);
  OUTLINED_FUNCTION_0_307();
  sub_1E4200EF4();
  sub_1E4203F74();
  sub_1E4203F74();
  sub_1E3FAF658(v38, v45, v46);
  if ((v47 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_232();
    OUTLINED_FUNCTION_2_233();
    CGRectGetHeight(v63);
    OUTLINED_FUNCTION_1_270();
    sub_1E4200F04();
    OUTLINED_FUNCTION_2_233();
    CGRectGetMaxX(v64);
    OUTLINED_FUNCTION_2_233();
    CGRectGetMinY(v65);
    OUTLINED_FUNCTION_0_307();
    sub_1E4200EF4();
    sub_1E4203F84();
    sub_1E4203F84();
    sub_1E3FAF658(v38, v48, v49);
    if ((v50 & 1) == 0)
    {
      v66.origin.x = OUTLINED_FUNCTION_4_232();
      v66.origin.y = v54;
      v66.size.width = a3;
      v66.size.height = a4;
      CGRectGetHeight(v66);
      OUTLINED_FUNCTION_1_270();
      sub_1E4200F04();
      v51 = *(v10 + 8);
      v51(v13, v8);
      v51(v16, v8);
      v51(v19, v8);

      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD000000000000043, 0x80000001E428BCE0);
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  OUTLINED_FUNCTION_39_0();
  sub_1E4206724();
  v57 = sub_1E4206714();
  v52 = sub_1E4207944();
  MEMORY[0x1E69109E0](v52);

  MEMORY[0x1E69109E0](0xD000000000000027, 0x80000001E428BD30);
  sub_1E42076B4();
  __break(1u);
}

unint64_t sub_1E3FAF604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D528;
  if (!qword_1ECF3D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D528);
  }

  return result;
}

uint64_t sub_1E3FAF658(uint64_t a1, double a2, double a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_1E3FAF738(a2, a3);
  if (v5)
  {
    return *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void (*sub_1E3FAF6C4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

unint64_t sub_1E3FAF738(double a1, double a2)
{
  sub_1E4207B44();
  sub_1E4203F44();
  v4 = sub_1E4207BA4();

  return sub_1E3FAF7AC(v4, a1, a2);
}

unint64_t sub_1E3FAF7AC(uint64_t a1, double a2, double a3)
{
  v4 = ~(-1 << *(v3 + 32));
    ;
  }

  return i;
}

uint64_t sub_1E3FAF850(char a1, double a2, double a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E3FAF738(a3, a4);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D538, &qword_1E42E2298);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E3FAF738(a3, a4);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a2;
  }

  else
  {

    return sub_1E3FAF9E4(v12, v16, a3, a4, a2);
  }

  return result;
}

unint64_t sub_1E3FAF980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D530;
  if (!qword_1ECF3D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D530);
  }

  return result;
}

unint64_t sub_1E3FAF9E4(unint64_t result, void *a2, double a3, double a4, double a5)
{
  a2[(result >> 6) + 8] |= 1 << result;
  v5 = (a2[6] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  *(a2[7] + 8 * result) = a5;
  v6 = a2[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a2[2] = v8;
  }

  return result;
}

double sub_1E3FAFA64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1E3FAFB1C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_numberLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3FAFB64()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3FAFBE0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_titleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3FAFC28()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3FAFCA4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3FAFD24(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_subtitleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3FAFD6C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3FAFDE8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3FAFE24(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  v6 = [v1 vuiContentView];
  v7 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView;
  swift_beginAccess();
  [v6 vui:*&v1[v7] addSubview:v4 oldView:?];
}

uint64_t sub_1E3FAFEE0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E3FAFF5C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView];
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 vuiContentView];
    [v5 vui:v4 addSubview:0 oldView:?];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3FB000C()
{
  OUTLINED_FUNCTION_9_23();
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_numberLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView) = 0;
  v6 = type metadata accessor for OrdinalListCell();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  [v4 setAutoresizingMask_];
  return v4;
}

void sub_1E3FB010C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_numberLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell_cellImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView) = 0;
  OUTLINED_FUNCTION_6_102();
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3FB01C8(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))();
  if (v8)
  {
    v9 = v8;
    v10 = [v3 vuiTraitCollection];
    v11 = [v10 isAXEnabled];

    v12 = *(*v9 + 176);

    v12(v125, v13);
    v15 = *v125;
    v14 = *&v125[1];
    v16 = *&v125[2];

    v17 = MEMORY[0x1E69DDCE0];
    if (v126)
    {
      v15 = *MEMORY[0x1E69DDCE0];
      v14 = *(MEMORY[0x1E69DDCE0] + 8);
      v16 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    OUTLINED_FUNCTION_7_1();
    v124 = a2;
    if (v11)
    {
      v19 = (*(v18 + 152))();
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      if (v19)
      {
        v23 = v19;
        [v19 vui:a2 sizeThatFits:0.0];
        v21 = v24;
        v22 = v25;
      }

      v131.origin.x = 0.0;
      v131.origin.y = v15;
      v131.size.width = v21;
      v131.size.height = v22;
      v26 = v15 + CGRectGetMaxY(v131);
      OUTLINED_FUNCTION_7_1();
      v28 = (*(v27 + 224))();
      v29 = 0.0;
      if (v28)
      {
        v30 = v28;
        [v28 vui:a2 sizeThatFits:0.0];
        v20 = v31;
        v29 = v32;
      }

      v132.origin.x = 0.0;
      v132.origin.y = v26;
      v132.size.width = v20;
      v132.size.height = v29;
      MaxY = v15 + CGRectGetMaxY(v132);
      OUTLINED_FUNCTION_7_1();
      v35 = *(v34 + 176);
      v36 = (v34 + 176);
      v37 = v35();
      if (v37)
      {

        if (v35())
        {
          OUTLINED_FUNCTION_7_210();
          v39 = (*(v38 + 1752))();
          OUTLINED_FUNCTION_12_155(v40, v41, v39);
          v43 = v42;
          v45 = v44;
        }

        else
        {
          v43 = 0.0;
          v45 = 0.0;
        }

        v134.origin.x = 0.0;
        v134.origin.y = MaxY;
        v134.size.width = v43;
        v134.size.height = v45;
        MaxY = CGRectGetMaxY(v134);
      }

      OUTLINED_FUNCTION_7_1();
      v101 = *(v100 + 200);
      v102 = (v100 + 200);
      v103 = v101();
      if (v103)
      {

        if (v101())
        {
          OUTLINED_FUNCTION_7_210();
          v105 = (*(v104 + 1776))();
          OUTLINED_FUNCTION_12_155(v106, v107, v105);
          v109 = v108;
          v111 = v110;
        }

        else
        {
          v109 = 0.0;
          v111 = 0.0;
        }

        v135.origin.x = 0.0;
        v135.origin.y = MaxY;
        v135.size.width = v109;
        v135.size.height = v111;
        CGRectGetMaxY(v135);
      }
    }

    else
    {
      v46 = (*(v18 + 224))();
      if (v46)
      {
        v47 = v46;
        [v46 vui:a2 sizeThatFits:0.0];
        v49 = v48;
        v51 = v50;
      }

      else
      {
        v49 = 0.0;
        v51 = 0.0;
      }

      v120 = a1;
      v52 = sub_1E3952BD8(v15, v14, v16);
      v133.origin.x = 0.0;
      v133.origin.y = v15;
      v133.size.width = v49;
      v123 = v51;
      v133.size.height = v51;
      MaxX = CGRectGetMaxX(v133);
      v53 = *(*v9 + 1728);
      v53();
      OUTLINED_FUNCTION_30();
      (*(v54 + 152))(v127);
      v56 = *v127;
      v55 = *&v127[1];
      v58 = *&v127[2];
      v57 = *&v127[3];

      if (v128)
      {
        v56 = *v17;
        v55 = v17[1];
        v58 = v17[2];
        v57 = v17[3];
      }

      (v53)(v59);
      OUTLINED_FUNCTION_30();
      (*(v60 + 200))();

      OUTLINED_FUNCTION_7_1();
      v62 = (*(v61 + 152))();
      v63 = 0.0;
      if (v62)
      {
        v11 = v62;
        v64 = (v53)();
        OUTLINED_FUNCTION_12_155(v65, v66, v64);
        v63 = v67;
      }

      v68 = v123 + v52;
      sub_1E3952BE0(v56, v55, v58, v57);
      OUTLINED_FUNCTION_7_1();
      v70 = *(v69 + 176);
      v71 = 0.0;
      v72 = 0.0;
      if (v70())
      {
        OUTLINED_FUNCTION_7_210();
        v74 = (*(v73 + 1752))();
        OUTLINED_FUNCTION_25_97(v75, v76, v74);
        v71 = v77;
        v72 = v78;
      }

      v122 = MaxX + v55;
      v79 = v57 + v63;
      OUTLINED_FUNCTION_7_1();
      v81 = *(v80 + 200);
      v82 = v81();
      v83 = 0.0;
      if (v82)
      {
        OUTLINED_FUNCTION_7_210();
        v85 = (*(v84 + 1776))();
        OUTLINED_FUNCTION_25_97(v86, v87, v85);
        v83 = v88;
      }

      v89 = v122 + v79;
      v90 = (v70)(v82);
      if (v90 && (v90, (v91 = v81()) != 0))
      {

        v92 = v81();
        if (v92)
        {
          v93 = v92;
          v94 = v70();
          (*(*v9 + 1776))();
          OUTLINED_FUNCTION_30();
          (*(v95 + 152))(v129);

          v96 = v129[0];
          if (v130)
          {
            v96 = 0.0;
          }

          [v93 topMarginToLabel:v94 withBaselineMargin:v96];
          v98 = v97;
        }

        else
        {
          v98 = 0.0;
        }

        a1 = v120;
        v136.size.height = v72;
        v136.origin.y = (v68 - (v72 + v83 + v98)) * 0.5;
        v136.origin.x = v89;
        v136.size.width = v71;
        CGRectGetMaxY(v136);
      }

      else
      {
        v99 = v70();
        if (v99)
        {

          OUTLINED_FUNCTION_15_153();
          a1 = v120;
        }

        else
        {
          v112 = v81();
          a1 = v120;
          if (v112)
          {
          }

          else
          {
            OUTLINED_FUNCTION_15_153();
          }
        }
      }
    }

    v113 = sub_1E3FAFF5C();
    (*((*v7 & *v113) + 0x70))();

    if ((a1 & 1) == 0)
    {
      [v4 vuiIsRTL];
      OUTLINED_FUNCTION_7_1();
      if ((*(v114 + 152))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      OUTLINED_FUNCTION_7_1();
      if ((*(v115 + 176))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      OUTLINED_FUNCTION_7_1();
      if ((*(v116 + 200))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      OUTLINED_FUNCTION_7_1();
      if ((*(v117 + 224))())
      {
        OUTLINED_FUNCTION_11_173();
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        OUTLINED_FUNCTION_30_2();
      }

      v118 = *&v4[OBJC_IVAR____TtC8VideosUI15OrdinalListCell____lazy_storage___bottomSeparatorView];
      OUTLINED_FUNCTION_11_173();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_30_2();
    }

    return v124;
  }

  return a2;
}

void *sub_1E3FB0CFC(__int16 *a1, void *a2, unsigned __int8 *a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = *(*a1 + 392);
    v11 = a2;
    if (v10())
    {
      type metadata accessor for OrdinalCellLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = (*(*a1 + 488))();
        if (v14)
        {
          v15 = v14;
          if (*(v14 + 16))
          {
            v74 = a3;
            sub_1E3FB146C();
            OUTLINED_FUNCTION_12_5();
            v17 = *(v16 + 136);

            v17(v13);
            type metadata accessor for UIFactory();
            v19 = sub_1E373E010(17, v15, v18);
            OUTLINED_FUNCTION_12_5();
            v21 = (*(v20 + 152))();
            v22 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
            OUTLINED_FUNCTION_19_140();
            sub_1E393D92C(v19, v21, v23, 0, v22);

            sub_1E373C624(v75);
            v24 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_12_5();
            v25 = OUTLINED_FUNCTION_21_63();
            v26(v25);
            sub_1E373E010(23, v15, v27);
            OUTLINED_FUNCTION_12_5();
            v29 = (*(v28 + 176))();
            OUTLINED_FUNCTION_10_157(v29);

            sub_1E373C624(v75);
            v30 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_12_5();
            v31 = OUTLINED_FUNCTION_21_63();
            v32(v31);
            sub_1E373E010(15, v15, v33);
            OUTLINED_FUNCTION_12_5();
            v35 = (*(v34 + 200))();
            OUTLINED_FUNCTION_10_157(v35);

            sub_1E373C624(v75);
            OUTLINED_FUNCTION_12_5();
            v36 = OUTLINED_FUNCTION_21_63();
            v37(v36);
            v39 = sub_1E373E010(39, v15, v38);

            OUTLINED_FUNCTION_12_5();
            v41 = *(v40 + 224);
            v42 = v41();
            sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
            OUTLINED_FUNCTION_19_140();
            sub_1E393D92C(v39, v42, v43, 0, v44);

            sub_1E373C624(v75);
            OUTLINED_FUNCTION_12_5();
            v45 = OUTLINED_FUNCTION_21_63();
            v47 = v46(v45);
            v48 = (v41)(v47);
            if (v48)
            {
              v49 = v48;
              [v48 setVuiUserInteractionEnabled_];
            }

            (*(*v13 + 1800))();
            OUTLINED_FUNCTION_30();
            (*(v50 + 552))(v75);
            v51 = *v75;
            v52 = *&v75[1];
            v53 = *&v75[2];
            v54 = *&v75[3];

            v56 = 0.0;
            v57 = v74;
            if ((v76 & 1) == 0)
            {
              v56 = sub_1E3952BE8(v51, v52, v53, v54);
            }

            v58 = (v41)(v55);
            v59 = [v58 vuiLayer];

            [v59 setCornerRadius_];
            LODWORD(v59) = *v57 != 2;
            v60 = v57[41];
            v61 = sub_1E3FAFF5C();
            [v61 setHidden_];

            return a2;
          }
        }

        v62 = v11;
        return a2;
      }
    }

    OUTLINED_FUNCTION_6_102();
  }

  else
  {
    v64 = sub_1E324FBDC();
    (*(v7 + 16))(v9, v64, v6);

    v65 = v9;
    v66 = sub_1E41FFC94();
    v67 = sub_1E4206814();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75[0] = v69;
      *v68 = 136315138;
      sub_1E384EE08(a1[49]);
      v72 = sub_1E3270FC8(v70, v71, v75);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_1E323F000, v66, v67, "OrdinalListCell: Failed to get correct cell for [%s]", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x1E69143B0](v69, -1, -1);
      MEMORY[0x1E69143B0](v68, -1, -1);
    }

    (*(v7 + 8))(v65, v6);
    OUTLINED_FUNCTION_6_102();
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3FB146C()
{
  v2 = v0;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  if (v3 && (v4 = sub_1E3FB1A00(v3), v5))
  {
    v6 = v4;
    v1 = v5;
    v7 = sub_1E3740F88(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = OUTLINED_FUNCTION_8_183(v8);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = v1;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_12_5();
  v12 = (*(v11 + 176))();
  if (v12)
  {
    sub_1E3FB1A00(v12);
    if (v13)
    {
      OUTLINED_FUNCTION_94_2();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_17_137();
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = OUTLINED_FUNCTION_8_183(v14);
      }

      *(v7 + 2) = v15 + 1;
      v16 = &v7[16 * v15];
      *(v16 + 4) = v2;
      *(v16 + 5) = v1;
    }
  }

  OUTLINED_FUNCTION_12_5();
  v18 = (*(v17 + 200))();
  if (v18)
  {
    sub_1E3FB1A00(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_94_2();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_17_137();
      }

      v21 = *(v7 + 2);
      v20 = *(v7 + 3);
      if (v21 >= v20 >> 1)
      {
        v7 = OUTLINED_FUNCTION_8_183(v20);
      }

      *(v7 + 2) = v21 + 1;
      v22 = &v7[16 * v21];
      *(v22 + 4) = v2;
      *(v22 + 5) = v1;
    }
  }

  if (*(v7 + 2))
  {
    v24 = v7;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    sub_1E3924274();
    sub_1E4205DF4();
    OUTLINED_FUNCTION_94_2();

    [v2 vui:1 isAccessibilityElement:?];
    sub_1E3DEEDB8(&v24, v23, v2);
    [v2 setAccessibilityTraits_];
    sub_1E399AA9C(MEMORY[0x1E69E7CC0], v2);
  }

  else
  {
  }
}