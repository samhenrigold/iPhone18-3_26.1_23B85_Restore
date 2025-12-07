uint64_t outlined copy of AttributedString.AttributeRunBoundaries?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t specialized Rope.subscript.getter(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result == a7)
  {
    if (!a3)
    {
      return specialized Rope._Node.subscript.getter(a2, a4);
    }

    v7 = *(a3 + 24 * ((a2 >> ((4 * *(a3 + 18) + 8) & 0x3C)) & 0xF) + 24);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Rope._Node.copy()(uint64_t a1)
{
  v2 = *(a1 + 18);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMR);
    v3 = swift_allocObject();
    *(v3 + 18) = v2;
    v4 = *(a1 + 16);
    *(v3 + 16) = v4;
    v5 = v3 + 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV5_NodeVy10Foundation16AttributedStringV01_B3RunV_GMd, &_s19CollectionsInternal4RopeV5_NodeVy10Foundation16AttributedStringV01_B3RunV_GMR);
    result = swift_arrayInitWithCopy();
    v7 = 0;
    v8 = 0;
    v9 = 24 * v4;
    while (v9)
    {
      v10 = *(v5 + 8);
      v11 = __OFADD__(v8, v10);
      v8 += v10;
      if (v11)
      {
        __break(1u);
        return result;
      }

      v12 = *(v5 + 16);
      v5 += 24;
      v9 -= 24;
      v11 = __OFADD__(v7, v12);
      v7 += v12;
      if (v11)
      {
        __break(1u);
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
    v3 = swift_allocObject();
    *(v3 + 18) = 0;
    v13 = *(a1 + 16);
    *(v3 + 16) = v13;
    v14 = (v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV5_ItemVy10Foundation16AttributedStringV01_B3RunV_GMd, &_s19CollectionsInternal4RopeV5_ItemVy10Foundation16AttributedStringV01_B3RunV_GMR);
    swift_arrayInitWithCopy();
    v15 = 0;
    v16 = 24 * v13;
    while (v16)
    {
      v17 = *v14;
      v14 += 3;
      v16 -= 24;
      v11 = __OFADD__(v15, v17);
      v15 += v17;
      if (v11)
      {
        __break(1u);
        return v3;
      }
    }
  }

  return v3;
}

uint64_t specialized Rope.formIndex(before:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result != a5)
  {
    goto LABEL_11;
  }

  v5 = *(result + 8);
  if (!a2)
  {
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (*(a2 + 18) >= v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

LABEL_4:
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *(result + 8);
    v8 = (4 * *(v6 + 18) + 8) & 0x3C;
    if (((v7 >> v8) & 0xF) != 0)
    {
      *(result + 8) = ((((v7 >> v8) & 0xF) - 1) << v8) | ((-15 << v8) - 1) & v7;
      return result;
    }
  }

  result = specialized Rope._Node.formPredecessor(of:)(result, a2);
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t static Calendar.autoupdatingCurrent.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _CalendarAutoupdating();
  inited = swift_initStaticObject();
  result = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating, &protocol conformance descriptor for _CalendarAutoupdating);
  *a1 = inited;
  a1[1] = result;
  return result;
}

uint64_t (*AttributedString._InternalRunsSlice.updateEach(with:)(uint64_t (*result)(__int128 *, uint64_t, uint64_t, char *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5))(__int128 *, uint64_t, uint64_t, char *)
{
  v192 = result;
  v6 = a3[9];
  v7 = a3[11];
  if (v6)
  {
    v8 = a3[11];
  }

  else
  {
    v8 = 0;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v9 = a4;
    if (v8 >= a4)
    {
      v10 = a5;
      v11 = a3;
      v198 = (a3 + 9);
      v12 = a3[12];
      v200 = a3[10];
      if (!v6 || ((v5 = (v6 + 16), v13 = *(v6 + 16), *(v6 + 16)) ? (v14 = v7 <= a4) : (v14 = 1), v14))
      {
        v15 = swift_unknownObjectRetain();
        result = specialized Rope._endPath.getter(v15);
        v16 = result;
        v17 = 0;
        v18 = 0;
        v201 = result;
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_13;
      }

      v193 = a3[12];
      v20 = *(v6 + 18);
      result = swift_unknownObjectRetain_n();
      if (!v20)
      {
        v12 = 0;
        v21 = v9;
        result = v6;
        goto LABEL_31;
      }

      LODWORD(v10) = v7;
      v21 = v9;
      v12 = v20;
      v22 = v6;
      while (1)
      {
        v23 = *v5;
        if (*v5)
        {
          break;
        }

        v28 = v21;
LABEL_26:
        if (v28)
        {
          goto LABEL_300;
        }

        v21 = 0;
LABEL_17:
        v12 = (v23 << ((4 * v20 + 8) & 0x3C)) | ((-15 << ((4 * v20 + 8) & 0x3C)) - 1) & v12;
        v24 = *(v22 + 3 * v23 + 3);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        result = v24;
        v5 = (v24 + 16);
        LOBYTE(v20) = *(result + 18);
        v22 = result;
        if (!v20)
        {
          v13 = *v5;
          if (*v5)
          {
            v9 = a4;
LABEL_31:
            v29 = 0;
            v30 = 24;
            v18 = v21;
            v31 = v13;
            while (1)
            {
              v32 = *(result + v30);
              v33 = v18 - v32;
              if (__OFSUB__(v18, v32))
              {
                goto LABEL_298;
              }

              if (__OFADD__(v33, 1))
              {
                goto LABEL_299;
              }

              if (v33 + 1 < 1)
              {
                break;
              }

              ++v29;
              v30 += 24;
              v18 -= v32;
              if (v13 == v29)
              {
                if (!v33)
                {
                  goto LABEL_37;
                }

LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
                goto LABEL_275;
              }
            }

            v31 = v29;
          }

          else
          {
LABEL_272:
            v31 = 0;
            v9 = a4;
            LODWORD(v7) = v10;
            if (v21)
            {
              goto LABEL_273;
            }

LABEL_37:
            v18 = 0;
          }

          v5 = result;
          result = swift_unknownObjectRelease();
          v17 = v5;
          v16 = (v12 & 0xFFFFFFFFFFFFF0FFLL | (v31 << 8));
          v10 = a5;
          v11 = a3;
          v12 = v193;
          v201 = v16;
          if (!v6)
          {
LABEL_40:
            v19 = v17;
            v199 = 0;
            goto LABEL_41;
          }

LABEL_13:
          v19 = v17;
          v199 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v12, v16, v17, v6, v200);
          result = swift_unknownObjectRelease();
LABEL_41:
          v34 = v9 - v18;
          v35 = v198;
          if (__OFSUB__(v9, v18))
          {
            __break(1u);
            goto LABEL_44;
          }

          while (2)
          {
            v6 = *v35;
            v200 = v34;
            if (v9 == v10)
            {
              if (v6)
              {
                v41 = v11[11];
                if (v41 < v9)
                {
                  goto LABEL_297;
                }

                v190 = v19;
                v42 = v11[10];
                v43 = v11[12];
                v44 = (v6 + 16);
                v45 = *(v6 + 16);
                v21 = *(v6 + 18);
                if (*(v6 + 16))
                {
                  v46 = v41 <= v9;
                }

                else
                {
                  v46 = 1;
                }

                v193 = v12;
                v189 = v43;
                if (!v46)
                {
                  v188 = v42;
                  result = swift_unknownObjectRetain_n();
                  if (!v21)
                  {
                    v50 = 0;
                    v12 = v6;
LABEL_77:
                    v57 = 0;
                    v58 = 24;
                    v48 = v9;
                    v59 = v45;
                    v35 = v198;
                    while (1)
                    {
                      v60 = *(v12 + v58);
                      v9 = v48 - v60;
                      if (__OFSUB__(v48, v60))
                      {
                        goto LABEL_276;
                      }

                      if (__OFADD__(v9, 1))
                      {
                        goto LABEL_277;
                      }

                      if (v9 + 1 < 1)
                      {
                        goto LABEL_85;
                      }

                      ++v57;
                      v58 += 24;
                      v48 -= v60;
                      if (v59 == v57)
                      {
                        v57 = v59;
                        goto LABEL_83;
                      }
                    }
                  }

                  v50 = v21;
                  v51 = v6;
                  do
                  {
                    v52 = *v44;
                    if (*v44)
                    {
                      v53 = 0;
                      v54 = (v51 + 40);
                      while (1)
                      {
                        v55 = *v54;
                        v54 += 3;
                        v56 = v9 - v55;
                        if (__OFSUB__(v9, v55))
                        {
                          break;
                        }

                        if (__OFADD__(v56, 1))
                        {
                          goto LABEL_267;
                        }

                        if (v56 + 1 < 1)
                        {
                          v52 = v53;
                          goto LABEL_63;
                        }

                        ++v53;
                        v9 = v56;
                        if (v52 == v53)
                        {
                          goto LABEL_72;
                        }
                      }

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
                      goto LABEL_272;
                    }

                    v56 = v9;
LABEL_72:
                    if (v56)
                    {
                      goto LABEL_278;
                    }

                    v9 = 0;
LABEL_63:
                    v50 = (v52 << ((4 * v21 + 8) & 0x3C)) | ((-15 << ((4 * v21 + 8) & 0x3C)) - 1) & v50;
                    v12 = *(v51 + 24 + 24 * v52);
                    swift_unknownObjectRetain();
                    result = swift_unknownObjectRelease();
                    v44 = (v12 + 16);
                    v21 = *(v12 + 18);
                    v51 = v12;
                  }

                  while (*(v12 + 18));
                  LODWORD(v45) = *v44;
                  if (*v44)
                  {
                    goto LABEL_77;
                  }

                  v57 = 0;
                  v35 = v198;
LABEL_83:
                  if (!v9)
                  {
                    v48 = 0;
LABEL_85:
                    swift_unknownObjectRelease();
                    v47 = v50 & 0xFFFFFFFFFFFFF0FFLL | (v57 << 8);
                    v9 = a4;
                    v42 = v188;
                    goto LABEL_86;
                  }

                  goto LABEL_313;
                }

                v47 = ((-15 << ((4 * v21 + 8) & 0x3C)) - 1) & v21 | (v45 << ((4 * v21 + 8) & 0x3C));
                swift_unknownObjectRetain();
                v48 = 0;
                v12 = 0;
                v35 = v198;
LABEL_86:
                specialized Rope._Node.distanceFromStart<A>(to:in:)(v189, v47, v12, v6, v42);
                result = swift_unknownObjectRelease();
                v12 = v193;
                v19 = v190;
                v34 = v200;
              }

              else
              {
                if (v9 > 0)
                {
                  goto LABEL_309;
                }

                v48 = 0;
              }

              v49 = v9 - v48;
              if (__OFSUB__(v9, v48))
              {
                goto LABEL_292;
              }

              v11 = a3;
            }

            else if (v6)
            {
              v49 = v11[11];
            }

            else
            {
              v49 = 0;
            }

            if (v34 >= v49)
            {
              return result;
            }

            if (v12 != v11[12])
            {
              goto LABEL_279;
            }

            if (v19)
            {
              v61 = v9;
              v62 = v19;
              v63 = (v19 + 24 * ((v201 >> ((4 * *(v19 + 18) + 8) & 0x3C)) & 0xF));
              v65 = v63[4];
              v64 = v63[5];
              v66 = v63[3];
              v67 = v34 + v66;
              v68 = __OFADD__(v34, v66);
              v69 = v34;

              if (v68)
              {
                goto LABEL_290;
              }

              v70 = v12;
              *&v211 = v65;
              *(&v211 + 1) = v64;
              v71 = v61;
              v14 = v69 < v61;
              v35 = v198;
              v72 = v69;
              v73 = v61;
              v74 = a5;
              if (!v14)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v62 = 0;
              v93 = v11[9];
              swift_unknownObjectRetain();
              specialized Rope._Node.subscript.getter(v201, v93);
              v95 = v94;
              v97 = v96;
              result = swift_unknownObjectRelease();
              if (v12 != v11[12])
              {
                goto LABEL_294;
              }

              v70 = v12;
              v98 = v11[9];
              swift_unknownObjectRetain();
              v99 = specialized Rope._Node.subscript.getter(v201, v98);
              swift_unknownObjectRelease();

              v72 = v200;
              v100 = __OFADD__(v200, v99);
              v67 = v200 + v99;
              if (v100)
              {
                goto LABEL_295;
              }

              *&v211 = v95;
              *(&v211 + 1) = v97;
              v73 = a4;
              v71 = a4;
              v11 = a3;
              v74 = a5;
              if (v200 >= a4)
              {
LABEL_97:
                if (v72 >= v74)
                {
                  v71 = v74;
                }

                else
                {
                  v71 = v72;
                }
              }
            }

            if (v67 <= v73)
            {
              v75 = v73;
            }

            else
            {
              v75 = v67;
            }

            if (v67 <= v74)
            {
              v76 = v75;
            }

            else
            {
              v76 = v74;
            }

            if (v71 == v76)
            {
              goto LABEL_280;
            }

            v210 = 1;
            if (v71 == v72 && v76 == v67)
            {
              if (v70 != v11[12])
              {
                goto LABEL_293;
              }

              if (!*v35)
              {
                goto LABEL_323;
              }

              specialized Rope._Node._prepareModify(at:)(v201, &v212);
              v227[0] = v213;
              v207 = v212;
              v208 = v213;
              v209 = v214;
              outlined destroy of TermOfAddress?(v227, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
              result = outlined destroy of TermOfAddress?(v227 + 8, &_sShySSGMd, &_sShySSGMR);
              v208 = MEMORY[0x1E69E7CC8];
              v77 = v70 + 1;
              v11[12] = v70 + 1;
              if (!v11[9])
              {
                goto LABEL_324;
              }

              specialized Rope._Node._finalizeModify(_:)(&v204, &v207);

              result = v192(&v211, v200, v67, &v210);
              if (v210)
              {
                if (v77 != v11[12])
                {
                  goto LABEL_304;
                }

                if (!*v35)
                {
                  goto LABEL_326;
                }

                specialized Rope._Node._prepareModify(at:)(v201, &v215);
                v224 = v216;
                v225 = v217;
                outlined destroy of TermOfAddress?(&v224, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
                outlined destroy of TermOfAddress?(&v225, &_sShySSGMd, &_sShySSGMR);
                v207 = v215;
                v209 = v218;
                v78 = *(&v211 + 1);
                result = v211;
                v208 = v211;
                v11[12] = v70 + 2;
                if (!v11[9])
                {
                  goto LABEL_327;
                }

                v194 = result;

                v79 = specialized Rope._Node._finalizeModify(_:)(v203, &v207);

                v80 = v79;
                v81 = v11[9];
                v82 = v11[12];
                *&v207 = v70 + 2;
                *(&v207 + 1) = v201;
                *&v208 = v79;
                if (v70 + 2 != v82)
                {
                  goto LABEL_305;
                }

                v83 = v70 + 2;
                if (v81)
                {
                  v84 = ((-15 << ((4 * *(v81 + 18) + 8) & 0x3C)) - 1) & *(v81 + 18) | (*(v81 + 16) << ((4 * *(v81 + 18) + 8) & 0x3C));
                  result = swift_unknownObjectRetain();
                  v80 = v79;
                }

                else
                {
                  v84 = 0;
                }

                v74 = a5;
                if (v201 >= v84)
                {
                  goto LABEL_306;
                }

                v107 = v201;
                v191 = v78;
                v112 = (4 * *(v80 + 18) + 8) & 0x3C;
                v113 = ((v201 >> v112) & 0xF) + 1;
                v114 = v80;
                if (v113 >= *(v80 + 8))
                {
                  v119 = v198;
                  if (specialized Rope._Node.formSuccessor(of:)(&v207, v81))
                  {
                    result = swift_unknownObjectRelease();
                    v115 = *(&v207 + 1);
                    v118 = v208;
                    v117 = v207;
                    v116 = v83;
                  }

                  else
                  {
                    v115 = specialized Rope._endPath.getter(v81);
                    v116 = v83;
                    result = swift_unknownObjectRelease();
                    v118 = 0;
                    *&v207 = v83;
                    v117 = v83;
                  }
                }

                else
                {
                  v115 = (v113 << v112) | ((-15 << v112) - 1) & v201;
                  result = swift_unknownObjectRelease();
                  v116 = v83;
                  v117 = v83;
                  v118 = v114;
                  v119 = v198;
                }

                v122 = v114;
                v123 = *v119;
                if (!*v119)
                {
                  v127 = 0;
                  goto LABEL_197;
                }

                if (v115 >= (((-15 << ((4 * *(v123 + 18) + 8) & 0x3C)) - 1) & *(v123 + 18) | (*(v123 + 16) << ((4 * *(v123 + 18) + 8) & 0x3C))))
                {
                  goto LABEL_195;
                }

                if (v117 != v11[12])
                {
                  goto LABEL_314;
                }

                if (v118)
                {
                  v124 = &v118[3 * ((v115 >> ((4 * *(v118 + 18) + 8) & 0x3C)) & 0xF)];
                  v125 = v124[4];
                  v126 = v124[5];
                }

                else
                {
                  specialized Rope._Node.subscript.getter(v115, v123);
                  v125 = v133;
                  v126 = v134;
                }

                if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v125, v194))
                {
                  v135 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v126, v191);

                  if (v135)
                  {
                    v107 = specialized Rope._remove(at:)(&v207, v116, v201);
                    v136 = v11[12];
                    if (v107 < specialized Rope._endPath.getter(v11[9]))
                    {
                      specialized Rope._Node.unmanagedLeaf(at:)(v107, v11[9]);
                    }

                    v137 = v207;

                    if (v136 != v11[12])
                    {
                      goto LABEL_321;
                    }

                    if (!*v119)
                    {
                      goto LABEL_332;
                    }

                    result = specialized Rope._Node._prepareModify(at:)(v107, v219);
                    v207 = v219[0];
                    v208 = v219[1];
                    v209 = v219[2];
                    if (__OFADD__(*(&v219[0] + 1), v137))
                    {
                      goto LABEL_322;
                    }

                    *(&v207 + 1) = *(&v219[0] + 1) + v137;
                    v116 = v136 + 1;
                    v11[12] = v136 + 1;
                    if (!v11[9])
                    {
                      goto LABEL_331;
                    }

                    v138 = specialized Rope._Node._finalizeModify(_:)(v203, &v207);

                    v122 = v138;
LABEL_195:
                    v127 = *v119;
                    if (*v119)
                    {
                      v127 = *(v127 + 18);
                    }

LABEL_197:
                    if (v127 >= v107)
                    {
                      v62 = v122;
                      v70 = v116;
                    }

                    else
                    {
                      v139 = v119;
                      v140 = v107;
                      v141 = v11[9];
                      v142 = v11[10];
                      v143 = v11[11];
                      v144 = a3[12];
                      *&v207 = v116;
                      *(&v207 + 1) = v140;
                      v145 = v140;
                      v62 = v122;
                      *&v208 = v122;
                      swift_unknownObjectRetain();
                      v146 = v144;
                      v11 = a3;
                      specialized Rope.formIndex(before:)(&v207, v141, v142, v143, v146);
                      swift_unknownObjectRelease();
                      specialized Rope.subscript.getter(v207, *(&v207 + 1), v208, v11[9], v11[10], v11[11], v11[12]);
                      v148 = v147;
                      if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v149, v194))
                      {
                        v150 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v148, v191);

                        if (v150)
                        {
                          v151 = v145;
                          v152 = v139;
                          v153 = specialized Rope._remove(at:)(&v207, v116, v151);
                          v154 = a3[12];
                          if (v153 >= specialized Rope._endPath.getter(a3[9]))
                          {
                            v155 = 0;
                          }

                          else
                          {
                            v155 = specialized Rope._Node.unmanagedLeaf(at:)(v153, a3[9]);
                          }

                          v204 = v154;
                          v205 = v153;
                          v206 = v155;
                          v156 = v207;

                          v157 = a3[9];
                          v158 = a3[10];
                          v159 = a3[11];
                          v160 = a3[12];
                          swift_unknownObjectRetain();
                          specialized Rope.formIndex(before:)(&v204, v157, v158, v159, v160);
                          result = swift_unknownObjectRelease();
                          v161 = v204;
                          if (v204 != a3[12])
                          {
                            goto LABEL_317;
                          }

                          if (!*v152)
                          {
                            goto LABEL_329;
                          }

                          v107 = v205;
                          result = specialized Rope._Node._prepareModify(at:)(v205, v220);
                          v207 = v220[0];
                          v208 = v220[1];
                          v209 = v220[2];
                          if (__OFSUB__(v200, *(&v220[0] + 1)))
                          {
                            goto LABEL_318;
                          }

                          if (__OFADD__(*(&v220[0] + 1), v156))
                          {
                            goto LABEL_319;
                          }

                          v200 -= *(&v220[0] + 1);
                          *(&v207 + 1) = *(&v220[0] + 1) + v156;
                          v70 = v161 + 1;
                          a3[12] = v161 + 1;
                          if (!a3[9])
                          {
                            goto LABEL_330;
                          }

                          v62 = specialized Rope._Node._finalizeModify(_:)(v203, &v207);

                          if (__OFSUB__(v199, 1))
                          {
                            goto LABEL_320;
                          }

                          v74 = a5;
                          --v199;
                        }

                        else
                        {
                          v70 = v116;
                          v107 = v145;
                        }
                      }

                      else
                      {
                        v70 = v116;

                        v107 = v145;
                      }
                    }

LABEL_213:

                    v162 = v11[9];
                    v163 = v11[12];
                    *&v207 = v70;
                    *(&v207 + 1) = v107;
                    *&v208 = v62;
                    v100 = __OFADD__(v199++, 1);
                    if (v100)
                    {
                      goto LABEL_282;
                    }

                    if (v70 != v163)
                    {
                      goto LABEL_283;
                    }

                    if (v62)
                    {
                      v164 = v62[3 * ((v107 >> ((4 * *(v62 + 18) + 8) & 0x3C)) & 0xF) + 3];
                      v165 = v200 + v164;
                      if (__OFADD__(v200, v164))
                      {
                        goto LABEL_291;
                      }

                      if (!v162)
                      {
                        goto LABEL_281;
                      }

                      result = swift_unknownObjectRetain();
                    }

                    else
                    {
                      swift_unknownObjectRetain();
                      v166 = specialized Rope._Node.subscript.getter(v107, v162);

                      v165 = v200 + v166;
                      if (__OFADD__(v200, v166))
                      {
                        goto LABEL_296;
                      }

                      if (!v162)
                      {
                        goto LABEL_281;
                      }
                    }

                    if (v107 >= (((-15 << ((4 * *(v162 + 18) + 8) & 0x3C)) - 1) & *(v162 + 18) | (*(v162 + 16) << ((4 * *(v162 + 18) + 8) & 0x3C))))
                    {
                      goto LABEL_281;
                    }

                    v167 = v74;
                    if (v62)
                    {
                      v168 = v107;
                      v169 = (4 * *(v62 + 18) + 8) & 0x3C;
                      v170 = ((v107 >> v169) & 0xF) + 1;
                      if (v170 < *(v62 + 8))
                      {
                        result = swift_unknownObjectRelease();
                        v171 = (v170 << v169) | ((-15 << v169) - 1) & v168;
                        goto LABEL_227;
                      }
                    }

                    if (specialized Rope._Node.formSuccessor(of:)(&v207, v162))
                    {
                      result = swift_unknownObjectRelease();
                      v171 = *(&v207 + 1);
LABEL_227:
                      v201 = v171;
                    }

                    else
                    {
                      v172 = *(v162 + 18);
                      v173 = *(v162 + 16);
                      result = swift_unknownObjectRelease();
                      *&v207 = v70;
                      *(&v207 + 1) = ((-15 << ((4 * v172 + 8) & 0x3C)) - 1) & v172 | (v173 << ((4 * v172 + 8) & 0x3C));
                      v201 = *(&v207 + 1);
                      *&v208 = 0;
                    }

                    v10 = v167;
                    v12 = v207;
                    v19 = v208;
                    v34 = v165;
                    v14 = v165 < v167;
                    v9 = a4;
                    v11 = a3;
                    v35 = v198;
                    if (!v14)
                    {
                      v5 = *v198;
                      if (a4 == v10)
                      {
                        v12 = a3[12];
                        if (v5)
                        {
                          v6 = a3[11];
                          if (v6 < a4)
                          {
                            goto LABEL_310;
                          }

                          v193 = a3[12];
                          v12 = a3[10];
                          v174 = (v5 + 16);
                          v9 = *(v5 + 8);
                          v7 = *(v5 + 18);
                          if (*(v5 + 8) && v6 > a4)
                          {
                            result = swift_unknownObjectRetain_n();
                            if (!v7)
                            {
                              v175 = 0;
                              v21 = a4;
                              result = v5;
LABEL_256:
                              v35 = v198;
                              v183 = 0;
                              v184 = 24;
                              v37 = v21;
                              v185 = v9;
                              v9 = a4;
                              while (1)
                              {
                                v186 = *(result + v184);
                                v21 = v37 - v186;
                                if (__OFSUB__(v37, v186))
                                {
                                  goto LABEL_286;
                                }

                                if (__OFADD__(v21, 1))
                                {
                                  goto LABEL_287;
                                }

                                if (v21 + 1 < 1)
                                {
                                  goto LABEL_264;
                                }

                                ++v183;
                                v184 += 24;
                                v37 -= v186;
                                if (v185 == v183)
                                {
                                  v183 = v185;
                                  goto LABEL_262;
                                }
                              }
                            }

                            v21 = a4;
                            v175 = v7;
                            v176 = v5;
                            LODWORD(v10) = -15;
                            do
                            {
                              v177 = *v174;
                              if (*v174)
                              {
                                v179 = 0;
                                v180 = (v176 + 40);
                                while (1)
                                {
                                  v181 = *v180;
                                  v180 += 3;
                                  v182 = v21 - v181;
                                  if (__OFSUB__(v21, v181))
                                  {
                                    goto LABEL_270;
                                  }

                                  if (__OFADD__(v182, 1))
                                  {
                                    goto LABEL_271;
                                  }

                                  if (v182 + 1 < 1)
                                  {
                                    v177 = v179;
                                    goto LABEL_238;
                                  }

                                  ++v179;
                                  v21 = v182;
                                  if (v177 == v179)
                                  {
                                    goto LABEL_247;
                                  }
                                }
                              }

                              v182 = v21;
LABEL_247:
                              if (v182)
                              {
                                goto LABEL_289;
                              }

                              v21 = 0;
LABEL_238:
                              v175 = (v177 << ((4 * v7 + 8) & 0x3C)) | ((-15 << ((4 * v7 + 8) & 0x3C)) - 1) & v175;
                              v178 = *(v176 + 3 * v177 + 3);
                              swift_unknownObjectRetain();
                              swift_unknownObjectRelease();
                              result = v178;
                              v174 = (v178 + 16);
                              LOBYTE(v7) = *(result + 18);
                              v176 = result;
                            }

                            while (v7);
                            LODWORD(v9) = *v174;
                            if (*v174)
                            {
                              goto LABEL_256;
                            }

                            v183 = 0;
                            v9 = a4;
                            v35 = v198;
LABEL_262:
                            if (!v21)
                            {
                              v37 = 0;
LABEL_264:
                              v187 = result;
                              swift_unknownObjectRelease();
                              v38 = v187;
                              v36 = v175 & 0xFFFFFFFFFFFFF0FFLL | (v183 << 8);
                              v10 = a5;
                              v11 = a3;
                              goto LABEL_45;
                            }

                            goto LABEL_316;
                          }

LABEL_44:
                          v36 = ((-15 << ((4 * v7 + 8) & 0x3C)) - 1) & v7 | (v9 << ((4 * v7 + 8) & 0x3C));
                          swift_unknownObjectRetain();
                          v37 = 0;
                          v38 = 0;
                          v9 = a4;
                          v35 = v198;
LABEL_45:
                          v201 = v36;
                          v39 = v36;
                          v19 = v38;
                          v40 = v12;
                          v12 = v193;
                          v199 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v193, v39, v38, v5, v40);
                          result = swift_unknownObjectRelease();
                          v34 = v9 - v37;
                          if (__OFSUB__(v9, v37))
                          {
                            goto LABEL_308;
                          }
                        }

                        else
                        {
                          if (a4 > 0)
                          {
                            goto LABEL_312;
                          }

                          v19 = 0;
                          v201 = 0;
                          v199 = 0;
                          v34 = a4;
                        }
                      }

                      else
                      {
                        v34 = 0;
                        v199 = 0;
                        v19 = 0;
                        v201 = 0;
                        v12 = a3[12];
                        if (v5)
                        {
                          v19 = 0;
                          v199 = a3[10];
                          v34 = a3[11];
                          v201 = ((-15 << ((4 * *(v5 + 18) + 8) & 0x3C)) - 1) & *(v5 + 18) | (*(v5 + 8) << ((4 * *(v5 + 18) + 8) & 0x3C));
                        }
                      }
                    }

                    continue;
                  }
                }

                else
                {
                }

                v107 = v201;
                v122 = v114;
                goto LABEL_195;
              }

              if (v77 != v11[12])
              {
                goto LABEL_303;
              }

              if (!*v35)
              {
                goto LABEL_328;
              }

              specialized Rope._Node._prepareModify(at:)(v201, &v221);
              v226 = v222;
              v207 = v221;
              v208 = v222;
              v209 = v223;
              v108 = v211;

              outlined destroy of TermOfAddress?(&v226, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMR);
              result = outlined destroy of TermOfAddress?(&v226 + 8, &_sShySSGMd, &_sShySSGMR);
              v208 = v108;
              v11[12] = v70 + 2;
              if (!v11[9])
              {
                goto LABEL_325;
              }

              v70 += 2;
              v62 = specialized Rope._Node._finalizeModify(_:)(&v204, &v207);

              v107 = v201;
            }

            else
            {
              result = v192(&v211, v71, v76, &v210);
              if ((v210 & 1) == 0)
              {
                v107 = v201;
                goto LABEL_213;
              }

              if (__OFSUB__(v76, v71))
              {
                goto LABEL_301;
              }

              result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v71, v76, v76 - v71, v211, *(&v211 + 1));
              v85 = v11[9];
              v6 = v11[11];
              if (v85)
              {
                v86 = v11[11];
              }

              else
              {
                v86 = 0;
              }

              v87 = v200;
              if (v200 < 0 || v86 < v200)
              {
                goto LABEL_302;
              }

              v88 = v11[12];
              if (v85)
              {
                v193 = v11[12];
                v89 = (v85 + 16);
                v12 = *(v85 + 16);
                v90 = *(v85 + 18);
                v202 = v11[10];
                if (*(v85 + 16) && v200 < v6)
                {
                  result = swift_unknownObjectRetain_n();
                  LODWORD(v10) = -15;
                  if (!v90)
                  {
                    v91 = 0;
                    v21 = v200;
                    result = v85;
LABEL_170:
                    v128 = 0;
                    v129 = 24;
                    v109 = v21;
                    v88 = v193;
                    while (1)
                    {
                      v130 = *(result + v129);
                      v21 = v109 - v130;
                      if (__OFSUB__(v109, v130))
                      {
                        goto LABEL_284;
                      }

                      if (__OFADD__(v21, 1))
                      {
                        goto LABEL_285;
                      }

                      if (v21 + 1 < 1)
                      {
                        goto LABEL_178;
                      }

                      ++v128;
                      v129 += 24;
                      v109 -= v130;
                      if (v12 == v128)
                      {
                        v128 = v12;
                        goto LABEL_176;
                      }
                    }
                  }

                  v21 = v200;
                  v91 = v90;
                  v92 = v85;
                  do
                  {
                    v101 = *v89;
                    if (*v89)
                    {
                      v103 = 0;
                      v104 = (v92 + 40);
                      while (1)
                      {
                        v105 = *v104;
                        v104 += 3;
                        v106 = v21 - v105;
                        if (__OFSUB__(v21, v105))
                        {
                          goto LABEL_268;
                        }

                        if (__OFADD__(v106, 1))
                        {
                          goto LABEL_269;
                        }

                        if (v106 + 1 < 1)
                        {
                          v101 = v103;
                          goto LABEL_136;
                        }

                        ++v103;
                        v21 = v106;
                        if (v101 == v103)
                        {
                          goto LABEL_145;
                        }
                      }
                    }

                    v106 = v21;
LABEL_145:
                    if (v106)
                    {
                      goto LABEL_288;
                    }

                    v21 = 0;
LABEL_136:
                    v91 = (v101 << ((4 * v90 + 8) & 0x3C)) | ((-15 << ((4 * v90 + 8) & 0x3C)) - 1) & v91;
                    v102 = *(v92 + 3 * v101 + 3);
                    swift_unknownObjectRetain();
                    swift_unknownObjectRelease();
                    result = v102;
                    v89 = (v102 + 16);
                    LOBYTE(v90) = *(result + 18);
                    v92 = result;
                  }

                  while (v90);
                  LODWORD(v12) = *v89;
                  if (*v89)
                  {
                    goto LABEL_170;
                  }

                  v128 = 0;
                  v88 = v193;
LABEL_176:
                  if (!v21)
                  {
                    v109 = 0;
LABEL_178:
                    v131 = result;
                    swift_unknownObjectRelease();
                    v121 = v131;
                    v120 = v91 & 0xFFFFFFFFFFFFF0FFLL | (v128 << 8);
                    v11 = a3;
                    goto LABEL_179;
                  }

                  goto LABEL_315;
                }

                v120 = ((-15 << ((4 * v90 + 8) & 0x3C)) - 1) & v90 | (v12 << ((4 * v90 + 8) & 0x3C));
                swift_unknownObjectRetain();
                v109 = 0;
                v121 = 0;
                v88 = v193;
LABEL_179:
                v110 = v120;
                v62 = v121;
                v111 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v88, v120, v121, v85, v202);
                result = swift_unknownObjectRelease();
                v87 = v200;
              }

              else
              {
                v109 = 0;
                v62 = 0;
                v110 = 0;
                v111 = 0;
              }

              v100 = __OFSUB__(v87, v109);
              v132 = v87 - v109;
              if (v100)
              {
                goto LABEL_307;
              }

              v199 = v111;
              v200 = v132;
              v70 = v88;
              v107 = v110;
            }

            break;
          }

          v74 = a5;
          goto LABEL_213;
        }
      }

      v25 = 0;
      v26 = (v22 + 40);
      while (1)
      {
        v27 = *v26;
        v26 += 3;
        v28 = v21 - v27;
        if (__OFSUB__(v21, v27))
        {
          goto LABEL_274;
        }

        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v28 + 1 < 1)
        {
          v23 = v25;
          goto LABEL_17;
        }

        ++v25;
        v21 = v28;
        if (v23 == v25)
        {
          goto LABEL_26;
        }
      }

LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
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
    }
  }

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
  return result;
}

uint64_t specialized Rope._Node.distanceFromStart<A>(to:in:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + 16;
  v6 = *(a4 + 16);
  v7 = *(a4 + 18);
  v8 = 4 * v7;
  v9 = (a2 >> ((4 * v7 + 8) & 0x3C)) & 0xF;
  if (v9 > v6)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v9 == v6)
  {
    v7 = -1;
    v5 = ~(-1 << (v8 & 0x3C));
    if ((a2 & (v5 << 8)) == 0)
    {
      return a5;
    }

    __break(1u);
  }

  if (v7)
  {
    v10 = a4 + 24;
    v11 = result;
    v14 = specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(0, v9, v5, a4 + 24);
    v15 = (v10 + 24 * v9);
    v16 = *v15;
    v17 = v15[1];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v11, a2, a3, v16, v17);
    result = swift_unknownObjectRelease();
    if (!__OFADD__(v14, v18))
    {
      swift_unknownObjectRelease();
      return v14 + v18;
    }

    goto LABEL_13;
  }

  return specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(0, v9);
}

uint64_t specialized Rope._Node._prepareModify(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_isUniquelyReferenced_nonNull();
  v6 = *v2;
  if ((result & 1) == 0)
  {
    v7 = specialized Rope._Node.copy()(*v2);
    v9 = v8;
    v11 = v10;
    result = swift_unknownObjectRelease();
    *v2 = v7;
    v2[1] = v9;
    v6 = v7;
    v2[2] = v11;
  }

  if (((a1 >> ((4 * *(v6 + 18) + 8) & 0x3C)) & 0xF) >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    if (*(v6 + 18))
    {
      swift_unknownObjectRetain();
      specialized Rope._Node._prepareModify(at:)(a1, v18);
      a1 = v18[0];
      v12 = v18[1];
      v17 = v19;
      v14 = v20;
      v13 = v21;
      result = swift_unknownObjectRelease();
      v15 = v17;
    }

    else
    {
      v16 = v6 + 24 + 24 * ((a1 >> ((4 * *(v6 + 18) + 8) & 0x3C)) & 0xF);
      v13 = *v16;
      v15 = *(v16 + 8);
      v14 = 1;
      v12 = *v16;
    }

    *a2 = a1;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 32) = v14;
    *(a2 + 40) = v13;
  }

  return result;
}

uint64_t AttributedString.Guts.setAttributeValue<A>(_:forKey:in:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v32[-v13];
  v15 = *(v11 + 16);
  v15(&v32[-v13], a1, AssociatedTypeWitness, v12);
  v36[3] = AssociatedTypeWitness;
  v36[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (v15)(boxed_opaque_existential_0, v14, AssociatedTypeWitness);
  (*(a5 + 32))(v43, a4, a5);
  v37 = v43[0];
  v38 = (*(a5 + 40))(a4, a5) & 1;
  v17 = (*(a5 + 48))(a4, a5);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v39 = v17;
  v18 = (*(a5 + 24))(a4, a5);
  v20 = v19;
  v21 = *(v6 + 40);
  v43[0] = *(v6 + 24);
  v43[1] = v21;
  v43[2] = *(v6 + 56);
  swift_unknownObjectRetain();
  v22 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v23 = *(v6 + 40);
  v40 = *(v6 + 24);
  v41 = v23;
  v42 = *(v6 + 56);
  swift_unknownObjectRetain();
  v24 = v6;
  v25 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v26 = v22 >> 11;
  v27 = v25 >> 11;
  v33 = v18;
  v34 = v20;
  v35 = v36;
  AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:), v32, v24, v22 >> 11, v27);

  v28 = *(&v37 + 1);
  if (*(&v37 + 1) != 1)
  {
    v29 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_181218E20;
    *(v30 + 32) = v29;
    *(v30 + 40) = v28;
    outlined copy of AttributedString.AttributeRunBoundaries?(v29, v28);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v26, v27, 0, v30);
  }

  return outlined destroy of AttributedString._AttributeValue(v36);
}

