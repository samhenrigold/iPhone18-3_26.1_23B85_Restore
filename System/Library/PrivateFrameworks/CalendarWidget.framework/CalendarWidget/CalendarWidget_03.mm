uint64_t sub_1E47B70C4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_eventsExistBeforeFirst);
  v16 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
  v7 = swift_allocObject();
  *(v7 + 32) = (v6 & 1) == 0;
  *(v7 + 33) = a2;
  *(v7 + 40) = *(a1 + 56);
  *(v7 + 16) = 0xD000000000000026;
  *(v7 + 24) = 0x80000001E48A7630;
  v8 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v9 = *(a3 + v8);
  v10 = *(v9 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_1E47A1524(v13, &v18);
      sub_1E47B488C(&v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
      result = swift_dynamicCast();
      if (result)
      {

        v15 = v12 + 1;
        goto LABEL_8;
      }

      ++v12;
      v13 += 40;
      if (v10 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v15 = 0;
LABEL_8:
    v19 = v16;
    v20 = sub_1E47B45D0(&qword_1EE2B29C8, v14, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel, &unk_1E487D430);
    *&v18 = v7;
    result = swift_beginAccess();
    if (*(*(a3 + v8) + 16) >= v15)
    {
      sub_1E47B488C(&v18, v17);

      sub_1E4866EE4(v15, v15, v17);
      swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47B72E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 1 - v1;
  for (i = a1 + 40 * v1 - 8; ; i -= 40)
  {
    sub_1E47A1524(i, v6);
    sub_1E47A1524(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
    if (swift_dynamicCast() || (sub_1E47A1524(v6, v5), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0), (swift_dynamicCast() & 1) != 0))
    {

      __swift_destroy_boxed_opaque_existential_1(v6);
      return -v2;
    }

    sub_1E47B488C(v6, v5);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
    if (swift_dynamicCast())
    {
      break;
    }

    if (++v2 == 1)
    {
      return 0;
    }
  }

  return -v2;
}

uint64_t sub_1E47B743C(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 1;
  v5 = *(a2 + 40);
  v6 = sub_1E47AFE3C();
  v7 = v6;
  v44 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_61;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    goto LABEL_3;
  }

LABEL_22:
  while (1)
  {
    v24 = v44 ? sub_1E4878F0C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (__OFSUB__(v24, 1))
    {
      break;
    }

    result = 1;
    if (v5 + *(a2 + 56) * ((v24 - 1) & ~((v24 - 1) >> 63)) <= a3)
    {
      return result;
    }

    *(a1 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 1;
    v5 = *(a2 + 40);
    v26 = sub_1E47AFE3C();
    v3 = v26;
    v44 = v26 >> 62;
    if (v26 >> 62)
    {
      goto LABEL_64;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_48;
    }

LABEL_29:
    v7 = 0;
    v47 = v27;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E6919650](v7, v3);
        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v28 = *(v3 + 32 + 8 * v7);

        v11 = __OFADD__(v7++, 1);
        if (v11)
        {
          goto LABEL_57;
        }
      }

      v29 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v30 = *(v28 + v29);
      v31 = *(v30 + 16);
      if (v31)
      {
        break;
      }

      v34 = 0.0;
      v39 = -1;
LABEL_47:
      v40 = (v39 & ~(v39 >> 63));
      v41 = *(v28 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v5 = v5 + v34 + v41 * v40;
      if (v7 == v27)
      {
        goto LABEL_48;
      }
    }

    v32 = v30 + 32;

    v33 = 0;
    v34 = 0.0;
    while (1)
    {
      sub_1E47A1524(v32, v48);
      v37 = v49;
      v38 = v50;
      __swift_project_boxed_opaque_existential_0(v48, v49);
      if ((*(v38 + 16))(v37, v38) > 0.0)
      {
        v11 = __OFADD__(v33++, 1);
        if (v11)
        {
          break;
        }
      }

      v35 = v49;
      v36 = v50;
      __swift_project_boxed_opaque_existential_0(v48, v49);
      v34 = v34 + (*(v36 + 16))(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v32 += 40;
      if (!--v31)
      {

        v27 = v47;
        v39 = v33 - 1;
        if (__OFSUB__(v33, 1))
        {
          goto LABEL_58;
        }

        goto LABEL_47;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    v8 = sub_1E4878F0C();
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v46 = v8;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E6919650](v9, v7);
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v10 = *(v7 + 32 + 8 * v9);

          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            goto LABEL_55;
          }
        }

        v12 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        swift_beginAccess();
        v13 = *(v10 + v12);
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = v13 + 32;

          v3 = 0;
          v16 = 0.0;
          do
          {
            sub_1E47A1524(v15, v48);
            v20 = v49;
            v19 = v50;
            __swift_project_boxed_opaque_existential_0(v48, v49);
            if ((*(v19 + 16))(v20, v19) > 0.0)
            {
              v11 = __OFADD__(v3++, 1);
              if (v11)
              {
                __break(1u);
                goto LABEL_54;
              }
            }

            v17 = v49;
            v18 = v50;
            __swift_project_boxed_opaque_existential_0(v48, v49);
            v16 = v16 + (*(v18 + 16))(v17, v18);
            __swift_destroy_boxed_opaque_existential_1(v48);
            v15 += 40;
            --v14;
          }

          while (v14);

          v8 = v46;
          v21 = v3 - 1;
          if (__OFSUB__(v3, 1))
          {
            goto LABEL_56;
          }
        }

        else
        {
          v3 = 0;
          v16 = 0.0;
          v21 = -1;
        }

        v22 = (v21 & ~(v21 >> 63));
        v23 = *(v10 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

        v5 = v5 + v16 + v23 * v22;
        if (v9 == v8)
        {
          goto LABEL_22;
        }
      }
    }
  }

  __break(1u);
LABEL_64:
  v27 = sub_1E4878F0C();
  if (v27)
  {
    goto LABEL_29;
  }

LABEL_48:
  if (v44)
  {
    v42 = sub_1E4878F0C();
  }

  else
  {
    v42 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!__OFSUB__(v42, 1))
  {
    return v5 + *(a2 + 56) * ((v42 - 1) & ~((v42 - 1) >> 63)) <= a3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E47B7960(unint64_t a1, uint64_t *a2, int a3, int a4, int a5, double a6)
{
  v218 = a5;
  v220 = a4;
  v226 = a3;
  v9 = type metadata accessor for Event(0);
  v216 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v215 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v217 = &v214 - v12;
  v13 = *a2;
  swift_beginAccess();
  v229 = v13;
  v14 = *(v13 + 32);
  if ((v14 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v15 = *(v14 + 8 * a1 + 32);

      goto LABEL_5;
    }

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
    goto LABEL_340;
  }

LABEL_330:

  v15 = MEMORY[0x1E6919650](a1, v14);

LABEL_5:
  v16 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v225 = v15;
  v222 = v16;

  v18 = sub_1E47B72E4(v17);
  v14 = v19;

  if (v14)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_334;
  }

  v21 = *(v225 + v222);
  if (v18 >= *(v21 + 16))
  {
    goto LABEL_335;
  }

  v219 = v18;
  sub_1E47A1524(v21 + 40 * v18 + 32, v239);
  sub_1E47A1524(v239, v236);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  v221 = v22;
  if ((swift_dynamicCast() & 1) == 0)
  {
    a1 = v229;
    goto LABEL_46;
  }

  v23 = 0;
  v224 = v235;
  v223 = *(*(v235 + 32) + 16);
  v24 = 1;
  a1 = v229;
  while (1)
  {
    v25 = v223;
    if ((v24 & 1) == 0)
    {
      v25 = v23 - 1;
      if (v23 < 1)
      {
        goto LABEL_327;
      }
    }

    v227 = v25;
    *(v224 + 40) = v25;
    v26 = *(a1 + 40);
    v27 = sub_1E47AFE3C();
    v14 = v27;
    v228 = v27 >> 62;
    if (!(v27 >> 62))
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        break;
      }

      goto LABEL_35;
    }

    v28 = sub_1E4878F0C();
    if (v28)
    {
      break;
    }

LABEL_35:
    if (v228)
    {
      a1 = sub_1E4878F0C();
    }

    else
    {
      a1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
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
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
      goto LABEL_330;
    }

    a1 = v229;
    v46 = v26 + *(v229 + 56) * (v45 & ~(v45 >> 63));
    if (v46 <= a6)
    {
      goto LABEL_297;
    }

    if ((v226 & 1) != 0 && v46 - *(v229 + 40) <= a6)
    {
      goto LABEL_42;
    }

    v24 = 0;
    v23 = v227;
    if (!v227)
    {
      swift_beginAccess();
      sub_1E47AC06C(v219, v236);
      __swift_destroy_boxed_opaque_existential_1(v236);
      swift_endAccess();
      if ((v220 & 1) == 0)
      {
        goto LABEL_256;
      }

      *(sub_1E47B2BAC() + 48) = 1;

      sub_1E47B2BAC();
      swift_beginAccess();

      sub_1E4844E98(v178);
      swift_endAccess();

      v179 = *(v229 + 40);
      result = sub_1E47AFE3C();
      v180 = result;
      v228 = result >> 62;
      if (result >> 62)
      {
        result = sub_1E4878F0C();
        v181 = result;
        if (result)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v181 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v181)
        {
LABEL_233:
          v182 = 0;
          v233 = v180;
          v234 = v180 & 0xC000000000000001;
          v230 = v180 + 32;
          v231 = v180 & 0xFFFFFFFFFFFFFF8;
          v232 = v181;
          while (1)
          {
            if (v234)
            {
              result = MEMORY[0x1E6919650](v182, v180);
              v183 = result;
            }

            else
            {
              if (v182 >= *(v231 + 16))
              {
                goto LABEL_355;
              }

              v183 = *(v230 + 8 * v182);
            }

            v31 = __OFADD__(v182++, 1);
            if (v31)
            {
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
              goto LABEL_356;
            }

            v184 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            result = swift_beginAccess();
            v185 = *(v183 + v184);
            v186 = *(v185 + 16);
            if (v186)
            {
              break;
            }

            v188 = 0;
            v189 = 0.0;
LABEL_248:
            if (__OFSUB__(v188, 1))
            {
              goto LABEL_353;
            }

            v194 = *(v183 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v179 = v179 + v189 + v194 * ((v188 - 1) & ~((v188 - 1) >> 63));
            if (v182 == v181)
            {
              goto LABEL_250;
            }
          }

          v187 = v185 + 32;

          v188 = 0;
          v189 = 0.0;
          while (1)
          {
            sub_1E47A1524(v187, v236);
            v192 = v237;
            v193 = v238;
            __swift_project_boxed_opaque_existential_0(v236, v237);
            if ((*(v193 + 16))(v192, v193) > 0.0)
            {
              v31 = __OFADD__(v188++, 1);
              if (v31)
              {
                break;
              }
            }

            v190 = v237;
            v191 = v238;
            __swift_project_boxed_opaque_existential_0(v236, v237);
            v189 = v189 + (*(v191 + 16))(v190, v191);
            __swift_destroy_boxed_opaque_existential_1(v236);
            v187 += 40;
            if (!--v186)
            {

              v181 = v232;
              v180 = v233;
              goto LABEL_248;
            }
          }

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
          goto LABEL_297;
        }
      }

LABEL_250:
      if (v228)
      {
        v195 = sub_1E4878F0C();
      }

      else
      {
        v195 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v195, 1))
      {
        goto LABEL_357;
      }

      if (v179 + *(v229 + 56) * ((v195 - 1) & ~((v195 - 1) >> 63)) <= a6)
      {
        goto LABEL_297;
      }

      *(sub_1E47B2BAC() + 48) = 0;

LABEL_256:
      v196 = *(v229 + 40);
      result = sub_1E47AFE3C();
      v197 = result;
      v228 = result >> 62;
      if (result >> 62)
      {
        result = sub_1E4878F0C();
        v198 = result;
        if (result)
        {
          goto LABEL_258;
        }
      }

      else
      {
        v198 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v198)
        {
LABEL_258:
          v199 = 0;
          v233 = v197;
          v234 = v197 & 0xC000000000000001;
          v230 = v197 + 32;
          v231 = v197 & 0xFFFFFFFFFFFFFF8;
          v232 = v198;
          while (1)
          {
            if (v234)
            {
              result = MEMORY[0x1E6919650](v199, v197);
              v200 = result;
            }

            else
            {
              if (v199 >= *(v231 + 16))
              {
                goto LABEL_354;
              }

              v200 = *(v230 + 8 * v199);
            }

            v31 = __OFADD__(v199++, 1);
            if (v31)
            {
              __break(1u);
LABEL_351:
              __break(1u);
              goto LABEL_352;
            }

            v201 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            result = swift_beginAccess();
            v202 = *(v200 + v201);
            v203 = *(v202 + 16);
            if (v203)
            {
              break;
            }

            v205 = 0;
            v206 = 0.0;
LABEL_273:
            if (__OFSUB__(v205, 1))
            {
              goto LABEL_351;
            }

            v211 = *(v200 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v196 = v196 + v206 + v211 * ((v205 - 1) & ~((v205 - 1) >> 63));
            if (v199 == v198)
            {
              goto LABEL_275;
            }
          }

          v204 = v202 + 32;

          v205 = 0;
          v206 = 0.0;
          while (1)
          {
            sub_1E47A1524(v204, v236);
            v209 = v237;
            v210 = v238;
            __swift_project_boxed_opaque_existential_0(v236, v237);
            if ((*(v210 + 16))(v209, v210) > 0.0)
            {
              v31 = __OFADD__(v205++, 1);
              if (v31)
              {
                break;
              }
            }

            v207 = v237;
            v208 = v238;
            __swift_project_boxed_opaque_existential_0(v236, v237);
            v206 = v206 + (*(v208 + 16))(v207, v208);
            __swift_destroy_boxed_opaque_existential_1(v236);
            v204 += 40;
            if (!--v203)
            {

              v198 = v232;
              v197 = v233;
              goto LABEL_273;
            }
          }

LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
          goto LABEL_343;
        }
      }

LABEL_275:
      if (v228)
      {
        v212 = sub_1E4878F0C();
      }

      else
      {
        v212 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v212, 1))
      {
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
        return result;
      }

      v213 = (v212 - 1) & ~((v212 - 1) >> 63);
      a1 = v229;
      if (v196 + *(v229 + 56) * v213 <= a6)
      {
        goto LABEL_308;
      }

