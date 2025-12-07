uint64_t sub_237E55964()
{
  if (*(v0 + 40))
  {
    return *(v0 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_237E55974()
{
  v1 = *(v0 + 32);
  if (v1 == 2)
  {
    if (*(v0 + 8) == 0.0)
    {
      *(v0 + 8) = 1056964608;
    }
  }

  else if (v1 >= 3)
  {
    v2 = *v0;
    v3 = *(*v0 + 16);
    v4 = v3 + 1;
    v5 = 40;
    while (--v4)
    {
      v6 = *(v2 + v5);
      v5 += 16;
      if (v6)
      {
        return;
      }
    }

    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E642F0(v2, v7, v8, v9);
        v2 = v16;
      }

      if (v3 > *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v10 = 0;
        v11 = vdupq_n_s64(v3 - 1);
        v12 = xmmword_237F07A60;
        v13 = (v2 + 56);
        v14 = vdupq_n_s64(2uLL);
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v11, v12));
          if (v15.i8[0])
          {
            *(v13 - 2) = v10 % v1;
          }

          if (v15.i8[4])
          {
            *v13 = (v10 + 1) % v1;
          }

          v10 += 2;
          v12 = vaddq_s64(v12, v14);
          v13 += 4;
        }

        while (((v3 + 1) & 0x7FFFFFFFFFFFFFFELL) != v10);
        *v0 = v2;
      }
    }
  }
}

uint64_t TreeClassifierModel.featureColumnNames.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);
      sub_237EF8260();
      if (v7 >= v8 >> 1)
      {
        sub_237C62D90((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t TreeClassifierModel.predictionColumnName.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t TreeClassifierModel.predictionColumnName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 88) = a3;
  *(v6 + 96) = a4;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  *(v6 + 16) = *v5;
  *(v6 + 32) = *(v5 + 16);
  *(v6 + 120) = *(v5 + 24);
  *(v6 + 136) = *(v5 + 40);
  *(v6 + 40) = *(v5 + 56);
  return MEMORY[0x2822009F8](sub_237E55C44, 0, 0);
}

uint64_t sub_237E55C44()
{
  v44 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    __src = *v3;
    v40 = *(v3 + 2);
    v41 = v4;
    *&v42 = v1;
    *(&v42 + 1) = v2;
    v43 = *(v3 + 56);

    sub_237E55FA8(&v36);
    v5 = *(v0 + 144);
    v6 = v37;
    v7 = v38;
    v8 = v36;
    v36 = *(v0 + 120);
    v37 = v1;
    v38 = v5;
    __src = v8;
    LOBYTE(v40) = v6;
    *&v41 = v7;
    v14 = BaseTreeClassifierModel.applied(features:eventHandler:)(&__src);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v33 = *(v0 + 136);
    v35 = *(v0 + 120);

    *(v0 + 56) = v14;
    __src = *v15;
    v40 = *(v15 + 2);
    v42 = v33;
    v41 = v35;
    v43 = *(v15 + 56);
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = sub_237E56180(&__src, v17, v18);
    v21 = v20;
    v22 = swift_task_alloc();
    v22[2] = v17;
    v22[3] = v18;
    v22[4] = v19;
    v22[5] = v21;
    *&v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4EE8, &unk_237F1A310);
    v24 = type metadata accessor for ClassificationDistribution(0, v17, v18, v23);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    v26 = sub_237E57EBC(&unk_27DEB4EF0);
    sub_237C9339C(sub_237E57E64, v22, v33, v24, v25, v26);
    v28 = v27;
    v29 = *(v0 + 104);
    v30 = *(v0 + 72);
    v32 = *(v0 + 136);
    v34 = *(v0 + 120);

    __src = *(v0 + 16);
    v40 = *(v0 + 32);
    v42 = v32;
    v41 = v34;
    v43 = *(v0 + 40);
    TreeClassifierModel.buildDataFrame(_:)(v28, v29, v30);
  }

  else
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_12_49(v9, v10);
    *(v11 + 16) = v12;
    *(v11 + 24) = 0x8000000237F00860;
    *(v11 + 32) = 5;
    swift_willThrow();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_237E55FA8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[4];
  v5 = v1[5];
  result = sub_237DDE9AC(v1[2], 0xD000000000000013, 0x8000000237F1A2D0, &v15);
  if (!v2)
  {
    v7 = v15;
    v8 = v17;
    if (!v5)
    {
      v4 = 0;
    }

    if (*(&v15 + 1) == v4)
    {
      v9 = v16;
      *a1 = v15;
      *(a1 + 8) = *(&v7 + 1);
      *(a1 + 16) = v9;
      *(a1 + 24) = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_237F04760;
      *(v10 + 32) = v7;

      *&v15 = 0;
      *(&v15 + 1) = 0xE000000000000000;
      sub_237EF9330();

      *&v15 = 0x6465746365707845;
      *(&v15 + 1) = 0xE900000000000020;
      v18 = v4;
      v11 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v11);

      MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
      v18 = *(&v7 + 1);
      v12 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v12);

      v13 = v15;
      sub_237C84150();
      OUTLINED_FUNCTION_3_23();
      swift_allocError();
      *v14 = v10;
      *(v14 + 8) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t (*sub_237E56180(void *__src, uint64_t a2, uint64_t a3))@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, __src, 0x48uLL);
  v8 = type metadata accessor for TreeClassifierModel(0, a2, a3, v7);
  (*(*(v8 - 8) + 16))(&v10, __dst, v8);
  return sub_237E58264;
}

uint64_t sub_237E56250@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  v8 = *a1;
  v6 = type metadata accessor for TreeClassifierModel(0, a3, a4, a4);
  return sub_237E562AC(&v8, v6, x8_0);
}

uint64_t sub_237E562AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  memcpy(__dst, v3, sizeof(__dst));
  v11[6] = v6;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = __dst;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD428, &qword_237F03140);
  return ClassificationDistribution.map<A>(_:)(sub_237E58284, v11, v9, v8, v7, a3);
}

uint64_t TreeClassifierModel.buildDataFrame(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v6 = *(a2 + 16);
  v32 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v34 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v30 = &v28 - v9;
  v10 = *(a2 + 24);
  type metadata accessor for ClassificationDistribution(255, v6, v10, v11);
  v31 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v33 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = v3[1];
  v29 = *v3;
  v38 = v29;
  v39 = v16;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x6C696261626F7250, 0xEB00000000797469);
  v38 = a1;
  v17 = sub_237EF8A60();
  sub_237EF8260();
  swift_getWitnessTable();
  sub_237EF6220();
  v38 = a1;
  v36 = v6;
  v37 = v10;
  KeyPath = swift_getKeyPath();
  v19 = sub_237EF90F0();
  sub_237EF8260();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E57E9C, KeyPath, v17, v19, MEMORY[0x277D84A98], WitnessTable);
  v22 = v21;

  v38 = v22;
  sub_237EF8A60();
  swift_getWitnessTable();
  v23 = v30;
  sub_237EF6230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4EF8, &qword_237F1A350);
  sub_237EF6310();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_237F04760;
  v25 = v32;
  sub_237EF6200();
  v26 = v31;
  sub_237EF6200();
  v38 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4F00, &qword_237F1A358);
  sub_237E57EBC(&unk_27DEB4F08);
  sub_237EF6160();
  (*(v34 + 8))(v23, v25);
  return (*(v33 + 8))(v15, v26);
}

uint64_t sub_237E56750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  v13 = *(v12 + 56);
  if (*v8 >= *(v13 + 16))
  {
    v50 = *v8;
    v26 = sub_237EF9AB0();
    v28 = v27;
    sub_237C84150();
    swift_allocError();
    *v29 = 0xD00000000000001BLL;
    *(v29 + 8) = 0x8000000237F00A00;
    *(v29 + 16) = v26;
    *(v29 + 24) = v28;
    *(v29 + 32) = 3;
    return swift_willThrow();
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_82;
  }

  v4 = *(v8 + 8);
  v14 = v13 + 16 * v11;
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  if (swift_dynamicCastMetatype())
  {
    if (!v15)
    {
      v33 = 0;
      v34 = 0;
LABEL_79:
      v50 = v33;
      LOBYTE(v51) = v34 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0, &unk_237F1A490);
LABEL_80:
      swift_dynamicCast();
      return Classification.init(label:probability:)(v10, a2, a3, a4, v4);
    }

    v17 = HIBYTE(v15) & 0xF;
    v18 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        sub_237EF8260();
        v22 = sub_237D7503C(v16, v15, 10);
        v34 = v49;

LABEL_76:
        if (v34)
        {
          v33 = 0;
        }

        else
        {
          v33 = v22;
        }

        goto LABEL_79;
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        v50 = v16;
        v51 = v15 & 0xFFFFFFFFFFFFFFLL;
        if (v16 == 43)
        {
          if (v17)
          {
            if (--v17)
            {
              v22 = 0;
              v41 = &v50 + 1;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  break;
                }

                v43 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  break;
                }

                v22 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  break;
                }

                ++v41;
                if (!--v17)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_88;
        }

        if (v16 != 45)
        {
          if (v17)
          {
            v22 = 0;
            v46 = &v50;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                break;
              }

              v22 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                break;
              }

              v46 = (v46 + 1);
              if (!--v17)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

        if (v17)
        {
          if (--v17)
          {
            v22 = 0;
            v35 = &v50 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                break;
              }

              v22 = v37 - v36;
              if (__OFSUB__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v17)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }
      }

      else
      {
        if ((v16 & 0x1000000000000000) != 0)
        {
          v20 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v20 = sub_237EF9420();
        }

        v21 = *v20;
        if (v21 == 43)
        {
          if (v18 >= 1)
          {
            v17 = v18 - 1;
            if (v18 != 1)
            {
              v22 = 0;
              if (v20)
              {
                v38 = v20 + 1;
                while (1)
                {
                  v39 = *v38 - 48;
                  if (v39 > 9)
                  {
                    goto LABEL_74;
                  }

                  v40 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    goto LABEL_74;
                  }

                  v22 = v40 + v39;
                  if (__OFADD__(v40, v39))
                  {
                    goto LABEL_74;
                  }

                  ++v38;
                  if (!--v17)
                  {
                    goto LABEL_75;
                  }
                }
              }

              goto LABEL_66;
            }

            goto LABEL_74;
          }

          goto LABEL_87;
        }

        if (v21 != 45)
        {
          if (v18)
          {
            v22 = 0;
            if (v20)
            {
              while (1)
              {
                v44 = *v20 - 48;
                if (v44 > 9)
                {
                  goto LABEL_74;
                }

                v45 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  goto LABEL_74;
                }

                v22 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_74;
                }

                ++v20;
                if (!--v18)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_66;
          }

LABEL_74:
          v22 = 0;
          LOBYTE(v17) = 1;
          goto LABEL_75;
        }

        if (v18 >= 1)
        {
          v17 = v18 - 1;
          if (v18 != 1)
          {
            v22 = 0;
            if (v20)
            {
              v23 = v20 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_74;
                }

                v25 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  goto LABEL_74;
                }

                v22 = v25 - v24;
                if (__OFSUB__(v25, v24))
                {
                  goto LABEL_74;
                }

                ++v23;
                if (!--v17)
                {
                  goto LABEL_75;
                }
              }
            }

LABEL_66:
            LOBYTE(v17) = 0;
LABEL_75:
            v52 = v17;
            v34 = v17;
            goto LABEL_76;
          }

          goto LABEL_74;
        }

        __break(1u);
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_82:
    v33 = 0;
    v34 = 1;
    goto LABEL_79;
  }

  if (swift_dynamicCastMetatype())
  {
    if (v15)
    {
      v31 = v16;
    }

    else
    {
      v31 = 0;
    }

    v32 = 0xE000000000000000;
    if (v15)
    {
      v32 = v15;
    }

    v50 = v31;
    v51 = v32;
    sub_237EF8260();
    goto LABEL_80;
  }

LABEL_89:
  result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000029, 0x8000000237F00A50, "CreateMLComponents/TreeClassifierModel.swift", 44, 2, 102);
  __break(1u);
  return result;
}

uint64_t sub_237E56CA8(uint64_t *a1, uint64_t a2)
{
  sub_237EF8260();
  swift_getAtKeyPath();
}

void *sub_237E56D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v11 = *(a7 + 16);
  *&v16[7] = *a7;
  *&v16[23] = v11;
  *&v16[39] = *(a7 + 32);
  *&v16[55] = *(a7 + 48);
  *(&__src[4] + 1) = *v16;
  *(&__src[5] + 1) = *&v16[16];
  *(&__src[6] + 1) = *&v16[32];
  __src[7] = *&v16[47];
  *&v23[15] = *&v16[47];
  *v23 = *&v16[32];
  v22 = *&v16[16];
  v17 = 0;
  __src[0] = 0uLL;
  *&__src[1] = a1;
  *(&__src[1] + 1) = a2;
  *&__src[2] = a3;
  *(&__src[2] + 1) = a4;
  *&__src[3] = a5;
  *(&__src[3] + 1) = a6;
  LOBYTE(__src[4]) = 0;
  v19[0] = 0;
  v19[1] = 0;
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  v20 = 0;
  v21 = *v16;
  v12 = type metadata accessor for TreeClassifierModel.Storage(0, a8, a10, a4);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v15, __src, v12);
  (*(v13 + 8))(v19, v12);
  return memcpy(a9, __src, 0x80uLL);
}

uint64_t sub_237E56E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return TreeClassifierModel.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237E56F30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TreeClassifierModel.Storage.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  OUTLINED_FUNCTION_3_86();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v7;
  sub_237EFA1B0();
  LOBYTE(v32) = 0;
  v14 = v30;
  sub_237EF99D0();
  if (!v14)
  {
    *&v32 = *(v5 + 16);
    v15 = v32;
    v31[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58, &qword_237F19E10);
    sub_237E58084(&qword_27DEB4D80);
    OUTLINED_FUNCTION_2_92();
    v16 = *(v15 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v27 = v5;
      v28 = 0;
      v29 = v7;
      v30 = v9;
      *&v32 = MEMORY[0x277D84F90];
      sub_237C62D90(0, v16, 0);
      v17 = v32;
      v18 = (v15 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        *&v32 = v17;
        v21 = *(v17 + 16);
        v14 = *(v17 + 24);
        sub_237EF8260();
        if (v21 >= v14 >> 1)
        {
          sub_237C62D90((v14 > 1), v21 + 1, 1);
          v17 = v32;
        }

        *(v17 + 16) = v21 + 1;
        v22 = v17 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v20;
        v18 += 4;
        --v16;
      }

      while (v16);
      v9 = v30;
      v13 = v29;
      v5 = v27;
    }

    *&v32 = v17;
    v31[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
    sub_237E580F8(&qword_27DEAEBD8);
    OUTLINED_FUNCTION_2_92();
    if (!v14)
    {

      OUTLINED_FUNCTION_10_59(2);
      sub_237EF9A10();
      v32 = *(v5 + 40);
      v31[0] = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4F90, &unk_237F1A480);
      sub_237E58150();
      OUTLINED_FUNCTION_2_92();
      OUTLINED_FUNCTION_10_59(5);
      sub_237EF99F0();
      v24 = *(v5 + 88);
      v36[0] = *(v5 + 72);
      v36[1] = v24;
      v36[2] = *(v5 + 104);
      v37 = *(v5 + 120);
      v25 = *(v5 + 88);
      v32 = *(v5 + 72);
      v33 = v25;
      v34 = *(v5 + 104);
      v35 = *(v5 + 120);
      v38 = 6;
      sub_237D74FBC(v36, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
      sub_237E581F8(&qword_27DEB4D90);
      sub_237EF9A70();
    }
  }

  return (*(v9 + 8))(v12, v13);
}

void *sub_237E57350@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v56 = a4;
  v57 = a3;
  type metadata accessor for TreeClassifierModel.Storage.CodingKeys(255, a2, a3, a5);
  OUTLINED_FUNCTION_3_86();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v58 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = v59;
  sub_237EFA190();
  if (v12)
  {
    goto LABEL_3;
  }

  v55 = a2;
  LOBYTE(v62) = 0;
  OUTLINED_FUNCTION_7_65();
  v13 = sub_237EF98D0();
  v16 = v15;
  v54 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58, &qword_237F19E10);
  LOBYTE(v61[0]) = 3;
  sub_237E58084(&qword_27DEB4D60);
  OUTLINED_FUNCTION_1_100();
  sub_237EF9900();
  if (v62)
  {
    v59 = v62;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
    LOBYTE(v61[0]) = 1;
    sub_237E580F8(&qword_27DEAEC28);
    OUTLINED_FUNCTION_1_100();
    sub_237EF9970();
    v22 = v62;
    v23 = *(v62 + 16);
    if (v23)
    {
      v52 = v16;
      v53 = v10;
      v51 = 0;
      v62 = MEMORY[0x277D84F90];
      sub_237C6304C(0, v23, 0);
      v24 = v62;
      v50 = v22;
      v25 = (v22 + 40);
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v62 = v24;
        v28 = *(v24 + 16);
        v12 = *(v24 + 24);
        v59 = v28 + 1;
        sub_237EF8260();
        if (v28 >= v12 >> 1)
        {
          sub_237C6304C((v12 > 1), v59, 1);
          v24 = v62;
        }

        *(v24 + 16) = v59;
        v29 = v24 + 32 * v28;
        *(v29 + 32) = v26;
        *(v29 + 40) = v27;
        *(v29 + 48) = 3;
        *(v29 + 56) = 4;
        v25 += 2;
        --v23;
      }

      while (v23);
      v59 = v24;

      v16 = v52;
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }
  }

  LOBYTE(v62) = 2;
  OUTLINED_FUNCTION_7_65();
  v17 = sub_237EF9910();
  v19 = v57;
  if (v12)
  {
    v20 = OUTLINED_FUNCTION_6_68();
    v21(v20);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v30 = v17;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4F90, &unk_237F1A480);
  LOBYTE(v61[0]) = 4;
  sub_237E57F6C();
  OUTLINED_FUNCTION_1_100();
  sub_237EF9970();
  v50 = v30;
  v32 = v63;
  v53 = v62;
  LOBYTE(v62) = 5;
  OUTLINED_FUNCTION_7_65();
  v49 = sub_237EF98F0();
  v88 = v33 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
  v79 = 6;
  sub_237E581F8(&qword_27DEB4D70);
  OUTLINED_FUNCTION_7_65();
  sub_237EF9970();
  v34 = OUTLINED_FUNCTION_5_80();
  v35(v34);
  v58 = v80;
  v36 = v81;
  v51 = 0;
  v52 = v16;
  v47 = v83;
  v48 = v82;
  v45 = v85;
  v46 = v84;
  v44 = v86;
  v38 = v53;
  v37 = v54;
  v61[0] = v54;
  v61[1] = v16;
  v39 = v59;
  v40 = v50;
  v61[2] = v59;
  v61[3] = v50;
  v61[4] = v31;
  v61[5] = v53;
  v61[6] = v32;
  v61[7] = v49;
  LOBYTE(v61[8]) = v88;
  HIDWORD(v61[8]) = *&v87[3];
  *(&v61[8] + 1) = *v87;
  v61[9] = v80;
  LODWORD(v61[10]) = v81;
  v61[11] = v82;
  v61[12] = v83;
  v61[13] = v84;
  v61[14] = v85;
  v61[15] = v86;
  v42 = type metadata accessor for TreeClassifierModel.Storage(0, v55, v19, v41);
  v43 = *(v42 - 8);
  (*(v43 + 16))(&v62, v61, v42);
  __swift_destroy_boxed_opaque_existential_1(v60);
  v62 = v37;
  v63 = v52;
  v64 = v39;
  v65 = v40;
  v66 = v31;
  v67 = v38;
  v68 = v32;
  v69 = v49;
  v70 = v88;
  *v71 = *v87;
  *&v71[3] = *&v87[3];
  v72 = v58;
  v73 = v36;
  v74 = v48;
  v75 = v47;
  v76 = v46;
  v77 = v45;
  v78 = v44;
  (*(v43 + 8))(&v62, v42);
  return memcpy(v56, v61, 0x80uLL);
}