void *specialized Rope._Node._finalizeModify(_:)(void *result, void *a2)
{
  v3 = v2;
  v5 = result;
  v6 = *v2;
  if (*(*v2 + 18))
  {
    swift_unknownObjectRetain();
    v7 = specialized Rope._Node._finalizeModify(_:)(v26, a2);
    v8 = v26[0];
    v9 = v26[1];
    result = swift_unknownObjectRelease();
    v10 = v3[1];
    v11 = __OFADD__(v10, v8);
    v12 = v10 + v8;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v3[1] = v12;
      v13 = v3[2];
      v11 = __OFADD__(v13, v9);
      v14 = v13 + v9;
      if (!v11)
      {
        v3[2] = v14;
        v6 = v7;
        *v5 = v8;
        v5[1] = v9;
        return v6;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v15 = a2[4];
  v11 = __OFSUB__(1, v15);
  v16 = 1 - v15;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = a2[1];
  v18 = a2[5];
  v11 = __OFSUB__(v17, v18);
  v19 = v17 - v18;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = (v6 + 24 * ((*a2 >> ((4 * *(*v2 + 18) + 8) & 0x3C)) & 0xFLL));
  result = a2[2];
  v21 = a2[3];
  v20[3] = v17;
  v20[4] = result;
  v20[5] = v21;
  v22 = v3[1];
  v11 = __OFADD__(v22, v16);
  v23 = v22 + v16;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3[1] = v23;
  v24 = v3[2];
  v11 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (!v11)
  {
    v3[2] = v25;
    *v5 = v16;
    v5[1] = v19;

    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

char *closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of AttributedString._AttributeValue(a7, v94);
  outlined init with copy of FloatingPointRoundingRule?(v94, &v89, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
  if (!*(&v90 + 1))
  {
    goto LABEL_6;
  }

  v87[2] = v91;
  v87[3] = v92;
  v88 = v93;
  v87[0] = v89;
  v87[1] = v90;
  outlined init with copy of AttributedString._AttributeValue(v87, v85);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  v84 = *a1;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v14;
  if (*(v12 + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = v12;
LABEL_12:
      if (v7)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_16:
    v77 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
    v37 = static _DictionaryStorage.copy(original:)();
    v19 = v37;
    if (*(v12 + 16))
    {
      result = (v37 + 64);
      v39 = (v12 + 64);
      v40 = ((1 << *(v19 + 32)) + 63) >> 6;
      if (v19 != v12 || result >= &v39[8 * v40])
      {
        result = memmove(result, v39, 8 * v40);
      }

      v41 = 0;
      *(v19 + 16) = *(v12 + 16);
      v42 = 1 << *(v12 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v12 + 64);
      v45 = (v42 + 63) >> 6;
      if (v44)
      {
        do
        {
          v46 = __clz(__rbit64(v44));
          v82 = (v44 - 1) & v44;
LABEL_29:
          v49 = v46 | (v41 << 6);
          v50 = 16 * v49;
          v51 = (*(v12 + 48) + 16 * v49);
          v78 = v51[1];
          v80 = *v51;
          v52 = 72 * v49;
          outlined init with copy of AttributedString._AttributeValue(*(v12 + 56) + 72 * v49, &v89);
          v53 = (*(v19 + 48) + v50);
          *v53 = v80;
          v53[1] = v78;
          v54 = *(v19 + 56) + v52;
          *v54 = v89;
          v55 = v90;
          v56 = v91;
          v57 = v92;
          *(v54 + 64) = v93;
          *(v54 + 32) = v56;
          *(v54 + 48) = v57;
          *(v54 + 16) = v55;

          v44 = v82;
        }

        while (v82);
      }

      v47 = v41;
      while (1)
      {
        v41 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v41 >= v45)
        {
          goto LABEL_31;
        }

        v48 = *(v12 + 64 + 8 * v41);
        ++v47;
        if (v48)
        {
          v46 = __clz(__rbit64(v48));
          v82 = (v48 - 1) & v48;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_31:

    v13 = v77;
    if (v7)
    {
LABEL_13:
      v30 = *(v19 + 56) + 72 * v13;
      v89 = *v30;
      v31 = *(v30 + 16);
      v32 = *(v30 + 32);
      v33 = *(v30 + 48);
      v93 = *(v30 + 64);
      v91 = v32;
      v92 = v33;
      v90 = v31;
      v34 = v85[1];
      v35 = v85[2];
      v36 = v85[3];
      *(v30 + 64) = v86;
      *(v30 + 32) = v35;
      *(v30 + 48) = v36;
      *v30 = v85[0];
      *(v30 + 16) = v34;
      outlined destroy of AttributedString._AttributeValue(v87);
      goto LABEL_33;
    }

LABEL_32:
    specialized _NativeDictionary._insert(at:key:value:)(v13, a5, a6, v85, v19);

    outlined destroy of AttributedString._AttributeValue(v87);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0;
    goto LABEL_33;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v19 = v84;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  if ((v7 & 1) == (v20 & 1))
  {
    goto LABEL_12;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_6:

  outlined destroy of TermOfAddress?(&v89, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  if ((v22 & 1) == 0)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
LABEL_34:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(a5, a6, &v89, v94);
    outlined destroy of TermOfAddress?(v94, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    outlined destroy of TermOfAddress?(&v89, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
  }

  v23 = v21;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  if (v24)
  {
    v19 = *a1;
LABEL_9:

    v26 = *(v19 + 56) + 72 * v23;
    v89 = *v26;
    v28 = *(v26 + 32);
    v27 = *(v26 + 48);
    v29 = *(v26 + 64);
    v90 = *(v26 + 16);
    v91 = v28;
    v93 = v29;
    v92 = v27;
    specialized _NativeDictionary._delete(at:)(v23, v19);
LABEL_33:
    *a1 = v19;
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
  v58 = static _DictionaryStorage.copy(original:)();
  v19 = v58;
  if (!*(v25 + 16))
  {
LABEL_50:

    goto LABEL_9;
  }

  result = (v58 + 64);
  v59 = ((1 << *(v19 + 32)) + 63) >> 6;
  if (v19 != v25 || result >= v25 + 64 + 8 * v59)
  {
    result = memmove(result, (v25 + 64), 8 * v59);
  }

  v60 = 0;
  *(v19 + 16) = *(v25 + 16);
  v61 = 1 << *(v25 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = (v61 + 63) >> 6;
  v64 = v62 & *(v25 + 64);
  if (v64)
  {
    do
    {
      v65 = __clz(__rbit64(v64));
      v83 = (v64 - 1) & v64;
LABEL_48:
      v68 = v65 | (v60 << 6);
      v69 = 16 * v68;
      v70 = (*(v25 + 48) + 16 * v68);
      v79 = v70[1];
      v81 = *v70;
      v71 = 72 * v68;
      outlined init with copy of AttributedString._AttributeValue(*(v25 + 56) + 72 * v68, &v89);
      v72 = (*(v19 + 48) + v69);
      *v72 = v81;
      v72[1] = v79;
      v73 = *(v19 + 56) + v71;
      *v73 = v89;
      v74 = v90;
      v75 = v91;
      v76 = v92;
      *(v73 + 64) = v93;
      *(v73 + 32) = v75;
      *(v73 + 48) = v76;
      *(v73 + 16) = v74;

      v64 = v83;
    }

    while (v83);
  }

  v66 = v60;
  while (1)
  {
    v60 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v60 >= v63)
    {
      goto LABEL_50;
    }

    v67 = *(v25 + 64 + 8 * v60);
    ++v66;
    if (v67)
    {
      v65 = __clz(__rbit64(v67));
      v83 = (v67 - 1) & v67;
      goto LABEL_48;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t AttributedString.Guts.findRun(at:)@<X0>(unint64_t result@<X0>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5[9];
  v8 = result >> 11;
  if (v7)
  {
    v9 = v5[11];
  }

  else
  {
    v9 = 0;
  }

  if (v9 < v8)
  {
    goto LABEL_51;
  }

  v10 = a4;
  v11 = v5[10];
  v12 = v5[12];
  v44 = a5;
  v45 = v12;
  if (!v7 || ((v13 = (v7 + 16), LODWORD(v14) = *(v7 + 16), v8 < v5[11]) ? (v15 = v14 == 0) : (v15 = 1), v15))
  {
    v16 = swift_unknownObjectRetain();
    v17 = v11;
    result = specialized Rope._endPath.getter(v16);
    v18 = result;
    v19 = 0;
    v20 = 0;
    if (!v7)
    {
      goto LABEL_41;
    }

    goto LABEL_12;
  }

  v42 = a4;
  v43 = result >> 11;
  v30 = *(v7 + 18);
  result = swift_unknownObjectRetain_n();
  if (v30)
  {
    v41 = v11;
    v10 = v43;
    v21 = v30;
    v31 = v7;
    do
    {
      v32 = *v13;
      if (*v13)
      {
        v33 = 0;
        v34 = (v31 + 40);
        while (1)
        {
          v35 = *v34;
          v34 += 3;
          v36 = v10 - v35;
          if (__OFSUB__(v10, v35))
          {
            goto LABEL_46;
          }

          if (__OFADD__(v36, 1))
          {
            goto LABEL_47;
          }

          if ((v36 + 1) < 1)
          {
            break;
          }

          ++v33;
          v10 = v36;
          if (v32 == v33)
          {
            goto LABEL_27;
          }
        }

        v32 = v33;
      }

      else
      {
        v36 = v10;
LABEL_27:
        if (v36)
        {
          goto LABEL_50;
        }

        v10 = 0;
      }

      v21 = (v32 << ((4 * v30 + 8) & 0x3C)) | ((-15 << ((4 * v30 + 8) & 0x3C)) - 1) & v21;
      v19 = *(v31 + 24 + 24 * v32);
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      v13 = (v19 + 16);
      LOBYTE(v30) = *(v19 + 18);
      v31 = v19;
    }

    while (v30);
    LODWORD(v14) = *v13;
    if (!*v13)
    {
      goto LABEL_44;
    }

    v8 = v43;
    v11 = v41;
  }

  else
  {
    v21 = 0;
    v8 = v43;
    v10 = v43;
    v19 = v7;
  }

  v37 = 0;
  v38 = 24;
  v20 = v10;
  v14 = v14;
  do
  {
    v39 = *(v19 + v38);
    v40 = v20 - v39;
    if (__OFSUB__(v20, v39))
    {
      goto LABEL_48;
    }

    if (__OFADD__(v40, 1))
    {
      goto LABEL_49;
    }

    if (v40 + 1 < 1)
    {
      v17 = v11;
      v14 = v37;
      goto LABEL_40;
    }

    ++v37;
    v38 += 24;
    v20 -= v39;
  }

  while (v14 != v37);
  if (v40)
  {
LABEL_45:
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
    goto LABEL_52;
  }

  while (1)
  {
    v17 = v11;
    v20 = 0;
LABEL_40:
    result = swift_unknownObjectRelease();
    v18 = v21 & 0xFFFFFFFFFFFFF0FFLL | (v14 << 8);
    v10 = v42;
    v12 = v45;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v21 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v12, v18, v19, v7, v17);
    result = swift_unknownObjectRelease();
    v22 = v8 - v20;
    if (!__OFSUB__(v8, v20))
    {
      goto LABEL_13;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v14 = 0;
    v8 = v43;
    v11 = v41;
    if (v10)
    {
      goto LABEL_45;
    }
  }

LABEL_41:
  v21 = 0;
  v22 = v8 - v20;
  if (__OFSUB__(v8, v20))
  {
    goto LABEL_43;
  }

LABEL_13:
  if (!__OFSUB__(0, v20))
  {
    swift_unknownObjectRetain();
    v23 = BigString.UTF8View.index(_:offsetBy:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    result = swift_unknownObjectRelease();
    *v44 = v45;
    v44[1] = v18;
    v44[2] = v19;
    v44[3] = v21;
    v44[4] = v22;
    v44[5] = v23;
    v44[6] = v25;
    v44[7] = v27;
    v44[8] = v29;
    return result;
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

uint64_t closure #1 in _loadDefaultAttributes()@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18121D6C0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  *(inited + 64) = 0xD000000000000037;
  *(inited + 72) = 0x80000001814808B0;
  *(inited + 80) = 0xD00000000000003FLL;
  *(inited + 88) = 0x80000001814808F0;
  *(inited + 96) = 0xD00000000000003BLL;
  *(inited + 104) = 0x8000000181480930;
  *(inited + 112) = 0xD00000000000003CLL;
  *(inited + 120) = 0x8000000181480970;
  *(inited + 128) = 0xD000000000000040;
  *(inited + 136) = 0x80000001814809B0;
  *(inited + 144) = 0xD000000000000040;
  *(inited + 152) = 0x8000000181480A00;

  v12 = specialized Sequence.compactMap<A>(_:)(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  result = swift_arrayDestroy();
  *a6 = v12;
  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 56;
  v17 = MEMORY[0x1E69E7CC0];
  v16 = result + 56;
LABEL_2:
  v4 = (v3 + 32 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v17;
    }

    if (v1 >= v2)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v6 = *(v4 - 1);
    v7 = *v4;
    v8 = *(v4 - 3);
    v9 = *(v4 - 2);

    v10 = LoadedScopeCache.scopeType(for:in:)(v8, v9, v6, v7);
    v12 = v11;

    ++v1;
    v4 += 4;
    if (v10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v3 = v16;
      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v1 = v5;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t LoadedScopeCache.scopeType(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v9 = 0;
  v130 = *MEMORY[0x1E69E9840];
  v10 = *v4;
  if (*(*v4 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 16 * v11);
      if (v13)
      {
        return v13;
      }

      v14 = _dyld_image_count();
      if (*(v4 + 2) == v14)
      {
        return 0;
      }

      *(v4 + 2) = v14;
      v15 = *(v10 + 32);
      v120 = ((1 << v15) + 63) >> 6;
      if ((v15 & 0x3Fu) <= 0xD)
      {
        goto LABEL_7;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_7:
        MEMORY[0x1EEE9AC00](v14);
        v127 = (v117 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0));
        bzero(v127, v16);
        v13 = 0;
        v18 = 0;
        v19 = 1 << *(v10 + 32);
        v20 = -1;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        v21 = *(v10 + 64) & v20;
        v22 = (v19 + 63) >> 6;
        v23 = v127;
        while (1)
        {
          if (!v21)
          {
            v26 = v18;
            while (1)
            {
              v18 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v18 >= v22)
              {
                goto LABEL_21;
              }

              v27 = *(v10 + 64 + 8 * v18);
              ++v26;
              if (v27)
              {
                v21 = (v27 - 1) & v27;
                v25 = __clz(__rbit64(v27)) | (v18 << 6);
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_69;
          }

          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v25 = v24 | (v18 << 6);
LABEL_17:
          if (*(*(v10 + 56) + 16 * v25))
          {
            *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
            v28 = __OFADD__(v13++, 1);
            if (v28)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_21:
        if (!v13)
        {
          v13 = MEMORY[0x1E69E7CC8];
          goto LABEL_45;
        }

        if (v13 == *(v10 + 16))
        {

          v13 = v10;
LABEL_45:

          *v5 = v13;
          goto LABEL_46;
        }

        v117[1] = v117;
        v118 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMd, &_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMR);
        v126 = v13;
        v17 = static _DictionaryStorage.allocate(capacity:)();
        v13 = v17;
        v29 = 0;
        v30 = v127;
        v31 = *v127;
        v9 = v17 + 64;
        v119 = v8;
        while (v31)
        {
          v38 = v13;
          v39 = __clz(__rbit64(v31));
          v125 = (v31 - 1) & v31;
LABEL_35:
          v42 = 16 * (v39 | (v29 << 6));
          v43 = (*(v10 + 48) + v42);
          v44 = *v43;
          v45 = v43[1];
          v46 = (*(v10 + 56) + v42);
          v47 = *v46;
          v123 = v46[1];
          v124 = v47;
          Hasher.init(_seed:)();

          v121 = v45;
          v122 = v44;
          v13 = v38;
          String.hash(into:)();
          v17 = Hasher._finalize()();
          v48 = -1 << *(v38 + 32);
          v49 = v17 & ~v48;
          v50 = v49 >> 6;
          if (((-1 << v49) & ~*(v9 + 8 * (v49 >> 6))) == 0)
          {
            v51 = 0;
            v52 = (63 - v48) >> 6;
            v8 = v119;
            while (++v50 != v52 || (v51 & 1) == 0)
            {
              v53 = v50 == v52;
              if (v50 == v52)
              {
                v50 = 0;
              }

              v51 |= v53;
              v54 = *(v9 + 8 * v50);
              if (v54 != -1)
              {
                v32 = __clz(__rbit64(~v54)) + (v50 << 6);
                goto LABEL_27;
              }
            }

            goto LABEL_71;
          }

          v32 = __clz(__rbit64((-1 << v49) & ~*(v9 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
          v8 = v119;
LABEL_27:
          *(v9 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
          v33 = 16 * v32;
          v34 = (*(v13 + 48) + v33);
          v35 = v121;
          *v34 = v122;
          v34[1] = v35;
          v36 = (*(v13 + 56) + v33);
          v37 = v123;
          *v36 = v124;
          v36[1] = v37;
          ++*(v13 + 16);
          v30 = v127;
          --v126;
          v31 = v125;
          if (!v126)
          {
LABEL_44:
            v9 = v118;
            goto LABEL_45;
          }
        }

        v40 = v29;
        while (1)
        {
          v29 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v29 >= v120)
          {
            goto LABEL_44;
          }

          v41 = v30[v29];
          ++v40;
          if (v41)
          {
            v38 = v13;
            v39 = __clz(__rbit64(v41));
            v125 = (v41 - 1) & v41;
            goto LABEL_35;
          }
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v114 = swift_slowAlloc();

      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0K4TypeOG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk9Cache33_4mnopqr7ELLV0J4S4OTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAMIsgnndzo_Tf1nc_n(v114, v120, v10, closure #1 in LoadedScopeCache.scopeType(for:in:));
      v116 = v115;

      MEMORY[0x1865D2690](v114, -1, -1);

      *v5 = v116;
    }
  }

LABEL_46:
  v55 = String.utf8CString.getter();
  LOBYTE(v13) = v55;
  v56 = dlopen((v55 + 32), 16);

  if (!v56 || (v57 = String.utf8CString.getter(), LOBYTE(v13) = v57, v58 = dlsym(v56, (v57 + 32)), , !v58))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = *v5;
    a4 = v128;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    v70 = *(a4 + 16);
    v71 = (v69 & 1) == 0;
    v28 = __OFADD__(v70, v71);
    v72 = v70 + v71;
    if (v28)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    LOBYTE(v13) = v69;
    if (*(a4 + 24) >= v72)
    {
      goto LABEL_60;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, isUniquelyReferenced_nonNull_native);
    v67 = v128;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v13 & 1) == (v73 & 1))
    {
      goto LABEL_62;
    }

LABEL_59:
    v17 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_60:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_73;
    }

    v67 = a4;
LABEL_62:
    if ((v13 & 1) == 0)
    {
LABEL_89:
      specialized _NativeDictionary._insert(at:key:value:)(v17, v8, a2, 0, 0, v67);

      goto LABEL_90;
    }

LABEL_63:
    v74 = (*(v67 + 56) + 16 * v17);
    *v74 = 0;
    v74[1] = 0;
LABEL_90:
    v13 = 0;
    goto LABEL_108;
  }

  v59 = swift_conformsToProtocol2();
  if (v59)
  {
    v13 = v58;
  }

  else
  {
    v13 = 0;
  }

  if (v59)
  {
    a4 = v59;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *v5;
    v61 = v128;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    v63 = *(v61 + 16);
    v64 = (v62 & 1) == 0;
    v28 = __OFADD__(v63, v64);
    v65 = v63 + v64;
    if (v28)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      v118 = v9;
      v127 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMd, &_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMR);
      v76 = static _DictionaryStorage.copy(original:)();
      v67 = v76;
      if (*(a4 + 16))
      {
        v77 = (v76 + 64);
        v78 = a4 + 64;
        v79 = ((1 << *(v67 + 32)) + 63) >> 6;
        if (v67 != a4 || v77 >= v78 + 8 * v79)
        {
          memmove(v77, (a4 + 64), 8 * v79);
        }

        v80 = 0;
        *(v67 + 16) = *(a4 + 16);
        v81 = 1 << *(a4 + 32);
        v82 = *(a4 + 64);
        v83 = -1;
        if (v81 < 64)
        {
          v83 = ~(-1 << v81);
        }

        v84 = v83 & v82;
        v85 = (v81 + 63) >> 6;
        if ((v83 & v82) != 0)
        {
          do
          {
            v86 = __clz(__rbit64(v84));
            v84 &= v84 - 1;
LABEL_86:
            v89 = 16 * (v86 | (v80 << 6));
            v90 = (*(a4 + 48) + v89);
            v92 = *v90;
            v91 = v90[1];
            v93 = *(*(a4 + 56) + v89);
            v94 = (*(v67 + 48) + v89);
            *v94 = v92;
            v94[1] = v91;
            *(*(v67 + 56) + v89) = v93;
          }

          while (v84);
        }

        v87 = v80;
        while (1)
        {
          v80 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            __break(1u);
          }

          if (v80 >= v85)
          {
            break;
          }

          v88 = *(v78 + 8 * v80);
          ++v87;
          if (v88)
          {
            v86 = __clz(__rbit64(v88));
            v84 = (v88 - 1) & v88;
            goto LABEL_86;
          }
        }
      }

      v17 = v127;
      if ((v13 & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_63;
    }

    LOBYTE(isUniquelyReferenced_nonNull_native) = v62;
    if (*(v61 + 24) < v65)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v60);
      v67 = v128;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
      if ((isUniquelyReferenced_nonNull_native & 1) != (v68 & 1))
      {
        goto LABEL_59;
      }

LABEL_66:
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_67:
        v75 = (*(v67 + 56) + 16 * v17);
        *v75 = v13;
        v75[1] = a4;
LABEL_108:
        *v5 = v67;
        return v13;
      }

LABEL_107:
      specialized _NativeDictionary._insert(at:key:value:)(v17, v8, a2, v13, a4, v67);

      goto LABEL_108;
    }

    if (v60)
    {
      v67 = v61;
      goto LABEL_66;
    }

    v118 = v9;
    v126 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMd, &_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMR);
    v95 = static _DictionaryStorage.copy(original:)();
    v67 = v95;
    if (!*(v61 + 16))
    {
LABEL_106:

      v17 = v126;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_67;
      }

      goto LABEL_107;
    }

    v119 = v8;
    v96 = (v95 + 64);
    v97 = 1 << *(v67 + 32);
    v127 = (v61 + 64);
    v98 = (v97 + 63) >> 6;
    if (v67 != v61 || v96 >= &v127[v98])
    {
      memmove(v96, v127, 8 * v98);
    }

    v9 = 0;
    *(v67 + 16) = *(v61 + 16);
    v99 = 1 << *(v61 + 32);
    v100 = *(v61 + 64);
    v101 = -1;
    if (v99 < 64)
    {
      v101 = ~(-1 << v99);
    }

    v102 = v101 & v100;
    v103 = (v99 + 63) >> 6;
    if ((v101 & v100) != 0)
    {
      do
      {
        v104 = __clz(__rbit64(v102));
        v102 &= v102 - 1;
LABEL_104:
        v107 = 16 * (v104 | (v9 << 6));
        v108 = (*(v61 + 48) + v107);
        v110 = *v108;
        v109 = v108[1];
        v111 = *(*(v61 + 56) + v107);
        v112 = (*(v67 + 48) + v107);
        *v112 = v110;
        v112[1] = v109;
        *(*(v67 + 56) + v107) = v111;
      }

      while (v102);
    }

    v105 = v9;
    v8 = v119;
    while (1)
    {
      v9 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (v9 >= v103)
      {
        goto LABEL_106;
      }

      v106 = v127[v9];
      ++v105;
      if (v106)
      {
        v104 = __clz(__rbit64(v106));
        v102 = (v106 - 1) & v106;
        goto LABEL_104;
      }
    }

    __break(1u);
  }

  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v128 = 0x206C6F626D7953;
  v129 = 0xE700000000000000;
  MEMORY[0x1865CB0E0](v8, a2);
  MEMORY[0x1865CB0E0](0xD00000000000001ELL, 0x8000000181480A70);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  result = MEMORY[0x1865D2690](&v128, -1, -1);
  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySS10Foundation19AttributedStringKey_pXpGGMd, &_ss23_ContiguousArrayStorageCySDySS10Foundation19AttributedStringKey_pXpGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation19AttributedStringKey_pXpGMd, &_sSDySS10Foundation19AttributedStringKey_pXpGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_SE_p5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_SE_p5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SE_p5valuetMd, &_sSS3key_SE_p5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE17LocalizationValueV14FormatArgumentV07CodableC0OGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE17LocalizationValueV14FormatArgumentV07CodableC0OGMR);
  v10 = *(type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV16SearchStepResultV_AC14DateComponentsVtGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV16SearchStepResultV_AC14DateComponentsVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 312);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[39 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 312 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV16SearchStepResultV_AA14DateComponentsVtMd, &_s10Foundation8CalendarV16SearchStepResultV_AA14DateComponentsVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation20PredicateExpressionsO10VariableIDV_SStGMd, &_ss23_ContiguousArrayStorageCy10Foundation20PredicateExpressionsO10VariableIDV_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10VariableIDV_SStMd, &_s10Foundation20PredicateExpressionsO10VariableIDV_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSgGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSgMd, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMd, &_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Ss7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Ss7elementtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_Ss7elementtMd, &_sSi6offset_Ss7elementtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8NSStringC3key_10Foundation16JSONEncoderValueO5valuetGMd, &_ss23_ContiguousArrayStorageCySo8NSStringC3key_10Foundation16JSONEncoderValueO5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringC3key_10Foundation16JSONEncoderValueO5valuetMd, &_sSo8NSStringC3key_10Foundation16JSONEncoderValueO5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSgGMd, &_ss23_ContiguousArrayStorageCyypSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AG5valuetGMd, &_ss23_ContiguousArrayStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AG5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AE5valuetMd, &_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AE5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg_SStGMd, &_ss23_ContiguousArrayStorageCySSSg_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_SStMd, &_sSSSg_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySS_10Foundation10JSONFutureOtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation10JSONFutureOtGMR, &_sSS_10Foundation10JSONFutureOtMd, &_sSS_10Foundation10JSONFutureOtMR);
  *v3 = result;
  return result;
}

unint64_t specialized Rope._endPath.getter(unint64_t result)
{
  if (result)
  {
    return ((-15 << ((4 * *(result + 18) + 8) & 0x3C)) - 1) & *(result + 18) | (*(result + 16) << ((4 * *(result + 18) + 8) & 0x3C));
  }

  return result;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v7 + 32], v6 + 32, 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id String.init(localized:)(__int128 *a1)
{
  v2 = 0uLL;
  v3 = 256;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  return String.init(localized:options:)(a1, &v2);
}

uint64_t one-time initialization function for localizedStringLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, localizedStringLogger);
  __swift_project_value_buffer(v0, localizedStringLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::Void __swiftcall _NSSwiftCalendar.encode(with:)(NSCoder with)
{
  v3 = *&v1[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 32));
  v7 = v4;
  type metadata accessor for _CalendarAutoupdating();
  v6[0] = swift_initStaticObject();
  v6[1] = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating, &protocol conformance descriptor for _CalendarAutoupdating);
  LOBYTE(v3) = specialized static Calendar.== infix(_:_:)(&v7, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v3 & 1) == 0)
  {
    v5.receiver = v1;
    v5.super_class = type metadata accessor for _NSSwiftCalendar();
    objc_msgSendSuper2(&v5, sel_encodeWithCoder_, with.super.isa);
  }
}

uint64_t _NSSwiftCalendar.classForCoder.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v1 + 32));
  v5 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  v7 = v5;
  type metadata accessor for _CalendarAutoupdating();
  v6[0] = swift_initStaticObject();
  v6[1] = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating, &protocol conformance descriptor for _CalendarAutoupdating);
  LOBYTE(v1) = specialized static Calendar.== infix(_:_:)(&v7, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = &lazy cache variable for type metadata for _NSAutoCalendar;
    v3 = off_1E69EEC60;
  }

  else
  {
    v2 = &lazy cache variable for type metadata for NSCalendar;
    v3 = 0x1E695DEE8;
  }

  return type metadata accessor for NSMorphologyPronoun(0, v2, v3);
}

unint64_t StringProtocol.components(separatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v8 = *v7;
  (*(v9 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v5);
  v10 = Substring.init<A>(_:)();
  v17 = v8;
  v14 = Substring._components(separatedBy:)(&v17, v10, v11, v12, v13);

  return v14;
}

unint64_t Substring._components(separatedBy:)(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3 >> 14;
  v7 = MEMORY[0x1E69E7CC0];
  if (a2 >> 14 >= a3 >> 14)
  {
    v5 = a2;
    if (v6 >= a2 >> 14)
    {
LABEL_37:
      v33 = Substring.subscript.getter();
      v5 = MEMORY[0x1865CAE80](v33);
      v6 = v34;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
    v8 = *a1;
    v9 = a2;
    v10 = a2 >> 14;
    v39 = a3 >> 14;
    while (v6 >= v10)
    {
      v11 = Substring.subscript.getter();
      v14 = v13;
      if ((v11 ^ v15) < 0x4000)
      {

        v5 = v9;
        if (v6 >= v10)
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

      v16 = v11;
      v5 = v12;
      v40 = v7;

      v6 = Substring.UnicodeScalarView.index(before:)();
      if ((v14 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v17 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v18 = Substring.UnicodeScalarView.subscript.getter();
      v7 = v16;
      if (!CFCharacterSetIsLongCharacterMember(*(v8 + 16), v18))
      {
        v7 = v16;
        while ((v7 ^ v6) >> 14)
        {
          v7 = _StringGuts.validateInclusiveScalarIndex(_:)(v7, v5, v14) >> 16;
          if (v7 >= v17)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x1000000000000000) != 0)
          {
            v7 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v14 & 0x2000000000000000) != 0)
            {
              v41[0] = v5;
              v41[1] = v14 & 0xFFFFFFFFFFFFFFLL;
              v30 = *(v41 + v7);
            }

            else
            {
              v29 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((v5 & 0x1000000000000000) == 0)
              {
                v29 = _StringObject.sharedUTF8.getter();
              }

              v30 = *(v29 + v7);
            }

            v31 = v30;
            v32 = __clz(v30 ^ 0xFF) - 24;
            if (v31 >= 0)
            {
              LOBYTE(v32) = 1;
            }

            v7 = ((v7 + v32) << 16) | 5;
          }

          v28 = Substring.UnicodeScalarView.subscript.getter();
          if (CFCharacterSetIsLongCharacterMember(*(v8 + 16), v28))
          {
            goto LABEL_9;
          }
        }

LABEL_35:
        v5 = v9;
        v19 = v10;
        v7 = v40;
        v6 = v39;
LABEL_36:
        if (v6 < v19)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

LABEL_9:
      v5 = Substring.UnicodeScalarView.index(after:)();

      v19 = v5 >> 14;
      v20 = v7 >> 14;
      if (v5 >> 14 < v7 >> 14)
      {
        goto LABEL_45;
      }

      if (v20 == v19)
      {
        goto LABEL_35;
      }

      if (v20 < v10)
      {
        goto LABEL_46;
      }

      v21 = Substring.subscript.getter();
      v22 = MEMORY[0x1865CAE80](v21);
      v24 = v23;

      v7 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40);
      }

      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      if (v26 >= v25 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v7);
      }

      *(v7 + 16) = v26 + 1;
      v27 = v7 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v9 = v5;
      v10 = v5 >> 14;
      v6 = v39;
      if (v19 >= v39)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
LABEL_38:
  v36 = *(v7 + 16);
  v35 = *(v7 + 24);
  if (v36 >= v35 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
  }

  *(v7 + 16) = v36 + 1;
  v37 = v7 + 16 * v36;
  *(v37 + 32) = v5;
  *(v37 + 40) = v6;
  return v7;
}

uint64_t _NSSwiftTimeZone.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  swift_unknownObjectRetain();
  v3(ObjectType, v1);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_lock);
  os_unfair_lock_lock((v4 + 32));
  partial apply for closure #1 in _NSSwiftTimeZone.data.getter((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 32));

  return v6;
}

uint64_t closure #1 in _NSSwiftTimeZone.data.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7 >> 60 != 15)
  {
    *a4 = v6;
    a4[1] = v7;
    return outlined copy of Data?(v6, v7);
  }

  v41 = v6;
  outlined consume of Data?(v6, v7);
  MEMORY[0x1865CB0E0](a2, a3);
  *&v37 = 11822;
  *(&v37 + 1) = 0xE200000000000000;
  v39 = 0xD00000000000001ALL;
  v40 = 0x80000001814805A0;
  if ((0x80000001814805A0 & 0x1000000000000000) == 0)
  {
    v16 = String.subscript.getter();
    v18 = v17;
    v20 = v19;
    v35 = v21;
    v22 = Substring.init<A>(_:)();
    if ((v16 ^ v18) < 0x4000 || (v22 ^ v23) >> 14 == 0)
    {

LABEL_15:
      *&v37 = 0xD00000000000001ALL;
      *(&v37 + 1) = 0x80000001814805A0;
      v38 = 0;
      v29 = readDataFromFile(path:reportProgress:maxLength:options:)(&v37, 1, 0, 1, 0);
      if (!v4)
      {
        v33 = v29;
        v34 = v30;
        outlined consume of PathOrURL(v37, *(&v37 + 1), v38);
        v32 = v34;
        v31 = v33;
        goto LABEL_20;
      }

      outlined consume of PathOrURL(v37, *(&v37 + 1), v38);
      v31 = 0;
LABEL_18:
      v32 = 0xC000000000000000;
LABEL_20:
      *a1 = v31;
      a1[1] = v32;
      *a4 = v31;
      a4[1] = v32;
      outlined copy of Data._Representation(v31, v32);
      v6 = v41;
      return outlined copy of Data?(v6, v7);
    }

    specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v22, v23, v24, v25, 0, 0, 0, 0, 0, v16, v18, v20, v35);
    v28 = v27;

    if (v28)
    {
      goto LABEL_15;
    }

LABEL_17:

    v31 = 0;
    goto LABEL_18;
  }

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v10 = String._bridgeToObjectiveCImpl()();

  v11 = String._bridgeToObjectiveCImpl()();

  v12 = [v10 rangeOfString_];
  v14 = v13;
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (!__OFADD__(v12, v14))
  {
    StringProtocol._toUTF16Indices(_:)();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

id @objc static NSTimeZone._timeZoneWith(name:data:)(uint64_t a1, uint64_t a2, void *a3, id a4)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  if (a4)
  {
    v8 = v5;
    v9 = a4;
    a4 = specialized Data.init(referencing:)(v9);
    v11 = v10;

    v5 = v8;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = specialized static NSTimeZone._timeZoneWith(name:data:)(v5, v7, a4, v11);
  outlined consume of Data?(a4, v11);

  return v12;
}

id specialized static NSTimeZone._timeZoneWith(name:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    if (one-time initialization token for cache != -1)
    {
      a1 = swift_once();
    }

    v4 = static TimeZoneCache.cache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v4 + 30);
    closure #1 in TimeZoneCache.bridgedFixed(_:)partial apply(v15);
    os_unfair_lock_unlock(v4 + 30);
    return *&v15[0];
  }

  else
  {
    v8 = outlined copy of Data._Representation(a3, a4);
    if (one-time initialization token for cache != -1)
    {
      v8 = swift_once();
    }

    v9 = static TimeZoneCache.cache;
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock(v9 + 30);
    partial apply for closure #1 in TimeZoneCache.fixed(_:)(v15);
    os_unfair_lock_unlock(v9 + 30);
    if (*&v15[0])
    {
      v13 = v15[0];
      v10 = type metadata accessor for _NSSwiftTimeZone();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____NSSwiftTimeZone_timeZone] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMR);
      v12 = swift_allocObject();
      *(v12 + 32) = 0;
      *(v12 + 16) = a3;
      *(v12 + 24) = a4;
      *&v11[OBJC_IVAR____NSSwiftTimeZone_lock] = v12;
      v14.receiver = v11;
      v14.super_class = v10;
      return objc_msgSendSuper2(&v14, sel_init);
    }

    else
    {
      outlined consume of Data?(a3, a4);
      return 0;
    }
  }
}

double Locale.init(components:)@<D0>(void *__src@<X0>, _OWORD *a2@<X8>)
{
  v3 = memcpy(v8, __src, sizeof(v8));
  if (one-time initialization token for cache != -1)
  {
    v3 = swift_once();
  }

  v4 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v4 + 12);
  partial apply for closure #1 in LocaleCache.fixedComponents(_:)(&v4[4], &v7);
  os_unfair_lock_unlock(v4 + 12);
  v6 = v7;
  outlined destroy of Locale.Components(v8);
  result = *&v6;
  *a2 = v6;
  return result;
}

BOOL specialized static Locale.Language.Components.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v49 = a1[4];
  v50 = a1[6];
  v41 = a1[9];
  v42 = a1[8];
  v43 = a1[10];
  v44 = a1[11];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v48 = a2[4];
  v46 = a1[7];
  v47 = a2[5];
  v11 = a2[7];
  v45 = a2[6];
  v40 = a2[9];
  if (!v2)
  {
    v37 = a2[10];
    v38 = a2[11];
    v39 = a2[8];
    outlined copy of Locale.LanguageCode?(v3, 0, v4, v5);
    if (!v7)
    {
      outlined copy of Locale.LanguageCode?(v8, 0, v10, v9);
      v2 = 0;
LABEL_16:
      outlined consume of Locale.LanguageCode?(v3, v2, v4, v5);
      if (!v6)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    outlined copy of Locale.LanguageCode?(v8, v7, v10, v9);
LABEL_8:
    outlined consume of Locale.LanguageCode?(v3, v2, v4, v5);
    v12 = v8;
    v13 = v7;
    v14 = v10;
    v15 = v9;
LABEL_33:
    outlined consume of Locale.LanguageCode?(v12, v13, v14, v15);
    return 0;
  }

  if (!v7)
  {
    outlined copy of Locale.LanguageCode?(v3, v2, v4, v5);
    outlined copy of Locale.LanguageCode?(v8, 0, v10, v9);
    outlined copy of Locale.LanguageCode?(v3, v2, v4, v5);

    goto LABEL_8;
  }

  v37 = a2[10];
  v38 = a2[11];
  v39 = a2[8];
  if (__PAIR128__(v5, v4) == __PAIR128__(v9, v10))
  {
    outlined copy of Locale.LanguageCode?(v3, v2, v4, v5);
    outlined copy of Locale.LanguageCode?(v8, v7, v4, v5);
    outlined copy of Locale.LanguageCode?(v3, v2, v4, v5);
    outlined consume of Locale.LanguageCode?(v8, v7, v4, v5);

    goto LABEL_16;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v3, v2, v4, v5);
  outlined copy of Locale.LanguageCode?(v8, v7, v10, v9);
  outlined copy of Locale.LanguageCode?(v3, v2, v4, v5);
  outlined consume of Locale.LanguageCode?(v8, v7, v10, v9);

  outlined consume of Locale.LanguageCode?(v3, v2, v4, v5);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
LABEL_17:
    v17 = v49;
    v16 = v50;
    v21 = v46;
    outlined copy of Locale.LanguageCode?(v49, 0, v50, v46);
    v19 = v47;
    v18 = v48;
    v20 = v11;
    if (v47)
    {
      v22 = v45;
      outlined copy of Locale.LanguageCode?(v48, v47, v45, v11);
LABEL_20:
      outlined consume of Locale.LanguageCode?(v17, v6, v16, v21);
      v12 = v18;
      v13 = v19;
      v14 = v22;
      v15 = v20;
      goto LABEL_33;
    }

    outlined copy of Locale.LanguageCode?(v48, 0, v45, v11);
    v6 = 0;
LABEL_28:
    outlined consume of Locale.LanguageCode?(v17, v6, v16, v21);
    v24 = v41;
    if (!v41)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_11:
  v17 = v49;
  v16 = v50;
  v19 = v47;
  v18 = v48;
  v20 = v11;
  v21 = v46;
  if (!v47)
  {
    outlined copy of Locale.LanguageCode?(v49, v6, v50, v46);
    v22 = v45;
    outlined copy of Locale.LanguageCode?(v48, 0, v45, v11);
    outlined copy of Locale.LanguageCode?(v49, v6, v50, v46);

    goto LABEL_20;
  }

  if (v50 == v45 && v46 == v11)
  {
    outlined copy of Locale.LanguageCode?(v49, v6, v50, v46);
    outlined copy of Locale.LanguageCode?(v48, v47, v50, v46);
    outlined copy of Locale.LanguageCode?(v49, v6, v50, v46);
    outlined consume of Locale.LanguageCode?(v48, v47, v50, v46);

    goto LABEL_28;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v49, v6, v50, v46);
  outlined copy of Locale.LanguageCode?(v48, v47, v45, v11);
  outlined copy of Locale.LanguageCode?(v49, v6, v50, v46);
  outlined consume of Locale.LanguageCode?(v48, v47, v45, v11);

  outlined consume of Locale.LanguageCode?(v49, v6, v50, v46);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v24 = v41;
  if (!v41)
  {
LABEL_29:
    v27 = v42;
    v26 = v43;
    v25 = v44;
    outlined copy of Locale.LanguageCode?(v42, 0, v43, v44);
    v28 = v40;
    if (v40)
    {
      v32 = v38;
      v31 = v39;
      v33 = v37;
      outlined copy of Locale.LanguageCode?(v39, v40, v37, v38);
LABEL_32:
      outlined consume of Locale.LanguageCode?(v27, v24, v26, v25);
      v12 = v31;
      v13 = v28;
      v14 = v33;
      v15 = v32;
      goto LABEL_33;
    }

    outlined copy of Locale.LanguageCode?(v39, 0, v37, v38);
    v29 = v42;
    v30 = 0;
    goto LABEL_38;
  }

LABEL_23:
  v26 = v43;
  v25 = v44;
  v27 = v42;
  v28 = v40;
  if (!v40)
  {
    outlined copy of Locale.LanguageCode?(v42, v24, v43, v44);
    v32 = v38;
    v31 = v39;
    v33 = v37;
    outlined copy of Locale.LanguageCode?(v39, 0, v37, v38);
    outlined copy of Locale.LanguageCode?(v42, v24, v43, v44);

    goto LABEL_32;
  }

  if (v43 == v37 && v44 == v38)
  {
    outlined copy of Locale.LanguageCode?(v42, v24, v43, v44);
    outlined copy of Locale.LanguageCode?(v39, v40, v43, v44);
    outlined copy of Locale.LanguageCode?(v42, v24, v43, v44);
    outlined consume of Locale.LanguageCode?(v39, v40, v43, v44);

    v29 = v42;
    v30 = v24;
LABEL_38:
    outlined consume of Locale.LanguageCode?(v29, v30, v26, v25);
    return 1;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v42, v24, v43, v44);
  outlined copy of Locale.LanguageCode?(v39, v40, v37, v38);
  outlined copy of Locale.LanguageCode?(v42, v24, v43, v44);
  outlined consume of Locale.LanguageCode?(v39, v40, v37, v38);

  outlined consume of Locale.LanguageCode?(v42, v24, v43, v44);
  return (v35 & 1) != 0;
}

void static Calendar._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    type metadata accessor for _NSSwiftCalendar();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
      v6 = a1;
      os_unfair_lock_lock((v5 + 32));
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 32));
    }

    else
    {
      type metadata accessor for _CalendarBridged();
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      v8 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarBridged and conformance _CalendarBridged, type metadata accessor for _CalendarBridged, &protocol conformance descriptor for _CalendarBridged);
      v9 = a1;
    }

    *a2 = v7;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