LABEL_46:
      sub_1E47A1524(v239, v236);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_141;
      }

      v47 = v235;
      v228 = v235;
      if (v226)
      {
        v48 = *(a1 + 40);
        v49 = sub_1E47AFE3C();
        v14 = v49;
        v227 = v49 >> 62;
        if (v49 >> 62)
        {
          v50 = sub_1E4878F0C();
          if (v50)
          {
LABEL_50:
            v51 = 0;
            v233 = v14;
            v234 = v14 & 0xC000000000000001;
            v230 = v14 + 32;
            v231 = v14 & 0xFFFFFFFFFFFFFF8;
            v232 = v50;
            while (1)
            {
              if (v234)
              {
                v52 = MEMORY[0x1E6919650](v51, v14);
                v31 = __OFADD__(v51++, 1);
                if (v31)
                {
                  goto LABEL_320;
                }
              }

              else
              {
                if (v51 >= *(v231 + 16))
                {
                  goto LABEL_336;
                }

                v52 = *(v230 + 8 * v51);

                v31 = __OFADD__(v51++, 1);
                if (v31)
                {
                  goto LABEL_320;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v53 = *(v52 + a1);
              v54 = *(v53 + 16);
              if (v54)
              {
                break;
              }

              v57 = 0.0;
              v62 = -1;
LABEL_68:
              v63 = (v62 & ~(v62 >> 63));
              v64 = *(v52 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v48 = v48 + v57 + v64 * v63;
              if (v51 == v50)
              {
                goto LABEL_69;
              }
            }

            v55 = v53 + 32;

            v56 = 0;
            v57 = 0.0;
            while (1)
            {
              sub_1E47A1524(v55, v236);
              v60 = v237;
              v61 = v238;
              __swift_project_boxed_opaque_existential_0(v236, v237);
              if ((*(v61 + 16))(v60, v61) > 0.0)
              {
                v31 = __OFADD__(v56++, 1);
                if (v31)
                {
                  goto LABEL_304;
                }
              }

              v58 = v237;
              v59 = v238;
              a1 = __swift_project_boxed_opaque_existential_0(v236, v237);
              v57 = v57 + (*(v59 + 16))(v58, v59);
              __swift_destroy_boxed_opaque_existential_1(v236);
              v55 += 40;
              if (!--v54)
              {

                v50 = v232;
                v14 = v233;
                v62 = v56 - 1;
                if (__OFSUB__(v56, 1))
                {
                  goto LABEL_321;
                }

                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v50)
          {
            goto LABEL_50;
          }
        }

LABEL_69:
        v47 = v228;
        if (v227)
        {
          v65 = sub_1E4878F0C();
        }

        else
        {
          v65 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v66 = v65 - 1;
        if (__OFSUB__(v65, 1))
        {
          goto LABEL_345;
        }

        a1 = v229;
        v46 = v48 + *(v229 + 56) * (v66 & ~(v66 >> 63));
        if (v46 - *(v229 + 40) <= a6)
        {
          goto LABEL_42;
        }
      }

      if (v218)
      {
        v67 = *(v225 + v222);
        v68 = *(v67 + 16);
        if (v68 < v219)
        {
          goto LABEL_344;
        }

        if (v68 == v219)
        {
        }

        else
        {
          sub_1E4860F48(*(v225 + v222), v67 + 32, 0, (2 * v219) | 1);
          v67 = v69;
        }

        sub_1E47B72E4(v67);
        v71 = v70;

        if (v71)
        {
          v72 = v229;
          if (sub_1E47B743C(v47, v229, a6))
          {
            goto LABEL_297;
          }

          *(v47 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 0;
          *(v47 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 0;
          v73 = *(v72 + 40);
          *(v72 + 40) = 0;
          if (sub_1E47B743C(v47, v72, a6))
          {
            goto LABEL_297;
          }

          *(v72 + 40) = v73;
        }
      }

      swift_beginAccess();
      sub_1E47AC06C(v219, v236);
      __swift_destroy_boxed_opaque_existential_1(v236);
      swift_endAccess();
      if (v220)
      {
        *(sub_1E47B2BAC() + 48) = 1;

        v74 = sub_1E47B2BAC();
        sub_1E47B4C1C(v47 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, v217, type metadata accessor for Event);
        swift_beginAccess();
        v75 = *(v74 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v74 + 32) = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_1E4860A08(0, v75[2] + 1, 1, v75);
          *(v74 + 32) = v75;
        }

        v78 = v75[2];
        v77 = v75[3];
        if (v78 >= v77 >> 1)
        {
          v75 = sub_1E4860A08((v77 > 1), v78 + 1, 1, v75);
        }

        v75[2] = v78 + 1;
        sub_1E47B49FC(v217, v75 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v78, type metadata accessor for Event);
        *(v74 + 32) = v75;
        swift_endAccess();

        a1 = v229;
        v79 = *(v229 + 40);
        v80 = sub_1E47AFE3C();
        v81 = v80;
        v227 = v80 >> 62;
        if (v80 >> 62)
        {
          v14 = sub_1E4878F0C();
          if (v14)
          {
LABEL_90:
            v82 = 0;
            v233 = v81;
            v234 = v81 & 0xC000000000000001;
            v230 = v81 + 32;
            v231 = v81 & 0xFFFFFFFFFFFFFF8;
            v232 = v14;
            while (1)
            {
              if (v234)
              {
                v83 = MEMORY[0x1E6919650](v82, v81);
                v31 = __OFADD__(v82++, 1);
                if (v31)
                {
                  goto LABEL_322;
                }
              }

              else
              {
                if (v82 >= *(v231 + 16))
                {
                  goto LABEL_337;
                }

                v83 = *(v230 + 8 * v82);

                v31 = __OFADD__(v82++, 1);
                if (v31)
                {
                  goto LABEL_322;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v84 = *(v83 + a1);
              v85 = *(v84 + 16);
              if (v85)
              {
                break;
              }

              v88 = 0.0;
              v93 = -1;
LABEL_108:
              v94 = (v93 & ~(v93 >> 63));
              v95 = *(v83 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v79 = v79 + v88 + v95 * v94;
              if (v82 == v14)
              {
                goto LABEL_109;
              }
            }

            v86 = v84 + 32;

            v87 = 0;
            v88 = 0.0;
            while (1)
            {
              sub_1E47A1524(v86, v236);
              v91 = v237;
              v92 = v238;
              __swift_project_boxed_opaque_existential_0(v236, v237);
              if ((*(v92 + 16))(v91, v92) > 0.0)
              {
                v31 = __OFADD__(v87++, 1);
                if (v31)
                {
                  goto LABEL_305;
                }
              }

              v89 = v237;
              v90 = v238;
              a1 = __swift_project_boxed_opaque_existential_0(v236, v237);
              v88 = v88 + (*(v90 + 16))(v89, v90);
              __swift_destroy_boxed_opaque_existential_1(v236);
              v86 += 40;
              if (!--v85)
              {

                v14 = v232;
                v81 = v233;
                v93 = v87 - 1;
                if (__OFSUB__(v87, 1))
                {
                  goto LABEL_323;
                }

                goto LABEL_108;
              }
            }
          }
        }

        else
        {
          v14 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_90;
          }
        }

LABEL_109:
        if (v227)
        {
          v96 = sub_1E4878F0C();
        }

        else
        {
          v96 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v96, 1))
        {
          goto LABEL_346;
        }

        if (v79 + *(v229 + 56) * ((v96 - 1) & ~((v96 - 1) >> 63)) <= a6)
        {
          goto LABEL_297;
        }

        *(sub_1E47B2BAC() + 48) = 0;
      }

      a1 = v229;
      v97 = *(v229 + 40);
      v98 = sub_1E47AFE3C();
      v99 = v98;
      v227 = v98 >> 62;
      if (v98 >> 62)
      {
        v14 = sub_1E4878F0C();
        if (v14)
        {
LABEL_117:
          v100 = 0;
          v233 = v99;
          v234 = v99 & 0xC000000000000001;
          v230 = v99 + 32;
          v231 = v99 & 0xFFFFFFFFFFFFFF8;
          v232 = v14;
          while (1)
          {
            if (v234)
            {
              v101 = MEMORY[0x1E6919650](v100, v99);
              v31 = __OFADD__(v100++, 1);
              if (v31)
              {
                goto LABEL_315;
              }
            }

            else
            {
              if (v100 >= *(v231 + 16))
              {
                goto LABEL_329;
              }

              v101 = *(v230 + 8 * v100);

              v31 = __OFADD__(v100++, 1);
              if (v31)
              {
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                __break(1u);
LABEL_318:
                __break(1u);
                goto LABEL_319;
              }
            }

            a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            swift_beginAccess();
            v102 = *(v101 + a1);
            v103 = *(v102 + 16);
            if (v103)
            {
              break;
            }

            v106 = 0.0;
            v111 = -1;
LABEL_135:
            v112 = (v111 & ~(v111 >> 63));
            v113 = *(v101 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v97 = v97 + v106 + v113 * v112;
            if (v100 == v14)
            {
              goto LABEL_136;
            }
          }

          v104 = v102 + 32;

          v105 = 0;
          v106 = 0.0;
          while (1)
          {
            sub_1E47A1524(v104, v236);
            v109 = v237;
            v110 = v238;
            __swift_project_boxed_opaque_existential_0(v236, v237);
            if ((*(v110 + 16))(v109, v110) > 0.0)
            {
              v31 = __OFADD__(v105++, 1);
              if (v31)
              {
                goto LABEL_301;
              }
            }

            v107 = v237;
            v108 = v238;
            a1 = __swift_project_boxed_opaque_existential_0(v236, v237);
            v106 = v106 + (*(v108 + 16))(v107, v108);
            __swift_destroy_boxed_opaque_existential_1(v236);
            v104 += 40;
            if (!--v103)
            {

              v14 = v232;
              v99 = v233;
              v111 = v105 - 1;
              if (__OFSUB__(v105, 1))
              {
                goto LABEL_316;
              }

              goto LABEL_135;
            }
          }
        }
      }

      else
      {
        v14 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_117;
        }
      }

LABEL_136:
      if (v227)
      {
        v114 = sub_1E4878F0C();
      }

      else
      {
        v114 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v115 = v114 - 1;
      if (__OFSUB__(v114, 1))
      {
        goto LABEL_341;
      }

      a1 = v229;
      if (v97 + *(v229 + 56) * (v115 & ~(v115 >> 63)) <= a6)
      {
        goto LABEL_308;
      }

LABEL_141:
      sub_1E47A1524(v239, v236);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_228;
      }

      v228 = v235;
      if (v226)
      {
        v116 = *(a1 + 40);
        v117 = sub_1E47AFE3C();
        v14 = v117;
        v227 = v117 >> 62;
        if (v117 >> 62)
        {
          v118 = sub_1E4878F0C();
          if (v118)
          {
LABEL_145:
            v119 = 0;
            v233 = v14;
            v234 = v14 & 0xC000000000000001;
            v230 = v14 + 32;
            v231 = v14 & 0xFFFFFFFFFFFFFF8;
            v232 = v118;
            while (1)
            {
              if (v234)
              {
                v120 = MEMORY[0x1E6919650](v119, v14);
                v31 = __OFADD__(v119++, 1);
                if (v31)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                if (v119 >= *(v231 + 16))
                {
                  goto LABEL_338;
                }

                v120 = *(v230 + 8 * v119);

                v31 = __OFADD__(v119++, 1);
                if (v31)
                {
                  goto LABEL_324;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v121 = *(v120 + a1);
              v122 = *(v121 + 16);
              if (v122)
              {
                break;
              }

              v125 = 0.0;
              v130 = -1;
LABEL_163:
              v131 = (v130 & ~(v130 >> 63));
              v132 = *(v120 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v116 = v116 + v125 + v132 * v131;
              if (v119 == v118)
              {
                goto LABEL_164;
              }
            }

            v123 = v121 + 32;

            v124 = 0;
            v125 = 0.0;
            while (1)
            {
              sub_1E47A1524(v123, v236);
              v128 = v237;
              v129 = v238;
              __swift_project_boxed_opaque_existential_0(v236, v237);
              if ((*(v129 + 16))(v128, v129) > 0.0)
              {
                v31 = __OFADD__(v124++, 1);
                if (v31)
                {
                  goto LABEL_306;
                }
              }

              v126 = v237;
              v127 = v238;
              a1 = __swift_project_boxed_opaque_existential_0(v236, v237);
              v125 = v125 + (*(v127 + 16))(v126, v127);
              __swift_destroy_boxed_opaque_existential_1(v236);
              v123 += 40;
              if (!--v122)
              {

                v118 = v232;
                v14 = v233;
                v130 = v124 - 1;
                if (__OFSUB__(v124, 1))
                {
                  goto LABEL_325;
                }

                goto LABEL_163;
              }
            }
          }
        }

        else
        {
          v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v118)
          {
            goto LABEL_145;
          }
        }

LABEL_164:
        if (v227)
        {
          v133 = sub_1E4878F0C();
        }

        else
        {
          v133 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v134 = v133 - 1;
        if (__OFSUB__(v133, 1))
        {
          goto LABEL_347;
        }

        a1 = v229;
        v46 = v116 + *(v229 + 56) * (v134 & ~(v134 >> 63));
        if (v46 - *(v229 + 40) <= a6)
        {
LABEL_42:
          __swift_destroy_boxed_opaque_existential_1(v239);

          *(a1 + 40) = *(a1 + 40) - (v46 - a6);
          return 1;
        }
      }

      swift_beginAccess();
      sub_1E47AC06C(v219, v236);
      __swift_destroy_boxed_opaque_existential_1(v236);
      swift_endAccess();
      if (v220)
      {
        *(sub_1E47B2BAC() + 48) = 1;

        v135 = sub_1E47B2BAC();
        sub_1E47B4C1C(v228 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, v215, type metadata accessor for Event);
        swift_beginAccess();
        v136 = *(v135 + 32);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        *(v135 + 32) = v136;
        if ((v137 & 1) == 0)
        {
          v136 = sub_1E4860A08(0, v136[2] + 1, 1, v136);
          *(v135 + 32) = v136;
        }

        v139 = v136[2];
        v138 = v136[3];
        if (v139 >= v138 >> 1)
        {
          v136 = sub_1E4860A08((v138 > 1), v139 + 1, 1, v136);
        }

        v136[2] = v139 + 1;
        sub_1E47B49FC(v215, v136 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v139, type metadata accessor for Event);
        *(v135 + 32) = v136;
        swift_endAccess();

        a1 = v229;
        v140 = *(v229 + 40);
        v141 = sub_1E47AFE3C();
        v14 = v141;
        v227 = v141 >> 62;
        if (v141 >> 62)
        {
          v142 = sub_1E4878F0C();
          if (v142)
          {
LABEL_177:
            v143 = 0;
            v233 = v14;
            v234 = v14 & 0xC000000000000001;
            v230 = v14 + 32;
            v231 = v14 & 0xFFFFFFFFFFFFFF8;
            v232 = v142;
            while (1)
            {
              if (v234)
              {
                v144 = MEMORY[0x1E6919650](v143, v14);
                v31 = __OFADD__(v143++, 1);
                if (v31)
                {
                  goto LABEL_326;
                }
              }

              else
              {
                if (v143 >= *(v231 + 16))
                {
                  goto LABEL_339;
                }

                v144 = *(v230 + 8 * v143);

                v31 = __OFADD__(v143++, 1);
                if (v31)
                {
                  goto LABEL_326;
                }
              }

              a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v145 = *(v144 + a1);
              v146 = *(v145 + 16);
              if (v146)
              {
                break;
              }

              v149 = 0.0;
              v154 = -1;
LABEL_195:
              v155 = (v154 & ~(v154 >> 63));
              v156 = *(v144 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v140 = v140 + v149 + v156 * v155;
              if (v143 == v142)
              {
                goto LABEL_196;
              }
            }

            v147 = v145 + 32;

            v148 = 0;
            v149 = 0.0;
            while (1)
            {
              sub_1E47A1524(v147, v236);
              v152 = v237;
              v153 = v238;
              __swift_project_boxed_opaque_existential_0(v236, v237);
              if ((*(v153 + 16))(v152, v153) > 0.0)
              {
                v31 = __OFADD__(v148++, 1);
                if (v31)
                {
                  goto LABEL_307;
                }
              }

              v150 = v237;
              v151 = v238;
              a1 = __swift_project_boxed_opaque_existential_0(v236, v237);
              v149 = v149 + (*(v151 + 16))(v150, v151);
              __swift_destroy_boxed_opaque_existential_1(v236);
              v147 += 40;
              if (!--v146)
              {

                v142 = v232;
                v14 = v233;
                v154 = v148 - 1;
                if (__OFSUB__(v148, 1))
                {
                  goto LABEL_328;
                }

                goto LABEL_195;
              }
            }
          }
        }

        else
        {
          v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v142)
          {
            goto LABEL_177;
          }
        }

LABEL_196:
        if (v227)
        {
          v157 = sub_1E4878F0C();
        }

        else
        {
          v157 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v157, 1))
        {
          goto LABEL_348;
        }

        if (v140 + *(v229 + 56) * ((v157 - 1) & ~((v157 - 1) >> 63)) <= a6)
        {
LABEL_297:
          __swift_destroy_boxed_opaque_existential_1(v239);

          goto LABEL_298;
        }

        *(sub_1E47B2BAC() + 48) = 0;
      }

      a1 = v229;
      v158 = *(v229 + 40);
      v159 = sub_1E47AFE3C();
      v14 = v159;
      v227 = v159 >> 62;
      if (v159 >> 62)
      {
        v160 = sub_1E4878F0C();
        if (v160)
        {
LABEL_204:
          v161 = 0;
          v233 = v14;
          v234 = v14 & 0xC000000000000001;
          v230 = v14 + 32;
          v231 = v14 & 0xFFFFFFFFFFFFFF8;
          v232 = v160;
          while (1)
          {
            if (v234)
            {
              v162 = MEMORY[0x1E6919650](v161, v14);
              v31 = __OFADD__(v161++, 1);
              if (v31)
              {
                goto LABEL_317;
              }
            }

            else
            {
              if (v161 >= *(v231 + 16))
              {
                goto LABEL_333;
              }

              v162 = *(v230 + 8 * v161);

              v31 = __OFADD__(v161++, 1);
              if (v31)
              {
                goto LABEL_317;
              }
            }

            a1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            swift_beginAccess();
            v163 = *(v162 + a1);
            v164 = *(v163 + 16);
            if (v164)
            {
              break;
            }

            v167 = 0.0;
            v172 = -1;
LABEL_222:
            v173 = (v172 & ~(v172 >> 63));
            v174 = *(v162 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v158 = v158 + v167 + v174 * v173;
            if (v161 == v160)
            {
              goto LABEL_223;
            }
          }

          v165 = v163 + 32;

          v166 = 0;
          v167 = 0.0;
          while (1)
          {
            sub_1E47A1524(v165, v236);
            v170 = v237;
            v171 = v238;
            __swift_project_boxed_opaque_existential_0(v236, v237);
            if ((*(v171 + 16))(v170, v171) > 0.0)
            {
              v31 = __OFADD__(v166++, 1);
              if (v31)
              {
                goto LABEL_302;
              }
            }

            v168 = v237;
            v169 = v238;
            a1 = __swift_project_boxed_opaque_existential_0(v236, v237);
            v167 = v167 + (*(v169 + 16))(v168, v169);
            __swift_destroy_boxed_opaque_existential_1(v236);
            v165 += 40;
            if (!--v164)
            {

              v160 = v232;
              v14 = v233;
              v172 = v166 - 1;
              if (__OFSUB__(v166, 1))
              {
                goto LABEL_318;
              }

              goto LABEL_222;
            }
          }
        }
      }

      else
      {
        v160 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v160)
        {
          goto LABEL_204;
        }
      }

LABEL_223:
      if (v227)
      {
        v175 = sub_1E4878F0C();
      }

      else
      {
        v175 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v175, 1))
      {
        goto LABEL_342;
      }

      if (v158 + *(v229 + 56) * ((v175 - 1) & ~((v175 - 1) >> 63)) <= a6)
      {
        goto LABEL_308;
      }

LABEL_228:

      v18 = sub_1E47B72E4(v176);
      v14 = v177;

      __swift_destroy_boxed_opaque_existential_1(v239);
      if (v14)
      {
LABEL_6:

        return 0;
      }

      goto LABEL_7;
    }
  }

  v29 = 0;
  v233 = v14;
  v234 = v14 & 0xC000000000000001;
  v230 = v14 + 32;
  v231 = v14 & 0xFFFFFFFFFFFFFF8;
  v232 = v28;
  while (v234)
  {
    v30 = MEMORY[0x1E6919650](v29, v14);
    v31 = __OFADD__(v29++, 1);
    if (v31)
    {
      goto LABEL_299;
    }

LABEL_23:
    v32 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
    swift_beginAccess();
    v33 = *(v30 + v32);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v33 + 32;

      v36 = 0;
      v37 = 0.0;
      do
      {
        sub_1E47A1524(v35, v236);
        v41 = v237;
        v40 = v238;
        __swift_project_boxed_opaque_existential_0(v236, v237);
        if ((*(v40 + 16))(v41, v40) > 0.0)
        {
          v31 = __OFADD__(v36++, 1);
          if (v31)
          {
            __break(1u);
            goto LABEL_297;
          }
        }

        v38 = v237;
        v39 = v238;
        __swift_project_boxed_opaque_existential_0(v236, v237);
        v37 = v37 + (*(v39 + 16))(v38, v39);
        __swift_destroy_boxed_opaque_existential_1(v236);
        v35 += 40;
        --v34;
      }

      while (v34);

      v28 = v232;
      v14 = v233;
      v42 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_300;
      }
    }

    else
    {
      v37 = 0.0;
      v42 = -1;
    }

    v43 = (v42 & ~(v42 >> 63));
    v44 = *(v30 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

    v26 = v26 + v37 + v44 * v43;
    if (v29 == v28)
    {
      goto LABEL_35;
    }
  }

  if (v29 >= *(v231 + 16))
  {
    goto LABEL_303;
  }

  v30 = *(v230 + 8 * v29);

  v31 = __OFADD__(v29++, 1);
  if (!v31)
  {
    goto LABEL_23;
  }

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
  __swift_destroy_boxed_opaque_existential_1(v239);
LABEL_298:

  return 1;
}

uint64_t sub_1E47B96D8(unint64_t a1, uint64_t *a2, double a3)
{
  v5 = *a2;
  result = swift_beginAccess();
  v7 = *(v5 + 32);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x1E6919650](a1, v7);

LABEL_5:
    v9 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
    swift_beginAccess();
    v10 = *(v8 + v9);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = v10 + 40 * v11 - 8;
      while (v11 <= *(v10 + 16))
      {
        sub_1E47A1524(v12, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
        if (swift_dynamicCast())
        {
          v13 = sub_1E47B743C(v14, v5, a3);

          if (v13)
          {

            return 1;
          }
        }

        v12 -= 40;
        if (!--v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_13:

      return 0;
    }

LABEL_17:

    return 0;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v8 = *(v7 + 8 * a1 + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double *sub_1E47B98A8(unint64_t a1, void *a2, void *a3, int a4, int a5, int a6, double a7)
{
  LODWORD(v228) = a6;
  LODWORD(v229) = a5;
  LODWORD(v224) = a4;
  v223 = a2;
  j = sub_1E487751C();
  v11 = *(j - 8);
  MEMORY[0x1EEE9AC00](j);
  v13 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1E487753C();
  v14 = *(v222 - 8);
  v15 = MEMORY[0x1EEE9AC00](v222);
  v221 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v204 - v17;
  v19 = sub_1E487732C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  i = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E47ABFD0())
  {
    type metadata accessor for NarrowMultidayLayout.MultiDayViewModel();
    result = swift_allocObject();
    result[2] = -2.31584178e77;
    *(result + 3) = 0x80000001E487D190;
    *(result + 4) = MEMORY[0x1E69E7CC0];
    v25 = a3[14];
    v24 = a3[15];
    *(result + 5) = v24;
    *(result + 6) = v24;
    *(result + 7) = v25;
    return result;
  }

  v226 = a1;
  v227 = a3;
  (*(v20 + 16))(i, a1, v19);
  sub_1E4877A7C();
  v26 = j;
  (*(v11 + 104))(v13, *MEMORY[0x1E6969A58], j);
  v27 = sub_1E487752C();
  v29 = *(v11 + 8);
  v28 = v11 + 8;
  v29(v13, v26);
  v32 = *(v14 + 8);
  v30 = v14 + 8;
  v31 = v32;
  v32(v18, v222);
  (*(v20 + 8))(i, v19);
  if (v27 < 17)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  v210 = v27;
  if (v27 <= 9)
  {
    LOBYTE(v34) = 0;
  }

  else
  {
    LOBYTE(v34) = v33;
  }

  v213 = v31;
  v214 = v30;
  if (v224 == 2 && v34 != 2)
  {
    if (!v223[2])
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_14;
  }

  v35 = v223;

  while (1)
  {
    v223 = v35;
    v40 = sub_1E47B549C(v226, v35, v227);
    v235 = v40;

    sub_1E4877A7C();
    swift_beginAccess();
    v225 = v40;
    v27 = v40[4];
    if ((v27 & 0xC000000000000001) != 0)
    {
      goto LABEL_102;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      v223 = sub_1E4866DE4(v223);
LABEL_14:
      v36 = v223;
      v37 = v223[2];
      if (!v37)
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        if (sub_1E4878F0C() < 2)
        {
          goto LABEL_112;
        }

LABEL_39:
        v47 = *(v27 + 32);
        if ((v47 & 0xC000000000000001) != 0)
        {

          v48 = MEMORY[0x1E6919650](1, v47);
        }

        else
        {
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
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
            goto LABEL_367;
          }

          v48 = *(v47 + 40);
        }

        v27 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        swift_beginAccess();
        v49 = *(v48 + v27);
        i = *(v49 + 16);
        j = v48;

        if (!i)
        {
LABEL_80:

          goto LABEL_113;
        }

        v50 = 0;
        v51 = v49 + 32;
LABEL_64:
        if (v50 >= *(v49 + 16))
        {
          continue;
        }

        sub_1E47A1524(v51, &v240);
        sub_1E47A1524(&v240, &v236);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
        if (swift_dynamicCast())
        {
          v34 = v232;
          if (*(v232 + 48))
          {
            swift_beginAccess();
            v28 = *(*(v34 + 32) + 16);

            __swift_destroy_boxed_opaque_existential_1(&v240);
            if (v28)
            {
              goto LABEL_74;
            }

            goto LABEL_63;
          }
        }

        else
        {
          sub_1E47A1524(&v240, &v236);
          type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
          if ((swift_dynamicCast() & 1) != 0 || (sub_1E47A1524(&v240, &v236), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v240, &v236), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v240, &v236), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel(), swift_dynamicCast()))
          {

            __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_74:

            v34 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            v57 = v217;
            swift_beginAccess();
            v58 = *(v57 + v34);
            v59 = v58[2];
            if (!v59)
            {
              v60 = 0;
              goto LABEL_99;
            }

            v60 = 0;
            v61 = 9;
            while (1)
            {
              if (v60 >= v58[2])
              {
                goto LABEL_106;
              }

              sub_1E47A1524(&v58[v61 - 5], &v240);
              sub_1E47B488C(&v240, &v236);
              type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
              if (swift_dynamicCast())
              {
                break;
              }

              ++v60;
              v61 += 5;
              if (v59 == v60)
              {
                v60 = v58[2];
                v59 = v60;
                goto LABEL_99;
              }
            }

            v59 = v60 + 1;
            v62 = v58[2];
            if (v62 - 1 != v60)
            {
              i = 40;
              do
              {
                if (v59 >= v62)
                {
                  goto LABEL_110;
                }

                sub_1E47A1524(&v58[v61], &v240);
                sub_1E47B488C(&v240, &v236);
                if (swift_dynamicCast())
                {
                }

                else
                {
                  if (v59 != v60)
                  {
                    if ((v60 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_362;
                    }

                    v63 = v58[2];
                    if (v60 >= v63)
                    {
                      goto LABEL_363;
                    }

                    sub_1E47A1524(&v58[5 * v60 + 4], &v240);
                    if (v59 >= v63)
                    {
                      goto LABEL_364;
                    }

                    sub_1E47A1524(&v58[v61], &v236);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v65 = v217;
                    *(v217 + v34) = v58;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v67 = v65;
                      v58 = sub_1E4866DD0(v58);
                      *(v67 + v34) = v58;
                    }

                    if (v60 >= v58[2])
                    {
                      goto LABEL_365;
                    }

                    v66 = &v58[5 * v60];
                    __swift_destroy_boxed_opaque_existential_1(v66 + 4);
                    sub_1E47B488C(&v236, (v66 + 4));
                    v28 = v217;
                    *(v217 + v34) = v58;
                    if (v59 >= v58[2])
                    {
                      goto LABEL_366;
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v58[v61]);
                    sub_1E47B488C(&v240, &v58[v61]);
                    *(v28 + v34) = v58;
                  }

                  ++v60;
                }

                ++v59;
                v62 = v58[2];
                v61 += 5;
              }

              while (v59 != v62);
              if (v59 < v60)
              {
                goto LABEL_371;
              }
            }

LABEL_99:
            sub_1E486D088(v60, v59);
            swift_endAccess();
            goto LABEL_129;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_63:
        ++v50;
        v51 += 40;
        if (i == v50)
        {
          goto LABEL_80;
        }

        goto LABEL_64;
      }

      break;
    }

    v38 = v37 - 1;
    v39 = *(type metadata accessor for DayEvents(0) - 8);
    sub_1E47B4C84(v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38, type metadata accessor for DayEvents);
    v36[2] = v38;
    v35 = v36;
  }

  v217 = *(v27 + 32);

  if ((v229 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  v41 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  v42 = v217;
  swift_beginAccess();
  v27 = *(v42 + v41);
  v43 = *(v27 + 16);

  if (!v43)
  {
    goto LABEL_60;
  }

  i = 0;
  v44 = v27 + 32;
  while (1)
  {
    if (i >= *(v27 + 16))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:

      v217 = MEMORY[0x1E6919650](0, v27);

      if ((v229 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    sub_1E47A1524(v44, &v240);
    sub_1E47A1524(&v240, &v236);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
    if (!swift_dynamicCast())
    {
      break;
    }

    v45 = v232;
    if ((*(v232 + 48) & 1) == 0)
    {

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1(&v240);
      goto LABEL_23;
    }

    swift_beginAccess();
    v28 = *(*(v45 + 32) + 16);

    __swift_destroy_boxed_opaque_existential_1(&v240);
    if (v28)
    {
      goto LABEL_34;
    }

LABEL_23:
    ++i;
    v44 += 40;
    if (v43 == i)
    {
      goto LABEL_60;
    }
  }

  sub_1E47A1524(&v240, &v236);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E47A1524(&v240, &v236);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
    if (!swift_dynamicCast())
    {
      sub_1E47A1524(&v240, &v236);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
      if (!swift_dynamicCast())
      {
        sub_1E47A1524(&v240, &v236);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (!swift_dynamicCast())
        {
          goto LABEL_22;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_34:

LABEL_35:
  v27 = v225;
  if (v224 != 2)
  {
    goto LABEL_132;
  }

  if (v34 != 2)
  {
    v52 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
    v53 = v217;
    swift_beginAccess();
    v27 = *(v53 + v52);
    v34 = *(v27 + 16);

    if (!v34)
    {
LABEL_60:

      v27 = v225;
      v225[5] = 0.0;
      sub_1E47B70C4(v227, v228 & 1, v217);
      goto LABEL_132;
    }

    v54 = 0;
    v55 = v27 + 32;
    while (1)
    {
      if (v54 >= *(v27 + 16))
      {
        goto LABEL_101;
      }

      sub_1E47A1524(v55, &v240);
      sub_1E47A1524(&v240, &v236);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
      if (!swift_dynamicCast())
      {
        break;
      }

      v56 = v232;
      if ((*(v232 + 48) & 1) == 0)
      {

LABEL_47:
        __swift_destroy_boxed_opaque_existential_1(&v240);
        goto LABEL_48;
      }

      swift_beginAccess();
      i = *(*(v56 + 32) + 16);

      __swift_destroy_boxed_opaque_existential_1(&v240);
      if (i)
      {
        goto LABEL_59;
      }

LABEL_48:
      ++v54;
      v55 += 40;
      if (v34 == v54)
      {
        goto LABEL_60;
      }
    }

    sub_1E47A1524(&v240, &v236);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
    if ((swift_dynamicCast() & 1) != 0 || (sub_1E47A1524(&v240, &v236), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v240, &v236), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0), swift_dynamicCast()) || (sub_1E47A1524(&v240, &v236), type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_59:

      goto LABEL_130;
    }

    goto LABEL_47;
  }

  v46 = *(v225 + 4);
  if (v46 >> 62)
  {
    goto LABEL_111;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_39;
  }

LABEL_112:
  j = 0;
LABEL_113:
  v68 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  v69 = v217;
  swift_beginAccess();
  v70 = *(v69 + v68);
  v71 = *(v70 + 16);

  if (!v71)
  {
LABEL_131:

    v27 = v225;
    v225[5] = 0.0;
    sub_1E47B70C4(v227, v228 & 1, v217);

    goto LABEL_132;
  }

  v72 = 0;
  v73 = v70 + 32;
  while (2)
  {
    if (v72 >= *(v70 + 16))
    {
      goto LABEL_308;
    }

    sub_1E47A1524(v73, &v240);
    sub_1E47A1524(&v240, &v236);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
    if (swift_dynamicCast())
    {
      v74 = v232;
      if (*(v232 + 48))
      {
        swift_beginAccess();
        i = *(*(v74 + 32) + 16);

        __swift_destroy_boxed_opaque_existential_1(&v240);
        if (i)
        {
          goto LABEL_128;
        }

        goto LABEL_117;
      }

LABEL_116:
      __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_117:
      ++v72;
      v73 += 40;
      if (v71 == v72)
      {
        goto LABEL_131;
      }

      continue;
    }

    break;
  }

  sub_1E47A1524(&v240, &v236);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E47A1524(&v240, &v236);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
    if (!swift_dynamicCast())
    {
      sub_1E47A1524(&v240, &v236);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
      if (!swift_dynamicCast())
      {
        sub_1E47A1524(&v240, &v236);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (!swift_dynamicCast())
        {
          goto LABEL_116;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_128:

LABEL_129:

LABEL_130:
  v27 = v225;
LABEL_132:
  v7 = *(v27 + 40);
  v75 = sub_1E47AFE3C();
  v72 = v75;
  v220 = v75 >> 62;
  if (v75 >> 62)
  {
    goto LABEL_155;
  }

  for (i = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4878F0C())
  {
    v76 = 0;
    v229 = v72;
    j = v72 & 0xC000000000000001;
    v226 = v72 + 32;
    v227 = (v72 & 0xFFFFFFFFFFFFFF8);
    v228 = i;
    while (1)
    {
      if (j)
      {
        v80 = MEMORY[0x1E6919650](v76, v72);
        v81 = __OFADD__(v76++, 1);
        if (v81)
        {
          goto LABEL_153;
        }
      }

      else
      {
        if (v76 >= v227[2])
        {
          goto LABEL_154;
        }

        v80 = *(v226 + 8 * v76);

        v81 = __OFADD__(v76++, 1);
        if (v81)
        {
          goto LABEL_153;
        }
      }

      v82 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v83 = *(v80 + v82);
      v84 = *(v83 + 16);
      if (v84)
      {
        break;
      }

      v86 = 0.0;
      v77 = -1;
LABEL_136:
      v78 = (v77 & ~(v77 >> 63));
      v79 = *(v80 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v7 = v7 + v86 + v79 * v78;
      if (v76 == i)
      {
        goto LABEL_156;
      }
    }

    v72 = v83 + 32;

    v85 = 0;
    v86 = 0.0;
    while (1)
    {
      sub_1E47A1524(v72, &v240);
      v88 = v242;
      v28 = v243;
      __swift_project_boxed_opaque_existential_0(&v240, v242);
      if ((*(v28 + 16))(v88, v28) > 0.0)
      {
        v81 = __OFADD__(v85++, 1);
        if (v81)
        {
          break;
        }
      }

      v87 = v242;
      v28 = v243;
      __swift_project_boxed_opaque_existential_0(&v240, v242);
      v86 = v86 + (*(v28 + 16))(v87, v28);
      __swift_destroy_boxed_opaque_existential_1(&v240);
      v72 += 40;
      if (!--v84)
      {

        i = v228;
        v72 = v229;
        v77 = v85 - 1;
        if (!__OFSUB__(v85, 1))
        {
          goto LABEL_136;
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    ;
  }

LABEL_156:
  if (v220)
  {
    v89 = sub_1E4878F0C();
  }

  else
  {
    v89 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v89 - 1;
  if (__OFSUB__(v89, 1))
  {
    goto LABEL_309;
  }

  v91 = v225;
  v92 = v7 + v225[7] * (v90 & ~(v90 >> 63));
  if (v224 == 1)
  {
    if (v92 <= a7)
    {
      goto LABEL_222;
    }

    v93 = *(v225 + 4);
    v206 = v93 >> 62;
    if (v93 >> 62)
    {
      goto LABEL_356;
    }

    v209 = v93 & 0xFFFFFFFFFFFFFF8;
    v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v94)
    {
      goto LABEL_222;
    }

    v211 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v212 = v94;
LABEL_165:
    v210 = v93 & 0xC000000000000001;
    if (v93 < 0)
    {
      v95 = v93;
    }

    else
    {
      v95 = v209;
    }

    v204 = v95;
    v205 = v93 + 32;
    v207 = v93;

    v96 = 0;
    while (1)
    {
      v97 = v94 - 1;
      if (__OFSUB__(v94, 1))
      {
        goto LABEL_310;
      }

      if (v94 == v212)
      {
        if (v206)
        {
          v93 = sub_1E4878F0C();
          v96 = v93;
        }

        else
        {
          v96 = *(v209 + 16);
        }
      }

      v81 = __OFSUB__(v96--, 1);
      if (v81)
      {
        goto LABEL_311;
      }

      if (v97 < 0 || v97 >= v211)
      {
        goto LABEL_312;
      }

      if (v210)
      {
        v219 = MEMORY[0x1E6919650](v94 - 1, v207);
      }

      else
      {
        if (v97 >= *(v209 + 16))
        {
          __break(1u);
LABEL_356:
          v209 = v93 & 0xFFFFFFFFFFFFFF8;
          v182 = v93;
          v183 = sub_1E4878F0C();
          if (!v183)
          {
            goto LABEL_222;
          }

          v94 = v183;
          v212 = sub_1E4878F0C();
          v211 = sub_1E4878F0C();
          v93 = v182;
          goto LABEL_165;
        }

        v219 = *(v205 + 8 * v97);
      }

      if (sub_1E47B7960(v96, &v235, 1, 0, 1, a7))
      {

        goto LABEL_264;
      }

      v215 = v94 - 1;
      v98 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v99 = v219;
      swift_beginAccess();
      v208 = v98;
      v100 = *(v99 + v98);
      v101 = *(v100 + 16);

      if (v101)
      {
        v102 = 0;
        v103 = v100 + 32;
        while (1)
        {
          if (v102 >= *(v100 + 16))
          {
            goto LABEL_271;
          }

          v227 = v102;
          sub_1E47A1524(v103, &v240);
          sub_1E47B488C(&v240, &v236);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
          type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
          if (swift_dynamicCast())
          {
            break;
          }

          v102 = (v227 + 1);
          v103 += 40;
          if (v101 == (v227 + 1))
          {
            goto LABEL_187;
          }
        }

        v104 = sub_1E47B2A64();
        v105 = v225;
        v218 = v96;
        v216 = v104;
        if (!v104)
        {
          goto LABEL_423;
        }

        while (1)
        {
          v106 = *(v104 + 48);
          if (v106 < 2)
          {
            break;
          }

          *(v104 + 48) = v106 - 1;
          v7 = v105[5];
          v107 = sub_1E47AFE3C();
          v108 = v107;
          v220 = v107 >> 62;
          if (v107 >> 62)
          {
            v72 = sub_1E4878F0C();
            if (v72)
            {
LABEL_194:
              v109 = 0;
              v229 = v108;
              j = v108 & 0xC000000000000001;
              v226 = v108 & 0xFFFFFFFFFFFFFF8;
              v224 = v108 + 32;
              v228 = v72;
              do
              {
                if (j)
                {
                  i = MEMORY[0x1E6919650](v109, v108);
                  v81 = __OFADD__(v109++, 1);
                  if (v81)
                  {
                    goto LABEL_267;
                  }
                }

                else
                {
                  if (v109 >= *(v226 + 16))
                  {
                    goto LABEL_270;
                  }

                  i = *(v224 + 8 * v109);

                  v81 = __OFADD__(v109++, 1);
                  if (v81)
                  {
                    goto LABEL_267;
                  }
                }

                v113 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
                swift_beginAccess();
                v114 = *(i + v113);
                v115 = *(v114 + 16);
                if (v115)
                {
                  v116 = v114 + 32;

                  v117 = 0;
                  v118 = 0.0;
                  do
                  {
                    sub_1E47A1524(v116, &v240);
                    v121 = v242;
                    v120 = v243;
                    __swift_project_boxed_opaque_existential_0(&v240, v242);
                    if ((*(v120 + 16))(v121, v120) > 0.0)
                    {
                      v81 = __OFADD__(v117++, 1);
                      if (v81)
                      {
                        goto LABEL_374;
                      }
                    }

                    v119 = v242;
                    v28 = v243;
                    __swift_project_boxed_opaque_existential_0(&v240, v242);
                    v118 = v118 + (*(v28 + 16))(v119, v28);
                    __swift_destroy_boxed_opaque_existential_1(&v240);
                    v116 += 40;
                    --v115;
                  }

                  while (v115);

                  v72 = v228;
                  v108 = v229;
                  v110 = v117 - 1;
                  if (__OFSUB__(v117, 1))
                  {
                    goto LABEL_268;
                  }
                }

                else
                {
                  v118 = 0.0;
                  v110 = -1;
                }

                v111 = (v110 & ~(v110 >> 63));
                v112 = *(i + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

                v7 = v7 + v118 + v112 * v111;
              }

              while (v109 != v72);
            }
          }

          else
          {
            v72 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72)
            {
              goto LABEL_194;
            }
          }

          v96 = v218;
          if (v220)
          {
            v122 = sub_1E4878F0C();
          }

          else
          {
            v122 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v123 = v122 - 1;
          if (__OFSUB__(v122, 1))
          {
            goto LABEL_305;
          }

          v105 = v225;
          v104 = v216;
          if (v7 + v225[7] * (v123 & ~(v123 >> 63)) <= a7)
          {
            goto LABEL_217;
          }
        }

        *(v104 + 40) = 1;
        sub_1E47AF9D4();
        if (v124 <= a7)
        {
          goto LABEL_217;
        }

        swift_beginAccess();
        sub_1E47AC06C(v227, &v240);
        __swift_destroy_boxed_opaque_existential_1(&v240);
        swift_endAccess();
        sub_1E47AF9D4();
        v7 = v125;

        if (v7 <= a7)
        {
          goto LABEL_375;
        }
      }

      else
      {
LABEL_187:
      }

      v94 = v215;
      if (!v215)
      {
        goto LABEL_375;
      }
    }
  }

  if (v92 <= a7)
  {
    goto LABEL_222;
  }

  v128 = *(v225 + 4);
  if (v128 >> 62)
  {
    v129 = sub_1E4878F0C();
    if (v129)
    {
      goto LABEL_226;
    }
  }

  else
  {
    v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v129)
    {
LABEL_226:
      v216 = v128 & 0xC000000000000001;
      v211 = v128 + 32;
      v212 = v128 & 0xFFFFFFFFFFFFFF8;

      v215 = v128;
      while (1)
      {
        v81 = __OFSUB__(v129--, 1);
        if (v81)
        {
          break;
        }

        if (v216)
        {
          v130 = MEMORY[0x1E6919650](v129, v128);
        }

        else
        {
          if ((v129 & 0x8000000000000000) != 0)
          {
            goto LABEL_306;
          }

          if (v129 >= *(v212 + 16))
          {
            goto LABEL_307;
          }

          v130 = *(v211 + 8 * v129);
        }

        v131 = sub_1E47B2A64();
        if (v131)
        {
          v219 = v131;
          *(v131 + 40) = 1;
          v7 = v225[5];
          v132 = sub_1E47AFE3C();
          v133 = v132;
          v218 = v132 >> 62;
          if (v132 >> 62)
          {
            v134 = sub_1E4878F0C();
          }

          else
          {
            v134 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v220 = v130;
          v224 = v129;
          if (v134)
          {
            i = 0;
            v229 = v133;
            j = v133 & 0xC000000000000001;
            v226 = v133 + 32;
            v227 = (v133 & 0xFFFFFFFFFFFFFF8);
            v228 = v134;
            do
            {
              if (j)
              {
                v28 = MEMORY[0x1E6919650](i, v133);
                v81 = __OFADD__(i++, 1);
                if (v81)
                {
                  goto LABEL_265;
                }
              }

              else
              {
                if (i >= v227[2])
                {
                  goto LABEL_269;
                }

                v28 = *(v226 + 8 * i);

                v81 = __OFADD__(i++, 1);
                if (v81)
                {
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
LABEL_271:
                  __break(1u);
LABEL_217:

LABEL_264:

LABEL_222:

                  goto LABEL_223;
                }
              }

              v138 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
              swift_beginAccess();
              v139 = *(v28 + v138);
              v140 = *(v139 + 16);
              if (v140)
              {
                v141 = v139 + 32;

                v72 = 0;
                v142 = 0.0;
                do
                {
                  sub_1E47A1524(v141, &v240);
                  v146 = v242;
                  v145 = v243;
                  __swift_project_boxed_opaque_existential_0(&v240, v242);
                  if ((*(v145 + 16))(v146, v145) > 0.0)
                  {
                    v81 = __OFADD__(v72++, 1);
                    if (v81)
                    {
LABEL_373:
                      __break(1u);
LABEL_374:
                      __break(1u);
                      goto LABEL_375;
                    }
                  }

                  v143 = v242;
                  v144 = v243;
                  __swift_project_boxed_opaque_existential_0(&v240, v242);
                  v142 = v142 + (*(v144 + 16))(v143, v144);
                  __swift_destroy_boxed_opaque_existential_1(&v240);
                  v141 += 40;
                  --v140;
                }

                while (v140);

                v134 = v228;
                v133 = v229;
                v135 = v72 - 1;
                if (__OFSUB__(v72, 1))
                {
                  goto LABEL_266;
                }
              }

              else
              {
                v72 = 0;
                v142 = 0.0;
                v135 = -1;
              }

              v136 = (v135 & ~(v135 >> 63));
              v137 = *(v28 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

              v7 = v7 + v142 + v137 * v136;
            }

            while (i != v134);
          }

          if (v218)
          {
            v147 = sub_1E4878F0C();
          }

          else
          {
            v147 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v128 = v215;
          v129 = v224;

          v148 = v147 - 1;
          if (__OFSUB__(v147, 1))
          {
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

            goto LABEL_314;
          }

          v91 = v225;
          if (v7 + v225[7] * (v148 & ~(v148 >> 63)) <= a7)
          {
            goto LABEL_375;
          }
        }

        else
        {

          v91 = v225;
        }

        if (!v129)
        {
          goto LABEL_274;
        }
      }

      __break(1u);
LABEL_274:
    }
  }

  sub_1E47ABE98(1, *(v91 + 4), &v236);
  v149 = v239;
  v150 = v236;
  v151 = v237;
  j = v239;
  if (v237 != v236)
  {
    v152 = v238;
    v153 = v239 & 0xFFFFFFFFFFFFFF8;
    v154 = v239 >> 62;
    if (v239 >> 62)
    {
      v155 = sub_1E4878F0C();
    }

    else
    {
      v155 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v156 = v151;
    while (1)
    {
      v157 = v156 - 1;
      if (__OFSUB__(v156, 1))
      {
        break;
      }

      if (v155 == v156)
      {
        if (v154)
        {
          v152 = sub_1E4878F0C();
        }

        else
        {
          v152 = *(v153 + 16);
        }
      }

      v81 = __OFSUB__(v152--, 1);
      if (v81)
      {
        goto LABEL_368;
      }

      if (v157 < 0 || v157 < v150 || v157 >= v151)
      {
        goto LABEL_369;
      }

      if (v154)
      {
        v158 = sub_1E4878F0C();
      }

      else
      {
        v158 = *(v153 + 16);
      }

      if (v157 >= v158)
      {
        goto LABEL_370;
      }

      if ((v149 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6919650](v157, j);
        swift_unknownObjectRelease();
      }

      else if (v157 >= *(v153 + 16))
      {
        goto LABEL_373;
      }

      if (sub_1E47B96D8(v152, &v235, a7))
      {
        goto LABEL_375;
      }

      v156 = v157;
      if (v157 == v150)
      {
        goto LABEL_297;
      }
    }

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

    goto LABEL_222;
  }

LABEL_377:

LABEL_297:

  sub_1E47ABE98(1, *(v225 + 4), &v240);
  v208 = v243;
  v219 = v240;
  if (v241 != v240)
  {
    v28 = v241;
    v72 = v242;
    v212 = v208 >> 62;
    v209 = v208 & 0xFFFFFFFFFFFFFF8;
    if (v208 >> 62)
    {
      v211 = sub_1E4878F0C();
    }

    else
    {
      v211 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v159 = v208;
    if (v208 >= 0)
    {
      v159 = v209;
    }

    v207 = v159;

    i = v211;
    while (1)
    {
      if (__OFSUB__(v28, 1))
      {
        goto LABEL_382;
      }

      if (v28 == i)
      {
        if (v212)
        {
          v72 = sub_1E4878F0C();
        }

        else
        {
          v72 = *(v209 + 16);
        }
      }

      v81 = __OFSUB__(v72--, 1);
      if (v81)
      {
        break;
      }

      v220 = --v28;
      v160 = sub_1E47B52D0(v28, v72);
      v162 = v161;
      if (sub_1E47B7960(v160, &v235, 0, 1, 0, a7))
      {
        goto LABEL_372;
      }

      v163 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v227 = v162;
      v164 = *(v162 + v163);
      v165 = *(v164 + 16);

      if (!v165)
      {
        goto LABEL_313;
      }

      v166 = 0;
      v167 = v164 + 32;
      while (1)
      {
        if (v166 >= *(v164 + 16))
        {
          __break(1u);
          goto LABEL_377;
        }

        sub_1E47A1524(v167, &v232);
        sub_1E47B488C(&v232, v231);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        ++v166;
        v167 += 40;
        if (v165 == v166)
        {
          goto LABEL_313;
        }
      }

      v215 = v28;
      v216 = v72;

      swift_beginAccess();
      sub_1E47AC06C(v166, &v232);
      __swift_destroy_boxed_opaque_existential_1(&v232);
      swift_endAccess();
      v7 = v225[5];
      v228 = sub_1E47AFE3C();
      v218 = v228 >> 62;
      if (v228 >> 62)
      {
        j = sub_1E4878F0C();
        if (j)
        {
          goto LABEL_330;
        }
      }

      else
      {
        j = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (j)
        {
LABEL_330:
          v168 = 0;
          v229 = v228 & 0xC000000000000001;
          v226 = v228 & 0xFFFFFFFFFFFFFF8;
          v224 = v228 + 32;
          while (1)
          {
            if (v229)
            {
              v169 = MEMORY[0x1E6919650](v168, v228);
            }

            else
            {
              if (v168 >= *(v226 + 16))
              {
                goto LABEL_381;
              }

              v169 = *(v224 + 8 * v168);
            }

            v81 = __OFADD__(v168++, 1);
            if (v81)
            {
              break;
            }

            v170 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
            swift_beginAccess();
            v171 = *(v169 + v170);
            v172 = *(v171 + 16);
            if (v172)
            {
              v173 = v171 + 32;

              v174 = 0;
              v175 = 0.0;
              do
              {
                sub_1E47A1524(v173, &v232);
                v178 = v233;
                v179 = v234;
                __swift_project_boxed_opaque_existential_0(&v232, v233);
                if ((*(v179 + 16))(v178, v179) > 0.0)
                {
                  v81 = __OFADD__(v174++, 1);
                  if (v81)
                  {
                    goto LABEL_374;
                  }
                }

                v176 = v233;
                v177 = v234;
                __swift_project_boxed_opaque_existential_0(&v232, v233);
                v175 = v175 + (*(v177 + 16))(v176, v177);
                __swift_destroy_boxed_opaque_existential_1(&v232);
                v173 += 40;
                --v172;
              }

              while (v172);
            }

            else
            {
              v174 = 0;
              v175 = 0.0;
            }

            if (__OFSUB__(v174, 1))
            {
              goto LABEL_380;
            }

            v180 = *(v169 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

            v7 = v7 + v175 + v180 * ((v174 - 1) & ~((v174 - 1) >> 63));
            if (v168 == j)
            {
              goto LABEL_347;
            }
          }

          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
          break;
        }
      }

LABEL_347:
      if (v218)
      {
        v181 = sub_1E4878F0C();
      }

      else
      {
        v181 = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v181, 1))
      {
        goto LABEL_384;
      }

      v28 = v215;
      v72 = v216;
      i = v211;
      if (v7 + v225[7] * ((v181 - 1) & ~((v181 - 1) >> 63)) <= a7)
      {
LABEL_375:

        goto LABEL_222;
      }

LABEL_314:
      if (v220 == v219)
      {
        goto LABEL_386;
      }
    }

    __break(1u);
LABEL_384:
    __break(1u);
  }

LABEL_386:

  if (v210 - 10 >= 7)
  {
LABEL_393:

LABEL_394:
    if ((sub_1E47B96D8(0, &v235, a7) & 1) == 0)
    {
      sub_1E47B7960(0, &v235, 1, 1, 0, a7);
    }

LABEL_223:
    v126 = sub_1E47AFE3C();

    v213(v221, v222);
    *(v225 + 4) = v126;
    v127 = v225;

    return v127;
  }

  v184 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  v185 = v217;
  swift_beginAccess();
  v186 = *(v185 + v184);
  v187 = *(v186 + 16);

  if (!v187)
  {
LABEL_392:

    goto LABEL_393;
  }

  v188 = 0;
  v189 = v186 + 32;
  while (1)
  {
    if (v188 >= *(v186 + 16))
    {
LABEL_422:
      __break(1u);
LABEL_423:
      sub_1E487903C();
      __break(1u);
      goto LABEL_424;
    }

    sub_1E47A1524(v189, &v232);
    sub_1E47B488C(&v232, v231);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
    type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v188;
    v189 += 40;
    if (v187 == v188)
    {
      goto LABEL_392;
    }
  }

  swift_beginAccess();
  sub_1E47AC06C(v188, &v232);
  __swift_destroy_boxed_opaque_existential_1(&v232);
  swift_endAccess();
  v7 = v225[5];
  v228 = sub_1E47AFE3C();
  v224 = v228 >> 62;
  if (v228 >> 62)
  {
    goto LABEL_427;
  }

  for (j = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1E4878F0C())
  {
    v190 = 0;
    v229 = v228 & 0xC000000000000001;
    v226 = v228 + 32;
    v227 = (v228 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v229)
      {
        v191 = MEMORY[0x1E6919650](v190, v228);
      }

      else
      {
        if (v190 >= v227[2])
        {
          goto LABEL_426;
        }

        v191 = *(v226 + 8 * v190);
      }

      v81 = __OFADD__(v190++, 1);
      if (v81)
      {
        break;
      }

      v192 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v193 = *(v191 + v192);
      v194 = *(v193 + 16);
      if (v194)
      {
        v195 = v193 + 32;

        v196 = 0;
        v197 = 0.0;
        do
        {
          sub_1E47A1524(v195, &v232);
          v200 = v233;
          v201 = v234;
          __swift_project_boxed_opaque_existential_0(&v232, v233);
          if ((*(v201 + 16))(v200, v201) > 0.0)
          {
            v81 = __OFADD__(v196++, 1);
            if (v81)
            {
              __break(1u);
              goto LABEL_422;
            }
          }

          v198 = v233;
          v199 = v234;
          __swift_project_boxed_opaque_existential_0(&v232, v233);
          v197 = v197 + (*(v199 + 16))(v198, v199);
          __swift_destroy_boxed_opaque_existential_1(&v232);
          v195 += 40;
          --v194;
        }

        while (v194);
      }

      else
      {
        v196 = 0;
        v197 = 0.0;
      }

      if (__OFSUB__(v196, 1))
      {
        goto LABEL_425;
      }

      v202 = *(v191 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v7 = v7 + v197 + v202 * ((v196 - 1) & ~((v196 - 1) >> 63));
      if (v190 == j)
      {
        goto LABEL_415;
      }
    }

LABEL_424:
    __break(1u);
LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
LABEL_427:
    ;
  }

LABEL_415:
  if (v224)
  {
    v203 = sub_1E4878F0C();
  }

  else
  {
    v203 = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!__OFSUB__(v203, 1))
  {
    if (v7 + v225[7] * ((v203 - 1) & ~((v203 - 1) >> 63)) > a7)
    {
      goto LABEL_394;
    }

    goto LABEL_223;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WideXMoreView(uint64_t a1)
{
  result = qword_1EE2B3D08;
  if (!qword_1EE2B3D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47BBE98(uint64_t a1)
{
  sub_1E47BBFDC(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E47BBFDC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      sub_1E47BBFDC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E47BBFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47BC05C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);

  if ((v6 & 1) == 0)
  {
    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1E47BC19C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideXMoreView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47BC3A4()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v16 = *(*v0 + 16);
  if (v16)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E47BD004(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];

      if ((v12 & 0xFE) == 6)
      {
        sub_1E4770850(v6, v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v9 + 16) + 1, 1);
          v9 = v19;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E4858038((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        result = sub_1E4770850(v17, v9 + v10 + v15 * v11);
      }

      else
      {
        result = sub_1E47710AC(v6);
      }

      if (v16 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E47BC600()
{
  v1 = *(*v0 + 16);
  v2 = *(sub_1E47BC3A4() + 16);

  v3 = *(sub_1E47BC3A4() + 16);

  v4 = v1 - v2;
  if (v1 != v2 || v3 == 0)
  {
    v6 = __OFADD__(v4, v3);
    v3 += v4;
    if (v6)
    {
      __break(1u);
    }

    else if (qword_1EE2B4848 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1E487A7E0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v3;
  v10 = sub_1E4878BAC();

  return v10;
}

uint64_t sub_1E47BC7EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1E47BC05C() + 72);

  *a1 = sub_1E4877F6C();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C560, &qword_1E487D9A8);
  sub_1E47BC910(v1, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_1E487815C();
  type metadata accessor for WideXMoreView(0);
  sub_1E4877B0C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C568, &qword_1E487D9B0) + 36);
  *v13 = v3;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(v3) = sub_1E487813C();
  sub_1E47BC05C();

  sub_1E4877B0C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C570, &qword_1E487D9B8);
  v23 = a1 + *(result + 36);
  *v23 = v3;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_1E47BC910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1E4877B3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - v10;
  sub_1E4878D2C();
  v39[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(sub_1E47BC05C() + 104);

  *v11 = sub_1E4877F6C();
  *(v11 + 1) = v12;
  v11[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0);
  v13 = *a1;
  sub_1E47BC19C(v6);
  v14 = sub_1E486B590(v13, 5, v6);
  (*(v4 + 8))(v6, v3);
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8, MEMORY[0x1E69E6338]);
  sub_1E47BCF54(qword_1EE2B58D8, type metadata accessor for ColorBarView, &unk_1E487B2D8);
  sub_1E47BCF54(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling, &unk_1E487B328);
  sub_1E487886C();

  v42 = sub_1E47BC600();
  v43 = v15;
  sub_1E477A374(v42, v15, v16);
  v17 = sub_1E487848C();
  v19 = v18;
  v21 = v20;
  sub_1E48786FC();
  v22 = sub_1E48783FC();
  v24 = v23;
  v26 = v25;
  v39[0] = v11;

  sub_1E477A3C8(v17, v19, v21 & 1);

  type metadata accessor for WideXMoreView(0);
  v27 = sub_1E487842C();
  v29 = v28;
  LOBYTE(v19) = v30;
  v32 = v31;
  sub_1E477A3C8(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v34 = v39[0];
  v35 = v41;
  sub_1E4773850(v39[0], v41, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v36 = v40;
  sub_1E4773850(v35, v40, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C578, &qword_1E487D9F0) + 48);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v19 & 1;
  *(v37 + 24) = v32;
  *(v37 + 32) = KeyPath;
  *(v37 + 40) = 1;
  *(v37 + 48) = 0;
  sub_1E478B8E0(v27, v29, v19 & 1);

  sub_1E47BCF9C(v34);
  sub_1E477A3C8(v27, v29, v19 & 1);

  sub_1E47BCF9C(v35);
}

uint64_t sub_1E47BCE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47BD004(a1, a2, type metadata accessor for ColorBarView.Styling);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for ColorBarView(0);
  *(a2 + *(v5 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();

  v8 = a2 + *(v5 + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1E47BCF54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47BCF9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47BD004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47BD09C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E47BD120()
{
  result = qword_1EE2B1478;
  if (!qword_1EE2B1478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C580, &qword_1E487DA50);
    v3 = sub_1E4773680(&qword_1EE2B0F78, &qword_1ECF7C588, qword_1E487DA58, MEMORY[0x1E6981800]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1478);
  }

  return result;
}

uint64_t type metadata accessor for WideEventDetailsView(uint64_t a1)
{
  result = qword_1EE2B2778;
  if (!qword_1EE2B2778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47BD24C(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CellDisplayContext(319);
    if (v2 <= 0x3F)
    {
      sub_1E47BD3A0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v3 <= 0x3F)
      {
        sub_1E47BD3A0(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v4 <= 0x3F)
        {
          sub_1E47BD3A0(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v5 <= 0x3F)
          {
            sub_1E47BD3A0(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
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

void sub_1E47BD3A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E47BD410@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47BD618@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47BD820@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideEventDetailsView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47BDA28()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideEventDetailsView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47BDB78()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideEventDetailsView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 136);

  return v10;
}

uint64_t sub_1E47BDCDC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideEventDetailsView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 128);

  return v10;
}

void sub_1E47BDE40(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v69 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v62 - v5;
  v63 = sub_1E487757C();
  v6 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  isEscapingClosureAtFileLocation = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487753C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v62 - v16);
  sub_1E47BD410((&v62 - v16));
  v18 = type metadata accessor for Event(0);
  v20 = *(v18 + 20);
  v19 = *(v18 + 24);
  v67 = a1;
  v64 = v19;
  v21 = sub_1E48774CC();
  v24 = *(v12 + 8);
  v23 = v12 + 8;
  v22 = v24;
  v24(v17, v11);
  if ((v21 & 1) == 0)
  {
LABEL_5:
    v62 = v20;
    v36 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E47BD410(v17);
    v37 = sub_1E487748C();
    v22(v17, v11);
    [v36 setCalendar_];

    sub_1E47BD410(v17);
    sub_1E487750C();
    v22(v17, v11);
    v38 = sub_1E487756C();
    v6[1](isEscapingClosureAtFileLocation, v63);
    [v36 setTimeZone_];

    sub_1E47BD410(v15);
    v39 = v65;
    sub_1E48774EC();
    v22(v15, v11);
    v40 = sub_1E487744C();
    v41 = *(v40 - 8);
    v42 = 0;
    if ((*(v41 + 48))(v39, 1, v40) != 1)
    {
      v42 = sub_1E48773DC();
      (*(v41 + 8))(v39, v40);
    }

    [v36 setLocale_];

    v43 = sub_1E4878B9C();
    [v36 setLocalizedDateFormatFromTemplate_];

    goto LABEL_10;
  }

  v62 = v22;
  v63 = v23;
  v65 = v11;
  sub_1E47BD410(v17);
  sub_1E47BDA28();

  v22 = sub_1E48781CC();

  v25 = objc_opt_self();
  if (v66)
  {
    v26 = sub_1E48772BC();
    v27 = sub_1E487748C();
    v28 = [v25 timeAttributedTextWithDate:v26 calendar:v27 font:0 options:16];

    v29 = [v28 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v30 = v69;
    v31 = sub_1E48771AC();
    aBlock = v22;
    sub_1E47C4180(v31, v32, v33);

    sub_1E48771BC();
    v34 = *MEMORY[0x1E6993360];
    v20 = [v28 length];
    v35 = swift_allocObject();
    *(v35 + 16) = v30;
    *(v35 + 24) = v22;
    v15 = swift_allocObject();
    v15[2] = sub_1E47C43D8;
    v15[3] = v35;
    v74 = sub_1E47C43DC;
    v75 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1E48373C0;
    v73 = &block_descriptor_70;
    v6 = _Block_copy(&aBlock);

    [v28 enumerateAttribute:v34 inRange:0 options:v20 usingBlock:{0, v6}];

    _Block_release(v6);

    v62(v17, v65);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  v44 = sub_1E48772BC();
  v45 = sub_1E487748C();
  v46 = [v25 timeAttributedTextWithDate:v44 calendar:v45 font:0 options:16];

  v47 = [v46 string];
  sub_1E4878BDC();

  sub_1E48771FC();
  v48 = v69;
  v49 = sub_1E48771AC();
  aBlock = v22;
  sub_1E47C4180(v49, v50, v51);

  sub_1E48771BC();
  v52 = *MEMORY[0x1E6993360];
  v36 = [v46 length];
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  *(v53 + 24) = v22;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E47C43D8;
  *(v54 + 24) = v53;
  v74 = sub_1E47C43DC;
  v75 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = sub_1E48373C0;
  v73 = &block_descriptor_81;
  v55 = _Block_copy(&aBlock);

  [v46 enumerateAttribute:v52 inRange:0 options:v36 usingBlock:{0, v55}];

  _Block_release(v55);

  v62(v17, v65);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if ((v46 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v56 = sub_1E48772BC();
  v57 = [v36 stringFromDate_];

  sub_1E4878BDC();
  sub_1E48771FC();
  sub_1E48771AC();
  sub_1E47BDA28();

  v58 = sub_1E48781CC();

  aBlock = v58;
  sub_1E47C4180(v59, v60, v61);
  sub_1E48771BC();
}

uint64_t sub_1E47BE840@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487753C();
  v6 = *(v5 - 8);
  v71 = v5;
  v72 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E487732C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v64 - v17;
  type metadata accessor for Event(0);
  v73 = v18;
  sub_1E48772AC();
  v19 = type metadata accessor for WideEventDetailsView(0);
  sub_1E47C41FC(v1 + *(v19 + 20), v11, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = v13;
    v68 = v12;
    v69 = v8;
    sub_1E47BD410(v8);
    sub_1E47BDA28();

    v20 = sub_1E48781CC();

    v21 = objc_opt_self();
    v22 = sub_1E48772BC();
    v23 = sub_1E487748C();
    v24 = [v21 timeAttributedTextWithDate:v22 calendar:v23 font:0 options:16];

    v25 = [v24 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v26 = v70;
    v27 = sub_1E48771AC();
    aBlock = v20;
    sub_1E47C4180(v27, v28, v29);

    sub_1E48771BC();
    v30 = *MEMORY[0x1E6993360];
    v31 = [v24 length];
    v32 = swift_allocObject();
    *(v32 + 16) = v26;
    *(v32 + 24) = v20;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1E47C41D4;
    *(v33 + 24) = v32;
    v78 = sub_1E47C41DC;
    v79 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1E48373C0;
    v77 = &block_descriptor_0;
    v34 = _Block_copy(&aBlock);

    [v24 enumerateAttribute:v30 inRange:0 options:v31 usingBlock:{0, v34}];

    _Block_release(v34);

    (*(v72 + 8))(v69, v71);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return (*(v67 + 8))(v73, v68);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v66 = v4;
  v37 = v70;
  (*(v13 + 32))(v16, v11, v12);
  sub_1E47BD410(v8);
  v38 = sub_1E48774CC();
  v39 = v12;
  v41 = v72 + 8;
  v40 = *(v72 + 8);
  v40(v8, v71);
  v44 = *(v13 + 8);
  v42 = v13 + 8;
  v43 = v44;
  v44(v16, v39);
  if (v38)
  {
    v65 = v43;
    v67 = v42;
    v68 = v39;
    v69 = v8;
    sub_1E47BD410(v8);
    sub_1E47BDA28();
    v72 = v41;

    v45 = sub_1E48781CC();

    v46 = objc_opt_self();
    v47 = sub_1E48772BC();
    v48 = sub_1E487748C();
    v49 = [v46 timeAttributedTextWithDate:v47 calendar:v48 font:0 options:16];

    v50 = [v49 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v51 = v37;
    v52 = sub_1E48771AC();
    aBlock = v45;
    sub_1E47C4180(v52, v53, v54);

    sub_1E48771BC();
    v55 = *MEMORY[0x1E6993360];
    v56 = [v49 length];
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    *(v57 + 24) = v45;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1E47C43D8;
    *(v58 + 24) = v57;
    v78 = sub_1E47C43DC;
    v79 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1E48373C0;
    v77 = &block_descriptor_36;
    v59 = _Block_copy(&aBlock);

    [v49 enumerateAttribute:v55 inRange:0 options:v56 usingBlock:{0, v59}];

    _Block_release(v59);

    v40(v69, v71);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if ((v46 & 1) == 0)
    {
      return v65(v73, v68);
    }

    goto LABEL_10;
  }

  sub_1E487712C();
  sub_1E47BDA28();

  v60 = sub_1E48781CC();

  aBlock = v60;
  sub_1E47C4180(v61, v62, v63);
  sub_1E48771BC();
  return v43(v73, v39);
}

void sub_1E47BF0F0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E487753C();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487732C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WideEventDetailsView(0);
  sub_1E47C41FC(v2 + *(v17 + 20), v12, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E47BDE40(v2, 0, a1);
    return;
  }

  v39[0] = v6;
  v40 = a1;
  (*(v14 + 32))(v16, v12, v13);
  sub_1E47BD410(v9);
  type metadata accessor for Event(0);
  v18 = sub_1E48774CC();
  v19 = *(v7 + 8);
  v39[1] = v7 + 8;
  v19(v9, v41);
  isEscapingClosureAtFileLocation = v19;
  if (v18)
  {
    (*(v14 + 8))(v16, v13);
    sub_1E47BD410(v9);
    sub_1E47BDA28();

    v13 = sub_1E48781CC();

    v21 = objc_opt_self();
    v22 = sub_1E48772BC();
    v23 = sub_1E487748C();
    v24 = [v21 timeAttributedTextWithDate:v22 calendar:v23 font:0 options:16];

    v25 = [v24 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v26 = v40;
    v27 = sub_1E48771AC();
    aBlock[0] = v13;
    sub_1E47C4180(v27, v28, v29);

    sub_1E48771BC();
    v30 = *MEMORY[0x1E6993360];
    v16 = [v24 length];
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    *(v31 + 24) = v13;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1E47C43D8;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1E47C43DC;
    v43 = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E48373C0;
    aBlock[3] = &block_descriptor_92;
    v33 = _Block_copy(aBlock);
    v14 = v43;

    [v24 enumerateAttribute:v30 inRange:0 options:v16 usingBlock:{0, v33}];

    _Block_release(v33);

    (isEscapingClosureAtFileLocation)(v9, v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_1E47BD410(v9);
  v34 = sub_1E48774CC();
  (isEscapingClosureAtFileLocation)(v9, v41);
  (*(v14 + 8))(v16, v13);
  if (v34)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_1E48771EC();
  sub_1E48771FC();
  sub_1E48771AC();
  sub_1E47BDA28();

  v35 = sub_1E48781CC();

  aBlock[0] = v35;
  sub_1E47C4180(v36, v37, v38);
  sub_1E48771BC();
}

void sub_1E47BF804(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E487753C();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487732C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Event(0);
  LODWORD(v45) = sub_1E48772EC();
  v15 = type metadata accessor for WideEventDetailsView(0);
  sub_1E47C41FC(v2 + *(v15 + 20), v10, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E47BDE40(v2, 1, v46);
    return;
  }

  v42 = v12;
  v43 = v11;
  (*(v12 + 32))(v14, v10, v11);
  sub_1E47BD410(v7);
  v16 = sub_1E487748C();
  v17 = *(v5 + 8);
  v17(v7, v47);
  v18 = sub_1E48772BC();
  v19 = sub_1E48772BC();
  v20 = [v16 cal:v18 isMultidayEventForUIWithStartDate:v19 endDate:?];

  v41[0] = v17;
  v41[1] = v5 + 8;
  if (v20)
  {
    sub_1E47BD410(v7);
    v21 = sub_1E48774CC();
    v17(v7, v47);
    v22 = v46;
    v23 = v7;
    if (!(v45 & 1 | ((v21 & 1) == 0)))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1E487712C();
    sub_1E47BDA28();

    v37 = sub_1E48781CC();

    aBlock[0] = v37;
    sub_1E47C4180(v38, v39, v40);
    sub_1E48771BC();
    (*(v42 + 8))(v14, v43);
    return;
  }

  v22 = v46;
  v23 = v7;
  if (v45)
  {
    goto LABEL_8;
  }

LABEL_5:
  v45 = v14;
  sub_1E47BD410(v23);
  sub_1E47BDA28();

  v24 = sub_1E48781CC();

  v25 = objc_opt_self();
  v26 = sub_1E48772BC();
  v27 = sub_1E487748C();
  v28 = [v25 timeAttributedTextWithDate:v26 calendar:v27 font:0 options:16];

  v29 = [v28 string];
  sub_1E4878BDC();

  sub_1E48771FC();
  v30 = sub_1E48771AC();
  aBlock[0] = v24;
  sub_1E47C4180(v30, v31, v32);

  sub_1E48771BC();
  v46 = *MEMORY[0x1E6993360];
  v33 = [v28 length];
  v34 = swift_allocObject();
  *(v34 + 16) = v22;
  *(v34 + 24) = v24;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E47C43D8;
  *(v35 + 24) = v34;
  aBlock[4] = sub_1E47C43DC;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E48373C0;
  aBlock[3] = &block_descriptor_59_0;
  v36 = _Block_copy(aBlock);

  [v28 enumerateAttribute:v46 inRange:0 options:v33 usingBlock:{0, v36}];

  _Block_release(v36);

  (v41[0])(v23, v47);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    (*(v42 + 8))(v45, v43);
  }
}

uint64_t sub_1E47BFE5C()
{
  v1 = sub_1E487753C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v29 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487732C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = *(type metadata accessor for WideEventDetailsView(0) + 20);
  v30 = v0;
  sub_1E47C41FC(v0 + v17, v6, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = 1;
  }

  else
  {
    v19 = v2;
    v20 = v1;
    v21 = *(v8 + 32);
    v21(v10, v6, v7);
    v21(v16, v10, v7);
    v1 = v20;
    v2 = v19;
    v18 = 0;
  }

  v22 = *(v8 + 56);
  v22(v16, v18, 1, v7);
  v23 = type metadata accessor for Event(0);
  v24 = *(v23 + 20);
  v25 = v30;
  (*(v8 + 16))(v14, v30 + *(v23 + 24), v7);
  v22(v14, 0, 1, v7);
  v26 = v29;
  sub_1E47BD410(v29);
  v27 = sub_1E486D148(v25 + v24, v14, v16, v26);
  (*(v2 + 8))(v26, v1);
  sub_1E47738B8(v14, &unk_1ECF7C880, &qword_1E4882710);
  sub_1E47738B8(v16, &unk_1ECF7C880, &qword_1E4882710);
  return v27;
}

uint64_t sub_1E47C01C8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v35 - v3;
  v4 = sub_1E487725C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4877CCC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = v1;
  sub_1E47BD618((&v35 - v14));
  sub_1E4877CAC();
  sub_1E47C42C4(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v17 = sub_1E4878EAC();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v15, v9);
  if (v17)
  {
    return (*(v5 + 56))(v38, 1, 1, v4);
  }

  v20 = v5;
  v21 = v38;
  v22 = type metadata accessor for WideEventDetailsView(0);
  sub_1E47C41FC(v16 + *(v22 + 20), v8, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = v16;
  if (EnumCaseMultiPayload)
  {
    v25 = v37;
    if (EnumCaseMultiPayload != 1)
    {
      v33 = type metadata accessor for Event(0);
      sub_1E4773850(v24 + *(v33 + 44), v21, &unk_1ECF7B688, &qword_1E487C160);
      v34 = sub_1E487732C();
      return (*(*(v34 - 8) + 8))(v8, v34);
    }

    v26 = *v8;
  }

  else
  {
    v26 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C408, &qword_1E487DDD0) + 48)];
    v27 = sub_1E487732C();
    (*(*(v27 - 8) + 8))(v8, v27);
    v25 = v37;
  }

  v28 = type metadata accessor for Event(0);
  sub_1E4773850(v24 + *(v28 + 44), v25, &unk_1ECF7B688, &qword_1E487C160);
  v29 = v20;
  v30 = v4;
  if ((*(v20 + 48))(v25, 1, v4) == 1)
  {
    sub_1E47738B8(v25, &unk_1ECF7B688, &qword_1E487C160);
  }

  else
  {
    v31 = *(v20 + 32);
    v32 = v35;
    v31(v35, v25, v30);
    if (v26)
    {
      v31(v21, v32, v30);
      return (*(v29 + 56))(v21, 0, 1, v30);
    }

    (*(v29 + 8))(v32, v30);
  }

  return (*(v29 + 56))(v21, 1, 1, v30);
}

uint64_t sub_1E47C068C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877B3C();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Event(0);
  v35 = sub_1E486DF20(*(v1 + *(v5 + 28)));
  v36 = v6;
  sub_1E477A374(v35, v6, v7);
  v8 = sub_1E487848C();
  v10 = v9;
  v12 = v11;
  v13 = sub_1E48783EC();
  v15 = v14;
  LOBYTE(v5) = v16;
  sub_1E477A3C8(v8, v10, v12 & 1);

  sub_1E47BDB78();
  v17 = sub_1E487842C();
  v19 = v18;
  v21 = v20;
  v31[1] = v22;

  sub_1E477A3C8(v13, v15, v5 & 1);

  v23 = v32;
  sub_1E47BD820(v32);
  sub_1E476F0D0(v1, v23);
  sub_1E48785FC();
  (*(v33 + 8))(v23, v34);
  v24 = sub_1E48783FC();
  v26 = v25;
  LOBYTE(v5) = v27;
  v29 = v28;

  sub_1E477A3C8(v17, v19, v21 & 1);

  result = swift_getKeyPath();
  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1E47C08DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v48);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for EventBackgroundView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5C0, &qword_1E487DB18);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5C8, &qword_1E487DB20);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v48 - v14;
  sub_1E4878D2C();
  v50 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v13 = sub_1E4877F5C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5D0, &qword_1E487DB28);
  sub_1E47C0E80(a1, &v13[*(v16 + 44)]);
  sub_1E47BDA28();

  v17 = sub_1E487814C();
  sub_1E4877B0C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5D8, &qword_1E487DB30) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_1E487818C();
  sub_1E47BDA28();

  sub_1E4877B0C();
  v28 = &v13[*(v11 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_1E47C41FC(a1, v7, type metadata accessor for Event);
  v33 = type metadata accessor for Event(0);
  (*(*(v33 - 8) + 56))(v7, 0, 1, v33);
  v34 = type metadata accessor for WideEventDetailsView(0);
  sub_1E47C41FC(a1 + *(v34 + 20), v4, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v36 = sub_1E487732C();
    (*(*(v36 - 8) + 8))(v4, v36);
  }

  else
  {
    sub_1E47C4264(v4, type metadata accessor for CellDisplayContext);
  }

  v37 = EnumCaseMultiPayload != 2;
  KeyPath = swift_getKeyPath();
  *&v10[v8[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v39 = swift_getKeyPath();
  sub_1E477372C(v7, v10, &qword_1ECF7B950, &unk_1E487AE90);
  *&v10[v8[5]] = 3;
  v10[v8[6]] = v37;
  v40 = &v10[v8[7]];
  *v40 = KeyPath;
  v40[8] = 0;
  v41 = &v10[v8[11]];
  *v41 = v39;
  v41[8] = 0;
  v42 = sub_1E487889C();
  v44 = v43;
  v45 = &v15[*(v49 + 36)];
  sub_1E47C411C(v10, v45);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v46 = v42;
  v46[1] = v44;
  sub_1E477372C(v13, v15, &qword_1ECF7C5C0, &qword_1E487DB18);
  sub_1E477372C(v15, v51, &qword_1ECF7C5C8, &qword_1E487DB20);
}

uint64_t sub_1E47C0E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5E0, &qword_1E487DC40);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  v8 = sub_1E4877B3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ColorBarView(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  sub_1E4878D2C();
  v38 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47BD820(v11);
  v18 = sub_1E4770A7C(a1, v11);
  (*(v9 + 8))(v11, v8);
  type metadata accessor for ColorBarView.Styling(0);
  sub_1E487735C();
  v17[48] = 1;
  *v17 = v18;
  *(v17 + 1) = 0;
  v17[16] = 1;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  *(v17 + 3) = 3;
  *&v17[*(v12 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v20 = &v17[*(v12 + 24)];
  *v20 = KeyPath;
  v20[8] = 0;
  sub_1E47BDA28();

  sub_1E487889C();
  sub_1E4877BCC();
  v36 = v46;
  v37 = v44;
  v34 = v49;
  v35 = v48;
  v43 = 1;
  v42 = v45;
  v41 = v47;
  *v7 = sub_1E4877FBC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5E8, &qword_1E487DC48);
  sub_1E47C12E8(a1, &v7[*(v21 + 44)]);
  sub_1E47C41FC(v17, v15, type metadata accessor for ColorBarView);
  v22 = v43;
  v23 = v7;
  v24 = v15;
  v25 = v42;
  v26 = v41;
  v27 = v40;
  sub_1E4773850(v23, v40, &qword_1ECF7C5E0, &qword_1E487DC40);
  v28 = v39;
  sub_1E47C41FC(v24, v39, type metadata accessor for ColorBarView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5F0, &qword_1E487DC50);
  v30 = v28 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = v22;
  v31 = v36;
  *(v30 + 16) = v37;
  *(v30 + 24) = v25;
  *(v30 + 32) = v31;
  *(v30 + 40) = v26;
  v32 = v34;
  *(v30 + 48) = v35;
  *(v30 + 56) = v32;
  sub_1E4773850(v27, v28 + *(v29 + 64), &qword_1ECF7C5E0, &qword_1E487DC40);
  sub_1E47738B8(v23, &qword_1ECF7C5E0, &qword_1E487DC40);
  sub_1E47C4264(v17, type metadata accessor for ColorBarView);
  sub_1E47738B8(v27, &qword_1ECF7C5E0, &qword_1E487DC40);
  sub_1E47C4264(v24, type metadata accessor for ColorBarView);
}

uint64_t sub_1E47C12E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5F8, &qword_1E487DC58);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v40 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C600, &qword_1E487DC60);
  v47 = *(v49 - 8);
  v5 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C608, &qword_1E487DC68);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = (&v40 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C610, &qword_1E487DC70);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C618, &qword_1E487DC78);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C620, &qword_1E487DC80);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v51 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - v22;
  sub_1E4878D2C();
  v43 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for Event(0) + 28)) <= 0.0)
  {
    (*(v16 + 56))(v23, 1, 1, v15);
  }

  else
  {
    *v14 = sub_1E4877F4C();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C640, &qword_1E487DCA0);
    sub_1E47C1984(a1, &v14[*(v24 + 44)]);
    sub_1E4773680(&qword_1ECF7C648, &qword_1ECF7C610, &qword_1E487DC70, MEMORY[0x1E6981800]);
    sub_1E48784AC();
    sub_1E47738B8(v14, &qword_1ECF7C610, &qword_1E487DC70);
    (*(v16 + 32))(v23, v18, v15);
    (*(v16 + 56))(v23, 0, 1, v15);
  }

  v41 = v23;
  v25 = sub_1E4877F4C();
  v26 = v42;
  *v42 = v25;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C628, &qword_1E487DC88);
  sub_1E47C2470(a1, v26 + *(v27 + 44));
  *v4 = sub_1E4877F4C();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C630, &qword_1E487DC90);
  sub_1E47C2F24(a1, &v4[*(v28 + 44)]);
  sub_1E4773680(&qword_1EE2B1008, &qword_1ECF7C5F8, &qword_1E487DC58, MEMORY[0x1E6981800]);
  v29 = v44;
  sub_1E48784AC();
  sub_1E47738B8(v4, &qword_1ECF7C5F8, &qword_1E487DC58);
  v30 = v51;
  sub_1E4773850(v23, v51, &qword_1ECF7C620, &qword_1E487DC80);
  v31 = v46;
  sub_1E4773850(v26, v46, &qword_1ECF7C608, &qword_1E487DC68);
  v33 = v47;
  v32 = v48;
  v34 = *(v47 + 16);
  v35 = v49;
  v34(v48, v29, v49);
  v36 = v50;
  sub_1E4773850(v30, v50, &qword_1ECF7C620, &qword_1E487DC80);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C638, &qword_1E487DC98);
  sub_1E4773850(v31, v36 + *(v37 + 48), &qword_1ECF7C608, &qword_1E487DC68);
  v34((v36 + *(v37 + 64)), v32, v35);
  v38 = *(v33 + 8);
  v38(v29, v35);
  sub_1E47738B8(v26, &qword_1ECF7C608, &qword_1E487DC68);
  sub_1E47738B8(v41, &qword_1ECF7C620, &qword_1E487DC80);
  v38(v32, v35);
  sub_1E47738B8(v31, &qword_1ECF7C608, &qword_1E487DC68);
  sub_1E47738B8(v51, &qword_1ECF7C620, &qword_1E487DC80);
}

uint64_t sub_1E47C1984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1E4877B3C();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C650, &qword_1E487DCA8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  sub_1E4878D2C();
  v42 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(sub_1E47BDA28() + 96);

  *v12 = sub_1E4877F6C();
  *(v12 + 1) = v13;
  v12[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C658, &qword_1E487DCB0);
  sub_1E47C1DA0(a1, &v12[*(v14 + 44)]);
  sub_1E47BE840(v7);
  v15 = sub_1E487847C();
  v17 = v16;
  v19 = v18;
  type metadata accessor for Event(0);
  v20 = sub_1E48783EC();
  v22 = v21;
  LOBYTE(v13) = v23;
  sub_1E477A3C8(v15, v17, v19 & 1);

  v24 = v39;
  sub_1E47BD820(v39);
  sub_1E476F0D0(a1, v24);
  sub_1E48785FC();
  (*(v40 + 8))(v24, v41);
  v25 = sub_1E48783FC();
  v27 = v26;
  LODWORD(v41) = v28;
  v30 = v29;

  sub_1E477A3C8(v20, v22, v13 & 1);

  KeyPath = swift_getKeyPath();
  v32 = v43;
  sub_1E4773850(v12, v43, &qword_1ECF7C650, &qword_1E487DCA8);
  v33 = v44;
  sub_1E4773850(v32, v44, &qword_1ECF7C650, &qword_1E487DCA8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C660, &qword_1E487DCE8);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v33 + *(v34 + 64);
  *v36 = v25;
  *(v36 + 8) = v27;
  v37 = v41;
  LOBYTE(v33) = v41 & 1;
  *(v36 + 16) = v41 & 1;
  *(v36 + 24) = v30;
  *(v36 + 32) = KeyPath;
  *(v36 + 40) = 1;
  *(v36 + 48) = 0;
  sub_1E478B8E0(v25, v27, v37 & 1);

  sub_1E47738B8(v12, &qword_1ECF7C650, &qword_1E487DCA8);
  sub_1E477A3C8(v25, v27, v33);

  sub_1E47738B8(v32, &qword_1ECF7C650, &qword_1E487DCA8);
}

uint64_t sub_1E47C1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1E4877B3C();
  v62 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v54 - v6);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  MEMORY[0x1EEE9AC00](v57);
  v9 = (&v54 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - v19;
  sub_1E4878D2C();
  v63 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for Event(0) + 28)) <= 0.0)
  {
    (*(v11 + 56))(v20, 1, 1, v10);
  }

  else
  {
    v55 = v10;
    v56 = v3;
    v21 = sub_1E487874C();
    v22 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v24 = *MEMORY[0x1E69816D0];
    v25 = sub_1E487877C();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    *v9 = v21;
    v26 = sub_1E47BDB78();
    KeyPath = swift_getKeyPath();
    v28 = (v9 + *(v57 + 36));
    *v28 = KeyPath;
    v28[1] = v26;
    sub_1E47BD820(v7);
    v29 = sub_1E476F0D0(a1, v7);
    v30 = v62;
    v31 = v58;
    v32 = v56;
    (*(v62 + 2))(v58, v7, v56);
    v33 = (*(v30 + 88))(v31, v32);
    if (v33 != *MEMORY[0x1E697DBC0] && v33 != *MEMORY[0x1E697DBB0])
    {
      (*(v30 + 8))(v31, v32);
    }

    CUIKOccurrenceLeadingIconAlphaScale();
    v34 = [v29 cuik_colorWithAlphaScaled_];

    v35 = sub_1E48785FC();
    (*(v30 + 8))(v7, v32);
    v36 = swift_getKeyPath();
    v37 = v60;
    sub_1E477372C(v9, v60, &qword_1ECF7B918, &unk_1E487AA60);
    v38 = v55;
    v39 = (v37 + *(v55 + 36));
    *v39 = v36;
    v39[1] = v35;
    v40 = v37;
    v41 = v59;
    sub_1E477372C(v40, v59, &qword_1ECF7B920, &unk_1E487DCF0);
    sub_1E477372C(v41, v20, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v11 + 56))(v20, 0, 1, v38);
  }

  v42 = v20;
  v61 = v20;
  sub_1E47C068C(v65);
  v43 = v65[0];
  v44 = v65[1];
  v45 = v66;
  v46 = v67;
  v47 = v68;
  v48 = v69;
  v49 = v70;
  sub_1E4773850(v42, v18, &qword_1ECF7B9D0, &qword_1E487AC00);
  v50 = v18;
  v62 = v18;
  v51 = v64;
  sub_1E4773850(v50, v64, &qword_1ECF7B9D0, &qword_1E487AC00);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C668, &qword_1E487DD00) + 48);
  *v52 = v43;
  *(v52 + 8) = v44;
  *(v52 + 16) = v45;
  *(v52 + 24) = v46;
  *(v52 + 32) = v47;
  *(v52 + 40) = v48;
  *(v52 + 48) = v49;
  sub_1E478B8E0(v43, v44, v45);

  sub_1E47738B8(v61, &qword_1ECF7B9D0, &qword_1E487AC00);
  sub_1E477A3C8(v43, v44, v45);

  sub_1E47738B8(v62, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47C2470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v97 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C680, &qword_1E4882590);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v93 - v8;
  v108 = sub_1E4877B3C();
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v98 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v102 = *(v103 - 8);
  v10 = MEMORY[0x1EEE9AC00](v103);
  v101 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F0, &qword_1E487D078);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v93 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F8, &qword_1E487DDC0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v100 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v93 - v20;
  sub_1E4878D2C();
  v99 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(a1 + *(type metadata accessor for Event(0) + 56));
  v107 = v21;
  if (v22 == 1)
  {
    v23 = sub_1E487874C();
    v24 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v26 = *MEMORY[0x1E69816D0];
    v27 = sub_1E487877C();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    *v16 = v23;
    v28 = sub_1E47BDCDC();
    KeyPath = swift_getKeyPath();
    v30 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v30 = KeyPath;
    v30[1] = v28;
    v31 = sub_1E487864C();
    v32 = swift_getKeyPath();
    v33 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v33 = v32;
    v33[1] = v31;
    LOBYTE(v31) = sub_1E487818C();
    sub_1E4877B0C();
    v34 = v16 + *(v13 + 36);
    *v34 = v31;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_1E477372C(v16, v21, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v14 + 56))(v21, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v21, 1, 1, v13);
  }

  *&v116 = sub_1E47CC708();
  *(&v116 + 1) = v39;
  sub_1E477A374(v116, v39, v40);
  v41 = sub_1E487848C();
  v43 = v42;
  v45 = v44;
  v96 = (v22 - 3) < 2;
  v46 = sub_1E48783EC();
  v48 = v47;
  v50 = v49;
  sub_1E477A3C8(v41, v43, v45 & 1);

  v51 = a1;
  sub_1E47BDCDC();
  v52 = sub_1E487842C();
  v94 = a1;
  v54 = v53;
  v56 = v55;

  sub_1E477A3C8(v46, v48, v50 & 1);

  v57 = v98;
  sub_1E47BD820(v98);
  sub_1E476EA20(v51, v57);
  v58 = *(v109 + 8);
  v109 += 8;
  v95 = v58;
  v58(v57, v108);
  v59 = sub_1E48783FC();
  v61 = v60;
  LOBYTE(v51) = v62;
  v64 = v63;

  sub_1E477A3C8(v52, v54, v56 & 1);

  v65 = swift_getKeyPath();
  *&v116 = v59;
  *(&v116 + 1) = v61;
  LOBYTE(v117) = v51 & 1;
  *(&v117 + 1) = v64;
  *&v118 = v65;
  *(&v118 + 1) = 1;
  LOBYTE(v119) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v59, v61, v51 & 1);

  v66 = v94;
  sub_1E47BF0F0(v97);
  v67 = sub_1E487847C();
  v69 = v68;
  v71 = v70;
  v72 = sub_1E48783EC();
  v74 = v73;
  LOBYTE(v61) = v75;
  v77 = v76;
  sub_1E477A3C8(v67, v69, v71 & 1);

  v78 = swift_getKeyPath();
  sub_1E47BD820(v57);
  v79 = sub_1E476EA20(v66, v57);
  v95(v57, v108);
  v80 = swift_getKeyPath();
  v122 = v61 & 1;
  v121 = 0;
  *&v111 = v72;
  *(&v111 + 1) = v74;
  LOBYTE(v112) = v61 & 1;
  *(&v112 + 1) = v77;
  *&v113 = v78;
  *(&v113 + 1) = 1;
  LOBYTE(v114) = 0;
  *(&v114 + 1) = v80;
  v115 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
  sub_1E479A240();
  v81 = v104;
  sub_1E487852C();
  v118 = v113;
  v119 = v114;
  v120 = v115;
  v116 = v111;
  v117 = v112;
  sub_1E47738B8(&v116, &qword_1ECF7C000, &unk_1E48825D0);
  v82 = v100;
  sub_1E4773850(v107, v100, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v83 = v102;
  v84 = *(v102 + 16);
  v85 = v101;
  v86 = v103;
  v84(v101, v110, v103);
  v87 = v105;
  sub_1E4773850(v81, v105, &qword_1ECF7C680, &qword_1E4882590);
  v88 = v106;
  sub_1E4773850(v82, v106, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C688, &qword_1E487DDC8);
  v84((v88 + v89[12]), v85, v86);
  v90 = v88 + v89[16];
  *v90 = 0;
  *(v90 + 8) = 1;
  sub_1E4773850(v87, v88 + v89[20], &qword_1ECF7C680, &qword_1E4882590);
  sub_1E47738B8(v81, &qword_1ECF7C680, &qword_1E4882590);
  v91 = *(v83 + 8);
  v91(v110, v86);
  sub_1E47738B8(v107, &qword_1ECF7C3F8, &qword_1E487DDC0);
  sub_1E47738B8(v87, &qword_1ECF7C680, &qword_1E4882590);
  v91(v85, v86);
  sub_1E47738B8(v82, &qword_1ECF7C3F8, &qword_1E487DDC0);
}

uint64_t sub_1E47C2F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C670, &qword_1E487F240);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - v9;
  v10 = sub_1E4877B3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for LocationView(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  sub_1E4878D2C();
  v58 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47C41FC(a1, &v18[v14[5]], type metadata accessor for Event);
  v19 = sub_1E47BDB78();
  sub_1E47BD820(v13);
  sub_1E476F0D0(a1, v13);
  v20 = sub_1E48785FC();
  v21 = *(v11 + 8);
  v54 = v11 + 8;
  KeyPath = v21;
  v21(v13, v10);
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v22 = a1;
  v23 = v14[11];
  *&v18[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v18[v14[6]] = v19;
  v18[v14[7]] = 0;
  *&v18[v14[8]] = v20;
  v18[v14[9]] = 1;
  v18[v14[10]] = 1;
  sub_1E47BF804(v5);
  v24 = sub_1E487847C();
  v26 = v25;
  v28 = v27;
  type metadata accessor for Event(0);
  v29 = sub_1E48783EC();
  v55 = v10;
  v31 = v30;
  v57 = v18;
  v33 = v32;
  sub_1E477A3C8(v24, v26, v28 & 1);

  sub_1E47BD820(v13);
  sub_1E476F0D0(v22, v13);
  sub_1E48785FC();
  KeyPath(v13, v55);
  v34 = sub_1E48783FC();
  v36 = v35;
  v55 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;

  sub_1E477A3C8(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v65 = v34;
  v66 = v36;
  LOBYTE(v22) = v24 & 1;
  v67 = v24 & 1;
  v68 = v39;
  v69 = KeyPath;
  v70 = 1;
  v71 = 0;
  v63 = sub_1E47BFE5C();
  v64 = v40;
  sub_1E477A374(v63, v40, v41);
  v42 = sub_1E487848C();
  v44 = v43;
  LOBYTE(v31) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v46 = v60;
  sub_1E487856C();
  sub_1E477A3C8(v42, v44, v31 & 1);

  sub_1E477A3C8(v34, v55, v22);

  v47 = v57;
  v48 = v59;
  sub_1E47C41FC(v57, v59, type metadata accessor for LocationView);
  v49 = v61;
  sub_1E4773850(v46, v61, &qword_1ECF7C670, &qword_1E487F240);
  v50 = v62;
  sub_1E47C41FC(v48, v62, type metadata accessor for LocationView);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C678, &unk_1E487DDA0);
  v52 = v50 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_1E4773850(v49, v50 + *(v51 + 64), &qword_1ECF7C670, &qword_1E487F240);
  sub_1E47738B8(v46, &qword_1ECF7C670, &qword_1E487F240);
  sub_1E47C4264(v47, type metadata accessor for LocationView);
  sub_1E47738B8(v49, &qword_1ECF7C670, &qword_1E487F240);
  sub_1E47C4264(v48, type metadata accessor for LocationView);
}

uint64_t sub_1E47C353C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C590, &qword_1E487DAD8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v33 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C598, &qword_1E487DAE0);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5A0, &qword_1E487DAE8);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v33 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5A8, &unk_1E487DAF0);
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_1E487725C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  sub_1E47C01C8(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E47738B8(v12, &unk_1ECF7B688, &qword_1E487C160);
    *v3 = sub_1E4877FBC();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5B0, &qword_1E487DB00);
    sub_1E47C08DC(v1, &v3[*(v20 + 44)]);
    v21 = type metadata accessor for Event(0);
    v40 = sub_1E47CC9E8(*(v1 + *(v21 + 56)));
    v41 = v22;
    sub_1E477A374(v40, v22, v23);
    v24 = sub_1E487848C();
    v26 = v25;
    v28 = v27;
    sub_1E47C3CB4();
    v29 = v35;
    sub_1E487857C();
    sub_1E477A3C8(v24, v26, v28 & 1);

    sub_1E47738B8(v3, &qword_1ECF7C590, &qword_1E487DAD8);
    sub_1E4773850(v29, v6, &qword_1ECF7C598, &qword_1E487DAE0);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1088, &qword_1ECF7C5A8, &unk_1E487DAF0, MEMORY[0x1E697CD08]);
    sub_1E47C3D6C();
    sub_1E487803C();
    return sub_1E47738B8(v29, &qword_1ECF7C598, &qword_1E487DAE0);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v31 = (*(v14 + 16))(v17, v19, v13);
    MEMORY[0x1EEE9AC00](v31);
    *(&v33 - 2) = v1;
    sub_1E47C3D6C();
    sub_1E487831C();
    v32 = v37;
    (*(v7 + 16))(v6, v9, v37);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1088, &qword_1ECF7C5A8, &unk_1E487DAF0, MEMORY[0x1E697CD08]);
    sub_1E487803C();
    (*(v7 + 8))(v9, v32);
    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_1E47C3AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C590, &qword_1E487DAD8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v4 = sub_1E4877FBC();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C5B0, &qword_1E487DB00);
  sub_1E47C08DC(a1, &v4[*(v5 + 44)]);
  v6 = type metadata accessor for Event(0);
  v16 = sub_1E47CC9E8(*(a1 + *(v6 + 56)));
  v17 = v7;
  sub_1E477A374(v16, v7, v8);
  v9 = sub_1E487848C();
  v11 = v10;
  v13 = v12;
  sub_1E47C3CB4();
  sub_1E487857C();
  sub_1E477A3C8(v9, v11, v13 & 1);

  sub_1E47738B8(v4, &qword_1ECF7C590, &qword_1E487DAD8);
}

unint64_t sub_1E47C3CB4()
{
  result = qword_1EE2B1458;
  if (!qword_1EE2B1458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C590, &qword_1E487DAD8);
    v3 = sub_1E4773680(&qword_1EE2B0F18, &qword_1ECF7C5B8, &unk_1E487DB08, MEMORY[0x1E6981868]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1458);
  }

  return result;
}

unint64_t sub_1E47C3D6C()
{
  result = qword_1EE2B1340;
  if (!qword_1EE2B1340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C598, &qword_1E487DAE0);
    sub_1E47C3CB4();
    sub_1E47C42C4(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1340);
  }

  return result;
}

double sub_1E47C3E30(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for Event(0);
  v7 = 0.0;
  if (*(v1 + *(v6 + 28)) > 0.0)
  {
    sub_1E47BDA28();

    v8 = sub_1E48781CC();

    sub_1E487201C(v8, a1);
    v10 = v9;

    v11 = sub_1E47BDB78();
    sub_1E487201C(v11, a1);
    v13 = v12;

    if (v10 > v13)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    v7 = v14 + 0.0;
  }

  sub_1E47BDA28();

  v15 = sub_1E48781CC();

  sub_1E487201C(v15, a1);
  v17 = v16;

  v18 = sub_1E47BDCDC();
  sub_1E487201C(v18, a1);
  v20 = v19;

  sub_1E4773850(v1 + *(v6 + 60), v5, &qword_1ECF7C048, &qword_1E487C5F0);
  v21 = type metadata accessor for Location(0);
  v22 = (*(*(v21 - 8) + 48))(v5, 1, v21);
  sub_1E47738B8(v5, &qword_1ECF7C048, &qword_1E487C5F0);
  if (v22 == 1)
  {
    v23 = sub_1E47BDB78();
    sub_1E487201C(v23, a1);
    v25 = v24;

    sub_1E47BDA28();

    v26 = sub_1E48781CC();

    sub_1E487201C(v26, a1);
    v28 = v27;

    if (v25 <= v28)
    {
      v25 = v28;
    }
  }

  else
  {
    sub_1E47BDA28();

    v29 = sub_1E48781CC();

    sub_1E487201C(v29, a1);
    v25 = v30;
  }

  if (v17 > v20)
  {
    v31 = v17;
  }

  else
  {
    v31 = v20;
  }

  v32 = v7 + v31 + v25;
  v33 = *(sub_1E47BDA28() + 48);

  return v32 + v33 + v33;
}

uint64_t sub_1E47C411C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E47C4180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B46A8;
  if (!qword_1EE2B46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B46A8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E47C41FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47C4264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47C42C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E47C430C()
{
  result = qword_1EE2B11B8;
  if (!qword_1EE2B11B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C690, qword_1E487DDD8);
    sub_1E4773680(&qword_1EE2B1088, &qword_1ECF7C5A8, &unk_1E487DAF0, MEMORY[0x1E697CD08]);
    sub_1E47C3D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11B8);
  }

  return result;
}

uint64_t type metadata accessor for NarrowReminderView(uint64_t a1)
{
  result = qword_1EE2B3280;
  if (!qword_1EE2B3280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47C4468(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    sub_1E487732C();
    if (v2 <= 0x3F)
    {
      sub_1E47C463C(319, &qword_1EE2B1690, MEMORY[0x1E6985840]);
      if (v3 <= 0x3F)
      {
        sub_1E47C463C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v4 <= 0x3F)
        {
          sub_1E47C463C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v5 <= 0x3F)
          {
            sub_1E478305C();
            if (v6 <= 0x3F)
            {
              sub_1E47C463C(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
              if (v7 <= 0x3F)
              {
                sub_1E47C463C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
                if (v8 <= 0x3F)
                {
                  sub_1E47C463C(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1E47C463C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E47C46AC()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v1 + 104);
  v5 = (v1 + 8);
  if (sub_1E47C4844())
  {
    sub_1E48782EC();
    (*v4)(v3, *MEMORY[0x1E6980EA0], v0);
    sub_1E48782CC();

    (*v5)(v3, v0);
    v6 = sub_1E48781FC();
  }

  else
  {
    sub_1E48781BC();
    (*v4)(v3, *MEMORY[0x1E6980EA0], v0);
    sub_1E48782CC();

    (*v5)(v3, v0);
    sub_1E487827C();
    v6 = sub_1E487829C();
  }

  v7 = v6;

  return v7;
}

uint64_t sub_1E47C4844()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NarrowReminderView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E47C499C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowReminderView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47C4BA4@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowReminderView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47C4DAC()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E487893C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  sub_1E47C499C((&v17 - v10));
  sub_1E487892C();
  v12 = sub_1E48788FC();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    sub_1E47C4BA4(v4);
    sub_1E476F0D0(v0, v4);
    v14 = sub_1E48785FC();
    (*(v2 + 8))(v4, v1);
    return v14;
  }

  else
  {
    sub_1E47C499C(v11);
    sub_1E487890C();
    v16 = sub_1E48788FC();
    v13(v9, v5);
    v13(v11, v5);
    if (v16)
    {
      return sub_1E48786FC();
    }

    else
    {
      return sub_1E48786EC();
    }
  }
}

uint64_t sub_1E47C4FE0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowReminderView(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47C51E8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NarrowReminderView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47C5338@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C710, &qword_1E487DEA8);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v57 - v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6C8, &qword_1E487DE78);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v57 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C708, &qword_1E487DE98);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6F8, &qword_1E487DE90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v57 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6E8, &qword_1E487DE88);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6D8, &qword_1E487DE80);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v57 - v11;
  v12 = sub_1E47C4844();
  v61 = v10;
  if (v12)
  {
    if (qword_1ECF7B658 != -1)
    {
      swift_once();
    }

    v13 = qword_1ECF7EA78;
  }

  else
  {
    v13 = sub_1E4877FBC();
  }

  *v5 = v13;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C718, &qword_1E487DEB0);
  sub_1E47C5AB0(v1, &v5[*(v14 + 44)]);
  v57 = type metadata accessor for Event(0);
  v68 = sub_1E47CC9E8(*(v1 + *(v57 + 56)));
  v69 = v15;
  sub_1E477A374(v68, v15, v16);
  v17 = sub_1E487848C();
  v19 = v18;
  v21 = v20;
  sub_1E4773680(&qword_1ECF7C700, &qword_1ECF7C708, &qword_1E487DE98, MEMORY[0x1E6981868]);
  sub_1E487857C();
  sub_1E477A3C8(v17, v19, v21 & 1);

  sub_1E47738B8(v5, &qword_1ECF7C708, &qword_1E487DE98);
  v22 = sub_1E487813C();
  if (sub_1E47C4844())
  {
    sub_1E47C51E8();
  }

  sub_1E4877B0C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1E477372C(v67, v9, &qword_1ECF7C6F8, &qword_1E487DE90);
  v31 = &v9[*(v60 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_1E487819C();
  sub_1E47C51E8();

  sub_1E4877B0C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v9;
  v42 = v62;
  sub_1E477372C(v41, v62, &qword_1ECF7C6E8, &qword_1E487DE88);
  v43 = v42 + *(v61 + 36);
  *v43 = v32;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  if (sub_1E47C4844())
  {
    v44 = v58;
    v45 = &v58[*(v64 + 36)];
    sub_1E47707EC(v1, v45);
    (*(*(v57 - 8) + 56))(v45, 0, 1);
    KeyPath = swift_getKeyPath();
    v47 = swift_getKeyPath();
    v48 = type metadata accessor for EventBackgroundView(0);
    *(v45 + v48[8]) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v45 + v48[9]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v45 + v48[10]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v49 = swift_getKeyPath();
    *(v45 + v48[5]) = 3;
    *(v45 + v48[6]) = 1;
    v50 = v45 + v48[7];
    *v50 = KeyPath;
    *(v50 + 8) = 0;
    v51 = v45 + v48[11];
    *v51 = v49;
    *(v51 + 8) = 0;
    v52 = sub_1E487889C();
    v54 = v53;
    v55 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
    *v55 = v52;
    v55[1] = v54;
    sub_1E4773850(v42, v44, &qword_1ECF7C6D8, &qword_1E487DE80);
    sub_1E4773850(v44, v65, &qword_1ECF7C6C8, &qword_1E487DE78);
    swift_storeEnumTagMultiPayload();
    sub_1E47C7CA8();
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    sub_1E487803C();
    sub_1E47738B8(v44, &qword_1ECF7C6C8, &qword_1E487DE78);
  }

  else
  {
    sub_1E4773850(v42, v65, &qword_1ECF7C6D8, &qword_1E487DE80);
    swift_storeEnumTagMultiPayload();
    sub_1E47C7CA8();
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    sub_1E487803C();
  }

  return sub_1E47738B8(v42, &qword_1ECF7C6D8, &qword_1E487DE80);
}

uint64_t sub_1E47C5AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v114 = sub_1E48782AC();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C728, &qword_1E487DFB8);
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v102 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C730, &qword_1E487DFC0);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v102 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C738, &qword_1E487DFC8);
  v127 = *(v6 - 8);
  v128 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C740, &qword_1E487DFD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C748, &qword_1E487DFD8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = (&v102 - v15);
  v107 = sub_1E4877B3C();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = (&v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_1E487893C();
  v108 = *(v109 - 8);
  v17 = MEMORY[0x1EEE9AC00](v109);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v102 - v20;
  v22 = sub_1E487732C();
  v133 = *(v22 - 8);
  v134 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v124 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v102 - v25;
  v26 = type metadata accessor for Event(0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v123 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v102 - v29;
  v30 = type metadata accessor for NarrowEventTimeText(0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v102 - v34;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C750, &qword_1E487DFE0);
  MEMORY[0x1EEE9AC00](v111);
  v37 = &v102 - v36;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C758, &qword_1E487DFE8);
  v38 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v110 = &v102 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C760, &qword_1E487DFF0);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v126 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v135 = &v102 - v43;
  sub_1E4878D2C();
  v125 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_1E47C4844())
  {
    (*(v38 + 56))(v135, 1, 1, v122);
  }

  else
  {
    v104 = v33;
    sub_1E47707EC(a1, v120);
    v44 = type metadata accessor for NarrowReminderView(0);
    (*(v133 + 16))(v121, a1 + *(v44 + 20), v134);
    v103 = sub_1E47C46AC();
    sub_1E47C499C(v21);
    sub_1E487892C();
    v45 = sub_1E48788FC();
    v46 = *(v108 + 8);
    v47 = v19;
    v48 = v109;
    v46(v47, v109);
    v46(v21, v48);
    if (v45)
    {
      v49 = v105;
      sub_1E47C4BA4(v105);
      v50 = sub_1E476EA20(a1, v49);
      (*(v106 + 8))(v49, v107);
    }

    else
    {
      v50 = sub_1E48786EC();
    }

    *&v35[v30[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v35[v30[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    sub_1E47C828C(v120, v35, type metadata accessor for Event);
    (*(v133 + 32))(&v35[v30[5]], v121, v134);
    *&v35[v30[6]] = v103;
    *&v35[v30[7]] = v50;
    v51 = sub_1E487816C();
    sub_1E4877B0C();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_1E47C828C(v35, v37, type metadata accessor for NarrowEventTimeText);
    v60 = &v37[*(v111 + 36)];
    *v60 = v51;
    *(v60 + 1) = v53;
    *(v60 + 2) = v55;
    *(v60 + 3) = v57;
    *(v60 + 4) = v59;
    v60[40] = 0;
    sub_1E47C82F4(&qword_1EE2B15C0, &qword_1ECF7C750, &qword_1E487DFE0, MEMORY[0x1E697E5D0]);
    v61 = v110;
    sub_1E48784AC();
    sub_1E47738B8(v37, &qword_1ECF7C750, &qword_1E487DFE0);
    v62 = v135;
    v63 = v122;
    (*(v38 + 32))(v135, v61, v122);
    (*(v38 + 56))(v62, 0, 1, v63);
    v33 = v104;
  }

  v64 = sub_1E4877F6C();
  v65 = *(sub_1E47C51E8() + 72);

  v66 = v136;
  *v136 = v64;
  v66[1] = v65;
  *(v66 + 16) = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C768, &qword_1E487E030);
  sub_1E47C69EC(a1, v66 + *(v67 + 44));
  if (sub_1E47C4844())
  {
    sub_1E47707EC(a1, v123);
    v68 = type metadata accessor for NarrowReminderView(0);
    (*(v133 + 16))(v124, a1 + *(v68 + 20), v134);
    v69 = sub_1E47C4844();
    v70 = (v112 + 104);
    v71 = (v112 + 8);
    if (v69)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781BC();
    }

    v76 = v113;
    v77 = v114;
    (*v70)(v113, *MEMORY[0x1E6980EA0], v114);
    v78 = sub_1E48782CC();

    (*v71)(v76, v77);
    v79 = sub_1E47C4DAC();
    *&v33[v30[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v33[v30[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    sub_1E47C828C(v123, v33, type metadata accessor for Event);
    (*(v133 + 32))(&v33[v30[5]], v124, v134);
    *&v33[v30[6]] = v78;
    *&v33[v30[7]] = v79;
    if (qword_1ECF7B658 != -1)
    {
      swift_once();
    }

    v80 = qword_1ECF7EA78;
    v81 = v117;
    sub_1E47C828C(v33, v117, type metadata accessor for NarrowEventTimeText);
    v82 = (v81 + *(v115 + 36));
    *v82 = v80;
    v82[1] = sub_1E47C8558;
    v82[2] = 0;
    LOBYTE(v80) = sub_1E487815C();
    sub_1E4877B0C();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v118;
    sub_1E477372C(v81, v118, &qword_1ECF7C728, &qword_1E487DFB8);
    v92 = v91 + *(v119 + 36);
    *v92 = v80;
    *(v92 + 8) = v84;
    *(v92 + 16) = v86;
    *(v92 + 24) = v88;
    *(v92 + 32) = v90;
    *(v92 + 40) = 0;
    sub_1E47C83E4();
    v93 = v116;
    sub_1E48784AC();
    sub_1E47738B8(v91, &qword_1ECF7C730, &qword_1E487DFC0);
    v75 = v127;
    v74 = v128;
    v73 = v129;
    (*(v127 + 32))(v129, v93, v128);
    v72 = 0;
  }

  else
  {
    v72 = 1;
    v74 = v128;
    v73 = v129;
    v75 = v127;
  }

  (*(v75 + 56))(v73, v72, 1, v74);
  v94 = v135;
  v95 = v126;
  sub_1E4773850(v135, v126, &qword_1ECF7C760, &qword_1E487DFF0);
  v96 = v136;
  v97 = v130;
  sub_1E4773850(v136, v130, &qword_1ECF7C748, &qword_1E487DFD8);
  v98 = v131;
  sub_1E4773850(v73, v131, &qword_1ECF7C740, &qword_1E487DFD0);
  v99 = v132;
  sub_1E4773850(v95, v132, &qword_1ECF7C760, &qword_1E487DFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C770, &unk_1E487E038);
  sub_1E4773850(v97, v99 + *(v100 + 48), &qword_1ECF7C748, &qword_1E487DFD8);
  sub_1E4773850(v98, v99 + *(v100 + 64), &qword_1ECF7C740, &qword_1E487DFD0);
  sub_1E47738B8(v73, &qword_1ECF7C740, &qword_1E487DFD0);
  sub_1E47738B8(v96, &qword_1ECF7C748, &qword_1E487DFD8);
  sub_1E47738B8(v94, &qword_1ECF7C760, &qword_1E487DFF0);
  sub_1E47738B8(v98, &qword_1ECF7C740, &qword_1E487DFD0);
  sub_1E47738B8(v97, &qword_1ECF7C748, &qword_1E487DFD8);
  sub_1E47738B8(v95, &qword_1ECF7C760, &qword_1E487DFF0);
}

uint64_t sub_1E47C69EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v95 = sub_1E487893C();
  v94 = *(v95 - 8);
  v3 = MEMORY[0x1EEE9AC00](v95);
  v93 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v88 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C788, &qword_1E487E048);
  v8 = MEMORY[0x1EEE9AC00](v99);
  v104 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v98 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v88 - v12;
  v107 = sub_1E4877B3C();
  v109 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = (&v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_1E48782AC();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v88 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v88 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v22 = MEMORY[0x1EEE9AC00](v89);
  v97 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v88 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v88 - v27;
  sub_1E4878D2C();
  v96 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for Event(0);
  sub_1E4878BDC();
  v28 = sub_1E487874C();
  v29 = (v18 + *(v16 + 36));
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v31 = *MEMORY[0x1E69816D8];
  v32 = sub_1E487877C();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  *v18 = v28;
  if (sub_1E47C4844())
  {
    v33 = sub_1E47C46AC();
  }

  else
  {
    v34 = sub_1E47C4844();
    v35 = (v90 + 104);
    v36 = (v90 + 8);
    if (v34)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781BC();
    }

    v37 = v91;
    (*v35)(v15, *MEMORY[0x1E6980EA0], v91);
    v33 = sub_1E48782CC();

    (*v36)(v15, v37);
  }

  KeyPath = swift_getKeyPath();
  sub_1E477372C(v18, v21, &qword_1ECF7B910, &unk_1E487E050);
  v39 = &v21[*(v19 + 36)];
  *v39 = KeyPath;
  v39[1] = v33;
  v40 = v106;
  sub_1E47C4BA4(v106);
  v41 = sub_1E4770A7C(a1, v40);
  v42 = *(v109 + 8);
  v109 += 8;
  v88 = v42;
  v42(v40, v107);
  v43 = swift_getKeyPath();
  sub_1E477372C(v21, v26, &qword_1ECF7B918, &unk_1E487AA60);
  v44 = &v26[*(v89 + 36)];
  *v44 = v43;
  v44[1] = v41;
  sub_1E477372C(v26, v108, &qword_1ECF7B920, &unk_1E487DCF0);
  v110 = sub_1E47CC708();
  v111 = v45;
  sub_1E477A374(v110, v45, v46);
  v47 = sub_1E487848C();
  v49 = v48;
  v51 = v50;
  if (sub_1E47C4844())
  {
    sub_1E47C46AC();
  }

  else
  {
    v52 = sub_1E47C4844();
    v53 = (v90 + 104);
    v54 = (v90 + 8);
    if (v52)
    {
      sub_1E48782BC();
    }

    else
    {
      sub_1E48781BC();
    }

    v55 = v91;
    (*v53)(v15, *MEMORY[0x1E6980EA0], v91);
    sub_1E48782CC();

    (*v54)(v15, v55);
  }

  v56 = sub_1E487842C();
  v58 = v57;
  v60 = v59;

  sub_1E477A3C8(v47, v49, v51 & 1);

  v61 = v92;
  sub_1E47C499C(v92);
  v62 = v93;
  sub_1E487892C();
  v63 = sub_1E48788FC();
  v64 = *(v94 + 8);
  v65 = v62;
  v66 = v95;
  v64(v65, v95);
  v64(v61, v66);
  if (v63)
  {
    v67 = v106;
    sub_1E47C4BA4(v106);
    sub_1E476EA20(a1, v67);
    v88(v67, v107);
  }

  else
  {
    sub_1E48786EC();
  }

  v68 = sub_1E48783FC();
  v70 = v69;
  v72 = v71;
  v74 = v73;

  sub_1E477A3C8(v56, v58, v60 & 1);

  v75 = swift_getKeyPath();
  v110 = v68;
  v111 = v70;
  v72 &= 1u;
  v112 = v72;
  v113 = v74;
  v114 = v75;
  v115 = 1;
  v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v76 = v100;
  sub_1E487855C();
  sub_1E477A3C8(v68, v70, v72);

  if (qword_1ECF7B658 != -1)
  {
    swift_once();
  }

  v77 = qword_1ECF7EA78;
  v78 = v98;
  (*(v101 + 32))(v98, v76, v102);
  v79 = (v78 + *(v99 + 36));
  *v79 = v77;
  v79[1] = sub_1E47C8558;
  v79[2] = 0;
  v80 = v103;
  sub_1E477372C(v78, v103, &qword_1ECF7C788, &qword_1E487E048);
  v81 = v108;
  v82 = v97;
  sub_1E4773850(v108, v97, &qword_1ECF7B920, &unk_1E487DCF0);
  v83 = v104;
  sub_1E4773850(v80, v104, &qword_1ECF7C788, &qword_1E487E048);
  v84 = v105;
  sub_1E4773850(v82, v105, &qword_1ECF7B920, &unk_1E487DCF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C790, &unk_1E487E120);
  sub_1E4773850(v83, v84 + *(v85 + 48), &qword_1ECF7C788, &qword_1E487E048);
  v86 = v84 + *(v85 + 64);
  *v86 = 0;
  *(v86 + 8) = 0;
  sub_1E47738B8(v80, &qword_1ECF7C788, &qword_1E487E048);
  sub_1E47738B8(v81, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E47738B8(v83, &qword_1ECF7C788, &qword_1E487E048);
  sub_1E47738B8(v82, &qword_1ECF7B920, &unk_1E487DCF0);
}

uint64_t sub_1E47C7514@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C698, &qword_1E487DE58);
  MEMORY[0x1EEE9AC00](v40);
  v35 = &v32 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6A0, &qword_1E487DE60);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v32 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C6A8, &unk_1E487DE68);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - v4;
  v5 = sub_1E4877CCC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v36 = sub_1E487725C();
  v15 = *(v36 - 8);
  v16 = MEMORY[0x1EEE9AC00](v36);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v32 - v19;
  v20 = v1;
  sub_1E47C4FE0(v11);
  sub_1E4877CAC();
  sub_1E47C839C(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v21 = sub_1E4878EAC();
  v22 = *(v6 + 8);
  v22(v9, v5);
  v22(v11, v5);
  if (v21)
  {
    (*(v15 + 56))(v14, 1, 1, v36);
LABEL_4:
    sub_1E47738B8(v14, &unk_1ECF7B688, &qword_1E487C160);
    v25 = v35;
    sub_1E47C5338(v35);
    sub_1E4773850(v25, v38, &qword_1ECF7C698, &qword_1E487DE58);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C6B0, &qword_1ECF7C6A8, &unk_1E487DE68, MEMORY[0x1E697CD08]);
    sub_1E47C7BF0();
    sub_1E487803C();
    return sub_1E47738B8(v25, &qword_1ECF7C698, &qword_1E487DE58);
  }

  v23 = type metadata accessor for Event(0);
  sub_1E4773850(&v20[*(v23 + 44)], v14, &unk_1ECF7B688, &qword_1E487C160);
  v24 = v36;
  if ((*(v15 + 48))(v14, 1, v36) == 1)
  {
    goto LABEL_4;
  }

  v27 = v32;
  (*(v15 + 32))(v32, v14, v24);
  v28 = (*(v15 + 16))(v18, v27, v24);
  MEMORY[0x1EEE9AC00](v28);
  *(&v32 - 2) = v20;
  sub_1E47C7BF0();
  v29 = v33;
  sub_1E487831C();
  v30 = v34;
  v31 = v39;
  (*(v34 + 16))(v38, v29, v39);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1ECF7C6B0, &qword_1ECF7C6A8, &unk_1E487DE68, MEMORY[0x1E697CD08]);
  sub_1E487803C();
  (*(v30 + 8))(v29, v31);
  return (*(v15 + 8))(v27, v24);
}

