uint64_t sub_1AE4CB058(uint64_t a1)
{
  v37 = a1;
  v1 = sub_1AE4EAB10();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Image.Info(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for FileIdentifier(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v34 - v17);
  sub_1AE4B55F8(v9);
  sub_1AE4B441C(v9, v12, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v9, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v7);
  v19 = &v7[*(v4 + 28)];
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = v19[16];
  sub_1AE4BA890(*v19, v21, v19[16]);
  sub_1AE4DB5C0(v7, type metadata accessor for Image.Info);
  if (v22 == 255)
  {
    v23 = 0;
    v25 = 0;
  }

  else
  {
    v23 = sub_1AE4BB8CC(v20, v21, v22 & 1);
    v25 = v24;
    sub_1AE4BA998(v20, v21, v22);
  }

  sub_1AE4CBD90(v12, v23, v25, v18);
  sub_1AE4DB620(v18, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AE4EADC0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      (*(v35 + 32))(v34, v16, v36);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1AE4EACF0();
      sub_1AE4EADC0();

      (*(v31 + 8))(v30, v32);
    }
  }

  else
  {
    v27 = v34;
    v28 = v35;
    v29 = v36;
    (*(v35 + 32))(v34, v16, v36);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1AE4EACF0();
    (*(v28 + 8))(v27, v29);
  }

  return sub_1AE4DB5C0(v18, type metadata accessor for FileIdentifier);
}