BOOL specialized static Locale.Components.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v157 = *(a1 + 32);
  v158 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v159 = *(a1 + 64);
  v160 = v5;
  v6 = *(a1 + 16);
  v156[0] = *a1;
  v156[1] = v6;
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v162 = *(a2 + 32);
  v163 = v7;
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  v164 = *(a2 + 64);
  v165 = v10;
  v11 = *(a2 + 16);
  v161[0] = *a2;
  v161[1] = v11;
  v152 = v157;
  v153 = v4;
  v12 = *(a1 + 80);
  v154 = v159;
  v155 = v12;
  v150 = v156[0];
  v151 = v3;
  v146 = v162;
  v147 = v9;
  v13 = *(a2 + 80);
  v148 = v164;
  v149 = v13;
  v14 = *(a1 + 96);
  v16 = *(a1 + 104);
  v15 = *(a1 + 112);
  v17 = *(a1 + 120);
  v142 = *(a1 + 128);
  v131 = *(a1 + 144);
  v132 = *(a1 + 136);
  v133 = *(a1 + 152);
  v134 = *(a1 + 160);
  v138 = *(a1 + 176);
  v139 = *(a1 + 168);
  v136 = *(a1 + 184);
  v129 = *(a1 + 192);
  v125 = *(a1 + 200);
  v123 = *(a1 + 201);
  v121 = *(a1 + 216);
  v117 = *(a1 + 208);
  v118 = *(a1 + 224);
  v119 = *(a1 + 232);
  v113 = *(a1 + 248);
  v110 = *(a1 + 240);
  v111 = *(a1 + 256);
  v109 = *(a1 + 264);
  v105 = *(a1 + 280);
  v102 = *(a1 + 288);
  v103 = *(a1 + 272);
  v101 = *(a1 + 296);
  v97 = *(a1 + 304);
  v89 = *(a1 + 320);
  v95 = *(a1 + 328);
  v93 = *(a1 + 336);
  v91 = *(a1 + 312);
  v92 = *(a1 + 344);
  v18 = *(a2 + 96);
  v20 = *(a2 + 104);
  v19 = *(a2 + 112);
  v21 = *(a2 + 120);
  v22 = *(a2 + 128);
  v130 = *(a2 + 136);
  v140 = *(a2 + 152);
  v141 = *(a2 + 144);
  v137 = *(a2 + 160);
  v135 = *(a2 + 168);
  v126 = *(a2 + 184);
  v127 = *(a2 + 192);
  v128 = *(a2 + 176);
  v124 = *(a2 + 200);
  v122 = *(a2 + 201);
  v120 = *(a2 + 216);
  v114 = *(a2 + 208);
  v115 = *(a2 + 224);
  v116 = *(a2 + 232);
  v112 = *(a2 + 248);
  v106 = *(a2 + 256);
  v107 = *(a2 + 264);
  v108 = *(a2 + 240);
  v104 = *(a2 + 280);
  v98 = *(a2 + 288);
  v99 = *(a2 + 296);
  v100 = *(a2 + 272);
  v96 = *(a2 + 304);
  v86 = *(a2 + 312);
  v87 = *(a2 + 320);
  v94 = *(a2 + 328);
  v90 = *(a2 + 336);
  v88 = *(a2 + 344);
  v144 = v161[0];
  v145 = v8;
  outlined init with copy of Locale.Language.Components(v156, v167);
  outlined init with copy of Locale.Language.Components(v161, v167);
  v23 = specialized static Locale.Language.Components.== infix(_:_:)(&v150, &v144);
  v166[2] = v146;
  v166[3] = v147;
  v166[4] = v148;
  v166[5] = v149;
  v166[0] = v144;
  v166[1] = v145;
  outlined destroy of Locale.Language.Components(v166);
  v167[2] = v152;
  v167[3] = v153;
  v167[4] = v154;
  v167[5] = v155;
  v167[0] = v150;
  v167[1] = v151;
  outlined destroy of Locale.Language.Components(v167);
  if (!v23)
  {
    return 0;
  }

  if (v14 == 27)
  {
    if (v18 != 27)
    {
      return 0;
    }

LABEL_7:
    if (v15)
    {
      v25 = v16;
      v26 = v21;
      v27 = v19;
      if (v19)
      {
        v28 = v17;
        v29 = v17 == v26;
        v30 = v142;
        if (!v29 || v142 != v22)
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of Locale.LanguageCode?(v25, v15, v28, v142);
          outlined copy of Locale.LanguageCode?(v20, v19, v26, v22);
          outlined copy of Locale.LanguageCode?(v25, v15, v28, v142);
          outlined consume of Locale.LanguageCode?(v20, v19, v26, v22);

          outlined consume of Locale.LanguageCode?(v25, v15, v28, v142);
          v40 = v140;
          if ((v39 & 1) == 0)
          {
            return 0;
          }

LABEL_21:
          v41 = v131;
          if (v131)
          {
            v43 = v135;
            v42 = v136;
            v45 = v138;
            v44 = v139;
            v47 = v133;
            v46 = v134;
            v48 = v132;
            if (v141)
            {
              if (v133 != v40 || v134 != v137)
              {
                v143 = _stringCompareWithSmolCheck(_:_:expecting:)();
                outlined copy of Locale.LanguageCode?(v132, v131, v133, v134);
                outlined copy of Locale.LanguageCode?(v130, v141, v40, v137);
                outlined copy of Locale.LanguageCode?(v132, v131, v133, v134);
                v45 = v138;
                v44 = v139;
                outlined consume of Locale.LanguageCode?(v130, v141, v40, v137);

                outlined consume of Locale.LanguageCode?(v132, v131, v133, v134);
                if ((v143 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_34;
              }

              outlined copy of Locale.LanguageCode?(v132, v131, v133, v134);
              outlined copy of Locale.LanguageCode?(v130, v141, v133, v134);
              outlined copy of Locale.LanguageCode?(v132, v131, v133, v134);
              outlined consume of Locale.LanguageCode?(v130, v141, v133, v134);

LABEL_33:
              outlined consume of Locale.LanguageCode?(v48, v41, v47, v46);
LABEL_34:
              if (v45)
              {
                v53 = v128;
                v52 = v129;
                if (v128)
                {
                  if (v42 != v126 || v129 != v127)
                  {
                    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    outlined copy of Locale.LanguageCode?(v44, v45, v42, v129);
                    outlined copy of Locale.LanguageCode?(v43, v128, v126, v127);
                    outlined copy of Locale.LanguageCode?(v44, v45, v42, v129);
                    outlined consume of Locale.LanguageCode?(v43, v128, v126, v127);

                    outlined consume of Locale.LanguageCode?(v44, v45, v42, v129);
                    if ((v56 & 1) == 0)
                    {
                      return 0;
                    }

LABEL_50:
                    if (v125 == 7)
                    {
                      if (v124 != 7)
                      {
                        return 0;
                      }
                    }

                    else if (v124 == 7 || (specialized == infix<A>(_:_:)(v125, v124) & 1) == 0)
                    {
                      return 0;
                    }

                    if (v123 == 4)
                    {
                      if (v122 != 4)
                      {
                        return 0;
                      }
                    }

                    else if (v122 == 4 || (specialized == infix<A>(_:_:)(v123, v122) & 1) == 0)
                    {
                      return 0;
                    }

                    if (v121)
                    {
                      v57 = v120;
                      if (!v120)
                      {
                        v67 = v117;
                        v68 = v121;
                        v66 = v118;
                        v65 = v119;
                        outlined copy of Locale.LanguageCode?(v117, v121, v118, v119);
                        v62 = v114;
                        v63 = v115;
                        v69 = v114;
                        v70 = v115;
                        v64 = v116;
LABEL_93:
                        outlined copy of Locale.LanguageCode?(v69, 0, v70, v64);
                        outlined copy of Locale.LanguageCode?(v67, v68, v66, v65);

                        goto LABEL_94;
                      }

                      v58 = v119;
                      if (v118 != v115 || v119 != v116)
                      {
                        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        outlined copy of Locale.LanguageCode?(v117, v121, v118, v119);
                        outlined copy of Locale.LanguageCode?(v114, v120, v115, v116);
                        outlined copy of Locale.LanguageCode?(v117, v121, v118, v119);
                        outlined consume of Locale.LanguageCode?(v114, v120, v115, v116);

                        outlined consume of Locale.LanguageCode?(v117, v121, v118, v119);
                        if ((v71 & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_72;
                      }

                      v59 = v118;
                      v60 = v117;
                      outlined copy of Locale.LanguageCode?(v117, v121, v118, v119);
                      outlined copy of Locale.LanguageCode?(v114, v120, v118, v119);
                      outlined copy of Locale.LanguageCode?(v117, v121, v118, v119);
                      outlined consume of Locale.LanguageCode?(v114, v120, v118, v119);

                      v61 = v121;
                    }

                    else
                    {
                      outlined copy of Locale.LanguageCode?(v117, 0, v118, v119);
                      v57 = v120;
                      if (v120)
                      {
                        v62 = v114;
                        v63 = v115;
                        v64 = v116;
                        outlined copy of Locale.LanguageCode?(v114, v120, v115, v116);
                        v66 = v118;
                        v65 = v119;
                        v67 = v117;
                        v68 = 0;
                        goto LABEL_94;
                      }

                      outlined copy of Locale.LanguageCode?(v114, 0, v115, v116);
                      v61 = 0;
                      v59 = v118;
                      v58 = v119;
                      v60 = v117;
                    }

                    outlined consume of Locale.LanguageCode?(v60, v61, v59, v58);
LABEL_72:
                    if (v113)
                    {
                      v65 = v109;
                      v57 = v112;
                      if (!v112)
                      {
                        v67 = v110;
                        v68 = v113;
                        v66 = v111;
                        outlined copy of Locale.LanguageCode?(v110, v113, v111, v109);
                        v64 = v107;
                        v62 = v108;
                        v69 = v108;
                        v63 = v106;
LABEL_92:
                        v70 = v63;
                        goto LABEL_93;
                      }

                      if (v111 != v106 || v109 != v107)
                      {
                        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        outlined copy of Locale.LanguageCode?(v110, v113, v111, v109);
                        outlined copy of Locale.LanguageCode?(v108, v112, v106, v107);
                        outlined copy of Locale.LanguageCode?(v110, v113, v111, v109);
                        outlined consume of Locale.LanguageCode?(v108, v112, v106, v107);

                        outlined consume of Locale.LanguageCode?(v110, v113, v111, v109);
                        if ((v75 & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_84;
                      }

                      v72 = v111;
                      v73 = v110;
                      outlined copy of Locale.LanguageCode?(v110, v113, v111, v109);
                      outlined copy of Locale.LanguageCode?(v108, v112, v111, v109);
                      outlined copy of Locale.LanguageCode?(v110, v113, v111, v109);
                      outlined consume of Locale.LanguageCode?(v108, v112, v111, v109);

                      v74 = v113;
LABEL_83:
                      outlined consume of Locale.LanguageCode?(v73, v74, v72, v65);
LABEL_84:
                      v57 = v104;
                      if (!v105)
                      {
                        v65 = v101;
                        outlined copy of Locale.LanguageCode?(v103, 0, v102, v101);
                        v57 = v104;
                        if (!v104)
                        {
                          outlined copy of Locale.LanguageCode?(v100, 0, v98, v99);
                          v78 = 0;
                          v76 = v102;
                          v77 = v103;
                          goto LABEL_98;
                        }

                        v64 = v99;
                        v62 = v100;
                        v63 = v98;
                        outlined copy of Locale.LanguageCode?(v100, v104, v98, v99);
                        v66 = v102;
                        v67 = v103;
                        v68 = 0;
                        goto LABEL_94;
                      }

                      v65 = v101;
                      if (v104)
                      {
                        if (v102 != v98 || v101 != v99)
                        {
                          v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
                          outlined copy of Locale.LanguageCode?(v103, v105, v102, v101);
                          outlined copy of Locale.LanguageCode?(v100, v104, v98, v99);
                          outlined copy of Locale.LanguageCode?(v103, v105, v102, v101);
                          outlined consume of Locale.LanguageCode?(v100, v104, v98, v99);

                          outlined consume of Locale.LanguageCode?(v103, v105, v102, v101);
                          if ((v79 & 1) == 0)
                          {
                            return 0;
                          }

LABEL_99:
                          if (v97)
                          {
                            *&v150 = v97;
                            *(&v150 + 1) = v91;
                            if (v96)
                            {
                              *&v144 = v96;
                              *(&v144 + 1) = v86;
                              swift_unknownObjectRetain_n();
                              swift_unknownObjectRetain();
                              v80 = specialized static TimeZone.== infix(_:_:)(&v150, &v144);
                              swift_unknownObjectRelease();
                              swift_unknownObjectRelease();
                              swift_unknownObjectRelease();
                              if ((v80 & 1) == 0)
                              {
                                return 0;
                              }

                              goto LABEL_104;
                            }
                          }

                          else if (!v96)
                          {
LABEL_104:
                            if (v95)
                            {
                              if (v94)
                              {
                                if (v93 != v90 || v92 != v88)
                                {
                                  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
                                  outlined copy of Locale.LanguageCode?(v89, v95, v93, v92);
                                  outlined copy of Locale.LanguageCode?(v87, v94, v90, v88);
                                  outlined copy of Locale.LanguageCode?(v89, v95, v93, v92);
                                  outlined consume of Locale.LanguageCode?(v87, v94, v90, v88);

                                  outlined consume of Locale.LanguageCode?(v89, v95, v93, v92);
                                  return (v85 & 1) != 0;
                                }

                                outlined copy of Locale.LanguageCode?(v89, v95, v93, v92);
                                outlined copy of Locale.LanguageCode?(v87, v94, v93, v92);
                                outlined copy of Locale.LanguageCode?(v89, v95, v93, v92);
                                outlined consume of Locale.LanguageCode?(v87, v94, v93, v92);

                                v81 = v89;
                                v82 = v95;
                                v83 = v93;
                                v84 = v92;
LABEL_117:
                                outlined consume of Locale.LanguageCode?(v81, v82, v83, v84);
                                return 1;
                              }

                              outlined copy of Locale.LanguageCode?(v89, v95, v93, v92);
                              outlined copy of Locale.LanguageCode?(v87, 0, v90, v88);
                              outlined copy of Locale.LanguageCode?(v89, v95, v93, v92);
                            }

                            else
                            {
                              outlined copy of Locale.LanguageCode?(v89, 0, v93, v92);
                              if (!v94)
                              {
                                outlined copy of Locale.LanguageCode?(v87, 0, v90, v88);
                                v81 = v89;
                                v82 = 0;
                                v84 = v92;
                                v83 = v93;
                                goto LABEL_117;
                              }

                              outlined copy of Locale.LanguageCode?(v87, v94, v90, v88);
                            }

                            outlined consume of Locale.LanguageCode?(v89, v95, v93, v92);
                            v35 = v87;
                            v38 = v88;
                            v36 = v94;
                            v37 = v90;
                            goto LABEL_43;
                          }

                          swift_unknownObjectRetain();
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
                          return 0;
                        }

                        v76 = v102;
                        v77 = v103;
                        outlined copy of Locale.LanguageCode?(v103, v105, v102, v101);
                        outlined copy of Locale.LanguageCode?(v100, v104, v102, v101);
                        outlined copy of Locale.LanguageCode?(v103, v105, v102, v101);
                        outlined consume of Locale.LanguageCode?(v100, v104, v102, v101);

                        v78 = v105;
LABEL_98:
                        outlined consume of Locale.LanguageCode?(v77, v78, v76, v65);
                        goto LABEL_99;
                      }

                      v67 = v103;
                      v68 = v105;
                      v66 = v102;
                      outlined copy of Locale.LanguageCode?(v103, v105, v102, v101);
                      v64 = v99;
                      v62 = v100;
                      v69 = v100;
                      v63 = v98;
                      goto LABEL_92;
                    }

                    v65 = v109;
                    outlined copy of Locale.LanguageCode?(v110, 0, v111, v109);
                    v57 = v112;
                    if (!v112)
                    {
                      outlined copy of Locale.LanguageCode?(v108, 0, v106, v107);
                      v74 = 0;
                      v73 = v110;
                      v72 = v111;
                      goto LABEL_83;
                    }

                    v64 = v107;
                    v62 = v108;
                    v63 = v106;
                    outlined copy of Locale.LanguageCode?(v108, v112, v106, v107);
                    v67 = v110;
                    v66 = v111;
                    v68 = 0;
LABEL_94:
                    outlined consume of Locale.LanguageCode?(v67, v68, v66, v65);
                    v35 = v62;
                    v36 = v57;
                    v37 = v63;
                    v38 = v64;
                    goto LABEL_43;
                  }

                  outlined copy of Locale.LanguageCode?(v44, v45, v42, v129);
                  outlined copy of Locale.LanguageCode?(v43, v128, v42, v129);
                  outlined copy of Locale.LanguageCode?(v44, v45, v42, v129);
                  outlined consume of Locale.LanguageCode?(v43, v128, v42, v129);

LABEL_49:
                  outlined consume of Locale.LanguageCode?(v44, v45, v42, v52);
                  goto LABEL_50;
                }

                outlined copy of Locale.LanguageCode?(v44, v45, v42, v129);
                v55 = v126;
                v54 = v127;
                outlined copy of Locale.LanguageCode?(v43, 0, v126, v127);
                outlined copy of Locale.LanguageCode?(v44, v45, v42, v129);
              }

              else
              {
                v52 = v129;
                outlined copy of Locale.LanguageCode?(v44, 0, v42, v129);
                v53 = v128;
                if (!v128)
                {
                  outlined copy of Locale.LanguageCode?(v43, 0, v126, v127);
                  v45 = 0;
                  goto LABEL_49;
                }

                v55 = v126;
                v54 = v127;
                outlined copy of Locale.LanguageCode?(v43, v128, v126, v127);
              }

              outlined consume of Locale.LanguageCode?(v44, v45, v42, v52);
              v35 = v43;
              v36 = v53;
              v37 = v55;
              v38 = v54;
LABEL_43:
              outlined consume of Locale.LanguageCode?(v35, v36, v37, v38);
              return 0;
            }

            v50 = 0;
            outlined copy of Locale.LanguageCode?(v132, v131, v133, v134);
            v49 = v130;
            v51 = v137;
            outlined copy of Locale.LanguageCode?(v130, 0, v40, v137);
            outlined copy of Locale.LanguageCode?(v132, v131, v133, v134);
          }

          else
          {
            v48 = v132;
            v47 = v133;
            v46 = v134;
            outlined copy of Locale.LanguageCode?(v132, 0, v133, v134);
            v43 = v135;
            v42 = v136;
            v45 = v138;
            v44 = v139;
            if (!v141)
            {
              outlined copy of Locale.LanguageCode?(v130, 0, v40, v137);
              v41 = 0;
              goto LABEL_33;
            }

            v49 = v130;
            v50 = v141;
            v51 = v137;
            outlined copy of Locale.LanguageCode?(v130, v141, v40, v137);
          }

          outlined consume of Locale.LanguageCode?(v48, v131, v47, v46);
          v35 = v49;
          v36 = v50;
          v37 = v40;
          v38 = v51;
          goto LABEL_43;
        }

        outlined copy of Locale.LanguageCode?(v25, v15, v28, v142);
        outlined copy of Locale.LanguageCode?(v20, v19, v28, v142);
        outlined copy of Locale.LanguageCode?(v25, v15, v28, v142);
        outlined consume of Locale.LanguageCode?(v20, v19, v28, v142);

LABEL_20:
        outlined consume of Locale.LanguageCode?(v25, v15, v28, v30);
        v40 = v140;
        goto LABEL_21;
      }

      v33 = v16;
      v28 = v17;
      v34 = v17;
      v30 = v142;
      outlined copy of Locale.LanguageCode?(v33, v15, v34, v142);
      outlined copy of Locale.LanguageCode?(v20, 0, v26, v22);
      outlined copy of Locale.LanguageCode?(v25, v15, v28, v142);
    }

    else
    {
      v25 = v16;
      v31 = v16;
      v28 = v17;
      v32 = v17;
      v30 = v142;
      outlined copy of Locale.LanguageCode?(v31, 0, v32, v142);
      v26 = v21;
      if (!v19)
      {
        outlined copy of Locale.LanguageCode?(v20, 0, v21, v22);
        v15 = 0;
        goto LABEL_20;
      }

      v27 = v19;
      outlined copy of Locale.LanguageCode?(v20, v19, v26, v22);
    }

    outlined consume of Locale.LanguageCode?(v25, v15, v28, v30);
    v35 = v20;
    v36 = v27;
    v37 = v26;
    v38 = v22;
    goto LABEL_43;
  }

  result = 0;
  if (v18 != 27 && v14 == v18)
  {
    goto LABEL_7;
  }

  return result;
}

__C::_NSRange __swiftcall _NSSwiftCalendar.maximumRange(of:)(NSCalendarUnit of)
{
  _fromNSCalendarUnit(_:)(of, &v15);
  v2 = v15;
  if (v15 == 19 || (v3 = *(v1 + OBJC_IVAR____NSSwiftCalendar__lock), os_unfair_lock_lock((v3 + 32)), v4 = *(v3 + 24), swift_unknownObjectRetain(), os_unfair_lock_unlock((v3 + 32)), ObjectType = swift_getObjectType(), v14 = v2, v6 = (*(v4 + 136))(&v14, ObjectType, v4), v8 = v7, v10 = v9, v11 = swift_unknownObjectRelease(), (v10 & 1) != 0))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v8 - v6;
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
    }

    else
    {
      v11 = v6;
    }
  }

  result.length = v12;
  result.location = v11;
  return result;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return;
    }

    outlined consume of Data._Representation(v5, v4);
    __b = v5;
    v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(&__b, v2);
    v7 = __b;
    v8 = v10 | 0x8000000000000000;
  }

  else if (v6)
  {

    outlined consume of Data._Representation(v5, v4);
    __b = v5;
    v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__b, v2);
    v7 = __b;
    v8 = v10 | 0x4000000000000000;
  }

  else
  {
    outlined consume of Data._Representation(v5, v4);
    __b = v5;
    LOWORD(v10) = v4;
    BYTE2(v10) = BYTE2(v4);
    BYTE3(v10) = BYTE3(v4);
    BYTE4(v10) = BYTE4(v4);
    BYTE5(v10) = BYTE5(v4);
    BYTE6(v10) = BYTE6(v4);
    memset(&__b, v2, BYTE6(v4));
    v7 = __b;
    v8 = v10 | ((WORD2(v10) | (BYTE6(v10) << 16)) << 32);
  }

  *a1 = v7;
  a1[1] = v8;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      outlined consume of Data._Representation(v4, v5);
      LOWORD(v11) = v5;
      BYTE2(v11) = BYTE2(v5);
      BYTE3(v11) = BYTE3(v5);
      BYTE4(v11) = BYTE4(v5);
      BYTE5(v11) = BYTE5(v5);
      *(a2 + 8) = &v10;
      *(a2 + 16) = &v10 + BYTE6(v5);
      v7 = v11 | ((WORD2(v11) | (BYTE6(v5) << 16)) << 32);
      *a1 = v4;
      a1[1] = v7;
      return;
    }

    outlined consume of Data._Representation(v4, v5);
    v10 = v4;
    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v10, a2);
    v8 = v10;
    v9 = v11 | 0x4000000000000000;
    goto LABEL_7;
  }

  if (v6 == 2)
  {

    outlined consume of Data._Representation(v4, v5);
    v10 = v4;
    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(&v10, a2);
    v8 = v10;
    v9 = v11 | 0x8000000000000000;
LABEL_7:
    *a1 = v8;
    a1[1] = v9;
    return;
  }

  *(a2 + 8) = &v10;
  *(a2 + 16) = &v10;
}