unint64_t sub_237E579C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_237E57A18(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x636E456C6562616CLL;
      break;
    case 5:
      result = 0x6F69746172657469;
      break;
    case 6:
      result = 0x65646F4D65657274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E57B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E57B78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237E57BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E57C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_237E57CC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E579C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_237E57CF4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237E57A18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E57D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E57A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E57D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E57DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void *sub_237E57DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_237E57350(a1, *(a2 + 16), *(a2 + 24), v7, a4);
  if (!v4)
  {
    return memcpy(a3, v7, 0x80uLL);
  }

  return result;
}

uint64_t sub_237E57E64(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_237E57EBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237E57F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_237E57F6C()
{
  result = qword_27DEB4F98;
  if (!qword_27DEB4F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4F90, &unk_237F1A480);
    sub_237E58014(&unk_27DEB4FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4F98);
  }

  return result;
}

unint64_t sub_237E58014(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD490, &qword_237F07150);
    result = OUTLINED_FUNCTION_14_55();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237E58084(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4D58, &qword_237F19E10);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237E580F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0, qword_237F0EC30);
    result = OUTLINED_FUNCTION_14_55();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237E58150()
{
  result = qword_27DEB4FA8;
  if (!qword_27DEB4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4F90, &unk_237F1A480);
    sub_237E58014(&unk_27DEB4FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4FA8);
  }

  return result;
}

unint64_t sub_237E581F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2210, &unk_237F10700);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237E582A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4DA8, &unk_237F19E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_237E5830C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237E583D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E5841C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_237E5845C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_92()
{

  return sub_237EF9A70();
}

void *OUTLINED_FUNCTION_8_75()
{

  return memcpy((v0 + 88), (v0 + 216), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_14_55()
{

  return swift_getWitnessTable();
}

int *LinearTimeSeriesForecaster.makeTransformer()(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = OUTLINED_FUNCTION_7_66();
  v8 = type metadata accessor for MultivariateLinearRegressor.Model(v5, v6, v7, v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  v14 = *(v1 + 112);
  v15 = *(v1 + 120);
  v25 = *(v1 + 72);
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v16 = OUTLINED_FUNCTION_7_66();
  v19 = type metadata accessor for MultivariateLinearRegressor(v16, v17, v18, v4);
  MultivariateLinearRegressor.makeTransformer()(v19, v10);
  OUTLINED_FUNCTION_23();
  return sub_237DBAF34(v20, v21, v22, 1, v2, v3, v4, v23);
}

uint64_t LinearTimeSeriesForecaster.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 536) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 504) = a3;
  *(v8 + 512) = a4;
  *(v8 + 488) = a1;
  *(v8 + 496) = a2;
  *(v8 + 544) = *(a5 + 16);
  *(v8 + 552) = *(a5 + 24);
  v10 = OUTLINED_FUNCTION_18_0();
  v14 = type metadata accessor for TimeSeriesForecasterAnnotatedWindows(v10, v11, v12, v13);
  *(v8 + 560) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v8 + 568) = v15;
  *(v8 + 576) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_0();
  sub_237EF7EE0();
  *(v8 + 584) = OUTLINED_FUNCTION_27_0();
  v16 = sub_237EF7E90();
  *(v8 + 592) = v16;
  v18 = type metadata accessor for AnnotatedFeature(255, v16, v16, v17);
  *(v8 + 600) = v18;
  *(v8 + 608) = swift_getTupleTypeMetadata2();
  sub_237EF90F0();
  *(v8 + 616) = OUTLINED_FUNCTION_27_0();
  *(v8 + 624) = *(v16 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v19 = sub_237EF90F0();
  *(v8 + 664) = v19;
  OUTLINED_FUNCTION_6_1(v19);
  *(v8 + 672) = v20;
  *(v8 + 680) = OUTLINED_FUNCTION_27_0();
  *(v8 + 688) = *(v18 - 8);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = *(a6 - 8);
  *(v8 + 720) = OUTLINED_FUNCTION_27_0();
  *(v8 + 728) = *v7;
  memcpy((v8 + 144), v7 + 1, 0x69uLL);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237E589FC()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 600);
  (*(*(v0 + 712) + 16))(*(v0 + 720), *(v0 + 496), *(v0 + 528));
  OUTLINED_FUNCTION_47_1();
  v3 = sub_237EF8A90();
  *(v0 + 464) = v3;
  v4 = sub_237EF8A60();
  swift_getWitnessTable();
  v59 = v4;
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));

    v5 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v5);
    OUTLINED_FUNCTION_22_10();
    *v6 = v7;
    *(v6 + 8) = 0x8000000237F00AA0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 2;
    swift_willThrow();
LABEL_13:
    OUTLINED_FUNCTION_30_10();

    OUTLINED_FUNCTION_3_0();

    return v47();
  }

  v58 = *(*(v0 + 688) + 32);
  v58(*(v0 + 704), *(v0 + 680), *(v0 + 600));
  v8 = *(sub_237EF7E20() + 16);

  v9 = *(v0 + 704);
  if (v8 != 1)
  {
    v26 = *(v0 + 688);
    v27 = *(v0 + 600);

    sub_237EF7E20();
    v28 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v28);
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_13_47(v30, v29 + 6);
    (*(v26 + 8))(v9, v27);
    goto LABEL_13;
  }

  v10 = *(sub_237EF7E20() + 16);

  if (v10 != 1)
  {

    sub_237EF7E20();
    v31 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v31);
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_13_47(v33, v32 + 9);
    v34 = OUTLINED_FUNCTION_42_2();
    v35(v34);
    goto LABEL_13;
  }

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v63 = *(result + 32);

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v61 = *(v0 + 688);
  v56 = *(v0 + 608);
  v12 = *(result + 32);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v14 = OUTLINED_FUNCTION_36_1(v13);
  *(v14 + 16) = xmmword_237F04760;
  v15 = sub_237EF8A00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v63;
  sub_237D14E78(v14);
  v16 = OUTLINED_FUNCTION_36_1(v13);
  *(v16 + 16) = xmmword_237F04760;
  *(v16 + 32) = v15;
  *(v16 + 40) = v12;
  sub_237D14E78(v16);
  *(v0 + 472) = 0;
  *(v0 + 480) = v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8, &qword_237F09CD0);
  v18 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();

  v20 = *(v0 + 440);
  *(v0 + 448) = *(v0 + 432);
  *(v0 + 456) = v20;
  v64 = v17;
  *(v0 + 336) = v17;
  *(v0 + 344) = v59;
  v57 = v18;
  *(v0 + 352) = v18;
  *(v0 + 360) = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  while (1)
  {
    v21 = *(v0 + 616);
    v22 = *(v0 + 608);
    *(v0 + 368) = v64;
    *(v0 + 376) = v59;
    *(v0 + 384) = v57;
    *(v0 + 392) = WitnessTable;
    sub_237EF9370();
    sub_237EF9360();
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 696);
    v24 = *(v0 + 600);
    v58(v23, *(v0 + 616) + *(v56 + 48), v24);
    *(v0 + 280) = v64;
    v25 = sub_237CE3364();
    *(v0 + 288) = v25;
    *(v0 + 256) = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237EF7F90();
    OUTLINED_FUNCTION_42_2();
    sub_237EF7EA0();
    __swift_destroy_boxed_opaque_existential_1((v0 + 256));
    *(v0 + 320) = v64;
    *(v0 + 328) = v25;
    *(v0 + 296) = 0;
    sub_237EF7F90();
    OUTLINED_FUNCTION_42_2();
    sub_237EF7EA0();
    (*(v61 + 8))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  }

  v62 = *(v0 + 728);
  v65 = *(v0 + 736);
  v36 = *(v0 + 656);
  v37 = *(v0 + 648);
  v38 = *(v0 + 640);
  v39 = *(v0 + 632);
  v40 = *(v0 + 624);
  v41 = *(v0 + 592);
  v60 = *(v0 + 576);
  v42 = *(v0 + 552);
  v43 = *(v0 + 544);

  v44 = *(v40 + 16);
  v44(v38, v36, v41);
  v44(v39, v37, v41);
  v45 = OUTLINED_FUNCTION_31();
  v46 = OUTLINED_FUNCTION_31();
  TimeSeriesForecasterAnnotatedWindows.init(features:annotations:inputWindowSize:forecastWindowSize:stride:shufflesElements:)(v38, v39, v62, v65, v45, v46 & 1, v43, v42, v60);
  *(v0 + 16) = *(v0 + 728);
  memcpy((v0 + 32), (v0 + 144), 0x69uLL);
  v48 = swift_task_alloc();
  *(v0 + 744) = v48;
  v49 = swift_getWitnessTable();
  *v48 = v0;
  v48[1] = sub_237E59200;
  v50 = *(v0 + 576);
  v51 = *(v0 + 560);
  v52 = *(v0 + 520);
  v53 = *(v0 + 504);
  v54 = *(v0 + 512);
  v55 = *(v0 + 488);

  return LinearTimeSeriesForecaster.update<A>(_:withWindows:eventHandler:)(v55, v50, v53, v54, v52, v51, v49);
}

uint64_t sub_237E59200()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E592F8()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = v0[78];
  v4 = v0[75];
  (*(v0[71] + 8))(v0[72], v0[70]);
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_90_0();
  v5(v6);
  v7 = OUTLINED_FUNCTION_42_2();
  v5(v7);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t LinearTimeSeriesForecaster.update<A>(_:withWindows:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[49] = a6;
  v8[50] = a7;
  v8[47] = a4;
  v8[48] = a5;
  v8[45] = a2;
  v8[46] = a3;
  v8[44] = a1;
  v10 = *(a5 + 16);
  v8[51] = v10;
  v8[52] = *(a5 + 24);
  v11 = OUTLINED_FUNCTION_18_0();
  v15 = type metadata accessor for AnnotatedBatch(v11, v12, v13, v14);
  v8[53] = v15;
  OUTLINED_FUNCTION_6_1(v15);
  v8[54] = v16;
  v8[55] = OUTLINED_FUNCTION_27_0();
  v8[56] = *(v10 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v17 = sub_237EF7EE0();
  v8[59] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v8[60] = v18;
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v19 = sub_237EF7E90();
  v8[63] = v19;
  v8[64] = *(v19 - 8);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v21 = type metadata accessor for AnnotatedFeature(0, v19, v19, v20);
  v8[69] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v8[70] = v22;
  v8[71] = OUTLINED_FUNCTION_27_0();
  v8[72] = *(a6 - 8);
  v8[73] = OUTLINED_FUNCTION_27_0();
  memcpy(v8 + 2, v7, 0x79uLL);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_237E5973C()
{
  v84 = v0;
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[48];
  v4 = v0[44];
  (*(v0[72] + 16))(v0[73], v0[45], v0[49]);
  sub_237EF8A90();
  v5 = *(v3 + 32);
  v0[74] = v5;
  v6 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, v2, v1, v5);
  v7 = v6;
  v8 = *(v6 + 44);
  v9 = *(v4 + v8);
  if (!v9)
  {
    v82 = v4;
    v77 = v6;
    v10 = v0[71];
    v11 = v0[68];
    v12 = v0;
    v13 = v0[64];
    v14 = v12[63];
    OUTLINED_FUNCTION_47_1();
    sub_237EF8AC0();
    v81 = *(v13 + 16);
    v81(v11, v10, v14);
    v15 = OUTLINED_FUNCTION_30_33();
    v79 = v16;
    (v16)(v15);
    v17 = sub_237EF7E20();
    v18 = *(v13 + 8);
    result = v18(v11, v14);
    if (*(v17 + 16) < 2uLL)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v74 = v18;
    v20 = v12[71];
    v21 = v12[69];
    v22 = v12[68];
    v23 = v12[63];
    v9 = *(v17 + 40);

    *(v82 + v8) = v9;
    sub_237EF8AC0();
    v81(v22, v20 + *(v21 + 36), v23);
    v79(v20, v21);
    v24 = sub_237EF7E20();
    v25 = OUTLINED_FUNCTION_90_0();
    result = v74(v25);
    if (*(v24 + 16) < 2uLL)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v26 = v12[44];
    v27 = *(v24 + 40);

    v7 = v77;
    *(v26 + *(v77 + 48)) = v27;
    v0 = v12;
  }

  v69 = v0;
  v28 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_237F08A50;
  v30 = sub_237EF8A00();
  *(v29 + 32) = v30;
  memcpy(__dst, v69 + 2, sizeof(__dst));
  *(v29 + 40) = LinearTimeSeriesForecaster.inputWindowSize.getter();
  *(v29 + 48) = v9;
  v31 = v29;
  v32 = v69;
  sub_237D14E78(v31);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_237F08A50;
  *(v33 + 32) = v30;
  memcpy(__dst, v69 + 2, sizeof(__dst));
  *(v33 + 40) = LinearTimeSeriesForecaster.forecastWindowSize.getter();
  *(v33 + 48) = *(v28 + *(v7 + 48));
  result = sub_237D14E78(v33);
  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v30)
  {
    v34 = 0;
    v68 = v69[69];
    v35 = v69[64];
    v76 = (v69[70] + 8);
    v78 = (v35 + 16);
    v75 = (v35 + 8);
    v67 = (v69[60] + 8);
    do
    {
      v36 = v32[71];
      v37 = v32[69];
      v38 = v32[68];
      v39 = v32[63];
      v40 = v32[61];
      v73 = v34 + 1;
      v41 = v32[59];
      v71 = v37;
      sub_237EF8AC0();
      v80 = *v78;
      (*v78)(v38, v36, v39);
      v72 = *v76;
      (*v76)(v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_237F04760;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8, &qword_237F09CD0);
      *(v42 + 56) = v43;
      v44 = sub_237CE3364();
      *(v42 + 32) = 0;
      *(v42 + 96) = v43;
      *(v42 + 104) = v44;
      *(v42 + 64) = v44;
      *(v42 + 72) = 0;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      sub_237EF7FA0();

      v70 = *v75;
      v45 = OUTLINED_FUNCTION_30_33();
      v46(v45);
      sub_237EF7EC0();
      v47 = *v67;
      (*v67)(v40, v41);
      OUTLINED_FUNCTION_47_1();
      sub_237EF7EA0();
      sub_237EF8AC0();
      v80(v38, v36 + *(v68 + 36), v39);
      v72(v36, v71);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_237F04760;
      *(v48 + 56) = v43;
      *(v48 + 64) = v44;
      *(v48 + 32) = 0;
      *(v48 + 96) = v43;
      *(v48 + 104) = v44;
      *(v48 + 72) = 0;
      sub_237EF7FA0();

      v49 = OUTLINED_FUNCTION_30_33();
      v70(v49);
      sub_237EF7EC0();
      v47(v40, v41);
      v32 = v69;
      sub_237EF7EA0();
      v34 = v73;
    }

    while (v30 != v73);
  }

  else
  {
    v50 = v69[64];

    v80 = *(v50 + 16);
  }

  v51 = v32[68];
  v52 = v32[67];
  v53 = v32[66];
  v54 = v32[65];
  v55 = v32[63];
  v56 = v32[55];
  v58 = v32[51];
  v57 = v32[52];
  memcpy(v32 + 18, v32 + 2, 0x79uLL);
  v80(v51, v52, v55);
  v80(v54, v53, v55);
  AnnotatedBatch.init(features:annotations:)(v51, v54, v58, v57, v56);
  v62 = swift_task_alloc();
  v32[75] = v62;
  *v62 = v32;
  v62[1] = sub_237E59E8C;
  v63 = v32[58];
  v64 = v32[55];
  v65 = v32[48];
  v66 = v32[44];

  return LinearTimeSeriesForecaster.update(_:with:)(v63, v66, v64, v65, v59, v60, v61);
}

uint64_t sub_237E59E8C()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[55];
  v6 = v4[54];
  v7 = v4[53];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 608) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E59FE4()
{
  v26 = v0;
  v1 = v0[46];
  if (v1)
  {
    v20 = v0[66];
    v21 = v0[67];
    v2 = v0[64];
    v19 = v0[63];
    v3 = v0[57];
    v4 = v0[58];
    v5 = v0[56];
    v6 = v0[51];
    v7 = v0[47];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0, &unk_237F03CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    strcpy((inited + 32), "training_loss");
    *(inited + 46) = -4864;
    (*(v5 + 16))(v3, v4, v6);
    *(inited + 72) = MEMORY[0x277D839F8];
    sub_237C70604(v1, v7);
    sub_237C65348();
    sub_237EF8190();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    sub_237EF8230();
    OUTLINED_FUNCTION_22_10();
    v22[0] = v9;
    v22[1] = 0x8000000237F00AA0;
    v23 = xmmword_237F08210;
    v24 = 1;
    v25 = v10;
    v1(v22);
    sub_237C5EE40(v1, v7);
    (*(v5 + 8))(v4, v6);
    v11 = *(v2 + 8);
    v11(v20, v19);
    v11(v21, v19);
  }

  else
  {
    v12 = v0[67];
    v13 = v0[66];
    v14 = v0[63];
    v15 = v0[64];
    (*(v0[56] + 8))(v0[58], v0[51]);
    v16 = *(v15 + 8);
    v16(v13, v14);
    v16(v12, v14);
  }

  OUTLINED_FUNCTION_3_0();

  return v17();
}