uint64_t sub_1E47C7B3C@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47C5338(a1);
}

unint64_t sub_1E47C7BF0()
{
  result = qword_1ECF7C6B8;
  if (!qword_1ECF7C6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C698, &qword_1E487DE58);
    sub_1E47C7CA8();
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C6B8);
  }

  return result;
}

unint64_t sub_1E47C7CA8()
{
  result = qword_1ECF7C6C0;
  if (!qword_1ECF7C6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C6C8, &qword_1E487DE78);
    sub_1E47C7DBC(&qword_1ECF7C6D0, &qword_1ECF7C6D8, &qword_1E487DE80, sub_1E47C7D8C);
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C6C0);
  }

  return result;
}

uint64_t sub_1E47C7DBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E47C7E40()
{
  result = qword_1ECF7C6F0;
  if (!qword_1ECF7C6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C6F8, &qword_1E487DE90);
    sub_1E4773680(&qword_1ECF7C700, &qword_1ECF7C708, &qword_1E487DE98, MEMORY[0x1E6981868]);
    sub_1E47C839C(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C6F0);
  }

  return result;
}

uint64_t sub_1E47C7F30()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E487A7F0;
  *(v4 + 32) = sub_1E47C46AC();
  if (sub_1E47C4844())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA0], v0);
  v5 = sub_1E48782CC();

  (*(v1 + 8))(v3, v0);
  *(v4 + 40) = v5;
  return v4;
}