uint64_t Data.init(repeating:count:)(uint64_t a1, uint64_t a2)
{
  v5[0] = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(a2);
  v5[1] = v3;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v5, a1);
  return v5[0];
}

void Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v1 + 1);
  v6 = v5[2];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v5[5];
  v8 = __OFSUB__(v3, v7);
  v9 = v3 - v7;
  if (v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v4 - v3;
  if (v5[3] >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5[3];
  }

  v12 = v6 + v9;

  a1(v12, v12 + v11);
}

void Locale.Components.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v32 = *(v1 + 72);
  v33 = *(v1 + 96);
  v14 = *(v1 + 104);
  v35 = *(v1 + 112);
  v12 = *(v1 + 128);
  v13 = *(v1 + 120);
  v17 = *(v1 + 136);
  v36 = *(v1 + 144);
  v15 = *(v1 + 160);
  v16 = *(v1 + 152);
  v20 = *(v1 + 168);
  v37 = *(v1 + 176);
  v18 = *(v1 + 192);
  v19 = *(v1 + 184);
  v31 = *(v1 + 200);
  v34 = *(v1 + 201);
  v4 = *(v1 + 216);
  v22 = *(v1 + 224);
  v23 = *(v1 + 208);
  v21 = *(v1 + 232);
  v38 = *(v1 + 248);
  v26 = *(v1 + 272);
  v5 = *(v1 + 280);
  v6 = *(v1 + 304);
  v24 = *(v1 + 296);
  v25 = *(v1 + 288);
  v27 = *(v1 + 312);
  v30 = *(v1 + 320);
  v39 = *(v1 + 328);
  v28 = *(v1 + 344);
  v29 = *(v1 + 336);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  if (v32)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v33 == 27)
  {
    Hasher._combine(_:)(0);
    v7 = v5;
    if (v35)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v33);
    v7 = v5;
    if (v35)
    {
LABEL_11:
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      outlined consume of Locale.LanguageCode?(v14, v35, v13, v12);
      if (v36)
      {
        goto LABEL_12;
      }

LABEL_16:
      Hasher._combine(_:)(0);
      v8 = v7;
      if (v37)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
  if (!v36)
  {
    goto LABEL_16;
  }

LABEL_12:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
  outlined consume of Locale.LanguageCode?(v17, v36, v16, v15);
  v8 = v7;
  if (v37)
  {
LABEL_13:
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    outlined consume of Locale.LanguageCode?(v20, v37, v19, v18);
    goto LABEL_18;
  }

LABEL_17:
  Hasher._combine(_:)(0);
LABEL_18:
  if (v31 == 7)
  {
    Hasher._combine(_:)(0);
    if (v34 != 4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v34 != 4)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      if (v4)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(0);
  if (v4)
  {
LABEL_21:
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    outlined consume of Locale.LanguageCode?(v23, v4, v22, v21);
    if (v38)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_28:
  Hasher._combine(_:)(0);
  if (v38)
  {
LABEL_22:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v8)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (v8)
  {
LABEL_23:
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    outlined consume of Locale.LanguageCode?(v26, v8, v25, v24);
    if (v6)
    {
      goto LABEL_24;
    }

LABEL_31:
    Hasher._combine(_:)(0);
    v11 = v39;
    if (v39)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_30:
  Hasher._combine(_:)(0);
  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_24:
  Hasher._combine(_:)(1u);
  ObjectType = swift_getObjectType();
  v10 = *(v27 + 120);
  swift_unknownObjectRetain();
  v10(a1, ObjectType, v27);
  swift_unknownObjectRelease();
  v11 = v39;
  if (v39)
  {
LABEL_25:
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    outlined consume of Locale.LanguageCode?(v30, v11, v29, v28);
    return;
  }

LABEL_32:
  Hasher._combine(_:)(0);
}

unint64_t lazy protocol witness table accessor for type Locale.Components and conformance Locale.Components()
{
  result = lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components;
  if (!lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components);
  }

  return result;
}

uint64_t Calendar.firstWeekday.setter(uint64_t a1)
{
  v2 = v1;
  v4 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 56))(ObjectType, v4);
  if (result != a1)
  {
    v11[0] = 0;
    v11[1] = 0;
    v10[0] = 0;
    v10[1] = 0;
    v7 = (*(v4 + 112))(v11, v10, a1, 0, 0, 1, ObjectType, v4);
    v9 = v8;
    result = swift_unknownObjectRelease();
    *v2 = v7;
    v2[1] = v9;
  }

  return result;
}