uint64_t sub_1AE4CB4A8()
{
  sub_1AE4EB260();
  sub_1AE4CB058(v1);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4CB4F8(uint64_t a1)
{
  sub_1AE4EB260();
  sub_1AE4CB058(v2);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4CB53C(uint64_t a1)
{
  v37 = a1;
  v1 = sub_1AE4EAB10();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Image.Info(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for FileIdentifier(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v34 - v17);
  sub_1AE4B55F8(v9);
  sub_1AE4B441C(v9, v12, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v9, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v7);
  v19 = &v7[*(v4 + 28)];
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = v19[16];
  sub_1AE4BA890(*v19, v21, v19[16]);
  sub_1AE4DB5C0(v7, type metadata accessor for Image.Info);
  if (v22 == 255)
  {
    v23 = 0;
    v25 = 0;
  }

  else
  {
    v23 = sub_1AE4BB8CC(v20, v21, v22 & 1);
    v25 = v24;
    sub_1AE4BA998(v20, v21, v22);
  }

  sub_1AE4CBD90(v12, v23, v25, v18);
  sub_1AE4DB620(v18, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AE4EADC0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      (*(v35 + 32))(v34, v16, v36);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1AE4EACF0();
      sub_1AE4EADC0();

      (*(v31 + 8))(v30, v32);
    }
  }

  else
  {
    v27 = v34;
    v28 = v35;
    v29 = v36;
    (*(v35 + 32))(v34, v16, v36);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1AE4EACF0();
    (*(v28 + 8))(v27, v29);
  }

  return sub_1AE4DB5C0(v18, type metadata accessor for FileIdentifier);
}

uint64_t sub_1AE4CB988@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
  v4 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
  v5 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
  result = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v3, v4, v5);
  if (result)
  {
    sub_1AE4A6A00(result);

    v7 = sub_1AE4AC6E0(1936156019, 0xE400000000000000, 0, v3, v4, v5);
    if (v7)
    {
      v11 = sub_1AE4B9FBC(v7);
      v13 = v12;
      v15 = v14;

      *(a1 + 24) = type metadata accessor for MachOMapper(0);
      *(a1 + 32) = &off_1F240DAE0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

      return sub_1AE4CBB9C(v11, v13, v15, boxed_opaque_existential_1);
    }

    else
    {
      __break(1u);
      v18 = v8;
      v19 = v9;
      v20 = v10;
      sub_1AE4C78AC();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = v18;
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      swift_unexpectedError();
      __break(1u);
      v23 = v22;
      sub_1AE4C78AC();
      swift_allocError();
      *v24 = v5;
      *(v24 + 8) = v4;
      *(v24 + 16) = v20;
      *(v24 + 24) = v23;
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  else if (*(*(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache))
  {

    v17 = sub_1AE4DC0D0();

    result = type metadata accessor for SharedCacheMapper(0);
    *(a1 + 24) = result;
    *(a1 + 32) = &off_1F240D718;
    *a1 = v17;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1AE4CBB9C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v7 = type metadata accessor for Image.Info(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - v15;
  sub_1AE4B55F8(v13);
  sub_1AE4B441C(v13, v16, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v13, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v11);
  v17 = &v11[*(v8 + 28)];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = v17[16];
  sub_1AE4BA890(*v17, v19, v17[16]);
  sub_1AE4DB5C0(v11, type metadata accessor for Image.Info);
  if (v20 == 255)
  {
    v21 = 0;
    v23 = 0;
  }

  else
  {
    v21 = sub_1AE4BB8CC(v18, v19, v20 & 1);
    v23 = v22;
    sub_1AE4BA998(v18, v19, v20);
  }

  sub_1AE4CBD90(v16, v21, v23, a5);

  result = type metadata accessor for MachOMapper(0);
  v25 = (a5 + *(result + 20));
  v27 = v28;
  v26 = v29;
  *v25 = a2;
  v25[1] = v27;
  v25[2] = v26;
  return result;
}

uint64_t sub_1AE4CBD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4E0, &qword_1AE4EDB60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1AE4B441C(a1, &v15 - v9, &qword_1EB5DD4B8, "R3");
  v11 = sub_1AE4EAB10();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    if (a3)
    {
      sub_1AE4B4558(a1, &qword_1EB5DD4B8, "R3");
      *a4 = a2;
      a4[1] = a3;
      type metadata accessor for FileIdentifier(0);
      swift_storeEnumTagMultiPayload();
      return sub_1AE4B4558(v10, &qword_1EB5DD4B8, "R3");
    }

    else
    {
      result = sub_1AE4EB140();
      __break(1u);
    }
  }

  else
  {
    sub_1AE4B4558(a1, &qword_1EB5DD4B8, "R3");
    if (a3)
    {
      v14 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
      (*(v12 + 32))(a4, v10, v11);
      *v14 = a2;
      v14[1] = a3;
    }

    else
    {
      (*(v12 + 32))(a4, v10, v11);
    }

    type metadata accessor for FileIdentifier(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_1AE4CBFF0(uint64_t a1)
{
  sub_1AE4D1AC8(319, &qword_1EB5DD0D0, 255, type metadata accessor for Image.Info);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AE4CC0B8()
{
  sub_1AE4EB260();
  sub_1AE4CB53C(v1);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4CC120(uint64_t a1)
{
  sub_1AE4EB260();
  sub_1AE4CB53C(v2);
  return sub_1AE4EB290();
}

double sub_1AE4CC184@<D0>(uint64_t a1@<X8>)
{
  v3 = a1;
  v4 = &v276;
  v295 = *MEMORY[0x1E69E9840];
  v5 = *(v1 + 112);
  if (*(v1 + 112) != 0xFF)
  {
LABEL_320:
    v281 = *(v1 + 96);
    v214 = v281;
    v215 = *(v1 + 120);
    *(v4 + 88) = v215;
    v216 = *(v1 + 136);
    *(v4 + 104) = v216;
    v217 = *(v1 + 152);
    v294 = v214;
    v273 = v215;
    v274 = v216;
    v275 = v217;
    *(&v284 + 1) = v217;
    *&v282 = v5;
    sub_1AE4DFDBC(&v281, &v276);
    goto LABEL_325;
  }

  v6 = *(v1 + 24);
  v259 = v1;
  v8 = *(v1 + 32);
  *&v281 = *(v1 + 16);
  v7 = v281;
  *(&v281 + 1) = v6;
  v255 = v8;
  v256 = v6;
  v282 = v8;

  v4 = 0;
  v258 = 0;
  v260 = 0;
  v262 = 0;
  v264 = 0;
  v266 = 0;
  v267 = 0;
  v3 = 0;
  v265 = -1;
  v9 = 1;
  v257 = 0x100000001;
  v261 = 1;
  v263 = 1;
  v254 = v7;
LABEL_3:
  v252 = v9;
  v253 = v4;
  sub_1AE4B87FC(&v289);
  v10 = v292;
  if (v292)
  {
    v11 = v291;
    v271 = v293;
    v12 = v290;
    while (1)
    {
      v13 = v289;
      v268 = v12;
      v269 = v289;
      v270 = v11;
      if ((sub_1AE4B8C4C(v289, v12, v11 & 1, 0x656D616E, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_96;
      }

      v14 = (*(v10 + 64))(v10, v271);
      v5 = v14;
      v16 = *(v10 + 16);
      v17 = *(v10 + 24);
      v18 = v17 >> 62;
      if ((v17 >> 62) > 1)
      {
        break;
      }

      if (v18)
      {
        v33 = v16;
        v16 >>= 32;
        v13 = v16 - v33;
        if (v16 < v33)
        {
          goto LABEL_329;
        }

        v2 = sub_1AE4EA990();
        if (v2)
        {
          v34 = sub_1AE4EA9B0();
          v16 = v33 - v34;
          if (__OFSUB__(v33, v34))
          {
            goto LABEL_360;
          }

          v2 += v16;
        }

        v35 = sub_1AE4EA9A0();
        if (v35 >= v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = v35;
        }

        v30 = v2 + v16;
        if (v2)
        {
          v36 = v2 + v16;
        }

        else
        {
          v36 = 0;
        }

        v13 = v36 - v2;
        if (v2)
        {
          v37 = v36 - v2;
        }

        else
        {
          v37 = 0;
        }

        v11 = v270;
        if (v37 < v5)
        {
          goto LABEL_334;
        }

        if (sub_1AE4BA9B0(v5, v37, v2, v36) <= 0)
        {
          goto LABEL_393;
        }

        if (!v2)
        {
          goto LABEL_392;
        }

        goto LABEL_47;
      }

      *&v285 = *(v10 + 16);
      WORD4(v285) = v17;
      BYTE10(v285) = BYTE2(v17);
      BYTE11(v285) = BYTE3(v17);
      v16 = v17 >> 40;
      BYTE12(v285) = BYTE4(v17);
      BYTE13(v285) = BYTE5(v17);
      if (BYTE6(v17) < v14)
      {
        goto LABEL_330;
      }

      if (v14 < 0)
      {
        goto LABEL_332;
      }

      v16 = &v285;
      v15 = &v285 + BYTE6(v17);
      if (BYTE6(v17) <= v14)
      {
        goto LABEL_404;
      }

      v19 = *(&v285 + v14);
      *&v276 = sub_1AE4A7CA4(1uLL, v14, BYTE6(v17), &v285, v15);
      *(&v276 + 1) = v20;
      v277 = v21;
      *&v278 = v22;
      sub_1AE4A65CC(v19);
      v23 = sub_1AE4AC038(v19);
      if (v23 == 6)
      {
        while (1)
        {
LABEL_402:
          sub_1AE4C78AC();
          v239 = swift_allocError();
          *(v240 + 8) = 0;
          *(v240 + 16) = 0;
          *v240 = 0;
          *(v240 + 24) = 0x80;
          swift_willThrow();
LABEL_406:
          *&v285 = v239;
          v244 = v239;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v245 = v276;
          v246 = v277;
          v247 = v278;
          v273 = v276;
          *&v274 = v277;
          BYTE8(v274) = v278;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          swift_allocError();
          *v248 = v245;
          *(v248 + 16) = v246;
          *(v248 + 24) = v247;
          swift_unexpectedError();
          __break(1u);
LABEL_407:
          sub_1AE4BA998(v267, v266, v218);
LABEL_400:
          sub_1AE4EB140();
          __break(1u);
LABEL_401:
          sub_1AE4C78AC();
          v232 = swift_allocError();
          *(v233 + 8) = 0;
          *(v233 + 16) = 0;
          *v233 = 0;
          *(v233 + 24) = 0x80;
          swift_willThrow();
          *&v285 = v232;
          v234 = v232;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v235 = v276;
          v236 = v277;
          v237 = v278;
          v273 = v276;
          *&v274 = v277;
          BYTE8(v274) = v278;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          swift_allocError();
          *v238 = v235;
          *(v238 + 16) = v236;
          *(v238 + 24) = v237;
          swift_unexpectedError();
          __break(1u);
        }
      }

LABEL_48:
      if (v23 == 1)
      {
        v42 = (*(v10 + 64))(v10, v271);
        v5 = v42;
        v16 = *(v10 + 16);
        v43 = *(v10 + 24);
        v44 = v43 >> 62;
        if ((v43 >> 62) > 1)
        {
          if (v44 == 2)
          {
            v13 = *(v16 + 16);
            v49 = *(v16 + 24);
            v50 = sub_1AE4EA990();
            if (v50)
            {
              v2 = v50;
              v51 = sub_1AE4EA9B0();
              v16 = v13 - v51;
              if (__OFSUB__(v13, v51))
              {
                goto LABEL_375;
              }

              v52 = v16 + v2;
              v27 = __OFSUB__(v49, v13);
              v53 = v49 - v13;
              if (v27)
              {
                goto LABEL_372;
              }
            }

            else
            {
              v52 = 0;
              v27 = __OFSUB__(v49, v13);
              v53 = v49 - v13;
              if (v27)
              {
                goto LABEL_372;
              }
            }

            v60 = sub_1AE4EA9A0();
            if (v60 >= v53)
            {
              v61 = v53;
            }

            else
            {
              v61 = v60;
            }

            if (v52)
            {
              v16 = v61;
            }

            else
            {
              v16 = 0;
            }

            if (v16 < v5)
            {
              goto LABEL_373;
            }

            v62 = v61 + v52;
            if (!v52)
            {
              v62 = 0;
            }

            *&v276 = v5;
            *(&v276 + 1) = v16;
            v277 = v52;
            *&v278 = v62;
            sub_1AE4A5694(v60);
            v2 = v63;
            sub_1AE4A65CC(v63);
            v47 = v64;
            v12 = v268;
            v13 = v269;
            if (sub_1AE4AC038(v2) == 6)
            {
              goto LABEL_399;
            }

            v48 = v277;
            if (!v277)
            {
              goto LABEL_396;
            }
          }

          else
          {
            *(&v273 + 6) = 0;
            *&v273 = 0;
            if (v42 > 0)
            {
              goto LABEL_369;
            }

            v276 = v42;
            v277 = &v273;
            *&v278 = &v273;
            sub_1AE4A5694(v42);
            v2 = v58;
            sub_1AE4A65CC(v58);
            v47 = v59;
            if (sub_1AE4AC038(v2) == 6)
            {
              goto LABEL_399;
            }

            v48 = v277;
            if (!v277)
            {
              __break(1u);
LABEL_395:
              __break(1u);
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              sub_1AE4C78AC();
              v226 = swift_allocError();
              *(v227 + 8) = 0;
              *(v227 + 16) = 0;
              *v227 = 0;
              *(v227 + 24) = 0x80;
              swift_willThrow();
              *&v285 = v226;
              v228 = v226;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
              swift_dynamicCast();
              v229 = v276;
              v230 = v277;
              v231 = v278;
              v273 = v276;
              *&v274 = v277;
              BYTE8(v274) = v278;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              sub_1AE4A67B4(v269, v268, v270 & 1);

              sub_1AE4DB684(v229, *(&v229 + 1), v230, v231);
              goto LABEL_400;
            }
          }
        }

        else if (v44)
        {
          v54 = v16;
          v16 >>= 32;
          v13 = v16 - v54;
          if (v16 < v54)
          {
            goto LABEL_370;
          }

          v55 = sub_1AE4EA990();
          if (v55)
          {
            v2 = v55;
            v56 = sub_1AE4EA9B0();
            v16 = v54 - v56;
            if (__OFSUB__(v54, v56))
            {
              goto LABEL_376;
            }

            v57 = v16 + v2;
          }

          else
          {
            v57 = 0;
          }

          v65 = sub_1AE4EA9A0();
          if (v65 >= v13)
          {
            v66 = v13;
          }

          else
          {
            v66 = v65;
          }

          if (v57)
          {
            v16 = v66;
          }

          else
          {
            v16 = 0;
          }

          if (v16 < v5)
          {
            goto LABEL_374;
          }

          v67 = v66 + v57;
          if (!v57)
          {
            v67 = 0;
          }

          *&v276 = v5;
          *(&v276 + 1) = v16;
          v277 = v57;
          *&v278 = v67;
          sub_1AE4A5694(v65);
          v2 = v68;
          sub_1AE4A65CC(v68);
          v47 = v69;
          v12 = v268;
          v13 = v269;
          if (sub_1AE4AC038(v2) == 6)
          {
            goto LABEL_399;
          }

          v48 = v277;
          if (!v277)
          {
            goto LABEL_397;
          }
        }

        else
        {
          *&v273 = *(v10 + 16);
          WORD4(v273) = v43;
          BYTE10(v273) = BYTE2(v43);
          BYTE11(v273) = BYTE3(v43);
          BYTE12(v273) = BYTE4(v43);
          v16 = BYTE6(v43);
          BYTE13(v273) = BYTE5(v43);
          if (BYTE6(v43) < v42)
          {
            goto LABEL_371;
          }

          *&v276 = v42;
          *(&v276 + 1) = BYTE6(v43);
          v277 = &v273;
          *&v278 = &v273 + BYTE6(v43);
          sub_1AE4A5694(v42);
          v2 = v45;
          sub_1AE4A65CC(v45);
          v47 = v46;
          if (sub_1AE4AC038(v2) == 6)
          {
            goto LABEL_399;
          }

          v48 = v277;
          if (!v277)
          {
            goto LABEL_395;
          }
        }

        v70 = v276;
        sub_1AE4BA998(v267, v266, v265);
        v267 = v48 + v70;
        v266 = v48 + v70 + v47;
        v265 = 0;
        v11 = v270;
      }

      else
      {
        sub_1AE4BA998(v267, v266, v265);

        v265 = 1;
        v266 = v271;
        v267 = v10;
      }

LABEL_96:
      if ((sub_1AE4B8C4C(v13, v12, v11 & 1, 0x657A6973, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_141;
      }

      v71 = (*(v10 + 64))(v10, v271);
      v5 = v71;
      v16 = *(v10 + 16);
      v72 = *(v10 + 24);
      v73 = v72 >> 62;
      if ((v72 >> 62) > 1)
      {
        if (v73 == 2)
        {
          v13 = *(v16 + 16);
          v74 = *(v16 + 24);
          v75 = sub_1AE4EA990();
          if (v75)
          {
            v2 = v75;
            v76 = sub_1AE4EA9B0();
            v16 = v13 - v76;
            if (__OFSUB__(v13, v76))
            {
              goto LABEL_361;
            }

            v77 = v16 + v2;
            v27 = __OFSUB__(v74, v13);
            v78 = v74 - v13;
            if (v27)
            {
              goto LABEL_338;
            }
          }

          else
          {
            v77 = 0;
            v27 = __OFSUB__(v74, v13);
            v78 = v74 - v13;
            if (v27)
            {
              goto LABEL_338;
            }
          }

          v87 = sub_1AE4EA9A0();
          if (v87 >= v78)
          {
            v88 = v78;
          }

          else
          {
            v88 = v87;
          }

          if (v77)
          {
            v16 = v88;
          }

          else
          {
            v16 = 0;
          }

          if (v16 < v5)
          {
            goto LABEL_343;
          }

          v89 = v88 + v77;
          if (!v77)
          {
            v89 = 0;
          }

          *&v276 = v5;
          *(&v276 + 1) = v16;
          v277 = v77;
          *&v278 = v89;
          sub_1AE4A5694(v87);
          v2 = v90;
          sub_1AE4A65CC(v90);
          v92 = v91;
          v12 = v268;
          v11 = v270;
LABEL_137:
          v13 = v269;
          v98 = sub_1AE4AC038(v2);
          if (v98 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v98, v92, v276, *(&v276 + 1), &v272, &v273);
          v16 = v273;
          goto LABEL_139;
        }

        *(&v273 + 6) = 0;
        *&v273 = 0;
        if (v71 > 0)
        {
          goto LABEL_336;
        }

        v276 = v71;
        v277 = &v273;
        *&v278 = &v273;
      }

      else
      {
        if (v73)
        {
          v79 = v16;
          v16 >>= 32;
          v13 = v16 - v79;
          if (v16 < v79)
          {
            goto LABEL_335;
          }

          v80 = sub_1AE4EA990();
          if (v80)
          {
            v2 = v80;
            v81 = sub_1AE4EA9B0();
            v16 = v79 - v81;
            if (__OFSUB__(v79, v81))
            {
              goto LABEL_362;
            }

            v82 = v16 + v2;
          }

          else
          {
            v82 = 0;
          }

          v93 = sub_1AE4EA9A0();
          if (v93 >= v13)
          {
            v94 = v13;
          }

          else
          {
            v94 = v93;
          }

          if (v82)
          {
            v16 = v94;
          }

          else
          {
            v16 = 0;
          }

          v11 = v270;
          if (v16 < v5)
          {
            goto LABEL_342;
          }

          v95 = v94 + v82;
          if (!v82)
          {
            v95 = 0;
          }

          *&v276 = v5;
          *(&v276 + 1) = v16;
          v277 = v82;
          *&v278 = v95;
          sub_1AE4A5694(v93);
          v2 = v96;
          sub_1AE4A65CC(v96);
          v92 = v97;
          v12 = v268;
          goto LABEL_137;
        }

        *&v273 = *(v10 + 16);
        WORD4(v273) = v72;
        BYTE10(v273) = BYTE2(v72);
        BYTE11(v273) = BYTE3(v72);
        BYTE12(v273) = BYTE4(v72);
        v16 = BYTE6(v72);
        BYTE13(v273) = BYTE5(v72);
        if (BYTE6(v72) < v71)
        {
          goto LABEL_337;
        }

        *&v276 = v71;
        *(&v276 + 1) = BYTE6(v72);
        v277 = &v273;
        *&v278 = &v273 + BYTE6(v72);
      }

      sub_1AE4A5694(v71);
      v2 = v83;
      sub_1AE4A65CC(v83);
      v85 = v84;
      v86 = sub_1AE4AC038(v2);
      if (v86 == 6)
      {
        goto LABEL_399;
      }

      sub_1AE4AD198(v86, v85, v276, *(&v276 + 1), &v272, &v285);
      v16 = v285;
LABEL_139:
      if (v16 < 0)
      {
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
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
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
        goto LABEL_379;
      }

      v264 = v16;
      v263 = 0;
LABEL_141:
      if ((sub_1AE4B8C4C(v13, v12, v11 & 1, 0x657A7366, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_186;
      }

      v99 = (*(v10 + 64))(v10, v271);
      v5 = v99;
      v16 = *(v10 + 16);
      v100 = *(v10 + 24);
      v101 = v100 >> 62;
      if ((v100 >> 62) > 1)
      {
        if (v101 == 2)
        {
          v13 = *(v16 + 16);
          v102 = *(v16 + 24);
          v103 = sub_1AE4EA990();
          if (v103)
          {
            v2 = v103;
            v104 = sub_1AE4EA9B0();
            v16 = v13 - v104;
            if (__OFSUB__(v13, v104))
            {
              goto LABEL_363;
            }

            v105 = v16 + v2;
            v27 = __OFSUB__(v102, v13);
            v106 = v102 - v13;
            if (v27)
            {
              goto LABEL_344;
            }
          }

          else
          {
            v105 = 0;
            v27 = __OFSUB__(v102, v13);
            v106 = v102 - v13;
            if (v27)
            {
              goto LABEL_344;
            }
          }

          v115 = sub_1AE4EA9A0();
          if (v115 >= v106)
          {
            v116 = v106;
          }

          else
          {
            v116 = v115;
          }

          if (v105)
          {
            v16 = v116;
          }

          else
          {
            v16 = 0;
          }

          if (v16 < v5)
          {
            goto LABEL_348;
          }

          v117 = v116 + v105;
          if (!v105)
          {
            v117 = 0;
          }

          *&v276 = v5;
          *(&v276 + 1) = v16;
          v277 = v105;
          *&v278 = v117;
          sub_1AE4A5694(v115);
          v2 = v118;
          sub_1AE4A65CC(v118);
          v120 = v119;
          v12 = v268;
          v11 = v270;
LABEL_182:
          v13 = v269;
          v126 = sub_1AE4AC038(v2);
          if (v126 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v126, v120, v276, *(&v276 + 1), &v272, &v273);
          v16 = v273;
          goto LABEL_184;
        }

        *(&v273 + 6) = 0;
        *&v273 = 0;
        if (v99 > 0)
        {
          goto LABEL_340;
        }

        v276 = v99;
        v277 = &v273;
        *&v278 = &v273;
      }

      else
      {
        if (v101)
        {
          v107 = v16;
          v16 >>= 32;
          v13 = v16 - v107;
          if (v16 < v107)
          {
            goto LABEL_341;
          }

          v108 = sub_1AE4EA990();
          if (v108)
          {
            v2 = v108;
            v109 = sub_1AE4EA9B0();
            v16 = v107 - v109;
            if (__OFSUB__(v107, v109))
            {
              goto LABEL_364;
            }

            v110 = v16 + v2;
          }

          else
          {
            v110 = 0;
          }

          v121 = sub_1AE4EA9A0();
          if (v121 >= v13)
          {
            v122 = v13;
          }

          else
          {
            v122 = v121;
          }

          if (v110)
          {
            v16 = v122;
          }

          else
          {
            v16 = 0;
          }

          v11 = v270;
          if (v16 < v5)
          {
            goto LABEL_349;
          }

          v123 = v122 + v110;
          if (!v110)
          {
            v123 = 0;
          }

          *&v276 = v5;
          *(&v276 + 1) = v16;
          v277 = v110;
          *&v278 = v123;
          sub_1AE4A5694(v121);
          v2 = v124;
          sub_1AE4A65CC(v124);
          v120 = v125;
          v12 = v268;
          goto LABEL_182;
        }

        *&v273 = *(v10 + 16);
        WORD4(v273) = v100;
        BYTE10(v273) = BYTE2(v100);
        BYTE11(v273) = BYTE3(v100);
        BYTE12(v273) = BYTE4(v100);
        v16 = BYTE6(v100);
        BYTE13(v273) = BYTE5(v100);
        if (BYTE6(v100) < v99)
        {
          goto LABEL_339;
        }

        *&v276 = v99;
        *(&v276 + 1) = BYTE6(v100);
        v277 = &v273;
        *&v278 = &v273 + BYTE6(v100);
      }

      sub_1AE4A5694(v99);
      v2 = v111;
      sub_1AE4A65CC(v111);
      v113 = v112;
      v114 = sub_1AE4AC038(v2);
      if (v114 == 6)
      {
        goto LABEL_399;
      }

      sub_1AE4AD198(v114, v113, v276, *(&v276 + 1), &v272, &v285);
      v16 = v285;
LABEL_184:
      if (v16 < 0)
      {
        goto LABEL_327;
      }

      v262 = v16;
      v261 = 0;
LABEL_186:
      if ((sub_1AE4B8C4C(v13, v12, v11 & 1, 0x72646170, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_273;
      }

      v127 = (*(v10 + 64))(v10, v271);
      v5 = v127;
      v16 = *(v10 + 16);
      v128 = *(v10 + 24);
      v129 = v128 >> 62;
      if ((v128 >> 62) > 1)
      {
        if (v129 != 2)
        {
          *(&v273 + 6) = 0;
          *&v273 = 0;
          if (v127 > 0)
          {
            goto LABEL_347;
          }

          v276 = v127;
          v277 = &v273;
          *&v278 = &v273;
          goto LABEL_203;
        }

        v13 = *(v16 + 16);
        v130 = *(v16 + 24);
        v131 = sub_1AE4EA990();
        if (v131)
        {
          v2 = v131;
          v132 = sub_1AE4EA9B0();
          v16 = v13 - v132;
          if (__OFSUB__(v13, v132))
          {
            goto LABEL_365;
          }

          v133 = v16 + v2;
          v27 = __OFSUB__(v130, v13);
          v134 = v130 - v13;
          if (v27)
          {
            goto LABEL_350;
          }
        }

        else
        {
          v133 = 0;
          v27 = __OFSUB__(v130, v13);
          v134 = v130 - v13;
          if (v27)
          {
            goto LABEL_350;
          }
        }

        v143 = sub_1AE4EA9A0();
        if (v143 >= v134)
        {
          v144 = v134;
        }

        else
        {
          v144 = v143;
        }

        if (v133)
        {
          v16 = v144;
        }

        else
        {
          v16 = 0;
        }

        if (v16 < v5)
        {
          goto LABEL_352;
        }

        v145 = v144 + v133;
        if (!v133)
        {
          v145 = 0;
        }

        *&v276 = v5;
        *(&v276 + 1) = v16;
        v277 = v133;
        *&v278 = v145;
        sub_1AE4A5694(v143);
        v2 = v146;
        sub_1AE4A65CC(v146);
        v148 = v147;
        v12 = v268;
        v11 = v270;
      }

      else
      {
        if (!v129)
        {
          *&v273 = *(v10 + 16);
          WORD4(v273) = v128;
          BYTE10(v273) = BYTE2(v128);
          BYTE11(v273) = BYTE3(v128);
          BYTE12(v273) = BYTE4(v128);
          v16 = BYTE6(v128);
          BYTE13(v273) = BYTE5(v128);
          if (BYTE6(v128) < v127)
          {
            goto LABEL_345;
          }

          *&v276 = v127;
          *(&v276 + 1) = BYTE6(v128);
          v277 = &v273;
          *&v278 = &v273 + BYTE6(v128);
LABEL_203:
          sub_1AE4A5694(v127);
          v2 = v139;
          sub_1AE4A65CC(v139);
          v141 = v140;
          v142 = sub_1AE4AC038(v2);
          if (v142 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v142, v141, v276, *(&v276 + 1), &v272, &v285);
          v16 = v285;
          goto LABEL_229;
        }

        v135 = v16;
        v16 >>= 32;
        v13 = v16 - v135;
        if (v16 < v135)
        {
          goto LABEL_346;
        }

        v136 = sub_1AE4EA990();
        if (v136)
        {
          v2 = v136;
          v137 = sub_1AE4EA9B0();
          v16 = v135 - v137;
          if (__OFSUB__(v135, v137))
          {
            goto LABEL_366;
          }

          v138 = v16 + v2;
        }

        else
        {
          v138 = 0;
        }

        v149 = sub_1AE4EA9A0();
        if (v149 >= v13)
        {
          v150 = v13;
        }

        else
        {
          v150 = v149;
        }

        if (v138)
        {
          v16 = v150;
        }

        else
        {
          v16 = 0;
        }

        v11 = v270;
        if (v16 < v5)
        {
          goto LABEL_351;
        }

        v151 = v150 + v138;
        if (!v138)
        {
          v151 = 0;
        }

        *&v276 = v5;
        *(&v276 + 1) = v16;
        v277 = v138;
        *&v278 = v151;
        sub_1AE4A5694(v149);
        v2 = v152;
        sub_1AE4A65CC(v152);
        v148 = v153;
        v12 = v268;
      }

      v154 = sub_1AE4AC038(v2);
      if (v154 == 6)
      {
        goto LABEL_399;
      }

      sub_1AE4AD198(v154, v148, v276, *(&v276 + 1), &v272, &v273);
      v16 = v273;
LABEL_229:
      if (v16 < 0)
      {
        goto LABEL_328;
      }

      v260 = v16;
      v155 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v7, v256, v255);
      if (!v155)
      {
        goto LABEL_385;
      }

      v5 = v155;
      v156 = (*(v155 + 64))();
      v2 = v156;
      v16 = *(v5 + 16);
      v13 = *(v5 + 24);
      v157 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v157 == 2)
        {
          v158 = *(v16 + 16);
          v159 = *(v16 + 24);
          v160 = sub_1AE4EA990();
          if (v160)
          {
            v161 = v160;
            v162 = sub_1AE4EA9B0();
            v16 = v158 - v162;
            if (__OFSUB__(v158, v162))
            {
              goto LABEL_367;
            }

            v163 = v16 + v161;
            v27 = __OFSUB__(v159, v158);
            v164 = v159 - v158;
            if (v27)
            {
              goto LABEL_356;
            }
          }

          else
          {
            v163 = 0;
            v27 = __OFSUB__(v159, v158);
            v164 = v159 - v158;
            if (v27)
            {
              goto LABEL_356;
            }
          }

          v180 = sub_1AE4EA9A0();
          if (v180 >= v164)
          {
            v181 = v164;
          }

          else
          {
            v181 = v180;
          }

          if (v163)
          {
            v16 = v181;
          }

          else
          {
            v16 = 0;
          }

          if (v16 < v2)
          {
            goto LABEL_357;
          }

          v182 = v181 + v163;
          if (!v163)
          {
            v182 = 0;
          }

          *&v276 = v2;
          *(&v276 + 1) = v16;
          v277 = v163;
          *&v278 = v182;
          sub_1AE4A5694(v180);
          v2 = v183;
          sub_1AE4A65CC(v183);
          v174 = v184;
          v7 = v254;
          v12 = v268;
          v11 = v270;
LABEL_270:
          v13 = v269;
          v185 = sub_1AE4AC038(v2);
          if (v185 == 6)
          {
            goto LABEL_401;
          }

          sub_1AE4AD198(v185, v174, v276, *(&v276 + 1), &v272, &v273);

          v179 = v273;
          goto LABEL_272;
        }

        *(&v273 + 6) = 0;
        *&v273 = 0;
        if (v156 > 0)
        {
          goto LABEL_353;
        }

        v276 = v156;
        v277 = &v273;
        *&v278 = &v273;
      }

      else
      {
        if (v157)
        {
          v165 = v16;
          v16 >>= 32;
          v166 = v16 - v165;
          if (v16 < v165)
          {
            goto LABEL_355;
          }

          v167 = sub_1AE4EA990();
          if (v167)
          {
            v168 = sub_1AE4EA9B0();
            v16 = v165 - v168;
            if (__OFSUB__(v165, v168))
            {
              goto LABEL_368;
            }

            v167 += v16;
          }

          v169 = sub_1AE4EA9A0();
          if (v169 >= v166)
          {
            v170 = v166;
          }

          else
          {
            v170 = v169;
          }

          if (v167)
          {
            v16 = v170;
          }

          else
          {
            v16 = 0;
          }

          v11 = v270;
          if (v16 < v2)
          {
            goto LABEL_358;
          }

          v171 = v170 + v167;
          if (!v167)
          {
            v171 = 0;
          }

          *&v276 = v2;
          *(&v276 + 1) = v16;
          v277 = v167;
          *&v278 = v171;
          sub_1AE4A5694(v169);
          v2 = v172;
          sub_1AE4A65CC(v172);
          v174 = v173;
          v12 = v268;
          goto LABEL_270;
        }

        *&v273 = *(v5 + 16);
        WORD4(v273) = v13;
        BYTE10(v273) = BYTE2(v13);
        BYTE11(v273) = BYTE3(v13);
        BYTE12(v273) = BYTE4(v13);
        v16 = BYTE6(v13);
        BYTE13(v273) = BYTE5(v13);
        if (BYTE6(v13) < v156)
        {
          goto LABEL_354;
        }

        *&v276 = v156;
        *(&v276 + 1) = BYTE6(v13);
        v277 = &v273;
        *&v278 = &v273 + BYTE6(v13);
      }

      sub_1AE4A5694(v156);
      v2 = v175;
      sub_1AE4A65CC(v175);
      v177 = v176;
      v13 = v269;
      v178 = sub_1AE4AC038(v2);
      if (v178 == 6)
      {
        goto LABEL_401;
      }

      sub_1AE4AD198(v178, v177, v276, *(&v276 + 1), &v272, &v285);

      v179 = v285;
LABEL_272:
      v257 = 0;
      v258 = *(v259 + 48) + v179;
LABEL_273:
      if (sub_1AE4B8C4C(v13, v12, v11 & 1, 0x6D726570, 0xE400000000000000, 0))
      {
        v186 = (*(v10 + 64))(v10, v271);
        v5 = v186;
        v16 = *(v10 + 16);
        v187 = *(v10 + 24);
        v188 = v187 >> 62;
        if ((v187 >> 62) > 1)
        {
          if (v188 == 2)
          {
            v189 = *(v16 + 16);
            v13 = *(v16 + 24);
            v190 = sub_1AE4EA990();
            if (v190)
            {
              v2 = v190;
              v191 = sub_1AE4EA9B0();
              v16 = v189 - v191;
              if (__OFSUB__(v189, v191))
              {
                goto LABEL_383;
              }

              v192 = v16 + v2;
              v27 = __OFSUB__(v13, v189);
              v193 = v13 - v189;
              if (v27)
              {
                goto LABEL_380;
              }
            }

            else
            {
              v192 = 0;
              v27 = __OFSUB__(v13, v189);
              v193 = v13 - v189;
              if (v27)
              {
                goto LABEL_380;
              }
            }

            v208 = sub_1AE4EA9A0();
            if (v208 >= v193)
            {
              v209 = v193;
            }

            else
            {
              v209 = v208;
            }

            if (v192)
            {
              v16 = v209;
            }

            else
            {
              v16 = 0;
            }

            if (v16 < v5)
            {
              goto LABEL_381;
            }

            v210 = v209 + v192;
            if (!v192)
            {
              v210 = 0;
            }

            *&v276 = v5;
            *(&v276 + 1) = v16;
            v277 = v192;
            *&v278 = v210;
            sub_1AE4A5694(v208);
            v2 = v211;
            sub_1AE4A65CC(v211);
            v1 = v212;
            v5 = v268;
            v213 = sub_1AE4AC038(v2);
            if (v213 == 6)
            {
              goto LABEL_399;
            }

            sub_1AE4AD198(v213, v1, v276, *(&v276 + 1), &v272, &v273);
            v203 = v270 & 1;
            v204 = v269;
            goto LABEL_318;
          }

          *(&v273 + 6) = 0;
          *&v273 = 0;
          if (v186 > 0)
          {
            goto LABEL_377;
          }

          v276 = v186;
          v277 = &v273;
          *&v278 = &v273;
LABEL_303:
          sub_1AE4A5694(v186);
          v2 = v205;
          sub_1AE4A65CC(v205);
          v1 = v206;
          v207 = sub_1AE4AC038(v2);
          if (v207 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v207, v1, v276, *(&v276 + 1), &v272, &v285);
          sub_1AE4A67B4(v13, v12, v11 & 1);

          v4 = v285;
          v9 = 0;
          if ((v285 & 0x8000000000000000) != 0)
          {
            goto LABEL_319;
          }
        }

        else
        {
          if (!v188)
          {
            *&v273 = *(v10 + 16);
            WORD4(v273) = v187;
            BYTE10(v273) = BYTE2(v187);
            BYTE11(v273) = BYTE3(v187);
            BYTE12(v273) = BYTE4(v187);
            v16 = BYTE6(v187);
            BYTE13(v273) = BYTE5(v187);
            if (BYTE6(v187) >= v186)
            {
              *&v276 = v186;
              *(&v276 + 1) = BYTE6(v187);
              v277 = &v273;
              *&v278 = &v273 + BYTE6(v187);
              goto LABEL_303;
            }

LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
LABEL_384:
            __break(1u);
LABEL_385:
            __break(1u);
LABEL_386:
            *(&v273 + 6) = 0;
            *&v273 = 0;
            if (v5 > 0)
            {
              __break(1u);
LABEL_404:
              v241 = v16 + v5;
              *&v273 = v16 + v5;
              *(&v273 + 1) = v15;
              *&v274 = 1;
              BYTE8(v274) = 64;
              v242 = v15;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v239 = swift_allocError();
              *v243 = v241;
              *(v243 + 8) = v242;
            }

            else
            {
              if (v5 < 0)
              {
                __break(1u);
LABEL_389:
                __break(1u);
LABEL_390:
                if (!v2)
                {
                  __break(1u);
LABEL_392:
                  __break(1u);
LABEL_393:
                  if (!v2)
                  {
                    __break(1u);
                  }
                }

                v249 = v2 + v5;
                *&v273 = v2 + v5;
                *(&v273 + 1) = v2 + v13;
                *&v274 = 1;
                BYTE8(v274) = 64;
                sub_1AE4C78AC();
                swift_willThrowTypedImpl();
                v239 = swift_allocError();
                *v250 = v249;
                *(v250 + 8) = v2 + v13;
                *(v250 + 16) = 1;
                *(v250 + 24) = 64;
                goto LABEL_406;
              }

              *&v276 = &v273;
              *(&v276 + 1) = &v273;
              v277 = 1;
              LOBYTE(v278) = 64;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v239 = swift_allocError();
              *v243 = &v273;
              *(v243 + 8) = &v273;
            }

            *(v243 + 16) = 1;
            *(v243 + 24) = 64;
            goto LABEL_406;
          }

          v194 = v16;
          v16 >>= 32;
          v195 = v16 - v194;
          if (v16 < v194)
          {
            goto LABEL_378;
          }

          v2 = sub_1AE4EA990();
          if (v2)
          {
            v196 = sub_1AE4EA9B0();
            v16 = v194 - v196;
            if (__OFSUB__(v194, v196))
            {
              goto LABEL_384;
            }

            v2 += v16;
          }

          v197 = sub_1AE4EA9A0();
          if (v197 >= v195)
          {
            v198 = v195;
          }

          else
          {
            v198 = v197;
          }

          if (v2)
          {
            v16 = v198;
          }

          else
          {
            v16 = 0;
          }

          if (v16 < v5)
          {
            goto LABEL_382;
          }

          v199 = v198 + v2;
          if (!v2)
          {
            v199 = 0;
          }

          *&v276 = v5;
          *(&v276 + 1) = v16;
          v277 = v2;
          *&v278 = v199;
          sub_1AE4A5694(v197);
          v2 = v200;
          v5 = v268;
          sub_1AE4A65CC(v200);
          v1 = v201;
          v202 = sub_1AE4AC038(v2);
          if (v202 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v202, v1, v276, *(&v276 + 1), &v272, &v273);
          v203 = v270 & 1;
          v204 = v13;
LABEL_318:
          sub_1AE4A67B4(v204, v5, v203);

          v4 = v273;
          v9 = 0;
          if ((v273 & 0x8000000000000000) != 0)
          {
LABEL_319:
            __break(1u);
            goto LABEL_320;
          }
        }

        goto LABEL_3;
      }

      sub_1AE4A67B4(v13, v12, v11 & 1);
      sub_1AE4B87FC(&v289);
      v12 = v290;
      v10 = v292;
      v271 = v293;
      v11 = v291;
      if (!v292)
      {
        goto LABEL_321;
      }
    }

    if (v18 != 2)
    {
      goto LABEL_386;
    }

    v25 = *(v16 + 16);
    v24 = *(v16 + 24);
    v2 = sub_1AE4EA990();
    if (v2)
    {
      v26 = sub_1AE4EA9B0();
      v16 = v25 - v26;
      if (__OFSUB__(v25, v26))
      {
        goto LABEL_359;
      }

      v2 += v16;
    }

    v27 = __OFSUB__(v24, v25);
    v28 = v24 - v25;
    if (v27)
    {
      goto LABEL_331;
    }

    v29 = sub_1AE4EA9A0();
    if (v29 >= v28)
    {
      v16 = v28;
    }

    else
    {
      v16 = v29;
    }

    v30 = v2 + v16;
    if (v2)
    {
      v31 = v2 + v16;
    }

    else
    {
      v31 = 0;
    }

    v13 = v31 - v2;
    if (v2)
    {
      v32 = v31 - v2;
    }

    else
    {
      v32 = 0;
    }

    if (v32 < v5)
    {
      goto LABEL_333;
    }

    if (sub_1AE4BA9B0(v5, v32, v2, v31) <= 0)
    {
      goto LABEL_390;
    }

    v12 = v268;
    v11 = v270;
    if (!v2)
    {
      goto LABEL_389;
    }

LABEL_47:
    v38 = *(v2 + v5);
    *&v276 = sub_1AE4A7CA4(1uLL, v5, v13, v2, v30);
    *(&v276 + 1) = v39;
    v277 = v40;
    *&v278 = v41;
    sub_1AE4A65CC(v38);
    v23 = sub_1AE4AC038(v38);
    v13 = v269;
    if (v23 == 6)
    {
      goto LABEL_402;
    }

    goto LABEL_48;
  }

LABEL_321:

  v218 = v265;
  if (v265 == -1)
  {
    goto LABEL_400;
  }

  v3 = a1;
  if ((v263 | v261 | v257 | HIDWORD(v257) | v252))
  {
    goto LABEL_407;
  }

  v219 = *(v259 + 112);
  v281 = *(v259 + 96);
  v282 = v219;
  v220 = *(v259 + 144);
  v283 = *(v259 + 128);
  v284 = v220;
  *(v259 + 96) = v267;
  *(v259 + 104) = v266;
  *(v259 + 112) = v265 & 1;
  *(v259 + 120) = v264;
  *(v259 + 128) = v262;
  *(v259 + 136) = v260;
  *(v259 + 144) = v258;
  *(v259 + 152) = v253;
  sub_1AE4B4558(&v281, &qword_1EB5DD5B8, &qword_1AE4EDC18);
  v5 = *(v259 + 112);
  v221 = ~*(v259 + 112);
  v288 = *(v259 + 96);
  v222 = *(v259 + 136);
  v285 = *(v259 + 120);
  v286 = v222;
  v287 = *(v259 + 152);
  if (!v221)
  {
    goto LABEL_398;
  }

  v276 = *(v259 + 96);
  v278 = *(v259 + 120);
  v279 = *(v259 + 136);
  v223 = *(v259 + 152);
  v277 = v5;
  v280 = v223;
  sub_1AE4DFDBC(&v276, &v273);
  v294 = v288;
  v273 = v285;
  v274 = v286;
  v275 = v287;
LABEL_325:
  *v3 = v294;
  *(v3 + 16) = v5;
  result = *&v273;
  v225 = v274;
  *(v3 + 24) = v273;
  *(v3 + 40) = v225;
  *(v3 + 56) = v275;
  return result;
}

void sub_1AE4CDFCC(uint64_t a1, void (**a2)(void, void), uint64_t a3)
{
  *(swift_allocObject() + 16) = a2;
  _Block_copy(a2);
  sub_1AE4CC184(v26);
  sub_1AE4DFD48(v26);
  if (v27)
  {
    sub_1AE4CC184(v28);
    sub_1AE4DFD48(v28);
    v7 = v29;
    sub_1AE4CC184(v30);
    sub_1AE4DFD48(v30);
    v8 = __CFADD__(v7, v31);
    v9 = v7 + v31;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      if (!*(a1 + 80))
      {
        v23[0] = 4;
        v23[1] = 0;
        v19 = 0u;
        v24 = 0u;
        v13 = -64;
        LOBYTE(v25) = -64;
        sub_1AE4C9430();
        swift_willThrowTypedImpl();

        _Block_release(a2);
        v14 = xmmword_1AE4EC800;
        goto LABEL_9;
      }

      sub_1AE4A6E5C(a1 + 56, v23);
      v10 = v25;
      __swift_project_boxed_opaque_existential_1(v23, *(&v24 + 1));
      sub_1AE4CC184(v32);
      sub_1AE4DFD48(v32);
      if (v9 >= v33)
      {
        v11 = (*(v10 + 8))();
        if (v3)
        {
          v19 = v21;
          v13 = v22;
          __swift_destroy_boxed_opaque_existential_1(v23);

          _Block_release(a2);
          v14 = v20;
LABEL_9:
          *a3 = v14;
          *(a3 + 16) = v19;
          *(a3 + 32) = v13;
          return;
        }

        v16 = v11;
        v17 = v12;
        __swift_destroy_boxed_opaque_existential_1(v23);
        v18 = sub_1AE4EAA70();
        (a2)[2](a2, v18);

        sub_1AE4A41E8(v16, v17);

        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

  v15 = sub_1AE4EAA70();
  (a2)[2](a2, v15);

LABEL_11:
  _Block_release(a2);
}

uint64_t sub_1AE4CE244()
{

  sub_1AE4B4558((v0 + 7), &qword_1EB5DD5B0, &qword_1AE4EDC10);
  sub_1AE4DFF44(v0[12], v0[13], v0[14]);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4CE2F8()
{
  v1 = v0;
  v120 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v98 - v3;
  v5 = sub_1AE4EAC50();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v98 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v98 - v13;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_102;
  }

  v16 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
  v17 = Strong;
  swift_beginAccess();
  sub_1AE4B441C(v17 + v16, v4, &qword_1EB5DD520, &qword_1AE4EDB98);

  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 16))(v9, v4, v5);
    sub_1AE4B4558(v4, &qword_1EB5DD520, &qword_1AE4EDB98);
    sub_1AE4EAB90();
    (*(v6 + 32))(v14, v12, v5);
    v74 = sub_1AE4AC6E0(1935897444, 0xE400000000000000, 0, v1[2], v1[3], v1[4]);
    if (v74)
    {
      v75 = sub_1AE4B9FBC(v74);
      v77 = v76;
      v79 = v78;

      v80 = sub_1AE4DBA6C(v75, v77, v79, v1);

      MEMORY[0x1EEE9AC00](v81);
      *(&v98 - 2) = v14;
      v29 = sub_1AE4CA878(sub_1AE4DFC50, (&v98 - 4), v80);

      (*(v6 + 8))(v14, v5);
      return v29;
    }

    goto LABEL_104;
  }

  sub_1AE4B4558(v4, &qword_1EB5DD520, &qword_1AE4EDB98);
  v18 = sub_1AE4AC6E0(1935897444, 0xE400000000000000, 0, v1[2], v1[3], v1[4]);
  if (!v18)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    sub_1AE4C78AC();
    v83 = swift_allocError();
    *(v84 + 8) = 0;
    *(v84 + 16) = 0;
    *v84 = 0;
    *(v84 + 24) = 0x80;
    swift_willThrow();
    goto LABEL_109;
  }

  v19 = sub_1AE4B9FBC(v18);
  v21 = v20;
  v23 = v22;

  v24 = sub_1AE4DBA6C(v19, v21, v23, v1);

  if (v24 >> 62)
  {
    goto LABEL_88;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
LABEL_89:

    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v112[0] = MEMORY[0x1E69E7CC0];
    v26 = v112;
    sub_1AE4D85DC(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      *(&v114 + 6) = 0;
      *&v114 = 0;
      if (v6 > 0)
      {
        __break(1u);
LABEL_107:
        v85 = v27 + v6;
        *&v114 = v27 + v6;
        *(&v114 + 1) = v26;
        v115 = 1;
        v116 = 64;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v83 = swift_allocError();
        *v86 = v85;
        *(v86 + 8) = v26;
        goto LABEL_108;
      }

      if (v6 < 0)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        if (v25)
        {
          goto LABEL_110;
        }

        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        if (v25)
        {
          goto LABEL_110;
        }

        __break(1u);
LABEL_102:
        __break(1u);
      }

      *&v117 = &v114;
      *(&v117 + 1) = &v114;
      v118 = 1;
      LOBYTE(v119) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v83 = swift_allocError();
      *v97 = &v114;
      *(v97 + 8) = &v114;
      *(v97 + 16) = 1;
      *(v97 + 24) = 64;
      while (1)
      {
LABEL_109:
        v111[0] = v83;
        v87 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
        swift_dynamicCast();
        v88 = *(&v117 + 1);
        v25 = v117;
        v89 = v118;
        v90 = v119;
        v114 = v117;
        v115 = v118;
        v116 = v119;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();

        swift_allocError();
        *v91 = __PAIR128__(v88, v25);
        *(v91 + 16) = v89;
        *(v91 + 24) = v90;
        swift_unexpectedError();
        __break(1u);
        v93 = v92;
        sub_1AE4C78AC();
        swift_allocError();
        *v94 = &type metadata for BPListError;
        *(v94 + 8) = v88;
        *(v94 + 16) = v83;
        *(v94 + 24) = v93;
        swift_unexpectedError();
        __break(1u);
LABEL_110:
        v95 = v25 + v6;
        v96 = v27 + v25;
        *&v114 = v95;
        *(&v114 + 1) = v96;
        v115 = 1;
        v116 = 64;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v83 = swift_allocError();
        *v86 = v95;
        *(v86 + 8) = v96;
LABEL_108:
        *(v86 + 16) = 1;
        *(v86 + 24) = 64;
      }
    }

    v28 = 0;
    v29 = v112[0];
    v30 = v24;
    v102 = v24 & 0xC000000000000001;
    v98 = v24 & 0xFFFFFFFFFFFFFF8;
    v101 = v24;
    v100 = v25;
LABEL_8:
    if (!__OFADD__(v28, 1))
    {
      break;
    }

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
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v25 = sub_1AE4EB150();
    if (!v25)
    {
      goto LABEL_89;
    }
  }

  if (v102)
  {
    v25 = MEMORY[0x1B2701540](v28, v30);
  }

  else
  {
    if (v28 >= *(v98 + 16))
    {
      goto LABEL_75;
    }

    v25 = *(v30 + 8 * v28 + 32);
  }

  v31 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, *(v25 + 16), *(v25 + 24), *(v25 + 32));
  if (!v31)
  {
    goto LABEL_92;
  }

  v32 = v31;
  v26 = *(v31 + 72);
  v33 = (*(v31 + 64))();
  v6 = v33;
  v34 = *(v32 + 16);
  v24 = *(v32 + 24);
  v27 = (v24 >> 62);
  v104 = v28 + 1;
  if ((v24 >> 62) > 1)
  {
    v99 = v29;
    if (v27 != 2)
    {
      goto LABEL_93;
    }

    v40 = *(v34 + 16);
    v41 = *(v34 + 24);
    v42 = sub_1AE4EA990();
    v103 = v25;
    if (v42)
    {
      v43 = v42;
      v44 = sub_1AE4EA9B0();
      if (__OFSUB__(v40, v44))
      {
        goto LABEL_86;
      }

      v25 = v40 - v44 + v43;
      v45 = __OFSUB__(v41, v40);
      v46 = v41 - v40;
      if (v45)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v25 = 0;
      v45 = __OFSUB__(v41, v40);
      v46 = v41 - v40;
      if (v45)
      {
        goto LABEL_78;
      }
    }

    v54 = sub_1AE4EA9A0();
    if (v54 >= v46)
    {
      v55 = v46;
    }

    else
    {
      v55 = v54;
    }

    v56 = v25 + v55;
    if (v25)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v27 = (v57 - v25);
    if (v25)
    {
      v58 = v27;
    }

    else
    {
      v58 = 0;
    }

    if (v58 < v6)
    {
      goto LABEL_81;
    }

    if (v6 < 0)
    {
      goto LABEL_82;
    }

    if (v58 <= v6)
    {
      goto LABEL_100;
    }

    if (!v25)
    {
      goto LABEL_99;
    }

    if (v27 <= v6)
    {
      goto LABEL_85;
    }

    v59 = *(v25 + v6);
    *&v117 = v6 + 1;
    *(&v117 + 1) = v27;
    v118 = v25;
    v119 = v56;
    sub_1AE4A65CC(v59);
    v26 = v60;
    v61 = (v59 >> 4) - 1;
    if (v61 >= 0xD || ((0x1239u >> v61) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1AE4AF684(byte_1AE4EDF82[v61], v60, v117, *(&v117 + 1), v118, v119, &v113, v111);
    v29 = v99;
  }

  else if (v27)
  {
    v103 = v25;
    v47 = v34;
    v48 = v34 >> 32;
    v49 = v48 - v47;
    if (v48 < v47)
    {
      goto LABEL_77;
    }

    v50 = v29;
    v51 = sub_1AE4EA990();
    if (v51)
    {
      v52 = v51;
      v53 = sub_1AE4EA9B0();
      if (__OFSUB__(v47, v53))
      {
        goto LABEL_87;
      }

      v25 = v47 - v53 + v52;
    }

    else
    {
      v25 = 0;
    }

    v62 = sub_1AE4EA9A0();
    if (v62 >= v49)
    {
      v63 = v49;
    }

    else
    {
      v63 = v62;
    }

    v64 = v25 + v63;
    if (v25)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v27 = (v65 - v25);
    if (v25)
    {
      v66 = v27;
    }

    else
    {
      v66 = 0;
    }

    if (v66 < v6)
    {
      goto LABEL_80;
    }

    if (v6 < 0)
    {
      goto LABEL_83;
    }

    if (v66 <= v6)
    {
      goto LABEL_97;
    }

    if (!v25)
    {
      goto LABEL_96;
    }

    if (v27 <= v6)
    {
      goto LABEL_84;
    }

    v67 = *(v25 + v6);
    *&v117 = v6 + 1;
    *(&v117 + 1) = v27;
    v118 = v25;
    v119 = v64;
    sub_1AE4A65CC(v67);
    v26 = v68;
    v69 = (v67 >> 4) - 1;
    if (v69 >= 0xD || ((0x1239u >> v69) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1AE4AF684(byte_1AE4EDF82[v69], v68, v117, *(&v117 + 1), v118, v119, &v113, v111);
    v29 = v50;
  }

  else
  {
    v105 = v34;
    v106 = v24;
    v107 = BYTE2(v24);
    v108 = BYTE3(v24);
    v109 = BYTE4(v24);
    v35 = BYTE6(v24);
    v110 = BYTE5(v24);
    if (BYTE6(v24) < v33)
    {
      goto LABEL_76;
    }

    if (v33 < 0)
    {
      goto LABEL_79;
    }

    v27 = &v105;
    v26 = &v105 + BYTE6(v24);
    if (BYTE6(v24) <= v33)
    {
      goto LABEL_107;
    }

    v36 = v29;
    v37 = *(&v105 + v33);
    *&v117 = v33 + 1;
    *(&v117 + 1) = v35;
    v118 = &v105;
    v119 = v26;
    sub_1AE4A65CC(v37);
    v26 = v38;
    v39 = (v37 >> 4) - 1;
    if (v39 >= 0xD || ((0x1239u >> v39) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1AE4AF684(byte_1AE4EDF82[v39], v38, v117, *(&v117 + 1), v118, v119, &v113, v111);
    v29 = v36;
  }

  v24 = v111[0];
  v70 = v111[1];
  v112[0] = v29;
  v72 = *(v29 + 16);
  v71 = *(v29 + 24);
  if (v72 >= v71 >> 1)
  {
    v26 = v112;
    sub_1AE4D85DC((v71 > 1), v72 + 1, 1);
    v29 = v112[0];
  }

  *(v29 + 16) = v72 + 1;
  v73 = v29 + 16 * v72;
  *(v73 + 32) = v24;
  *(v73 + 40) = v70;
  ++v28;
  v30 = v101;
  if (v104 != v100)
  {
    goto LABEL_8;
  }

  return v29;
}

off_t sub_1AE4CEF4C()
{
  v1 = type metadata accessor for FileIdentifier(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = v0[2];
  v14 = v0[3];
  v15 = v0[4];
  v16 = sub_1AE4AC6E0(1684632947, 0xE400000000000000, 0, v13, v14, v15);
  if (v16)
  {
    v18 = sub_1AE4AEC7C(v16, v17);
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  sub_1AE4CFDC8(v18, v20, v12);
  v21 = sub_1AE4EAB10();
  v22 = (*(*(v21 - 8) + 48))(v12, 1, v21);
  sub_1AE4B4558(v12, &qword_1EB5DD4B8, "R3");
  if (v22 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_21;
    }

    sub_1AE4CFA6C(Strong, v7);

    v22 = sub_1AE4EAC50();
    v26 = *(v22 - 8);
    if ((*(v26 + 48))(v7, 1, v22) == 1)
    {
      sub_1AE4B4558(v7, &qword_1EB5DD520, &qword_1AE4EDB98);
      return 0;
    }

    sub_1AE4EABC0();
    v28 = *(v26 + 8);
    v18 = v26 + 8;
    v28(v7, v22);
  }

  if (swift_weakLoadStrong())
  {

    v29 = sub_1AE4AC6E0(1684632947, 0xE400000000000000, 0, v13, v14, v15);
    if (v29)
    {
      v22 = sub_1AE4AEC7C(v29, v30);
      v18 = v31;
      v32 = v47;
    }

    else
    {
      v22 = 0;
      v18 = 0xF000000000000000;
      v32 = v47;
    }

    sub_1AE4CFDC8(v22, v18, v32);
    v33 = swift_weakLoadStrong();
    if (v33)
    {
      v34 = v45;
      sub_1AE4CFA6C(v33, v45);

      v35 = sub_1AE4EAC50();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35) == 1)
      {
        sub_1AE4B4558(v34, &qword_1EB5DD520, &qword_1AE4EDB98);
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v37 = sub_1AE4EABC0();
        v38 = v39;
        (*(v36 + 8))(v34, v35);
      }

      v40 = v46;
      sub_1AE4CBD90(v32, v37, v38, v46);
      v27 = sub_1AE4D0034(v40, 0, 0, 1, 0);
      sub_1AE4DB5C0(v40, type metadata accessor for FileIdentifier);
      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  v42 = v24;
  v43 = v25;
  sub_1AE4C78AC();
  swift_allocError();
  *v44 = v18;
  *(v44 + 8) = v22;
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

dirent *sub_1AE4CF480()
{
  v1 = sub_1AE4EAC50();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v36 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD588, &qword_1AE4EDBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1AE4EAC00();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  sub_1AE4EABC0();
  v16 = sub_1AE4EADA0();

  v17 = opendir((v16 + 32));

  if (!v17)
  {
    return 0;
  }

  result = readdir(v17);
  if (!result)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_17:
    closedir(v17);
    return v22;
  }

  v34 = v0;
  v35 = v1;
  v19 = v2;
  v20 = (v10 + 48);
  v21 = (v10 + 32);
  v31 = (v10 + 16);
  v32 = (v19 + 16);
  v33 = v19;
  v29 = v19 + 32;
  v30 = (v10 + 8);
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (result->d_type != 8)
    {
      goto LABEL_5;
    }

    if (result->d_namlen == -1)
    {
      break;
    }

    sub_1AE4EAE00();
    sub_1AE4EAC10();
    if ((*v20)(v8, 1, v9) == 1)
    {
      sub_1AE4B4558(v8, &qword_1EB5DD588, &qword_1AE4EDBF0);
LABEL_5:
      result = readdir(v17);
      if (!result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = *v21;
      v28 = v21;
      v23(v15, v8, v9);
      (*v32)(v36, v34, v35);
      (*v31)(v13, v15, v9);
      sub_1AE4EAC20();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AE4E8AFC(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      v27 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1AE4E8AFC((v24 > 1), v25 + 1, 1, v22);
      }

      (*v30)(v15, v9);
      v22[2] = v27;
      (*(v33 + 32))(v22 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, v37, v35);
      result = readdir(v17);
      v21 = v28;
      if (!result)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4CF88C@<X0>(uint64_t **a1@<X0>, int64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1AE4EAC50();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - v13;
  v15 = *a1;
  (*(v9 + 16))(v12, a2, v8);
  v16 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, v15[2], v15[3], v15[4]);
  if (v16)
  {
    a2 = sub_1AE4AF28C(v16);
    v4 = v19;
    if (!v3)
    {

      sub_1AE4EAC30();
      v20 = sub_1AE4EABC0();
      v22 = v21;
      result = (*(v9 + 8))(v14, v8);
      *a3 = v20;
      a3[1] = v22;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = v17;
  v25 = v18;
  sub_1AE4C78AC();
  swift_allocError();
  *v26 = a2;
  *(v26 + 8) = v4;
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4CFA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1AE4EAC50();
  v22 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = sub_1AE4AC6E0(1701670515, 0xE400000000000000, 0, v2[2], v2[3], v2[4]);
  if (v15)
  {
    v16 = sub_1AE4AF28C(v15);
    v21 = v17;

    v18 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    swift_beginAccess();
    sub_1AE4B441C(a1 + v18, v7, &qword_1EB5DD520, &qword_1AE4EDB98);
    if ((*(v22 + 48))(v7, 1, v8) == 1)
    {
      sub_1AE4B4558(v7, &qword_1EB5DD520, &qword_1AE4EDB98);
      MEMORY[0x1B27010F0](v16, v21);
    }

    else
    {
      (*(v22 + 32))(v14, v7, v8);
      (*(v22 + 16))(v11, v14, v8);
      sub_1AE4EAB90();
      sub_1AE4EAC30();
      (*(v22 + 8))(v14, v8);
    }

    return (*(v22 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v19 = *(v22 + 56);

    return v19(a2, 1, 1, v8);
  }
}

uint64_t sub_1AE4CFDC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 != 15)
  {
    v6 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v6 != 2)
      {
        v7 = a1;
        goto LABEL_17;
      }

      v8 = *(a1 + 16);
      v7 = a1;

      v9 = sub_1AE4EA990();
      if (!v9)
      {
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_1AE4EA9B0();
      if (!__OFSUB__(v8, v11))
      {
        v12 = v8 - v11 + v10;
        sub_1AE4EA9A0();
        if (v12)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = a1;
LABEL_17:
        sub_1AE4EAAF0();
        sub_1AE4ABE40(v7, a2);
        sub_1AE4ABE40(v7, a2);
        v4 = 0;
        goto LABEL_18;
      }

      v13 = a1;
      if (a1 <= a1 >> 32)
      {
        v7 = a1;

        v14 = sub_1AE4EA990();
        if (!v14)
        {
LABEL_26:
          result = sub_1AE4EA9A0();
          __break(1u);
          goto LABEL_27;
        }

        v15 = v14;
        v16 = sub_1AE4EA9B0();
        if (!__OFSUB__(v13, v16))
        {
          v17 = v13 - v16 + v15;
          result = sub_1AE4EA9A0();
          if (v17)
          {
            goto LABEL_17;
          }

LABEL_27:
          __break(1u);
          return result;
        }

        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1AE4EA9A0();
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = 1;
LABEL_18:
  v19 = sub_1AE4EAB10();
  v20 = *(*(v19 - 8) + 56);

  return v20(a3, v4, 1, v19);
}

off_t sub_1AE4D0034(uint64_t a1, off_t a2, off_t a3, char a4, uint64_t a5)
{
  v10 = sub_1AE4EAB10();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileIdentifier(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AE4DB620(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1AE4DB5C0(v16, type metadata accessor for FileIdentifier);
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = sub_1AE4D77D4(*v16, v16[1], a2, a3, a4 & 1, a5);

    return v18;
  }

  v27 = a3;
  v28 = a2;
  v19 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
  v21 = *v19;
  v20 = v19[1];
  (*(v11 + 32))(v13, v16, v10);
  v18 = sub_1AE4D77D4(v21, v20, 0, 0, 1, a5);
  v23 = v22;
  if (v22 >> 60 == 15)
  {
    (*(v11 + 8))(v13, v10);

    return v18;
  }

  result = sub_1AE4D7C74(v13, v18, v22);
  v25 = result;
  if ((a4 & 1) != 0 || a5)
  {
    if (!__CFADD__(v28, result))
    {
      v26 = sub_1AE4D77D4(v21, v20, v28 + result, v27, a4 & 1, a5);

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

  result = v28 + v25;
  if (__CFADD__(v28, v25))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((result | v27) < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(result, v27))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result + v27 >= result)
  {
    v26 = sub_1AE4EAA60();
LABEL_16:
    sub_1AE4ABE40(v18, v23);
    (*(v11 + 8))(v13, v10);
    return v26;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1AE4D0344@<X0>(uint64_t a1@<X8>)
{
  v37[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4E0, &qword_1AE4EDB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v37 - v8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v10, v11, v12);
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = sub_1AE4AEC7C(v13, v14);
  v19 = v18;

  sub_1AE4B0730(v17, v19);
  v2 = sub_1AE4EAB10();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v9, 0, 1, v2);
  v20 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, v10, v11, v12);
  if (!v20)
  {
LABEL_8:
    __break(1u);
    v29 = v15;
    v30 = v16;
    sub_1AE4C78AC();
    swift_allocError();
    *v31 = v3;
    *(v31 + 8) = v2;
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    swift_unexpectedError();
    __break(1u);
    v33 = v32;
    v35 = v34;
    sub_1AE4C78AC();
    swift_allocError();
    *v36 = v11;
    *(v36 + 8) = v10;
    *(v36 + 16) = v33;
    *(v36 + 24) = v35;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v21 = sub_1AE4AF28C(v20);
  v23 = v22;

  sub_1AE4B441C(v9, v6, &qword_1EB5DD4B8, "R3");
  v24 = (*(v3 + 48))(v6, 1, v2);
  sub_1AE4B4558(v9, &qword_1EB5DD4B8, "R3");
  if (v24 == 1)
  {
    v25 = v37[0];
    *v37[0] = v21;
    *(v25 + 8) = v23;
    type metadata accessor for FileIdentifier(0);
    swift_storeEnumTagMultiPayload();
    return sub_1AE4B4558(v6, &qword_1EB5DD4B8, "R3");
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58);
    v28 = (v37[0] + *(v27 + 48));
    (*(v3 + 32))(v37[0], v6, v2);
    *v28 = v21;
    v28[1] = v23;
    type metadata accessor for FileIdentifier(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1AE4D06AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v102 = a3;
  v97 = a1;
  v7 = type metadata accessor for FileIdentifier(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v96 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v91 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v91 - v22;
  v103 = sub_1AE4EAC50();
  v104 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4[2];
  v25 = v4[3];
  v101 = v4;
  v26 = v4[4];
  v109 = v25;
  v110 = v24;
  v108 = v26;
  v27 = sub_1AE4AC6E0(1936744813, 0xE400000000000000, 0, v24, v25, v26);
  if (!v27)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v92 = v18;
  v93 = v14;
  v95 = v7;
  v98 = a4;
  v32 = sub_1AE4B9FBC(v27);
  v34 = v33;
  v36 = v35;
  if (v5)
  {
    goto LABEL_58;
  }

  v94 = v12;

  v37 = sub_1AE4CA244(v32, v34, v36);

  v107 = *(v37 + 16);
  if (v107)
  {
    v38 = 0;
    v39 = (v37 + 48);
    v40 = MEMORY[0x1E69E7CC0];
    v105 = v37;
    v106 = v21;
    while (v38 < *(v37 + 16))
    {
      v114 = v40;
      v42 = *(v39 - 2);
      v41 = *(v39 - 1);
      v43 = *v39;

      v120 = v42;
      v44 = sub_1AE4AC6E0(1717989222, 0xE400000000000000, 0, v42, v41, v43);
      if (!v44)
      {
        goto LABEL_50;
      }

      v21 = sub_1AE4A6A00(v44);

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      v111 = v21;
      v113 = v39;
      v45 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v120, v41, v43);
      if (!v45)
      {
        goto LABEL_51;
      }

      v46 = sub_1AE4A6A00(v45);
      v112 = v38;

      v47 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v110, v109, v108);
      if (!v47)
      {
        goto LABEL_52;
      }

      v48 = sub_1AE4A6A00(v47);
      v21 = 0;

      v49 = v46 - v48;
      if (v46 < v48)
      {
        goto LABEL_47;
      }

      v50 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v120, v41, v43);
      if (!v50)
      {
        goto LABEL_53;
      }

      v51 = sub_1AE4A6A00(v50);
      v53 = v112;
      v52 = v113;

      v40 = v114;
      v21 = v106;
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AE4E89E0(0, *(v40 + 2) + 1, 1, v40);
      }

      v55 = *(v40 + 2);
      v54 = *(v40 + 3);
      if (v55 >= v54 >> 1)
      {
        v40 = sub_1AE4E89E0((v54 > 1), v55 + 1, 1, v40);
      }

      v38 = v53 + 1;

      *(v40 + 2) = v55 + 1;
      v56 = &v40[24 * v55];
      *(v56 + 4) = v111;
      *(v56 + 5) = v49;
      *(v56 + 6) = v51;
      v39 = v52 + 3;
      v37 = v105;
      if (v107 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if (v102)
  {
    v57 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    v58 = v102;
    swift_beginAccess();
    sub_1AE4B441C(v58 + v57, v21, &qword_1EB5DD520, &qword_1AE4EDB98);
    v59 = *(v104 + 48);
    if (v59(v21, 1, v103) != 1)
    {
      v60 = v104;
      v61 = v100;
      v62 = v103;
      (*(v104 + 32))(v100, v21, v103);
      (*(v60 + 56))(v61, 0, 1, v62);
      goto LABEL_29;
    }
  }

  else
  {
    (*(v104 + 56))(v21, 1, 1, v103);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v64 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    v65 = Strong;
    swift_beginAccess();
    v61 = v100;
    sub_1AE4B441C(v65 + v64, v100, &qword_1EB5DD520, &qword_1AE4EDB98);

    v62 = v103;
    v66 = v104;
  }

  else
  {
    v66 = v104;
    v61 = v100;
    v62 = v103;
    (*(v104 + 56))(v100, 1, 1, v103);
  }

  v59 = *(v66 + 48);
  if (v59(v21, 1, v62) != 1)
  {
    sub_1AE4B4558(v21, &qword_1EB5DD520, &qword_1AE4EDB98);
  }

LABEL_29:
  if (v59(v61, 1, v62) == 1)
  {

    sub_1AE4B4558(v61, &qword_1EB5DD520, &qword_1AE4EDB98);
    v115 = 4;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = -64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
LABEL_44:
    v82 = v98;
    *v98 = 4;
    v82[1] = 0;
    v82[2] = 0;
    v82[3] = 0;
    *(v82 + 32) = -64;
    return result;
  }

  v68 = v104;
  v69 = v99;
  (*(v104 + 32))(v99, v61, v62);
  v70 = v94;
  sub_1AE4D0344(v94);
  v71 = v92;
  (*(v68 + 16))(v92, v69, v62);
  (*(v68 + 56))(v71, 0, 1, v62);
  v72 = v93;
  sub_1AE4D127C(v71, v93);
  sub_1AE4B4558(v71, &qword_1EB5DD520, &qword_1AE4EDB98);
  sub_1AE4DB5C0(v70, type metadata accessor for FileIdentifier);
  v73 = v72;
  v74 = v96;
  sub_1AE4BA8A8(v73, v96, type metadata accessor for FileIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1AE4DB5C0(v74, type metadata accessor for FileIdentifier);
LABEL_43:

    v115 = 4;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = -64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();
    result = (*(v104 + 8))(v99, v62);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v77 = *v74;
    v76 = v74[1];
  }

  else
  {
    v78 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
    v77 = *v78;
    v76 = v78[1];
    v79 = sub_1AE4EAB10();
    (*(*(v79 - 8) + 8))(v74, v79);
  }

  if (!v102 && !swift_weakLoadStrong())
  {

    goto LABEL_43;
  }

  if (!v97)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v80 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v110, v109, v108);
  if (!v80)
  {
LABEL_56:
    __break(1u);
    v32 = v28;
    v36 = v29;
    v34 = v30;
    sub_1AE4C78AC();
    swift_allocError();
    *v83 = v21;
    *(v83 + 8) = v32;
    *(v83 + 16) = v36;
    *(v83 + 24) = v34;
    while (1)
    {
      swift_unexpectedError();
      __break(1u);
LABEL_58:
      v84 = v31;
      sub_1AE4C78AC();
      swift_allocError();
      *v85 = v32;
      *(v85 + 8) = v34;
      *(v85 + 16) = v36;
      *(v85 + 24) = v84;
      swift_unexpectedError();
      __break(1u);
      v32 = v86;
      v36 = v87;
      v89 = v88;
      sub_1AE4C78AC();
      swift_allocError();
      *v90 = v34;
      *(v90 + 8) = v32;
      *(v90 + 16) = v36;
      *(v90 + 24) = v89;
    }
  }

  v81 = sub_1AE4A6A00(v80);

  if ((v81 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  sub_1AE4DF35C(v97, v77, v76, v40);

  return (*(v104 + 8))(v99, v103);
}

uint64_t sub_1AE4D127C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a1;
  v73 = a2;
  v72 = sub_1AE4EAB10();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD588, &qword_1AE4EDBF0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v64 - v6;
  v7 = type metadata accessor for FileIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - v11;
  v13 = sub_1AE4EAC50();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v64 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v64 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v64 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v64 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v64 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  sub_1AE4B441C(v74, v12, &qword_1EB5DD520, &qword_1AE4EDB98);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1AE4B4558(v12, &qword_1EB5DD520, &qword_1AE4EDB98);
    return sub_1AE4DB620(v75, v73);
  }

  v34 = *(v14 + 32);
  v74 = v32;
  v34(v32, v12, v13);
  v35 = v75;
  sub_1AE4DB620(v75, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v14 + 8))(v74, v13);
    sub_1AE4DB620(v35, v73);
    return sub_1AE4DB5C0(v9, type metadata accessor for FileIdentifier);
  }

  v75 = v7;
  if (EnumCaseMultiPayload != 1)
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58);
    v49 = (v9 + *(v48 + 48));
    v51 = *v49;
    v50 = v49[1];
    v52 = v70;
    (*(v70 + 32))(v71, v9, v72);
    v53 = v73;
    (*(v52 + 16))();
    (*(v14 + 16))(v26, v74, v13);
    sub_1AE4EAB90();

    v54 = v66;
    v55 = MEMORY[0x1B27010F0](v51, v50);
    v56 = v69;
    MEMORY[0x1B2700FE0](v55);
    v57 = *(v14 + 8);
    v57(v54, v13);
    v58 = sub_1AE4EAC00();
    result = (*(*(v58 - 8) + 48))(v56, 1, v58);
    if (result != 1)
    {

      v59 = (v53 + *(v48 + 48));
      v60 = v65;
      sub_1AE4EAC20();
      v61 = sub_1AE4EABC0();
      v63 = v62;
      v57(v60, v13);
      (*(v52 + 8))(v71, v72);
      v57(v74, v13);
      *v59 = v61;
      v59[1] = v63;
      return swift_storeEnumTagMultiPayload();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v38 = *v9;
  v37 = v9[1];
  v39 = v74;
  (*(v14 + 16))(v26, v74, v13);
  sub_1AE4EAB90();

  v40 = MEMORY[0x1B27010F0](v38, v37);
  v41 = v68;
  MEMORY[0x1B2700FE0](v40);
  v42 = *(v14 + 8);
  v42(v23, v13);
  v43 = sub_1AE4EAC00();
  result = (*(*(v43 - 8) + 48))(v41, 1, v43);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1AE4EAC20();
  v44 = sub_1AE4EABC0();
  v46 = v45;
  v42(v30, v13);
  v42(v39, v13);
  v47 = v73;
  *v73 = v44;
  v47[1] = v46;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AE4D197C()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1AE4D19E8(uint64_t a1)
{
  sub_1AE4D1AC8(319, &qword_1EB5DD1A0, 255, MEMORY[0x1E69E83A8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AE4D1AC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1AE4EB010();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AE4D1B1C()
{
  sub_1AE4EB0A0();

  strcpy(v28, "caches/uuids/");
  HIWORD(v28[1]) = -4864;
  sub_1AE4EAAC0();
  v0 = sub_1AE4EAD90();
  v2 = v1;

  MEMORY[0x1B2701270](v0, v2);

  MEMORY[0x1B2701270](0x7473696C702ELL, 0xE600000000000000);
  swift_beginAccess();
  v3 = sub_1AE4AA0F0(v28[0], v28[1], &v27);
  v5 = v4;
  swift_endAccess();

  if (v5 >> 60 != 15)
  {
    sub_1AE4AB600(v3, v5);
    v6 = sub_1AE4AB614(v3, v5);
    sub_1AE4ABE40(v3, v5);
    v7 = sub_1AE4AC2B4(v6);
    v11 = sub_1AE4AC6E0(0x7364697575, 0xE500000000000000, 0, v7, v9, v10);

    if (v11)
    {
      v12 = sub_1AE4AC2B4(v11);
      v14 = v13;
      v16 = v15;

      sub_1AE4EAAC0();
      v17 = sub_1AE4EAD90();
      v19 = v18;

      v20 = sub_1AE4AC6E0(v17, v19, 0, v12, v16, v14);

      if (v20)
      {
        v21 = sub_1AE4AC2B4(v20);
        v23 = v22;
        v25 = v24;

        sub_1AE4E15F0(v21, v23, v25, &v26);

        sub_1AE4ABE40(v3, v5);
        return v21;
      }
    }

    sub_1AE4ABE40(v3, v5);
  }

  return 0;
}

uint64_t sub_1AE4D1EB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD548, &qword_1AE4EDBB8);
  swift_allocObject();
  result = sub_1AE4EAC70();
  qword_1EB5DF640 = result;
  return result;
}

uint64_t sub_1AE4D1F00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4D1F38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4D1F70(uint64_t a1)
{
  swift_beginAccess();
  sub_1AE4D4124(a1 + 40, 0x100000000);
  return swift_endAccess();
}

uint64_t sub_1AE4D1FD4(uint64_t a1, int a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5E8, &qword_1AE4EDC30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5F0, &qword_1AE4EDC38);
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v64 - v12;
  if (!*(a1 + 16))
  {
    if (a2)
    {
      swift_beginAccess();
      v14 = *(v2 + 16);
      v15 = 1 << *(v14 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v3 = v16 & *(v14 + 64);
      v17 = (v15 + 63) >> 6;

      v21 = 0;
      while (v3)
      {
LABEL_11:
        v23 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v24 = *(*(v14 + 56) + ((v21 << 9) | (8 * v23)));
        if (*(v24 + 32) == a2 && *(v24 + 36) == 1)
        {
          v25 = *(v24 + 16);

          v25(v26);
        }
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v17)
        {
        }

        v3 = *(v14 + 64 + 8 * v22);
        ++v21;
        if (v3)
        {
          v21 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = result;
    v28 = sub_1AE4A39D4(*(v2 + 32), &v80);
    v66 = v29;
    v30 = v28[6];
    v31 = v28[7];
    v67 = v28;
    v32 = sub_1AE4AC6E0(1701669236, 0xE400000000000000, 0, v30, v31, v28[8]);
    if (!v32)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v3 = sub_1AE4A6A00(v32);
    v73 = v13;
    v76 = v8;
    v65 = v10;
    v77 = v27;

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    v33 = *(v2 + 80);
    v34 = v33[6];
    v35 = v33[7];
    v36 = v33[8];

    v37 = sub_1AE4AC6E0(1701669236, 0xE400000000000000, 0, v34, v35, v36);
    if (!v37)
    {
LABEL_44:
      __break(1u);
      v60 = v18;
      v61 = v19;
      v62 = v20;
      sub_1AE4C78AC();
      swift_allocError();
      *v63 = v3;
      *(v63 + 8) = v60;
      *(v63 + 16) = v61;
      *(v63 + 24) = v62;
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v38 = sub_1AE4A6A00(v37);

    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    v39 = v73;
    v40 = v66;
    if (v38 < v3)
    {
      v72 = v6;
      v41 = *(v2 + 80);
      v64[0] = *(v2 + 88);
      *(v2 + 80) = v67;
      *(v2 + 88) = v40;

      v79[0] = sub_1AE4BD470();
      v64[1] = v41;
      v79[4] = sub_1AE4BD470();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5F8, &qword_1AE4EDC40);
      sub_1AE4AC078(&qword_1EB5DD600, &qword_1EB5DD5F8, &qword_1AE4EDC40, MEMORY[0x1E69E6310]);
      sub_1AE4D72BC();
      sub_1AE4EAD00();

      swift_beginAccess();
      v42 = *(v2 + 24);
      v43 = v42 + 64;
      v44 = 1 << *(v42 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v42 + 64);
      v47 = (v44 + 63) >> 6;
      v68 = (v65 + 16);
      v71 = v42;

      v48 = 0;
      v49 = v76;
      v50 = v77;
      v70 = v43;
      v69 = v47;
      while (v46)
      {
        v51 = v72;
LABEL_30:
        v74 = v46;
        v75 = v48;
        v53 = *(*(v71 + 56) + ((v48 << 9) | (8 * __clz(__rbit64(v46)))));
        (*v68)(v49, v39, v50);
        v54 = *(v51 + 36);
        v3 = sub_1AE4AC078(&qword_1EB5DD608, &qword_1EB5DD5F0, &qword_1AE4EDC38, MEMORY[0x1E69E6F00]);
        v78 = v53;

        sub_1AE4EAEB0();
        while (1)
        {
          sub_1AE4EAEC0();
          if (*(v49 + v54) == v79[0])
          {
            break;
          }

          v55 = sub_1AE4EAF60();
          v57 = *v56;
          v58 = *(v56 + 8);
          v59 = *(v56 + 25);
          sub_1AE4DFF18(*v56, v58);
          v55(v79, 0);
          sub_1AE4EAED0();
          if (*(v78 + 32) == 1)
          {
            (*(v78 + 16))(v58, v59 ^ 1u);
          }

          sub_1AE4DFF20(v57, v58);
          v49 = v76;
          v50 = v77;
        }

        v46 = (v74 - 1) & v74;
        sub_1AE4B4558(v49, &qword_1EB5DD5E8, &qword_1AE4EDC30);

        v39 = v73;
        v43 = v70;
        v47 = v69;
        v48 = v75;
      }

      v51 = v72;
      while (1)
      {
        v52 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_40;
        }

        if (v52 >= v47)
        {

          return (*(v65 + 8))(v39, v50);
        }

        v46 = *(v43 + 8 * v52);
        ++v48;
        if (v46)
        {
          v48 = v52;
          goto LABEL_30;
        }
      }
    }
  }

  return result;
}

void sub_1AE4D2730(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 64);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v6);
    v8 = qword_1EB5DD1C0;

    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1AE4EAF80();
    if (v11 == 2 || (v11 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v10);
      sub_1AE4EAFA0();
    }

    else
    {

      sub_1AE4D296C(a1, a2, a3, &v12);
    }
  }

  else
  {

    sub_1AE4EB140();
    __break(1u);
  }
}

uint64_t sub_1AE4D296C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_beginAccess();
  if (*(a1 + 56) <= 1u)
  {
    if (!*(a1 + 56))
    {

      goto LABEL_9;
    }
  }

  else if (*(a1 + 56) - 2 < 2)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v10 = 5;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = -64;

LABEL_8:
    swift_willThrow();
    swift_endAccess();
LABEL_14:
  }

  result = sub_1AE4D3A48((a1 + 40));
  if (result)
  {
    v12 = result;
    sub_1AE4C9430();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    goto LABEL_8;
  }

LABEL_9:
  v14 = *(a1 + 72);
  if (v14 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 72) = v14 + 1;
    swift_endAccess();
    if (*(a1 + 56))
    {
      sub_1AE4C9430();
      swift_allocError();
      *v15 = 5;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = -64;
      swift_willThrow();
      goto LABEL_14;
    }

    type metadata accessor for Process.Impl.ProcessUpdateRecord();
    v16 = swift_allocObject();
    *(v16 + 32) = 1;
    *(v16 + 16) = sub_1AE4E04E8;
    *(v16 + 24) = v9;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    sub_1AE4DA77C(v16, v14, isUniquelyReferenced_nonNull_native, sub_1AE4E9B94, &qword_1EB5DD540, &qword_1AE4EDBB0);
    *(a1 + 24) = v34;
    swift_endAccess();
    v18 = sub_1AE4A39D4(*(a1 + 32), v32);
    if (v4)
    {
      v20 = v33;
      sub_1AE4C9430();
      v28 = v32[1];
      v30 = v32[0];
      swift_allocError();
      *v21 = v30;
      *(v21 + 16) = v28;
      *(v21 + 32) = v20;
      goto LABEL_14;
    }

    v31 = v14;
    *(a1 + 80) = v18;
    *(a1 + 88) = v19;

    v22 = sub_1AE4BD470();

    v23 = *(v22 + 16);
    if (v23)
    {
      v29 = a4;
      v24 = (v22 + 32);
      do
      {
        v25 = *v24++;
        v26 = objc_allocWithZone(_DYImage);

        v27 = [v26 initWithInternal_];
        *&v27[OBJC_IVAR____DYImage_impl] = v25;

        a2(v27, 1);

        --v23;
      }

      while (v23);

      a4 = v29;
    }

    else
    {
    }

    *a4 = v31;
  }

  return result;
}

uint64_t sub_1AE4D2D38@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = swift_beginAccess();
  if (*(a1 + 56) <= 1u)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 56) - 2 < 2)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v10 = 5;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = -64;
LABEL_7:
    swift_willThrow();
    return swift_endAccess();
  }

  result = sub_1AE4D3A48((a1 + 40));
  if (result)
  {
    v11 = result;
    sub_1AE4C9430();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    goto LABEL_7;
  }

LABEL_8:
  v13 = *(a1 + 72);
  if (v13 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 72) = v13 + 1;
    swift_endAccess();
    if (*(a1 + 56))
    {
      sub_1AE4C9430();
      swift_allocError();
      *v14 = 5;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = -64;
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for Process.Impl.ProcessUpdateRecord();
      v15 = swift_allocObject();
      *(v15 + 32) = 1;
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a1 + 24);
      *(a1 + 24) = 0x8000000000000000;
      sub_1AE4DA77C(v15, v13, isUniquelyReferenced_nonNull_native, sub_1AE4E9B94, &qword_1EB5DD540, &qword_1AE4EDBB0);
      *(a1 + 24) = v29;
      swift_endAccess();
      v17 = sub_1AE4A39D4(*(a1 + 32), v27);
      if (v4)
      {
        v19 = v28;
        sub_1AE4C9430();
        v25 = v27[1];
        v26 = v27[0];
        result = swift_allocError();
        *v20 = v26;
        *(v20 + 16) = v25;
        *(v20 + 32) = v19;
      }

      else
      {
        *(a1 + 80) = v17;
        *(a1 + 88) = v18;

        v21 = sub_1AE4BD470();

        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = v21 + 32;
          do
          {
            v23 += 8;

            a2(v24, 1);

            --v22;
          }

          while (v22);
        }

        *a4 = v13;
      }
    }
  }

  return result;
}

void sub_1AE4D3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 64))
  {
    v4 = v3;
    v7 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v8 = qword_1EB5DD1C0;
    v10 = v9;
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = sub_1AE4EAF80();
    if (v12 == 2 || (v12 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v11);
      sub_1AE4EAFA0();
    }

    else
    {
      sub_1AE4D321C(v4, v7, a2, a3, &v13);
    }
  }

  else
  {
    sub_1AE4EB140();
    __break(1u);
  }
}

uint64_t sub_1AE4D321C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  result = swift_beginAccess();
  if (*(a1 + 56) <= 1u)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 56) - 2 < 2)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v11 = 5;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = -64;
LABEL_7:
    swift_willThrow();
    return swift_endAccess();
  }

  result = sub_1AE4D3A48((a1 + 40));
  if (result)
  {
    v12 = result;
    sub_1AE4C9430();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    goto LABEL_7;
  }

LABEL_8:
  v14 = *(a1 + 72);
  if (v14 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 72) = v14 + 1;
    swift_endAccess();
    if (*(a1 + 56))
    {
      sub_1AE4C9430();
      swift_allocError();
      *v15 = 5;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = -64;
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for Process.Impl.ProcessNotifierRecord();
      v16 = swift_allocObject();
      *(v16 + 36) = 1;
      *(v16 + 32) = a2;
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(a1 + 16);
      *(a1 + 16) = 0x8000000000000000;
      sub_1AE4DA77C(v16, v14, isUniquelyReferenced_nonNull_native, sub_1AE4E9BA8, &qword_1EB5DD5E0, &qword_1AE4EDC28);
      *(a1 + 16) = v18;
      result = swift_endAccess();
      *a5 = v14;
    }
  }

  return result;
}

void sub_1AE4D3440(uint64_t a1)
{
  if (*(v1 + 64))
  {
    v3 = v1;
    MEMORY[0x1EEE9AC00](a1);
    v5 = qword_1EB5DD1C0;
    v7 = v6;
    if (v5 != -1)
    {
      swift_once();
    }

    v8 = sub_1AE4EAF80();
    if (v9 == 2 || (v9 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v8);
      sub_1AE4EAFA0();
    }

    else
    {
      sub_1AE4D35EC(v3, a1);
    }
  }

  else
  {
    sub_1AE4EB140();
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_1AE4D35EC(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (!*(a1 + 56))
  {
    swift_beginAccess();
    v5 = *(a1 + 24);
    if (*(v5 + 16))
    {
      v6 = sub_1AE4E8EEC(a2);
      if (v7)
      {
        *(*(*(v5 + 56) + 8 * v6) + 32) = 0;
        swift_beginAccess();

        sub_1AE4D965C(a2, sub_1AE4EA804, sub_1AE4E9B94);
        swift_endAccess();
      }
    }

    result = swift_beginAccess();
    v8 = *(a1 + 16);
    if (*(v8 + 16))
    {
      result = sub_1AE4E8EEC(a2);
      if (v9)
      {
        *(*(*(v8 + 56) + 8 * result) + 36) = 0;
        swift_beginAccess();

        sub_1AE4D965C(a2, sub_1AE4EA804, sub_1AE4E9BA8);
        swift_endAccess();
      }
    }

    if (!*(*(a1 + 24) + 16) && !*(*(a1 + 16) + 16))
    {
      swift_beginAccess();
      sub_1AE4D4124(a1 + 40, 0x100000000);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1AE4D37E4()
{
  v17 = *MEMORY[0x1E69E9840];
  result = swift_beginAccess();
  if (!*(v0 + 56))
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = v0;
    swift_unknownObjectRetain();
    v5 = swift_slowAlloc();
    ObjectType = swift_getObjectType();
    v7 = MEMORY[0x1B2701490](ObjectType);
    v8 = mach_msg(v5, 2050, 0, 0x8000u, v7, 0, 0);
    if (v8)
    {
      v9 = v8;
      swift_beginAccess();
      sub_1AE4D4124(v4 + 40, v9);
      swift_endAccess();
LABEL_15:
      MEMORY[0x1B27020A0](v5, -1, -1);
      return sub_1AE4BD9E8(v2, v3, 0);
    }

    msgh_bits = v5->msgh_bits;
    if ((v5->msgh_bits & 0x80000000) == 0)
    {
      msgh_size = v5->msgh_size;
      msgh_remote_port = v5->msgh_remote_port;
      msgh_id = v5->msgh_id;
      if ((msgh_id & 0xFFFFF000) == 0x4000)
      {
        if (msgh_size <= 0x8000)
        {
          swift_beginAccess();
          sub_1AE4D1FD4(v0 + 40, msgh_id & 0xFFF);
          swift_endAccess();
LABEL_17:
          *&msg.msgh_voucher_port = 0;
          msg.msgh_remote_port = msgh_remote_port;
          msg.msgh_local_port = 0;
          msg.msgh_bits = msgh_bits & 0x1F;
          msg.msgh_size = 24;
          v14 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
          if (!v14)
          {
            v5->msgh_remote_port = 0;
            goto LABEL_14;
          }

          v15 = v14;
          swift_beginAccess();
          sub_1AE4D4124(v0 + 40, v15);
LABEL_13:
          swift_endAccess();
LABEL_14:
          mach_msg_destroy(v5);
          goto LABEL_15;
        }
      }

      else if ((msgh_id == 4096 || msgh_id == 12288 || msgh_id == 0x2000) && msgh_size <= 0x8000)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    sub_1AE4D4124(v0 + 40, 4);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1AE4D3A48(uint64_t *a1)
{
  v2 = v1;
  v40 = *MEMORY[0x1E69E9840];
  v4 = sub_1AE4EAC80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE4EACA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 64);
  if (!v12)
  {
LABEL_21:
    __break(1u);
  }

  v13 = qword_1EB5DD1C0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  sub_1AE4EAF80();

  if (LOBYTE(aBlock.flags) == 2 || (aBlock.flags & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = *a1;
  result = *(a1 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (!*(a1 + 16))
    {
      return result;
    }

    v32 = v9;
    v33 = v8;
    v17 = v5;
    v34 = v4;
    v31 = a1[1];
    name = v15;
    goto LABEL_12;
  }

  if (result == 2 || result == 3)
  {
    return *a1;
  }

  v24 = sub_1AE4DAFAC(0xFFFFFFFFFFFFFFFFLL);
  aBlock.8 = 0uLL;
  *&aBlock.flags = 0x500000029;
  name = 0;
  v25 = MEMORY[0x1E69E9A60];
  result = mach_port_construct(*MEMORY[0x1E69E9A60], &aBlock, v24, &name);
  if (!result)
  {
    v27 = task_dyld_process_info_notify_register(*(v2 + 32), name);
    if (v27)
    {
      v28 = *v25;
      v29 = v27;
      mach_port_destruct(v28, name, 0, v24);
      result = v29;
      v26 = v29;
      goto LABEL_17;
    }

    v32 = v9;
    v33 = v8;
    v31 = v24;
    v17 = v5;
    v34 = v4;
LABEL_12:
    sub_1AE4DFE10();
    v18 = *(v2 + 64);
    v19 = sub_1AE4EAFB0();

    swift_getObjectType();
    v38 = sub_1AE4DFE5C;
    v39 = v2;
    *&aBlock.flags = MEMORY[0x1E69E9820];
    aBlock.reserved[0] = 1107296256;
    v30[1] = &aBlock.reserved[1];
    aBlock.reserved[1] = sub_1AE4D3F10;
    v37 = &block_descriptor_170;
    v20 = _Block_copy(&aBlock);

    sub_1AE4EAC90();
    sub_1AE4D4038();
    sub_1AE4EAFC0();
    _Block_release(v20);
    v30[0] = *(v17 + 8);
    (v30[0])(v7, v34);
    v21 = v33;
    v32 = *(v32 + 8);
    (v32)(v11, v33);

    v38 = sub_1AE4DFE60;
    v39 = v2;
    *&aBlock.flags = MEMORY[0x1E69E9820];
    aBlock.reserved[0] = 1107296256;
    aBlock.reserved[1] = sub_1AE4D3F10;
    v37 = &block_descriptor_173;
    v22 = _Block_copy(&aBlock);

    sub_1AE4EAC90();
    sub_1AE4D4038();
    sub_1AE4EAFD0();
    _Block_release(v22);
    (v30[0])(v7, v34);
    (v32)(v11, v21);

    sub_1AE4EAFF0();
    result = 0;
    v23 = v31;
    *a1 = v19;
    a1[1] = v23;
    *(a1 + 16) = 0;
    return result;
  }

  v26 = result;
LABEL_17:
  *a1 = v26;
  a1[1] = 0;
  *(a1 + 16) = 3;
  return result;
}

uint64_t sub_1AE4D3F10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AE4D3F54(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 56);
  if (v3 <= 2 && v3 != 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    if (v3 == 1)
    {
      task_dyld_process_info_notify_deregister(*(a1 + 32), *(a1 + 40));
      mach_port_destruct(*MEMORY[0x1E69E9A60], v5, 0, v6);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v9 = *(a1 + 56);
      v10 = 4;
    }

    else
    {
      task_dyld_process_info_notify_deregister(*(a1 + 32), HIDWORD(v5));
      mach_port_destruct(*MEMORY[0x1E69E9A60], HIDWORD(v5), 0, v6);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = 0;
      v9 = *(a1 + 56);
      v10 = 3;
    }

    *(a1 + 56) = v10;
    return sub_1AE4BD9E8(v7, v8, v9);
  }

  return result;
}

uint64_t sub_1AE4D4038()
{
  sub_1AE4EAC80();
  sub_1AE4AA0A8(&qword_1EB5DCF78, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5D0, &qword_1AE4EDC20);
  sub_1AE4AC078(&qword_1EB5DD5D8, &qword_1EB5DD5D0, &qword_1AE4EDC20, MEMORY[0x1E69E6328]);
  return sub_1AE4EB050();
}

void sub_1AE4D4124(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v2;
  v7 = qword_1EB5DD1C0;
  v8 = v3;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1AE4EAF80();

  if (v18 == 2 || (v18 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = *a1;
    if (*(a1 + 16))
    {
      if ((a2 & 0x100000000) != 0)
      {
        return;
      }

      *a1 = a2 | (v10 << 32);
      v9 = 2;
      goto LABEL_17;
    }

    v11 = *(a1 + 8);
    swift_beginAccess();
    v12 = MEMORY[0x1E69E7CC8];
    *(v4 + 24) = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    *(v4 + 16) = v12;

    ObjectType = swift_getObjectType();
    v14 = MEMORY[0x1B2701490](ObjectType);
    v15 = (a2 & 0x100000000) == 0;
    v16 = a2 | (v14 << 32);
    if (v15)
    {
      v14 = v16;
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    *a1 = v14;
    *(a1 + 8) = v11;
    *(a1 + 16) = v17;
    swift_getObjectType();
    sub_1AE4EAFE0();
    sub_1AE4BD9E8(v10, v11, 0);
  }

  else if (*(a1 + 16) - 2 >= 2 && (a2 & 0x100000000) == 0)
  {
    *a1 = a2;
    *(a1 + 8) = 0;
    v9 = 3;
LABEL_17:
    *(a1 + 16) = v9;
  }
}

double sub_1AE4D4300(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE4DCB04(a1, a2, v9);
  if (v4)
  {
    v7 = v10;
    result = *v9;
    v8 = v9[1];
    *a4 = v9[0];
    *(a4 + 16) = v8;
    *(a4 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AE4D4348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v23 = *MEMORY[0x1E69E9840];
  v6 = sub_1AE4EAB10();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping) = xmmword_1AE4ED4C0;
  *(v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_localCacheBaseAddress) = 0;
  v10 = (v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping);
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0xF000000000000000;
  *(v3 + 16) = a2;
  v11 = OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachePath;
  v12 = sub_1AE4EAC50();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v3 + v11, a3, v12);
  v21 = 0;
  v22 = 0;
  if (_dyld_get_shared_cache_uuid() && (sub_1AE4EAAF0(), v14 = sub_1AE4EAAE0(), v15 = *(v7 + 8), v15(v9, v6), (v14 & 1) != 0))
  {
    v20 = 0;
    shared_cache_range = _dyld_get_shared_cache_range();
    (*(v13 + 8))(a3, v12);
    v15(v19, v6);
    *(v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_localCacheBaseAddress) = shared_cache_range;
  }

  else
  {
    (*(v13 + 8))(a3, v12);
    (*(v7 + 8))(v19, v6);
  }

  return v3;
}

unint64_t sub_1AE4D45C8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  v314 = a2;
  v315 = a1;
  v328 = *MEMORY[0x1E69E9840];
  v9 = sub_1AE4EAA30();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v298 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v307 = &v298 - v14;
  v15 = type metadata accessor for FileIdentifier(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v306 = &v298 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v298 - v19);
  v21 = (v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping);
  v22 = *(v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping + 8);
  if (v22 >> 60 != 15)
  {
    goto LABEL_142;
  }

  v303 = a3;
  v305 = v4;
  v23 = (v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping);
  v24 = *(v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 24);
  if (v24 >> 60 != 15 && *v23 == v315 && v23[1] == v314)
  {
    v4 = v23[2];
    sub_1AE4A6FD8(v4, v24);
    return v4;
  }

  v301 = (v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping);
  v18 = *(v305 + 16);
  v304 = a4;
  v302 = v20;
  v300 = v9;
  v299 = v10;
  v298 = v12;
  if (v18 >> 62)
  {
    goto LABEL_333;
  }

  v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_334:
    v320 = 4uLL;
    v321 = 0;
    v322 = 0;
    v323 = -64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();
    goto LABEL_335;
  }

  while (2)
  {
    v27 = 0;
    v313 = v18 & 0xC000000000000001;
    v312 = v18 & 0xFFFFFFFFFFFFFF8;
    v310 = v26;
    v311 = v18;
    while (!v313)
    {
      if (v27 >= *(v312 + 16))
      {
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
        goto LABEL_328;
      }

      v28 = *(v18 + 8 * v27 + 32);

      v21 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        goto LABEL_141;
      }

LABEL_14:
      v316 = v21;
      v29 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v28[2], v28[3], v28[4]);
      if (!v29)
      {
        goto LABEL_369;
      }

      v9 = v29;
      v30 = (*(v29 + 64))();
      v24 = v30;
      v31 = v9[2];
      v22 = v9[3];
      v32 = v22 >> 62;
      *&v318 = v28;
      if ((v22 >> 62) > 1)
      {
        if (v32 != 2)
        {
          *(&v325 + 6) = 0;
          *&v325 = 0;
          if (v30 > 0)
          {
            goto LABEL_306;
          }

          v320 = v30;
          v321 = &v325;
          v322 = &v325;
          v64 = v7;
          sub_1AE4A5694(v30);
          v38 = v34;
          if (v64)
          {
            goto LABEL_381;
          }

          goto LABEL_55;
        }

        v10 = *(v31 + 16);
        v39 = *(v31 + 24);
        v40 = sub_1AE4EA990();
        if (v40)
        {
          v41 = sub_1AE4EA9B0();
          if (__OFSUB__(v10, v41))
          {
            goto LABEL_322;
          }

          v40 += v10 - v41;
        }

        v42 = __OFSUB__(v39, v10);
        v10 = v39 - v10;
        if (v42)
        {
          goto LABEL_307;
        }

        v43 = sub_1AE4EA9A0();
        if (v43 >= v10)
        {
          v44 = v10;
        }

        else
        {
          v44 = v43;
        }

        if (v40)
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        if (v45 < v24)
        {
          goto LABEL_308;
        }

        v46 = (v44 + v40);
        if (!v40)
        {
          v46 = 0;
        }

        *&v320 = v24;
        *(&v320 + 1) = v45;
        v321 = v40;
        v322 = v46;
        v47 = v7;
        sub_1AE4A5694(v43);
        v38 = v48;
        if (v47)
        {
LABEL_381:
          v278 = v35;
          v279 = v36;
          v280 = v37;
          sub_1AE4C78AC();
          v276 = swift_allocError();
          *v281 = v38;
          *(v281 + 8) = v278;
          *(v281 + 16) = v279;
          *(v281 + 24) = v280;
          goto LABEL_382;
        }

        sub_1AE4A65CC(v48);
        v50 = v49;
        v28 = v318;
LABEL_51:
        v62 = sub_1AE4AC038(v38);
        if (v62 == 6)
        {
          goto LABEL_380;
        }

        sub_1AE4AD198(v62, v50, v320, *(&v320 + 1), &v324, &v325);
        v24 = 0;

        v63 = v325;
        goto LABEL_57;
      }

      if (v32)
      {
        v51 = v31;
        v52 = v31 >> 32;
        v10 = v52 - v51;
        if (v52 < v51)
        {
          goto LABEL_305;
        }

        v53 = sub_1AE4EA990();
        if (v53)
        {
          v54 = sub_1AE4EA9B0();
          if (__OFSUB__(v51, v54))
          {
            goto LABEL_323;
          }

          v53 += v51 - v54;
        }

        v55 = sub_1AE4EA9A0();
        if (v55 >= v10)
        {
          v56 = v10;
        }

        else
        {
          v56 = v55;
        }

        if (v53)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        v28 = v318;
        if (v57 < v24)
        {
          goto LABEL_309;
        }

        v58 = (v56 + v53);
        if (!v53)
        {
          v58 = 0;
        }

        *&v320 = v24;
        *(&v320 + 1) = v57;
        v321 = v53;
        v322 = v58;
        v59 = v7;
        sub_1AE4A5694(v55);
        v38 = v60;
        if (v59)
        {
          goto LABEL_381;
        }

        sub_1AE4A65CC(v60);
        v50 = v61;
        goto LABEL_51;
      }

      *&v325 = v31;
      WORD4(v325) = v22;
      BYTE10(v325) = BYTE2(v22);
      BYTE11(v325) = BYTE3(v22);
      BYTE12(v325) = BYTE4(v22);
      BYTE13(v325) = BYTE5(v22);
      if (BYTE6(v22) < v30)
      {
        goto LABEL_304;
      }

      *&v320 = v30;
      *(&v320 + 1) = BYTE6(v22);
      v321 = &v325;
      v322 = &v325 + BYTE6(v22);
      v33 = v7;
      sub_1AE4A5694(v30);
      v38 = v34;
      if (v33)
      {
        goto LABEL_381;
      }

LABEL_55:
      sub_1AE4A65CC(v34);
      v66 = v65;
      v67 = sub_1AE4AC038(v38);
      if (v67 == 6)
      {
        goto LABEL_380;
      }

      sub_1AE4AD198(v67, v66, v320, *(&v320 + 1), &v324, &v319);
      v24 = 0;

      v63 = v319;
LABEL_57:
      v317 = v63;
      v68 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v28[2], v28[3], v28[4]);
      if (!v68)
      {
        goto LABEL_370;
      }

      v7 = v68;
      v69 = (*(v68 + 64))();
      v9 = v69;
      v70 = *(v7 + 16);
      v10 = *(v7 + 24);
      v71 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v71 != 2)
        {
          *(&v325 + 6) = 0;
          *&v325 = 0;
          if (v69 > 0)
          {
            goto LABEL_310;
          }

          v320 = v69;
          v321 = &v325;
          v322 = &v325;
          goto LABEL_95;
        }

        v22 = *(v70 + 16);
        v72 = *(v70 + 24);
        v73 = sub_1AE4EA990();
        if (v73)
        {
          v74 = sub_1AE4EA9B0();
          if (__OFSUB__(v22, v74))
          {
            goto LABEL_324;
          }

          v73 += v22 - v74;
        }

        v42 = __OFSUB__(v72, v22);
        v22 = v72 - v22;
        if (v42)
        {
          goto LABEL_313;
        }

        v75 = sub_1AE4EA9A0();
        if (v75 >= v22)
        {
          v76 = v22;
        }

        else
        {
          v76 = v75;
        }

        if (v73)
        {
          v77 = v76;
        }

        else
        {
          v77 = 0;
        }

        if (v77 < v9)
        {
          goto LABEL_315;
        }

        v78 = (v76 + v73);
        if (!v73)
        {
          v78 = 0;
        }

        *&v320 = v9;
        *(&v320 + 1) = v77;
        v321 = v73;
        v322 = v78;
        sub_1AE4A5694(v75);
        v9 = v79;
        sub_1AE4A65CC(v79);
        v81 = v80;
        v28 = v318;
LABEL_91:
        v92 = sub_1AE4AC038(v9);
        if (v92 == 6)
        {
          goto LABEL_380;
        }

        sub_1AE4AD198(v92, v81, v320, *(&v320 + 1), &v324, &v325);
        v24 = 0;

        v93 = v325;
        goto LABEL_97;
      }

      if (v71)
      {
        v82 = v70;
        v83 = v70 >> 32;
        v22 = v83 - v82;
        if (v83 < v82)
        {
          goto LABEL_312;
        }

        v84 = sub_1AE4EA990();
        if (v84)
        {
          v85 = sub_1AE4EA9B0();
          if (__OFSUB__(v82, v85))
          {
            goto LABEL_325;
          }

          v84 += v82 - v85;
        }

        v86 = sub_1AE4EA9A0();
        if (v86 >= v22)
        {
          v87 = v22;
        }

        else
        {
          v87 = v86;
        }

        if (v84)
        {
          v88 = v87;
        }

        else
        {
          v88 = 0;
        }

        v28 = v318;
        if (v88 < v9)
        {
          goto LABEL_314;
        }

        v89 = (v87 + v84);
        if (!v84)
        {
          v89 = 0;
        }

        *&v320 = v9;
        *(&v320 + 1) = v88;
        v321 = v84;
        v322 = v89;
        sub_1AE4A5694(v86);
        v9 = v90;
        sub_1AE4A65CC(v90);
        v81 = v91;
        goto LABEL_91;
      }

      *&v325 = *(v7 + 16);
      WORD4(v325) = v10;
      BYTE10(v325) = BYTE2(v10);
      BYTE11(v325) = BYTE3(v10);
      BYTE12(v325) = BYTE4(v10);
      BYTE13(v325) = BYTE5(v10);
      if (BYTE6(v10) < v69)
      {
        goto LABEL_311;
      }

      *&v320 = v69;
      *(&v320 + 1) = BYTE6(v10);
      v321 = &v325;
      v322 = &v325 + BYTE6(v10);
LABEL_95:
      sub_1AE4A5694(v69);
      v9 = v94;
      sub_1AE4A65CC(v94);
      v96 = v95;
      v97 = sub_1AE4AC038(v9);
      if (v97 == 6)
      {
        goto LABEL_380;
      }

      sub_1AE4AD198(v97, v96, v320, *(&v320 + 1), &v324, &v319);
      v24 = 0;

      v93 = v319;
LABEL_97:
      v98 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v28[2], v28[3], v28[4]);
      if (!v98)
      {
        goto LABEL_371;
      }

      v9 = v98;
      v99 = (*(v98 + 64))();
      v7 = v99;
      v100 = v9[2];
      v22 = v9[3];
      v101 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v101 != 2)
        {
          *(&v325 + 6) = 0;
          *&v325 = 0;
          if (v99 > 0)
          {
            goto LABEL_316;
          }

          v320 = v99;
          v321 = &v325;
          v322 = &v325;
          goto LABEL_132;
        }

        v309 = v93;
        v102 = *(v100 + 16);
        v10 = *(v100 + 24);
        v103 = sub_1AE4EA990();
        if (v103)
        {
          v104 = sub_1AE4EA9B0();
          if (__OFSUB__(v102, v104))
          {
            goto LABEL_326;
          }

          v103 += v102 - v104;
        }

        v42 = __OFSUB__(v10, v102);
        v10 -= v102;
        if (v42)
        {
          goto LABEL_319;
        }

        v105 = sub_1AE4EA9A0();
        if (v105 >= v10)
        {
          v106 = v10;
        }

        else
        {
          v106 = v105;
        }

        if (v103)
        {
          v107 = v106;
        }

        else
        {
          v107 = 0;
        }

        if (v107 < v7)
        {
          goto LABEL_321;
        }
      }

      else
      {
        if (!v101)
        {
          *&v325 = v9[2];
          WORD4(v325) = v22;
          BYTE10(v325) = BYTE2(v22);
          BYTE11(v325) = BYTE3(v22);
          BYTE12(v325) = BYTE4(v22);
          BYTE13(v325) = BYTE5(v22);
          if (BYTE6(v22) < v99)
          {
            goto LABEL_317;
          }

          *&v320 = v99;
          *(&v320 + 1) = BYTE6(v22);
          v321 = &v325;
          v322 = &v325 + BYTE6(v22);
LABEL_132:
          sub_1AE4A5694(v99);
          v118 = v117;
          sub_1AE4A65CC(v117);
          v4 = v119;
          v24 = 0;
          v120 = sub_1AE4AC038(v118);
          if (v120 == 6)
          {
            goto LABEL_380;
          }

          sub_1AE4AD198(v120, v4, v320, *(&v320 + 1), &v324, &v319);
          v7 = 0;

          v116 = v319;
          goto LABEL_134;
        }

        v10 = v100;
        v108 = v100 >> 32;
        v109 = v108 - v10;
        if (v108 < v10)
        {
          goto LABEL_318;
        }

        v309 = v93;
        v103 = sub_1AE4EA990();
        if (v103)
        {
          v110 = sub_1AE4EA9B0();
          if (__OFSUB__(v10, v110))
          {
            goto LABEL_327;
          }

          v103 += v10 - v110;
        }

        v105 = sub_1AE4EA9A0();
        if (v105 >= v109)
        {
          v106 = v109;
        }

        else
        {
          v106 = v105;
        }

        if (v103)
        {
          v107 = v106;
        }

        else
        {
          v107 = 0;
        }

        if (v107 < v7)
        {
          goto LABEL_320;
        }
      }

      v111 = (v106 + v103);
      if (!v103)
      {
        v111 = 0;
      }

      *&v320 = v7;
      *(&v320 + 1) = v107;
      v321 = v103;
      v322 = v111;
      sub_1AE4A5694(v105);
      v113 = v112;
      sub_1AE4A65CC(v112);
      v4 = v114;
      v28 = v318;
      v93 = v309;
      v24 = 0;
      v115 = sub_1AE4AC038(v113);
      if (v115 == 6)
      {
        goto LABEL_380;
      }

      sub_1AE4AD198(v115, v4, v320, *(&v320 + 1), &v324, &v325);
      v7 = 0;

      v116 = v325;
LABEL_134:
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_299;
      }

      v121 = __CFADD__(v93, v116);
      v122 = v93 + v116;
      if (v121)
      {
        goto LABEL_300;
      }

      if (v317 <= v315 && v122 >= v314)
      {
        v129 = sub_1AE4AC6E0(1936744813, 0xE400000000000000, 0, v28[2], v28[3], v28[4]);
        if (v129)
        {
          v130 = sub_1AE4B9FBC(v129);
          v132 = v131;
          v134 = v133;
          v22 = 0;

          v4 = sub_1AE4CA244(v130, v132, v134);
          v7 = 0;

          v310 = v4;
          v309 = *(v4 + 16);
          if (v309)
          {
            v24 = 0;
            v135 = (v310 + 48);
            do
            {
              if (v24 >= *(v310 + 16))
              {
                goto LABEL_301;
              }

              v312 = v24;
              v10 = *(v135 - 2);
              v136 = *(v135 - 1);
              v137 = *v135;

              v316 = v137;
              v317 = v136;
              v138 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v10, v136, v137);
              if (!v138)
              {
                goto LABEL_372;
              }

              v9 = v138;
              v139 = (*(v138 + 64))();
              v140 = v139;
              v141 = v9[2];
              v142 = v9[3];
              v143 = v142 >> 62;
              v313 = v10;
              if ((v142 >> 62) > 1)
              {
                if (v143 == 2)
                {
                  v145 = *(v141 + 16);
                  v144 = *(v141 + 24);
                  v146 = sub_1AE4EA990();
                  if (v146)
                  {
                    v147 = sub_1AE4EA9B0();
                    if (__OFSUB__(v145, v147))
                    {
                      goto LABEL_356;
                    }

                    v146 += v145 - v147;
                  }

                  v42 = __OFSUB__(v144, v145);
                  v148 = v144 - v145;
                  if (v42)
                  {
                    goto LABEL_341;
                  }

                  v149 = sub_1AE4EA9A0();
                  if (v149 >= v148)
                  {
                    v150 = v148;
                  }

                  else
                  {
                    v150 = v149;
                  }

                  if (v146)
                  {
                    v151 = v150;
                  }

                  else
                  {
                    v151 = 0;
                  }

                  if (v151 < v140)
                  {
                    goto LABEL_343;
                  }

                  v152 = (v150 + v146);
                  if (!v146)
                  {
                    v152 = 0;
                  }

                  *&v320 = v140;
                  *(&v320 + 1) = v151;
                  v321 = v146;
                  v322 = v152;
                  sub_1AE4A5694(v149);
                  v154 = v153;
                  sub_1AE4A65CC(v153);
                  v156 = v155;
                  v28 = v318;
                  v10 = v313;
LABEL_191:
                  v168 = sub_1AE4AC038(v154);
                  if (v168 == 6)
                  {
                    goto LABEL_380;
                  }

                  sub_1AE4AD198(v168, v156, v320, *(&v320 + 1), &v324, &v325);

                  v169 = v325;
                  goto LABEL_197;
                }

                *(&v325 + 6) = 0;
                *&v325 = 0;
                if (v139 > 0)
                {
                  goto LABEL_340;
                }

                v320 = v139;
                v321 = &v325;
                v322 = &v325;
              }

              else
              {
                if (v143)
                {
                  v157 = v141;
                  v158 = v141 >> 32;
                  v159 = v158 - v157;
                  if (v158 < v157)
                  {
                    __break(1u);
LABEL_339:
                    __break(1u);
LABEL_340:
                    __break(1u);
LABEL_341:
                    __break(1u);
LABEL_342:
                    __break(1u);
LABEL_343:
                    __break(1u);
LABEL_344:
                    __break(1u);
LABEL_345:
                    __break(1u);
LABEL_346:
                    __break(1u);
LABEL_347:
                    __break(1u);
LABEL_348:
                    __break(1u);
LABEL_349:
                    __break(1u);
LABEL_350:
                    __break(1u);
LABEL_351:
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
                    goto LABEL_362;
                  }

                  v160 = sub_1AE4EA990();
                  if (v160)
                  {
                    v161 = sub_1AE4EA9B0();
                    if (__OFSUB__(v157, v161))
                    {
                      goto LABEL_357;
                    }

                    v160 += v157 - v161;
                  }

                  v10 = v313;
                  v162 = sub_1AE4EA9A0();
                  if (v162 >= v159)
                  {
                    v163 = v159;
                  }

                  else
                  {
                    v163 = v162;
                  }

                  if (v160)
                  {
                    v164 = v163;
                  }

                  else
                  {
                    v164 = 0;
                  }

                  if (v164 < v140)
                  {
                    goto LABEL_342;
                  }

                  v165 = (v163 + v160);
                  if (!v160)
                  {
                    v165 = 0;
                  }

                  *&v320 = v140;
                  *(&v320 + 1) = v164;
                  v321 = v160;
                  v322 = v165;
                  sub_1AE4A5694(v162);
                  v154 = v166;
                  sub_1AE4A65CC(v166);
                  v156 = v167;
                  v28 = v318;
                  goto LABEL_191;
                }

                *&v325 = v141;
                WORD4(v325) = v142;
                BYTE10(v325) = BYTE2(v142);
                BYTE11(v325) = BYTE3(v142);
                BYTE12(v325) = BYTE4(v142);
                BYTE13(v325) = BYTE5(v142);
                if (BYTE6(v142) < v139)
                {
                  goto LABEL_339;
                }

                *&v320 = v139;
                *(&v320 + 1) = BYTE6(v142);
                v321 = &v325;
                v322 = &v325 + BYTE6(v142);
              }

              sub_1AE4A5694(v139);
              v171 = v170;
              sub_1AE4A65CC(v170);
              v173 = v172;
              v174 = sub_1AE4AC038(v171);
              if (v174 == 6)
              {
                goto LABEL_380;
              }

              sub_1AE4AD198(v174, v173, v320, *(&v320 + 1), &v324, &v319);

              v169 = v319;
LABEL_197:
              v311 = v169;
              v175 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v10, v317, v316);
              if (!v175)
              {
                goto LABEL_373;
              }

              v9 = v175;
              v176 = (*(v175 + 64))();
              v177 = v176;
              v178 = v9[2];
              v179 = v9[3];
              v180 = v179 >> 62;
              if ((v179 >> 62) > 1)
              {
                if (v180 == 2)
                {
                  v182 = *(v178 + 16);
                  v181 = *(v178 + 24);
                  v183 = sub_1AE4EA990();
                  if (v183)
                  {
                    v184 = sub_1AE4EA9B0();
                    if (__OFSUB__(v182, v184))
                    {
                      goto LABEL_358;
                    }

                    v183 += v182 - v184;
                  }

                  v42 = __OFSUB__(v181, v182);
                  v185 = v181 - v182;
                  if (v42)
                  {
                    goto LABEL_347;
                  }

                  v186 = sub_1AE4EA9A0();
                  if (v186 >= v185)
                  {
                    v187 = v185;
                  }

                  else
                  {
                    v187 = v186;
                  }

                  if (v183)
                  {
                    v188 = v187;
                  }

                  else
                  {
                    v188 = 0;
                  }

                  if (v188 < v177)
                  {
                    goto LABEL_349;
                  }

                  v189 = (v187 + v183);
                  if (!v183)
                  {
                    v189 = 0;
                  }

                  *&v320 = v177;
                  *(&v320 + 1) = v188;
                  v321 = v183;
                  v322 = v189;
                  sub_1AE4A5694(v186);
                  v191 = v190;
                  sub_1AE4A65CC(v190);
                  v193 = v192;
                  v28 = v318;
                  v10 = v313;
LABEL_231:
                  v205 = sub_1AE4AC038(v191);
                  if (v205 == 6)
                  {
                    goto LABEL_380;
                  }

                  sub_1AE4AD198(v205, v193, v320, *(&v320 + 1), &v324, &v325);

                  v206 = v325;
                  goto LABEL_237;
                }

                *(&v325 + 6) = 0;
                *&v325 = 0;
                if (v176 > 0)
                {
                  goto LABEL_346;
                }

                v320 = v176;
                v321 = &v325;
                v322 = &v325;
              }

              else
              {
                if (v180)
                {
                  v194 = v178;
                  v195 = v178 >> 32;
                  v196 = v195 - v194;
                  if (v195 < v194)
                  {
                    goto LABEL_345;
                  }

                  v197 = sub_1AE4EA990();
                  if (v197)
                  {
                    v198 = sub_1AE4EA9B0();
                    if (__OFSUB__(v194, v198))
                    {
                      goto LABEL_359;
                    }

                    v197 += v194 - v198;
                  }

                  v10 = v313;
                  v199 = sub_1AE4EA9A0();
                  if (v199 >= v196)
                  {
                    v200 = v196;
                  }

                  else
                  {
                    v200 = v199;
                  }

                  if (v197)
                  {
                    v201 = v200;
                  }

                  else
                  {
                    v201 = 0;
                  }

                  if (v201 < v177)
                  {
                    goto LABEL_348;
                  }

                  v202 = (v200 + v197);
                  if (!v197)
                  {
                    v202 = 0;
                  }

                  *&v320 = v177;
                  *(&v320 + 1) = v201;
                  v321 = v197;
                  v322 = v202;
                  sub_1AE4A5694(v199);
                  v191 = v203;
                  sub_1AE4A65CC(v203);
                  v193 = v204;
                  v28 = v318;
                  goto LABEL_231;
                }

                *&v325 = v9[2];
                WORD4(v325) = v179;
                BYTE10(v325) = BYTE2(v179);
                BYTE11(v325) = BYTE3(v179);
                BYTE12(v325) = BYTE4(v179);
                BYTE13(v325) = BYTE5(v179);
                if (BYTE6(v179) < v176)
                {
                  goto LABEL_344;
                }

                *&v320 = v176;
                *(&v320 + 1) = BYTE6(v179);
                v321 = &v325;
                v322 = &v325 + BYTE6(v179);
              }

              sub_1AE4A5694(v176);
              v208 = v207;
              sub_1AE4A65CC(v207);
              v210 = v209;
              v211 = sub_1AE4AC038(v208);
              if (v211 == 6)
              {
                goto LABEL_380;
              }

              sub_1AE4AD198(v211, v210, v320, *(&v320 + 1), &v324, &v319);

              v206 = v319;
LABEL_237:
              v212 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v10, v317, v316);
              if (!v212)
              {
                goto LABEL_374;
              }

              v9 = v212;
              v213 = (*(v212 + 64))();
              v214 = v213;
              v215 = v9[2];
              v22 = v9[3];
              v216 = v22 >> 62;
              if ((v22 >> 62) > 1)
              {
                if (v216 == 2)
                {
                  v308 = v206;
                  v218 = *(v215 + 16);
                  v217 = *(v215 + 24);
                  v219 = sub_1AE4EA990();
                  if (v219)
                  {
                    v220 = sub_1AE4EA9B0();
                    if (__OFSUB__(v218, v220))
                    {
                      goto LABEL_360;
                    }

                    v219 += v218 - v220;
                  }

                  v42 = __OFSUB__(v217, v218);
                  v221 = v217 - v218;
                  if (v42)
                  {
                    goto LABEL_353;
                  }

                  v222 = sub_1AE4EA9A0();
                  if (v222 >= v221)
                  {
                    v223 = v221;
                  }

                  else
                  {
                    v223 = v222;
                  }

                  if (v219)
                  {
                    v224 = v223;
                  }

                  else
                  {
                    v224 = 0;
                  }

                  if (v224 < v214)
                  {
                    goto LABEL_355;
                  }

                  v225 = (v223 + v219);
                  if (!v219)
                  {
                    v225 = 0;
                  }

                  *&v320 = v214;
                  *(&v320 + 1) = v224;
                  v321 = v219;
                  v322 = v225;
                  sub_1AE4A5694(v222);
                  v227 = v226;
                  sub_1AE4A65CC(v226);
                  v4 = v228;
                  v28 = v318;
                  v10 = v313;
LABEL_271:
                  v206 = v308;
                  v240 = sub_1AE4AC038(v227);
                  if (v240 == 6)
                  {
                    goto LABEL_380;
                  }

                  sub_1AE4AD198(v240, v4, v320, *(&v320 + 1), &v324, &v325);
                  v7 = 0;

                  v241 = v325;
                  goto LABEL_277;
                }

                *(&v325 + 6) = 0;
                *&v325 = 0;
                if (v213 > 0)
                {
                  goto LABEL_350;
                }

                v320 = v213;
                v321 = &v325;
                v322 = &v325;
              }

              else
              {
                if (v216)
                {
                  v229 = v215;
                  v230 = v215 >> 32;
                  v231 = v230 - v229;
                  if (v230 < v229)
                  {
                    goto LABEL_352;
                  }

                  v308 = v206;
                  v232 = sub_1AE4EA990();
                  if (v232)
                  {
                    v233 = sub_1AE4EA9B0();
                    if (__OFSUB__(v229, v233))
                    {
                      goto LABEL_361;
                    }

                    v232 += v229 - v233;
                  }

                  v10 = v313;
                  v234 = sub_1AE4EA9A0();
                  if (v234 >= v231)
                  {
                    v235 = v231;
                  }

                  else
                  {
                    v235 = v234;
                  }

                  if (v232)
                  {
                    v236 = v235;
                  }

                  else
                  {
                    v236 = 0;
                  }

                  if (v236 < v214)
                  {
                    goto LABEL_354;
                  }

                  v237 = (v235 + v232);
                  if (!v232)
                  {
                    v237 = 0;
                  }

                  *&v320 = v214;
                  *(&v320 + 1) = v236;
                  v321 = v232;
                  v322 = v237;
                  sub_1AE4A5694(v234);
                  v227 = v238;
                  sub_1AE4A65CC(v238);
                  v4 = v239;
                  v28 = v318;
                  goto LABEL_271;
                }

                *&v325 = v9[2];
                WORD4(v325) = v22;
                BYTE10(v325) = BYTE2(v22);
                BYTE11(v325) = BYTE3(v22);
                BYTE12(v325) = BYTE4(v22);
                BYTE13(v325) = BYTE5(v22);
                if (BYTE6(v22) < v213)
                {
                  goto LABEL_351;
                }

                *&v320 = v213;
                *(&v320 + 1) = BYTE6(v22);
                v321 = &v325;
                v322 = &v325 + BYTE6(v22);
              }

              sub_1AE4A5694(v213);
              v243 = v242;
              sub_1AE4A65CC(v242);
              v4 = v244;
              v245 = sub_1AE4AC038(v243);
              if (v245 == 6)
              {
                goto LABEL_380;
              }

              sub_1AE4AD198(v245, v4, v320, *(&v320 + 1), &v324, &v319);
              v7 = 0;

              v241 = v319;
LABEL_277:
              v24 = v312;
              if ((v241 & 0x8000000000000000) != 0)
              {
                goto LABEL_302;
              }

              v121 = __CFADD__(v206, v241);
              v246 = v206 + v241;
              if (v121)
              {
                goto LABEL_303;
              }

              v247 = v315 - v311;
              if (v315 >= v311 && v246 >= v314)
              {

                v248 = sub_1AE4AC6E0(1717989222, 0xE400000000000000, 0, v10, v317, v316);
                if (v248)
                {
                  v249 = sub_1AE4A6A00(v248);
                  v250 = v304;

                  if ((v249 & 0x8000000000000000) == 0)
                  {
                    v121 = __CFADD__(v249, v247);
                    v251 = v249 + v247;
                    if (!v121)
                    {
                      v252 = v306;
                      sub_1AE4D0344(v306);
                      v253 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
                      v254 = v303;
                      swift_beginAccess();
                      v9 = &qword_1AE4EDB98;
                      v255 = v254 + v253;
                      v256 = v307;
                      sub_1AE4B441C(v255, v307, &qword_1EB5DD520, &qword_1AE4EDB98);
                      sub_1AE4D127C(v256, v302);
                      sub_1AE4B4558(v256, &qword_1EB5DD520, &qword_1AE4EDB98);
                      sub_1AE4DB5C0(v252, type metadata accessor for FileIdentifier);
                      v257 = sub_1AE4AC6E0(1953460848, 0xE400000000000000, 0, v313, v317, v316);
                      if (v257)
                      {
                        v4 = sub_1AE4A6A00(v257);
                        v9 = v301;

                        if ((v4 & 0x8000000000000000) == 0)
                        {
                          if (v4 == 5)
                          {
                            v258 = *(v305 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_localCacheBaseAddress);
                            if (v258)
                            {
                              v259 = sub_1AE4AC6E0(1717989238, 0xE400000000000000, 0, v28[2], v28[3], v28[4]);
                              if (v259)
                              {
                                v260 = sub_1AE4A6A00(v259);
                                v261 = v302;
                                v262 = v300;

                                if ((v260 & 0x8000000000000000) == 0)
                                {
                                  v121 = __CFADD__(v260, v251);
                                  v263 = v260 + v251;
                                  if (!v121)
                                  {
                                    if ((v263 & 0x8000000000000000) == 0)
                                    {
                                      v264 = v314 - v315;
                                      v265 = v298;
                                      (*(v299 + 104))(v298, *MEMORY[0x1E6969010], v262);
                                      v4 = sub_1AE4AB2E4(v258 + v263, v264, v265);

                                      sub_1AE4DB5C0(v261, type metadata accessor for FileIdentifier);
                                      return v4;
                                    }

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
LABEL_374:
                                    __break(1u);
                                  }

LABEL_367:
                                  __break(1u);
                                  goto LABEL_368;
                                }

LABEL_366:
                                __break(1u);
                                goto LABEL_367;
                              }

LABEL_379:
                              __break(1u);
LABEL_380:
                              sub_1AE4C78AC();
                              v276 = swift_allocError();
                              *(v277 + 8) = 0;
                              *(v277 + 16) = 0;
                              *v277 = 0;
                              *(v277 + 24) = 0x80;
                              swift_willThrow();
                              while (1)
                              {
LABEL_382:
                                v319 = v276;
                                v282 = v276;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
                                swift_dynamicCast();
                                v283 = v320;
                                v284 = v321;
                                v285 = v322;
                                v325 = v320;
                                v326 = v321;
                                v327 = v322;
                                sub_1AE4C78AC();
                                swift_willThrowTypedImpl();

                                swift_allocError();
                                *v286 = v283;
                                *(v286 + 16) = v284;
                                *(v286 + 24) = v285;
LABEL_383:
                                swift_unexpectedError();
                                __break(1u);
                                v288 = v287;
                                v290 = v289;
                                v292 = v291;
                                sub_1AE4C78AC();
                                v276 = swift_allocError();
                                *v293 = v9;
                                *(v293 + 8) = v288;
                                *(v293 + 16) = v290;
                                *(v293 + 24) = v292;
                              }
                            }
                          }

                          if ((v314 - v315) >= 0)
                          {
                            v266 = v302;
                            v267 = sub_1AE4D0034(v302, v251, v314 - v315, 0, 0);
                            if (v268 >> 60 != 15)
                            {
                              v4 = v267;
                              v269 = v268;
                              sub_1AE4DB5C0(v266, type metadata accessor for FileIdentifier);

                              v270 = *v9;
                              v271 = v9[1];
                              v272 = v9[2];
                              v273 = v9[3];
                              v274 = v314;
                              *v9 = v315;
                              v9[1] = v274;
                              v9[2] = v4;
                              v9[3] = v269;
                              sub_1AE4A6FD8(v4, v269);
                              sub_1AE4DFDF4(v270, v271, v272, v273);
                              return v4;
                            }

                            v320 = 4uLL;
                            v321 = 0;
                            v322 = 0;
                            v323 = -64;
                            sub_1AE4C9430();
                            swift_willThrowTypedImpl();

                            sub_1AE4DB5C0(v266, type metadata accessor for FileIdentifier);
LABEL_336:
                            *v250 = 4;
                            *(v250 + 8) = 0;
                            *(v250 + 16) = 0;
                            *(v250 + 24) = 0;
                            *(v250 + 32) = -64;
                            return v4;
                          }

LABEL_365:
                          __break(1u);
                          goto LABEL_366;
                        }

LABEL_364:
                        __break(1u);
                        goto LABEL_365;
                      }

LABEL_378:
                      __break(1u);
                      goto LABEL_379;
                    }

LABEL_363:
                    __break(1u);
                    goto LABEL_364;
                  }

LABEL_362:
                  __break(1u);
                  goto LABEL_363;
                }

LABEL_377:
                __break(1u);
                goto LABEL_378;
              }

              v24 = v312 + 1;

              v135 += 3;
            }

            while (v309 != v24);
          }

          v320 = 4uLL;
          v321 = 0;
          v322 = 0;
          v323 = -64;
          sub_1AE4C9430();
          swift_willThrowTypedImpl();

LABEL_335:
          v250 = v304;
          goto LABEL_336;
        }

LABEL_376:
        __break(1u);
        goto LABEL_377;
      }

      ++v27;
      v18 = v311;
      if (v316 == v310)
      {
        goto LABEL_334;
      }
    }

    v28 = MEMORY[0x1B2701540](v27);
    v21 = (v27 + 1);
    if (!__OFADD__(v27, 1))
    {
      goto LABEL_14;
    }

LABEL_141:
    __break(1u);
LABEL_142:
    v10 = *v21;
    v24 = *(v4 + 16);
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v123 = *(v24 + 32);
        sub_1AE4AB600(v10, v22);

        goto LABEL_145;
      }

      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      v24 = v18;
      v26 = sub_1AE4EB150();
      v18 = v24;
      if (!v26)
      {
        goto LABEL_334;
      }

      continue;
    }

    break;
  }