double sub_1E47C8088(uint64_t a1)
{
  v2 = sub_1E48782AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E47C46AC();
  sub_1E487201C(v6, a1);
  v8 = v7;

  if (sub_1E47C4844())
  {
    sub_1E48782BC();
  }

  else
  {
    sub_1E48781BC();
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA0], v2);
  v9 = sub_1E48782CC();

  (*(v3 + 8))(v5, v2);
  v10 = v8 + -1.0;
  sub_1E487201C(v9, a1);
  v12 = v11;

  v13 = v10 + v12;
  v14 = *(sub_1E47C51E8() + 48);

  return v13 + v14;
}

uint64_t sub_1E47C8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E47C8238(a1, a2, a3);
  result = sub_1E4877FDC();
  qword_1ECF7EA78 = result;
  return result;
}

unint64_t sub_1E47C8238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7C720;
  if (!qword_1ECF7C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C720);
  }

  return result;
}

uint64_t sub_1E47C828C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47C82F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E47C839C(qword_1EE2B2C48, type metadata accessor for NarrowEventTimeText, &unk_1E487F118);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E47C839C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E47C83E4()
{
  result = qword_1ECF7C778;
  if (!qword_1ECF7C778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C730, &qword_1E487DFC0);
    sub_1E47C82F4(&qword_1ECF7C780, &qword_1ECF7C728, &qword_1E487DFB8, MEMORY[0x1E6980598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C778);
  }

  return result;
}