NSError *_NSErrorWithFilePathErrnoVariantAndExtraUserInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a1 <= 12)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v9 = 260;
          goto LABEL_31;
        }

LABEL_28:
        v9 = 256;
        goto LABEL_31;
      }
    }

    else if (a1 != 13)
    {
      if (a1 == 27)
      {
        v9 = 263;
        goto LABEL_31;
      }

      if (a1 == 63)
      {
        v9 = 258;
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v9 = 257;
    goto LABEL_31;
  }

  if (a1 <= 27)
  {
    if (a1 > 12)
    {
      if (a1 != 13)
      {
        if (a1 == 17)
        {
          v9 = 516;
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else if (a1 != 1)
    {
      if (a1 == 2)
      {
        v9 = 4;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v9 = 513;
    goto LABEL_31;
  }

  if (a1 <= 62)
  {
    if (a1 != 28)
    {
      if (a1 == 30)
      {
        v9 = 642;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_25:
    v9 = 640;
    goto LABEL_31;
  }

  if (a1 == 63)
  {
    v9 = 514;
    goto LABEL_31;
  }

  if (a1 == 69)
  {
    goto LABEL_25;
  }

LABEL_30:
  v9 = 512;
LABEL_31:
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:a1 userInfo:0];
  if (a4)
  {
    v12 = [MEMORY[0x1E695DEC8] arrayWithObject:a4];
  }

  else
  {
    v12 = 0;
  }

  v13 = @"NSUserStringVariant";
  if (!a4)
  {
    v13 = 0;
  }

  v14 = [v10 initWithObjectsAndKeys:{v11, @"NSUnderlyingError", v12, v13, 0}];
  if (a2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = &NSURLErrorKey;
    if ((isKindOfClass & 1) == 0)
    {
      v16 = &NSFilePathErrorKey;
    }

    [v14 setObject:a2 forKeyedSubscript:*v16];
  }

  if ([a5 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [a5 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(a5);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          if (![v14 objectForKey:v21])
          {
            [v14 setObject:objc_msgSend(a5 forKey:{"objectForKey:", v21), v21}];
          }
        }

        v18 = [a5 countByEnumeratingWithState:&v25 objects:v24 count:16];
      }

      while (v18);
    }
  }

  v22 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v9 userInfo:v14];

  return v22;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t URL.description.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 416))(ObjectType, v1);
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v10 = v9;
      goto LABEL_16;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v19[0] = a1;
      v19[1] = v20;
      v7 = v19 + v5;
    }

    else
    {
      v6 = v18;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v6 = _StringObject.sharedUTF8.getter();
      }

      v7 = (v6 + v5);
    }

    v8 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
LABEL_15:
      v10 = 1;
      goto LABEL_16;
    }

    v16 = (__clz(v8 ^ 0xFF) - 24);
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
        v10 = 3;
      }

      else
      {
        v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
        v10 = 4;
      }
    }

    else
    {
      if (v16 == 1)
      {
        goto LABEL_15;
      }

      v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
      v10 = 2;
    }

LABEL_16:
    if (one-time initialization token for invalidExtensionScalars != -1)
    {
      swift_once();
    }

    v11 = static String.invalidExtensionScalars;
    if (*(static String.invalidExtensionScalars + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      v12 = Hasher._finalize()();
      v13 = -1 << *(v11 + 32);
      v14 = v12 & ~v13;
      if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        break;
      }
    }

LABEL_6:
    v5 += v10;
    if (v5 >= v2)
    {
      return 1;
    }
  }

  v15 = ~v13;
  while (*(*(v11 + 48) + 4 * v14) != v8)
  {
    v14 = (v14 + 1) & v15;
    if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

{
  v15[2] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v6;
          v9 = v15 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = (v8 + v5);
        }

        LODWORD(v10) = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v13 = (__clz(v10 ^ 0xFF) - 24);
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            LODWORD(v10) = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
            v11 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v11 = 1;
          goto LABEL_15;
        }

        if (v13 == 3)
        {
          LODWORD(v10) = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          LODWORD(v10) = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v11 = 4;
        }
      }

LABEL_15:
      if (BYTE2(v10) > 0xEu)
      {
        return 0;
      }

      v12 = *(&__CFUniCharGraphemeExtendCharacterSetBitmap_0 + BYTE2(v10));
      if (!v12 || ((*(v12 + (v10 >> 3)) >> (v10 & 7)) & 1) == 0)
      {
        return 0;
      }

      v5 += v11;
    }

    while (v5 < v2);
  }

  return 1;
}

uint64_t one-time initialization function for invalidExtensionScalars()
{
  v2 = MEMORY[0x1865CB700](14, MEMORY[0x1E69E7B10], MEMORY[0x1E69E7B18]);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0828);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED082C);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0830);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0834);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0838);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED083C);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0840);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0844);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0848);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED084C);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0850);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0854);
  specialized Set._Variant.insert(_:)(&v1, dword_1EEED0858);
  result = specialized Set._Variant.insert(_:)(&v1, dword_1EEED085C);
  static String.invalidExtensionScalars = v2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void _SwiftURL.appendingPathExtension(_:compatibility:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_105;
  }

  v8 = a2;
  v9 = a1;
  v10 = (*(*(v4 + 16) + 168) & 1) != 0 ? MEMORY[0x1865CBC20](0, 0xE000000000000000) : String.subscript.getter();
  v12 = v10;
  v13 = v11;

  if ((v12 ^ v13) < 0x4000)
  {
    goto LABEL_105;
  }

  v14 = 0;
  v15 = &v144;
  v127 = v4;
  v16 = _SwiftURL.isFileURL.getter();

  if (v16)
  {
    v9 = specialized String.withFileSystemRepresentation<A>(_:)(v9, v8, v9, v8);
    v18 = v17;

    v8 = v18;
  }

  v20 = &v151;
  specialized URLComponents._URLComponents.init(parseInfo:)(v19, &v151);
  v21 = v151;
  v149 = v152;
  v150 = v153;
  v146 = v157;
  v147 = v158;
  v148[0] = *v159;
  *(v148 + 9) = *&v159[9];
  v144 = v155;
  v145 = v156;
  v143 = v160;
  v141 = *&v159[41];
  v142 = *&v159[57];
  v128 = v151;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd, &_ss11_SetStorageCys5UInt8VGMR);
    a3 = 1;
    v15 = static _SetStorage.allocate(capacity:)();
    v20 = v15 + 7;
    v22 = byte_1EEED3B40;
    v23 = MEMORY[0x1865CD020](*(v15 + 5), byte_1EEED3B40, 1);
    v24 = *(v15 + 32);
    v25 = -1 << v24;
    v26 = v23 & ~(-1 << v24);
    v27 = v26 >> 6;
    v28 = *(v15 + (v26 >> 6) + 7);
    v29 = 1 << v26;
    v30 = *(v15 + 6);
    if (((1 << v26) & v28) != 0)
    {
      v31 = v24 & 0x3F;
      v32 = ~v25;
      while (*(v30 + v26) != v22)
      {
        v26 = (v26 + 1) & v32;
        v27 = v26 >> 6;
        v28 = v20[v26 >> 6];
        v29 = 1 << v26;
        if (((1 << v26) & v28) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v20[v27] = v29 | v28;
      *(v30 + v26) = v22;
      v33 = *(v15 + 2);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        __break(1u);
        goto LABEL_134;
      }

      *(v15 + 2) = v35;
      v31 = v15[2] & 0x3F;
    }

    v36 = 0;
    *v129 = v9;
    *&v129[8] = v8;
    v37 = -1;
    if (1 << v31 < 64)
    {
      v37 = ~(-1 << (1 << v31));
    }

    v38 = v37 & *v20;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v38)
          {
            while (1)
            {
              v39 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_123;
              }

              if (v39 >= (((1 << v31) + 63) >> 6))
              {
                break;
              }

              v38 = v20[v39];
              ++v36;
              if (v38)
              {
                v36 = v39;
                goto LABEL_25;
              }
            }

            MEMORY[0x1EEE9AC00](v23);
            v123 = v129;
            LOWORD(v124) = 16;
            v55 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v122, v9, v8);
            if (!v56)
            {
              v55 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v9, v8, 0x10u, 0);
            }

            v21 = v55;
            a3 = v56;
            v20 = &v151;
            if (!*(v15 + 2) || (v57 = specialized Collection.firstIndex(where:)(v55, v56, v15), (v58 & 1) != 0))
            {

              v15 = &v144;
              goto LABEL_77;
            }

            v59 = specialized Collection.suffix(from:)(v57, v21, a3);
            *&v162 = v59;
            *(&v162 + 1) = v60;
            *&v163 = v61;
            *(&v163 + 1) = v62;
            v125 = 0;
            if ((v62 & 0x1000000000000000) == 0)
            {
              v63 = v62;
LABEL_68:
              v64 = v59 >> 16;
              v65 = v60 >> 16;
              v126 = a4;
              if ((v63 & 0x2000000000000000) != 0)
              {
                *&v161 = v61;
                *(&v161 + 1) = v63 & 0xFFFFFFFFFFFFFFLL;
                v67 = v65 - v64;
                v66 = &v161 + v64;
                goto LABEL_74;
              }

              if ((v61 & 0x1000000000000000) == 0)
              {
                goto LABEL_136;
              }

              v66 = ((v63 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_71:
              v66 += v64;
              while (1)
              {
                v67 = v65 - v64;
LABEL_74:
                v68 = v125;
                closure #3 in static RFC3986Parser.percentEncode<A>(pathComponent:including:)(v66, v67, v15, v139);
                if (v68)
                {
                  goto LABEL_139;
                }

                v125 = 0;

                v70 = *(&v139[0] + 1);
                v69 = *&v139[0];
                v71 = String.subscript.getter();
                v64 = v72;
                v65 = v73;
                v75 = v74;
                v76 = v69;

                *&v161 = 0;
                *(&v161 + 1) = 0xE000000000000000;
                v77 = String.count.getter();
                v78 = Substring.distance(from:to:)();
                v34 = __OFADD__(v77, v78);
                v79 = v77 + v78;
                if (!v34)
                {
                  break;
                }

                __break(1u);
LABEL_136:
                v66 = _StringObject.sharedUTF8.getter();
                if (v66)
                {
                  goto LABEL_71;
                }
              }

              MEMORY[0x1865CAED0](v79);
              *&v139[0] = v71;
              *(&v139[0] + 1) = v64;
              *&v139[1] = v65;
              *(&v139[1] + 1) = v75;
              lazy protocol witness table accessor for type Substring and conformance Substring();
              String.append<A>(contentsOf:)();
              v139[0] = __PAIR128__(v70, v76);
              String.append<A>(contentsOf:)();

              a3 = *(&v161 + 1);
              v21 = v161;
              a4 = v126;
              v15 = &v144;
              v20 = &v151;
LABEL_77:
              v161 = *(v20 + 13);
              v8 = *(&v161 + 1);
              if (*(&v161 + 1))
              {
                v9 = v161;
              }

              else if ((v154 & 1) != 0 && v151)
              {
                if (*(v151 + 168))
                {
                  v80 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
                }

                else
                {
                  v80 = String.subscript.getter();
                }

                v9 = MEMORY[0x1865CAE80](v80);
                v8 = v81;
              }

              else
              {
                v9 = 0;
                v8 = 0xE000000000000000;
              }

              v82 = HIBYTE(a3) & 0xF;
              if ((a3 & 0x2000000000000000) == 0)
              {
                v82 = v21 & 0xFFFFFFFFFFFFLL;
              }

              if (!v82 || (v83 = specialized BidirectionalCollection.last.getter(v21, a3), (v83 & 0x1FF) == 0x2E))
              {
                outlined init with copy of FloatingPointRoundingRule?(&v161, &v162, &_sSSSgMd, &_sSSSgMR);
LABEL_91:

                goto LABEL_92;
              }

              LOBYTE(v139[0]) = 46;
              MEMORY[0x1EEE9AC00](v83);
              v123 = v139;
              outlined init with copy of FloatingPointRoundingRule?(&v161, &v162, &_sSSSgMd, &_sSSSgMR);
              specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v122, v21, a3);
              if (v91)
              {
                if ((specialized Sequence.allSatisfy(_:)(v21, a3) & 1) == 0)
                {
                  goto LABEL_91;
                }

LABEL_111:
                if (v9 == 47 && v8 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  *&v162 = 11823;
                  *(&v162 + 1) = 0xE200000000000000;
                  MEMORY[0x1865CB0E0](v21, a3);

                  v8 = *(&v162 + 1);
                  v9 = v162;
                  goto LABEL_92;
                }

                *&v139[0] = String._droppingTrailingSlashes.getter(v9, v8);
                *(&v139[0] + 1) = v106;
                if (*&v139[0] != 47 || v106 != 0xE100000000000000)
                {
                  v14 = 0xE100000000000000;
                  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_124;
                  }
                }

                v126 = a4;

                specialized Collection.dropLast(_:)(1uLL, v9, v8);

                v107 = Substring.init(_:)();
                v109 = v108;
                v68 = v110;
                v112 = v111;
                *&v162 = 46;
                *(&v162 + 1) = 0xE100000000000000;
                MEMORY[0x1865CB0E0](v21, a3);
                MEMORY[0x1865CB0E0](47, 0xE100000000000000);
                v113 = v162;
                *v129 = 0;
                *&v129[8] = 0xE000000000000000;
                v114 = String.count.getter();
                v115 = Substring.distance(from:to:)();
                v34 = __OFADD__(v114, v115);
                v116 = v114 + v115;
                if (v34)
                {
                  __break(1u);
LABEL_139:

                  __break(1u);
                  return;
                }

                MEMORY[0x1865CAED0](v116);
                *&v162 = v107;
                *(&v162 + 1) = v109;
                *&v163 = v68;
                *(&v163 + 1) = v112;
                lazy protocol witness table accessor for type Substring and conformance Substring();
                String.append<A>(contentsOf:)();
                v162 = v113;
                String.append<A>(contentsOf:)();

                v9 = *v129;
                v8 = *&v129[8];
              }

              else
              {
                v126 = a4;
                *&v162 = String.subscript.getter();
                *(&v162 + 1) = v92;
                *&v163 = v93;
                *(&v163 + 1) = v94;
                lazy protocol witness table accessor for type Substring and conformance Substring();
                v95 = String.init<A>(_:)();
                v97 = v96;
                v98 = String.index(after:)();
                *&v162 = specialized Collection.suffix(from:)(v98, v21, a3);
                *(&v162 + 1) = v99;
                *&v163 = v100;
                *(&v163 + 1) = v101;
                v102 = String.init<A>(_:)();
                v104 = v103;
                if (specialized Sequence.allSatisfy(_:)(v95, v97))
                {
                  v105 = specialized Sequence.allSatisfy(_:)(v102, v104);

                  a4 = v126;
                  v15 = &v144;
                  if ((v105 & 1) == 0)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_111;
                }
              }

              a4 = v126;
              v15 = &v144;
              goto LABEL_92;
            }

LABEL_134:
            Substring._slowMakeContiguousUTF8()();
            v63 = *(&v163 + 1);
            v61 = v163;
            v60 = *(&v162 + 1);
            v59 = v162;
            goto LABEL_68;
          }

LABEL_25:
          v40 = __clz(__rbit64(v38));
          v38 &= v38 - 1;
          v41 = *(*(v15 + 6) + (v40 | (v36 << 6)));
          if ((v41 - 38) >= 0xA && v41 != 33 && v41 != 36)
          {
            v42 = v41 - 58;
            if ((v41 - 58) <= 0xFFFFFFF5)
            {
              break;
            }
          }
        }

        if (v42 <= 6)
        {
          break;
        }

LABEL_32:
        if (v41 != 95 && (v41 - 65) >= 0x1A && v41 != 126 && (v41 - 97) >= 0x1A)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      if (((1 << v42) & 0x4B) == 0)
      {
        if (v41 == 63)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }
  }