LABEL_328:
  sub_1AE4A6FD8(v10, v22);
  v123 = MEMORY[0x1B2701540](0, v24);
LABEL_145:
  v124 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v123[2], v123[3], v123[4]);
  if (!v124)
  {
    __break(1u);
    goto LABEL_376;
  }

  v4 = sub_1AE4A6A00(v124);
  if (v7)
  {
    v294 = v125;
    v295 = v126;
    v296 = v127;
    sub_1AE4C78AC();
    swift_allocError();
    *v297 = v4;
    *(v297 + 8) = v294;
    *(v297 + 16) = v295;
    *(v297 + 24) = v296;
    goto LABEL_383;
  }

  v7 = 0;

  v128 = v315 - v4;
  if (v315 < v4)
  {
    goto LABEL_330;
  }

  if ((v128 & 0x8000000000000000) != 0)
  {
    goto LABEL_331;
  }

  v18 = v314 - v4;
  if (__OFADD__(v128, v314 - v315))
  {
    goto LABEL_332;
  }

  v4 = sub_1AE4EAA60();
  sub_1AE4ABE40(v10, v22);
  return v4;
}

uint64_t sub_1AE4D6498(uint64_t a1)
{
  v54 = a1;
  v58[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE4EAA30();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  address = 0;
  v6 = *(v1 + 16);
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_43;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    goto LABEL_3;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  v10 = MEMORY[0x1B2701540](v8, v6);
LABEL_8:
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];

  v14 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v11, v12, v13);
  if (!v14)
  {
    goto LABEL_55;
  }

  v3 = 0;
  v2 = sub_1AE4A6A00(v14);

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v15 = v10[2];
  v16 = v10[3];
  v17 = v10[4];

  v18 = sub_1AE4AC6E0(1717989238, 0xE400000000000000, 0, v15, v16, v17);
  if (!v18)
  {
LABEL_56:
    __break(1u);
  }

  v19 = sub_1AE4A6A00(v18);

  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v1 = v19 + v2;
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, v1, 1))
  {

    return 0;
  }

  v24 = address;
  if (!address)
  {
    goto LABEL_17;
  }

  if (v1 < 0)
  {
    __break(1u);
LABEL_17:
    if (v1 < 0)
    {
      goto LABEL_51;
    }
  }

  v46 = v10;
  if (v7)
  {
    goto LABEL_35;
  }

  v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