uint64_t sub_237E5A2E8()
{
  v1 = v0[67];
  v2 = v0[63];
  v3 = *(v0[64] + 8);
  v3(v0[66], v2);
  v3(v1, v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t LinearTimeSeriesForecaster.update(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 200) = a3;
  *(v8 + 208) = a4;
  *(v8 + 184) = a1;
  *(v8 + 192) = a2;
  *(v8 + 216) = *(a4 + 16);
  *(v8 + 224) = *(a4 + 24);
  OUTLINED_FUNCTION_7_66();
  v9 = sub_237EF7E90();
  *(v8 + 232) = v9;
  OUTLINED_FUNCTION_6_1(v9);
  *(v8 + 240) = v10;
  *(v8 + 248) = OUTLINED_FUNCTION_27_0();
  v11 = OUTLINED_FUNCTION_7_66();
  v15 = type metadata accessor for AnnotatedBatch(v11, v12, v13, v14);
  *(v8 + 256) = v15;
  OUTLINED_FUNCTION_6_1(v15);
  *(v8 + 264) = v16;
  *(v8 + 272) = OUTLINED_FUNCTION_27_0();
  memcpy((v8 + 16), v7, 0x48uLL);
  *(v8 + 280) = *(v7 + 72);
  *(v8 + 140) = *(v7 + 88);
  *(v8 + 328) = *(v7 + 92);
  v17 = *(v7 + 96);
  *(v8 + 332) = *(v7 + 104);
  *(v8 + 336) = *(v7 + 108);
  v18 = *(v7 + 112);
  *(v8 + 296) = v17;
  *(v8 + 304) = v18;
  *(v8 + 137) = *(v7 + 120);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

void sub_237E5A57C()
{
  v1 = *(v0 + 137);
  v2 = *(sub_237EF7E20() + 16);

  v3 = sub_237EF7E20();
  v4 = v3;
  if (v2 != 3)
  {
    v69 = 0x8000000237F00AC0;
    v70 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v70);
    *v71 = v4;
    *(v71 + 8) = 0xD000000000000027;
LABEL_28:
    *(v71 + 16) = v69;
LABEL_30:
    *(v71 + 24) = 0;
    *(v71 + 32) = 6;
    swift_willThrow();

    OUTLINED_FUNCTION_3_0();

    v75();
    return;
  }

  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 256);
  v6 = *(v3 + 32);

  v7 = *(sub_237EF7E20() + 16);

  if (v7 != 3)
  {
LABEL_29:
    v72 = OUTLINED_FUNCTION_27_27();
    OUTLINED_FUNCTION_11_55();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000006BLL, 0x8000000237F00AF0);
    *(v0 + 144) = v6;
    v73 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v73);

    MEMORY[0x2383E0710](41, 0xE100000000000000);
    v74 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v74);
    *v71 = v72;
    *(v71 + 8) = v187;
    *(v71 + 16) = v188;
    goto LABEL_30;
  }

  v8 = OUTLINED_FUNCTION_27_27();
  if (!*(v8 + 16))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v9 = *(v8 + 32);

  if (v9 != v6)
  {
    goto LABEL_29;
  }

  v10 = *(v0 + 192);
  v11 = *(*(v0 + 208) + 32);
  v144 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, *(v0 + 216), *(v0 + 224), v11);
  v12 = *(v144 + 44);
  v167 = *(v10 + v12);
  if (!v167)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_20_39();
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = *(v13 + 48);

    v167 = v15;
    *(v10 + v12) = v15;
    sub_237EF7E20();
    OUTLINED_FUNCTION_20_39();
    if (!v14)
    {
      goto LABEL_41;
    }

    v17 = *(v0 + 192);
    v18 = *(v16 + 48);

    *(v17 + *(v144 + 48)) = v18;
  }

  HIDWORD(v132) = v1;
  if (*(sub_237EF7E20() + 16) < 2uLL)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_21_43();
  v19 = OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_4_81(v19, v20, v21, v22, v23, v24, v25, v26, v100, v105, v109, v113, v117, v121, v124, v11, v132, v6, v5, v144, v152, v158, v167, v175, v181);
  OUTLINED_FUNCTION_8_76();
  if (v153 != LinearTimeSeriesForecaster.inputWindowSize.getter())
  {
    goto LABEL_33;
  }

  sub_237EF7E20();
  OUTLINED_FUNCTION_20_39();
  if (!v14)
  {
    goto LABEL_39;
  }

  v28 = *(v27 + 48);

  if (v28 != v168)
  {
LABEL_33:
    v163 = sub_237EF7E20();
    OUTLINED_FUNCTION_11_55();
    sub_237EF9330();
    OUTLINED_FUNCTION_19_43();
    v76 = MEMORY[0x2383E0710]();
    OUTLINED_FUNCTION_4_81(v76, v77, v78, v79, v80, v81, v82, v83, v101, v106, v110, v114, v118, v122, v125, v128, v133, v137, v140, v145, v153, v163, v168, v187, v188);
    *(v0 + 152) = LinearTimeSeriesForecaster.inputWindowSize.getter();
    v84 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v84);

    OUTLINED_FUNCTION_19_43();
    MEMORY[0x2383E0710](0xD000000000000014);
    *(v0 + 160) = v172;
    v85 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v85);

    v86 = v179;
    v69 = v185;
    v87 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v87);
    v88 = v164;
LABEL_34:
    *v71 = v88;
    *(v71 + 8) = v86;
    goto LABEL_28;
  }

  if (*(OUTLINED_FUNCTION_27_27() + 16) < 2uLL)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_21_43();
  v29 = OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_4_81(v29, v30, v31, v32, v33, v34, v35, v36, v101, v106, v110, v114, v118, v122, v125, v128, v133, v137, v140, v145, v153, v159, v168, v176, v182);
  OUTLINED_FUNCTION_8_76();
  if (v154 != LinearTimeSeriesForecaster.forecastWindowSize.getter())
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_27_27();
  OUTLINED_FUNCTION_20_39();
  if (!v14)
  {
    goto LABEL_43;
  }

  v38 = *(v0 + 192);
  v39 = *(v37 + 48);

  if (v39 != *(v38 + *(v146 + 48)))
  {
LABEL_35:
    LODWORD(v154) = *(v0 + 137);
    LODWORD(v141) = *(v0 + 336);
    v165 = *(v0 + 192);
    v173 = sub_237EF7E20();
    OUTLINED_FUNCTION_11_55();
    sub_237EF9330();
    OUTLINED_FUNCTION_19_43();
    v89 = MEMORY[0x2383E0710]();
    OUTLINED_FUNCTION_4_81(v89, v90, v91, v92, v93, v94, v95, v96, v102, v107, v111, v115, v119, v123, v126, v129, v134, v138, v141, v146, v154, v165, v173, v187, v188);
    *(v0 + 168) = LinearTimeSeriesForecaster.forecastWindowSize.getter();
    v97 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v97);

    OUTLINED_FUNCTION_19_43();
    MEMORY[0x2383E0710]();
    *(v0 + 176) = *(v166 + *(v151 + 48));
    v98 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v98);

    v86 = v180;
    v69 = v186;
    v99 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v99);
    v88 = v174;
    goto LABEL_34;
  }

  LODWORD(v160) = *(v0 + 137);
  v147 = v39;
  v155 = *(v0 + 304);
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 200), *(v0 + 256));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v41 = OUTLINED_FUNCTION_36_1(v40);
  *(v41 + 16) = xmmword_237F04760;
  v42 = v138;
  *(v41 + 32) = v138;
  OUTLINED_FUNCTION_4_81(v41, v43, v44, v45, v46, v47, v48, v49, v102, v107, v111, v115, 2, 4, v126, v129, v134, v138, v141, v147, v155, v160, v169, v177, v183);
  v50 = LinearTimeSeriesForecaster.inputWindowSize.getter();
  v51 = v50 * v170;
  if ((v50 * v170) >> 64 != (v50 * v170) >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LODWORD(v170) = *(v0 + 137);
  v161 = *(v0 + 304);
  LODWORD(v156) = *(v0 + 336);
  HIDWORD(v116) = *(v0 + 328);
  v108 = *(v0 + 296);
  v112 = *(v0 + 208);
  *(v41 + 40) = v51;
  sub_237EF7E60();

  v52 = OUTLINED_FUNCTION_30_33();
  v103 = v53;
  v53(v52);
  v143 = *(v142 + 36);
  v54 = OUTLINED_FUNCTION_36_1(v40);
  *(v54 + 16) = *v120;
  *(v54 + 32) = v42;
  OUTLINED_FUNCTION_4_81(v54, v55, v56, v57, v58, v59, v60, v61, v103, v108, v112, v116, v120[0], v120[1], v127, v130, v135, v139, v143, v148, v156, v161, v170, v178, v184);
  v62 = LinearTimeSeriesForecaster.forecastWindowSize.getter();
  v63 = v62 * v149;
  if ((v62 * v149) >> 64 != (v62 * v149) >> 63)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v150 = *(v0 + 296);
  v157 = *(v0 + 304);
  v64 = *(v0 + 332);
  v65 = *(v0 + 140);
  v67 = *(v0 + 280);
  v66 = *(v0 + 288);
  v162 = *(v0 + 216);
  v171 = *(v0 + 224);
  *(v54 + 40) = v63;
  OUTLINED_FUNCTION_90_0();
  sub_237EF7E60();

  OUTLINED_FUNCTION_47_1();
  v104();
  *(v0 + 88) = v67;
  *(v0 + 96) = v66;
  *(v0 + 104) = v65;
  *(v0 + 112) = v150;
  *(v0 + 120) = v64;
  *(v0 + 128) = v157;
  *(v0 + 136) = v136 & 1;
  v68 = swift_task_alloc();
  *(v0 + 312) = v68;
  type metadata accessor for MultivariateLinearRegressor(0, v162, v171, v131);
  *v68 = v0;
  v68[1] = sub_237E5AEA4;

  MultivariateLinearRegressor.update(_:with:)();
}

uint64_t sub_237E5AEA4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E5AF9C()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[33] + 8))(v0[34], v0[32]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237E5B01C()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[33] + 8))(v0[34], v0[32]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237E5B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6A904;

  return LinearTimeSeriesForecaster.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237E5B17C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *OUTLINED_FUNCTION_4_81(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  return memcpy(va, (v25 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_13_47@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = v4;
  *(a2 + 8) = a3;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_39()
{
}

uint64_t OUTLINED_FUNCTION_27_27()
{

  return sub_237EF7E20();
}

unint64_t sub_237E5B2A4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t BaseTreeRegressorModel.applied(features:eventHandler:)(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *v1)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v4;
    v16 = v6;
    v17 = v5;
    v7 = type metadata accessor for XGBoostMatrix();
    OUTLINED_FUNCTION_36_1(v7);

    result = sub_237D51C98(v15);
    if (!v2)
    {
      sub_237E88118();

      return v18;
    }
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v10 = OUTLINED_FUNCTION_36_1(v9);
    *(v10 + 16) = xmmword_237F04760;
    *(v10 + 32) = v3;
    *(v10 + 40) = v4;
    sub_237EF9330();

    OUTLINED_FUNCTION_0_82();
    v11 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v11);

    MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
    v12 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v12);

    sub_237C84150();
    v13 = swift_allocError();
    return OUTLINED_FUNCTION_1_101(v13, v14);
  }

  return result;
}

{
  v3 = *(a1 + 16);
  if (v3 == *v1)
  {
    v4 = type metadata accessor for XGBoostMatrix();
    OUTLINED_FUNCTION_36_1(v4);

    result = sub_237D51E3C(v5);
    if (!v2)
    {
      sub_237E88118();

      result = v13;
      if (*(v13 + 16))
      {
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v8 = OUTLINED_FUNCTION_36_1(v7);
    *(v8 + 16) = xmmword_237F04760;
    *(v8 + 32) = 1;
    *(v8 + 40) = v3;
    sub_237EF9330();

    OUTLINED_FUNCTION_0_82();
    v9 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v9);

    MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
    v10 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v10);

    sub_237C84150();
    v11 = swift_allocError();
    return OUTLINED_FUNCTION_1_101(v11, v12);
  }

  return result;
}

uint64_t sub_237E5B64C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_237E5B68C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_101(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_2_93()
{

  return sub_237EF9AB0();
}

uint64_t sub_237E5B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for DenseVector(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for DenseMatrix(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237E5B800(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = *(*(v4 - 8) + 64) + ((*(*(v4 - 8) + 64) + v7 + ((*(*(v4 - 8) + 64) + v7 + ((v7 + 48) & ~v7)) & ~v7)) & ~v7) + 1;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 32) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_237E5B9A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 48) & ~v10)) & ~v10)) & ~v10) + 1;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (*(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 48) & ~v10)) & ~v10)) & ~v10) != -1)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E5BC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for OptimizerState(0, a1, a2, v7);
  sub_237EF8350();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29_30(&unk_237F07D78);
  OUTLINED_FUNCTION_21_44();
  OUTLINED_FUNCTION_29_30(&unk_237F07D78);
  OUTLINED_FUNCTION_21_44();
  *(a3 + *(v8 + 56)) = 0;
  v9 = sub_237EF89A0();
  *a3 = DenseVector.init(arrayLiteral:)(v9, a1);
  v10 = sub_237EF89A0();
  *(a3 + 8) = DenseVector.init(arrayLiteral:)(v10, a1);
  result = DenseMatrix.init(rowCount:columnCount:)(0, 0, a1);
  *(a3 + 16) = result;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13 & 1;
  *(a3 + 40) = v14;
  return result;
}

uint64_t sub_237E5BDC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v97 = a3;
  v6 = *(a2 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v100 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v86 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v99 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v11);
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v98 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v104 = v15;
  v82 = a2;
  v16 = *(a2 + 24);
  v84 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17(&v77 - v18);
  v19 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v92 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v101 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  *&v95 = &v77 - v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB50B8, &unk_237F1A7B8);
  OUTLINED_FUNCTION_1();
  v89 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E5DA00();
  sub_237EFA1B0();
  v107 = *v91;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v33 = swift_allocObject();
  v94 = xmmword_237F03530;
  *(v33 + 16) = xmmword_237F03530;

  *(v33 + 32) = DenseVector.count.getter(v34);
  v93 = v16;
  v35 = v90;
  type metadata accessor for DenseVector(0, v6, v16, v36);
  swift_getWitnessTable();
  v103 = v6;
  sub_237EF7E40();
  LOBYTE(v107) = 0;
  v105 = v35;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_49();
  v38 = v96;
  sub_237EF9A70();
  if (v38)
  {
    (*(v92 + 8))(v27, v19);
LABEL_5:
    OUTLINED_FUNCTION_11_56();
    v47 = v32;
    v48 = v28;
    return v46(v47, v48);
  }

  v39 = *(v92 + 8);
  v92 += 8;
  v79 = v39;
  v39(v27, v19);
  v107 = v91[1];
  v40 = swift_allocObject();
  v80 = v28;
  v81 = 0;
  v41 = v40;
  *(v40 + 16) = v94;

  *(v41 + 32) = DenseVector.count.getter(v42);
  v28 = v80;
  sub_237EF7E40();
  LOBYTE(v107) = 1;
  OUTLINED_FUNCTION_16_49();
  v43 = v81;
  sub_237EF9A70();
  v44 = v19;
  if (v43)
  {
    OUTLINED_FUNCTION_1_102();
    v45();
    goto LABEL_5;
  }

  v77 = WitnessTable;
  v81 = 0;
  v78 = v32;
  OUTLINED_FUNCTION_1_102();
  v50();
  v51 = v103;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v52 = swift_allocObject();
  v95 = xmmword_237F04760;
  *(v52 + 16) = xmmword_237F04760;
  v53 = v91;
  v54 = v91[2];
  v55 = v91[3];
  *(v52 + 32) = v54;
  *(v52 + 40) = v55;
  OUTLINED_FUNCTION_0_18();
  *&v94 = swift_getWitnessTable();
  sub_237EF7F80();
  v56 = v93;
  v57 = DenseMatrix.indexed()(v54, v55, *(v53 + 32), v53[5]);
  DenseMatrix.IndexedSequence.makeIterator()(v57, v59, v58 & 1, v60, &v106);

  v97 = type metadata accessor for DenseMatrix.IndexedSequence.Iterator(0, v51, v56, v61);
  v96 = (v86 + 32);
  v93 = (v85 + 32);
  v62 = (v85 + 16);
  v63 = (v85 + 8);
  v64 = TupleTypeMetadata3;
  v65 = v87;
  while (1)
  {
    v66 = v99;
    DenseMatrix.IndexedSequence.Iterator.next()(v97, v99);
    (*v96)(v65, v66, v100);
    if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
    {
      break;
    }

    v67 = v44;
    v69 = *v65;
    v68 = v65[1];
    v70 = v103;
    (*v93)(v104, v65 + *(v64 + 64), v103);
    v71 = swift_allocObject();
    *(v71 + 16) = v95;
    *(v71 + 32) = v69;
    *(v71 + 40) = v68;
    v44 = v67;
    (*v62)(v98, v104, v70);
    sub_237EF7F70();
    (*v63)(v104, v70);
  }

  LOBYTE(v107) = 2;
  v72 = v80;
  v73 = v78;
  v74 = v81;
  sub_237EF9A70();
  if (!v74)
  {
    LOBYTE(v107) = 3;
    sub_237EF9A70();
    OUTLINED_FUNCTION_14_56();
    OUTLINED_FUNCTION_14_56();
    LOBYTE(v107) = 6;
    sub_237EF9A20();
    v76 = v89;
    v79(v101, v44);
    return (*(v76 + 8))(v73, v72);
  }

  OUTLINED_FUNCTION_1_102();
  v75();
  OUTLINED_FUNCTION_11_56();
  v47 = v73;
  v48 = v72;
  return v46(v47, v48);
}

void *sub_237E5C798@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v116 = a4;
  v126 = a1;
  v107 = a5;
  v123 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v9);
  v115 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v112 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v14);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB50C8, &qword_237F1A7C8);
  OUTLINED_FUNCTION_1();
  v118 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v127 = &v101 - v17;
  v18 = *(*(*(*(a3 + 16) + 16) + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v113 = a3;
  v21 = type metadata accessor for OptimizerState(0, a2, a3, v20);
  OUTLINED_FUNCTION_1();
  v105 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = (&v101 - v24);
  v125 = *(v26 + 44);
  sub_237EF8350();
  v27 = *(v21 + 48);
  v121 = v18;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v120 = v27;
  OUTLINED_FUNCTION_23_37();
  sub_237EF9D20();
  v106 = v21;
  v28 = *(v21 + 52);
  v29 = v126;
  sub_237EF9FB0();
  v124 = v28;
  v128 = a2;
  v129 = v25;
  OUTLINED_FUNCTION_23_37();
  sub_237EF9D20();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_237E5DA00();
  v30 = v122;
  sub_237EFA190();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    v39 = v123;
    v32 = v120;
LABEL_4:
    v33 = *(v39 + 8);
    v34 = v128;
    v35 = v129;
    v33(v129 + v125, v128);
    v33(v35 + v32, v34);
    return (v33)(v35 + v124, v34);
  }

  LOBYTE(v130) = 0;
  v131 = v116;
  v31 = v115;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_40();
  sub_237EF9970();
  OUTLINED_FUNCTION_0_18();
  WitnessTable = swift_getWitnessTable();
  v130 = sub_237EF7F50();
  v37 = sub_237EF8A60();
  v38 = swift_getWitnessTable();
  v121 = v37;
  v104 = v38;
  v122 = DenseVector.init<A>(scalars:)();
  *v129 = v122;
  OUTLINED_FUNCTION_5_59(1);
  OUTLINED_FUNCTION_18_40();
  sub_237EF9970();
  v39 = v123;
  v130 = sub_237EF7F50();
  v129[1] = DenseVector.init<A>(scalars:)();
  OUTLINED_FUNCTION_5_59(2);
  OUTLINED_FUNCTION_18_40();
  v102 = 0;
  sub_237EF9970();
  OUTLINED_FUNCTION_8_77();
  v40 = *(sub_237EF7E20() + 16);

  if (v40 != 2)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_25;
  }

  v41 = result[4];

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = result[5];

  if (v41 != v42)
  {
LABEL_14:
    v48 = sub_237EF93E0();
    swift_allocError();
    v121 = v49;
    v50 = sub_237EF98C0();
    OUTLINED_FUNCTION_24_34(v50, &v132);
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000041, 0x8000000237F00CB0);
    OUTLINED_FUNCTION_8_77();
    sub_237EF7E20();
    v51 = v31;
    v52 = MEMORY[0x2383E0A10]();
    v53 = v29;
    v55 = v54;

    MEMORY[0x2383E0710](v52, v55);
    v56 = v53;

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v57 = v121;
    sub_237EF93D0();
    (*(*(v48 - 8) + 104))(v57, *MEMORY[0x277D84168], v48);
    swift_willThrow();
    OUTLINED_FUNCTION_20_40();
    v58 = v53[1];
    v58(v111, v51);
    v59 = OUTLINED_FUNCTION_4_82();
    (v58)(v59);
    v60 = OUTLINED_FUNCTION_5_81();
    (v58)(v60);
    v61 = OUTLINED_FUNCTION_9_58();
    v62(v61);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_77();
  v43 = sub_237EF7E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  v101 = xmmword_237F04760;
  *(inited + 16) = xmmword_237F04760;
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v45 = result[4];

  *(inited + 32) = v45;
  *(inited + 40) = 1;
  LOBYTE(v45) = sub_237C60C7C(v43, inited);

  swift_setDeallocating();
  if (v45)
  {
    result = sub_237EF7E20();
    v46 = v126;
    if (result[2])
    {

      OUTLINED_FUNCTION_8_77();
      result = sub_237EF7E20();
      v47 = v120;
      if (result[2] >= 2uLL)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v64 = sub_237EF7E50();
  v65 = swift_initStackObject();
  *(v65 + 16) = v101;
  *(v65 + 32) = 1;
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v66 = result[4];

  *(v65 + 40) = v66;
  LOBYTE(v66) = sub_237C60C7C(v64, v65);

  swift_setDeallocating();
  if ((v66 & 1) == 0)
  {
    v78 = sub_237EF93E0();
    swift_allocError();
    v80 = v79;
    v81 = sub_237EF98C0();
    OUTLINED_FUNCTION_24_34(v81, &v133);
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000004DLL, 0x8000000237F00D00);
    OUTLINED_FUNCTION_8_77();
    sub_237EF7E50();
    v82 = v31;
    v83 = MEMORY[0x2383E0A10]();
    v85 = v84;

    MEMORY[0x2383E0710](v83, v85);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D84168], v78);
    swift_willThrow();
    v86 = *(v112 + 8);
    v86(v111, v82);
    v87 = OUTLINED_FUNCTION_4_82();
    (v86)(v87);
    v88 = OUTLINED_FUNCTION_5_81();
    (v86)(v88);
    v89 = OUTLINED_FUNCTION_9_58();
    v90(v89);
    v56 = v126;