LABEL_37:
  v43 = 0;
  *&v162 = v9;
  *(&v162 + 1) = v8;
  v44 = 1 << *(MEMORY[0x1E69E7CD0] + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(MEMORY[0x1E69E7CD0] + 56);
  v47 = (v44 + 63) >> 6;
  while (v46)
  {
LABEL_46:
    v49 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v50 = *(*(MEMORY[0x1E69E7CD0] + 48) + (v49 | (v43 << 6)));
    if ((v50 - 38) >= 0xA && v50 != 33 && v50 != 36)
    {
      v51 = v50 - 58;
      if ((v50 - 58) <= 0xFFFFFFF5)
      {
        if (v51 > 6)
        {
LABEL_53:
          if (v50 != 95 && (v50 - 65) >= 0x1A && v50 != 126 && (v50 - 97) >= 0x1A)
          {
LABEL_57:

            __break(1u);
LABEL_58:

            MEMORY[0x1EEE9AC00](v52);
            v123 = &v162;
            LOWORD(v124) = 16;
            v53 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:), v122, v9, v8);
            if (!v54)
            {
              v53 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v9, v8, 0x10u, 0);
            }

            v21 = v53;
            a3 = v54;

            goto LABEL_77;
          }
        }

        else if (((1 << v51) & 0x4B) == 0)
        {
          if (v50 == 63)
          {
            goto LABEL_57;
          }

          goto LABEL_53;
        }
      }
    }
  }

  while (1)
  {
    v48 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v48 >= v47)
    {
      goto LABEL_58;
    }

    v46 = *(MEMORY[0x1E69E7CD0] + 8 * v48 + 56);
    ++v43;
    if (v46)
    {
      v43 = v48;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  *&v162 = 46;
  *(&v162 + 1) = v14;
  MEMORY[0x1865CB0E0](v21, a3);
  MEMORY[0x1865CB0E0](v162, *(&v162 + 1));

  if ((specialized BidirectionalCollection.last.getter(v9, v8) & 0x1FF) == 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  v8 = *(&v139[0] + 1);
  v9 = *&v139[0];
LABEL_92:
  v84 = v128;
  if ((v8 & 0x1000000000000000) != 0)
  {
    *&v162 = v9;
    *(&v162 + 1) = v8;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v117 = String._bridgeToObjectiveCImpl()();

    v118 = [v117 _fastCharacterContents];
    v119 = v117;
    if (v118)
    {
      *&v162 = v9;
      *(&v162 + 1) = v8;
      StringProtocol._ephemeralString.getter();
      v120 = String._bridgeToObjectiveCImpl()();

      v121 = [v120 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v118, v121, 0x10u, 1))
      {
        goto LABEL_129;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v9, v8, 0x10u, 1) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

  else
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v86 = HIBYTE(v8) & 0xF;
      *&v162 = v9;
      *(&v162 + 1) = v8 & 0xFFFFFFFFFFFFFFLL;
      v85 = &v162;
    }

    else
    {
      if ((v9 & 0x1000000000000000) == 0)
      {
        goto LABEL_130;
      }

      v85 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v86 = v9 & 0xFFFFFFFFFFFFLL;
    }

    while (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v85, v86, 0x10u, 1))
    {
LABEL_129:
      v124 = 0;
      v123 = 1001;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_130:
      v85 = _StringObject.sharedUTF8.getter();
    }
  }

  outlined destroy of TermOfAddress?(&v161, &_sSSSgMd, &_sSSSgMR);
  *&v139[0] = v84;
  BYTE8(v139[0]) = 0;
  *(v139 + 9) = v149;
  *(v139 + 13) = v150;
  *(&v139[2] + 15) = v146;
  *(&v139[3] + 15) = v147;
  *(&v139[4] + 15) = v148[0];
  *(&v139[5] + 8) = *(v15 + 73);
  *(v139 + 15) = v144;
  *(&v139[1] + 15) = v145;
  *(&v139[6] + 1) = v9;
  *&v140[0] = v8;
  *(v140 + 8) = v141;
  *(&v140[1] + 8) = v142;
  WORD4(v140[2]) = v143;
  v164 = v139[2];
  v165 = v139[3];
  v166 = v139[4];
  v167 = v139[5];
  v162 = v139[0];
  v163 = v139[1];
  v168 = v139[6];
  v169 = v140[0];
  v170[0] = v140[1];
  *(v170 + 10) = *(&v140[1] + 10);
  outlined init with copy of URLComponents(v139, v129);
  v87 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v139);
  v88 = (v87._object >> 56) & 0xF;
  if ((v87._object & 0x2000000000000000) == 0)
  {
    v88 = v87._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v88)
  {
    *v129 = *(v127 + 24);
    swift_unknownObjectRetain();
    v89 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v87._countAndFlagsBits, v87._object, v129);
    if (v89)
    {
      v90 = v89;
      v131 = v146;
      v132 = v147;
      *v133 = v148[0];
      *&v133[9] = *(v15 + 73);
      *&v129[15] = v144;
      v130 = v145;
      v136 = v141;
      *v129 = v84;
      v129[8] = 0;
      *&v129[9] = v149;
      v129[13] = v150;
      v129[14] = 0;
      v134 = v9;
      v135 = v8;
      v137 = v142;
      v138 = v143;
      outlined destroy of URLComponents(v129);
      *a4 = v90;
      a4[1] = &protocol witness table for _SwiftURL;
      return;
    }
  }

  else
  {
  }

  v131 = v146;
  v132 = v147;
  *v133 = v148[0];
  *&v133[9] = *(v15 + 73);
  *&v129[15] = v144;
  v130 = v145;
  v136 = v141;
  *v129 = v84;
  v129[8] = 0;
  *&v129[9] = v149;
  v129[13] = v150;
  v129[14] = 0;
  v134 = v9;
  v135 = v8;
  v137 = v142;
  v138 = v143;
  outlined destroy of URLComponents(v129);
LABEL_105:
  *a4 = 0;
  a4[1] = 0;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance UInt()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedInteger_];
}

uint64_t ___writeJSONObject_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 8 * a2);
  v5 = *(v3 + 8 * a3);
  v6 = [v4 length];
  v7 = [MEMORY[0x1E695DF58] systemLocale];

  return [v4 compare:v5 options:577 range:0 locale:{v6, v7}];
}

void *URL.standardized.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 392))(v8, ObjectType, v3);
  v7 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v7 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
  return result;
}

uint64_t URL.pathComponents.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 312))(ObjectType, v1);
}

uint64_t StringProtocol.capitalized.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v4);
  String.init<A>(_:)();
  countAndFlagsBits = String._capitalized()()._countAndFlagsBits;

  return countAndFlagsBits;
}