unint64_t sub_1E47C84A0()
{
  result = qword_1ECF7C798;
  if (!qword_1ECF7C798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C7A0, &qword_1E487E148);
    sub_1E4773680(&qword_1ECF7C6B0, &qword_1ECF7C6A8, &unk_1E487DE68, MEMORY[0x1E697CD08]);
    sub_1E47C7BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C798);
  }

  return result;
}

unint64_t sub_1E47C8570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7C7B0;
  if (!qword_1ECF7C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C7B0);
  }

  return result;
}

uint64_t sub_1E47C85C4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NarrowMultidayEventsView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t type metadata accessor for NarrowMultidayEventsView(uint64_t a1)
{
  result = qword_1EE2B4998;
  if (!qword_1EE2B4998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47C8790(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47C8968(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E478305C();
      if (v3 <= 0x3F)
      {
        sub_1E47C8968(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E47C8968(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            sub_1E47C8968(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              sub_1E48783DC();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E47C8968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47C89E8@<X0>(double *a1@<X8>)
{
  v319 = a1;
  v335 = type metadata accessor for ConflictEventTitleText(0);
  v334 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335);
  v310 = &v288 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = type metadata accessor for ConflictTimeText(0);
  v331 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v309 = &v288 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = type metadata accessor for NarrowReminderView(0);
  v338 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339);
  v291 = &v288 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = type metadata accessor for NarrowAllDayView(0);
  v336 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v290 = &v288 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D8, &unk_1E487F4E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v363 = &v288 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C8B0, &unk_1E487E2C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v362 = &v288 - v9;
  v361 = sub_1E48783BC();
  v320 = *(v361 - 8);
  MEMORY[0x1EEE9AC00](v361);
  v360 = &v288 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_1E4877F1C();
  v315 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316);
  v314 = &v288 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E0, &qword_1E4881BD0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v295 = &v288 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v294 = (&v288 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v333 = (&v288 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7E8, &unk_1E487E2D0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v299 = &v288 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v298 = &v288 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v351 = &v288 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4E8, &qword_1E487D730);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v306 = &v288 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v305 = &v288 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v353 = &v288 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B820, &unk_1E487E2E0);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v303 = &v288 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v302 = (&v288 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v352 = &v288 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4F0, &qword_1E487D738);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v289 = &v288 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v307 = &v288 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v313 = &v288 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v350 = &v288 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v355 = &v288 - v45;
  v345 = type metadata accessor for NarrowEventDetailsView(0);
  v340 = *(v345 - 8);
  v46 = MEMORY[0x1EEE9AC00](v345);
  v308 = &v288 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v346 = &v288 - v48;
  v364 = type metadata accessor for NoEventsView(0) - 8;
  MEMORY[0x1EEE9AC00](v364);
  v349 = &v288 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for NarrowXMoreView(0) - 8;
  MEMORY[0x1EEE9AC00](v347);
  v348 = &v288 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = sub_1E48782AC();
  v51 = *(v354 - 8);
  MEMORY[0x1EEE9AC00](v354);
  v53 = &v288 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for NarrowTextHeaderView(0);
  v55 = (v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v288 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for NarrowMultidayEventsView(0);

  v357 = sub_1E479A9C8(v59);

  *&v60 = COERCE_DOUBLE(sub_1E487732C());
  v366 = *&v60;
  v61 = *(v60 - 8);
  v62 = *(v61 + 16);
  v369 = *&v62;
  *&v368 = v61 + 16;
  v370 = v1;
  v62(v57, v1, v60);
  v62(&v57[v55[7]], v1, v60);
  *&v57[v55[9]] = swift_getKeyPath();
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  v57[v55[8]] = 0;
  v63 = &v57[v55[10]];
  *v63 = 0x4D4D202C45454545;
  *(v63 + 1) = 0xEB0000000064204DLL;
  v64 = &v57[v55[11]];
  strcpy(v64, "EEEE, MMMM d");
  v64[13] = 0;
  *(v64 + 7) = -5120;
  v65 = &v57[v55[12]];
  *v65 = 1162167621;
  *(v65 + 1) = 0xE400000000000000;
  v66 = v55[13];
  sub_1E48782DC();
  v343 = *MEMORY[0x1E6980EA0];
  v67 = v51 + 104;
  v342 = *(v51 + 104);
  v68 = v354;
  v342(v53);
  sub_1E48782CC();

  v341 = *(v51 + 8);
  v344 = v51 + 8;
  v341(v53, v68);
  v69 = sub_1E48781FC();
  v329 = v69;

  v318 = v57;
  *&v57[v66] = v69;
  v356 = type metadata accessor for FakeEvents();

  v70 = sub_1E480D21C();
  v71 = v58;
  v367 = v58;
  v72 = *(v58 + 36);
  v73 = v370;
  v74 = v370 + v72;
  v75 = *v74;
  LOBYTE(v57) = *(v74 + 8);
  v365 = v57;
  v76 = v370 + *(v71 + 48);
  v77 = *v76;
  v78 = *(v76 + 8);
  LODWORD(v358) = v78;
  KeyPath = swift_getKeyPath();
  v80 = v348;
  *&v348[*(v347 + 40)] = KeyPath;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v80 = v70;
  v80[8] = 0;
  *(v80 + 2) = v75;
  v80[24] = v57;
  v359 = v77;
  *(v80 + 4) = v77;
  v80[40] = v78;
  (*&v369)(v349, v73, *&v366);
  sub_1E47CC10C(v75, v57);
  sub_1E47CC10C(v75, v57);

  sub_1E47CC10C(v75, v57);

  sub_1E48781BC();
  v81 = v343;
  v82 = v354;
  v83 = v342;
  (v342)(v53, v343, v354);
  sub_1E48782CC();

  v84 = v341;
  v341(v53, v82);
  sub_1E487827C();
  v347 = sub_1E487829C();

  sub_1E48781BC();
  v325 = v67;
  v83(v53, v81, v82);
  v85 = sub_1E48782CC();

  v326 = v53;
  v84(v53, v82);
  v86 = swift_getKeyPath();
  v87 = swift_getKeyPath();
  v88 = v364;
  v89 = v349;
  *(v349 + *(v364 + 48)) = v87;
  swift_storeEnumTagMultiPayload();
  *(v89 + v88[13]) = swift_getKeyPath();
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  *(v89 + v88[7]) = 1;
  *(v89 + v88[8]) = 1;
  *(v89 + v88[9]) = v347;
  *(v89 + v88[10]) = v85;
  v90 = v89 + v88[11];
  *v90 = v86;
  *(v90 + 8) = 0;

  v91 = v346;
  sub_1E48060F4(v346);
  v92 = v345;
  v93 = v370;
  (*&v369)(&v91[*(v345 + 20)], v370, *&v366);
  v94 = v367;
  v95 = v92[10];
  v324 = v367[11];
  sub_1E4773850(v93 + v324, &v91[v95], &qword_1ECF7B848, &unk_1E487A820);
  v96 = v92[12];
  v323 = v94[10];
  sub_1E4773850(v93 + v323, &v91[v96], &qword_1ECF7B850, &qword_1E487C800);
  *&v91[v92[8]] = swift_getKeyPath();
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
  *&v91[v92[9]] = swift_getKeyPath();
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v91[v92[6]] = 1;
  v91[v92[7]] = 1;
  v97 = &v91[v92[11]];
  *v97 = v75;
  v98 = v365;
  v97[8] = v365;
  v99 = &v91[v92[13]];
  *v99 = v359;
  v99[8] = v358;
  v100 = v340 + 56;
  v101 = *(v340 + 56);
  v101(v355, 1, 1, v92);
  v312 = v100;
  v311 = v101;
  v101(v350, 1, 1, v92);
  v301 = *(v336 + 56);
  v301(v352, 1, 1, v337);
  v304 = *(v338 + 56);
  v304(v353, 1, 1, v339);
  v102 = *(v334 + 56);
  v297 = v334 + 56;
  v296 = v102;
  v102(v351, 1, 1, v335);
  v103 = *(v331 + 56);
  v293 = v331 + 56;
  v292 = v103;
  v103(v333, 1, 1, v332);
  v372 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  inited = swift_initStackObject();
  v300 = xmmword_1E487A7E0;
  *(inited + 16) = xmmword_1E487A7E0;
  *(inited + 32) = v329;
  v105 = inited + 32;
  sub_1E47CC0AC(inited);
  swift_setDeallocating();
  sub_1E47CC118(v105);
  v106 = sub_1E47DE378();
  sub_1E47CC0AC(v106);

  v364 = v75;
  v107 = sub_1E4803A28(0, v75, v98);
  sub_1E47CC0AC(v107);

  v108 = swift_initStackObject();
  *(v108 + 16) = xmmword_1E487A7F0;
  *(v108 + 32) = v347;
  v317 = v85;
  *(v108 + 40) = v85;
  sub_1E47CC0AC(v108);
  swift_setDeallocating();
  swift_arrayDestroy();
  v109 = sub_1E47D3D34();
  sub_1E47CC0AC(v109);

  if ((v357 & 0x100000000) != 0)
  {
    v110 = v305;
    sub_1E48060FC(v305);
    v111 = v339;
    v112 = v370;
    (*&v369)(&v110[*(v339 + 20)], v370, *&v366);
    sub_1E4773850(v112 + v324, &v110[v111[8]], &qword_1ECF7B848, &unk_1E487A820);
    sub_1E4773850(v112 + v323, &v110[v111[10]], &qword_1ECF7B850, &qword_1E487C800);
    *&v110[v111[6]] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *&v110[v111[7]] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *&v110[v111[11]] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v113 = &v110[v111[9]];
    v114 = v364;
    *v113 = v364;
    v113[8] = v98;
    v115 = &v110[v111[12]];
    *v115 = v359;
    v115[8] = v358;
    v304(v110, 0, 1, v111);
    sub_1E47CC10C(v114, v98);

    v116 = v110;
    v117 = v353;
    sub_1E47CC250(v116, v353, &qword_1ECF7C4E8, &qword_1E487D730);
    v118 = v117;
    v119 = v306;
    sub_1E4773850(v118, v306, &qword_1ECF7C4E8, &qword_1E487D730);
    if ((*(v338 + 48))(v119, 1, v111) == 1)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v120 = sub_1E47C7F30();
    sub_1E47CC1F0(v119, type metadata accessor for NarrowReminderView);
    sub_1E47CC0AC(v120);
  }

  v121 = v357;
  if ((v357 & 1) == 0)
  {
    goto LABEL_14;
  }

  v122 = sub_1E480D21C();
  v123 = v337;
  v124 = v302;
  (*&v369)(v302 + *(v337 + 20), v370, *&v366);
  *(v124 + v123[8]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v124 + v123[9]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v124 + v123[10]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v124 + v123[12]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v124 = v122;
  *(v124 + v123[6]) = 0;
  *(v124 + v123[7]) = 0;
  v125 = v124 + v123[11];
  v126 = v364;
  *v125 = v364;
  v125[8] = v98;
  v127 = v124 + v123[13];
  *v127 = v359;
  v127[8] = v358;
  v301(v124, 0, 1, v123);
  sub_1E47CC10C(v126, v98);

  v128 = v124;
  v129 = v352;
  sub_1E47CC250(v128, v352, &qword_1ECF7B820, &unk_1E487E2E0);
  v130 = v303;
  sub_1E4773850(v129, v303, &qword_1ECF7B820, &unk_1E487E2E0);
  if ((*(v336 + 48))(v130, 1, v123) == 1)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v131 = swift_initStackObject();
  *(v131 + 16) = v300;
  v132 = v123[6];
  if (!*(v130 + v132))
  {
    v134 = v130 + v123[11];
    v135 = *v134;
    if (*(v134 + 8) == 1)
    {
      if ((v135 & 1) == 0)
      {
LABEL_10:
        sub_1E48782FC();
        v136 = v326;
        v137 = v354;
        (v342)(v326, v343, v354);
        v133 = sub_1E48782CC();

        v341(v136, v137);
        goto LABEL_13;
      }
    }

    else
    {

      v138 = sub_1E4878DDC();
      v139 = sub_1E48780FC();
      sub_1E4877AAC(v138, &dword_1E475C000, v139, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v140 = v314;
      sub_1E4877F0C();
      swift_getAtKeyPath();
      sub_1E477A484(v135, 0);
      (*(v315 + 8))(v140, v316);
      if ((LOBYTE(v371) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1E48782EC();
    v141 = v326;
    v142 = v354;
    (v342)(v326, v343, v354);
    sub_1E48782CC();

    v341(v141, v142);
    v133 = sub_1E48781FC();

    goto LABEL_13;
  }

  v133 = *(v130 + v132);
LABEL_13:
  *(v131 + 32) = v133;

  sub_1E47CC1F0(v130, type metadata accessor for NarrowAllDayView);
  sub_1E47CC0AC(v131);
  swift_setDeallocating();
  sub_1E47CC118(v131 + 32);
LABEL_14:
  v143 = *&v121 & 0x10100;
  v144 = v364;
  if ((*&v121 & 0x10100) == 0)
  {
    goto LABEL_19;
  }

  v145 = v313;
  sub_1E48060F4(v313);
  v146 = v345;
  v147 = v370;
  (*&v369)(&v145[*(v345 + 20)], v370, *&v366);
  sub_1E4773850(v147 + v324, &v145[v146[10]], &qword_1ECF7B848, &unk_1E487A820);
  sub_1E4773850(v147 + v323, &v145[v146[12]], &qword_1ECF7B850, &qword_1E487C800);
  *&v145[v146[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v145[v146[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v145[v146[6]] = 0;
  v145[v146[7]] = 1;
  v148 = &v145[v146[11]];
  *v148 = v144;
  v149 = v365;
  v148[8] = v365;
  v150 = &v145[v146[13]];
  *v150 = v359;
  v150[8] = v358;
  v311(v145, 0, 1, v146);
  sub_1E47CC10C(v144, v149);

  v151 = v145;
  v152 = v355;
  sub_1E47CC250(v151, v355, &qword_1ECF7C4F0, &qword_1E487D738);
  v153 = v307;
  sub_1E4773850(v152, v307, &qword_1ECF7C4F0, &qword_1E487D738);
  v154 = *(v340 + 48);
  if (v154(v153, 1, v146) == 1)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v155 = sub_1E47DE378();
  sub_1E47CC1F0(v153, type metadata accessor for NarrowEventDetailsView);
  sub_1E47CC0AC(v155);

  v121 = v357;
  if (v143 != 65792)
  {
LABEL_19:
    if ((v121 & 0x1000000) != 0)
    {
      v165 = v365;
      sub_1E47CC10C(v144, v365);
      v166 = sub_1E4825320(2, 2, v144, v165);
      sub_1E47CC0AC(v166);

      v167 = type metadata accessor for Event(0);
      v168 = v298;
      (*(*(v167 - 8) + 56))(v298, 1, 1, v167);
      v169 = swift_getKeyPath();
      v170 = v335;
      *&v168[*(v335 + 20)] = v169;
      swift_storeEnumTagMultiPayload();
      *&v168[v170[7]] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v171 = &v168[v170[6]];
      *v171 = v144;
      v171[8] = v165;
      v172 = &v168[v170[8]];
      *v172 = v359;
      v172[8] = v358;
      v296(v168, 0, 1, v170);
      sub_1E47CC10C(v144, v165);
      sub_1E47CC10C(v144, v165);

      v173 = v168;
      v174 = v351;
      sub_1E47CC250(v173, v351, &qword_1ECF7C7E8, &unk_1E487E2D0);
      v175 = v174;
      v176 = v299;
      sub_1E4773850(v175, v299, &qword_1ECF7C7E8, &unk_1E487E2D0);
      if ((*(v334 + 48))(v176, 1, v170) == 1)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v177 = sub_1E4825604();
      sub_1E47CC1F0(v176, type metadata accessor for ConflictEventTitleText);
      sub_1E47CC0AC(v177);

      v178 = sub_1E480D21C();
      v179 = v332;
      v180 = v294;
      (*&v369)(v294 + *(v332 + 20), v370, *&v366);
      *(v180 + *(v179 + 24)) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *v180 = v178;
      v181 = v180 + *(v179 + 28);
      *v181 = v144;
      v181[8] = v165;
      v292(v180, 0, 1, v179);
      v182 = v180;
      v183 = v333;
      sub_1E47CC250(v182, v333, &qword_1ECF7C7E0, &qword_1E4881BD0);
      v184 = v183;
      v185 = v295;
      sub_1E4773850(v184, v295, &qword_1ECF7C7E0, &qword_1E4881BD0);
      if ((*(v331 + 48))(v185, 1, v179) == 1)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v186 = sub_1E4825630();
      sub_1E47CC1F0(v185, type metadata accessor for ConflictTimeText);
      sub_1E47CC0AC(v186);

      v328 = 2;
      v327 = v144;
      LODWORD(v330) = v165;
    }

    else
    {
      v328 = 0;
      v327 = 0;
      LODWORD(v330) = 255;
    }

    v187 = 0;
    v359 = "w from model: %@";
    v189 = *&v372 + 56;
    v188 = *(*&v372 + 56);
    v366 = v372;
    v190 = 1 << *(*&v372 + 32);
    v191 = -1;
    if (v190 < 64)
    {
      v191 = ~(-1 << v190);
    }

    v192 = v191 & v188;
    v193 = (v190 + 63) >> 6;
    v358 = (v320 + 8);
    v194 = MEMORY[0x1E69E7CC8];
    v357 = *&v372 + 56;
    v356 = v193;
    while (v192)
    {
      v369 = v194;
      v195 = v187;
LABEL_35:
      v196 = *(*(*&v366 + 48) + ((v195 << 9) | (8 * __clz(__rbit64(v192)))));
      *&v368 = v367[14];
      swift_retain_n();
      v197 = sub_1E487842C();
      v199 = v198;
      v201 = v200;

      v202 = sub_1E487838C();
      (*(*(v202 - 8) + 56))(COERCE_DOUBLE(*&v362), 1, 1, v202);
      v203 = sub_1E487843C();
      (*(*(v203 - 8) + 56))(COERCE_DOUBLE(*&v363), 1, 1, v203);
      v204 = v360;
      sub_1E48783AC();
      sub_1E487839C();
      v206 = v205;
      sub_1E477A3C8(v197, v199, v201 & 1);

      (*v358)(v204, v361);
      v207 = v369;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v371 = v207;
      v209 = sub_1E481DCC4(v196);
      v211 = *(*&v207 + 16);
      v212 = (v210 & 1) == 0;
      v213 = __OFADD__(v211, v212);
      v214 = v211 + v212;
      if (v213)
      {
        goto LABEL_76;
      }

      v215 = v210;
      if (*(*&v207 + 24) >= v214)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v219 = v209;
          sub_1E4861D9C();
          v209 = v219;
        }
      }

      else
      {
        sub_1E4861524(v214, isUniquelyReferenced_nonNull_native);
        v209 = sub_1E481DCC4(v196);
        if ((v215 & 1) != (v216 & 1))
        {
          goto LABEL_84;
        }
      }

      v192 &= v192 - 1;
      v194 = v371;
      if (v215)
      {
        *(*(*&v371 + 56) + 8 * v209) = v206;
      }

      else
      {
        *(*&v371 + 8 * (v209 >> 6) + 64) |= 1 << v209;
        *(*(*&v194 + 48) + 8 * v209) = v196;
        *(*(*&v194 + 56) + 8 * v209) = v206;
        v217 = *(*&v194 + 16);
        v213 = __OFADD__(v217, 1);
        v218 = v217 + 1;
        if (v213)
        {
          goto LABEL_77;
        }

        *(*&v194 + 16) = v218;
      }

      v187 = v195;
      v189 = v357;
      v193 = v356;
    }

    while (1)
    {
      v195 = v187 + 1;
      if (__OFADD__(v187, 1))
      {
        break;
      }

      if (v195 >= v193)
      {

        sub_1E487201C(v329, *&v194);
        v221 = v220;
        v222 = 0.0;
        v223 = 0.0;
        if (!(*(v336 + 48))(v352, 1, v337))
        {
          v224 = v290;
          sub_1E47CC188(v352, v290, type metadata accessor for NarrowAllDayView);
          v223 = sub_1E477A3D8(*&v194);
          sub_1E47CC1F0(v224, type metadata accessor for NarrowAllDayView);
        }

        v225 = *&v194;
        v226 = sub_1E47DE878(*&v194);
        v227 = *(v340 + 48);
        v228 = v345;
        v229 = v227(v355, 1, v345);
        v230 = v335;
        v231 = v333;
        v232 = v348;
        v233 = v364;
        if (!v229)
        {
          v234 = v308;
          sub_1E47CC188(v355, v308, type metadata accessor for NarrowEventDetailsView);
          v222 = sub_1E47DE878(v225);
          sub_1E47CC1F0(v234, type metadata accessor for NarrowEventDetailsView);
        }

        v235 = 0.0;
        v236 = 0.0;
        if (!v227(v350, 1, v228))
        {
          v237 = v308;
          sub_1E47CC188(v350, v308, type metadata accessor for NarrowEventDetailsView);
          v236 = sub_1E47DE878(v225);
          sub_1E47CC1F0(v237, type metadata accessor for NarrowEventDetailsView);
        }

        if (!(*(v338 + 48))(v353, 1, v339))
        {
          v238 = v291;
          sub_1E47CC188(v353, v291, type metadata accessor for NarrowReminderView);
          v235 = sub_1E47C8088(v225);
          sub_1E47CC1F0(v238, type metadata accessor for NarrowReminderView);
        }

        *&v239 = sub_1E47D3E84(v225);
        v369 = v222;
        v368 = v223;
        v366 = v226;
        v363 = v235;
        v362 = v236;
        v361 = v239;
        if (v365)
        {
          if ((v233 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_56:
          v240 = v221;
          sub_1E48781BC();
        }

        else
        {

          v241 = sub_1E4878DDC();
          v242 = sub_1E48780FC();
          sub_1E4877AAC(v241, &dword_1E475C000, v242, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          v243 = v314;
          sub_1E4877F0C();
          swift_getAtKeyPath();
          sub_1E477A484(v233, 0);
          (*(v315 + 8))(v243, v316);
          if (LOBYTE(v371) == 1)
          {
            goto LABEL_56;
          }

LABEL_54:
          v240 = v221;
          sub_1E48782FC();
        }

        v244 = v326;
        v245 = v354;
        (v342)(v326, v343, v354);
        v246 = sub_1E48782CC();

        v341(v244, v245);
        sub_1E487201C(v246, v225);
        v248 = v247;

        sub_1E487201C(v347, v225);
        v250 = v249;
        sub_1E487201C(v317, v225);
        v252 = v251;
        v253 = 0;
        v254 = 0.0;
        if (v330 != 255)
        {
          v254 = sub_1E48257C4(v225, v328, v328, v327, v330 & 1);
        }

        v255 = v332;
        v256 = (*(v331 + 48))(v231, 1, v332);
        v257 = v364;
        if (!v256)
        {
          v258 = v309;
          sub_1E47CC188(v231, v309, type metadata accessor for ConflictTimeText);
          v259 = v258 + *(v255 + 28);
          v260 = *v259;
          if (*(v259 + 8) == 1)
          {
            if ((v260 & 1) == 0)
            {
              goto LABEL_62;
            }

LABEL_64:
            sub_1E48782BC();
          }

          else
          {

            v261 = sub_1E4878DDC();
            v262 = sub_1E48780FC();
            sub_1E4877AAC(v261, &dword_1E475C000, v262, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

            v263 = v314;
            sub_1E4877F0C();
            swift_getAtKeyPath();
            sub_1E477A484(v260, 0);
            (*(v315 + 8))(v263, v316);
            if (LOBYTE(v371) == 1)
            {
              goto LABEL_64;
            }

LABEL_62:
            sub_1E48782FC();
          }

          v264 = v326;
          v265 = v354;
          (v342)(v326, v343, v354);
          v266 = sub_1E48782CC();

          v341(v264, v265);
          sub_1E487201C(v266, v225);
          v253 = v267;

          sub_1E47CC1F0(v309, type metadata accessor for ConflictTimeText);
          v257 = v364;
        }

        if ((*(v334 + 48))(v351, 1, v230))
        {
          sub_1E477A484(v257, v365);
          sub_1E47CC16C(v328, v328, v327, v330);
          v268 = 0;
LABEL_74:
          sub_1E47CC1F0(v346, type metadata accessor for NarrowEventDetailsView);
          sub_1E47CC1F0(v232, type metadata accessor for NarrowXMoreView);
          sub_1E47CC1F0(v349, type metadata accessor for NoEventsView);
          sub_1E47CC1F0(v318, type metadata accessor for NarrowTextHeaderView);

          v280 = v250 + v252 * 3.0;
          v281 = *(v370 + v367[13]);
          v282 = *(v370 + v367[6]);
          sub_1E47738B8(v231, &qword_1ECF7C7E0, &qword_1E4881BD0);
          sub_1E47738B8(v351, &qword_1ECF7C7E8, &unk_1E487E2D0);
          sub_1E47738B8(v353, &qword_1ECF7C4E8, &qword_1E487D730);
          sub_1E47738B8(v352, &qword_1ECF7B820, &unk_1E487E2E0);
          sub_1E47738B8(v350, &qword_1ECF7C4F0, &qword_1E487D738);
          result = sub_1E47738B8(v355, &qword_1ECF7C4F0, &qword_1E487D738);
          v284 = v319;
          v285 = v368;
          *v319 = v240;
          v284[1] = v285;
          v286 = v369;
          v284[2] = v366;
          v284[3] = v286;
          v287 = v363;
          v284[4] = v362;
          v284[5] = v287;
          *(v284 + 6) = v361;
          *(v284 + 7) = v248;
          v284[8] = v280;
          v284[9] = v254;
          *(v284 + 10) = v253;
          *(v284 + 11) = v268;
          *(v284 + 6) = xmmword_1E487E190;
          *(v284 + 14) = v281;
          *(v284 + 15) = v282;
          return result;
        }

        v269 = v310;
        sub_1E47CC188(v351, v310, type metadata accessor for ConflictEventTitleText);
        v270 = v269 + *(v230 + 24);
        v271 = *v270;
        if (*(v270 + 8) == 1)
        {
          if ((v271 & 1) == 0)
          {
            goto LABEL_70;
          }

LABEL_72:
          v272 = v232;
          sub_1E48782BC();
        }

        else
        {

          v273 = sub_1E4878DDC();
          v274 = sub_1E48780FC();
          sub_1E4877AAC(v273, &dword_1E475C000, v274, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          v275 = v314;
          sub_1E4877F0C();
          swift_getAtKeyPath();
          sub_1E477A484(v271, 0);
          (*(v315 + 8))(v275, v316);
          if (LOBYTE(v371) == 1)
          {
            goto LABEL_72;
          }

LABEL_70:
          v272 = v232;
          sub_1E48781EC();
        }

        v276 = v326;
        v277 = v354;
        (v342)(v326, v343, v354);
        v278 = sub_1E48782CC();

        v341(v276, v277);
        sub_1E487201C(v278, v225);
        v268 = v279;

        sub_1E477A484(v257, v365);
        sub_1E47CC16C(v328, v328, v327, v330);
        sub_1E47CC1F0(v310, type metadata accessor for ConflictEventTitleText);
        v232 = v272;
        goto LABEL_74;
      }

      v192 = *(v189 + 8 * v195);
      ++v187;
      if (v192)
      {
        v369 = v194;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v156 = v313;
  sub_1E48060F4(v313);
  v157 = v345;
  v158 = v370;
  (*&v369)(&v156[*(v345 + 20)], v370, *&v366);
  sub_1E4773850(v158 + v324, &v156[v157[10]], &qword_1ECF7B848, &unk_1E487A820);
  sub_1E4773850(v158 + v323, &v156[v157[12]], &qword_1ECF7B850, &qword_1E487C800);
  *&v156[v157[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v156[v157[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v156[v157[6]] = 0;
  v156[v157[7]] = 0;
  v159 = &v156[v157[11]];
  *v159 = v144;
  v160 = v365;
  v159[8] = v365;
  v161 = &v156[v157[13]];
  *v161 = v359;
  v161[8] = v358;
  v311(v156, 0, 1, v157);
  sub_1E47CC10C(v144, v160);

  v162 = v350;
  sub_1E47CC250(v156, v350, &qword_1ECF7C4F0, &qword_1E487D738);
  v163 = v289;
  sub_1E4773850(v162, v289, &qword_1ECF7C4F0, &qword_1E487D738);
  if (v154(v163, 1, v157) != 1)
  {
    v164 = sub_1E47DE378();
    sub_1E47CC1F0(v163, type metadata accessor for NarrowEventDetailsView);
    sub_1E47CC0AC(v164);

    goto LABEL_19;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_1E487912C();
  __break(1u);
  return result;
}

uint64_t sub_1E47CB978@<X0>(uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47C89E8(v6);
  *a3 = sub_1E4877FAC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7B8, &qword_1E487E290);
  sub_1E47CBA6C(v6, a3 + *(v4 + 44));
}

uint64_t sub_1E47CBA6C@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7C0, &qword_1E487E298);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4877BEC();
  sub_1E47CBC28(a1, v9, v10);
  sub_1E4773850(v9, v7, &qword_1ECF7C7C0, &qword_1E487E298);
  sub_1E4773850(v7, a2, &qword_1ECF7C7C0, &qword_1E487E298);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7C8, &unk_1E487E2A0) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_1E47738B8(v9, &qword_1ECF7C7C0, &qword_1E487E298);
  sub_1E47738B8(v7, &qword_1ECF7C7C0, &qword_1E487E298);
}

uint64_t sub_1E47CBC28@<X0>(void *a1@<X0>, unint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for NarrowMultidayEventsView(0);
  v9 = *(v3 + v8[5]);
  v10 = *(v3 + v8[8]);
  v11 = *(v3 + v8[7]);
  v12 = sub_1E47C85C4();
  v13 = sub_1E47B98A8(v3, v9, a1, v11, v10, (v12 & 1) == 0, a3);
  swift_beginAccess();
  v14 = *(v13 + 4);
  v30 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
LABEL_17:
    v15 = sub_1E4878F0C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    v28 = a1;
    v29 = a2;
    v16 = 0;
    a1 = (v14 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6919650](v16, v14);
        a2 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          a2 = v29;
          v18 = v30;
          a1 = v28;
          goto LABEL_15;
        }
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        a2 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_12;
        }
      }

      v17 = sub_1E47B2FC4();

      sub_1E4844EC4(v17);
      ++v16;
      if (a2 == v15)
      {
        goto LABEL_13;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v19 = sub_1E4878DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E487A7E0;
  v21 = sub_1E47AFC68();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1E478B950(v21, v22, v24);
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_1E478E80C();
  v25 = sub_1E4878E4C();
  sub_1E4877AAC(v19, &dword_1E475C000, v25, "NarrowEventLayout - Building view from model: %@", 48, 2, v20);

  *a2 = sub_1E4877FBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7D0, &unk_1E487E2B0);
  sub_1E47AC108(v13, a1, v4, a2 + *(v26 + 44));

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7C0, &qword_1E487E298);
  *(a2 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_1E47CBEC8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E47CC188(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowMultidayEventsView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E47CBFC8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1E47CC02C;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E47CBFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NarrowMultidayEventsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47CC02C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for NarrowMultidayEventsView(0);

  return sub_1E47CB978(a2);
}

uint64_t sub_1E47CC0AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;

      sub_1E48628B0(&v4, v3);

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1E47CC10C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1E47CC16C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1E477A484(a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1E47CC188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47CC1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47CC250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E47CC2B8()
{
  result = qword_1EE2B1618;
  if (!qword_1EE2B1618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C7F0, &qword_1E487E418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1618);
  }

  return result;
}

uint64_t type metadata accessor for Event(uint64_t a1)
{
  result = qword_1EE2B48B0;
  if (!qword_1EE2B48B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47CC390(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EKLocationRoutingMode(319);
    if (v2 <= 0x3F)
    {
      sub_1E4780174(319, &qword_1EE2B0E20, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1E47CC50C(319, &qword_1EE2B4660, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          sub_1E47CC50C(319, qword_1EE2B1778, type metadata accessor for Location);
          if (v5 <= 0x3F)
          {
            sub_1E4780174(319, &unk_1EE2B41E0, &type metadata for CustomImage);
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

void sub_1E47CC50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4878E5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Event.AppearanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Event.AppearanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E47CC6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7C7F8;
  if (!qword_1ECF7C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C7F8);
  }

  return result;
}

uint64_t sub_1E47CC708()
{
  v1 = type metadata accessor for Event(0);
  if (*(v0 + *(v1 + 52)) == 1)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v2 = *(v0 + *(v1 + 56));
  if (v2 == 4)
  {
    if (qword_1EE2B4848 == -1)
    {
LABEL_9:
      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1E487A7E0;
      v5 = *v0;
      v4 = v0[1];
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1E478B950(v3, v6, v7);
      *(v3 + 32) = v5;
      *(v3 + 40) = v4;

      v8 = sub_1E4878BAC();

      return v8;
    }

LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  if (v2 == 3)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v8 = *v0;
  v10 = v0[1];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
  }

  else
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    return sub_1E48771EC();
  }

  return v8;
}

uint64_t sub_1E47CC9E8(uint64_t result)
{
  if (result > 3u)
  {
    if (result > 5u)
    {
      if (result == 6)
      {
        if (qword_1EE2B4848 == -1)
        {
          return sub_1E48771EC();
        }
      }

      else if (qword_1EE2B4848 == -1)
      {
        return sub_1E48771EC();
      }
    }

    else if (result == 4)
    {
      if (qword_1EE2B4848 == -1)
      {
        return sub_1E48771EC();
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
      return sub_1E48771EC();
    }

    goto LABEL_23;
  }

  if (result > 1u)
  {
    if (result == 2)
    {
      if (qword_1EE2B4848 == -1)
      {
        return sub_1E48771EC();
      }
    }

    else if (qword_1EE2B4848 == -1)
    {
      return sub_1E48771EC();
    }

    goto LABEL_23;
  }

  if (!result)
  {
    return result;
  }

  if (qword_1EE2B4848 != -1)
  {
LABEL_23:
    swift_once();
  }

  return sub_1E48771EC();
}

uint64_t sub_1E47CCD88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v133 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = v107 - v4;
  v118 = sub_1E487719C();
  v116 = *(v118 - 1);
  v5 = MEMORY[0x1EEE9AC00](v118);
  v117 = (v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v112 = v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C810, &qword_1E487E588);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v115 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = (v107 - v11);
  v12 = sub_1E487732C();
  v126 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v120 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v107 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v107 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v107 - v21;
  v23 = type metadata accessor for Event(0);
  v124 = *(v23 - 1);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v24 + 60);
  v28 = type metadata accessor for Location(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v123 = v27;
  v111 = v28;
  v110 = v30;
  v109 = v29 + 56;
  v30(v26 + v27, 1, 1);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1E48776BC();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v31 = v22;
  v32 = v20;
  v33 = v12;
  sub_1E487768C();
  sub_1E47CED0C(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v34 = sub_1E4878ADC();
  v127 = v23;
  if (v34)
  {
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *v26 = sub_1E487766C();
    v26[1] = v35;
    v36 = *(v126 + 16);
    v37 = v26 + v23[5];
    v119 = v31;
    v120 = (v126 + 16);
    v108 = v36;
    v36(v37, v31, v12);
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_1E487760C();
    *(v26 + v23[7]) = v38;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v26 + v23[8]) = sub_1E487764C();
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v39 = sub_1E48776FC();
    v114 = v12;
    v122 = v20;
    if (!v39)
    {
      v39 = sub_1E487865C();
    }

    *(v26 + v23[9]) = v39;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_1E48776DC();
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v26 + v23[12]) = sub_1E48776AC() & 1;
    v40 = type metadata accessor for Utils();
    v41 = sub_1E486C438(a1);
    v42 = (v26 + v23[16]);
    *v42 = v41;
    v42[1] = v43;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v26 + v23[13]) = sub_1E487763C() & 1;
    v44 = a1[3];
    v45 = a1[4];
    v46 = __swift_project_boxed_opaque_existential_0(a1, v44);
    *(v26 + v23[14]) = sub_1E486A348(v46, v40, v44, v45);
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v26 + v23[17]) = sub_1E48776EC() & 1;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v26 + v23[18]) = sub_1E487762C() & 1;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    *(v26 + v23[19]) = sub_1E48775FC() & 1;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v48 = sub_1E4878E5C();
    v107[1] = v107;
    v49 = *(v48 - 8);
    MEMORY[0x1EEE9AC00](v48);
    v51 = v107 - v50;
    sub_1E487769C();
    v52 = *(AssociatedTypeWitness - 8);
    if ((*(v52 + 48))(v51, 1, AssociatedTypeWitness) == 1)
    {
      (*(v49 + 8))(v51, v48);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v131 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(&v129);
      (*(v52 + 32))();
      v53 = sub_1E48775CC();
      v54 = v81;
      __swift_destroy_boxed_opaque_existential_1(&v129);
    }

    v82 = v127;
    v83 = (v26 + v127[10]);
    *v83 = v53;
    v83[1] = v54;
    v84 = v122;
    v85 = v114;
    v108(v26 + v82[6], v122, v114);
    v128 = 0;
    sub_1E4877A9C();
    sub_1E47A1524(a1, &v129);
    v86 = v121;
    sub_1E4877A8C();
    sub_1E47738B8(&v129, &qword_1ECF7C818, &qword_1E487E590);
    v87 = v128;
    v88 = v115;
    sub_1E4773850(v86, v115, &qword_1ECF7C810, &qword_1E487E588);
    v89 = v116;
    v90 = v118;
    if ((*(v116 + 48))(v88, 1, v118) == 1)
    {
      sub_1E47738B8(v86, &qword_1ECF7C810, &qword_1E487E588);
      v91 = *(v126 + 8);
      v91(v84, v85);
      v91(v119, v85);
      sub_1E47738B8(v88, &qword_1ECF7C810, &qword_1E487E588);
    }

    else
    {
      v94 = v112;
      v95 = v88;
      v96 = *(v89 + 32);
      v96(v112, v95, v90);
      (*(v89 + 16))(v117, v94, v90);
      if (v87)
      {
        v129 = 0;
        v130 = 0;
        v97 = v87;
        sub_1E4878BCC();

        (*(v89 + 8))(v94, v90);
        sub_1E47738B8(v121, &qword_1ECF7C810, &qword_1E487E588);
        v98 = *(v126 + 8);
        v99 = v114;
        v98(v122, v114);
        v98(v119, v99);
        v100 = v130;
        if (v130)
        {
          v101 = v129;
        }

        else
        {
          v101 = 0;
        }
      }

      else
      {
        (*(v89 + 8))(v94, v90);
        sub_1E47738B8(v121, &qword_1ECF7C810, &qword_1E487E588);
        v102 = *(v126 + 8);
        v103 = v114;
        v102(v122, v114);
        v102(v119, v103);
        v101 = 0;
        v100 = 0;
      }

      v104 = v113;
      v96(v113, v117, v90);
      v105 = (v104 + *(v111 + 20));
      *v105 = v101;
      v105[1] = v100;
      v110(v104, 0, 1);
      sub_1E47A14B4(v104, v26 + v123);
    }

    v106 = v125;
    sub_1E47707EC(v26, v125);
    (*(v124 + 56))(v106, 0, 1, v127);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E47CED54(v26, type metadata accessor for Event);
  }

  else
  {
    v121 = v26;
    v55 = v126;
    if (qword_1ECF7B660 != -1)
    {
      swift_once();
    }

    v56 = sub_1E4877ADC();
    __swift_project_value_buffer(v56, qword_1ECF7EA80);
    v57 = *(v55 + 16);
    v57(v17, v32, v33);
    v58 = v120;
    v57(v120, v31, v33);
    sub_1E47A1524(a1, &v129);
    v59 = sub_1E4877ABC();
    v60 = sub_1E4878DCC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v119 = v31;
      v62 = v61;
      v118 = swift_slowAlloc();
      v128 = v118;
      *v62 = 136446722;
      sub_1E47CED0C(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v117 = v59;
      v63 = sub_1E48790CC();
      v122 = v32;
      v65 = v64;
      v116 = *(v55 + 8);
      (v116)(v17, v33);
      v66 = sub_1E47A0DEC(v63, v65, &v128);
      LODWORD(v126) = v60;
      v67 = v125;

      *(v62 + 4) = v66;
      *(v62 + 12) = 2082;
      v68 = v120;
      v69 = sub_1E48790CC();
      v71 = v70;
      v72 = v116;
      (v116)(v68, v33);
      v73 = sub_1E47A0DEC(v69, v71, &v128);

      *(v62 + 14) = v73;
      *(v62 + 22) = 2080;
      __swift_project_boxed_opaque_existential_0(&v129, v131);
      v74 = sub_1E487765C();
      v76 = v75;
      __swift_destroy_boxed_opaque_existential_1(&v129);
      v77 = sub_1E47A0DEC(v74, v76, &v128);

      *(v62 + 24) = v77;
      v78 = v117;
      _os_log_impl(&dword_1E475C000, v117, v126, "Could not create event because event end date (%{public}s is before it's start date (%{public}s, event_id = %s", v62, 0x20u);
      v79 = v118;
      swift_arrayDestroy();
      MEMORY[0x1E6919FE0](v79, -1, -1);
      MEMORY[0x1E6919FE0](v62, -1, -1);

      v72(v122, v33);
      v72(v119, v33);
      v80 = v127;
    }

    else
    {

      v92 = *(v55 + 8);
      v92(v58, v33);
      v92(v17, v33);
      v92(v32, v33);
      v92(v31, v33);
      __swift_destroy_boxed_opaque_existential_1(&v129);
      v80 = v127;
      v67 = v125;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1E47738B8(v121 + v123, &qword_1ECF7C048, &qword_1E487C5F0);
    return (*(v124 + 56))(v67, 1, 1, v80);
  }
}