LABEL_15:
    v32 = v120;
    v63 = v102;
    __swift_destroy_boxed_opaque_existential_1(v56);

    if (!v63)
    {
    }

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  v46 = v126;
  v47 = v120;
  if (result[2] >= 2uLL)
  {
LABEL_22:

    v67 = OUTLINED_FUNCTION_30_36();
    OUTLINED_FUNCTION_25_33(v67);
    v68 = v128;
    DenseMatrix.init<A>(rowCount:columnCount:layout:scalars:)();
    v69 = v129;
    v129[2] = v70;
    v69[3] = v71;
    *(v69 + 32) = v72 & 1;
    v69[5] = v73;
    OUTLINED_FUNCTION_5_59(3);
    v74 = v110;
    OUTLINED_FUNCTION_26_26();
    sub_237EF9970();
    v75 = v74;
    v76 = *(v39 + 40);
    (v76)(v129 + v125, v75, v68);
    OUTLINED_FUNCTION_5_59(4);
    v77 = v109;
    OUTLINED_FUNCTION_22_36();
    OUTLINED_FUNCTION_26_26();
    sub_237EF9970();
    (v76)(v129 + v47, v77, v68);
    OUTLINED_FUNCTION_5_59(5);
    OUTLINED_FUNCTION_22_36();
    OUTLINED_FUNCTION_26_26();
    sub_237EF9970();
    (v76)(v129 + v124, v108, v128);
    LOBYTE(v130) = 6;
    v91 = v117;
    OUTLINED_FUNCTION_26_26();
    sub_237EF9920();
    OUTLINED_FUNCTION_20_40();
    LOBYTE(v68) = v92;
    v93 = v106;
    v94 = *(v106 + 56);
    v95 = v91;
    v96 = *(v76 + 8);
    v97 = v115;
    v96(v111, v115);
    v96(v114, v97);
    v96(v119, v97);
    OUTLINED_FUNCTION_12_50();
    v98(v127, v95);
    v99 = v129;
    *(v129 + v94) = v68 & 1;
    v100 = v105;
    (*(v105 + 16))(v107, v99, v93);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return (*(v100 + 8))(v99, v93);
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237E5D744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_4_36(0x746E696F70, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656964617267 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_36(0x746E656964617267, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E616973736568 && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_4_36(0x6E616973736568, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61756469736572 && a2 == 0xE800000000000000;
        if (v8 || (OUTLINED_FUNCTION_4_36(0x6C61756469736572, 0xE800000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
          if (v9 || (OUTLINED_FUNCTION_4_36(0x65756C6176, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x657A695370657473 && a2 == 0xE800000000000000;
            if (v10 || (OUTLINED_FUNCTION_4_36(0x657A695370657473, 0xE800000000000000) & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = OUTLINED_FUNCTION_4_36(0x646570706F7473, 0xE700000000000000);

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_237E5D918(char a1)
{
  result = 0x746E696F70;
  switch(a1)
  {
    case 1:
      result = 0x746E656964617267;
      break;
    case 2:
      result = 0x6E616973736568;
      break;
    case 3:
      result = 0x6C61756469736572;
      break;
    case 4:
      result = 0x65756C6176;
      break;
    case 5:
      result = 0x657A695370657473;
      break;
    case 6:
      result = 0x646570706F7473;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237E5DA00()
{
  result = qword_27DEB50C0;
  if (!qword_27DEB50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50C0);
  }

  return result;
}

uint64_t sub_237E5DA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E5D744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E5DA84(uint64_t a1)
{
  v2 = sub_237E5DA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E5DAC0(uint64_t a1)
{
  v2 = sub_237E5DA00();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237E5DBDC()
{
  result = qword_27DEB50D0;
  if (!qword_27DEB50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50D0);
  }

  return result;
}

unint64_t sub_237E5DC34()
{
  result = qword_27DEB50D8;
  if (!qword_27DEB50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50D8);
  }

  return result;
}

unint64_t sub_237E5DC8C()
{
  result = qword_27DEB50E0;
  if (!qword_27DEB50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_56()
{
  *(v2 - 72) = v1;

  return sub_237EF9A70();
}

uint64_t OUTLINED_FUNCTION_21_44()
{

  return sub_237EF9D20();
}

uint64_t OUTLINED_FUNCTION_24_34@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 104) = 0;
  *(v2 - 96) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_30(uint64_t a1)
{

  return sub_237EF9FB0();
}

uint64_t OUTLINED_FUNCTION_30_36()
{

  return sub_237EF7F50();
}

unint64_t OptimizationError.errorDescription.getter()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000031;
  }
}

unint64_t OptimizationError.debugDescription.getter()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000031;
  }
}

uint64_t OptimizationError.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

unint64_t sub_237E5DFD8()
{
  result = qword_27DEB50E8;
  if (!qword_27DEB50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OptimizationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E5E118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E5E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X8>)
{
  if (sub_237E87068(a2, a3, a4) <= a1)
  {
    v12 = 1;
  }

  else
  {
    sub_237E8701C(a1, a2, a3, a4);
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a7, v12, 1, a4);
}

uint64_t sub_237E5E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a3 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  (*(v11 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v14 = sub_237EF8D00();
  v15 = sub_237E86E14(v14, a2, a4, a5);
  (*(v11 + 8))(a1, a3);
  return v15;
}

uint64_t sub_237E5E374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1A0();
  v6[6] = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF9DA0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *sub_237E5E480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA180();
  if (!v5)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_237EF8A60();
    swift_getWitnessTable();
    sub_237EF9D60();
    swift_getWitnessTable();
    v12 = sub_237EF8D00();
    v10 = sub_237E86E14(v12, a2, a3, a5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void *sub_237E5E600@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_237E5E480(a1, a2[2], a2[3], *(a3 - 8), a2[4]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

void sub_237E5E63C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8, &qword_237F0CCF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  sub_237E5E9F0([a1 dataType], v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

    sub_237E5EB60(v9);
    v20 = 1;
LABEL_15:
    v35 = sub_237EF6E30();
    __swift_storeEnumTagSinglePayload(a2, v20, 1, v35);
    return;
  }

  v42 = v15;
  (*(v12 + 32))(v19, v9, v10);
  v21 = [a1 shape];
  sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
  v22 = sub_237EF8910();

  v23 = sub_237D6DA5C();
  if (!v23)
  {

LABEL_14:
    (*(v12 + 16))(v42, v19, v10);
    sub_237EF6DD0();
    sub_237E5EBC8([a1 shapeConstraint], v6);
    sub_237EF6E00();

    (*(v12 + 8))(v19, v10);
    v20 = 0;
    goto LABEL_15;
  }

  v24 = v23;
  v43 = MEMORY[0x277D84F90];
  v25 = OUTLINED_FUNCTION_4_83();
  sub_237C62DB0(v25, v26, v27);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v37 = v19;
    v38 = v12;
    v39 = v6;
    v40 = a1;
    v41 = a2;
    v28 = 0;
    v29 = v43;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2383E1490](v28, v22);
      }

      else
      {
        v30 = *(v22 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v30 integerValue];

      v43 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_237C62DB0(v33 > 1, v34 + 1, 1);
        v29 = v43;
      }

      ++v28;
      *(v29 + 16) = v34 + 1;
      *(v29 + 8 * v34 + 32) = v32;
    }

    while (v24 != v28);

    a1 = v40;
    a2 = v41;
    v12 = v38;
    v6 = v39;
    v19 = v37;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_237E5E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  switch(a1)
  {
    case 65568:
      v11 = MEMORY[0x277D25100];
      goto LABEL_7;
    case 65600:
      v11 = MEMORY[0x277D250F0];
      goto LABEL_7;
    case 131104:
      v11 = MEMORY[0x277D250E8];
LABEL_7:
      (*(v6 + 104))(v10, *v11, v4);
      (*(v6 + 32))(a2, v10, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t sub_237E5EB60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237E5EBC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = sub_237EF7D30();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_237EF6DF0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  v17 = [a1 type];
  v91 = v10;
  v92 = v16;
  v93 = v12;
  if (v17 != 2)
  {
    if (v17 != 3)
    {

      __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
      return;
    }

    v83 = a1;
    v85 = a2;
    v18 = [a1 sizeRangeForDimension];
    sub_237C75918(0, qword_27DEB50F8, 0x277CCAE60);
    v19 = sub_237EF8910();

    v20 = sub_237D6DA5C();
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v22 = v20;
      v89 = v5;
      v99 = MEMORY[0x277D84F90];
      v23 = OUTLINED_FUNCTION_4_83();
      sub_237C6348C(v23);
      if (v22 < 0)
      {
        goto LABEL_52;
      }

      v24 = 0;
      v25 = v99;
      v94 = v19 & 0xC000000000000001;
      v26 = v9;
      v27 = v19;
      v28 = v22;
      do
      {
        if (v94)
        {
          v29 = MEMORY[0x2383E1490](v24, v19);
        }

        else
        {
          v29 = *(v19 + 8 * v24 + 32);
        }

        v30 = v29;
        v31 = [v29 rangeValue];
        v33 = v32;

        v35 = *(v99 + 16);
        v34 = *(v99 + 24);
        if (v35 >= v34 >> 1)
        {
          v37 = OUTLINED_FUNCTION_16_16(v34);
          sub_237C6348C(v37);
        }

        ++v24;
        *(v99 + 16) = v35 + 1;
        v36 = v99 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        v19 = v27;
      }

      while (v28 != v24);
      v9 = v26;

      v5 = v89;
      v10 = v91;
      v21 = MEMORY[0x277D84F90];
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v70 = *(v25 + 16);
    if (v70)
    {
      v71 = OUTLINED_FUNCTION_2_94();
      sub_237C63434(v71, v72, v73);
      v74 = (v25 + 40);
      do
      {
        v75 = *(v74 - 1);
        if (__OFADD__(v75, *v74))
        {
          goto LABEL_49;
        }

        if (v75 + *v74 < v75)
        {
          goto LABEL_50;
        }

        sub_237EF7D40();
        v77 = *(v21 + 16);
        v76 = *(v21 + 24);
        if (v77 >= v76 >> 1)
        {
          v78 = OUTLINED_FUNCTION_16_16(v76);
          sub_237C63434(v78, v77 + 1, 1);
        }

        v74 += 2;
        *(v21 + 16) = v77 + 1;
        (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v77, v9, v96);
      }

      while (--v70);
    }

    v16 = v92;
    v12 = v93;
    *v92 = v21;
    v79 = OUTLINED_FUNCTION_5_82();
    v80(v79);
    a2 = v85;
LABEL_47:
    (*(v12 + 32))(a2, v16, v10);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    return;
  }

  v38 = a1;
  v39 = [a1 enumeratedShapes];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB50F0, &unk_237F1AAF0);
  v40 = sub_237EF8910();

  v41 = *(v40 + 16);
  if (!v41)
  {

    v69 = MEMORY[0x277D84F90];
LABEL_46:
    *v16 = v69;
    v81 = OUTLINED_FUNCTION_5_82();
    v82(v81);
    goto LABEL_47;
  }

  v84 = v38;
  v86 = a2;
  v100 = MEMORY[0x277D84F90];
  v42 = OUTLINED_FUNCTION_2_94();
  sub_237C63414(v42, v43, v44);
  v45 = 0;
  v46 = v100;
  v88 = v41;
  v90 = v40 + 32;
  v47 = v41;
  v87 = v40;
  while (v45 < *(v40 + 16))
  {
    v48 = *(v90 + 8 * v45);
    if (v48 >> 62)
    {
      v60 = v46;
      v61 = v45;
      v62 = sub_237EF9710();
      v45 = v61;
      v46 = v60;
      v49 = v62;
      if (v62)
      {
LABEL_18:
        v95 = v45;
        v97 = v46;
        v98 = MEMORY[0x277D84F90];
        sub_237EF8260();
        v50 = OUTLINED_FUNCTION_2_94();
        sub_237C62DB0(v50, v51, v52);
        if (v49 < 0)
        {
          goto LABEL_51;
        }

        v53 = 0;
        v54 = v98;
        do
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x2383E1490](v53, v48);
          }

          else
          {
            v55 = *(v48 + 8 * v53 + 32);
          }

          v56 = v55;
          v57 = [v55 integerValue];

          v59 = *(v98 + 16);
          v58 = *(v98 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_237C62DB0(v58 > 1, v59 + 1, 1);
          }

          ++v53;
          *(v98 + 16) = v59 + 1;
          *(v98 + 8 * v59 + 32) = v57;
        }

        while (v49 != v53);

        v40 = v87;
        v47 = v88;
        v45 = v95;
        v46 = v97;
        goto LABEL_29;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49)
      {
        goto LABEL_18;
      }
    }

    v54 = MEMORY[0x277D84F90];
LABEL_29:
    v101 = v46;
    v64 = *(v46 + 16);
    v63 = *(v46 + 24);
    v10 = v91;
    v16 = v92;
    v12 = v93;
    if (v64 >= v63 >> 1)
    {
      v65 = OUTLINED_FUNCTION_16_16(v63);
      v67 = v66;
      sub_237C63414(v65, v64 + 1, 1);
      v45 = v67;
      v47 = v88;
      v46 = v101;
    }

    ++v45;
    *(v46 + 16) = v64 + 1;
    *(v46 + 8 * v64 + 32) = v54;
    if (v45 == v47)
    {
      v68 = v46;

      v69 = v68;
      a2 = v86;
      goto LABEL_46;
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
  __break(1u);
}

uint64_t sub_237E5F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ComposedTabularEstimator(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_237E5F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = a5[5];
  v6[9] = a5[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v6[11] = v12;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v13 = sub_237EF61A0();
  v6[14] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v6[15] = v14;
  v6[16] = swift_task_alloc();
  v15 = a5[4];
  v6[17] = v15;
  v16 = a5[2];
  v6[18] = v16;
  v17 = swift_getAssociatedTypeWitness();
  v6[19] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v6[20] = v18;
  v6[21] = swift_task_alloc();
  v19 = swift_task_alloc();
  v6[22] = v19;
  OUTLINED_FUNCTION_0_23(v15);
  v23 = (v20 + *v20);
  v21 = swift_task_alloc();
  v6[23] = v21;
  *v21 = v6;
  v21[1] = sub_237E5F5D0;

  return v23(v19, a2, a3, a4, v16, v15);
}

uint64_t sub_237E5F5D0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_237D178B4;
  }

  else
  {
    v7 = sub_237E5F6CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237E5F6CC(uint64_t a1)
{
  v2 = v1[24];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[20] + 8))(v1[22], v1[19]);

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[25] = AssociatedConformanceWitness;
    v6 = *(AssociatedConformanceWitness + 8);
    OUTLINED_FUNCTION_0_23(v6);
    v14 = (v7 + *v7);
    v8 = swift_task_alloc();
    v1[26] = v8;
    *v8 = v1;
    v8[1] = sub_237E5F89C;
    v9 = v1[19];
    v10 = v1[16];
    v11 = v1[4];
    v12 = v1[5];
    v13 = v1[3];

    return v14(v10, v13, v11, v12, v9, v6);
  }
}

uint64_t sub_237E5F89C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_237D17940;
  }

  else
  {
    v7 = sub_237E5F998;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237E5F998(uint64_t a1)
{
  v2 = v1[27];
  sub_237EF8B90();
  if (v2)
  {
    v3 = v1[22];
    v4 = v1[19];
    v5 = v1[20];
    (*(v1[15] + 8))(v1[16], v1[14]);
    (*(v5 + 8))(v3, v4);

    OUTLINED_FUNCTION_3_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_0_23(v1[8]);
    v16 = (v8 + *v8);
    v9 = swift_task_alloc();
    v1[28] = v9;
    *v9 = v1;
    v9[1] = sub_237E5FB68;
    v10 = v1[16];
    v11 = v1[13];
    v13 = v1[8];
    v12 = v1[9];
    v14 = v1[4];
    v15 = v1[5];

    return v16(v11, v10, v14, v15, v12, v13);
  }
}

uint64_t sub_237E5FB68()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 232) = v0;

  if (v0)
  {
    v7 = sub_237D179E4;
  }

  else
  {
    v7 = sub_237E5FC64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237E5FC64()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v13 = v0[25];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v12 = v0[2];
  (*(v0[15] + 8))();
  (*(v3 + 32))(v1, v2, v4);
  (*(v7 + 32))(v5, v6, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v1, v5, v4, v8, v13, AssociatedConformanceWitness, v12);

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t sub_237E5FDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 32) + 32))(a1, a2, *(a3 + 16), *(a3 + 32));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(a3 + 40);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTabularTransformer(0, v12);
    return (*(v9 + 32))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237E5FF20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = a2[3];
  v38 = a2[5];
  v40 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - v11;
  v12 = a2[4];
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  v23 = *(v12 + 40);
  v37 = a1;
  v24 = v41;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v31 = v13;
    v32 = v18;
    v41 = v14;
    v26 = AssociatedTypeWitness;
    (*(v38 + 40))(v37, v40, v38);
    v27 = v32;
    v28 = v41;
    (*(v36 + 32))(v32, v22, v41);
    (*(v33 + 32))(v9, v39, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v27, v9, v28, v26, AssociatedConformanceWitness, v30, v34);
  }

  return result;
}

uint64_t sub_237E60220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6A904;

  return sub_237E5F324(a1, a2, a3, a4, a5);
}

uint64_t TabularTransformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v32 = a6;
  v33 = a5;
  v31 = a1;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v24 = type metadata accessor for TabularTransformerToEstimatorAdaptor(0, v22, v23, v23);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v30 - v26;
  (*(v17 + 16))(v21, v7, a2, v25);
  TabularTransformerToEstimatorAdaptor.init(_:)(v21, a2, v27);
  (*(v11 + 16))(v15, v31, a3);
  OUTLINED_FUNCTION_0_83();
  WitnessTable = swift_getWitnessTable();
  return sub_237E5F25C(v27, v15, v24, a3, WitnessTable, v33, v32);
}

uint64_t TabularEstimator.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v7 = v6;
  v30 = a6;
  v31 = a4;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v20 = type metadata accessor for TabularTransformerToEstimatorAdaptor(0, v17, v19, v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  (*(v27 + 16))(v25 - v24, v7, a2);
  (*(v12 + 16))(v16, a1, a3);
  TabularTransformerToEstimatorAdaptor.init(_:)(v16, a3, v22);
  OUTLINED_FUNCTION_0_83();
  WitnessTable = swift_getWitnessTable();
  return sub_237E5F25C(v26, v22, a2, v20, v31, WitnessTable, v30);
}

uint64_t TabularEstimator.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, v23, a2);
  (*(v13 + 16))(v17, a1, a3);
  return sub_237E5F25C(v21, v17, a2, a3, a4, a5, a6);
}