CFCharacterSetRef __CharacterSetStorage.inverted.getter@<X0>(CFCharacterSetRef *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = CFCharacterSetCreateInvertedSet(0, v4);
  v6 = result;
  if (v3)
  {
    if (result)
    {
LABEL_5:

      result = swift_allocObject();
      *(result + 2) = v6;
      *(result + 24) = 0;
      *a1 = result;
      return result;
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id String.init(localized:options:)(__int128 *a1, __int128 *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v73 = a1[4];
  v74 = v2;
  v75 = *(a1 + 12);
  v3 = a1[1];
  v69 = *a1;
  v70 = v3;
  v4 = a1[3];
  v71 = a1[2];
  v72 = v4;
  v5 = *a2;
  v6 = a2[1];
  *(v77 + 9) = *(a2 + 25);
  v76 = v5;
  v77[0] = v6;
  outlined init with copy of String.LocalizationOptions(&v76, &v66);
  outlined init with copy of LocalizedStringResource(&v69, &v66);
  v7 = specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(&v69, &v76, &v69);
  v9 = v8;
  outlined destroy of LocalizedStringResource(&v69);
  outlined destroy of String.LocalizationOptions(&v76);
  if (v9)
  {
    outlined destroy of String.LocalizationOptions(&v76);
    outlined destroy of LocalizedStringResource(&v69);
    return v7;
  }

  v62 = v70;
  v10 = *(&v72 + 1);
  v11 = v73;
  v63 = v71;
  v12 = MEMORY[0x1E69E7CC0];
  if (v76)
  {
    v13 = v76;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = v62;
  v68[0] = v13;
  swift_unknownObjectRetain_n();

  outlined init with copy of String.LocalizationValue(&v62, &v66);

  v60 = v11;
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v14, v68, v10, v11);

  v61 = v10;
  swift_unknownObjectRelease();
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_37:
    if (BYTE1(v77[0]))
    {
      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v76);
      outlined destroy of LocalizedStringResource(&v69);

      outlined destroy of String.LocalizationValue(&v62);
      return *(&v14 + 1);
    }

    v7 = *(&v14 + 1);
    String._bridgeToObjectiveCImpl()();
    v49 = _CFStringGetFormatSpecifierConfiguration();
    swift_unknownObjectRelease();
    if (!v49)
    {
      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v76);
      outlined destroy of LocalizedStringResource(&v69);
      goto LABEL_78;
    }

    v16 = *(v15 + 16);
    if (!v16)
    {

      v17 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v17 = v12;
  v18 = v15 + 32;
  do
  {
    outlined init with copy of String.LocalizationValue.FormatArgument(v18, &v66);
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(v68, v64, 0, v61, v60);
    outlined destroy of String.LocalizationValue.FormatArgument(&v66);
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v64[0], v64[1], v65);
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
    }

    *(v17 + 16) = v20 + 1;
    outlined init with take of Equatable(v68, v17 + 40 * v20 + 32);
    v18 += 112;
    --v16;
  }

  while (v16);

LABEL_12:
  type metadata accessor for __VaListBuilder();
  v21 = swift_allocObject();
  v21[2] = 8;
  v21[3] = 0;
  v22 = v21 + 3;
  v21[4] = 0;
  v21[5] = 0;
  v12 = *(v17 + 16);
  if (!v12)
  {
    outlined init with copy of String.LocalizationOptions(&v76, &v66);
    swift_unknownObjectRetain();

LABEL_40:
    v39 = __VaListBuilder.va_list()();
    v40 = objc_opt_self();
    v41 = String._bridgeToObjectiveCImpl()();
    ObjectType = swift_getObjectType();
    v43 = (*(v60 + 488))(ObjectType);
    v66 = v76;
    v67[0] = v77[0];
    *(v67 + 9) = *(v77 + 9);
    v44 = String.LocalizationOptions._nsOptions.getter();
    v45 = [v40 _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    LODWORD(v40) = _objc_isTaggedPointer(v45);
    v46 = v45;
    v29 = v46;
    if (!v40)
    {
      goto LABEL_45;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v46);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_77;
        }

LABEL_45:
        LOBYTE(v68[0]) = 0;
        *&v66 = 0;
        LOBYTE(v64[0]) = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          if (!v66)
          {
            goto LABEL_54;
          }

          if (v64[0])
          {
            if (LOBYTE(v68[0]) != 1)
            {
              IsCF = [v29 lengthOfBytesUsingEncoding_];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v59 = HIBYTE(v58) & 0xF;
            if ((v58 & 0x2000000000000000) == 0)
            {
              v59 = v57 & 0xFFFFFFFFFFFFLL;
            }

            if (v59)
            {
              v7 = v57;
              goto LABEL_61;
            }
          }
        }

        else
        {
          v50 = v29;
          v51 = String.init(_nativeStorage:)();
          if (v52)
          {
            v7 = v51;

            goto LABEL_77;
          }

          *&v66 = [v50 length];
          if (!v66)
          {

            goto LABEL_55;
          }
        }

        v7 = String.init(_cocoaString:)();
        goto LABEL_76;
      }

      result = [v29 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v54 = String.init(utf8String:)(result);
      if (v55)
      {
LABEL_60:
        v7 = v54;
LABEL_61:

LABEL_76:
        goto LABEL_77;
      }

      __break(1u);
    }

    LOWORD(v64[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v54 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v56)
    {
      [v29 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v7 = *&v68[0];
      goto LABEL_76;
    }

    goto LABEL_60;
  }

  v23 = v17 + 32;
  outlined init with copy of String.LocalizationOptions(&v76, &v66);
  swift_unknownObjectRetain();

  v15 = 0;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v23 + 40 * v15), *(v23 + 40 * v15 + 24));
    v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v25 = *v22;
    v26 = *(v24 + 16);
    v27 = __OFADD__(*v22, v26);
    v28 = *v22 + v26;
    if (v27)
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    v29 = v21[4];
    if (v29 >= v28)
    {
      goto LABEL_29;
    }

    if (v29 + 0x4000000000000000 < 0)
    {
      goto LABEL_81;
    }

    v30 = v21[5];
    if (2 * v29 > v28)
    {
      v28 = 2 * v29;
    }

    v21[4] = v28;
    if ((v28 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_82;
    }

    v31 = v24;
    v32 = swift_slowAlloc();
    v33 = v32;
    v21[5] = v32;
    if (v30)
    {
      if (v32 != v30 || v32 >= &v30[8 * v25])
      {
        memmove(v32, v30, 8 * v25);
      }

      v29 = v21;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v24 = v31;
      v23 = v17 + 32;
LABEL_29:
      v33 = v21[5];
      if (!v33)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    v24 = v31;
    v23 = v17 + 32;
    if (!v33)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_30:
    v35 = *(v24 + 16);
    if (v35)
    {
      break;
    }

LABEL_14:

    if (++v15 == v12)
    {
      goto LABEL_40;
    }
  }

  v36 = (v24 + 32);
  v37 = *v22;
  while (1)
  {
    v38 = *v36++;
    *&v33[8 * v37] = v38;
    v37 = *v22 + 1;
    if (__OFADD__(*v22, 1))
    {
      break;
    }

    *v22 = v37;
    if (!--v35)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_54:

LABEL_55:
  v7 = 0;
LABEL_77:

  outlined destroy of String.LocalizationOptions(&v76);

  swift_unknownObjectRelease();
  outlined destroy of LocalizedStringResource(&v69);
  swift_unknownObjectRelease();

  outlined destroy of String.LocalizationOptions(&v76);
LABEL_78:

  outlined destroy of String.LocalizationValue(&v62);
  return v7;
}

uint64_t specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (*(a1 + 96))
  {
    v35 = a2;
    v8 = *(a1 + 80);
    ObjectType = swift_getObjectType();
    (*(v8 + 296))(v31, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], ObjectType, v8);
    if (LODWORD(v31[0]))
    {
      String.utf8CString.getter();
      v10 = sandbox_extension_consume();

      if (v10 == -1)
      {
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, localizedStringLogger);
        outlined init with copy of LocalizedStringResource(a1, v31);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        outlined destroy of LocalizedStringResource(a1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          log = v21;
          *&v31[0] = swift_slowAlloc();
          v24 = *&v31[0];
          *v23 = 136315394;
          v25 = (*(v8 + 240))(ObjectType, v8);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v31);

          *(v23 + 4) = v27;
          *(v23 + 12) = 1026;
          *(v23 + 14) = MEMORY[0x1865CA7A0](v28);
          _os_log_impl(&dword_18075C000, log, v22, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v23, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x1865D2690](v24, -1, -1);
          MEMORY[0x1865D2690](v23, -1, -1);
        }

        else
        {
        }

        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      v4 = a3;
    }

    else
    {
      if (one-time initialization token for localizedStringLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, localizedStringLogger);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      v4 = a3;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_18075C000, v17, v18, "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.", v19, 2u);
        MEMORY[0x1865D2690](v19, -1, -1);
      }

      v11 = 1;
    }

    v5 = v35;
  }

  else
  {
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, localizedStringLogger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18075C000, v13, v14, "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.", v15, 2u);
      MEMORY[0x1865D2690](v15, -1, -1);
    }

    v11 = 1;
  }

  v33 = *(a1 + 72);
  v34 = v33;
  outlined init with copy of URL(&v34, v32);
  closure #1 in String.init(localized:options:)(&v33, v5, v4, v31);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if ((v11 & 1) == 0)
    {
      sandbox_extension_release();
    }

    return *&v31[0];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void closure #1 in String.init(localized:options:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X8>)
{
  v157 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v8 = objc_allocWithZone(NSBundle);
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 432);
  swift_unknownObjectRetain();
  v11 = v10(ObjectType, v7);
  v12 = [v8 initWithURL_];
  swift_unknownObjectRelease();

  if (!v12)
  {
    *a4 = 0;
    *(a4 + 1) = 0;
    return;
  }

  v13 = *(a2 + 32);
  v138 = *(a2 + 24);
  v14 = *a2;
  v136 = *(a2 + 17);
  v134 = a4;
  v140 = *a2;
  v132 = *(a2 + 8);
  v131 = *(a2 + 16);
  if (!v13)
  {
    outlined init with copy of String.LocalizationOptions(a2, &v149);
    v15 = [v12 localizations];
    if (!v15)
    {
      v15 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v143 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_181218E20;
    v146 = *(a3 + 7);
    v17 = *(&v146 + 1);
    v18 = swift_getObjectType();
    LOBYTE(v156) = 1;
    v19 = *(*(&v146 + 1) + 416);
    outlined init with copy of Locale(&v146, &v149);
    v20 = v19(&v156, v18, v17);
    v22 = v21;
    outlined destroy of Locale(&v146);
    *(v16 + 32) = v20;
    *(v16 + 40) = v22;
    v23 = [v143 preferredLocalizationsFromArray:v15 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

    swift_unknownObjectRelease();
    if (v23)
    {
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v25 = v23;
      }

      v14 = v140;
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v24 = v26;

        if (*(v24 + 2))
        {
          goto LABEL_15;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        [v23 copy];
        v65 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v24 = specialized _arrayForceCast<A, B>(_:)(v65);

        if (*(v24 + 2))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
      v14 = v140;
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_15:
        v13 = *(v24 + 5);
        v138 = *(v24 + 4);

        goto LABEL_16;
      }
    }

    v138 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  outlined init with copy of String.LocalizationOptions(a2, &v149);
LABEL_16:
  v27 = a3[2];
  v28 = a3[7];
  v139 = a3[6];
  v29 = a3[8];
  if (v14)
  {
    v30 = v14;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v149 = v30;
  v150 = 0;

  v31 = v12;
  swift_unknownObjectRetain();

  v144 = v29;
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v27, &v149, v28, v29);

  v141 = v28;
  swift_unknownObjectRelease();
  v33 = v13;
  if (v13)
  {
    v34 = v31;
    v35 = v31;

    v36 = [v35 localizations];
    if (!v36)
    {
      v36 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v37 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_181218E20;
    *(v38 + 32) = v138;
    *(v38 + 40) = v13;
    v39 = [v37 preferredLocalizationsFromArray:v36 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

    swift_unknownObjectRelease();
    if (v39)
    {
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v42 = v39;
      }

      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v41 = v43;
      }

      else
      {
        swift_unknownObjectRelease();
        [v39 copy];
        v44 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v41 = specialized _arrayForceCast<A, B>(_:)(v44);
      }
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v31 = v34;
  }

  else
  {
    v40 = v31;
    v41 = 0;
  }

  v45 = v139;
  v46 = String._bridgeToObjectiveCImpl()();

  v47 = String._bridgeToObjectiveCImpl()();
  if (v139)
  {
    v45 = String._bridgeToObjectiveCImpl()();
  }

  v48 = v32;
  if (v41)
  {
    v41 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v49 = v31;
  v50 = [v31 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v137 = v33;
  if (!v50)
  {

    v135 = 0;
    v58 = 0xE000000000000000;
    v54 = v49;
    v55 = v48;
    v59 = *(v48 + 16);
    if (v59)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  isTaggedPointer = _objc_isTaggedPointer(v50);
  v52 = v50;
  v53 = v52;
  v54 = v49;
  v55 = v48;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_43;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v52);
  if (!TaggedPointerTag)
  {
    LOWORD(v147[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v69)
    {
      v58 = v69;
LABEL_71:
      v135 = v68;
      goto LABEL_72;
    }

    [v53 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v58 = *(&v156 + 1);
    v135 = v156;
LABEL_75:

LABEL_76:
    v59 = *(v48 + 16);
    if (v59)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  if (TaggedPointerTag == 22)
  {
    v66 = [v53 UTF8String];
    if (v66)
    {
      v135 = String.init(utf8String:)(v66);
      if (v67)
      {
        v58 = v67;
LABEL_72:

        goto LABEL_76;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_162;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_43:
    LOBYTE(v156) = 0;
    v149 = 0;
    LOBYTE(v147[0]) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (v149)
      {
        if (v147[0])
        {
          if (v156 != 1)
          {
            IsCF = [v53 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v68 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v58 = v70;
          v71 = HIBYTE(v70) & 0xF;
          if ((v70 & 0x2000000000000000) == 0)
          {
            v71 = v68 & 0xFFFFFFFFFFFFLL;
          }

          if (v71)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_74;
      }
    }

    else
    {
      v61 = v53;
      v62 = String.init(_nativeStorage:)();
      if (v63)
      {
        v64 = v63;
        v135 = v62;

        v58 = v64;
        v59 = *(v48 + 16);
        if (v59)
        {
          goto LABEL_81;
        }

        goto LABEL_77;
      }

      v149 = [v61 length];
      if (v149)
      {
LABEL_74:
        v135 = String.init(_cocoaString:)();
        v58 = v72;
        goto LABEL_75;
      }
    }

    v135 = 0;
    v58 = 0xE000000000000000;
    v59 = *(v48 + 16);
    if (v59)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v135 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v58 = v57;

  v59 = *(v48 + 16);
  if (v59)
  {
    goto LABEL_81;
  }

LABEL_77:
  if (v136)
  {

    v73 = v134;
    v74 = v135;
    goto LABEL_155;
  }

  v74 = v135;
  String._bridgeToObjectiveCImpl()();
  v75 = _CFStringGetFormatSpecifierConfiguration();
  swift_unknownObjectRelease();
  v73 = v134;
  if (!v75)
  {

    goto LABEL_155;
  }

  v59 = *(v55 + 16);
  if (!v59)
  {
    v133 = v54;

    v76 = MEMORY[0x1E69E7CC0];
    goto LABEL_86;
  }

LABEL_81:
  v133 = v54;
  v145 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
  v76 = v145;
  v77 = v55 + 32;
  do
  {
    outlined init with copy of String.LocalizationValue.FormatArgument(v77, &v149);
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v156, v147, 0, v141, v144);
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v147[0], v147[1], v148);
    outlined destroy of String.LocalizationValue.FormatArgument(&v149);
    v79 = *(v145 + 16);
    v78 = *(v145 + 24);
    if (v79 >= v78 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
    }

    *(v145 + 16) = v79 + 1;
    outlined init with take of Equatable(&v156, v145 + 40 * v79 + 32);
    v77 += 112;
    --v59;
  }

  while (v59);

LABEL_86:
  type metadata accessor for __VaListBuilder();
  v80 = swift_allocObject();
  v80[2] = 8;
  v80[3] = 0;
  v81 = v80 + 3;
  v80[4] = 0;
  v80[5] = 0;
  v142 = v80;
  v82 = *(v76 + 16);
  if (!v82)
  {
LABEL_111:

    swift_unknownObjectRetain();

LABEL_112:
    v101 = __VaListBuilder.va_list()();
    v102 = objc_opt_self();
    v103 = String._bridgeToObjectiveCImpl()();
    v104 = swift_getObjectType();
    v105 = (*(v144 + 488))(v104);
    v149 = v140;
    v150 = v132;
    v151 = v131;
    v152 = v136 & 1;
    v153 = v138;
    v154 = v137;
    v155 = 1;
    v106 = String.LocalizationOptions._nsOptions.getter();
    v107 = [v102 _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    LODWORD(v103) = _objc_isTaggedPointer(v107);
    v108 = v107;
    v84 = v108;
    v81 = v133;
    if (!v103)
    {
      goto LABEL_117;
    }

    v109 = _objc_getTaggedPointerTag(v108);
    if (!v109)
    {
      LOWORD(v147[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v119 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v120)
      {
        [v84 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v125 = v156;

        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease();

        *v134 = v125;

        goto LABEL_156;
      }

      v74 = v119;
      v111 = v120;
      goto LABEL_130;
    }

    if (v109 != 22)
    {
      if (v109 == 2)
      {
        MEMORY[0x1EEE9AC00](v109);
        v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v111 = v110;

        v73 = v134;
        goto LABEL_154;
      }

LABEL_117:
      LOBYTE(v156) = 0;
      v149 = 0;
      LOBYTE(v147[0]) = 0;
      v112 = __CFStringIsCF();
      if (v112)
      {
        if (!v149)
        {
          goto LABEL_124;
        }

        if (v147[0])
        {
          if (v156 == 1)
          {
            MEMORY[0x1EEE9AC00](v112);
            v121 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v111 = v122;
            v123 = HIBYTE(v122) & 0xF;
            if ((v122 & 0x2000000000000000) == 0)
            {
              v123 = v121 & 0xFFFFFFFFFFFFLL;
            }

            if (v123)
            {
              v124 = v121;

              v73 = v134;
              v74 = v124;
              v81 = v133;
              goto LABEL_154;
            }

            v73 = v134;
            goto LABEL_151;
          }

          v126 = [v84 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v126);
          v127 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v111 = v128;
          v129 = HIBYTE(v128) & 0xF;
          if ((v128 & 0x2000000000000000) == 0)
          {
            v129 = v127 & 0xFFFFFFFFFFFFLL;
          }

          if (!v129)
          {
            v73 = v134;
LABEL_151:

            goto LABEL_152;
          }

          v74 = v127;
LABEL_130:

          goto LABEL_141;
        }

        v73 = v134;
LABEL_152:
        v74 = String.init(_cocoaString:)();
        v111 = v130;
        goto LABEL_153;
      }

      v113 = v84;
      v114 = String.init(_nativeStorage:)();
      if (v115)
      {
        v74 = v114;
        v111 = v115;

        v73 = v134;
      }

      else
      {
        v149 = [v113 length];
        v73 = v134;
        if (v149)
        {
          v81 = v133;
          goto LABEL_152;
        }

        v74 = 0;
        v111 = 0xE000000000000000;
      }

      v81 = v133;
      goto LABEL_154;
    }

    v116 = [v84 UTF8String];
    if (v116)
    {
      v117 = String.init(utf8String:)(v116);
      v73 = v134;
      if (v118)
      {
        v74 = v117;
        v111 = v118;

LABEL_153:
        goto LABEL_154;
      }

LABEL_163:
      __break(1u);
      return;
    }

LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  swift_unknownObjectRetain();

  v83 = 0;
  while (1)
  {
    v84 = __swift_project_boxed_opaque_existential_1((v76 + 32 + 40 * v83), *(v76 + 32 + 40 * v83 + 24));
    v85 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v86 = *v81;
    v87 = *(v85 + 16);
    v88 = __OFADD__(*v81, v87);
    v89 = *v81 + v87;
    if (v88)
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
    }

    v90 = v142;
    v91 = v142[4];
    if (v91 >= v89)
    {
      goto LABEL_103;
    }

    if (v91 + 0x4000000000000000 < 0)
    {
      goto LABEL_158;
    }

    v92 = v142[5];
    if (2 * v91 > v89)
    {
      v89 = 2 * v91;
    }

    v142[4] = v89;
    if ((v89 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_159;
    }

    v93 = v85;
    v94 = swift_slowAlloc();
    v84 = v142;
    v95 = v94;
    v142[5] = v94;
    if (v92)
    {
      if (v94 != v92 || v94 >= &v92[8 * v86])
      {
        memmove(v94, v92, 8 * v86);
        v84 = v142;
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v90 = v142;
      v85 = v93;
LABEL_103:
      v95 = v90[5];
      if (!v95)
      {
        goto LABEL_110;
      }

      goto LABEL_104;
    }

    v85 = v93;
    if (!v95)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_104:
    v97 = *(v85 + 16);
    if (v97)
    {
      break;
    }

LABEL_88:

    if (++v83 == v82)
    {
      goto LABEL_112;
    }
  }

  v98 = (v85 + 32);
  v99 = *v81;
  while (1)
  {
    v100 = *v98++;
    *&v95[8 * v99] = v100;
    v99 = *v81 + 1;
    if (__OFADD__(*v81, 1))
    {
      break;
    }

    *v81 = v99;
    if (!--v97)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_124:

  v74 = 0;
  v111 = 0xE000000000000000;
LABEL_141:
  v73 = v134;
LABEL_154:

  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();

  v58 = v111;
LABEL_155:
  *v73 = v74;
  v73[1] = v58;

LABEL_156:
}

Foundation::Date __swiftcall Date.init(timeIntervalSince1970:)(Swift::Double timeIntervalSince1970)
{
  result._time = timeIntervalSince1970 + -978307200.0;
  *v1 = result._time;
  return result;
}

Foundation::Date __swiftcall Date.addingTimeInterval(_:)(Swift::Double a1)
{
  result._time = *v2 + a1;
  *v1 = result._time;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder(uint64_t result)
{
  v2 = *v1;
  if (*(*v1 + 32) == 255)
  {
    *(v2 + 16) = result & 1;
    *(v2 + 24) = 0;
    *(v2 + 32) = 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CustomNSError.errorUserInfo.getter()
{
  return MEMORY[0x1E69E7CC8];
}

{
  return MEMORY[0x1E69E7CC8];
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UInt16(void *a1, uint64_t a2)
{
  v3 = [a1 unsignedShortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 2) = 0;
  }

  return v5 & 1;
}

id @objc static NSLocale._availableLocaleIdentifiers.getter()
{
  specialized static Locale.availableIdentifiers.getter();
  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

uint64_t specialized NSDecimal._multiplyByPowerOfTen(power:roundingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a4;
  if (!_So9NSDecimala__length_getter(&v14))
  {
    *&v14 = a2;
    *(&v14 + 1) = a3;
    v15 = a4;
    if (_So9NSDecimala__isNegative_getter(&v14))
    {
      goto LABEL_12;
    }
  }

  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a4;
  if (!_So9NSDecimala__length_getter(&v14))
  {
    return 0;
  }

  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a4;
  v12 = v14;
  v13 = a4;
  result = _So9NSDecimala__exponent_getter(&v12);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = __OFADD__(result, a1);
  result = (result + a1);
  if (v9)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result <= -129)
  {
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  if (result >= 128)
  {
LABEL_12:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }

  _So9NSDecimala__exponent_setter(result, &v14);
  return v14;
}

uint64_t specialized static Locale.availableIdentifiers.getter()
{
  v10 = MEMORY[0x1E69E7CD0];
  result = uloc_countAvailable();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      goto LABEL_9;
    }

    v2 = 0;
    while (1)
    {
      result = uloc_getAvailable();
      if (!result)
      {
        break;
      }

      ++v2;
      v3 = String.init(cString:)();
      specialized Set._Variant.insert(_:)(&v9, v3, v4);

      if (v1 == v2)
      {
        v5 = v10;
        v6 = *(v10 + 16);
        if (v6)
        {
          while (1)
          {
            v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v6, 0);
            v8 = specialized Sequence._copyContents(initializing:)(&v9, v7 + 4, v6, v5);
            outlined consume of Set<AnyKeyPath>.Iterator._Variant(v9);
            if (v8 == v6)
            {
              break;
            }

            __break(1u);
LABEL_9:
            v5 = MEMORY[0x1E69E7CD0];
            v6 = *(MEMORY[0x1E69E7CD0] + 16);
            if (!v6)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:

          return MEMORY[0x1E69E7CC0];
        }

        return v7;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t CustomNSError<>.errorCode.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v13 - v7;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(a4 + 8);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v10 = specialized numericCast<A, B>(_:)(v8, AssociatedTypeWitness, v9);
  }

  else
  {
    v10 = specialized numericCast<A, B>(_:)(v8, AssociatedTypeWitness, v9);
  }

  v11 = v10;
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v11;
}

uint64_t specialized static Calendar.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 96);
  if (v5(ObjectType, v2) & 1) != 0 || (v6 = swift_getObjectType(), v38 = ObjectType, v7 = *(v3 + 96), swift_unknownObjectRetain(), v8 = v7(v6, v3), ObjectType = v38, v9 = v8, swift_unknownObjectRelease(), (v9))
  {
    v10 = v5(ObjectType, v2);
    v11 = swift_getObjectType();
    v12 = v10 ^ (*(v3 + 96))(v11, v3) ^ 1;
    return v12 & 1;
  }

  (*(v2 + 24))(&v42, v38, v2);
  v13 = v42;
  (*(v3 + 24))(&v41, v6, v3);
  if (v13 != v41)
  {
    goto LABEL_14;
  }

  v14 = v6;
  (*(v2 + 48))(&v42, v38, v2);
  v41 = v42;
  (*(v3 + 48))(&v40, v6, v3);
  v39 = v40;
  v15 = specialized static TimeZone.== infix(_:_:)(&v41, &v39);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = (*(v2 + 56))(v38, v2);
  if (v16 != (*(v3 + 56))(v6, v3))
  {
    goto LABEL_14;
  }

  v17 = (*(v2 + 72))(v38, v2);
  if (v17 != (*(v3 + 72))(v6, v3))
  {
    goto LABEL_14;
  }

  v18 = (*(v2 + 40))(v38, v2);
  v20 = v19;
  if (v18 == (*(v3 + 40))(v6, v3) && v20 == v21)
  {

    goto LABEL_12;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v22 & 1) == 0)
  {
LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

LABEL_12:
  v23 = (*(v2 + 64))(v38, v2);
  v25 = v24;
  v26 = *(v3 + 64);
  swift_unknownObjectRetain();
  v37 = v14;
  v27 = v26(v14, v3);
  v29 = v28;
  swift_unknownObjectRelease();
  if (v25)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
    if ((v29 & 1) != 0 || v23 != v27)
    {
      return v12 & 1;
    }
  }

  v31 = (*(v2 + 80))(v38, v2);
  v33 = v32;
  v34 = *(v3 + 80);
  swift_unknownObjectRetain();
  v35 = v34(v37, v3);
  v12 = v36;
  swift_unknownObjectRelease();
  if ((v33 & 1) == 0)
  {
    v12 = (v31 == v35) & ~v12;
  }

  return v12 & 1;
}

uint64_t protocol witness for _CalendarProtocol.localeIdentifier.getter in conformance _CalendarGregorian()
{
  if (!*(v0 + 96))
  {
    return 0;
  }

  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 64);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t protocol witness for _LocaleProtocol.languageCode.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 152))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t _NSSwiftLocale.classForCoder.getter()
{
  v6 = *(v0 + OBJC_IVAR____NSSwiftLocale_locale);
  type metadata accessor for _LocaleAutoupdating();
  v5[0] = swift_initStaticObject();
  v5[1] = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  swift_unknownObjectRetain();
  v1 = specialized static Locale.== infix(_:_:)(&v6, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = &lazy cache variable for type metadata for NSAutoLocale;
    v3 = off_1E69EE1D8;
  }

  else
  {
    v2 = &lazy cache variable for type metadata for NSLocale;
    v3 = 0x1E695DF58;
  }

  return type metadata accessor for NSMorphologyPronoun(0, v2, v3);
}

Swift::Void __swiftcall _NSSwiftLocale.encode(with:)(NSCoder with)
{
  v78[6] = *MEMORY[0x1E69E9840];
  if (![(objc_class *)with.super.isa allowsKeyedCoding])
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v8 = @"NSDebugDescription";
    v9 = v8;
    if (!isTaggedPointer)
    {
LABEL_10:
      LOBYTE(v73) = 0;
      v75 = 0;
      if (__CFStringIsCF())
      {

LABEL_14:
        v11 = 0;
        v13 = 0xE000000000000000;
        goto LABEL_24;
      }

      v14 = v9;
      v15 = String.init(_nativeStorage:)();
      if (v16)
      {
        v11 = v15;
        v13 = v16;

        goto LABEL_24;
      }

      v75 = [(__CFString *)v14 length];
      if (!v75)
      {

        goto LABEL_14;
      }

      v11 = String.init(_cocoaString:)();
      v13 = v20;
LABEL_24:
      v78[0] = v11;
      v78[1] = v13;
      v78[5] = MEMORY[0x1E69E6158];
      v78[2] = 0xD000000000000026;
      v78[3] = 0x800000018147FF90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v21 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v78, &v75);

      outlined destroy of TermOfAddress?(v78, &_sSS_yptMd, &_sSS_yptMR);
      v22 = v75;
      v23 = v76;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
      v26 = v25;

      if (v26)
      {
        __break(1u);
      }

      else
      {
        v21[(v24 >> 6) + 8] |= 1 << v24;
        v27 = (v21[6] + 16 * v24);
        *v27 = v22;
        v27[1] = v23;
        outlined init with take of Any(&v77, (v21[7] + 32 * v24));
        v28 = v21[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (!v29)
        {
          v21[2] = v30;
          v31 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v32 = @"NSCocoaErrorDomain";
          v33 = v32;
          if (!v31)
          {
LABEL_31:
            LOBYTE(v73) = 0;
            v75 = 0;
            if (!__CFStringIsCF())
            {
              v35 = v33;
              String.init(_nativeStorage:)();
              if (v36 || (v75 = [(__CFString *)v35 length]) == 0)
              {

                goto LABEL_46;
              }

              goto LABEL_45;
            }

            if (v75)
            {
LABEL_45:
              String.init(_cocoaString:)();
LABEL_46:
              v40 = objc_allocWithZone(NSError);
              v41 = String._bridgeToObjectiveCImpl()();

              v42 = [v40 initWithDomain:v41 code:4864 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v43 = [v42 domain];
              if (!v43)
              {
                goto LABEL_58;
              }

              v44 = v43;
              v45 = _objc_isTaggedPointer(v43);
              v46 = v44;
              v47 = v46;
              if ((v45 & 1) == 0)
              {
LABEL_52:
                LOBYTE(v73) = 0;
                v75 = 0;
                if (__CFStringIsCF())
                {
                  if (v75)
                  {
LABEL_67:
                    v49 = String.init(_cocoaString:)();
                    v51 = v58;
                    goto LABEL_68;
                  }
                }

                else
                {
                  v52 = v47;
                  v53 = String.init(_nativeStorage:)();
                  if (v54)
                  {
                    v49 = v53;
                    v51 = v54;

                    goto LABEL_69;
                  }

                  v75 = [v52 length];
                  if (v75)
                  {
                    goto LABEL_67;
                  }
                }

LABEL_58:
                v49 = 0;
                v51 = 0xE000000000000000;
                goto LABEL_69;
              }

              TaggedPointerTag = _objc_getTaggedPointerTag(v46);
              if (TaggedPointerTag)
              {
                if (TaggedPointerTag != 22)
                {
                  if (TaggedPointerTag == 2)
                  {
                    MEMORY[0x1EEE9AC00](TaggedPointerTag);
                    v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v51 = v50;

LABEL_69:
                    v59 = v33;
                    v60 = v59;
                    if (!v31)
                    {
                      goto LABEL_74;
                    }

                    v61 = _objc_getTaggedPointerTag(v59);
                    if (!v61)
                    {
                      goto LABEL_84;
                    }

                    if (v61 != 22)
                    {
                      if (v61 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v61);
                        v62 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v64 = v63;

                        goto LABEL_90;
                      }

LABEL_74:
                      v75 = 0;
                      if (__CFStringIsCF())
                      {
                        if (v75)
                        {
LABEL_89:
                          v62 = String.init(_cocoaString:)();
                          v64 = v71;
LABEL_90:
                          if (v49 == v62 && v51 == v64)
                          {

LABEL_94:
                            [(objc_class *)with.super.isa failWithError:_swift_stdlib_bridgeErrorToNSError()];
                            swift_unknownObjectRelease();
                            return;
                          }

                          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v72)
                          {
                            goto LABEL_94;
                          }

LABEL_97:
                          __break(1u);
                        }
                      }

                      else
                      {
                        v65 = v60;
                        v66 = String.init(_nativeStorage:)();
                        if (v67)
                        {
                          v62 = v66;
                          v64 = v67;

                          goto LABEL_90;
                        }

                        v75 = [(__CFString *)v65 length];
                        if (v75)
                        {
                          goto LABEL_89;
                        }
                      }

                      v62 = 0;
                      v64 = 0xE000000000000000;
                      goto LABEL_90;
                    }

                    v68 = [(__CFString *)v60 UTF8String];
                    if (v68)
                    {
                      v69 = String.init(utf8String:)(v68);
                      if (v70)
                      {
                        goto LABEL_85;
                      }

                      __break(1u);
LABEL_84:
                      _CFIndirectTaggedPointerStringGetContents();
                      v69 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v70)
                      {
                        [(__CFString *)v60 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v62 = v73;
                        v64 = v74;
                        goto LABEL_90;
                      }

LABEL_85:
                      v62 = v69;
                      v64 = v70;

                      goto LABEL_90;
                    }

                    goto LABEL_100;
                  }

                  goto LABEL_52;
                }

                v55 = [v47 UTF8String];
                if (!v55)
                {
LABEL_101:
                  __break(1u);
                  return;
                }

                v56 = String.init(utf8String:)(v55);
                if (v57)
                {
                  goto LABEL_63;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              v56 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v57)
              {
                [v47 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v49 = v73;
                v51 = v74;
                goto LABEL_68;
              }

LABEL_63:
              v49 = v56;
              v51 = v57;

LABEL_68:
              goto LABEL_69;
            }

LABEL_41:

            goto LABEL_46;
          }

          v34 = _objc_getTaggedPointerTag(v32);
          if (!v34)
          {
LABEL_40:
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v39)
            {
              [(__CFString *)v33 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_46;
            }

            goto LABEL_41;
          }

          if (v34 != 22)
          {
            if (v34 == 2)
            {
              MEMORY[0x1EEE9AC00](v34);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_46;
            }

            goto LABEL_31;
          }

          v37 = [(__CFString *)v33 UTF8String];
          if (v37)
          {
            String.init(utf8String:)(v37);
            if (v38)
            {
              goto LABEL_41;
            }

            __break(1u);
            goto LABEL_40;
          }

LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }
      }

      __break(1u);
      goto LABEL_97;
    }

    v10 = _objc_getTaggedPointerTag(v8);
    if (v10)
    {
      if (v10 != 22)
      {
        if (v10 == 2)
        {
          MEMORY[0x1EEE9AC00](v10);
          v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v13 = v12;

          goto LABEL_24;
        }

        goto LABEL_10;
      }

      v17 = [(__CFString *)v9 UTF8String];
      if (!v17)
      {
        __break(1u);
        goto LABEL_99;
      }

      v18 = String.init(utf8String:)(v17);
      if (v19)
      {
LABEL_19:
        v11 = v18;
        v13 = v19;

        goto LABEL_24;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v19)
    {
      [(__CFString *)v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v73;
      v13 = v74;
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v3 = *(v1 + OBJC_IVAR____NSSwiftLocale_locale + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 64);
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  v6 = String._bridgeToObjectiveCImpl()();
  swift_unknownObjectRelease();

  [(objc_class *)with.super.isa encodeObject:v6 forKey:String._bridgeToObjectiveCImpl()()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}