LABEL_20:
    v45 = v1;
    v26 = 0;
    v51 = v6 & 0xFFFFFFFFFFFFFF8;
    v52 = v25;
    v53 = v6;
    while (1)
    {
      if (v55)
      {
        v1 = MEMORY[0x1B2701540](v26, v6);
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v26 >= *(v51 + 16))
        {
          goto LABEL_42;
        }

        v1 = *(v6 + 8 * v26 + 32);

        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v39 = v5;
          v8 = sub_1AE4EB150();
          v5 = v39;
          if (!v8)
          {
            goto LABEL_44;
          }

LABEL_3:
          if (__OFSUB__(v8--, 1))
          {
            goto LABEL_45;
          }

          v55 = v6 & 0xC000000000000001;
          v49 = v2;
          v50 = v1;
          v47 = v5;
          v48 = v3;
          if ((v6 & 0xC000000000000001) == 0)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v10 = *(v6 + 8 * v8 + 32);

              goto LABEL_8;
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
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          goto LABEL_46;
        }
      }

      if (!v24)
      {
        goto LABEL_53;
      }

      v28 = sub_1AE4AC6E0(1717989238, 0xE400000000000000, 0, *(v1 + 16), *(v1 + 24), *(v1 + 32));
      if (!v28)
      {
        goto LABEL_52;
      }

      v2 = v28;
      v7 = sub_1AE4A6A00(v28);

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      v56 = v27;
      v29 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, *(v1 + 16), *(v1 + 24), *(v1 + 32));
      if (!v29)
      {
        goto LABEL_54;
      }

      v30 = sub_1AE4A6A00(v29);

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      sub_1AE4D06AC(v24 + v7, v31, v54, v58);

      ++v26;
      v6 = v53;
      if (v56 == v52)
      {
        v1 = v45;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_35:
        v25 = sub_1AE4EB150();
        if (!v25)
        {
          break;
        }

        goto LABEL_20;
      }
    }
  }

  if (v24)
  {
LABEL_37:
    v32 = v47;
    (*(v48 + 104))(v47, *MEMORY[0x1E6968FF8], v49);
    v33 = sub_1AE4AB2E4(v24, v1, v32);
    v35 = v34;

    v36 = (v50 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping);
    v37 = *(v50 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping);
    v38 = *(v50 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping + 8);
    *v36 = v33;
    v36[1] = v35;
    sub_1AE4ABE40(v37, v38);
    return 1;
  }

  else
  {
    __break(1u);
    v40 = v20;
    v41 = v21;
    v42 = v22;
    sub_1AE4C78AC();
    swift_allocError();
    *v43 = v7;
    *(v43 + 8) = v40;
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4D6A20()
{

  v1 = OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachePath;
  v2 = sub_1AE4EAC50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AE4ABE40(*(v0 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping), *(v0 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping + 8));
  sub_1AE4DFDF4(*(v0 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping), *(v0 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 8), *(v0 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 16), *(v0 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4D6B18(uint64_t a1)
{
  result = sub_1AE4EAC50();
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

double sub_1AE4D6BD8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE4D45C8(a1, a2, a3, v9);
  if (v4)
  {
    v7 = v10;
    result = *v9;
    v8 = v9[1];
    *a4 = v9[0];
    *(a4 + 16) = v8;
    *(a4 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AE4D6C24(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AE4EAB10();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FileIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE4DB620(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AE4EADC0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58);
    (*(v4 + 32))(v6, v9, v3);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1AE4EACF0();
    sub_1AE4EADC0();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1AE4EACF0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AE4D6E84()
{
  sub_1AE4EB260();
  sub_1AE4D6C24(v1);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4D6EC8(uint64_t a1)
{
  sub_1AE4EB260();
  sub_1AE4D6C24(v2);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4D6F08()
{
  MEMORY[0x1B2702130](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_4Dyld7ProcessV4ImplC13NotifierStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1AE4D6F90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AE4D6FD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1AE4D701C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
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

uint64_t sub_1AE4D7088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AE4D70D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1AE4D7154(uint64_t a1)
{
  sub_1AE4D1AC8(319, &qword_1EB5DD108, 255, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    sub_1AE4D726C(319, &unk_1EB5DD0C0, &type metadata for BPList.FastString);
    if (v2 <= 0x3F)
    {
      sub_1AE4D726C(319, &qword_1EB5DD0F8, &type metadata for PreferredAddress);
      if (v4 <= 0x3F)
      {
        sub_1AE4D1AC8(319, &qword_1EB5DD100, v3, type metadata accessor for SharedCache.Impl);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AE4D726C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1AE4EB010();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AE4D72BC()
{
  result = qword_1EB5DD4C0;
  if (!qword_1EB5DD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD4C0);
  }

  return result;
}

unint64_t sub_1AE4D735C()
{
  result = qword_1EB5DD058;
  if (!qword_1EB5DD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD058);
  }

  return result;
}

uint64_t sub_1AE4D73B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1AE4EB260();
  sub_1AE4EADC0();
  MEMORY[0x1B2701710](v1);
  MEMORY[0x1B2701710](v2);
  MEMORY[0x1B2701710](v3);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4D7438(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1AE4EADC0();
  MEMORY[0x1B2701710](v2);
  MEMORY[0x1B2701710](v3);
  return MEMORY[0x1B2701710](v4);
}

uint64_t sub_1AE4D7494(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1AE4EB260();
  sub_1AE4EADC0();
  MEMORY[0x1B2701710](v2);
  MEMORY[0x1B2701710](v3);
  MEMORY[0x1B2701710](v4);
  return sub_1AE4EB290();
}

BOOL sub_1AE4D7518(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6 || v4 != v5)
    {
      return 0;
    }

    return v3 == v7;
  }

  v9 = sub_1AE4EB190();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6 && v4 == v5)
  {
    return v3 == v7;
  }

  return result;
}

void sub_1AE4D75B0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (!*(*a1 + 16))
  {
    Strong = 0;
    v8 = 0xF000000000000000;
    goto LABEL_8;
  }

  sub_1AE4E8F34(a2);
  if ((v4 & 1) == 0)
  {
    Strong = 0;
    goto LABEL_7;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v8 = 0xF000000000000000;
    goto LABEL_8;
  }

  v6 = Strong;
  Strong = sub_1AE4EAA80();
  v8 = v7;

LABEL_8:
  *a3 = Strong;
  a3[1] = v8;
}

void sub_1AE4D7664(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_1AE4E8F34(a2);
    if (v8)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;

        v11 = v10;
        v12 = sub_1AE4EAA80();
        v14 = v13;

LABEL_7:
        *a4 = v12;
        a4[1] = v14;
        return;
      }
    }
  }

  sub_1AE4DFBE8(a2, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18[0] = *a1;
  sub_1AE4DA8F8(a3, a2, isUniquelyReferenced_nonNull_native);
  sub_1AE4DFC20(a2);
  *a1 = v18[0];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v11 = v16;
    v12 = sub_1AE4EAA80();
    v14 = v17;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1AE4D7788()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD578, &qword_1AE4EDBE0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EB5DF648 = result;
  return result;
}

char *sub_1AE4D77D4(uint64_t a1, uint64_t a2, off_t a3, off_t st_size, char a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  sub_1AE4EADA0();
  v10 = sub_1AE4EAB30();

  if ((v10 & 0x80000000) == 0)
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_5;
    }

    memset(&aBlock, 0, sizeof(aBlock));
    if (fstat(v10, &aBlock))
    {
      goto LABEL_16;
    }

    st_size = aBlock.st_size;
    if ((aBlock.st_size & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (qword_1EB5DD038 != -1)
      {
        swift_once();
      }

      v11 = swift_beginAccess();
      v12 = qword_1EB5DF648;
      MEMORY[0x1EEE9AC00](v11);

      os_unfair_lock_lock((v12 + 24));
      sub_1AE4DFB98((v12 + 16), &aBlock);
      os_unfair_lock_unlock((v12 + 24));

      if (aBlock.st_ino >> 60 != 15)
      {
        v21 = *&aBlock.st_dev;
        goto LABEL_17;
      }

      v13 = st_size + a6;
      if (__CFADD__(st_size, a6))
      {
        __break(1u);
      }

      else if (((v13 | a3) & 0x8000000000000000) == 0)
      {
        v14 = mmap(0, st_size + a6, 1, 2, v10, a3);
        if (v14)
        {
          v15 = v14;
          if (v14 != sub_1AE4EAB20())
          {
            v16 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
            aBlock.st_atimespec.tv_sec = j__munmap;
            aBlock.st_atimespec.tv_nsec = 0;
            *&aBlock.st_dev = MEMORY[0x1E69E9820];
            aBlock.st_ino = 1107296256;
            *&aBlock.st_uid = sub_1AE4D84AC;
            *&aBlock.st_rdev = &block_descriptor;
            v17 = _Block_copy(&aBlock);

            v18 = [v16 initWithBytesNoCopy:v15 length:v13 deallocator:v17];
            _Block_release(v17);
            swift_beginAccess();
            type metadata accessor for MappedFileCache.WeakData();
            swift_allocObject();
            swift_unknownObjectWeakInit();
            v19 = swift_unknownObjectWeakAssign();
            v20 = qword_1EB5DF648;
            MEMORY[0x1EEE9AC00](v19);
            os_unfair_lock_lock((v20 + 24));
            sub_1AE4DFBCC((v20 + 16), &v30);
            os_unfair_lock_unlock((v20 + 24));

            v21 = v30;
            swift_endAccess();

LABEL_17:
            close(v10);
            return v21;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD560, &qword_1AE4EDBC8);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1AE4ED4D0;
        *&aBlock.st_dev = 0x206F6E727245;
        aBlock.st_ino = 0xE600000000000000;
        MEMORY[0x1B2700FD0]();
        v23 = sub_1AE4EB180();
        MEMORY[0x1B2701270](v23);

        v24 = MEMORY[0x1B2701270](8250, 0xE200000000000000);
        v25 = MEMORY[0x1B2700FD0](v24);
        v30 = strerror(v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD568, &qword_1AE4EDBD0);
        v26 = sub_1AE4EAD80();
        MEMORY[0x1B2701270](v26);

        v27 = *&aBlock.st_dev;
        st_ino = aBlock.st_ino;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 32) = v27;
        *(v22 + 40) = st_ino;
        sub_1AE4EB240();

LABEL_16:
        v21 = 0;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
  }

  return 0;
}

void *sub_1AE4D7C74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v9[5] = a1;
  v3 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    return sub_1AE4D850C(v5, v6, sub_1AE4DFB7C);
  }

  if (v3)
  {
    v5 = a2;
    v6 = a2 >> 32;
    if (v6 < v5)
    {
      __break(1u);
    }

    return sub_1AE4D850C(v5, v6, sub_1AE4DFB7C);
  }

  v9[0] = a2;
  LOWORD(v9[1]) = a3;
  BYTE2(v9[1]) = BYTE2(a3);
  BYTE3(v9[1]) = BYTE3(a3);
  BYTE4(v9[1]) = BYTE4(a3);
  BYTE5(v9[1]) = BYTE5(a3);
  v4 = v9 + BYTE6(a3);
LABEL_9:
  sub_1AE4D7DE8(v9, v4, a1, &v8);
  return v8;
}

void sub_1AE4D7DE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v67 = a3;
  v80 = a4;
  v6 = sub_1AE4EAB10();
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD550, &qword_1AE4EDBC0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = v68;
  v22 = sub_1AE4E7204(a1, a2);
  if (v21)
  {
    *v80 = 0;
    return;
  }

  v55 = v11;
  v68 = v20;
  v56 = v6;
  v66 = v18;
  v57 = v15;
  v65 = v9;
  v58 = v8;
  if (!(v24 >> 14) || v24 >> 14 != 1)
  {
    *v80 = 0;
    return;
  }

  v53 = 0;
  v25 = v24 & 1;
  v26 = v22;
  v27 = v23;
  sub_1AE4E6B5C(v22, v23, v24 & 1, v69);
  v28 = v27 - v26;
  if (!v26)
  {
    v28 = 0;
  }

  v70 = 0;
  v71 = v28;
  v72 = v26;
  v73 = v27;
  v74 = 0;
  v75 = v26;
  v76 = v27;
  v77 = v25;
  v29 = sub_1AE4E6B88();
  v32 = v66;
  v33 = v56;
  v34 = v55;
  if (v31 == 2)
  {
LABEL_8:
    *v80 = 0;
    return;
  }

  v35 = v29;
  v36 = v30;
  v37 = v31;
  v63 = (v64 + 16);
  v62 = (v64 + 56);
  v61 = (v64 + 48);
  v52 = (v64 + 32);
  v54 = (v64 + 8);
  while (1)
  {
    sub_1AE4E696C(v78);
    if (v79 == 2)
    {
      goto LABEL_8;
    }

    LODWORD(v64) = v79;
    v60 = v78[0];
    v59 = v78[2];
    v40 = v36;
    v41 = v68;
    sub_1AE4E61F4(v35, v40, (v37 & 0x101), v68);
    (*v63)(v32, v67, v33);
    (*v62)(v32, 0, 1, v33);
    v42 = *(v65 + 48);
    sub_1AE4B441C(v41, v34, &qword_1EB5DD4B8, "R3");
    sub_1AE4B441C(v32, v34 + v42, &qword_1EB5DD4B8, "R3");
    v43 = *v61;
    if ((*v61)(v34, 1, v33) == 1)
    {
      break;
    }

    v44 = v57;
    sub_1AE4B441C(v34, v57, &qword_1EB5DD4B8, "R3");
    v45 = v43(v34 + v42, 1, v33);
    v46 = v58;
    if (v45 == 1)
    {
      sub_1AE4B4558(v66, &qword_1EB5DD4B8, "R3");
      sub_1AE4B4558(v68, &qword_1EB5DD4B8, "R3");
      (*v54)(v44, v33);
      goto LABEL_13;
    }

    (*v52)(v58, v34 + v42, v33);
    sub_1AE4AA0A8(&unk_1EB5DD148, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v47 = sub_1AE4EAD20();
    v48 = *v54;
    (*v54)(v46, v33);
    sub_1AE4B4558(v66, &qword_1EB5DD4B8, "R3");
    sub_1AE4B4558(v68, &qword_1EB5DD4B8, "R3");
    v48(v44, v33);
    sub_1AE4B4558(v34, &qword_1EB5DD4B8, "R3");
    if (v47)
    {
      goto LABEL_22;
    }

LABEL_14:
    v35 = sub_1AE4E6B88();
    v36 = v38;
    v37 = v39;
    v32 = v66;
    if (v39 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1AE4B4558(v32, &qword_1EB5DD4B8, "R3");
  sub_1AE4B4558(v41, &qword_1EB5DD4B8, "R3");
  if (v43(v34 + v42, 1, v33) != 1)
  {
LABEL_13:
    sub_1AE4B4558(v34, &unk_1EB5DD550, &qword_1AE4EDBC0);
    goto LABEL_14;
  }

  sub_1AE4B4558(v34, &qword_1EB5DD4B8, "R3");
LABEL_22:
  if (v64)
  {
    v49 = v80;
    if (v59)
    {
      v50 = bswap64(*(v59 + v60 + 8));
      if ((v50 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_26;
      }

LABEL_28:
      *v49 = v50;
      return;
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    v49 = v80;
    if (v59)
    {
      v50 = bswap32(*(v59 + v60 + 8));
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_1AE4D84AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void *sub_1AE4D850C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1AE4EA990();
  v8 = result;
  if (result)
  {
    result = sub_1AE4EA9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1AE4EA9A0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

char *sub_1AE4D85BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE4D85FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE4D85DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE4D871C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE4D85FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A8, &qword_1AE4EDC08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AE4D871C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD580, &qword_1AE4EDBE8);
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

uint64_t sub_1AE4D8828(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AE4EAB10();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1AE4EACE0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1AE4AA0A8(&unk_1EB5DD148, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1AE4EAD20();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1AE4D8E64(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1AE4D8B08(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1AE4EAB10();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A0, &qword_1AE4EDC00);
  result = sub_1AE4EB080();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1AE4EACE0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1AE4D8E64(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1AE4EAB10();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AE4D8B08(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1AE4D9108();
      goto LABEL_12;
    }

    sub_1AE4D9340(v10 + 1);
  }

  v12 = *v3;
  sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = sub_1AE4EACE0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1AE4AA0A8(&unk_1EB5DD148, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1AE4EAD20();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE4EB1B0();
  __break(1u);
  return result;
}

void *sub_1AE4D9108()
{
  v1 = v0;
  v2 = sub_1AE4EAB10();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A0, &qword_1AE4EDC00);
  v6 = *v0;
  v7 = sub_1AE4EB070();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1AE4D9340(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1AE4EAB10();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A0, &qword_1AE4EDC00);
  v7 = sub_1AE4EB080();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1AE4EACE0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1AE4D965C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1AE4E8EEC(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v14 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v14;
  }

  v12 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v12;
}

uint64_t sub_1AE4D96FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1AE4EB170();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 4 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = MEMORY[0x1B27016E0](*(v9 + 40), v22, 4);
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 4 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1AE4D9968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD570, &qword_1AE4EDBD8);
  v34 = v4;
  result = sub_1AE4EB170();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 40 * v20);
      v22 = v21[1];
      v37 = *v21;
      v23 = v21[2];
      v35 = v21[4];
      v36 = v21[3];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AE4EB260();
      sub_1AE4EADC0();
      MEMORY[0x1B2701710](v23);
      MEMORY[0x1B2701710](v36);
      MEMORY[0x1B2701710](v35);
      result = sub_1AE4EB290();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 40 * v15);
      *v16 = v37;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v36;
      v16[4] = v35;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AE4D9C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AE4EAC50();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD620, &qword_1AE4EDC50);
  v45 = v4;
  result = sub_1AE4EB170();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_1AE4AA0A8(&qword_1EB5DD1A8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B8]);
      result = sub_1AE4EACE0();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_1AE4DA0A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD530, &qword_1AE4EDBA8);
  v36 = v4;
  result = sub_1AE4EB170();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v37 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      sub_1AE4EB260();
      sub_1AE4EADC0();
      result = sub_1AE4EB290();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AE4DA370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AE4EAB10();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD528, &qword_1AE4EDBA0);
  v46 = v4;
  result = sub_1AE4EB170();
  v11 = result;
  if (*(v9 + 16))
  {
    v52 = v8;
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v51 = *(v45 + 72);
      v27 = v26 + v51 * v25;
      if (v46)
      {
        (*v47)(v52, v27, v5);
        v28 = (*(v9 + 56) + 24 * v25);
        v29 = *v28;
        v49 = v28[1];
        v50 = v29;
        v48 = v28[2];
      }

      else
      {
        (*v43)(v52, v27, v5);
        v30 = (*(v9 + 56) + 24 * v25);
        v31 = *v30;
        v32 = v30[1];
        v48 = v30[2];
        v49 = v32;
        v50 = v31;
      }

      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1AE4EACE0();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v11 + 48) + v51 * v19, v52, v5);
      v20 = (*(v11 + 56) + 24 * v19);
      v21 = v49;
      *v20 = v50;
      v20[1] = v21;
      v20[2] = v48;
      ++*(v11 + 16);
      v9 = v44;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_1AE4DA77C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = v6;
  v14 = *v6;
  result = sub_1AE4E8EEC(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      sub_1AE4D96FC(v20, a3 & 1, a5, a6);
      result = sub_1AE4E8EEC(a2);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1AE4EB1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a4();
      result = v23;
    }
  }

  v25 = *v10;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 4 * result) = a2;
    *(v25[7] + 8 * result) = a1;
    v26 = v25[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v19)
    {
      v25[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  *(v25[7] + 8 * result) = a1;
}