uint64_t sub_237E60848(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237E60A10(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_103()
{

  return swift_getWitnessTable();
}

uint64_t sub_237E60CDC()
{
  OUTLINED_FUNCTION_30_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20, &unk_237F09D50);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = OUTLINED_FUNCTION_29_31();
  type metadata accessor for TensorDescription(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_8_78();
  if (__swift_getEnumTagSinglePayload(v6, v7, v8) == 1)
  {
    sub_237C65484(v1, &qword_27DEAFB20, &unk_237F09D50);
    v9 = OUTLINED_FUNCTION_25_34();
    sub_237E63E4C(v10, v9);

    v11 = OUTLINED_FUNCTION_81_1();
    return sub_237C65484(v11, v12, &unk_237F09D50);
  }

  else
  {
    sub_237CF231C(v1, v2);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = OUTLINED_FUNCTION_7_67();
    sub_237C912CC(v14, v15, v16);

    *v0 = v17;
  }

  return result;
}

uint64_t sub_237E60E08()
{
  OUTLINED_FUNCTION_30_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE938, &unk_237F06390);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_29_31();
  v4 = sub_237EF7940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_8_78();
  if (__swift_getEnumTagSinglePayload(v6, v7, v4) == 1)
  {
    sub_237C65484(v1, &qword_27DEAE938, &unk_237F06390);
    v8 = OUTLINED_FUNCTION_25_34();
    sub_237E63F78(v9, v8);

    v10 = OUTLINED_FUNCTION_81_1();
    return sub_237C65484(v10, v11, &unk_237F06390);
  }

  else
  {
    (*(v5 + 32))(v2, v1, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = OUTLINED_FUNCTION_7_67();
    sub_237C9141C(v13, v14, v15, v16);

    *v0 = v17;
  }

  return result;
}

uint64_t sub_237E60F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_237C91804(a1, &v19);
    v6 = v20;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(&v19, v20);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    sub_237E644F0(v10, a2, a3, v3, v6);
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
    sub_237C65484(v13, v14, v15);
    sub_237E640C0(&v19);

    OUTLINED_FUNCTION_13_8();
    return sub_237C65484(v16, v17, v18);
  }
}

BOOL sub_237E610D0(uint64_t a1, double *a2, double a3)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *v4++;
    --v3;
  }

  while (v6 <= *a2 + a3);
  return v5 == 0;
}

void sub_237E61104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v8 >= v7)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v52 = MEMORY[0x277D84F90];
  sub_237C62DB0(0, v9, 0);
  v43 = v8;
  v44 = v7;
  v41 = a2;
  v42 = v9;
  v45 = a1;
  if (v9)
  {
    v10 = a1 + 32;
    v11 = a2 + 32;
    v12 = v9;
    while (v7)
    {
      if (!v8)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_26_27();
      v14 = v13();
      OUTLINED_FUNCTION_21_45(v14, v15, v16, v17, v18, v19, v20, v21, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51);
      v22 = v50;
      v24 = *(v52 + 16);
      v23 = *(v52 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_237C62DB0(v23 > 1, v24 + 1, 1);
        v22 = v50;
      }

      --v8;
      *(v52 + 16) = v24 + 1;
      *(v52 + 8 * v24 + 32) = v22;
      --v7;
      v11 += 8;
      v10 += 8;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v25 = v44;
    v46 = v45 + 32;
    v26 = v42;
    v27 = v43;
    while (v25 != v26)
    {
      if (v26 >= v25)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v26, 1))
      {
        goto LABEL_24;
      }

      if (v27 == v26)
      {
        break;
      }

      if (v26 >= v27)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_26_27();
      v29 = v28();
      OUTLINED_FUNCTION_21_45(v29, v30, v31, v32, v33, v34, v35, v36, v39, v40, v41, v42, v43, v44, v46, v47, v48, v49, v50, v51);
      v38 = *(v52 + 16);
      v37 = *(v52 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_237C62DB0(v37 > 1, v38 + 1, 1);
      }

      *(v52 + 16) = v38 + 1;
      *(v52 + 8 * v38 + 32) = v50;
      ++v26;
    }
  }
}

uint64_t sub_237E61300(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_237EF89B0();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_237F07A60)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_237F07A50)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_237E613EC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_237EF89B0();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_237F07A60)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_237E61498(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v7 = *(result + 8);
  if (!__OFSUB__(v7, 1))
  {
    v12 = sub_237E613EC(v7, a6);
    v13 = *(a2 + 16);
    if (v13)
    {
      v14 = (a2 + 32);
      v15 = *(a2 + 16);
      while (1)
      {
        v16 = *v14++;
        v6 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v12, v17, v18, v19);
          v12 = v20;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v6 >= *(v12 + 16))
        {
          goto LABEL_32;
        }

        *(v12 + 8 * v6 + 32) = 0;
        if (!--v15)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_9:
    switch(a3)
    {
      case 1:
        v21 = sub_237E613EC(v7, a5);
        if (!v13)
        {
          goto LABEL_26;
        }

        v29 = (a2 + 32);
        do
        {
          v31 = *v29++;
          v30 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E643FC(v21, v32, v33, v34);
            v21 = v35;
          }

          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v30 >= *(v21 + 16))
          {
            goto LABEL_34;
          }

          *(v21 + 8 * v30 + 32) = 0;
          --v13;
        }

        while (v13);
        goto LABEL_26;
      case 2:
        goto LABEL_28;
      case 3:
        goto LABEL_29;
      default:
        if (a5 <= 0.0)
        {
          if (v7 - 1 <= 500)
          {
LABEL_29:
            *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5188, &qword_237F1AC18);
            OUTLINED_FUNCTION_13_8();
            *(a4 + 32) = sub_237C96710(v60, v61, v62, v63);
            v64 = swift_allocObject();
            v72 = OUTLINED_FUNCTION_4_84(v64, v65, v66, v67, v68, v69, v70, v71, v74, result);
            sub_237E61BC0(v72, v12, v73);
          }

          else
          {
LABEL_28:
            *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5198, &qword_237F1AC20);
            OUTLINED_FUNCTION_13_8();
            *(a4 + 32) = sub_237C96710(v46, v47, v48, v49);
            v50 = swift_allocObject();
            v58 = OUTLINED_FUNCTION_4_84(v50, v51, v52, v53, v54, v55, v56, v57, v74, result);
            sub_237EA20AC(v58, v12, v59);
          }
        }

        else
        {
          v21 = sub_237E613EC(v7, a5);
          if (v13)
          {
            v22 = (a2 + 32);
            while (1)
            {
              v24 = *v22++;
              v23 = v24;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_237E643FC(v21, v25, v26, v27);
                v21 = v28;
              }

              if ((v23 & 0x8000000000000000) != 0)
              {
                break;
              }

              if (v23 >= *(v21 + 16))
              {
                goto LABEL_36;
              }

              *(v21 + 8 * v23 + 32) = 0;
              if (!--v13)
              {
                goto LABEL_26;
              }
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            break;
          }

LABEL_26:
          *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51A8, &qword_237F1AC28);
          *(a4 + 32) = sub_237C96710(&qword_27DEB51B0, &qword_27DEB51A8, &qword_237F1AC28, &unk_237F1C6F8);
          v36 = swift_allocObject();
          v44 = OUTLINED_FUNCTION_4_84(v36, v37, v38, v39, v40, v41, v42, v43, v74, result);
          sub_237E61B18(v44, v21, v12, v45);
        }

        sub_237E64494(v6, v76);
        return;
    }
  }

  __break(1u);
}

void sub_237E617B0(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *(result + 40);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = *(result + 8);
  v10 = v9 * v7;
  if ((v9 * v7) >> 64 != (v9 * v7) >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!__OFSUB__(v10, 1))
  {
    v14 = sub_237E613EC(v10, a6);
    v15 = *(a2 + 16);
    if (v15)
    {
      v16 = (a2 + 32);
      v17 = *(a2 + 16);
      while (1)
      {
        v19 = *v16++;
        v18 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v14, v20, v21, v22);
          v14 = v23;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        *(v14 + 8 * v18 + 32) = 0;
        if (!--v17)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_11:
    switch(a3)
    {
      case 1:
        v24 = sub_237E613EC(v10, a5);
        if (!v15)
        {
          goto LABEL_28;
        }

        v32 = (a2 + 32);
        do
        {
          v34 = *v32++;
          v33 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E643FC(v24, v35, v36, v37);
            v24 = v38;
          }

          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          if (v33 >= *(v24 + 16))
          {
            goto LABEL_36;
          }

          *(v24 + 8 * v33 + 32) = 0;
          --v15;
        }

        while (v15);
        goto LABEL_28;
      case 2:
        goto LABEL_30;
      case 3:
        goto LABEL_31;
      default:
        if (a5 <= 0.0)
        {
          if (v10 - 1 <= 500)
          {
LABEL_31:
            a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C8, &qword_237F1AC40);
            a4[4] = sub_237C96710(&qword_27DEB51D0, &qword_27DEB51C8, &qword_237F1AC40, &unk_237F1D4B8);
            v41 = swift_allocObject();
            *a4 = v41;
            sub_237E61C08(result, v14, v41 + 16);
          }

          else
          {
LABEL_30:
            a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51D8, &qword_237F1AC48);
            a4[4] = sub_237C96710(qword_280C8DC60, &qword_27DEB51D8, &qword_237F1AC48, &unk_237F15558);
            v40 = swift_allocObject();
            *a4 = v40;
            sub_237EA2120(result, v14, v40 + 16);
          }
        }

        else
        {
          v24 = sub_237E613EC(v10, a5);
          if (v15)
          {
            v25 = (a2 + 32);
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_237E643FC(v24, v28, v29, v30);
                v24 = v31;
              }

              if ((v26 & 0x8000000000000000) != 0)
              {
                break;
              }

              if (v26 >= *(v24 + 16))
              {
                goto LABEL_38;
              }

              *(v24 + 8 * v26 + 32) = 0;
              if (!--v15)
              {
                goto LABEL_28;
              }
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_28:
          a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51E0, &unk_237F1AC50);
          a4[4] = sub_237C96710(&qword_27DEB51E8, &qword_27DEB51E0, &unk_237F1AC50, &unk_237F1C6F8);
          v39 = swift_allocObject();
          *a4 = v39;
          sub_237E61B68(result, v24, v14, v39 + 16);
        }

        sub_237E64904(result, v43);
        return;
    }
  }

LABEL_41:
  __break(1u);
}

__n128 sub_237E61B18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  v6 = MEMORY[0x277D84F90];
  *(a4 + 176) = MEMORY[0x277D84F90];
  *(a4 + 184) = 0x3FF0000000000000;
  *(a4 + 192) = v6;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 64) = v6;
  *(a4 + 72) = v6;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = v6;
  *(a4 + 112) = 0x7FF8000000000000;
  *(a4 + 160) = 0;
  *(a4 + 168) = v6;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  return result;
}

__n128 sub_237E61B68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *(a4 + 184) = MEMORY[0x277D84F90];
  *(a4 + 192) = 0x3FF0000000000000;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  v7 = *(a1 + 48);
  *(a4 + 200) = v4;
  *(a4 + 48) = v7;
  *(a4 + 56) = a2;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 64) = a3;
  *(a4 + 72) = v4;
  *(a4 + 80) = v4;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = v4;
  *(a4 + 120) = 0x7FF8000000000000;
  *(a4 + 168) = 0;
  *(a4 + 176) = v4;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  return result;
}

__n128 sub_237E61BC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = MEMORY[0x277D84F90];
  *(a3 + 32) = result;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 56) = v5;
  *(a3 + 64) = v5;
  *(a3 + 88) = 0;
  *(a3 + 96) = v5;
  *(a3 + 104) = 0x7FF8000000000000;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = v5;
  *(a3 + 168) = v5;
  *(a3 + 48) = a2;
  return result;
}

__n128 sub_237E61C08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *(a3 + 104) = MEMORY[0x277D84F90];
  *(a3 + 112) = 0x7FF8000000000000;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  v6 = *(a1 + 48);
  *(a3 + 64) = v3;
  *(a3 + 72) = v3;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = v3;
  *(a3 + 176) = v3;
  *(a3 + 48) = v6;
  *(a3 + 56) = a2;
  return result;
}

unint64_t sub_237E61C54(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

__n128 BaseLogisticRegressionClassifier.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void BaseLogisticRegressionClassifier.fitted(features:annotations:classCount:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_44();
  *&v124 = v6;
  v115 = v8;
  v120 = v9;
  v149 = v10;
  v12 = v11;
  v15 = *v13;
  v14 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  *&v127 = *(v5 + 16);
  v18 = *(v5 + 24);
  LODWORD(v11) = *(v5 + 48);
  LODWORD(v125) = *(v5 + 49);
  v121 = v7;
  *&v129 = v14;
  LODWORD(v128) = v16;
  v113 = v12;
  *&v126 = v17;
  if (v11 == 1)
  {
    *&v133[0] = v15;
    *(&v133[0] + 1) = v14;
    LOBYTE(v133[1]) = v16;
    *(&v133[1] + 1) = v17;

    sub_237E6F56C(v133);
    if (v14 < 0)
    {
LABEL_69:
      __break(1u);
      return;
    }

    v20 = v19;
    if (v14)
    {
      v21 = 0;
      v22 = v17;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v22, v23, v24, v25);
          v22 = v26;
        }

        v27 = v14;
        if (v128)
        {
          if ((v21 * v15) >> 64 != (v21 * v15) >> 63)
          {
            goto LABEL_66;
          }

          v27 = 1;
        }

        if (v21 >= *(v20 + 16))
        {
          goto LABEL_62;
        }

        if (v15 > 0x7FFFFFFF)
        {
          goto LABEL_63;
        }

        if (v15 < 0xFFFFFFFF80000000)
        {
          goto LABEL_64;
        }

        if (v27 > 0x7FFFFFFF)
        {
          goto LABEL_65;
        }

        cblas_dscal_NEWLAPACK();
        ++v21;
        v14 = v129;
        if (v129 == v21)
        {
          goto LABEL_18;
        }
      }
    }

    v22 = v17;
LABEL_18:
    v28 = v121;
    v17 = v126;
  }

  else
  {
    v28 = v7;

    v20 = 0;
    v22 = v17;
  }

  v139 = v15;
  v140 = v14;
  v141 = v128;
  v142 = v22;
  v143 = v149;
  v144 = v28;
  v145 = v20;
  v29 = v28 - 1;
  if (v28 < 1)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v28 != 1)
  {
    *&v133[0] = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C62DB0(0, v28 - 1, 0);
    v30 = v121;
    v31 = 1;
    v32 = *&v133[0];
    while (1)
    {
      v33 = v31 * v14;
      if ((v31 * v14) >> 64 != (v31 * v14) >> 63)
      {
        break;
      }

      v34 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_60;
      }

      *&v133[0] = v32;
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_237C62DB0(v35 > 1, v36 + 1, 1);
        v30 = v121;
        v32 = *&v133[0];
      }

      *(v32 + 16) = v36 + 1;
      *(v32 + 8 * v36 + 32) = v34;
      if (v30 == v31)
      {
        goto LABEL_61;
      }

      if (v30 == ++v31)
      {
        v17 = v126;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_237EF8260();
LABEL_30:
  v37 = OUTLINED_FUNCTION_14_57();
  sub_237E617B0(v38, v39, v125, v40, v37, v41);

  if ((v140 * v29) >> 64 != (v140 * v29) >> 63)
  {
    goto LABEL_68;
  }

  v42 = sub_237E613EC(v140 * v29, 0.0);
  *&v133[0] = v18;
  v43 = v137;
  v44 = v138;
  __swift_mutable_project_boxed_opaque_existential_1(v136, v137);
  (*(v44 + 40))(v42, v133, v43, v44);

  if (v124)
  {
    sub_237E63DF8(&v139);
    goto LABEL_58;
  }

  if (v128)
  {
    v45 = v15;
  }

  else
  {
    v45 = v14;
  }

  v117 = v17 + 32;
  v118 = v45;
  v116 = "ght must be at least 1.";
  v114 = 0x8000000237F00E10;
  v119 = v15;
  while ((OUTLINED_FUNCTION_10_60() & 1) == 0)
  {
    v46 = OUTLINED_FUNCTION_28_30();
    __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v48 = OUTLINED_FUNCTION_13_48();
    v49(v48);
    v50 = OUTLINED_FUNCTION_28_30();
    OUTLINED_FUNCTION_9_59(v50, v51);
    v52 = OUTLINED_FUNCTION_6_69();
    v53(v52);
    memcpy(v135, v133, 0x49uLL);
    v54 = *&v135[0];

    sub_237C65484(v135, &qword_27DEB2A08, qword_237F15D10);
    v134 = v54;
    if (v145)
    {
      OUTLINED_FUNCTION_12_51();
      MEMORY[0x28223BE20](v55);
      *(&v112 - 2) = &v139;
      *(&v112 - 1) = v56;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, (&v112 - 4), v57, MEMORY[0x277D84F78] + 8);
    }

    v58 = OUTLINED_FUNCTION_10_60();
    v59 = v58;
    if (v58)
    {
      LODWORD(v126) = v58;
      v60 = v134;
      v61 = v129;
LABEL_49:
      v67 = v137;
      v68 = v138;
      __swift_project_boxed_opaque_existential_1(v136, v137);
      (*(v68 + 24))(v133, v67, v68);
      v69 = *&v133[4];
      v70 = BYTE8(v133[4]);
      memset(v132, 0, 73);
      v124 = v133[2];
      v125 = v133[0];
      v122 = v133[3];
      v123 = v133[1];
      sub_237C65484(v132, qword_27DEB0300, &qword_237F0ADD0);
      *&v133[0] = v60;
      *(&v133[0] + 1) = v121;
      v133[2] = v123;
      v133[1] = v125;
      v133[4] = v122;
      v133[3] = v124;
      *&v133[5] = v69;
      BYTE8(v133[5]) = v70;
      v131 = MEMORY[0x277D84F98];
      v147[0] = v117;
      v147[1] = v15;
      v147[2] = v61;
      v147[3] = v118;
      v148 = v128;
      memcpy(v130, v133, 0x59uLL);
      v71 = sub_237D4DA98(v147);
      OUTLINED_FUNCTION_12_51();
      MEMORY[0x28223BE20](v72);
      *(&v112 - 4) = MEMORY[0x277D83B88];
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180, &qword_237F1AB80);
      *(&v112 - 3) = v73;
      *(&v112 - 2) = MEMORY[0x277D83B98];
      OUTLINED_FUNCTION_0_84();
      v75 = sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180, &qword_237F1AB80, v74);
      *(&v112 - 1) = v75;
      KeyPath = swift_getKeyPath();
      sub_237EF8260();

      sub_237E61104(v71, v149, sub_237E6442C, 0, KeyPath);
      v78 = v77;

      v79 = sub_237CAE03C(v78);
      MEMORY[0x28223BE20](v79);
      OUTLINED_FUNCTION_27();
      *(v80 - 32) = MEMORY[0x277D83B88];
      *(v80 - 24) = v73;
      *(v80 - 16) = MEMORY[0x277D83B98];
      *(v80 - 8) = v75;
      v81 = swift_getKeyPath();

      v82 = OUTLINED_FUNCTION_1_104();
      sub_237E61104(v82, v83, v84, v85, v81);

      OUTLINED_FUNCTION_81_1();
      sub_237CAE474();
      v86 = OUTLINED_FUNCTION_1_104();
      sub_237CB0CC4(v86, v87, v88, v89, v90);
      v146[0] = v130[0];
      v146[1] = v130[1];
      v146[2] = v130[2];
      v91 = sub_237CB0030();
      sub_237C65484(v146, qword_27DEB2000, &qword_237F0FD88);
      *(&v130[1] + 1) = MEMORY[0x277D839F8];
      *v130 = v91;
      sub_237E60F7C(v130, 0xD000000000000011, v116 | 0x8000000000000000);
      sub_237CC9A9C(v133);
      v92 = v131;
      OUTLINED_FUNCTION_32_27();
      v93 = OUTLINED_FUNCTION_81_1();
      v95 = v94(v93);
      v96 = v120;
      if (v120)
      {
        v97 = v115;
        *&v130[0] = 0xD00000000000001CLL;
        *(&v130[0] + 1) = v114;
        *&v130[1] = v95;
        *(&v130[1] + 1) = v127;
        LOBYTE(v130[2]) = 0;
        *(&v130[2] + 1) = v92;

        v96(v130);
        sub_237C5EE40(v96, v97);
      }

      v15 = v119;
      if (v126)
      {
        break;
      }
    }

    else
    {
      v62 = v137;
      v63 = v138;
      __swift_project_boxed_opaque_existential_1(v136, v137);
      v64 = (*(v63 + 32))(v62, v63);
      v60 = v134;
      v61 = v129;
      if (v64 < 5 || ((OUTLINED_FUNCTION_24_35(), !v66) ? (v66 = v65 == v127) : (v66 = 1), v66))
      {
        LODWORD(v126) = v59;
        goto LABEL_49;
      }
    }
  }

  OUTLINED_FUNCTION_32_27();
  v98 = OUTLINED_FUNCTION_81_1();
  v99(v98);
  memcpy(v133, v130, 0x49uLL);
  v100 = *&v133[0];

  v101 = sub_237C65484(v133, &qword_27DEB2A08, qword_237F15D10);
  v132[0] = v100;
  if (v145)
  {
    MEMORY[0x28223BE20](v101);
    *(&v112 - 2) = &v139;
    *(&v112 - 1) = v102;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E64468, (&v112 - 4), v103, MEMORY[0x277D84F78] + 8);
    sub_237E63DF8(&v139);
    v100 = v132[0];
  }

  else
  {
    sub_237E63DF8(&v139);
  }

  OUTLINED_FUNCTION_9_59(v136, v137);
  v104 = OUTLINED_FUNCTION_5_83();
  v105(v104);
  v128 = v135[3];
  v129 = v135[1];
  v126 = v135[2];
  v127 = v135[0];
  v106 = *&v135[4];
  v107 = BYTE8(v135[4]);
  memset(v130, 0, 73);
  sub_237C65484(v130, qword_27DEB0300, &qword_237F0ADD0);
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0xD00000000000001CLL, v114);
  }

  v108 = v113;
  v109 = v121;
  *v113 = v100;
  v108[1] = v109;
  v110 = v129;
  *(v108 + 1) = v127;
  *(v108 + 2) = v110;
  v111 = v128;
  *(v108 + 3) = v126;
  *(v108 + 4) = v111;
  v108[10] = v106;
  *(v108 + 88) = v107;
LABEL_58:
  __swift_destroy_boxed_opaque_existential_1(v136);
  OUTLINED_FUNCTION_20_41();
}

void BaseLogisticRegressionClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_44();
  v141 = v9;
  v143 = v10;
  v155 = v11;
  v13 = v12;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  v153 = *v19;
  v154 = v8;
  v152 = v19[1];
  v151 = *(v19 + 16);
  v20 = v19[3];
  v162 = v21;
  v163 = v20;
  v161 = *(v6 + 16);
  v23 = *(v6 + 24);
  v22 = *(v6 + 32);
  v24 = *(v6 + 40);
  LODWORD(v20) = *(v6 + 48);
  v25 = *(v6 + 49);
  v165 = v15;
  v191 = v16;
  v164 = v17;
  v139 = v13;
  *&v158 = v7;
  v160 = v24;
  LODWORD(v159) = v25;
  if (v20 == 1)
  {
    *&v172[0] = v15;
    *(&v172[0] + 1) = v16;
    LOBYTE(v172[1]) = v17;
    *(&v172[1] + 1) = v18;

    sub_237E6F56C(v172);
    v27 = v191;
    if (v191 < 0)
    {
LABEL_84:
      __break(1u);
      return;
    }

    v28 = v26;
    if (v191)
    {
      v29 = 0;
      v30 = v18;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v30, v31, v32, v33);
          v30 = v34;
        }

        v35 = v191;
        if (v164)
        {
          if ((v29 * v165) >> 64 != (v29 * v165) >> 63)
          {
            goto LABEL_78;
          }

          v35 = 1;
        }

        if (v29 >= *(v28 + 16))
        {
          goto LABEL_74;
        }

        if (v165 > 0x7FFFFFFF)
        {
          goto LABEL_75;
        }

        if (v165 < 0xFFFFFFFF80000000)
        {
          goto LABEL_76;
        }

        if (v35 > 0x7FFFFFFF)
        {
          goto LABEL_77;
        }

        cblas_dscal_NEWLAPACK();
        v27 = v191;
        if (v191 == ++v29)
        {
          goto LABEL_18;
        }
      }
    }

    v30 = v18;
LABEL_18:
    v36 = v154;
  }

  else
  {
    v36 = v8;

    v27 = v191;
    v28 = 0;
    v30 = v18;
  }

  v178 = v165;
  v179 = v27;
  v180 = v164;
  v181 = v30;
  v182 = v155;
  v183 = v36;
  v184 = v28;
  v37 = v36 - 1;
  if (v36 < 1)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v36 != 1)
  {
    *&v172[0] = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C62DB0(0, v36 - 1, 0);
    v38 = v154;
    v39 = *&v172[0];
    v40 = 1;
    v41 = v179;
    while (1)
    {
      v42 = v40 * v41;
      if ((v40 * v41) >> 64 != (v40 * v41) >> 63)
      {
        break;
      }

      v43 = v42 - 1;
      if (__OFSUB__(v42, 1))
      {
        goto LABEL_72;
      }

      *&v172[0] = v39;
      v45 = *(v39 + 16);
      v44 = *(v39 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_237C62DB0(v44 > 1, v45 + 1, 1);
        v38 = v154;
        v39 = *&v172[0];
      }

      *(v39 + 16) = v45 + 1;
      *(v39 + 8 * v45 + 32) = v43;
      if (v38 == v40)
      {
        goto LABEL_73;
      }

      if (v38 == ++v40)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_237EF8260();
LABEL_30:
  v46 = OUTLINED_FUNCTION_14_57();
  sub_237E617B0(v47, v48, v159, v49, v46, v50);

  sub_237CDC02C(v160, 0.0);
  if ((v179 * v37) >> 64 != (v179 * v37) >> 63)
  {
    goto LABEL_83;
  }

  v142 = v51;
  v52 = sub_237E613EC(v179 * v37, 0.0);
  *&v172[0] = v23;
  v53 = v176;
  v54 = v177;
  __swift_mutable_project_boxed_opaque_existential_1(v175, v176);
  (*(v54 + 40))(v52, v172, v53, v54);

  if (v158)
  {

    sub_237E63DF8(&v178);
    goto LABEL_33;
  }

  if (v164)
  {
    v55 = v165;
  }

  else
  {
    v55 = v191;
  }

  v149 = v18 + 32;
  v150 = v55;
  v56 = v153;
  if (!v151)
  {
    v56 = v152;
  }

  v147 = v56;
  v148 = "ght must be at least 1.";
  v145 = "Unsupported input type ";
  v146 = v163 + 32;
  v140 = 0x8000000237F00E10;
  do
  {
    while (1)
    {
      v57 = OUTLINED_FUNCTION_22_37();
      __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
      (*(v52 + 56))(v18, v52);
      v59 = OUTLINED_FUNCTION_22_37();
      OUTLINED_FUNCTION_9_59(v59, v60);
      v61(v172, v18, v52);
      memcpy(v174, v172, 0x49uLL);
      v62 = v174[0];

      sub_237C65484(v174, &qword_27DEB2A08, qword_237F15D10);
      v173 = v62;
      v144 = v184;
      if (v184)
      {
        OUTLINED_FUNCTION_12_51();
        MEMORY[0x28223BE20](v63);
        OUTLINED_FUNCTION_17_48();
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, v18, v64, MEMORY[0x277D84F78] + 8);
        v62 = v173;
      }

      v160 = v62;
      v65 = v176;
      v66 = v177;
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v67 = *(v66 + 24);

      v67(v170, v65, v66);
      v68 = *&v170[4];
      LOBYTE(v67) = BYTE8(v170[4]);
      memset(v171, 0, 73);
      v158 = v170[2];
      v159 = v170[0];
      v156 = v170[3];
      v157 = v170[1];
      sub_237C65484(v171, qword_27DEB0300, &qword_237F0ADD0);
      *&v172[0] = v62;
      *(&v172[0] + 1) = v154;
      v172[1] = v159;
      v172[2] = v157;
      v172[3] = v158;
      v172[4] = v156;
      *&v172[5] = v68;
      BYTE8(v172[5]) = v67;
      v168[0] = MEMORY[0x277D84F98];
      v189[0] = v149;
      v189[1] = v165;
      v189[2] = v191;
      v189[3] = v150;
      v190 = v164;
      memcpy(v170, v172, 0x59uLL);
      sub_237EF8260();

      v69 = sub_237D4DA98(v189);
      *&v156 = v69;
      MEMORY[0x28223BE20](v69);
      *(&v138 - 4) = MEMORY[0x277D83B88];
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180, &qword_237F1AB80);
      *(&v138 - 3) = v70;
      *&v159 = v70;
      *(&v138 - 2) = MEMORY[0x277D83B98];
      OUTLINED_FUNCTION_0_84();
      v72 = sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180, &qword_237F1AB80, v71);
      *(&v138 - 1) = v72;
      v73 = v72;
      *&v158 = v72;
      KeyPath = swift_getKeyPath();
      v75 = v155;
      sub_237EF8260();

      sub_237E61104(v69, v75, sub_237E6442C, 0, KeyPath);
      v77 = v76;

      v78 = sub_237CAE03C(v77);
      MEMORY[0x28223BE20](v78);
      OUTLINED_FUNCTION_27();
      *(v79 - 32) = MEMORY[0x277D83B88];
      *(v79 - 24) = v70;
      *(v79 - 16) = MEMORY[0x277D83B98];
      *(v79 - 8) = v73;
      v80 = swift_getKeyPath();

      v81 = v156;
      v82 = OUTLINED_FUNCTION_1_104();
      sub_237E61104(v82, v83, v84, v85, v80);

      v86 = sub_237CAE474();
      *&v157 = sub_237E6442C;
      sub_237CB0CC4(v81, v75, sub_237E6442C, 0, v86);
      v188[0] = v170[0];
      v188[1] = v170[1];
      v188[2] = v170[2];
      v87 = sub_237CB0030();
      sub_237C65484(v188, qword_27DEB2000, &qword_237F0FD88);
      *(&v170[1] + 1) = MEMORY[0x277D839F8];
      *v170 = v87;
      sub_237E60F7C(v170, 0xD000000000000011, v148 | 0x8000000000000000);
      v186[0] = v146;
      v186[1] = v153;
      v186[2] = v152;
      v186[3] = v147;
      v187 = v151;
      memcpy(v170, v172, 0x59uLL);
      v88 = sub_237D4DA98(v186);
      OUTLINED_FUNCTION_12_51();
      MEMORY[0x28223BE20](v89);
      OUTLINED_FUNCTION_27();
      v90 = v159;
      *(v91 - 32) = MEMORY[0x277D83B88];
      *(v91 - 24) = v90;
      v92 = v158;
      *(v91 - 16) = MEMORY[0x277D83B98];
      *(v91 - 8) = v92;
      v93 = swift_getKeyPath();
      v94 = v162;
      sub_237EF8260();

      sub_237E61104(v88, v94, sub_237E6442C, 0, v93);
      v96 = v95;

      v97 = sub_237CAE03C(v96);
      MEMORY[0x28223BE20](v97);
      OUTLINED_FUNCTION_27();
      *(v98 - 32) = MEMORY[0x277D83B88];
      *(v98 - 24) = v90;
      *(v98 - 16) = MEMORY[0x277D83B98];
      *(v98 - 8) = v92;
      v99 = swift_getKeyPath();

      sub_237E61104(v88, v94, v157, 0, v99);

      sub_237CAE474();
      v100 = OUTLINED_FUNCTION_1_104();
      sub_237CB0CC4(v100, v101, v102, v103, v104);
      v185[0] = v170[0];
      v185[1] = v170[1];
      v185[2] = v170[2];
      v105 = sub_237CB0030();
      sub_237C65484(v185, qword_27DEB2000, &qword_237F0FD88);
      *(&v170[1] + 1) = MEMORY[0x277D839F8];
      *v170 = v105;
      sub_237E60F7C(v170, 0xD000000000000013, v145 | 0x8000000000000000);
      sub_237CC9A9C(v172);

      v18 = v168[0];
      OUTLINED_FUNCTION_31_25();
      *v170 = v22;
      v52 = sub_237E6A4FC(v161, v170, v168, v99);
      if (*(v18 + 16))
      {
        v106 = sub_237D30F88();
        if (v107)
        {
          sub_237CBA478(*(v18 + 56) + 32 * v106, v170);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
          if (swift_dynamicCast())
          {
            v108 = *v168;
            OUTLINED_FUNCTION_31_25();
            v109 = j__OUTLINED_FUNCTION_0_86(v18, v99);
            v110 = *(v142 + 16);
            if (!v110)
            {
              goto LABEL_79;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v114 = v142;
            }

            else
            {
              sub_237E642C0(v142, v111, v112, v113);
            }

            v115 = v109 % v110;
            if (v109 % v110 < 0)
            {
              goto LABEL_80;
            }

            v116 = *(v114 + 16);
            if (v115 >= v116)
            {
              goto LABEL_81;
            }

            *(v114 + 8 * v115 + 32) = 1.0 - v108;
            v142 = v114;
            if (v109 >= v116)
            {
              v117 = 32;
              while (v116)
              {
                v118 = *(v114 + v117);
                v117 += 8;
                --v116;
                if (v118 > v22 + 1.0 - v108)
                {
                  goto LABEL_54;
                }
              }

              break;
            }
          }
        }
      }

LABEL_54:
      if (v52)
      {
        break;
      }

      OUTLINED_FUNCTION_11_57();
      v120 = OUTLINED_FUNCTION_5_83();
      v119 = 0;
      if (v121(v120) < 5)
      {
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_24_35();
      v123 = v123 || v122 == v161;
      if (v123)
      {
        goto LABEL_62;
      }
    }

    v119 = 1;
LABEL_62:
    OUTLINED_FUNCTION_11_57();
    v124 = OUTLINED_FUNCTION_5_83();
    v126 = v125(v124);
    v127 = v143;
    if (v143)
    {
      *&v170[0] = 0xD00000000000001CLL;
      v52 = v140;
      v128 = v141;
      *(&v170[0] + 1) = v140;
      *&v170[1] = v126;
      *(&v170[1] + 1) = v161;
      LOBYTE(v170[2]) = 0;
      *(&v170[2] + 1) = v18;

      v127(v170);
      sub_237C5EE40(v127, v128);
    }
  }

  while (!v119);

  v129 = v176;
  v130 = v177;
  __swift_project_boxed_opaque_existential_1(v175, v176);
  (*(v130 + 24))(v168, v129, v130);
  memcpy(v170, v168, 0x49uLL);
  v131 = *&v170[0];

  sub_237C65484(v170, &qword_27DEB2A08, qword_237F15D10);
  v169 = v131;
  if (v144)
  {
    OUTLINED_FUNCTION_12_51();
    MEMORY[0x28223BE20](v132);
    OUTLINED_FUNCTION_17_48();
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, v131, v133, MEMORY[0x277D84F78] + 8);
    sub_237E63DF8(&v178);
    v131 = v169;
  }

  else
  {
    sub_237E63DF8(&v178);
  }

  v134 = v139;
  OUTLINED_FUNCTION_9_59(v175, v176);
  v135 = OUTLINED_FUNCTION_5_83();
  v136(v135);
  memcpy(v167, v166, sizeof(v167));
  v137 = v154;
  *v134 = v131;
  v134[1] = v137;
  memset(v168, 0, 73);
  sub_237C65484(v168, qword_27DEB0300, &qword_237F0ADD0);
  memcpy(v134 + 2, v167, 0x49uLL);
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v175);
  OUTLINED_FUNCTION_20_41();
}

void BaseLogisticRegressionClassifier.update(_:features:annotations:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_44();
  v112 = v7;
  v113 = v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v5 + 16);
  v110 = v14;
  v111 = v13;
  v16 = *(v5 + 24);
  v15 = *(v5 + 32);
  LODWORD(v13) = *(v5 + 48);
  v114 = *(v5 + 49);
  v115 = v17;
  v18 = v17[1];
  v117 = v9;
  v108 = v19;
  v109 = v12;
  if (v13 == 1)
  {
    v118[0] = v9;
    v118[1] = v10;
    LOBYTE(v118[2]) = v11;
    v118[3] = v12;

    sub_237E6F56C(v118);
    if (v10 < 0)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v21 = v20;
    if (v10)
    {
      v22 = 0;
      v116 = v20 + 32;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v12, v23, v24, v25);
          v12 = v26;
        }

        v27 = v10;
        if (v11)
        {
          if ((v22 * v117) >> 64 != (v22 * v117) >> 63)
          {
            goto LABEL_57;
          }

          v27 = 1;
        }

        if (v22 >= *(v21 + 16))
        {
          goto LABEL_53;
        }

        if (v117 > 0x7FFFFFFF)
        {
          goto LABEL_54;
        }

        if (v117 < 0xFFFFFFFF80000000)
        {
          goto LABEL_55;
        }

        if (v27 > 0x7FFFFFFF)
        {
          goto LABEL_56;
        }

        cblas_dscal_NEWLAPACK();
      }

      while (v10 != ++v22);
    }

    v28 = v112;
  }

  else
  {
    v28 = v7;

    v21 = 0;
  }

  v129 = v117;
  v130 = v10;
  v131 = v11;
  v132 = v12;
  v133 = v28;
  v134 = v18;
  v135 = v21;
  v29 = v18 - 1;
  if (v18 < 1)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v18 != 1)
  {
    v118[0] = MEMORY[0x277D84F90];
    sub_237EF8260();
    v116 = v18 - 1;
    sub_237C62DB0(0, v18 - 1, 0);
    v30 = 1;
    v31 = v118[0];
    while (1)
    {
      v32 = v30 * v10;
      if ((v30 * v10) >> 64 != (v30 * v10) >> 63)
      {
        break;
      }

      v33 = v32 - 1;
      if (__OFSUB__(v32, 1))
      {
        goto LABEL_51;
      }

      v118[0] = v31;
      v12 = *(v31 + 16);
      v34 = *(v31 + 24);
      v21 = v12 + 1;
      if (v12 >= v34 >> 1)
      {
        sub_237C62DB0(v34 > 1, v12 + 1, 1);
        v31 = v118[0];
      }

      *(v31 + 16) = v21;
      *(v31 + 8 * v12 + 32) = v33;
      if (v18 == v30)
      {
        goto LABEL_52;
      }

      if (v18 == ++v30)
      {
        v29 = v116;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  sub_237EF8260();
LABEL_28:
  v35 = OUTLINED_FUNCTION_14_57();
  sub_237E617B0(v36, v37, v114, v38, v35, v39);

  v41 = v115 + 2;
  v40 = v115[2];
  if (!v40)
  {
    if ((v130 * v29) >> 64 != (v130 * v29) >> 63)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v45 = sub_237E613EC(v130 * v29, 0.0);
    v118[0] = v16;
    v47 = v124;
    v46 = v125;
    __swift_mutable_project_boxed_opaque_existential_1(v123, v124);
    (*(v46 + 40))(v45, v118, v47, v46);

    if (!v113)
    {
LABEL_35:
      v48 = v124;
      v49 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v118[0] = v15;
      if ((sub_237E6A4FC(v111, v118, v48, v49) & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_2_95();
        __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
        v52 = OUTLINED_FUNCTION_13_48();
        v53(v52);
        v61 = OUTLINED_FUNCTION_2_95();
        OUTLINED_FUNCTION_9_59(v61, v62);
        v63 = OUTLINED_FUNCTION_6_69();
        v64(v63);
        memcpy(v122, v118, 0x49uLL);
        v65 = v122[0];

        sub_237C65484(v122, &qword_27DEB2A08, qword_237F15D10);
        if (v135)
        {
          OUTLINED_FUNCTION_12_51();
          MEMORY[0x28223BE20](v66);
          v106 = &v129;
          v107 = v67;
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
          DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, v105, v68, MEMORY[0x277D84F78] + 8);
          sub_237E63DF8(&v129);
        }

        else
        {
          sub_237E63DF8(&v129);
        }

        v69 = v115;

        *v69 = v65;
        v70 = OUTLINED_FUNCTION_2_95();
        OUTLINED_FUNCTION_9_59(v70, v71);
        v72 = OUTLINED_FUNCTION_6_69();
        v73(v72);
        memcpy(v120, v118, sizeof(v120));
        memcpy(v121, v41, 0x49uLL);
        sub_237C65484(v121, qword_27DEB0300, &qword_237F0ADD0);
        memcpy(v41, v120, 0x49uLL);
        memcpy(v118, v69, 0x59uLL);
        v119 = MEMORY[0x277D84F98];
        if (v11)
        {
          v74 = v117;
        }

        else
        {
          v74 = v10;
        }

        v127[0] = v109 + 32;
        v127[1] = v117;
        v127[2] = v10;
        v127[3] = v74;
        v128 = v11;
        v75 = sub_237D4DA98(v127);
        MEMORY[0x28223BE20](v75);
        v105[0] = MEMORY[0x277D83B88];
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180, &qword_237F1AB80);
        v105[1] = v76;
        v106 = MEMORY[0x277D83B98];
        OUTLINED_FUNCTION_0_84();
        v79 = sub_237C96710(v77, &qword_27DEB5180, &qword_237F1AB80, v78);
        v107 = v79;
        KeyPath = swift_getKeyPath();
        v81 = v112;
        sub_237EF8260();

        sub_237E61104(v75, v81, sub_237E6442C, 0, KeyPath);
        v83 = v82;

        v84 = sub_237CAE03C(v83);
        MEMORY[0x28223BE20](v84);
        OUTLINED_FUNCTION_27();
        *(v85 - 32) = MEMORY[0x277D83B88];
        *(v85 - 24) = v76;
        *(v85 - 16) = MEMORY[0x277D83B98];
        *(v85 - 8) = v79;
        v86 = swift_getKeyPath();

        v87 = OUTLINED_FUNCTION_27_28();
        sub_237E61104(v87, v88, v89, v90, v86);

        sub_237CAE474();
        v91 = OUTLINED_FUNCTION_27_28();
        sub_237CB0CC4(v91, v92, v93, v94, v95);
        v96 = sub_237CB0030();
        sub_237C65484(&v126, qword_27DEB2000, &qword_237F0FD88);
        v118[3] = MEMORY[0x277D839F8];
        *v118 = v96;
        sub_237E60F7C(v118, 0xD000000000000011, 0x8000000237EFB8A0);
        v97 = v119;
        v98 = OUTLINED_FUNCTION_2_95();
        __swift_project_boxed_opaque_existential_1(v98, v99);
        v100 = OUTLINED_FUNCTION_6_69();
        v102 = v101(v100);
        v103 = v110;
        if (v110)
        {
          v118[0] = 0xD00000000000001CLL;
          v118[1] = 0x8000000237F00E10;
          v118[2] = v102;
          v118[3] = v111;
          LOBYTE(v118[4]) = 0;
          v118[5] = v97;
          v104 = v108;

          v103(v118);
          sub_237C5EE40(v103, v104);
        }

        goto LABEL_40;
      }
    }

LABEL_37:
    sub_237E63DF8(&v129);
LABEL_40:
    __swift_destroy_boxed_opaque_existential_1(v123);
    OUTLINED_FUNCTION_20_41();
    return;
  }

  if ((v130 * v29) >> 64 != (v130 * v29) >> 63)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v42 = *(v40 + 16);
  if (v42 == v130 * v29)
  {
    v118[0] = v115[2];
    memcpy(&v118[1], v115 + 3, 0x41uLL);
    v43 = OUTLINED_FUNCTION_2_95();
    __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
    (*(v21 + 48))(v118, v12, v21);
    if (!v113)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  sub_237E63DF8(&v129);
  if (v29)
  {
    v54 = v42 / v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_237F04760;
    *(v55 + 32) = v117;
    *(v55 + 40) = v10;
    v118[0] = 0;
    v118[1] = 0xE000000000000000;
    sub_237EF9330();

    v118[0] = 0xD000000000000017;
    v118[1] = 0x8000000237F00E30;
    v122[0] = v54;
    v56 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v56);

    MEMORY[0x2383E0710](0xD000000000000015, 0x8000000237F00E50);
    v122[0] = v10;
    v57 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v57);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v58 = v118[0];
    v59 = v118[1];
    sub_237C84150();
    swift_allocError();
    *v60 = v55;
    *(v60 + 8) = v58;
    *(v60 + 16) = v59;
    *(v60 + 24) = 0;
    *(v60 + 32) = 6;
    swift_willThrow();
    goto LABEL_40;
  }

LABEL_62:
  __break(1u);
}

__n128 BaseLogisticRegressionClassifier.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 48);
  return result;
}

__n128 BaseLogisticRegressionClassifier.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

double BaseLogisticRegressionClassifier.makeTransformer(classCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 73) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = a1;
  return result;
}

uint64_t sub_237E63E4C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_237D2FC30(a2);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2F0, &qword_237F055A8);
    sub_237EF96B0();

    v7 = *(v14 + 56);
    v8 = type metadata accessor for TensorDescription(0);
    OUTLINED_FUNCTION_4();
    sub_237CF231C(v7 + *(v9 + 72) * v6, a1);
    sub_237EF96D0();
    *v2 = v14;
    v10 = a1;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = type metadata accessor for TensorDescription(0);
    v10 = a1;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_237E63F78@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_237D2FC30(a2);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2E0, &qword_237F1AC10);
    sub_237EF96B0();

    v7 = *(v13 + 56);
    v8 = sub_237EF7940();
    (*(*(v8 - 8) + 32))(a1, v7 + *(*(v8 - 8) + 72) * v6, v8);
    sub_237EF96D0();
    *v2 = v13;
    v9 = a1;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_237EF7940();
    v9 = a1;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

double sub_237E640C0@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_237D30F88();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0, &qword_237F1CCB0);
    sub_237EF96B0();

    sub_237C91804((*(v7 + 56) + 32 * v5), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    sub_237EF96D0();
    *v1 = v7;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_237E64338(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_237EF9710();
  }

  return sub_237EF93C0();
}

uint64_t sub_237E6442C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237C95FE0(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237E644F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a4;
  (*(v10 + 16))(v12, a1, a5);
  sub_237E6461C(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v16, a5);
  result = (*(v10 + 8))(a1, a5);
  *a4 = v16;
  return result;
}

_OWORD *sub_237E6461C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v28 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v12 = *a5;
  v13 = sub_237D30F88();
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0, &qword_237F1CCB0);
  if ((sub_237EF96B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_237D30F88();
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *a5;
  if (v16)
  {
    v20 = (v19[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return sub_237C91804(&v27, v20);
  }

  else
  {
    v22 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
    v23 = MEMORY[0x28223BE20](v22);
    v25 = &v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25, v23);
    sub_237E64830(v15, a2, a3, v25, v19, a6);
    __swift_destroy_boxed_opaque_existential_1(&v27);
    return sub_237EF8260();
  }
}

_OWORD *sub_237E64830(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_237C91804(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_60()
{
  v2 = v0[77];
  v3 = v0[78];
  __swift_project_boxed_opaque_existential_1(v0 + 74, v2);
  v0[51] = v1;
  v4 = v0[20];

  return sub_237E6A4FC(v4, (v0 + 51), v2, v3);
}

void *OUTLINED_FUNCTION_11_57()
{
  v2 = *(v0 + 904);

  return __swift_project_boxed_opaque_existential_1((v0 + 880), v2);
}

uint64_t OUTLINED_FUNCTION_21_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20)
{

  return swift_getAtKeyPath();
}

void *OUTLINED_FUNCTION_31_25()
{
  v2 = *(v0 + 904);

  return __swift_project_boxed_opaque_existential_1((v0 + 880), v2);
}

void *OUTLINED_FUNCTION_32_27()
{
  v2 = *(v0 + 616);

  return __swift_project_boxed_opaque_existential_1((v0 + 592), v2);
}

uint64_t sub_237E64C78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_237E64CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237E64D1C(unint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1[10];
  if (*(v2 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = (v2 + (a1 << 6));
  v4 = v3[3];
  v14 = v3[2];
  v15 = v4;
  v5 = v3[5];
  v16 = v3[4];
  v17 = v5;
  v6 = *v1;
  v7 = v1[1];
  switch(v7 >> 62)
  {
    case 1uLL:
      v10 = v6 >> 32;
      if (v6 >> 32 < v6)
      {
        goto LABEL_16;
      }

      v9 = v6;
      goto LABEL_11;
    case 2uLL:
      goto LABEL_6;
    case 3uLL:
      memset(v13, 0, 14);
      v8 = *(&v14 + 1);
      v6 = v15;
      if (((*(&v14 + 1) | v15) & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    default:
      v13[0] = *v1;
      LODWORD(v13[1]) = v7;
      WORD2(v13[1]) = WORD2(v7);
      v8 = *(&v14 + 1);
      v6 = v15;
      if (((*(&v14 + 1) | v15) & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_6:
        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
LABEL_11:
        sub_237E65FA8(v9, v10, &v14, v18);
      }

      else
      {
LABEL_8:
        v18[0] = sub_237E65114(v13 + v6, v8);
        v18[1] = v11;
      }

      return v18[0];
  }
}

uint64_t sub_237E64E50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v29 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v17 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v18 = a1;
      v12 = sub_237EF5CA0();
      if (!v12)
      {
        goto LABEL_14;
      }

      v19 = sub_237EF5CC0();
      if (__OFSUB__(v18, v19))
      {
LABEL_26:
        __break(1u);
      }

      v12 += v18 - v19;
LABEL_14:
      v15 = v17 - v18;
LABEL_15:
      v20 = sub_237EF5CB0();
      if (v20 >= v15)
      {
        v21 = v15;
      }

      else
      {
        v21 = v20;
      }

      v22 = (v21 + v12);
      if (v12)
      {
        v8 = v22;
      }

      else
      {
        v8 = 0;
      }

      v9 = v12;
      return sub_237E65E7C(v9, v8, a3, a4);
    case 2uLL:
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = sub_237EF5CA0();
      if (!v12)
      {
        goto LABEL_6;
      }

      v13 = sub_237EF5CC0();
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_25;
      }

      v12 += v10 - v13;
LABEL_6:
      v14 = __OFSUB__(v11, v10);
      v15 = v11 - v10;
      if (!v14)
      {
        goto LABEL_15;
      }

      __break(1u);
      return sub_237E65F3C(0, 0, a3, a4);
    case 3uLL:
      return sub_237E65F3C(0, 0, a3, a4);
    default:
      v23 = a1;
      v24 = a2;
      v25 = BYTE2(a2);
      v26 = BYTE3(a2);
      v27 = BYTE4(a2);
      v28 = BYTE5(a2);
      v8 = &v23 + BYTE6(a2);
      v9 = &v23;
      return sub_237E65E7C(v9, v8, a3, a4);
  }
}

uint64_t sub_237E65044(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
  v8 = sub_237C96710(&qword_27DEB5210, &qword_27DEAECA0, &unk_237F0EF50, MEMORY[0x277CC9C28]);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_237E66684(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_237E65114(uint64_t a1, uint64_t a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5208, &unk_237F1AD38);
  v11 = sub_237C96710(&qword_280C8CD58, &qword_27DEB5208, &unk_237F1AD38, MEMORY[0x277CC9BC0]);
  v9[0] = a1;
  v9[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v9, v10);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  else
  {
    v5 = 0;
  }

  sub_237E66684(*v4, v5, &v8);
  v6 = v8;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

void *sub_237E651E4@<X0>(void *a1@<X8>)
{
  __src[0] = xmmword_237F1AC60;
  *&__src[1] = 0x200000000;
  *(&__src[1] + 8) = 0u;
  *(&__src[2] + 8) = 0u;
  *(&__src[3] + 8) = 0u;
  *(&__src[4] + 1) = 0;
  *&__src[5] = MEMORY[0x277D84F90];
  v4[0] = __src[1];
  v4[1] = __src[2];
  v4[2] = __src[3];
  v4[3] = 0uLL;
  sub_237E659E8(64, 0);
  sub_237E6604C(__src, v4);
  return memcpy(a1, __src, 0x58uLL);
}

void sub_237E6528C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  MEMORY[0x2383DE0D0](*v2, v2[1]);
  v6 = MEMORY[0x2383DE0D0](a1, a2);
  v7 = sub_237E65898(v6, 64);
  v8 = MEMORY[0x2383DE0D0](*v3, v3[1]);
  v9 = v8 + 64;
  if (__OFADD__(v8, 64))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_237D947B0(2, v9, v6, v38);
  sub_237D86CA4();
  v10 = OUTLINED_FUNCTION_3_88();
  OUTLINED_FUNCTION_0_85(v10, v11, v12, v13, v14, v15, v16, v17, v18, v32, v35, v38[0], v38[1], v19, v38[2]);
  if (!v21)
  {
    v22 = OUTLINED_FUNCTION_1_105(v20, v33, v36, *&v38[0], *(&v38[0] + 1), *&v38[1], *(&v38[1] + 1), *&v38[2], *(&v38[2] + 1), *&v38[3], *(&v38[3] + 1), v38[4], v38[5], v38[6], v38[7]);
    OUTLINED_FUNCTION_2_96(v22, v23, v24, v25, v26, v27, v28, v29, v34, v37, v38[0]);
    sub_237E64E50(a1, a2, v3, v7, v30, v31);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_237E65360(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x2383DE0D0](*v1, v1[1]);
  v4 = *(a1 + 16);
  if (v4 >> 61)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = 4 * v4;
  v6 = sub_237E65898(4 * v4, 64);
  v7 = MEMORY[0x2383DE0D0](*v2, v2[1]);
  v8 = v7 + 64;
  if (__OFADD__(v7, 64))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_237D947B0(1, v8, v5, v35);
  sub_237D86CA4();
  v9 = OUTLINED_FUNCTION_3_88();
  OUTLINED_FUNCTION_0_85(v9, v10, v11, v12, v13, v14, v15, v16, v17, v29, v32, v35[0], v35[1], v18, v35[2]);
  if (!v20)
  {
    v21 = OUTLINED_FUNCTION_1_105(v19, v30, v33, *&v35[0], *(&v35[0] + 1), *&v35[1], *(&v35[1] + 1), *&v35[2], *(&v35[2] + 1), *&v35[3], *(&v35[3] + 1), v35[4], v35[5], v35[6], v35[7]);
    OUTLINED_FUNCTION_2_96(v21, v22, v23, v24, v25, v26, v27, v28, v31, v34, v35[0]);
    sub_237E65E44(a1, v2, v6);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_237E6542C(uint64_t *a1)
{
  v2 = v1;
  v53 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2383DE0D0](*v2, v2[1]);
  v5 = v4 + 64;
  if (__OFADD__(v4, 64))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  if (v5 < 0)
  {
    goto LABEL_46;
  }

  v6 = a1[10];
  v39 = *(v6 + 16);
  if (v39)
  {
    v7 = 0;
    v38 = 0;
    v8 = v6 + 56;
    v40 = v2;
    while (2)
    {
      v9 = *(v8 - 16);
      v10 = *(v8 - 8);
      v11 = *(v8 - 24);
      v42 = *v8;
      v43 = *(v8 + 16);
      v44 = *(v8 + 32);
      if (__CFADD__(v5, v9))
      {
        __break(1u);
      }

      else
      {
        v45 = *v8;
        v46 = *(v8 + 16);
        v47 = *(v8 + 32);
        v12 = v2[10];
        v13 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237D0B9C8();
          v12 = v33;
        }

        v14 = *(v12 + 16);
        if (v14 >= *(v12 + 24) >> 1)
        {
          sub_237D0B9C8();
          v12 = v34;
        }

        *(v12 + 16) = v14 + 1;
        v15 = v12 + (v14 << 6);
        *(v15 + 32) = v11;
        *(v15 + 40) = v9;
        *(v15 + 48) = v5;
        *(v15 + 88) = v47;
        *(v15 + 72) = v46;
        *(v15 + 56) = v45;
        v16 = v40;
        v40[10] = v12;
        v17 = v13;
        if (!v13)
        {
          if ((v10 | v5) < 0)
          {
            goto LABEL_40;
          }

          v38 = v5 - v10;
          v16 = v40;
        }

        v18 = *(v16 + 4);
        v19 = __CFADD__(v18, 1);
        v20 = v18 + 1;
        if (!v19)
        {
          v2 = v16;
          *(v16 + 4) = v20;
          *&v52[8] = v42;
          *&v52[24] = v43;
          *&v52[40] = v44;
          *&v51 = v11;
          *(&v51 + 1) = v9;
          *v52 = v5;
          v49 = MEMORY[0x277D838B0];
          v50 = MEMORY[0x277CC9C18];
          *&v48 = &v51;
          *(&v48 + 1) = &v53;
          __swift_project_boxed_opaque_existential_1(&v48, MEMORY[0x277D838B0]);
          sub_237EF5FB0();
          __swift_destroy_boxed_opaque_existential_1(&v48);
          v21 = v10 + v9;
          if (__CFADD__(v10, v9))
          {
            goto LABEL_37;
          }

          if (((v21 | v10) & 0x8000000000000000) == 0)
          {
            if (v21 < v10)
            {
              goto LABEL_39;
            }

            v7 = v17 + 1;
            v41 = v5 + v9;
            v8 += 64;
            v22 = sub_237EF5FC0();
            v24 = v23;
            *&v52[8] = MEMORY[0x277CC9318];
            *&v52[16] = MEMORY[0x277CC9300];
            *&v51 = v22;
            *(&v51 + 1) = v23;
            v25 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277CC9318]);
            v26 = *v25;
            v27 = v25[1];
            switch(v27 >> 62)
            {
              case 1uLL:
                if (v26 >> 32 < v26)
                {
                  goto LABEL_41;
                }

                v31 = v7;
                v32 = v26;
                sub_237CBA540(v22, v24);
                if (!sub_237EF5CA0() || !__OFSUB__(v32, sub_237EF5CC0()))
                {
                  goto LABEL_30;
                }

                goto LABEL_44;
              case 2uLL:
                v28 = *(v26 + 16);
                v29 = *(v26 + 24);
                sub_237CBA540(v22, v24);
                if (sub_237EF5CA0())
                {
                  if (__OFSUB__(v28, sub_237EF5CC0()))
                  {
                    goto LABEL_43;
                  }

                  v30 = v29;
                  v31 = v7;
                }

                else
                {
                  v30 = v29;
                  v31 = v7;
                }

                if (__OFSUB__(v30, v28))
                {
                  goto LABEL_42;
                }

LABEL_30:
                sub_237EF5CB0();
                sub_237EF5FB0();
                sub_237CBA6B8(v22, v24);
                v7 = v31;
LABEL_31:
                __swift_destroy_boxed_opaque_existential_1(&v51);
                v5 = v41;
                if (v39 == v7)
                {
                  goto LABEL_34;
                }

                continue;
              case 3uLL:
                *(&v48 + 6) = 0;
                *&v48 = 0;
                goto LABEL_23;
              default:
                *&v48 = *v25;
                WORD4(v48) = v27;
                BYTE10(v48) = BYTE2(v27);
                BYTE11(v48) = BYTE3(v27);
                BYTE12(v48) = BYTE4(v27);
                BYTE13(v48) = BYTE5(v27);
LABEL_23:
                sub_237EF5FB0();
                goto LABEL_31;
            }
          }

          goto LABEL_38;
        }
      }

      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
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
    goto LABEL_45;
  }

  v38 = 0;
LABEL_34:
  v35 = *(v2 + 2);
  v51 = *(v2 + 1);
  *v52 = v35;
  v36 = *(v2 + 4);
  *&v52[16] = *(v2 + 3);
  *&v52[32] = v36;
  sub_237E658E8(&v51, v2);
  return v38;
}

uint64_t sub_237E65898(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result == 0x8000000000000001 && a2 == -1)
  {
    goto LABEL_14;
  }

  v3 = (result - 1) / a2;
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    goto LABEL_12;
  }

  result = a2 * v5;
  if ((a2 * v5) >> 64 != (a2 * v5) >> 63)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *sub_237E658E8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = result;
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = __OFSUB__(HIDWORD(v2), v2);
      LODWORD(v2) = HIDWORD(v2) - v2;
      if (!v6)
      {
        v2 = v2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v9 = v2 + 16;
      v7 = *(v2 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v2 = v8 - v7;
      if (!v6)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(v3);
LABEL_6:
      if (v2 <= 63)
      {
LABEL_7:
        sub_237E659E8(64, 0);
      }

      result = sub_237E6604C(a2, v5);
      break;
  }

  return result;
}

uint64_t sub_237E65998@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *(a2 + 16);
    if (v4 < 0)
    {
      goto LABEL_7;
    }

    result += v4;
  }

  v5 = *(a2 + 8);
  if ((v5 & 0x8000000000000000) == 0)
  {
    result = sub_237E65114(result, v5);
    *a3 = result;
    a3[1] = v6;
    return result;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237E659E8(uint64_t a1, char a2)
{
  v35[5] = *MEMORY[0x277D85DE8];
  v31 = a1;
  v32 = a2;
  v29 = a1;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51F0, &qword_237F1AD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51F8, &qword_237F1AD28);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v33, v35);
    v4 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    MEMORY[0x28223BE20](v4);
    v28 = v2;
    sub_237EF5DA0();
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_237E668AC(v33);
  v6 = *v2;
  v7 = v2[1];
  v8 = 0;
  v9 = 0;
  switch(v7 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_42;
      }

      v9 = HIDWORD(v6) - v6;
      v8 = v6 >> 32;
LABEL_8:
      if (__OFADD__(v8, a1))
      {
        goto LABEL_36;
      }

      if (v8 + a1 < v8)
      {
        goto LABEL_37;
      }

      if (v8 < 0)
      {
        goto LABEL_38;
      }

      v12 = sub_237EF5F90();
      MEMORY[0x28223BE20](v12);
      v27[2] = v9;
      v27[3] = a1;
      v28 = &v31;
      result = sub_237E662B8(sub_237E66954, v27);
      if (v15 != a1)
      {
        goto LABEL_22;
      }

      v16 = result;
      v17 = v14;
      memset(v35, 0, 15);
      if (v14 == result)
      {
        return result;
      }

      v18 = v13;
      LOBYTE(v19) = 0;
      v9 = result - 1;
      v20 = v14;
      if (v14 < 0)
      {
        goto LABEL_21;
      }

      break;
    case 2uLL:
      v11 = v6 + 16;
      v10 = *(v6 + 16);
      v8 = *(v11 + 8);
      v9 = v8 - v10;
      if (!__OFSUB__(v8, v10))
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    case 3uLL:
      goto LABEL_8;
    default:
      v8 = BYTE6(v7);
      v9 = BYTE6(v7);
      goto LABEL_8;
  }

  while (v20 < v16)
  {
    *(v35 + v19) = v18;
    v19 = v19 + 1;
    if ((v19 & 0x100) != 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v19 == 14)
    {
      *&v33[0] = v35[0];
      *(v33 + 6) = *(v35 + 6);
      result = sub_237EF5FB0();
      if (v9 == v20)
      {
        return result;
      }

      LOBYTE(v19) = 0;
    }

    else if (v9 == v20)
    {
      *&v33[0] = v35[0];
      *(v33 + 6) = *(v35 + 6);
      return sub_237EF5FB0();
    }

    ++v20;
    if (v17 < 0)
    {
      break;
    }
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v21 = *v2;
  v22 = v2[1];
  v23 = 0;
  switch(v22 >> 62)
  {
    case 1uLL:
      v23 = v21;
      break;
    case 2uLL:
      v23 = *(v21 + 16);
      break;
    default:
      break;
  }

  v24 = __OFADD__(v23, v9);
  v25 = v23 + v9;
  if (v24)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFADD__(v25, v15))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v26 = 0;
  switch(v22 >> 62)
  {
    case 1uLL:
      v26 = v21 >> 32;
      break;
    case 2uLL:
      v26 = *(v21 + 24);
      break;
    case 3uLL:
      break;
    default:
      v26 = BYTE6(v22);
      break;
  }

  if (v26 < v25 + v15)
  {
    goto LABEL_41;
  }

  return sub_237EF5FA0();
}

uint64_t sub_237E65D9C(_OWORD *a1)
{
  v5[5] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  v5[3] = MEMORY[0x277D838B0];
  v5[4] = MEMORY[0x277CC9C18];
  v5[0] = v4;
  v5[1] = v5;
  __swift_project_boxed_opaque_existential_1(v5, MEMORY[0x277D838B0]);
  sub_237EF5FB0();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_237E65E44(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!(v3 >> 61))
  {
    return sub_237E65E7C(result + 32, result + 32 + 4 * v3, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_237E65E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a1;
  v9[3] = MEMORY[0x277D838B0];
  v9[4] = MEMORY[0x277CC9C18];
  v9[1] = a2;
  __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277D838B0]);
  sub_237EF5FB0();
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (a1)
  {
    v8 = a2 - a1;
    if (a2 - a1 >= a4)
    {
      return result;
    }
  }

  else
  {
    if (a4 < 1)
    {
      return result;
    }

    v8 = 0;
  }

  result = a4 - v8;
  if (__OFSUB__(a4, v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_237E659E8(result, 0);
}

uint64_t sub_237E65F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  return sub_237E65E7C(&v5, &v5 + BYTE6(a2), a3, a4);
}

uint64_t sub_237E65FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_237EF5CA0();
  v11 = result;
  if (result)
  {
    result = sub_237EF5CC0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v11 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_237EF5CB0();
    return sub_237E65998(v11, a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_237E6604C(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:
      v7 = v2 & 0x3FFFFFFFFFFFFFFFLL;

      sub_237CBA6B8(v3, v2);
      *v5 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      v8 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v8 < v3)
      {
        goto LABEL_15;
      }

      if (sub_237EF5CA0() && __OFSUB__(v3, sub_237EF5CC0()))
      {
        goto LABEL_16;
      }

      sub_237EF5CD0();
      swift_allocObject();
      v12 = sub_237EF5C80();

      v7 = v12;
      v8 = v3 >> 32;
LABEL_10:
      if (v8 < v3)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_237E666FC(v3, v13, v14, v8, v7, a2);

      v11 = v7 | 0x4000000000000000;
LABEL_12:
      *v5 = v3;
      v5[1] = v11;
      return result;
    case 2uLL:

      sub_237CBA6B8(v3, v2);
      *v5 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      sub_237EF5F10();
      result = sub_237E666FC(*(v3 + 16), v9, v10, *(v3 + 24), v2 & 0x3FFFFFFFFFFFFFFFLL, a2);
      v11 = v2 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      result = sub_237CBA6B8(*result, v2);
      v6 = *(a2 + 8) | (*(a2 + 12) << 32) | (*(a2 + 13) << 40) | (*(a2 + 14) << 48);
      *v5 = *a2;
      v5[1] = v6;
      return result;
  }
}

uint64_t sub_237E662B8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v24 = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v14 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_237CBA6B8(v7, v6);
      *v5 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      v15 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v15 < v7)
      {
        goto LABEL_23;
      }

      if (sub_237EF5CA0() && __OFSUB__(v7, sub_237EF5CC0()))
      {
        goto LABEL_24;
      }

      sub_237EF5CD0();
      swift_allocObject();
      v16 = sub_237EF5C80();

      v14 = v16;
LABEL_16:
      if (v15 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_237E66774(v7, v7 >> 32, a1, v17, v18);

      v13 = v14 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_237CBA6B8(v7, v6);
      v22 = v7;
      v23 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      sub_237EF5F10();
      v7 = v22;
      v12 = sub_237E66774(*(v22 + 16), *(v22 + 24), a1, v10, v11);
      if (v3)
      {
        v13 = v23 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v13;
      }

      else
      {
        v4 = v12;
        v13 = v23 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v13;
      }

      return v4;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v22, v21, v21);
      if (!v3)
      {
        return v22;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_237CBA6B8(v7, v6);
      v21[0] = v7;
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      BYTE6(v21[1]) = BYTE6(v6);
      a1(&v22, v21, v21 + BYTE6(v6));
      if (!v3)
      {
        v4 = v22;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v5 = v21[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_237E66684@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_237EF5F00();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2383DE000]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2383DE030]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_237E666FC(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  result = sub_237EF5CA0();
  if (result)
  {
    v9 = result;
    result = sub_237EF5CC0();
    if (!__OFSUB__(a1, result))
    {
      v10 = (v9 + a1 - result);
      result = sub_237EF5CB0();
      v11 = a6[1];
      *v10 = *a6;
      v10[1] = v11;
      v12 = a6[3];
      v10[2] = a6[2];
      v10[3] = v12;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_237E66774(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4, __n128 a5)
{
  result = sub_237EF5CA0();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_237EF5CC0();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_237EF5CB0();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v16, &v10[v11], &v10[v11 + v15]);
  if (!v5)
  {
    return v16;
  }

  return result;
}

uint64_t sub_237E6682C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!result)
  {
    return a5;
  }

  v7 = __OFSUB__(a2 - result, a3);
  v8 = a2 - result - a3;
  if (!v7)
  {
    if (v8)
    {
      v9 = 0;
      v10 = result + a3;
      while ((v8 & ~(v8 >> 63)) != v9)
      {
        if (a5 == v9)
        {
          return a5;
        }

        if ((a5 & ~(a5 >> 63)) == v9)
        {
          goto LABEL_11;
        }

        *(v10 + v9++) = a6;
        if (v8 == v9)
        {
          return a5;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    return a5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237E668AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5200, &qword_237F1AD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237E66914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_237E6682C(a1, a2, a3, a4, *a5, *(a5 + 8));
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9;
    *(a6 + 16) = v10;
    *(a6 + 24) = v11;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlobsFileError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E66A80()
{
  result = qword_27DEB5218[0];
  if (!qword_27DEB5218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5218);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __n128 a14, __int128 a15)
{
  v17 = *(v15 + 80);
  *(v17 + 16) = v16 + 1;
  v18 = (v17 + (v16 << 6));
  v18[2] = a11;
  v18[3] = a12;
  result = a14;
  v18[4] = a14;
  v18[5] = a15;
  *(v15 + 80) = v17;
  return result;
}

uint64_t *OUTLINED_FUNCTION_1_105@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15)
{
  *(v16 + 16) = v15;
  v18 = a1[1];
  a12 = *a1;
  a13 = v18;
  v19 = a1[3];
  a14 = a1[2];
  a15 = v19;

  return sub_237E658E8(&a12, v16);
}

uint64_t OUTLINED_FUNCTION_2_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_237E65D9C(&a11);
}

uint64_t OUTLINED_FUNCTION_3_88()
{
  v2 = *(*(v0 + 80) + 16);

  return sub_237D86D78(v2);
}

uint64_t BaseTreeRegressorModel.encode(to:)(void *a1)
{
  v3 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  result = sub_237E88538();
  if (!v1)
  {
    v12 = result;
    v13 = v11;
    v19 = a1;
    sub_237EF5C30();
    swift_allocObject();
    sub_237EF5C20();
    (*(v5 + 104))(v9, *MEMORY[0x277CC86A8], v3);
    sub_237EF5C00();
    sub_237E4C030();
    sub_237EF5C10();
    memcpy(v15, v16, sizeof(v15));
    memcpy(v18, v16, sizeof(v18));
    sub_237D73A1C(v17);
    sub_237D6E9A0(v15);

    sub_237CBA6B8(v12, v13);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_237EFA1A0();
    __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
    sub_237E5226C(&qword_27DEB4D90, &unk_237F19B20);
    sub_237EF9DA0();
    sub_237C863A0(v17, &qword_27DEB2210, &unk_237F10700);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return result;
}

uint64_t BaseTreeRegressorModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA180();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a2;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
  sub_237E5226C(&qword_27DEB4D70, &unk_237F19AE0);
  sub_237EF9D60();
  v33 = v27[0];
  v34 = v27[1];
  v35 = v27[2];
  v36 = v28;
  sub_237D74FBC(&v33, v27);
  sub_237D7360C(&v33, v30);
  memcpy(v31, v30, sizeof(v31));
  if (sub_237E52394(v31) == 1)
  {
    v12 = sub_237EF93E0();
    swift_allocError();
    v14 = v13;
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00970);
    v37 = v36;
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);
    sub_237C863A0(&v33, &qword_27DEB2210, &unk_237F10700);

    MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237F00A80);
    v37 = 1;
    v16 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v16);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v29);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  memcpy(v32, v31, sizeof(v32));
  sub_237D6E010();
  sub_237EF85B0();
  v17 = sub_237EF85A0();
  v19 = v18;

  result = (*(v7 + 8))(v11, v5);
  if (v19 >> 60 != 15)
  {
    sub_237C863A0(v30, &qword_27DEB4DA8, &unk_237F19E28);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v21 = sub_237E88668(0, 0);

    sub_237E88474(v17, v19);

    sub_237E523AC(v17, v19);
    v22 = v34;
    v23 = *(v33 + 16);
    result = sub_237C863A0(&v33, &qword_27DEB2210, &unk_237F10700);
    if (*(&v35 + 1))
    {
      v24 = v23 / *(&v35 + 1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      *v25 = v22;
      v25[1] = v21;
      v25[2] = v24;

      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BaseTreeRegressorModel.export(to:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v8 = *v1;
  v9 = v3;
  v4 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_2_97();

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  __src[2] = 0;
  __src[3] = 0xE000000000000000;
  __src[4] = 0;
  __src[5] = 0xE000000000000000;
  __src[6] = 0;
  __src[7] = 0xE000000000000000;
  __src[8] = v4;
  BaseTreeRegressorModel.export(to:metadata:)(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_237D91628(__dst);
}

void BaseTreeRegressorModel.export(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v27 = a1;
  v5 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v20 = *a2;
  v21 = a2[2];
  v22 = a2[4];
  v23 = a2[6];
  v9 = a2[8];
  sub_237E49F34(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, *v2, v2[1], v2[2], v25, v26, v27, v28, v29);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v18 = sub_237EF7780();
    sub_237C9FB0C(v9, sub_237C9FE58, 0, v19);
    v18(&v24, 0);
    sub_237E33BC0(v27);
    sub_237D0F8BC(v8);
  }
}

uint64_t OUTLINED_FUNCTION_2_97()
{

  return sub_237EF8230();
}

void OneHotEncoder.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x6E45746F48656E4FLL, 0xED00007265646F63);
  }

  (*(v9 + 16))(v13, v5, v1);
  v14 = v3[2];
  sub_237EF90F0();
  v15 = v3[6];
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v16 = sub_237EF8D00();
  OneHotEncoder.Transformer.init(categories:)(v16, v14, v3[3], v3[4], v3[5], v15, v7);
  OUTLINED_FUNCTION_12_6();
}

uint64_t OneHotEncoder.Transformer.init(categories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v23 = a1;
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  sub_237EF90F0();
  v22[7] = a6;
  sub_237EF8260();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v12 = sub_237EF8CF0();
  v13 = type metadata accessor for ComparableOptional(0, a2, a3, a6);
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E6851C, v22, v12, v13, MEMORY[0x277D84A98], WitnessTable);
  v16 = v15;

  v23 = v16;
  sub_237EF8A60();
  v17 = OUTLINED_FUNCTION_9_60();
  swift_getWitnessTable();
  v18 = sub_237EF8D00();
  v19 = OUTLINED_FUNCTION_7_11();
  result = sub_237E86E14(v18, v13, v19, v17);
  *a7 = a1;
  a7[1] = result;
  a7[2] = v21;
  return result;
}

uint64_t sub_237E67884()
{
  OneHotEncoder.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OneHotEncoder.makeTransformer()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  sub_237EF90F0();
  v5 = a1[6];
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v6 = sub_237EF8130();
  return OneHotEncoder.Transformer.init(categories:)(v6, v4, a1[3], a1[4], a1[5], v5, a2);
}

void OneHotEncoder.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v51 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v48 = v5[2];
  v11 = sub_237EF90F0();
  OUTLINED_FUNCTION_12_7();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v44 = v13;
  v45 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  OUTLINED_FUNCTION_1_1();
  v47 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v46 = &v40 - v19;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  (*(v23 + 16))(v22 - v21, v8, v4);
  v49 = v6[6];
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v50 = v2;
  v24 = sub_237EF8D00();
  v25 = sub_237EF8CB0();
  if (v25)
  {

    *v10 = v24;
  }

  else
  {
    v43 = &v40;
    v52 = v24;
    MEMORY[0x28223BE20](v25);
    v26 = v48;
    *(&v40 - 8) = v48;
    *(&v40 - 7) = v4;
    v27 = v6[3];
    v41 = v6[4];
    v28 = v41;
    v42 = v27;
    *(&v40 - 6) = v27;
    *(&v40 - 5) = v28;
    v40 = v6[5];
    v30 = v49;
    v29 = v50;
    *(&v40 - 4) = v40;
    *(&v40 - 3) = v30;
    *(&v40 - 2) = v29;
    *(&v40 - 1) = v10;
    OUTLINED_FUNCTION_12_7();
    sub_237EF8CF0();
    swift_getWitnessTable();
    sub_237EF87D0();

    if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
    {
      (*(v44 + 8))(v16, v45);
    }

    else
    {
      v32 = v46;
      v31 = v47;
      v33 = (*(v47 + 32))(v46, v16, v11);
      MEMORY[0x28223BE20](v33);
      *(&v40 - 8) = v26;
      *(&v40 - 7) = v4;
      v34 = v41;
      *(&v40 - 6) = v42;
      *(&v40 - 5) = v34;
      v36 = v49;
      v35 = v50;
      *(&v40 - 4) = v40;
      *(&v40 - 3) = v36;
      *(&v40 - 2) = v35;
      sub_237CA0A1C();
      if (v53)
      {
        v37 = v52;
      }

      else
      {
        v37 = 7104878;
      }

      if (v53)
      {
        v38 = v53;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      sub_237C84150();
      swift_allocError();
      *v39 = xmmword_237F1AE50;
      *(v39 + 16) = v37;
      *(v39 + 24) = v38;
      *(v39 + 32) = 3;
      swift_willThrow();
      (*(v31 + 8))(v32, v11);
    }
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E67DA0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_237EF85D0();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t OneHotEncoder.encodeWithOptimizer(_:to:)(__int128 *a1, uint64_t a2, __n128 *a3)
{
  v4 = *(a1 + 2);
  v14 = *a1;
  v15 = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_20_42(a3[3].n128_i64[0], a3[1], a3[2], v11, v12, v13);
  WitnessTable = swift_getWitnessTable();
  return v7(&v14, v8, WitnessTable, v5, v6);
}

uint64_t OneHotEncoder.decodeWithOptimizer(from:)(uint64_t a1, __n128 *a2)
{
  v3 = OUTLINED_FUNCTION_20_42(a2[3].n128_i64[0], a2[1], a2[2], v9, v10, v11);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v5 + 8);
  WitnessTable = swift_getWitnessTable();
  return v6(v3, v3, WitnessTable, v4, v5);
}

uint64_t sub_237E68004()
{
  OneHotEncoder.update<A>(_:with:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OneHotEncoder.Transformer.categories.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL sub_237E68110(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  return v2 != 0;
}

uint64_t sub_237E6815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E681D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237E6823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E682AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}