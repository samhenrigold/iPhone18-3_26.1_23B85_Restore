uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C564C894(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C564C8DC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1C564C95C(uint64_t a1)
{
  result = sub_1C584E8B0();
  if (v2 <= 0x3F)
  {
    result = sub_1C5626E40(319, &unk_1EC170B70, 0x1E696AAB0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C564CA60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C564CA98(uint64_t a1)
{
  result = sub_1C584E8B0();
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

void type metadata accessor for MUActionStyle()
{
  if (!qword_1EC16DE88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC16DE88);
    }
  }
}

void sub_1C564CBC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_areLabelsArrangedVertically];
    v3 = [Strong traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LODWORD(v3) = sub_1C584FA50() & 1;
    if (v2 != v3)
    {
      sub_1C564B700();
    }
  }
}

uint64_t sub_1C564CC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EVChargingRow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C564CCD4(uint64_t a1)
{
  v2 = type metadata accessor for EVChargingRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C564CD3C()
{
  v5 = v0;
  v6 = MEMORY[0x1E69E7CC0];
  v184 = MEMORY[0x1E69E7CC0];
  v7 = *(v0 + 32);
  if (!*(v7 + 16))
  {
    *&v193 = *(v0 + 40);
    LODWORD(v201[0]) = sub_1C57246C0();
    LODWORD(v176) = 0;
    type metadata accessor for UILayoutPriority(0);
    sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
    if (sub_1C584F610())
    {
      sub_1C5625EE8(v0, v201);
      v13 = *(v0 + 24);
      v14 = sub_1C570FB88(*(v5 + 24));
      sub_1C570FC58(v13);
      v16 = v15;
      sub_1C570FCBC(v13);
      v18 = v16 + v17;
      *&v176 = *(v5 + 40);
      v19 = sub_1C57246C0();
      sub_1C5705704(v201, v14, 0, 0x657A69536F72657ALL, 0xE800000000000000, &v193, v18, v19);
      v20 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1C5625864((v21 > 1), v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      sub_1C5625808(&v193, &v20[14 * v22 + 4]);
      return v20;
    }

    return v184;
  }

  sub_1C564E90C(&v183);
  v8 = v183;
  v9 = v183 >> 29;
  v175 = v0;
  if (v183 >> 29 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        if (*(v7 + 16) == 1)
        {
          v23 = sub_1C564EA4C();
          v12 = v23[2];
          if (!v12)
          {
            __break(1u);
            goto LABEL_168;
          }

          sub_1C5651DB8((v23 + 4), &v193);
        }

        else
        {
          sub_1C5651AD8(&v193);
          v58 = sub_1C564EA4C();
          sub_1C5651AD8(v201);
          sub_1C563E588(&v176);
          LOBYTE(v191) = v176;
          DWORD1(v191) = DWORD1(v176);
          sub_1C563E588(&v188);
          LOBYTE(v186) = LOBYTE(v188);
          v187 = v189;
          v59 = sub_1C564F848(v58, v201, &v191, &v186);

          sub_1C5651D88(v201);
          sub_1C5650E8C(v59);
        }

        v60 = *(&v8 + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1C5867900;
        sub_1C5651DB8(&v193, v61 + 32);
        sub_1C564E90C(v201);
        if (((1 << (LODWORD(v201[0]) >> 29)) & 0x3A) != 0)
        {
          sub_1C5625EE8(v0, v201);
          v202 = 0.0;
        }

        else
        {
          sub_1C5625EE8(v0, v201);
          v202 = sub_1C5651BA4();
        }

        v203 = sub_1C5651C6C();
        v204 = v71;
        v205 = v72;
        v206 = v73;
        v207 = 4;
        sub_1C563E56C(v8 & 1, &v176, 0.0);
        LOBYTE(v191) = v176;
        DWORD1(v191) = DWORD1(v176);
        sub_1C563E56C(v8 & 1, &v188, 0.0);
        LOBYTE(v186) = LOBYTE(v188);
        v187 = v189;
        v74 = sub_1C564F848(v61, v201, &v191, &v186);
        swift_setDeallocating();
        sub_1C5651D88(v61 + 32);
        swift_deallocClassInstance();
        sub_1C5651D88(v201);
        sub_1C5650E8C(v74);
        sub_1C564E90C(v201);
        if (((1 << (LODWORD(v201[0]) >> 29)) & 0x3A) != 0)
        {
          sub_1C5625EE8(v0, v201);
          v202 = 0.0;
        }

        else
        {
          sub_1C5625EE8(v0, v201);
          v202 = sub_1C5651BA4();
        }

        v203 = sub_1C5651C6C();
        v204 = v75;
        v205 = v76;
        v206 = v77;
        v207 = 4;
        sub_1C5652004(&v191);
        if (v192 == 255)
        {
          v92 = &v191;
        }

        else
        {
          sub_1C56251C8(&v191, &v176);
          sub_1C5652004(&v188);
          if (v190 != 255)
          {
            sub_1C56251C8(&v188, &v191);
            sub_1C5651E28();
            v78 = *(v0 + 24);
            sub_1C570FC58(v78);
            v80 = v79;
            sub_1C5651E28();
            sub_1C570FCBC(v78);
            v82 = (v80 - v81) * 0.5;
            sub_1C5651F1C();
            sub_1C570FD20(v78);
            v4 = v82 + v83;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8B0, &qword_1C5869AC0);
            v84 = swift_allocObject();
            *(v84 + 16) = xmmword_1C5867900;
            sub_1C5625EE8(&v176, &v188);
            v85 = sub_1C570FAB8(v78);
            sub_1C5625EE8(&v191, &v186);
            v86 = sub_1C570FAB8(v78);
            v87 = sub_1C56521A0();
            v89 = v88;
            v90 = sub_1C5625100();
            v91 = sub_1C57056F8();
            sub_1C5625108(&v188, v85, 0, &v186, v86, v87, v89, v84 + 32, v90, v4, v91);
            sub_1C5626250(&v191);
            sub_1C5626250(&v176);
LABEL_97:
            sub_1C5651D88(v201);
            sub_1C5650E8C(v84);
            v1 = swift_allocObject();
            *(v1 + 16) = xmmword_1C5867990;
            sub_1C5651DB8(&v193, v1 + 32);
            sub_1C564E90C(v201);
            v93 = v1 + 128;
            if (((1 << (LODWORD(v201[0]) >> 29)) & 0x3A) != 0)
            {
              sub_1C5625EE8(v5, v93);
              *(v1 + 152) = 0;
            }

            else
            {
              sub_1C5625EE8(v5, v93);
              *(v1 + 152) = sub_1C5651BA4();
            }

            *(v1 + 160) = sub_1C5651C6C();
            *(v1 + 168) = v94;
            *(v1 + 176) = v95;
            *(v1 + 184) = v96;
            *(v1 + 216) = 4;
            v97 = sub_1C5650F84(v1, v60);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_1C5650E8C(v97);
            sub_1C5651D88(&v193);
            goto LABEL_101;
          }

          sub_1C5626250(&v176);
          v92 = &v188;
        }

        sub_1C5625230(v92, &unk_1EC16FE40, &qword_1C5876370);
        v84 = MEMORY[0x1E69E7CC0];
        goto LABEL_97;
      }

      v35 = HIDWORD(v183);
      v1 = sub_1C564EA4C();
      sub_1C564E90C(&v193);
      if (((1 << (v193 >> 29)) & 0x3A) != 0)
      {
        sub_1C5625EE8(v0, &v193);
        v195 = 0.0;
      }

      else
      {
        sub_1C5625EE8(v0, &v193);
        v195 = sub_1C5651BA4();
      }

      v196 = sub_1C5651C6C();
      v197 = v66;
      v198 = v67;
      v199 = v68;
      v200 = 4;
      LOBYTE(v201[0]) = v8 & 1;
      HIDWORD(v201[0]) = v35;
      sub_1C563E588(&v176);
      LOBYTE(v191) = v176;
      DWORD1(v191) = DWORD1(v176);
      v65 = v201;
    }

    else
    {
      v34 = HIDWORD(v183);
      v1 = sub_1C564EA4C();
      sub_1C564E90C(&v193);
      if (((1 << (v193 >> 29)) & 0x3A) != 0)
      {
        sub_1C5625EE8(v0, &v193);
        v195 = 0.0;
      }

      else
      {
        sub_1C5625EE8(v0, &v193);
        v195 = sub_1C5651BA4();
      }

      v196 = sub_1C5651C6C();
      v197 = v62;
      v198 = v63;
      v199 = v64;
      v200 = 4;
      sub_1C563E588(v201);
      LOBYTE(v176) = v201[0];
      DWORD1(v176) = HIDWORD(v201[0]);
      LOBYTE(v191) = v8 & 1;
      DWORD1(v191) = v34;
      v65 = &v176;
    }

    v69 = &v191;
    goto LABEL_84;
  }

  if (v183 >> 29 > 4)
  {
    if (v9 == 5)
    {
      goto LABEL_19;
    }

    v1 = sub_1C564EA4C();
    if (v8 != 3221225472)
    {
      sub_1C564E90C(&v193);
      if (((1 << (v193 >> 29)) & 0x3A) != 0)
      {
        sub_1C5625EE8(v0, &v193);
        v195 = 0.0;
      }

      else
      {
        sub_1C5625EE8(v0, &v193);
        v195 = sub_1C5651BA4();
      }

      v196 = sub_1C5651C6C();
      v197 = v137;
      v198 = v138;
      v199 = v139;
      v200 = 4;
      sub_1C563E588(v201);
      LOBYTE(v176) = v201[0];
      DWORD1(v176) = HIDWORD(v201[0]);
      sub_1C563E588(&v191);
      LOBYTE(v188) = v191;
      v189 = DWORD1(v191);
      v140 = sub_1C564F848(v1, &v193, &v176, &v188);

      sub_1C5651D88(&v193);
      sub_1C5650E8C(v140);
      v1 = sub_1C564EA4C();
      v2 = sub_1C5650F84(v1, 1000.0);

      goto LABEL_86;
    }

    sub_1C564E90C(&v193);
    if (((1 << (v193 >> 29)) & 0x3A) != 0)
    {
      sub_1C5625EE8(v0, &v193);
      v195 = 0.0;
    }

    else
    {
      sub_1C5625EE8(v0, &v193);
      v195 = sub_1C5651BA4();
    }

    v196 = sub_1C5651C6C();
    v197 = v134;
    v198 = v135;
    v199 = v136;
    v200 = 4;
    sub_1C563E588(v201);
    LOBYTE(v176) = v201[0];
    DWORD1(v176) = HIDWORD(v201[0]);
    sub_1C563E588(&v191);
    LOBYTE(v188) = v191;
    v189 = DWORD1(v191);
    v65 = &v176;
    v69 = &v188;
LABEL_84:
    v2 = sub_1C564F848(v1, &v193, v65, v69);

    v70 = &v193;
LABEL_85:
    sub_1C5651D88(v70);
LABEL_86:
    sub_1C5650E8C(v2);
    goto LABEL_101;
  }

  if (v9 == 3)
  {
    v3 = HIDWORD(v183);
    v10 = *(&v183 + 1);
    if (*(v7 + 16) == 2)
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C5867900;
      v11 = sub_1C564EA4C();
      v12 = v11[2];
      if (v12)
      {
        sub_1C5651DB8((v11 + 4), v2 + 32);

        sub_1C564E90C(&v193);
        if (((1 << (v193 >> 29)) & 0x3A) != 0)
        {
          sub_1C5625EE8(v0, &v193);
          v195 = 0.0;
        }

        else
        {
          sub_1C5625EE8(v0, &v193);
          v195 = sub_1C5651BA4();
        }

        v196 = sub_1C5651C6C();
        v197 = v141;
        v198 = v142;
        v199 = v143;
        v200 = 4;
        sub_1C563E588(v201);
        LOBYTE(v176) = v201[0];
        DWORD1(v176) = HIDWORD(v201[0]);
        sub_1C563E560(&v191);
        LOBYTE(v188) = v191;
        v189 = DWORD1(v191);
        v144 = sub_1C564F848(v2, &v193, &v176, &v188);
        swift_setDeallocating();
        sub_1C5651D88(v2 + 32);
        swift_deallocClassInstance();
        sub_1C5651D88(&v193);
        sub_1C5650E8C(v144);
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_1C5867900;
        v145 = sub_1C564EA4C();
        v12 = v145[2];
        if (v12 >= 2)
        {
          sub_1C5651DB8((v145 + 16), v1 + 32);

          sub_1C564E90C(&v193);
          if (((1 << (v193 >> 29)) & 0x3A) != 0)
          {
            sub_1C5625EE8(v0, &v193);
            v195 = 0.0;
          }

          else
          {
            sub_1C5625EE8(v0, &v193);
            v195 = sub_1C5651BA4();
          }

          v196 = sub_1C5651C6C();
          v197 = v146;
          v198 = v147;
          v199 = v148;
          v200 = 4;
          sub_1C563E560(v201);
          LOBYTE(v176) = v201[0];
          DWORD1(v176) = HIDWORD(v201[0]);
          sub_1C563E588(&v191);
          LOBYTE(v188) = v191;
          v189 = DWORD1(v191);
          v2 = sub_1C564F848(v1, &v193, &v176, &v188);
          swift_setDeallocating();
          sub_1C5651D88(v1 + 32);
          swift_deallocClassInstance();
          sub_1C5651D88(&v193);
          sub_1C5650E8C(v2);
          v149 = sub_1C564EA4C();
          v12 = v149[2];
          if (v12)
          {
            sub_1C5651DB8((v149 + 4), v201);

            v150 = sub_1C564EA4C();
            v12 = v150[2];
            if (v12 >= 2)
            {
              sub_1C5651DB8((v150 + 16), &v176);

              v151 = *(v0 + 48);
              sub_1C5652004(&v193);
              if (v194 != 255)
              {
                sub_1C56251C8(&v193, &v191);
                sub_1C5652004(&v193);
                if (v194 != 255)
                {
                  sub_1C56251C8(&v193, &v188);
                  sub_1C5651E28();
                  v1 = *(v0 + 24);
                  sub_1C570FCBC(v1);
                  v153 = v152;
                  sub_1C5651F1C();
                  sub_1C570FD20(v1);
                  v155 = v151 + v153 - v154;
                  sub_1C5651E28();
                  sub_1C570FC58(v1);
                  v157 = v155 + v156;
                  sub_1C5651F1C();
                  sub_1C570FD20(v1);
                  v4 = -(v157 + v158);
                  LODWORD(v193) = v3;
                  v186 = 0;
                  type metadata accessor for UILayoutPriority(0);
                  sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
                  if ((sub_1C584F610() & 1) == 0)
                  {
LABEL_154:
                    v2 = MEMORY[0x1E69E7CC0];
LABEL_155:
                    LODWORD(v193) = v3;
                    v186 = 1148846080;
                    sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
                    if (sub_1C584F2D0())
                    {
                      sub_1C5625EE8(&v191, &v186);
                      v165 = sub_1C570FB20(v1);
                      sub_1C5625EE8(&v188, v185);
                      v1 = sub_1C570FA50(v1);
                      v166 = sub_1C56521A0();
                      v168 = v167;
                      v169 = sub_1C5625100();
                      v170 = sub_1C57056F8();
                      sub_1C5625108(&v186, v165, -1, v185, v1, v166, v168, &v193, v169, v4, v170);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v2 = sub_1C5625864(0, *(v2 + 16) + 1, 1, v2);
                      }

                      v172 = *(v2 + 16);
                      v171 = *(v2 + 24);
                      if (v172 >= v171 >> 1)
                      {
                        v2 = sub_1C5625864((v171 > 1), v172 + 1, 1, v2);
                      }

                      sub_1C5626250(&v188);
                      sub_1C5626250(&v191);
                      *(v2 + 16) = v172 + 1;
                      sub_1C5625808(&v193, v2 + 112 * v172 + 32);
                    }

                    else
                    {
                      sub_1C5626250(&v188);
                      sub_1C5626250(&v191);
                    }

                    goto LABEL_162;
                  }

                  sub_1C5625EE8(&v191, &v186);
                  v159 = sub_1C570FB20(v1);
                  sub_1C5625EE8(&v188, v185);
                  v160 = sub_1C570FA50(v1);
                  v161 = sub_1C56521A0();
                  v163 = v162;
                  v164 = sub_1C5625100();
                  sub_1C5625108(&v186, v159, 0, v185, v160, v161, v163, &v193, v164, v4, v10);
                  v2 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
                  v7 = *(v2 + 16);
                  v12 = *(v2 + 24);
                  v0 = v7 + 1;
                  if (v7 < v12 >> 1)
                  {
LABEL_150:
                    *(v2 + 16) = v0;
                    sub_1C5625808(&v193, v2 + 112 * v7 + 32);
                    goto LABEL_155;
                  }

LABEL_172:
                  v2 = sub_1C5625864((v12 > 1), v0, 1, v2);
                  goto LABEL_150;
                }

                sub_1C5626250(&v191);
              }

              sub_1C5625230(&v193, &unk_1EC16FE40, &qword_1C5876370);
              v2 = MEMORY[0x1E69E7CC0];
LABEL_162:
              sub_1C5651D88(&v176);
              v70 = v201;
              goto LABEL_85;
            }

LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(&v183 + 1);
LABEL_20:
  v24 = sub_1C564EA4C();
  sub_1C564E90C(&v193);
  if (((1 << (v193 >> 29)) & 0x3A) != 0)
  {
    sub_1C5625EE8(v0, &v193);
    v195 = 0.0;
  }

  else
  {
    sub_1C5625EE8(v0, &v193);
    v195 = sub_1C5651BA4();
  }

  v196 = sub_1C5651C6C();
  v197 = v25;
  v198 = v26;
  v199 = v27;
  v200 = 4;
  sub_1C563E588(v201);
  LOBYTE(v176) = v201[0];
  DWORD1(v176) = HIDWORD(v201[0]);
  sub_1C563E588(&v191);
  LOBYTE(v188) = v191;
  v189 = DWORD1(v191);
  v28 = sub_1C564F848(v24, &v193, &v176, &v188);

  sub_1C5651D88(&v193);
  sub_1C5650E8C(v28);
  v29 = sub_1C564EA4C();
  v30 = v29;
  v31 = v29[2];
  if (!v31)
  {
LABEL_32:

    v181 = 0;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v176 = 0u;
    v182 = -1;
    goto LABEL_41;
  }

  v32 = 0;
  v1 = (v29 + 4);
  v33 = &unk_1EC16E860;
  while (1)
  {
    if (v32 >= v30[2])
    {
      goto LABEL_165;
    }

    sub_1C5651DB8(v1, &v193);
    sub_1C5651DB8(&v193, v201);
    if (v207 > 2u)
    {
      if (v207 != 3)
      {
        sub_1C5626250(v201);
      }

      goto LABEL_27;
    }

    if (v207)
    {
      break;
    }

    sub_1C5625230(v201, &unk_1EC16E860, &qword_1C5868750);
LABEL_27:
    ++v32;
    sub_1C5651D88(&v193);
    v1 += 96;
    if (v31 == v32)
    {
      goto LABEL_32;
    }
  }

  sub_1C5625230(v201, &unk_1EC16E860, &qword_1C5868750);
  sub_1C5651DF0(&v193, &v176);
LABEL_41:
  v4 = *(v5 + 48);
  sub_1C56466CC(&v176, &v193, &qword_1EC16DE98, &qword_1C5868758);
  if (v200 == 255)
  {
    sub_1C5625230(&v193, &qword_1EC16DE98, &qword_1C5868758);
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C5651DF0(&v193, v201);
    sub_1C5652004(&v193);
    if (v194 == 255)
    {
      goto LABEL_176;
    }

    if ((v194 & 1) == 0)
    {
LABEL_174:
      sub_1C5626250(&v193);
      while (1)
      {
        sub_1C584FD00();
        __break(1u);
LABEL_176:
        sub_1C5625230(&v193, &unk_1EC16FE40, &qword_1C5876370);
      }
    }

    v36 = v193;
    *&v193 = v10;
    LODWORD(v191) = 0;
    type metadata accessor for UILayoutPriority(0);
    sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
    if (sub_1C584F610())
    {
      v191 = v36;
      v192 = 1;
      v37 = *(v5 + 24);

      v38 = sub_1C570FB88(v37);
      v39 = sub_1C56521A0();
      sub_1C5705704(&v191, v38, 0, v39, v40, &v193, v4, v10);
      v41 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1C5625864((v42 > 1), v43 + 1, 1, v41);
      }

      v41[2] = v43 + 1;
      sub_1C5625808(&v193, &v41[14 * v43 + 4]);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    *&v193 = v10;
    LODWORD(v191) = 1148846080;
    sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
    if (sub_1C584F2D0())
    {
      v191 = v36;
      v192 = 1;
      v44 = sub_1C570FB88(*(v5 + 24));
      v45 = sub_1C56521A0();
      v47 = v46;
      v48 = sub_1C57056F8();
      sub_1C5705704(&v191, v44, 1, v45, v47, &v193, v4, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1C5625864(0, v41[2] + 1, 1, v41);
      }

      v50 = v41[2];
      v49 = v41[3];
      if (v50 >= v49 >> 1)
      {
        v41 = sub_1C5625864((v49 > 1), v50 + 1, 1, v41);
      }

      sub_1C5651D88(v201);
      v41[2] = v50 + 1;
      sub_1C5625808(&v193, &v41[14 * v50 + 4]);
    }

    else
    {
      sub_1C5651D88(v201);
    }
  }

  sub_1C5625230(&v176, &qword_1EC16DE98, &qword_1C5868758);
  sub_1C5650E8C(v41);
  v51 = sub_1C564EA4C();
  v1 = v51;
  v52 = v51[2];
  if (!v52)
  {
    v54 = MEMORY[0x1E69E7CC0];
LABEL_73:

    v1 = sub_1C5650F84(v54, 1000.0);

    sub_1C5650E8C(v1);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_101:
    *&v176 = v6;
    v98 = sub_1C564EA4C();
    sub_1C5650D94(v98);
    sub_1C5651AD8(&v193);
    v33 = v176;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_102;
  }

  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v33 = v51 + 4;
  while (v53 < *(v1 + 16))
  {
    sub_1C5651DB8(v33, &v193);
    sub_1C5651DB8(&v193, v201);
    if (v207 > 2u)
    {
      if (v207 != 3)
      {
        sub_1C5626250(v201);
      }
    }

    else
    {
      if (v207 - 1 < 2)
      {
        sub_1C5625230(v201, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5651DF0(&v193, v201);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v176 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C5652B0C(0, *(v54 + 16) + 1, 1);
          v54 = v176;
        }

        v57 = *(v54 + 16);
        v56 = *(v54 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1C5652B0C((v56 > 1), v57 + 1, 1);
          v54 = v176;
        }

        *(v54 + 16) = v57 + 1;
        sub_1C5651DF0(v201, v54 + 96 * v57 + 32);
        goto LABEL_61;
      }

      sub_1C5625230(v201, &unk_1EC16E860, &qword_1C5868750);
    }

    sub_1C5651D88(&v193);
LABEL_61:
    ++v53;
    v33 += 12;
    if (v52 == v53)
    {
      goto LABEL_73;
    }
  }

  while (2)
  {
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v33 = sub_1C5652C6C(0, v33[2] + 1, 1, v33);
LABEL_102:
    v100 = v33[2];
    v99 = v33[3];
    v101 = v100 + 1;
    if (v100 >= v99 >> 1)
    {
      v33 = sub_1C5652C6C((v99 > 1), v100 + 1, 1, v33);
    }

    v33[2] = v101;
    v102 = (v33 + 4);
    sub_1C5651DF0(&v193, &v33[12 * v100 + 4]);
    v6 = 0;
    v103 = MEMORY[0x1E69E7CC0];
    v3 = &qword_1C5868750;
    while (2)
    {
      if (v6 >= v33[2])
      {
        __break(1u);
        goto LABEL_154;
      }

      sub_1C5651DB8(v102, &v193);
      sub_1C5651DB8(&v193, v201);
      if (v207 > 2u)
      {
        if (v207 != 3)
        {
          sub_1C5626250(v201);
          goto LABEL_106;
        }

LABEL_113:
        sub_1C5651DF0(&v193, v201);
        v104 = swift_isUniquelyReferenced_nonNull_native();
        *&v191 = v103;
        if ((v104 & 1) == 0)
        {
          sub_1C5652B0C(0, *(v103 + 16) + 1, 1);
          v103 = v191;
        }

        v1 = *(v103 + 16);
        v105 = *(v103 + 24);
        if (v1 >= v105 >> 1)
        {
          sub_1C5652B0C((v105 > 1), v1 + 1, 1);
          v103 = v191;
        }

        *(v103 + 16) = v1 + 1;
        sub_1C5651DF0(v201, v103 + 96 * v1 + 32);
      }

      else
      {
        if (v207 - 1 < 2)
        {
          sub_1C5625230(v201, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_113;
        }

        sub_1C5625230(v201, &unk_1EC16E860, &qword_1C5868750);
LABEL_106:
        sub_1C5651D88(&v193);
      }

      ++v6;
      v102 += 96;
      if (v101 != v6)
      {
        continue;
      }

      break;
    }

    v106 = v175;
    v174 = *(v103 + 16);
    if (v174)
    {
      v107 = 0;
      v108 = v103 + 32;
      v33 = MEMORY[0x1E69E7CC0];
      v173 = v103;
      while (v107 < *(v103 + 16))
      {
        sub_1C5651DB8(v108, v201);
        sub_1C5652004(&v193);
        if (v194 == 255)
        {
          goto LABEL_176;
        }

        if ((v194 & 1) == 0)
        {
          goto LABEL_174;
        }

        v109 = v193;
        v176 = v193;
        LOBYTE(v177) = 1;
        v110 = *(v106 + 24);

        v111 = sub_1C570FBF0(v110);
        v112 = sub_1C570FA50(v111);
        sub_1C5625EE8(v106, &v191);
        v113 = sub_1C570FBF0(v110);
        v114 = sub_1C570FA50(v113);
        v115 = sub_1C56521A0();
        v117 = v116;
        v118 = sub_1C5625100();
        v119 = sub_1C57057B4();
        v120 = sub_1C57056F8();
        sub_1C5625108(&v176, v112, 0, &v191, v114, v115, v117, &v193, v118, v119, v120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1C5625864(0, v33[2] + 1, 1, v33);
        }

        v122 = v33[2];
        v121 = v33[3];
        v106 = v175;
        if (v122 >= v121 >> 1)
        {
          v33 = sub_1C5625864((v121 > 1), v122 + 1, 1, v33);
        }

        v33[2] = v122 + 1;
        sub_1C5625808(&v193, &v33[14 * v122 + 4]);
        v176 = v109;
        LOBYTE(v177) = 1;
        v123 = sub_1C570FBF0(v110);
        v124 = sub_1C570FB20(v123);
        sub_1C5625EE8(v175, &v191);
        v125 = sub_1C570FBF0(v110);
        v126 = sub_1C570FB20(v125);
        v127 = sub_1C56521A0();
        v129 = v128;
        v130 = sub_1C5625100();
        v4 = sub_1C57057B4();
        v131 = sub_1C57056F8();
        sub_1C5625108(&v176, v124, 0, &v191, v126, v127, v129, &v193, v130, v4, v131);
        v1 = v33[2];
        v132 = v33[3];
        if (v1 >= v132 >> 1)
        {
          v33 = sub_1C5625864((v132 > 1), v1 + 1, 1, v33);
        }

        ++v107;
        sub_1C5651D88(v201);
        v33[2] = v1 + 1;
        sub_1C5625808(&v193, &v33[14 * v1 + 4]);
        v108 += 96;
        v103 = v173;
        if (v174 == v107)
        {
          goto LABEL_133;
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_133:

  sub_1C5650E8C(v33);
  return v184;
}

uint64_t sub_1C564E90C@<X0>(unint64_t *a1@<X8>)
{
  v10 = *(v1 + 40);
  result = sub_1C57245D8(&v9);
  v4 = v9;
  v5 = v9 >> 29;
  if (v9 >> 29 <= 3)
  {
    if (v5 < 3)
    {
LABEL_3:
      *a1 = v4;
      return result;
    }

    goto LABEL_11;
  }

  if (v5 - 4 >= 2)
  {
    if (v9 == 3221225472)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*(*(v1 + 32) + 16) != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v6 = HIDWORD(v9);
  LODWORD(v10) = HIDWORD(v9);
  LODWORD(v9) = 1148846080;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
  result = sub_1C584F610();
  if ((result & 1) == 0)
  {
LABEL_12:
    v8 = 3221225472;
    goto LABEL_13;
  }

  if (*(*(v1 + 32) + 16) != 1)
  {
    goto LABEL_3;
  }

  result = sub_1C563E56C(1, &v10, *&v6);
  v7 = 0x20000000;
  if (v10)
  {
    v7 = 536870913;
  }

  v8 = v7 | (HIDWORD(v10) << 32);
LABEL_13:
  *a1 = v8;
  return result;
}

unint64_t *sub_1C564EA4C()
{
  sub_1C564E90C(&v59);
  v6 = v59 >> 29;
  if (v59 >> 29 <= 2)
  {
    goto LABEL_26;
  }

  if (v59 >> 29 > 4)
  {
    if (v6 == 5)
    {
      v3 = *(v0 + 32);
      v51 = v3[2];
      if (!v51)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v4 = 0;
      v14 = (v3 + 4);
      v9 = MEMORY[0x1E69E7CC0];
      v1 = &unk_1EC16E860;
      v2 = &qword_1C5868750;
      while (1)
      {
        v8 = v3[2];
        if (v4 >= v8)
        {
          break;
        }

        v62 = v4;
        sub_1C56466CC(v14, v63, &unk_1EC16E860, &qword_1C5868750);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1C5867980;
        sub_1C56466CC(v63, v15 + 32, &unk_1EC16E860, &qword_1C5868750);
        *(v15 + 120) = 1;
        sub_1C56466CC(v63, v15 + 128, &unk_1EC16E860, &qword_1C5868750);
        *(v15 + 208) = v4;
        *(v15 + 216) = 0;
        sub_1C56466CC(v63, v15 + 224, &unk_1EC16E860, &qword_1C5868750);
        *(v15 + 312) = 2;
        sub_1C5625230(&v62, &qword_1EC16DEF8, &qword_1C5868C28);
        v16 = v9[2];
        v5 = v16 + 3;
        if (__OFADD__(v16, 3))
        {
          goto LABEL_99;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v18 = v9[3] >> 1, v18 < v5))
        {
          if (v16 <= v5)
          {
            v19 = v16 + 3;
          }

          else
          {
            v19 = v16;
          }

          v9 = sub_1C5652C6C(isUniquelyReferenced_nonNull_native, v19, 1, v9);
          v18 = v9[3] >> 1;
        }

        v8 = v18 - v9[2];
        if (v8 < 3)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        v20 = v9[2];
        v21 = __OFADD__(v20, 3);
        v8 = v20 + 3;
        if (v21)
        {
          goto LABEL_102;
        }

        v4 = (v4 + 1);
        v9[2] = v8;
        v14 += 80;
        if (v51 == v4)
        {
          return v9;
        }
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
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
      goto LABEL_111;
    }

LABEL_26:
    v22 = *(v0 + 32);
    v1 = *(v22 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      return v9;
    }

    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1C5652B0C(0, v1, 0);
    v4 = 0;
    v23 = v68;
    v2 = v22 + 32;
    v52 = *(v22 + 16);
    v3 = &unk_1EC16E860;
    v9 = &qword_1C5868750;
    while (1)
    {
      v8 = v52;
      if (v52 == v4)
      {
        break;
      }

      v8 = *(v22 + 16);
      if (v4 >= v8)
      {
        goto LABEL_96;
      }

      sub_1C56466CC(v2, v58, &unk_1EC16E860, &qword_1C5868750);
      v55 = v4;
      sub_1C56534F4(v58, v56, &unk_1EC16E860, &qword_1C5868750);
      sub_1C56466CC(v56, &v62, &unk_1EC16E860, &qword_1C5868750);
      v65 = v4;
      v66 = 0;
      sub_1C5625230(&v55, &qword_1EC16DEF8, &qword_1C5868C28);
      v24 = v23;
      *&v68 = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v5 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_1C5652B0C((v25 > 1), v26 + 1, 1);
        v24 = v68;
      }

      v4 = (v4 + 1);
      *(v24 + 16) = v5;
      v23 = v24;
      sub_1C5651DF0(&v62, v24 + 96 * v26 + 32);
      v2 += 80;
      if (v1 == v4)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v6 != 3)
  {
    v27 = *(v0 + 32);
    v53 = *(v27 + 16);
    if (!v53)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = 0;
    v1 = (v27 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v2 = &unk_1EC16E860;
    v3 = &qword_1C5868750;
    v4 = &qword_1C5868C30;
    v47 = v27 + 32;
    v49 = *(v0 + 32);
    while (1)
    {
      v8 = *(v27 + 16);
      if (v5 >= v8)
      {
        goto LABEL_98;
      }

      v57 = v5;
      sub_1C56466CC(v1, v58, &unk_1EC16E860, &qword_1C5868750);
      sub_1C56466CC(v58, &v55, &unk_1EC16E860, &qword_1C5868750);
      if (*(v27 + 16))
      {
        sub_1C56466CC(v47, &v68, &unk_1EC16E860, &qword_1C5868750);
      }

      else
      {
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v72 = 0;
        v73 = 2147483646;
      }

      sub_1C56466CC(&v55, &v62, &qword_1EC16DF00, &qword_1C5868C30);
      sub_1C56466CC(&v68, &v65, &qword_1EC16DF00, &qword_1C5868C30);
      if ((v64 & 0xFFFFFFFE) == 0x7FFFFFFE)
      {
        sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v67 & 0xFFFFFFFE) != 0x7FFFFFFE)
        {
          goto LABEL_47;
        }

        sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
      }

      else
      {
        sub_1C56466CC(&v62, v61, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v67 & 0xFFFFFFFE) == 0x7FFFFFFE)
        {
          sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
LABEL_47:
          sub_1C5625230(&v62, &qword_1EC16DF08, &qword_1C5868C38);
LABEL_48:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1C5867990;
          sub_1C56466CC(v58, v28 + 32, &unk_1EC16E860, &qword_1C5868750);
          *(v28 + 112) = v5;
          *(v28 + 120) = 0;
          sub_1C56466CC(v58, v28 + 128, &unk_1EC16E860, &qword_1C5868750);
          *(v28 + 216) = 2;
          goto LABEL_51;
        }

        sub_1C56534F4(&v65, v60, &unk_1EC16E860, &qword_1C5868750);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
        sub_1C56534A4(&qword_1EC16DED0, &unk_1C5867FE8);
        v29 = sub_1C584F620();
        sub_1C5625230(v60, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v29 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C5867980;
      sub_1C56466CC(v58, v28 + 32, &unk_1EC16E860, &qword_1C5868750);
      *(v28 + 120) = 1;
      sub_1C56466CC(v58, v28 + 128, &unk_1EC16E860, &qword_1C5868750);
      *(v28 + 208) = v5;
      *(v28 + 216) = 0;
      sub_1C56466CC(v58, v28 + 224, &unk_1EC16E860, &qword_1C5868750);
      *(v28 + 312) = 2;
LABEL_51:
      sub_1C5625230(&v57, &qword_1EC16DEF8, &qword_1C5868C28);
      v30 = *(v28 + 16);
      v31 = v9[2];
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_100;
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      if (v33 && v32 <= (v9[3] >> 1))
      {
        if (!*(v28 + 16))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v9 = sub_1C5652C6C(v33, v34, 1, v9);
        if (!*(v28 + 16))
        {
LABEL_36:

          if (v30)
          {
            goto LABEL_103;
          }

          goto LABEL_37;
        }
      }

      v8 = v9[2];
      if (((v9[3] >> 1) - v8) < v30)
      {
        goto LABEL_104;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v35 = v9[2];
        v21 = __OFADD__(v35, v30);
        v8 = v35 + v30;
        if (v21)
        {
          goto LABEL_108;
        }

        v9[2] = v8;
      }

LABEL_37:
      ++v5;
      v1 += 10;
      v27 = v49;
      if (v53 == v5)
      {
        return v9;
      }
    }
  }

  v5 = *(v0 + 32);
  v7 = *(v5 + 16);
  if (v7 != 2)
  {
    if (v7)
    {
      v36 = 0;
      v1 = (v5 + 32);
      v48 = v5 - 48;
      v9 = MEMORY[0x1E69E7CC0];
      v2 = &unk_1EC16E860;
      v3 = &qword_1C5868750;
      v4 = &qword_1C5868C30;
      v50 = *(v0 + 32);
      v54 = *(v5 + 16);
      while (1)
      {
        v8 = *(v5 + 16);
        if (v36 >= v8)
        {
          goto LABEL_105;
        }

        v57 = v36;
        sub_1C56466CC(v1, v58, &unk_1EC16E860, &qword_1C5868750);
        sub_1C56466CC(v58, &v55, &unk_1EC16E860, &qword_1C5868750);
        v38 = *(v5 + 16);
        if (v38)
        {
          sub_1C56466CC(v48 + 80 * v38, &v68, &unk_1EC16E860, &qword_1C5868750);
        }

        else
        {
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v72 = 0;
          v73 = 2147483646;
        }

        sub_1C56466CC(&v55, &v62, &qword_1EC16DF00, &qword_1C5868C30);
        sub_1C56466CC(&v68, &v65, &qword_1EC16DF00, &qword_1C5868C30);
        if ((v64 & 0xFFFFFFFE) == 0x7FFFFFFE)
        {
          sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
          if ((v67 & 0xFFFFFFFE) != 0x7FFFFFFE)
          {
            goto LABEL_77;
          }

          sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
        }

        else
        {
          sub_1C56466CC(&v62, v61, &qword_1EC16DF00, &qword_1C5868C30);
          if ((v67 & 0xFFFFFFFE) == 0x7FFFFFFE)
          {
            sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
            sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
            sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
LABEL_77:
            sub_1C5625230(&v62, &qword_1EC16DF08, &qword_1C5868C38);
LABEL_78:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_1C5867990;
            sub_1C56466CC(v58, v39 + 32, &unk_1EC16E860, &qword_1C5868750);
            *(v39 + 112) = v36;
            *(v39 + 120) = 0;
            sub_1C56466CC(v58, v39 + 128, &unk_1EC16E860, &qword_1C5868750);
            *(v39 + 216) = 2;
            goto LABEL_81;
          }

          sub_1C56534F4(&v65, v60, &unk_1EC16E860, &qword_1C5868750);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
          sub_1C56534A4(&qword_1EC16DED0, &unk_1C5867FE8);
          v40 = sub_1C584F620();
          sub_1C5625230(v60, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(&v68, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(&v55, &qword_1EC16DF00, &qword_1C5868C30);
          sub_1C5625230(v61, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(&v62, &qword_1EC16DF00, &qword_1C5868C30);
          if ((v40 & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1C5867900;
        sub_1C56466CC(v58, v39 + 32, &unk_1EC16E860, &qword_1C5868750);
        *(v39 + 112) = v36;
        *(v39 + 120) = 0;
LABEL_81:
        sub_1C5625230(&v57, &qword_1EC16DEF8, &qword_1C5868C28);
        v5 = *(v39 + 16);
        v41 = v9[2];
        v42 = v41 + v5;
        if (__OFADD__(v41, v5))
        {
          goto LABEL_106;
        }

        v43 = swift_isUniquelyReferenced_nonNull_native();
        if (!v43 || v42 > (v9[3] >> 1))
        {
          if (v41 <= v42)
          {
            v44 = v41 + v5;
          }

          else
          {
            v44 = v41;
          }

          v9 = sub_1C5652C6C(v43, v44, 1, v9);
        }

        if (*(v39 + 16))
        {
          v8 = v9[2];
          if (((v9[3] >> 1) - v8) < v5)
          {
            goto LABEL_109;
          }

          swift_arrayInitWithCopy();

          v37 = v54;
          if (v5)
          {
            v45 = v9[2];
            v21 = __OFADD__(v45, v5);
            v8 = v45 + v5;
            if (v21)
            {
              goto LABEL_110;
            }

            v9[2] = v8;
          }
        }

        else
        {

          v37 = v54;
          if (v5)
          {
            goto LABEL_107;
          }
        }

        ++v36;
        v1 += 10;
        v5 = v50;
        if (v37 == v36)
        {
          return v9;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  *&v68 = MEMORY[0x1E69E7CC0];
  sub_1C5652B0C(0, 2, 0);
  v9 = *(v5 + 16);
  if (!v9)
  {
    goto LABEL_111;
  }

  v10 = v68;
  v3 = &v57;
  v2 = &v55;
  sub_1C56466CC(v5 + 32, v58, &unk_1EC16E860, &qword_1C5868750);
  v55 = 0;
  sub_1C56534F4(v58, v56, &unk_1EC16E860, &qword_1C5868750);
  sub_1C56466CC(v56, &v62, &unk_1EC16E860, &qword_1C5868750);
  v65 = 0;
  v66 = 0;
  sub_1C5625230(&v55, &qword_1EC16DEF8, &qword_1C5868C28);
  v11 = v10;
  v4 = *(v10 + 16);
  v8 = *(v10 + 24);
  v1 = (v4 + 1);
  if (v4 >= v8 >> 1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    *(v11 + 16) = v1;
    v12 = v11;
    sub_1C5651DF0(&v62, v11 + 96 * v4 + 32);
    if (v9 != 1)
    {
      break;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    sub_1C5652B0C((v8 > 1), v1, 1);
    v11 = v68;
  }

  v13 = *(v5 + 16);
  if (v13 < 2)
  {
    __break(1u);
    goto LABEL_114;
  }

  sub_1C56466CC(v5 + 112, (v3 + 1), &unk_1EC16E860, &qword_1C5868750);
  v55 = 1;
  sub_1C56534F4((v3 + 1), v2 + 8, &unk_1EC16E860, &qword_1C5868750);
  sub_1C56466CC(v2 + 8, &v62, &unk_1EC16E860, &qword_1C5868750);
  v65 = 1;
  v66 = 0;
  sub_1C5625230(&v55, &qword_1EC16DEF8, &qword_1C5868C28);
  v9 = v12;
  *&v68 = v12;
  v2 = *(v12 + 16);
  v13 = *(v12 + 24);
  v1 = (v2 + 1);
  if (v2 >= v13 >> 1)
  {
LABEL_114:
    sub_1C5652B0C((v13 > 1), v1, 1);
    v9 = v68;
  }

  v9[2] = v1;
  sub_1C5651DF0(&v62, &v9[12 * v2 + 4]);
  return v9;
}

void *sub_1C564F848(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v5 = v4;
  v7 = *a3;
  v8 = *a4;
  v104 = a4[1];
  v105 = a3[1];
  sub_1C5652004(&v110);
  if (v111 == 255)
  {
    sub_1C5625230(&v110, &unk_1EC16FE40, &qword_1C5876370);
    return MEMORY[0x1E69E7CC0];
  }

  v102 = v8;
  v103 = v7;
  result = sub_1C56251C8(&v110, v131);
  v10 = 0;
  v11 = a1 + 32;
  v12 = *(a1 + 16);
  v107 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      if (v10 == v12)
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v10 = v12;
        v116[0] = -1;
      }

      else
      {
        if (v10 >= v12)
        {
          goto LABEL_158;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_159;
        }

        v127 = v10;
        sub_1C5651DB8(v11 + 96 * v10, &v128);
        sub_1C56534F4(&v127, &v110, &qword_1EC16DEE0, &qword_1C5868C10);
        ++v10;
      }

      sub_1C56534F4(&v110, &v129, &qword_1EC16DEE8, &qword_1C5868C18);
      if (v130[88] == 255)
      {
        sub_1C5626250(v131);
        return v107;
      }

      v14 = v129;
      sub_1C5651DF0(v130, &v127);
      sub_1C5651DB8(&v127, &v110);
      if (BYTE8(v115) <= 1u)
      {
        if (!BYTE8(v115))
        {
          sub_1C56534F4(&v110, v125, &unk_1EC16E860, &qword_1C5868750);
          v17 = v125;
LABEL_21:
          sub_1C56251C8(v17, &v118);
          goto LABEL_25;
        }

        sub_1C56534F4(&v110, v125, &unk_1EC16E860, &qword_1C5868750);
        v18 = sub_1C5705A60();
        if (!v21)
        {
LABEL_3:
          sub_1C5625230(v125, &unk_1EC16E860, &qword_1C5868750);
          v118 = 0uLL;
          LOBYTE(v119) = -1;
LABEL_4:
          sub_1C5651D88(&v127);
          v13 = &v118;
          goto LABEL_5;
        }

        v109[0] = 0x6542726563617073;
        v20 = 0xED00003A65726F66;
      }

      else
      {
        if (BYTE8(v115) != 2)
        {
          if (BYTE8(v115) == 3)
          {
            GEOLocationCoordinate2DMake();
            *&v118 = v15;
            *(&v118 + 1) = v16;
            LOBYTE(v119) = 1;
            goto LABEL_25;
          }

          v17 = &v110;
          goto LABEL_21;
        }

        sub_1C56534F4(&v110, v125, &unk_1EC16E860, &qword_1C5868750);
        v18 = sub_1C5705A60();
        if (!v19)
        {
          goto LABEL_3;
        }

        v109[0] = 0x6641726563617073;
        v20 = 0xEC0000003A726574;
      }

      v109[1] = v20;
      MEMORY[0x1C6949D90](v18);

      GEOLocationCoordinate2DMake();
      v23 = v22;
      v25 = v24;
      sub_1C5625230(v125, &unk_1EC16E860, &qword_1C5868750);
      *&v118 = v23;
      *(&v118 + 1) = v25;
      LOBYTE(v119) = 1;
LABEL_25:
      if (v119 == 255)
      {
        goto LABEL_4;
      }

      sub_1C56251C8(&v118, v126);
      sub_1C5651DB8(&v127, v125);
      if (v12)
      {
        sub_1C5651DB8(v11, &v118);
      }

      else
      {
        v123 = 0;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v118 = 0u;
        v124 = -1;
      }

      sub_1C56466CC(v125, &v110, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C56466CC(&v118, v116, &qword_1EC16DE98, &qword_1C5868758);
      if (BYTE8(v115) == 255)
      {
        sub_1C5625230(&v118, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v125, &qword_1EC16DE98, &qword_1C5868758);
        if (v117 == 255)
        {
          sub_1C5625230(&v110, &qword_1EC16DE98, &qword_1C5868758);
          goto LABEL_35;
        }

        goto LABEL_39;
      }

      sub_1C56466CC(&v110, v109, &qword_1EC16DE98, &qword_1C5868758);
      if (v117 == 255)
      {
        break;
      }

      sub_1C5651DF0(v116, v108);
      v26 = sub_1C5652DAC(v109, v108);
      sub_1C5651D88(v108);
      sub_1C5625230(&v118, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5625230(v125, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5651D88(v109);
      result = sub_1C5625230(&v110, &qword_1EC16DE98, &qword_1C5868758);
      if ((v26 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_35:
      sub_1C5651DB8(a2, &v110);
      if (BYTE8(v115) <= 2u)
      {
        sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v115) != 3)
      {
        sub_1C5626250(&v110);
      }

      v33 = *(v5 + 24);
      sub_1C570FC58(v33);
      v35 = v34;
      sub_1C5651DB8(&v127, &v110);
      if (BYTE8(v115) <= 1u)
      {
        if (!BYTE8(v115))
        {
          sub_1C56534F4(&v110, v125, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v125, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_70;
        }

LABEL_69:
        sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_70;
      }

      if (BYTE8(v115) == 2)
      {
        goto LABEL_69;
      }

      if (BYTE8(v115) != 3)
      {
        sub_1C5626250(&v110);
      }

LABEL_70:
      sub_1C570FC58(v33);
      v37 = v36;
      sub_1C5651DB8(&v127, &v110);
      if (BYTE8(v115) <= 1u)
      {
        if (!BYTE8(v115))
        {
          sub_1C56534F4(&v110, v125, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v125, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_77;
        }

LABEL_76:
        sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_77;
      }

      if (BYTE8(v115) == 2)
      {
        goto LABEL_76;
      }

      if (BYTE8(v115) != 3)
      {
        sub_1C5626250(&v110);
      }

LABEL_77:
      sub_1C570FD20(v33);
      v39 = v35 + v37 + v38;
      *&v110 = v105;
      v125[0] = 0;
      type metadata accessor for UILayoutPriority(0);
      sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
      v100 = v33;
      if (sub_1C584F610())
      {
        sub_1C5625EE8(v126, v125);
        v97 = sub_1C570FA50(v33);
        sub_1C5625EE8(v131, &v118);
        v40 = sub_1C570FA50(v33);
        v41 = sub_1C56521A0();
        v43 = v42;
        v44 = sub_1C5625100();
        sub_1C5625108(v125, v97, 0, &v118, v40, v41, v43, &v110, v44, v39, v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1C5625864(0, v107[2] + 1, 1, v107);
        }

        v45 = v107;
        v47 = v107[2];
        v46 = v107[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_1C5625864((v46 > 1), v47 + 1, 1, v107);
        }

        v45[2] = v47 + 1;
        v107 = v45;
        sub_1C5625808(&v110, &v45[14 * v47 + 4]);
        v33 = v100;
      }

      *&v110 = v105;
      v125[0] = 1148846080;
      sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
      if (sub_1C584F2D0() & v103)
      {
        sub_1C5625EE8(v126, v125);
        v48 = sub_1C570FA50(v33);
        sub_1C5625EE8(v131, &v118);
        v49 = sub_1C570FA50(v33);
        v50 = sub_1C56521A0();
        v52 = v51;
        v53 = sub_1C5625100();
        v54 = sub_1C57056F8();
        sub_1C5625108(v125, v48, 1, &v118, v49, v50, v52, &v110, v53, v39, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1C5625864(0, v107[2] + 1, 1, v107);
        }

        v55 = v107;
        v57 = v107[2];
        v56 = v107[3];
        v33 = v100;
        if (v57 >= v56 >> 1)
        {
          v55 = sub_1C5625864((v56 > 1), v57 + 1, 1, v107);
        }

        v55[2] = v57 + 1;
        v107 = v55;
        sub_1C5625808(&v110, &v55[14 * v57 + 4]);
      }

      sub_1C5651DB8(&v127, v125);
      if (!v12)
      {
        v123 = 0;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v118 = 0u;
        v124 = -1;
        goto LABEL_112;
      }

LABEL_111:
      sub_1C5651DB8(a1 + 96 * v12 - 64, &v118);
LABEL_112:
      sub_1C56466CC(v125, &v110, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C56466CC(&v118, v116, &qword_1EC16DE98, &qword_1C5868758);
      if (BYTE8(v115) == 255)
      {
        sub_1C5625230(&v118, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v125, &qword_1EC16DE98, &qword_1C5868758);
        if (v117 != 255)
        {
          goto LABEL_122;
        }

        sub_1C5625230(&v110, &qword_1EC16DE98, &qword_1C5868758);
        goto LABEL_118;
      }

      sub_1C56466CC(&v110, v109, &qword_1EC16DE98, &qword_1C5868758);
      if (v117 == 255)
      {
        sub_1C5625230(&v118, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v125, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5651D88(v109);
LABEL_122:
        sub_1C5625230(&v110, &qword_1EC16DEF0, &qword_1C5868C20);
        goto LABEL_123;
      }

      sub_1C5651DF0(v116, v108);
      v73 = sub_1C5652DAC(v109, v108);
      sub_1C5651D88(v108);
      sub_1C5625230(&v118, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5625230(v125, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5651D88(v109);
      sub_1C5625230(&v110, &qword_1EC16DE98, &qword_1C5868758);
      if (v73)
      {
LABEL_118:
        sub_1C5651DB8(a2, &v110);
        if (BYTE8(v115) <= 2u)
        {
          sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
        }

        else if (BYTE8(v115) != 3)
        {
          sub_1C5626250(&v110);
        }

        sub_1C570FCBC(v33);
        v75 = v74;
        sub_1C5651DB8(&v127, &v110);
        if (BYTE8(v115) <= 1u)
        {
          if (!BYTE8(v115))
          {
            sub_1C56534F4(&v110, v125, &unk_1EC16E860, &qword_1C5868750);
            sub_1C5625230(v125, &unk_1EC16E860, &qword_1C5868750);
            goto LABEL_132;
          }

LABEL_131:
          sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_132;
        }

        if (BYTE8(v115) == 2)
        {
          goto LABEL_131;
        }

        if (BYTE8(v115) != 3)
        {
          sub_1C5626250(&v110);
        }

LABEL_132:
        sub_1C570FCBC(v33);
        v77 = v76;
        sub_1C5651DB8(&v127, &v110);
        if (BYTE8(v115) <= 1u)
        {
          if (!BYTE8(v115))
          {
            sub_1C56534F4(&v110, v125, &unk_1EC16E860, &qword_1C5868750);
            sub_1C5625230(v125, &unk_1EC16E860, &qword_1C5868750);
            goto LABEL_139;
          }

LABEL_138:
          sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_139;
        }

        if (BYTE8(v115) == 2)
        {
          goto LABEL_138;
        }

        if (BYTE8(v115) != 3)
        {
          sub_1C5626250(&v110);
        }

LABEL_139:
        sub_1C570FD20(v33);
        v79 = v78 - (v75 + v77);
        *&v110 = v104;
        v125[0] = 0;
        type metadata accessor for UILayoutPriority(0);
        sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
        if (sub_1C584F610())
        {
          sub_1C5625EE8(v126, v125);
          v98 = sub_1C570FB20(v33);
          sub_1C5625EE8(v131, &v118);
          v101 = v33;
          v80 = sub_1C570FB20(v33);
          v81 = sub_1C56521A0();
          v83 = v82;
          v84 = sub_1C5625100();
          sub_1C5625108(v125, v98, 0, &v118, v80, v81, v83, &v110, v84, v79, v104);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1C5625864(0, v107[2] + 1, 1, v107);
          }

          v85 = v107;
          v87 = v107[2];
          v86 = v107[3];
          if (v87 >= v86 >> 1)
          {
            v85 = sub_1C5625864((v86 > 1), v87 + 1, 1, v107);
          }

          v85[2] = v87 + 1;
          v107 = v85;
          sub_1C5625808(&v110, &v85[14 * v87 + 4]);
          v33 = v101;
        }

        *&v110 = v104;
        v125[0] = 1148846080;
        sub_1C5653044(&qword_1ED77E830, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC400]);
        if ((sub_1C584F2D0() & v102 & 1) == 0)
        {
          goto LABEL_123;
        }

        sub_1C5625EE8(v126, v125);
        v88 = sub_1C570FB20(v33);
        sub_1C5625EE8(v131, &v118);
        v89 = sub_1C570FB20(v33);
        v90 = sub_1C56521A0();
        v92 = v91;
        v93 = sub_1C5625100();
        v94 = sub_1C57056F8();
        sub_1C5625108(v125, v88, -1, &v118, v89, v90, v92, &v110, v93, v79, v94);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1C5625864(0, v107[2] + 1, 1, v107);
        }

        v96 = v107[2];
        v95 = v107[3];
        if (v96 >= v95 >> 1)
        {
          v107 = sub_1C5625864((v95 > 1), v96 + 1, 1, v107);
        }

        sub_1C5626250(v126);
        sub_1C5651D88(&v127);
        v107[2] = v96 + 1;
        result = sub_1C5625808(&v110, &v107[14 * v96 + 4]);
      }

      else
      {
LABEL_123:
        sub_1C5626250(v126);
        result = sub_1C5651D88(&v127);
      }
    }

    sub_1C5625230(&v118, &qword_1EC16DE98, &qword_1C5868758);
    sub_1C5625230(v125, &qword_1EC16DE98, &qword_1C5868758);
    sub_1C5651D88(v109);
LABEL_39:
    result = sub_1C5625230(&v110, &qword_1EC16DEF0, &qword_1C5868C20);
LABEL_40:
    v27 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      break;
    }

    if (v27 >= v12)
    {
      goto LABEL_157;
    }

    sub_1C5651DB8(v11 + 96 * v27, v125);
    sub_1C5652004(&v110);
    if (v111 != 255)
    {
      sub_1C56251C8(&v110, v109);
      sub_1C5651DB8(v125, &v110);
      if (BYTE8(v115) <= 1u)
      {
        if (!BYTE8(v115))
        {
          sub_1C56534F4(&v110, &v118, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(&v118, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_51;
        }
      }

      else if (BYTE8(v115) != 2)
      {
        if (BYTE8(v115) != 3)
        {
          sub_1C5626250(&v110);
        }

LABEL_51:
        v28 = *(v5 + 24);
        sub_1C570FCBC(v28);
        v99 = v29;
        sub_1C5651DB8(v125, &v110);
        if (BYTE8(v115) <= 1u)
        {
          if (!BYTE8(v115))
          {
            sub_1C56534F4(&v110, &v118, &unk_1EC16E860, &qword_1C5868750);
            sub_1C5625230(&v118, &unk_1EC16E860, &qword_1C5868750);
            goto LABEL_58;
          }
        }

        else if (BYTE8(v115) != 2)
        {
          if (BYTE8(v115) != 3)
          {
            sub_1C5626250(&v110);
          }

LABEL_58:
          sub_1C570FD20(v28);
          v31 = v30;
          sub_1C5651DB8(a2, &v110);
          if (BYTE8(v115) <= 2u)
          {
            sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
            v32 = 0.0;
          }

          else if (BYTE8(v115) == 3)
          {
            v32 = *&v110;
          }

          else
          {
            v32 = *(&v111 + 1);
            sub_1C5626250(&v110);
          }

          sub_1C5651DB8(&v127, &v110);
          if (BYTE8(v115) <= 1u)
          {
            if (!BYTE8(v115))
            {
              sub_1C56534F4(&v110, &v118, &unk_1EC16E860, &qword_1C5868750);
              sub_1C5625230(&v118, &unk_1EC16E860, &qword_1C5868750);
              goto LABEL_99;
            }
          }

          else if (BYTE8(v115) != 2)
          {
            if (BYTE8(v115) != 3)
            {
              sub_1C5626250(&v110);
            }

LABEL_99:
            sub_1C570FC58(v28);
            v59 = v58;
            sub_1C5651DB8(&v127, &v110);
            if (BYTE8(v115) <= 1u)
            {
              if (BYTE8(v115))
              {
                goto LABEL_105;
              }

              sub_1C56534F4(&v110, &v118, &unk_1EC16E860, &qword_1C5868750);
              sub_1C5625230(&v118, &unk_1EC16E860, &qword_1C5868750);
            }

            else
            {
              if (BYTE8(v115) != 2)
              {
                if (BYTE8(v115) != 3)
                {
                  sub_1C5626250(&v110);
                }

                goto LABEL_106;
              }

LABEL_105:
              sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
            }

LABEL_106:
            sub_1C570FD20(v28);
            v61 = -(v99 - v31 + v32 + v59 + v60);
            sub_1C5625EE8(v109, &v118);
            v62 = sub_1C570FB20(v28);
            sub_1C5625EE8(v126, v108);
            v63 = v28;
            v64 = sub_1C570FA50(v28);
            v65 = sub_1C56521A0();
            v67 = v66;
            v68 = sub_1C5625100();
            v69 = sub_1C57056F8();
            sub_1C5625108(&v118, v62, 0, v108, v64, v65, v67, &v110, v68, v61, v69);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v70 = v107;
            }

            else
            {
              v70 = sub_1C5625864(0, v107[2] + 1, 1, v107);
            }

            v72 = v70[2];
            v71 = v70[3];
            v33 = v63;
            if (v72 >= v71 >> 1)
            {
              v107 = sub_1C5625864((v71 > 1), v72 + 1, 1, v70);
            }

            else
            {
              v107 = v70;
            }

            sub_1C5626250(v109);
            sub_1C5651D88(v125);
            v107[2] = v72 + 1;
            sub_1C5625808(&v110, &v107[14 * v72 + 4]);
            sub_1C5651DB8(&v127, v125);
            goto LABEL_111;
          }

          sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_99;
        }

        sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_58;
      }

      sub_1C5625230(&v110, &unk_1EC16E860, &qword_1C5868750);
      goto LABEL_51;
    }

    sub_1C5651D88(v125);
    sub_1C5626250(v126);
    sub_1C5651D88(&v127);
    v13 = &v110;
LABEL_5:
    result = sub_1C5625230(v13, &unk_1EC16FE40, &qword_1C5876370);
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

void *sub_1C5650D94(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1C5652C6C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
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

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C5650E8C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1C5625864(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
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

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C5650F84(uint64_t a1, float a2)
{
  v3 = a2;
  *&v46 = a2;
  LODWORD(v60) = 0;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
  result = sub_1C584F610();
  if ((result & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v41 = v2;
  v6 = 0;
  v7 = a1 + 32;
  v42 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v9 = *(MEMORY[0x1E69DC5C0] + 16);
  while (1)
  {
    while (1)
    {
      if (v6 == v8)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v6 = v8;
        v52[0] = -1;
      }

      else
      {
        if (v6 >= v8)
        {
          goto LABEL_82;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_83;
        }

        v58 = v6;
        sub_1C5651DB8(v7 + 96 * v6, &v59);
        sub_1C56534F4(&v58, &v46, &qword_1EC16DEE0, &qword_1C5868C10);
        ++v6;
      }

      sub_1C56534F4(&v46, &v60, &qword_1EC16DEE8, &qword_1C5868C18);
      if (v61[88] == 255)
      {
        return v42;
      }

      v10 = v60;
      sub_1C5651DF0(v61, &v58);
      sub_1C5651DB8(&v58, v57);
      if (v8)
      {
        sub_1C5651DB8(v7, v54);
      }

      else
      {
        v55 = 0;
        memset(v54, 0, sizeof(v54));
        v56 = -1;
      }

      sub_1C56466CC(v57, &v46, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C56466CC(v54, v52, &qword_1EC16DE98, &qword_1C5868758);
      if (BYTE8(v51) == 255)
      {
        sub_1C5625230(v54, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v57, &qword_1EC16DE98, &qword_1C5868758);
        if (v53 != 255)
        {
          goto LABEL_20;
        }

        sub_1C5625230(&v46, &qword_1EC16DE98, &qword_1C5868758);
        goto LABEL_3;
      }

      sub_1C56466CC(&v46, v44, &qword_1EC16DE98, &qword_1C5868758);
      if (v53 == 255)
      {
        sub_1C5625230(v54, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5625230(v57, &qword_1EC16DE98, &qword_1C5868758);
        sub_1C5651D88(v44);
LABEL_20:
        result = sub_1C5625230(&v46, &qword_1EC16DEF0, &qword_1C5868C20);
        break;
      }

      sub_1C5651DF0(v52, v43);
      v11 = sub_1C5652DAC(v44, v43);
      sub_1C5651D88(v43);
      sub_1C5625230(v54, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5625230(v57, &qword_1EC16DE98, &qword_1C5868758);
      sub_1C5651D88(v44);
      result = sub_1C5625230(&v46, &qword_1EC16DE98, &qword_1C5868758);
      if ((v11 & 1) == 0)
      {
        break;
      }

LABEL_3:
      result = sub_1C5651D88(&v58);
    }

    v12 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_81;
    }

    sub_1C5651DB8(v7 + 96 * v12, v57);
    sub_1C5652004(&v46);
    if (v47 == 255)
    {
LABEL_26:
      sub_1C5651D88(v57);
      sub_1C5651D88(&v58);
      result = sub_1C5625230(&v46, &unk_1EC16FE40, &qword_1C5876370);
    }

    else
    {
      sub_1C56251C8(&v46, v44);
      sub_1C5652004(&v46);
      if (v47 == 255)
      {
        sub_1C5626250(v44);
        goto LABEL_26;
      }

      sub_1C56251C8(&v46, v43);
      sub_1C5651DB8(v57, &v46);
      if (BYTE8(v51) <= 1u)
      {
        v13 = v41;
LABEL_32:
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_33;
      }

      v13 = v41;
      if (BYTE8(v51) == 2)
      {
        goto LABEL_32;
      }

      if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

LABEL_33:
      v14 = *(v13 + 24);
      sub_1C570FC58(v14);
      v37 = v15;
      sub_1C5651DB8(v57, &v46);
      if (BYTE8(v51) <= 1u)
      {
        if (!BYTE8(v51))
        {
          sub_1C56534F4(&v46, v54, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v54, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_40;
        }

LABEL_39:
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_40;
      }

      if (BYTE8(v51) == 2)
      {
        goto LABEL_39;
      }

      if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

LABEL_40:
      sub_1C570FC58(v14);
      v36 = v16;
      sub_1C5651DB8(v57, &v46);
      if (BYTE8(v51) <= 2u)
      {
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

      sub_1C570FCBC(v14);
      v35 = v17;
      sub_1C5651DB8(v57, &v46);
      if (BYTE8(v51) <= 1u)
      {
        if (!BYTE8(v51))
        {
          sub_1C56534F4(&v46, v54, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v54, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_51;
        }

LABEL_50:
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_51;
      }

      if (BYTE8(v51) == 2)
      {
        goto LABEL_50;
      }

      if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

LABEL_51:
      sub_1C570FCBC(v14);
      v34 = v18;
      sub_1C5651DB8(&v58, &v46);
      if (BYTE8(v51) <= 2u)
      {
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

      sub_1C570FC58(v14);
      v33 = v19;
      sub_1C5651DB8(&v58, &v46);
      v39 = v3;
      if (BYTE8(v51) <= 1u)
      {
        if (!BYTE8(v51))
        {
          sub_1C56534F4(&v46, v54, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v54, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_62;
        }

LABEL_61:
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_62;
      }

      if (BYTE8(v51) == 2)
      {
        goto LABEL_61;
      }

      if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

LABEL_62:
      sub_1C570FC58(v14);
      v21 = v20;
      sub_1C5651DB8(&v58, &v46);
      v40 = v9;
      if (BYTE8(v51) <= 2u)
      {
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
      }

      else if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

      sub_1C570FCBC(v14);
      v23 = v22;
      sub_1C5651DB8(&v58, &v46);
      if (BYTE8(v51) <= 1u)
      {
        if (!BYTE8(v51))
        {
          sub_1C56534F4(&v46, v54, &unk_1EC16E860, &qword_1C5868750);
          sub_1C5625230(v54, &unk_1EC16E860, &qword_1C5868750);
          goto LABEL_73;
        }

LABEL_72:
        sub_1C5625230(&v46, &unk_1EC16E860, &qword_1C5868750);
        goto LABEL_73;
      }

      if (BYTE8(v51) == 2)
      {
        goto LABEL_72;
      }

      if (BYTE8(v51) != 3)
      {
        sub_1C5626250(&v46);
      }

LABEL_73:
      sub_1C570FCBC(v14);
      v25 = v37 - v36 + v35 - v34 - (v33 - v21 + v23 - v24);
      sub_1C5625EE8(v43, v54);
      v38 = sub_1C570FB88(v14);
      sub_1C5625EE8(v44, v45);
      v26 = sub_1C570FB88(v14);
      v27 = sub_1C56521A0();
      v29 = v28;
      v30 = sub_1C5625100();
      v3 = v39;
      sub_1C5625108(v54, v38, 0, v45, v26, v27, v29, &v46, v30, v25, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1C5625864(0, v42[2] + 1, 1, v42);
      }

      v9 = v40;
      v32 = v42[2];
      v31 = v42[3];
      if (v32 >= v31 >> 1)
      {
        v42 = sub_1C5625864((v31 > 1), v32 + 1, 1, v42);
      }

      sub_1C5626250(v43);
      sub_1C5626250(v44);
      sub_1C5651D88(v57);
      sub_1C5651D88(&v58);
      v42[2] = v32 + 1;
      result = sub_1C5625808(&v46, &v42[14 * v32 + 4]);
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

void sub_1C5651AD8(uint64_t a1@<X8>)
{
  sub_1C564E90C(&v9);
  if ((v9 & 0xE0000000) == 0x20000000)
  {
    if (*(*(v1 + 32) + 16) != 1)
    {
      *a1 = *(v1 + 48);
      v7 = 3;
      goto LABEL_10;
    }

    sub_1C564E90C(&v8);
    v3 = v8;
  }

  else
  {
    sub_1C564E90C(&v9);
    v3 = v9;
  }

  if (((1 << (v3 >> 29)) & 0x3A) != 0)
  {
    sub_1C5625EE8(v1, a1);
    *(a1 + 24) = 0;
  }

  else
  {
    sub_1C5625EE8(v1, a1);
    *(a1 + 24) = sub_1C5651BA4();
  }

  *(a1 + 32) = sub_1C5651C6C();
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  v7 = 4;
LABEL_10:
  *(a1 + 88) = v7;
}

double sub_1C5651BA4()
{
  v3 = *(v0 + 40);
  sub_1C57245D8(&v2);
  if ((v2 & 0xE0000000) == 0xA0000000 && (LODWORD(v3) = HIDWORD(v2), LODWORD(v2) = 1148846080, type metadata accessor for UILayoutPriority(0), sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]), (sub_1C584F610() & 1) == 0))
  {
    return *(v0 + 48) + *(v0 + 48);
  }

  else
  {
    return *(v0 + 48);
  }
}

double sub_1C5651C6C()
{
  v4 = *(v0 + 40);
  sub_1C57245D8(&v3);
  if ((v3 & 0xC0000000) != 0x80000000)
  {
    return *(v0 + 56);
  }

  LODWORD(v4) = HIDWORD(v3);
  LODWORD(v3) = 1148846080;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5653044(&qword_1ED77E828, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
  if (sub_1C584F610())
  {
    return *(v0 + 56);
  }

  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = 0.0;
  }

  return *(v0 + 56) + v2;
}

__n128 sub_1C5651E28()
{
  sub_1C5651DB8(v0, v5);
  if (v6 <= 1u)
  {
    if (!v6)
    {
      sub_1C56534F4(v5, v3, &unk_1EC16E860, &qword_1C5868750);
      v2 = v4;
      sub_1C5625230(v3, &unk_1EC16E860, &qword_1C5868750);
      return v2;
    }

LABEL_7:
    v2 = *MEMORY[0x1E69DC5C0];
    sub_1C5625230(v5, &unk_1EC16E860, &qword_1C5868750);
    return v2;
  }

  if (v6 == 2)
  {
    goto LABEL_7;
  }

  if (v6 == 3)
  {
    return *MEMORY[0x1E69DC5C0];
  }

  v2 = *MEMORY[0x1E69DC5C0];
  sub_1C5626250(v5);
  return v2;
}

double sub_1C5651F1C()
{
  sub_1C5651DB8(v0, v4);
  if (v5 <= 1u)
  {
    if (!v5)
    {
      sub_1C56534F4(v4, v3, &unk_1EC16E860, &qword_1C5868750);
      v1 = *&v3[7];
      sub_1C5625230(v3, &unk_1EC16E860, &qword_1C5868750);
      return v1;
    }

LABEL_7:
    v1 = *MEMORY[0x1E69DE258];
    sub_1C5625230(v4, &unk_1EC16E860, &qword_1C5868750);
    return v1;
  }

  if (v5 == 2)
  {
    goto LABEL_7;
  }

  v1 = *MEMORY[0x1E69DE258];
  if (v5 != 3)
  {
    sub_1C5626250(v4);
  }

  return v1;
}

void sub_1C5652004(uint64_t a1@<X8>)
{
  sub_1C5651DB8(v1, v15);
  if (v16 <= 1u)
  {
    if (!v16)
    {
      sub_1C56534F4(v15, v14, &unk_1EC16E860, &qword_1C5868750);
      v5 = v14;
LABEL_10:
      sub_1C56251C8(v5, a1);
      return;
    }

    sub_1C56534F4(v15, v14, &unk_1EC16E860, &qword_1C5868750);
    v6 = sub_1C5705A60();
    if (v8)
    {
LABEL_12:
      MEMORY[0x1C6949D90](v6);

      GEOLocationCoordinate2DMake();
      v10 = v9;
      v12 = v11;
      sub_1C5625230(v14, &unk_1EC16E860, &qword_1C5868750);
      *a1 = v10;
      *(a1 + 8) = v12;
      goto LABEL_13;
    }

LABEL_14:
    sub_1C5625230(v14, &unk_1EC16E860, &qword_1C5868750);
    *a1 = 0;
    *(a1 + 8) = 0;
    v13 = -1;
    goto LABEL_15;
  }

  if (v16 == 2)
  {
    sub_1C56534F4(v15, v14, &unk_1EC16E860, &qword_1C5868750);
    v6 = sub_1C5705A60();
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v16 != 3)
  {
    v5 = v15;
    goto LABEL_10;
  }

  GEOLocationCoordinate2DMake();
  *a1 = v3;
  *(a1 + 8) = v4;
LABEL_13:
  v13 = 1;
LABEL_15:
  *(a1 + 16) = v13;
}

unint64_t sub_1C56521A0()
{
  sub_1C5651DB8(v0, v6);
  if (v8 > 2u)
  {
    if (v8 != 3)
    {
      v3 = 0xD000000000000016;
      sub_1C5626250(v6);
      return v3;
    }
  }

  else
  {
    if (v8 - 1 >= 2)
    {
      sub_1C584FC50();

      v4 = sub_1C584FD90();
      MEMORY[0x1C6949D90](v4);

      MEMORY[0x1C6949D90](93, 0xE100000000000000);
      v3 = 0xD00000000000001ALL;
      sub_1C5625230(v6, &unk_1EC16E860, &qword_1C5868750);
      return v3;
    }

    sub_1C5625230(v6, &unk_1EC16E860, &qword_1C5868750);
  }

  sub_1C5652004(v6);
  if (v7 == 255)
  {
    sub_1C5625230(v6, &unk_1EC16FE40, &qword_1C5876370);
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    sub_1C5626250(v6);
    return 0;
  }

  v1 = v6[0];
  v2 = v6[1];
  strcpy(v6, "distribution.");
  HIWORD(v6[1]) = -4864;
  MEMORY[0x1C6949D90](v1, v2);

  return v6[0];
}

uint64_t sub_1C5652360(uint64_t a1)
{
  sub_1C5651DB8(v1, v13);
  if (v18 <= 1u)
  {
    if (!v18)
    {
      v5 = v17;
      sub_1C56534F4(v13, v11, &unk_1EC16E860, &qword_1C5868750);
      MEMORY[0x1C694A560](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      sub_1C56534A4(&qword_1EC16DEA8, &unk_1C5867FA8);
      sub_1C584F5F0();
      MEMORY[0x1C694A560](v5);
      return sub_1C5625230(v11, &unk_1EC16E860, &qword_1C5868750);
    }

    sub_1C56534F4(v13, v11, &unk_1EC16E860, &qword_1C5868750);
    v6 = 1;
LABEL_14:
    MEMORY[0x1C694A560](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
    sub_1C56534A4(&qword_1EC16DEA8, &unk_1C5867FA8);
    sub_1C584F5F0();
    return sub_1C5625230(v11, &unk_1EC16E860, &qword_1C5868750);
  }

  if (v18 == 2)
  {
    sub_1C56534F4(v13, v11, &unk_1EC16E860, &qword_1C5868750);
    v6 = 2;
    goto LABEL_14;
  }

  if (v18 == 3)
  {
    v2 = *v13;
    MEMORY[0x1C694A560](3);
    v3 = 0.0;
    if (v2 != 0.0)
    {
      v3 = v2;
    }

    return MEMORY[0x1C694A590](*&v3);
  }

  else
  {
    v7 = v14;
    if (v14 == 0.0)
    {
      v7 = 0.0;
    }

    v8 = v7;
    v9 = v16;
    v10 = v15;
    sub_1C56251C8(v13, v12);
    MEMORY[0x1C694A560](4);
    sub_1C5633434();
    sub_1C584F5F0();
    MEMORY[0x1C694A590](*&v8);
    v11[1] = v9;
    v11[0] = v10;
    type metadata accessor for NSDirectionalEdgeInsets(0);
    sub_1C5653044(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
    sub_1C584F5F0();
    return sub_1C5626250(v12);
  }
}

uint64_t sub_1C565260C()
{
  sub_1C584FEA0();
  sub_1C5652360(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5652650(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C5652360(v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C5652690(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      do
      {
        sub_1C56466CC(v3, v8, &unk_1EC16E860, &qword_1C5868750);
        sub_1C56466CC(v4, v7, &unk_1EC16E860, &qword_1C5868750);
        sub_1C56534A4(&qword_1EC16DED0, &unk_1C5867FE8);
        v5 = sub_1C584F620();
        sub_1C5625230(v7, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(v8, &unk_1EC16E860, &qword_1C5868750);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 80;
        v4 += 80;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C56527CC(uint64_t a1)
{
  sub_1C5633434();
  sub_1C584F5F0();
  MEMORY[0x1C694A560](*(v1 + 24));
  v2 = *(v1 + 32);
  MEMORY[0x1C694A560](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1C56466CC(v4, v8, &unk_1EC16E860, &qword_1C5868750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      sub_1C56534A4(&qword_1EC16DEA8, &unk_1C5867FA8);
      sub_1C584F5F0();
      sub_1C5625230(v8, &unk_1EC16E860, &qword_1C5868750);
      v4 += 80;
      --v3;
    }

    while (v3);
  }

  *&v8[0] = *(v1 + 40);
  sub_1C5653140();
  sub_1C584F5F0();
  v5 = *(v1 + 48);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1C694A590](*&v5);
  v6 = *(v1 + 72);
  v8[0] = *(v1 + 56);
  v8[1] = v6;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5653044(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C565297C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  v18 = *a4;
  result = sub_1C56251C8(a1, a5);
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = v18;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a8;
  *(a5 + 72) = a9;
  *(a5 + 80) = a10;
  return result;
}

uint64_t sub_1C56529FC()
{
  sub_1C584FEA0();
  sub_1C56527CC(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5652A40(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C56527CC(v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C5652A80()
{
  v1 = *v0;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5652AC8(uint64_t a1)
{
  v2 = *v1;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v2);
  return sub_1C584FEF0();
}

void *sub_1C5652B0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C5652B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C5652B2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5652C6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DEA0, qword_1C5868760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C5652DAC(uint64_t a1, uint64_t a2)
{
  sub_1C5651DB8(a1, v23);
  sub_1C5651DB8(a2, v25);
  if (v24 <= 1u)
  {
    if (v24)
    {
      sub_1C5651DB8(v23, v19);
      if (v29 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C5651DB8(v23, v19);
      if (!v29)
      {
        v4 = v22;
        v5 = v28;
        sub_1C56534F4(v25, v18, &unk_1EC16E860, &qword_1C5868750);
        v6 = sub_1C5633434();
        v7 = sub_1C563E134(v19, v18, &type metadata for LayoutItemSpecification, v6);
        sub_1C5625230(v18, &unk_1EC16E860, &qword_1C5868750);
        sub_1C5625230(v19, &unk_1EC16E860, &qword_1C5868750);
        if (v7)
        {
          v3 = v4 == v5;
LABEL_10:
          v8 = v3;
          goto LABEL_15;
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    sub_1C5625230(v19, &unk_1EC16E860, &qword_1C5868750);
    goto LABEL_24;
  }

  if (v24 != 2)
  {
    if (v24 == 3)
    {
      sub_1C5651DB8(v23, v19);
      if (v29 == 3)
      {
        v3 = v19[0] == v25[0];
        goto LABEL_10;
      }

      goto LABEL_24;
    }

    sub_1C5651DB8(v23, v19);
    if (v29 == 4)
    {
      v10 = v19[3];
      v16 = v20;
      v17 = v21;
      v11 = v25[3];
      v14 = v26;
      v15 = v27;
      sub_1C56251C8(v25, v18);
      v12 = sub_1C57057BC(v19, v18);
      sub_1C5626250(v18);
      sub_1C5626250(v19);
      if ((v12 & 1) != 0 && v10 == v11)
      {
        v8 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, v14), vceqq_f64(v17, v15))));
        goto LABEL_15;
      }

LABEL_22:
      sub_1C5651D88(v23);
LABEL_25:
      v8 = 0;
      return v8 & 1;
    }

    sub_1C5626250(v19);
LABEL_24:
    sub_1C5625230(v23, &qword_1EC16DED8, &unk_1C5868C00);
    goto LABEL_25;
  }

  sub_1C5651DB8(v23, v19);
  if (v29 != 2)
  {
    goto LABEL_21;
  }

LABEL_14:
  sub_1C56534F4(v25, v18, &unk_1EC16E860, &qword_1C5868750);
  v9 = sub_1C5633434();
  v8 = sub_1C563E134(v19, v18, &type metadata for LayoutItemSpecification, v9);
  sub_1C5625230(v18, &unk_1EC16E860, &qword_1C5868750);
  sub_1C5625230(v19, &unk_1EC16E860, &qword_1C5868750);
LABEL_15:
  sub_1C5651D88(v23);
  return v8 & 1;
}

uint64_t sub_1C5653044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C565308C(uint64_t a1, uint64_t a2)
{
  if ((sub_1C57057BC(a1, a2) & 1) != 0 && *(a1 + 24) == *(a2 + 24) && (sub_1C5652690(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (static StackLayout.Distribution.== infix(_:_:)() & 1) != 0 && *(a1 + 48) == *(a2 + 48))
  {
    v4 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72)))));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1C5653140()
{
  result = qword_1EC16DEB0;
  if (!qword_1EC16DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEB0);
  }

  return result;
}

unint64_t sub_1C5653198()
{
  result = qword_1EC16DEB8;
  if (!qword_1EC16DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEB8);
  }

  return result;
}

unint64_t sub_1C56531EC(uint64_t a1)
{
  result = sub_1C5653214();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5653214()
{
  result = qword_1EC16DEC0;
  if (!qword_1EC16DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEC0);
  }

  return result;
}

unint64_t sub_1C565326C()
{
  result = qword_1EC16DEC8;
  if (!qword_1EC16DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DEC8);
  }

  return result;
}

uint64_t sub_1C56532C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5653308(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1C5653378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 89))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 88);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C56533B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5653408(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = a2 - 5;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t sub_1C56534A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC16E860, &qword_1C5868750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C56534F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t WatchPlaceAccoladesViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WatchPlaceAccoladesViewModel.accoladeText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *WatchPlaceAccoladesViewModel.icon.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t WatchPlaceAccoladesViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_1C5653614(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 _accolades];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  sub_1C5653884();
  v6 = sub_1C584F770();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_22:

    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  if (!sub_1C584FB90())
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v7 = MEMORY[0x1C694A320](0, v6);
LABEL_7:
  v8 = v7;

  v9 = [v8 vendorName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1C584F660();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      goto LABEL_13;
    }
  }

  v15 = [objc_opt_self() accoladesRibbonTitle];
  v11 = sub_1C584F660();
  v13 = v16;

LABEL_13:
  if ([v8 shouldDisplayAccoladeText] && (v17 = objc_msgSend(v8, sel_accoladeText)) != 0)
  {
    v18 = v17;
    v19 = sub_1C584F660();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [v8 accoladeText];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C584F660();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = [objc_opt_self() imageForIconID:objc_msgSend(v8 contentScale:sel_iconId) sizeGroup:1 nightMode:{0, 2.0}];

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  *(a2 + 32) = v27;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26;
}

unint64_t sub_1C5653884()
{
  result = qword_1EC16DF10;
  if (!qword_1EC16DF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16DF10);
  }

  return result;
}

uint64_t sub_1C56538D0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1C5653900()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_1C5653930()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1C5653958()
{
  v1 = *(v0 + 40);

  return v1;
}

id sub_1C5653A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() imageForIconID:a3 contentScale:1 sizeGroup:0 nightMode:2.0];

  return v3;
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

uint64_t sub_1C5653ADC(uint64_t a1, int a2)
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

uint64_t sub_1C5653B24(uint64_t result, int a2, int a3)
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

id sub_1C5653BA0()
{
  result = [*(v0 + 8) name];
  if (result)
  {
    v2 = result;
    v3 = sub_1C584F660();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5653C14()
{
  v1 = [*v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

uint64_t sub_1C5653C9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 | a4;
  v6 = a2;
  v7 = a4;
  if (v5)
  {
    v8 = v7;
    v9 = [v6 isEqual:v7];

    if (!v9)
    {
      return 0;
    }
  }

  v10 = sub_1C584F750();
  v11 = sub_1C584F750();
  v12 = v10 | v11;
  v13 = v10;
  v14 = v11;
  if (v12)
  {
    v15 = [v13 isEqual:v14];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t GEOBothNilOrEqual(unint64_t a1, unint64_t a2)
{
  v3 = a1 | a2;
  v4 = a1;
  v5 = a2;
  if (v3)
  {
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

unint64_t sub_1C5653DE0(uint64_t a1)
{
  result = sub_1C5653E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5653E08()
{
  result = qword_1EC16DF20;
  if (!qword_1EC16DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DF20);
  }

  return result;
}

unint64_t sub_1C5653E5C(uint64_t a1)
{
  result = sub_1C5653E84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5653E84()
{
  result = qword_1EC16DF28;
  if (!qword_1EC16DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DF28);
  }

  return result;
}

uint64_t sub_1C5653ED8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5653F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C5653F7C()
{
  v1 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MUCardButton) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1C584F630();
    [v4 setSymbolName_];

    [v4 setDirectionalLayoutMargins_];
    [v4 setBlurBackground_];
    [v4 addTarget:v0 action:sel_closeButtonTapped forControlEvents:64];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1C56540A4(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton] = 0;
  *&v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_webView] = 0;
  v6 = &v5[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_dismissHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1C56541E4()
{
  v1 = v0;
  v2 = sub_1C584E6F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v65 - v9;
  v11 = sub_1C584EA90();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v65 - v18;
  result = GEOConfigGetString();
  if (result)
  {
    v67 = v3;
    v68 = v19;
    v21 = result;
    sub_1C584F660();
    v23 = v22;

    v24 = v23;
    sub_1C584EA80();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return sub_1C5654BD8(v10);
    }

    v66 = v2;
    v25 = v68;
    (*(v12 + 32))(v68, v10, v11);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      (*(v12 + 8))(v25, v11);
    }

    v27 = Strong;
    v65[2] = v24;
    (*(v12 + 16))(v16, v25, v11);
    v28 = v6;
    sub_1C584E6D0();
    type metadata accessor for MUWebPlacecardBridge();
    v29 = sub_1C566CC14();
    v30 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge;
    v31 = *&v1[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge];
    *&v1[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge] = v29;

    v32 = *&v1[v30];
    if (v32)
    {
      v33 = v32;
      v34 = swift_unknownObjectRetain();
      sub_1C566AEC8(v34);
    }

    v35 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_webView;
    swift_beginAccess();
    v36 = *&v1[v35];
    v37 = v67;
    if (!v36)
    {
      v38 = *&v1[v30];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1C566AF74();

        v38 = *&v1[v35];
      }

      else
      {
        v40 = 0;
      }

      *&v1[v35] = v40;

      v36 = *&v1[v35];
      if (!v36)
      {
        swift_unknownObjectRelease();

        goto LABEL_19;
      }
    }

    v65[1] = v27;
    v41 = v36;
    v42 = sub_1C584F630();
    [v41 setAccessibilityIdentifier_];

    result = [v1 view];
    if (result)
    {
      v43 = result;
      v44 = v41;
      [v43 addSubview_];

      v65[0] = v6;
      v45 = sub_1C584E6B0();

      [v44 setTranslatesAutoresizingMaskIntoConstraints_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1C5868600;
      v47 = [v44 topAnchor];

      result = [v1 view];
      if (result)
      {
        v48 = result;
        v49 = [result topAnchor];

        v50 = [v47 constraintEqualToAnchor_];
        *(v46 + 32) = v50;
        v51 = [v44 bottomAnchor];

        result = [v1 view];
        if (result)
        {
          v52 = result;
          v53 = [result bottomAnchor];

          v54 = [v51 &selRef:v53 getAppAction:? + 5];
          *(v46 + 40) = v54;
          v55 = [v44 leadingAnchor];

          result = [v1 view];
          if (result)
          {
            v56 = result;
            v57 = [result leadingAnchor];

            v58 = [v55 &selRef:v57 getAppAction:? + 5];
            *(v46 + 48) = v58;
            v59 = [v44 trailingAnchor];

            result = [v1 view];
            if (result)
            {
              v60 = result;

              v61 = objc_opt_self();
              v62 = [v60 trailingAnchor];

              v63 = [v59 &selRef:v62 getAppAction:? + 5];
              *(v46 + 56) = v63;
              sub_1C5654C40();
              v64 = sub_1C584F750();

              [v61 activateConstraints_];
              swift_unknownObjectRelease();

              v37 = v67;
              v28 = v65[0];
LABEL_19:
              (*(v37 + 8))(v28, v66);
              return (*(v12 + 8))(v68, v11);
            }

LABEL_26:
            __break(1u);
            return result;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void sub_1C5654948()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_1C5653F7C();
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton;
  [*&v0[OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C58682A0;
  v9 = [*&v0[v7] topAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:16.0];
  *(v8 + 32) = v13;
  v14 = [*&v0[v7] trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 trailingAnchor];

  v19 = [v14 constraintEqualToAnchor:v18 constant:-16.0];
  *(v8 + 40) = v19;
  sub_1C5654C40();
  v20 = sub_1C584F750();

  [v17 activateConstraints_];
}

uint64_t sub_1C5654BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5654C40()
{
  result = qword_1ED77E810;
  if (!qword_1ED77E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED77E810);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1C5654ED0()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C569C700(v4);
  sub_1C569C6D0(0xD00000000000001BLL, 0x80000001C5892520);
  sub_1C569C6E8(0xD00000000000001BLL, 0x80000001C5892520);
  *v4 = MapsFeature_IsEnabled_ApplePayEnhancementsEnabled();
  v5 = sub_1C5655018(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1C5655018((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7;
  v9 = v5;
  sub_1C56551F0(v4, v8);
  return v9;
}

void *sub_1C5655018(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DFB8, &qword_1C58795A0);
  v10 = *(type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0) - 8);
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
  v15 = *(type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0) - 8);
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

uint64_t sub_1C56551F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5655254@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, float a9@<S0>, float a10@<S1>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 8) = a9;
  *(a8 + 12) = a10;
  *(a8 + 16) = a6;
  *(a8 + 24) = a7;
  return result;
}

uint64_t sub_1C5655274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C56552D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1C565537C()
{
  v1 = *v0;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5655410(uint64_t a1)
{
  v2 = *v1;
  sub_1C584FEA0();
  MEMORY[0x1C694A560](v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C5655474()
{
  sub_1C565744C(v20);
  v0 = v20[0];
  if (v21)
  {
    if (v21 == 1)
    {
      sub_1C56559C8(v20[0], v20[1], 1);
      v1 = [objc_opt_self() callAccessibilityLabel];
    }

    else
    {
      v17 = objc_opt_self();
      if (v0)
      {
        v1 = [v17 removeDroppedPinTitle];
      }

      else
      {
        v1 = [v17 dropPinAtCurrentLocationTitle];
      }
    }

    v18 = v1;
    v19 = sub_1C584F660();

    return v19;
  }

  else
  {
    v2 = [objc_opt_self() axLabelForTransportType_];
    v3 = sub_1C584F660();
    v5 = v4;

    v6 = [objc_opt_self() transportTypeEtaAccessibilityLabelFormat];
    sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C5867990;
    v8 = sub_1C56572C4();
    v10 = v9;
    v11 = MEMORY[0x1E69E6158];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1C563D3B0();
    if (v10)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    if (v10)
    {
      v14 = v10;
    }

    *(v7 + 32) = v13;
    *(v7 + 40) = v14;
    *(v7 + 96) = v11;
    *(v7 + 104) = v12;
    *(v7 + 64) = v12;
    *(v7 + 72) = v3;
    *(v7 + 80) = v5;
    v15 = sub_1C584F670();

    return v15;
  }
}

uint64_t sub_1C5655660()
{
  v0 = sub_1C570E684();
  v1 = [objc_opt_self() axLabelForTransportType_];
  v2 = sub_1C584F660();
  v4 = v3;

  v5 = [objc_opt_self() transportTypeEtaAccessibilityLabelFormat];
  sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C5867990;
  v7 = sub_1C5659FF4();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C563D3B0();
  if (v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v9)
  {
    v13 = v9;
  }

  *(v6 + 32) = v12;
  *(v6 + 40) = v13;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  *(v6 + 72) = v2;
  *(v6 + 80) = v4;
  v14 = sub_1C584F670();

  return v14;
}

uint64_t WatchHeaderButtonViewModelProviding.accessibilityLabel.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v24);
  v4 = v24[0];
  if (v25)
  {
    if (v25 == 1)
    {
      sub_1C56559C8(v24[0], v24[1], 1);
      v5 = [objc_opt_self() callAccessibilityLabel];
    }

    else
    {
      v21 = objc_opt_self();
      if (v4)
      {
        v5 = [v21 removeDroppedPinTitle];
      }

      else
      {
        v5 = [v21 dropPinAtCurrentLocationTitle];
      }
    }

    v22 = v5;
    v23 = sub_1C584F660();

    return v23;
  }

  else
  {
    v6 = [objc_opt_self() axLabelForTransportType_];
    v7 = sub_1C584F660();
    v9 = v8;

    v10 = [objc_opt_self() transportTypeEtaAccessibilityLabelFormat];
    sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C5867990;
    v12 = (*(a2 + 8))(a1, a2);
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1C563D3B0();
    if (v14)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v14)
    {
      v18 = v14;
    }

    *(v11 + 32) = v17;
    *(v11 + 40) = v18;
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 64) = v16;
    *(v11 + 72) = v7;
    *(v11 + 80) = v9;
    v19 = sub_1C584F670();

    return v19;
  }
}

uint64_t sub_1C56559C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t WatchSecondaryHeaderButtonViewModel.titleText.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C5655AA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t WatchSecondaryHeaderButtonViewModel.titleText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v9);
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();
}

uint64_t (*WatchSecondaryHeaderButtonViewModel.titleText.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5655E40;
}

uint64_t WatchSecondaryHeaderButtonViewModel.symbolName.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C5655F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t WatchSecondaryHeaderButtonViewModel.symbolName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1C584FDC0() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
    sub_1C584EF30();
  }
}

uint64_t (*WatchSecondaryHeaderButtonViewModel.symbolName.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C565627C;
}

uint64_t WatchSecondaryHeaderButtonViewModel.type.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 64);
  *(a1 + 16) = v5;
  return sub_1C565B1D0(v3, v4, v5);
}

uint64_t sub_1C5656350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 64);
  *(a2 + 16) = v6;
  return sub_1C565B1D0(v4, v5, v6);
}

double sub_1C5656418(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();

  return result;
}

double WatchSecondaryHeaderButtonViewModel.type.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();
  sub_1C56559C8(v1, v2, v3);

  return result;
}

uint64_t sub_1C56565E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  v10 = *(a1 + 64);
  *(a1 + 64) = v4;
  sub_1C565B1D0(a2, a3, v4);
  return sub_1C56559C8(v8, v9, v10);
}

uint64_t (*WatchSecondaryHeaderButtonViewModel.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C56567B4;
}

uint64_t WatchSecondaryHeaderButtonViewModel.isEnabled.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1C5656874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 65);
  return result;
}

void WatchSecondaryHeaderButtonViewModel.isEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 65) == v2)
  {
    *(v1 + 65) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
    sub_1C584EF30();
  }
}

uint64_t (*WatchSecondaryHeaderButtonViewModel.isEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5656BBC;
}

uint64_t WatchSecondaryHeaderButtonViewModel.loadingState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v1 + 66);
  return result;
}

uint64_t sub_1C5656C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 66);
  return result;
}

double sub_1C5656D40(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();

  return result;
}

double WatchSecondaryHeaderButtonViewModel.loadingState.setter(char *a1)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF30();

  return result;
}

uint64_t (*WatchSecondaryHeaderButtonViewModel.loadingState.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C565701C;
}

uint64_t WatchSecondaryHeaderButtonViewModel.style.getter@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  v4 = *(v1 + 64) == 2 && (*(v1 + 48) & 1) != 0;
  *a1 = v4;
  return result;
}

uint64_t sub_1C5657100(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *a1;
  v12 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  *(v10 + 65) = 257;
  sub_1C584EF70();
  *(v10 + 48) = v11;
  *(v10 + 56) = v12;
  *(v10 + 64) = a1;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  return v10;
}

uint64_t WatchSecondaryHeaderButtonViewModel.deinit()
{

  sub_1C56559C8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WatchSecondaryHeaderButtonViewModel.__deallocating_deinit()
{

  sub_1C56559C8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = OBJC_IVAR____TtC6MapsUI35WatchSecondaryHeaderButtonViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56572C4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1C5657388()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1C565744C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 64);
  *(a1 + 16) = v6;
  return sub_1C565B1D0(v4, v5, v6);
}

uint64_t sub_1C5657514()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v1 + 65);
}

uint64_t sub_1C56575C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD0, type metadata accessor for WatchSecondaryHeaderButtonViewModel, &protocol conformance descriptor for WatchSecondaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v3 + 66);
  return result;
}

uint64_t WatchPrimaryHeaderButtonViewModel.titleText.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C5657790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t WatchPrimaryHeaderButtonViewModel.titleText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v9);
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();
}

uint64_t (*WatchPrimaryHeaderButtonViewModel.titleText.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5657B0C;
}

uint64_t WatchPrimaryHeaderButtonViewModel.loadingState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1C5657BD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

double sub_1C5657C90(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();

  return result;
}

double WatchPrimaryHeaderButtonViewModel.loadingState.setter(char *a1)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();

  return result;
}

uint64_t (*WatchPrimaryHeaderButtonViewModel.loadingState.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5657F6C;
}

uint64_t WatchPrimaryHeaderButtonViewModel.axIdentifier.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1C565803C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1C5658114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t WatchPrimaryHeaderButtonViewModel.axIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v9);
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();
}

uint64_t (*WatchPrimaryHeaderButtonViewModel.axIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5658400;
}

uint64_t WatchPrimaryHeaderButtonViewModel.symbolName.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1C56584D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1C56585A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t WatchPrimaryHeaderButtonViewModel.symbolName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (sub_1C584FDC0() & 1) != 0)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();
  }
}

uint64_t (*WatchPrimaryHeaderButtonViewModel.symbolName.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5658884;
}

id WatchPrimaryHeaderButtonViewModel.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C570E684();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t WatchPrimaryHeaderButtonViewModel.isEnabled.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_1C565897C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

void WatchPrimaryHeaderButtonViewModel.isEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 72) == v2)
  {
    *(v1 + 72) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();
  }
}

uint64_t (*WatchPrimaryHeaderButtonViewModel.isEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C5658CC4;
}

uint64_t WatchPrimaryHeaderButtonViewModel.style.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v1 + 73);
  return result;
}

uint64_t sub_1C5658D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a2 = *(v3 + 73);
  return result;
}

void WatchPrimaryHeaderButtonViewModel.style.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 == *(v1 + 73))
  {
    *(v1 + 73) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();
  }
}

uint64_t (*WatchPrimaryHeaderButtonViewModel.style.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C56590E4;
}

void sub_1C56590F0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_1C584EF50();

  free(v3);
}

uint64_t sub_1C5659174(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  sub_1C56591DC(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1C56591DC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = [objc_opt_self() directionsTitleString];
  v11 = sub_1C584F660();
  v13 = v12;

  *(v5 + 16) = v11;
  *(v5 + 24) = v13;
  *(v5 + 32) = 2;
  *(v5 + 73) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  sub_1C584EF70();
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v14 = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_calendar;
  v15 = sub_1C584ED50();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a3, v15);
  *(v5 + 72) = 1;
  *(v5 + OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_etaProvider) = a4;
  v21 = a1;
  v17 = a2;
  v18 = a4;
  *(v5 + 56) = sub_1C570ED08();
  *(v5 + 64) = v19;
  [v17 isAuthorizedForPreciseLocation];
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF30();

  WatchPrimaryHeaderButtonViewModel.axIdentifier.setter(0xD00000000000001BLL, 0x80000001C5892540);
  swift_allocObject();
  swift_weakInit();
  sub_1C584EF20();

  (*(v16 + 8))(a3, v15);

  return v5;
}

double sub_1C56594F0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = WatchPlaceETAProvider.etaTravelTime.getter();
    sub_1C5659560(v2, v3 & 1);
  }

  return result;
}

uint64_t sub_1C5659560(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = *&result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
    sub_1C584EF30();

    v6 = sub_1C570ED08();
    WatchPrimaryHeaderButtonViewModel.symbolName.setter(v6, v7);
    if (v3 == 0.0)
    {
      if (qword_1EC17C140 == -1)
      {
LABEL_12:
        v14 = sub_1C584F2C0();
        __swift_project_value_buffer(v14, qword_1EC17C148);
        v15 = sub_1C584F2A0();
        v16 = sub_1C584F9A0();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1C5620000, v15, v16, "Did not receive an eta update", v17, 2u);
          MEMORY[0x1C694B7A0](v17, -1, -1);
        }

        v13 = [objc_opt_self() directionsTitleString];
        goto LABEL_15;
      }

LABEL_20:
      swift_once();
      goto LABEL_12;
    }

    if (qword_1EC17C140 != -1)
    {
      swift_once();
    }

    v8 = sub_1C584F2C0();
    __swift_project_value_buffer(v8, qword_1EC17C148);
    v9 = sub_1C584F2A0();
    v10 = sub_1C584F9A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v2;
      _os_log_impl(&dword_1C5620000, v9, v10, "Receiving eta update with %f", v11, 0xCu);
      MEMORY[0x1C694B7A0](v11, -1, -1);
    }

    v12 = objc_opt_self();
    if ((~v2 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        if (v3 < 9.22337204e18)
        {
          v13 = [v12 etaStringFromSeconds:v3 isRenderingInFullWidth:0];
LABEL_15:
          v18 = v13;
          v19 = sub_1C584F660();
          v21 = v20;

          WatchPrimaryHeaderButtonViewModel.titleText.setter(v19, v21);
          sub_1C584FC50();

          v22 = objc_opt_self();
          v23 = [v22 axIDStringForTransportType_];
          v24 = sub_1C584F660();
          v26 = v25;

          MEMORY[0x1C6949D90](v24, v26);

          return WatchPrimaryHeaderButtonViewModel.axIdentifier.setter(0xD00000000000001FLL, 0x80000001C5892560);
        }

        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

double sub_1C5659950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = sub_1C584F8A0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1C584F880();

  v7 = sub_1C584F870();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1C5659C04(0, 0, v5, &unk_1C5869600, v8);

  return result;
}

uint64_t sub_1C5659A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1C584F880();
  *(v4 + 48) = sub_1C584F870();
  v6 = sub_1C584F830();

  return MEMORY[0x1EEE6DFA0](sub_1C5659B0C, v6, v5);
}

uint64_t sub_1C5659B0C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_allocObject();
    swift_weakInit();
    sub_1C584EF20();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5659C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1C565C68C(a3, v26 - v11);
  v13 = sub_1C584F8A0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C565C6FC(v12);
  }

  else
  {
    sub_1C584F890();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C584F830();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C584F6B0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1C565C6FC(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C565C6FC(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t WatchPrimaryHeaderButtonViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel_calendar;
  v2 = sub_1C584ED50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC6MapsUI33WatchPrimaryHeaderButtonViewModel___observationRegistrar;
  v4 = sub_1C584EF80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WatchPrimaryHeaderButtonViewModel.__deallocating_deinit()
{
  WatchPrimaryHeaderButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5659FF4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1C565A0B8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  v2 = *(v1 + 56);

  return v2;
}

id sub_1C565A17C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C570E684();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1C565A1B8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_1C565A26C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v3 + 32);
  return result;
}

uint64_t sub_1C565A328@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFD8, type metadata accessor for WatchPrimaryHeaderButtonViewModel, &protocol conformance descriptor for WatchPrimaryHeaderButtonViewModel);
  sub_1C584EF40();

  result = swift_beginAccess();
  *a1 = *(v3 + 73);
  return result;
}

uint64_t WatchPlaceNavAndPhoneViewModel.Config.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C584ED50();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t WatchPlaceNavAndPhoneViewModel.primaryButtonViewModel.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel, &protocol conformance descriptor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();
}

uint64_t sub_1C565A518@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel, &protocol conformance descriptor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();

  *a2 = *(v3 + 16);
}

uint64_t WatchPlaceNavAndPhoneViewModel.secondaryButtonViewModel.getter()
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel, &protocol conformance descriptor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();
}

uint64_t sub_1C565A688@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel, &protocol conformance descriptor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF40();

  *a2 = *(v3 + 24);
}

double sub_1C565A754(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel, &protocol conformance descriptor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF30();

  return result;
}

void *WatchPlaceNavAndPhoneViewModel.__allocating_init(placeItem:availability:locationManager:config:etaProvider:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  sub_1C584EF70();
  v10[4] = a1;
  v10[5] = a3;
  sub_1C565B660(a4, v10 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  *(v10 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_availability) = a2;
  swift_unknownObjectRetain();
  v12 = a3;
  v13 = a2;
  sub_1C565B6E4(a1, v12, a4, v13, a5);
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel, &protocol conformance descriptor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF40();

  if (v10[2])
  {
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
  }

  else
  {
    swift_getKeyPath();
    sub_1C584EF40();
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
    if (!v10[3])
    {

      return 0;
    }
  }

  return v10;
}

void *WatchPlaceNavAndPhoneViewModel.init(placeItem:availability:locationManager:config:etaProvider:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v6[2] = 0;
  v6[3] = 0;
  sub_1C584EF70();
  v6[4] = a1;
  v6[5] = a3;
  sub_1C565B660(a4, v6 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  *(v6 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_availability) = a2;
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = a2;
  sub_1C565B6E4(a1, v13, a4, v14, a5);
  swift_getKeyPath();
  sub_1C565B2C4(&qword_1EC16DFE0, type metadata accessor for WatchPlaceNavAndPhoneViewModel, &protocol conformance descriptor for WatchPlaceNavAndPhoneViewModel);
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF30();

  swift_getKeyPath();
  sub_1C584EF40();

  if (v6[2])
  {
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
  }

  else
  {
    swift_getKeyPath();
    sub_1C584EF40();
    swift_unknownObjectRelease();

    sub_1C565BA80(a4);
    if (!v6[3])
    {

      return 0;
    }
  }

  return v6;
}

uint64_t WatchPlaceNavAndPhoneViewModel.deinit()
{

  swift_unknownObjectRelease();

  sub_1C565BA80(v0 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  v1 = OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WatchPlaceNavAndPhoneViewModel.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  sub_1C565BA80(v0 + OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel_config);
  v1 = OBJC_IVAR____TtC6MapsUI30WatchPlaceNavAndPhoneViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C565AED4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17C148);
  __swift_project_value_buffer(v0, qword_1EC17C148);
  type metadata accessor for WatchPlaceNavAndPhoneViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E070, &qword_1C58695E8);
  sub_1C584F680();
  return sub_1C584F2B0();
}

uint64_t sub_1C565AF78(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C565B070;

  return v6(a1);
}

uint64_t sub_1C565B070()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C565B168()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t sub_1C565B1D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C565B21C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

uint64_t sub_1C565B270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 66) = v2;
  return result;
}

uint64_t sub_1C565B2C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C565B344()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t sub_1C565B3AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1C565B400()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

uint64_t sub_1C565B468()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

uint64_t sub_1C565B4D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_1C565B524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 73) = v2;
  return result;
}

double (*sub_1C565B580())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C565C4FC;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C565B660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchPlaceNavAndPhoneViewModel.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C565B6E4(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_1C584ED50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a4 canShowDirections] || (objc_msgSend(a1, sel_options) & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    result = [a1 mapItem];
    if (!result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v16 = result;
    (*(v11 + 16))(v14, a3, v10);
    type metadata accessor for WatchPrimaryHeaderButtonViewModel(0);
    v17 = swift_allocObject();
    sub_1C56591DC(v16, a2, v14, a5);
  }

  if ([a1 options])
  {
    v29 = [objc_opt_self() dropPinAtCurrentLocationTitle];
    v30 = sub_1C584F660();
    v26 = v31;

    type metadata accessor for WatchSecondaryHeaderButtonViewModel(0);
    v27 = swift_allocObject();
    *(v27 + 65) = 257;
    sub_1C584EF70();
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 2;
    *(v27 + 16) = v30;
    v32 = 0xE600000000000000;
    v33 = 0x6E697070616DLL;
LABEL_14:
    *(v27 + 24) = v26;
    *(v27 + 32) = v33;
    *(v27 + 40) = v32;
    return v17;
  }

  if (([a1 options] & 2) != 0)
  {
    v34 = [objc_opt_self() removeDroppedPinTitle];
    v35 = sub_1C584F660();
    v26 = v36;

    type metadata accessor for WatchSecondaryHeaderButtonViewModel(0);
    v27 = swift_allocObject();
    *(v27 + 65) = 257;
    sub_1C584EF70();
    *(v27 + 48) = xmmword_1C5868F20;
    *(v27 + 64) = 2;
    *(v27 + 16) = v35;
    v28 = 0x2E6873617274;
LABEL_13:
    v33 = v28 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
    v32 = 0xEA00000000006C6CLL;
    goto LABEL_14;
  }

  result = [a1 mapItem];
  if (result)
  {
    v18 = result;
    v19 = [result phoneNumber];

    if (!v19)
    {
      return v17;
    }

    v20 = sub_1C584F660();
    v22 = v21;

    v23 = [objc_opt_self() phoneCallToActionTitle];
    v24 = sub_1C584F660();
    v26 = v25;

    type metadata accessor for WatchSecondaryHeaderButtonViewModel(0);
    v27 = swift_allocObject();
    *(v27 + 65) = 257;
    sub_1C584EF70();
    *(v27 + 48) = v20;
    *(v27 + 56) = v22;
    *(v27 + 64) = 1;
    *(v27 + 16) = v24;
    v28 = 0x2E656E6F6870;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C565BA80(uint64_t a1)
{
  v2 = type metadata accessor for WatchPlaceNavAndPhoneViewModel.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C565BAE0()
{
  result = qword_1EC16DFE8;
  if (!qword_1EC16DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DFE8);
  }

  return result;
}

unint64_t sub_1C565BB38()
{
  result = qword_1EC16DFF0;
  if (!qword_1EC16DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DFF0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C565BBC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C565BC10(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RollingLabelsView.RollDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RollingLabelsView.RollDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoadingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C565BF44(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C565BF60(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1C565C01C(uint64_t a1)
{
  result = sub_1C584EF80();
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

uint64_t sub_1C565C100(uint64_t a1)
{
  result = sub_1C584ED50();
  if (v2 <= 0x3F)
  {
    result = sub_1C584EF80();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C565C224(uint64_t a1)
{
  result = sub_1C584ED50();
  if (v2 <= 0x3F)
  {
    result = sub_1C584EF80();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C565C364(uint64_t a1)
{
  result = sub_1C584ED50();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for MKDirectionsTransportType()
{
  if (!qword_1EC16E060)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC16E060);
    }
  }
}

void sub_1C565C420()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void sub_1C565C45C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
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

uint64_t sub_1C565C504()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C565C598;

  return sub_1C5659A74(v3, v4, v5, v2);
}

uint64_t sub_1C565C598()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C565C68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C565C6FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C565C764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C565C934;

  return sub_1C565AF78(a1, v4);
}

uint64_t sub_1C565C81C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C565C598;

  return sub_1C565AF78(a1, v4);
}

uint64_t sub_1C565C99C()
{
  v0 = sub_1C584F350();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C584F390();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v23[-1] - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v23[-1] - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  sub_1C584F370();
  sub_1C584F340();
  v20 = *(v6 + 8);
  v20(v10, v5);
  sub_1C584F380();
  v20(v14, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69DC358], v0);
  sub_1C584F360();
  (*(v1 + 8))(v4, v0);
  v20(v18, v5);
  v23[3] = sub_1C584F3A0();
  v23[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_1C584F3B0();
  return sub_1C584FA80();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1C565CC80(void *a1)
{
  v1 = a1;
  sub_1C565C99C();
}

uint64_t sub_1C565CCC8()
{
  v27 = sub_1C584F350();
  v0 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C584F390();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v26 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  sub_1C584F370();
  sub_1C584F330();
  v23 = *(v5 + 8);
  v23(v9, v4);
  sub_1C584F340();
  v23(v13, v4);
  sub_1C584F380();
  v23(v17, v4);
  v24 = v27;
  (*(v0 + 104))(v3, *MEMORY[0x1E69DC358], v27);
  sub_1C584F360();
  (*(v0 + 8))(v3, v24);
  v23(v21, v4);
  v28[3] = sub_1C584F3A0();
  v28[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_1C584F3B0();
  return sub_1C584FA80();
}

void sub_1C565CFA0(void *a1)
{
  v1 = a1;
  sub_1C565CCC8();
}

uint64_t sub_1C565CFE8()
{
  v27 = sub_1C584F350();
  v0 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C584F390();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v26 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  sub_1C584F370();
  sub_1C584F340();
  v23 = *(v5 + 8);
  v23(v9, v4);
  sub_1C584F380();
  v23(v13, v4);
  v24 = v27;
  (*(v0 + 104))(v3, *MEMORY[0x1E69DC358], v27);
  sub_1C584F360();
  (*(v0 + 8))(v3, v24);
  v23(v17, v4);
  sub_1C584F320();
  v23(v21, v4);
  v28[3] = sub_1C584F3A0();
  v28[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_1C584F3B0();
  return sub_1C584FA80();
}

void sub_1C565D2AC(void *a1)
{
  v1 = a1;
  sub_1C565CFE8();
}

void sub_1C565D2F4()
{
  v1 = [objc_allocWithZone(MUDisclosureActionViewModel) init];
  v2 = OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    if ([v4 showImage])
    {
      v5 = [v4 symbolName];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() _mapsui_systemImageNamed_];

        [v1 setImage_];
      }
    }

    v8 = *&v0[v2];
    if (v8)
    {
      v9 = [v8 message];
      if (v9)
      {
        v10 = v9;
        sub_1C584F660();
      }
    }
  }

  v11 = sub_1C584F630();

  [v1 setTitleString_];

  v12 = *&v0[v2];
  if (v12)
  {
    v13 = [v12 symbolColor];
  }

  else
  {
    v13 = 0;
  }

  [v1 setImageTintColor_];

  v14 = *&v0[v2];
  if (v14)
  {
    v15 = [v14 backgroundColor];
  }

  else
  {
    v15 = 0;
  }

  [v0 setBackgroundColor_];

  [v0 setViewModel_];
  v16 = sub_1C584F630();
  [v0 setAccessibilityIdentifier_];
}

void sub_1C565D528(void *a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1C565D2F4();
}

void sub_1C565D590(char a1, char a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_setSelected_animated_, a1 & 1, a2 & 1);
  if ((a1 & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC6MapsUI22TransitIncidentRowView_incidentViewModel;
    swift_beginAccess();
    v6 = *&v2[v5];
    if (v6)
    {
      v7 = [v6 backgroundColor];
    }

    else
    {
      v7 = 0;
    }

    [v2 setBackgroundColor_];
  }
}

id sub_1C565D6A4(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1C565D83C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      v4 = &OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_selectedBackgroundColor;
    }

    else
    {
      v4 = &OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_unselectedBackgroundColor;
    }

    v5 = *&v1[*v4];
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v5;
    aBlock[4] = sub_1C565E328;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_17;
    v8 = _Block_copy(aBlock);
    v9 = v5;
    v10 = v1;

    [v6 animateWithDuration:v8 animations:0.15];

    _Block_release(v8);
    if (v1[v3] == 1)
    {
      [v10 bounds];
      CGRectGetMidX(v14);
      [v10 bounds];
      CGRectGetMidY(v15);
      sub_1C5626E40(0, &qword_1EC16E118, 0x1E69DC9D8);
      sub_1C584FBF0();
      v11 = sub_1C584FA60();
      [v11 setPreferredArrowDirection_];
      v12 = *&v10[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction];
      if (v12)
      {
        [v12 presentEditMenuWithConfiguration_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1C565DA70(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_selectedBackgroundColor;
  v12 = objc_opt_self();
  *&v4[v11] = [v12 rowSelectedColor];
  v13 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_unselectedBackgroundColor;
  *&v4[v13] = [v12 rowUnselectedColor];
  *&v4[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction] = 0;
  v4[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected] = 0;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1C565DB80();

  return v14;
}

void sub_1C565DB80()
{
  [v0 setBackgroundColor_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction];
  *&v0[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction] = v1;
  v3 = v1;

  if (v3)
  {
    [v0 addInteraction_];

    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v0 action:sel_didLongPress_];
    [v0 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1C565DC98(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_selectedBackgroundColor;
  v6 = objc_opt_self();
  *&v1[v5] = [v6 rowSelectedColor];
  v7 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_unselectedBackgroundColor;
  *&v1[v7] = [v6 rowUnselectedColor];
  *&v1[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_editMenuInteraction] = 0;
  v1[OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1C565DB80();
  }

  return v9;
}

void sub_1C565DE94(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 0;
  sub_1C565D83C(v3);
}

uint64_t sub_1C565E04C()
{
  v1 = (v0 + OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_text);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *v1;
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
    v5 = objc_opt_self();

    v6 = [v5 placeCardTextSelectionActionText];
    sub_1C584F660();

    v7 = sub_1C584F630();
    v8 = [objc_opt_self() systemImageNamed_];

    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
    v10 = sub_1C584FAD0();
    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C5867970;
    *(v11 + 32) = v10;
    return sub_1C584FA70();
  }

  else
  {
LABEL_6:
    v13 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
    swift_beginAccess();
    v14 = *(v0 + v13);
    *(v0 + v13) = 0;
    sub_1C565D83C(v14);
    return 0;
  }
}

void sub_1C565E2A0()
{
  v1 = [objc_opt_self() generalPasteboard];
  v0 = sub_1C584F630();
  [v1 setString_];
}

__n128 PlaceRibbonItemBuilder.init(configuration:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

char *PlaceRibbonItemBuilder.createRibbonItems()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_1C565E50C(v2);
  if (v5)
  {
    *&v21 = v2;
    *(&v21 + 1) = v1;
    *&v22 = v4;
    *(&v22 + 1) = v3;
    v6 = sub_1C565F98C(v5, v2, v4, v1);

    v7 = v6[2];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  *&v21 = v2;
  *(&v21 + 1) = v1;
  *&v22 = v4;
  *(&v22 + 1) = v3;
  sub_1C5660288(v2, v1, v4);
  v6 = v19;
  v7 = v19[2];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = (v6 + 4);
  v9 = v7 - 1;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C5633310(v8, v24);
    v11 = v25;
    v12 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v12 + 8))(&v21, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1C565F148(0, *(v10 + 2) + 1, 1, v10);
    }

    v14 = *(v10 + 2);
    v13 = *(v10 + 3);
    if (v14 >= v13 >> 1)
    {
      v10 = sub_1C565F148((v13 > 1), v14 + 1, 1, v10);
    }

    *(v10 + 2) = v14 + 1;
    v15 = &v10[64 * v14];
    v16 = v21;
    v17 = v22;
    v18 = v23[0];
    *(v15 + 73) = *(v23 + 9);
    *(v15 + 3) = v17;
    *(v15 + 4) = v18;
    *(v15 + 2) = v16;
    if (!v9)
    {
      break;
    }

    --v9;
    v8 += 40;
  }

  return v10;
}

id sub_1C565E50C(void *a1)
{
  result = [a1 _placecardLayout];
  if (result)
  {
    v2 = result;
    v3 = [result modules];

    if (v3)
    {
      sub_1C5626E40(0, &qword_1EC16E120, 0x1E69A2248);
      v4 = sub_1C584F770();

      if (v4 >> 62)
      {
LABEL_21:
        v5 = sub_1C584FB90();
        if (v5)
        {
LABEL_5:
          v6 = 0;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1C694A320](v6, v4);
            }

            else
            {
              if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v7 = *(v4 + 8 * v6 + 32);
            }

            v8 = v7;
            v9 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            if ([v7 type] == 35)
            {
              break;
            }

            ++v6;
            if (v9 == v5)
            {
              goto LABEL_22;
            }
          }

          v10 = [v8 configuration];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 placeRibbonConfig];

            if (v12)
            {
              v13 = [v12 ribbonItems];

              if (v13)
              {
                sub_1C5626E40(0, &qword_1EC16E128, 0x1E69A2388);
                v14 = sub_1C584F770();

                return v14;
              }
            }
          }

          return 0;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
          goto LABEL_5;
        }
      }

LABEL_22:
    }

    return 0;
  }

  return result;
}

void *sub_1C565E704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = sub_1C584ECE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  sub_1C584EC80();
  v12 = sub_1C584EC10();
  (*(v7 + 8))(v10, v6);
  v13 = [v11 priceRangeForMapItem:a1 locale:v12];

  if (v13)
  {
    v14 = sub_1C584F660();
    v16 = v15;

    if (sub_1C584F6D0())
    {
      type metadata accessor for WatchPlaceRibbonItemViewModel(0);
      v17 = [objc_opt_self() priceRangeRibbonTitle];
      v18 = sub_1C584F660();
      v20 = v19;

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      return WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(v18, v20, 0, 0, 0, v14, v16, v5, 0x6E61526563697250, 0xEA00000000006567);
    }
  }

  return 0;
}

__n128 sub_1C565E970@<Q0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = *v2;
  if (!MapsFeature_IsEnabled_ApplePayEnhancementsEnabled())
  {
    goto LABEL_54;
  }

  v7 = [v5 _amenities];
  if (!v7)
  {
    goto LABEL_54;
  }

  v8 = v7;
  sub_1C5626E40(0, &qword_1EC16E140, 0x1E69A1B50);
  v9 = sub_1C584F770();

  v10 = [a1 contactlessPaymentsItem];
  if (!v10)
  {
    goto LABEL_53;
  }

  v11 = v10;
  v12 = [v10 indexesWithinAmenityComponent];
  if (!v12)
  {

LABEL_54:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v13 = v12;
  sub_1C5626E40(0, &qword_1EC16E148, 0x1E696AD98);
  v14 = sub_1C584F770();

  v50 = v14;
  if (v14 >> 62)
  {
    goto LABEL_29;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_52;
  }

  v45 = a2;
  v46 = v11;
  v64 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v16 = 0;
    v11 = (v14 & 0xC000000000000001);
    v17 = v9;
    v9 &= 0xFFFFFFFFFFFFFF8uLL;
    v48 = v17 + 32;
    v49 = v17 & 0xC000000000000001;
    v18 = MEMORY[0x1E69E7CC0];
    a2 = &selRef_hasAmenityType_;
    v47 = v17;
    v19 = v17 >> 62;
    while (1)
    {
      if (v11)
      {
        v20 = MEMORY[0x1C694A320](v16, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v16 + 32);
      }

      v21 = v20;
      v22 = [v20 integerValue];
      if (v22 < 0)
      {
        goto LABEL_9;
      }

      if (v19)
      {
        break;
      }

      if (v22 < *(v9 + 16))
      {
        goto LABEL_17;
      }

LABEL_9:

LABEL_10:
      if (v15 == ++v16)
      {
        goto LABEL_33;
      }
    }

    v24 = v22;
    v25 = sub_1C584FB90();
    v22 = v24;
    if (v24 >= v25)
    {
      goto LABEL_9;
    }

LABEL_17:
    if (v49)
    {
      MEMORY[0x1C694A320]();
      goto LABEL_20;
    }

    if (v22 < *(v9 + 16))
    {
      v23 = *(v48 + 8 * v22);
LABEL_20:
      MEMORY[0x1C6949DF0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();

      v18 = v64;
      v14 = v50;
      goto LABEL_10;
    }

    __break(1u);
LABEL_29:
    if (sub_1C584FB90() <= 0)
    {
LABEL_52:

LABEL_53:

      goto LABEL_54;
    }

    v46 = v11;
    v47 = v9;
    v45 = a2;
    v18 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v26 = sub_1C584FB90();
    if (v26)
    {
      v15 = v26;
      if (v26 >= 1)
      {
        goto LABEL_62;
      }

      __break(1u);
    }

LABEL_33:
    if (v18 >> 62)
    {
LABEL_57:
      v27 = sub_1C584FB90();
      v15 = v60;
      if (v27)
      {
        goto LABEL_35;
      }

      goto LABEL_58;
    }

    v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v60;
    if (!v27)
    {
LABEL_58:
      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }

LABEL_35:
    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = v29;
      v31 = v28;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1C694A320](v31, v18);
          v28 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v31 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v32 = *(v18 + 8 * v31 + 32);
          v28 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }
        }

        WatchPlaceDataAmenityItemViewModel.init(amenityItem:)(v32, v60);
        if (*&v60[8])
        {
          break;
        }

        v57 = v61;
        v58 = v62;
        v59 = v63;
        v55 = *v60;
        v56 = *&v60[16];
        sub_1C5625230(&v55, &qword_1EC16E150, &qword_1C5869670);
        ++v31;
        if (v28 == v27)
        {
          v29 = v30;
          goto LABEL_59;
        }
      }

      v57 = v61;
      v58 = v62;
      v59 = v63;
      v55 = *v60;
      v56 = *&v60[16];
      v33 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1C565F254(0, *(v30 + 16) + 1, 1, v30);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      v36 = v33;
      if (v35 >= v34 >> 1)
      {
        v36 = sub_1C565F254((v34 > 1), v35 + 1, 1, v33);
      }

      v53 = v58;
      v54 = v59;
      v51 = v56;
      v52 = v57;
      v37 = v55;
      *(v36 + 2) = v35 + 1;
      v29 = v36;
      v38 = &v36[80 * v35];
      *(v38 + 2) = v37;
      *(v38 + 5) = v53;
      *(v38 + 6) = v54;
      *(v38 + 3) = v51;
      *(v38 + 4) = v52;
    }

    while (v28 != v27);
LABEL_59:
    v39 = [v46 ribbonText];
    if (!v39)
    {
      __break(1u);
LABEL_62:
      v9 = v47;
      v14 = v50;
      continue;
    }

    break;
  }

  v40 = v39;

  v41 = sub_1C584F660();
  v43 = v42;

  v44 = sub_1C565EEB0(v29);

  WatchPlaceAcceptsPaymentsViewModel.init(title:amenityItemViewModels:)(v41, v43, v44, v60);

  *v45 = *v60;
  result = *&v60[8];
  *(v45 + 1) = *&v60[8];
  return result;
}

uint64_t sub_1C565EEB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C565F374(0, v1, 0);
    v2 = v21;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v18 = v4[2];
      v19 = v5;
      v20 = v4[4];
      v6 = v4[1];
      v16 = *v4;
      v17 = v6;
      sub_1C5660844(&v16, &v13);
      v21 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C565F374((v7 > 1), v8 + 1, 1);
        v2 = v21;
      }

      v14 = &type metadata for WatchPlaceDataAmenityItemViewModel;
      v15 = &protocol witness table for WatchPlaceDataAmenityItemViewModel;
      v9 = swift_allocObject();
      *&v13 = v9;
      v10 = v19;
      v9[3] = v18;
      v9[4] = v10;
      v9[5] = v20;
      v11 = v17;
      v9[1] = v16;
      v9[2] = v11;
      *(v2 + 16) = v8 + 1;
      sub_1C5632F90(&v13, v2 + 40 * v8 + 32);
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PlaceRibbonItemBuilder.Configuration.init(mapItem:availability:locationManager:etaProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void *sub_1C565F000(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E178, &qword_1C5869730);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E180, &qword_1C5869738);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C565F148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E188, &unk_1C5869740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C565F254(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E168, &qword_1C5869720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C565F374(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C565F394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C565F394(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E158, &qword_1C5869710);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E160, &qword_1C5869718);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C565F4DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C5632F90(&v12, v10 + 40 * a1 + 32);
}

void *sub_1C565F574(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v37 - v6;
  if (![a1 isAuthorizedForPreciseLocation] || !objc_msgSend(a1, sel_hasLocation))
  {
    return 0;
  }

  result = [a1 currentLocation];
  if (!result)
  {
    return result;
  }

  v9 = result;
  result = [result latLng];
  if (!result)
  {
    goto LABEL_29;
  }

  v10 = result;
  [result lat];
  v12 = v11;

  result = [v9 latLng];
  if (!result)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v13 = result;
  [result lng];
  v15 = v14;

  v16 = CLLocationCoordinate2DMake(v12, v15);
  if (!a2)
  {
LABEL_14:

    return 0;
  }

  v17 = a2;
  [v17 _coordinate];
  if (fabs(v19) > 180.0 || fabs(v18) > 90.0 || fabs(v16.longitude) > 180.0 || fabs(v16.latitude) > 90.0)
  {

    goto LABEL_14;
  }

  [v17 _coordinate];
  v21 = v20;
  [v17 _coordinate];
  v23 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v21 longitude:v22];
  v24 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v16.latitude longitude:v16.longitude];
  [v23 distanceFromLocation_];
  if (v25 == 0.0)
  {

    return 0;
  }

  v26 = v25;
  result = objc_opt_self();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v26 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v26 >= 4294967300.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = [result _mapkit_localizedDistanceStringWithMeters_abbreviated_];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1C584F660();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [objc_opt_self() placeCardDistanceFactoidTitle];
  v38 = sub_1C584F660();
  v34 = v33;

  if (!v31)
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  type metadata accessor for WatchPlaceRibbonItemViewModel(0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  v36 = WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(v38, v34, 0xD000000000000037, 0x80000001C5892870, 0, v29, v31, v7, 0x65636E6174736944, 0xE800000000000000);

  return v36;
}

void *sub_1C565F98C(unint64_t a1, void *a2, void *a3, void *a4)
{
  v79 = a4;
  v74 = a3;
  v81 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E130, &qword_1C5869660);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = &v67 - v8;
  v73 = sub_1C584ECE0();
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v10);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[1];
  v78 = *v4;
  v77 = v12;
  v13 = v4[3];
  v76 = v4[2];
  v75 = v13;
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v15 = 0;
    v16 = a1 & 0xC000000000000001;
    v71 = v9 + 1;
    v82 = MEMORY[0x1E69E7CC0];
    v17 = &selRef_shouldBlurChromeHeaderButtons;
    v80 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v16)
      {
        v18 = MEMORY[0x1C694A320](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v18 = *(a1 + 8 * v15 + 32);
      }

      v9 = v18;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v20 = [v18 v17[320]];
      if (v20 > 5)
      {
        if (v20 <= 8)
        {
          if (v20 == 6)
          {
            v42 = [v9 factoidItem];
            if (v42)
            {
              v43 = v42;
              v44 = [v81 _encyclopedicInfo];
              if (v44)
              {
                v45 = [v44 factoidAtIndex_];
                swift_unknownObjectRelease();
                if (v45)
                {
                  swift_getObjectType();
                  v46 = GEOFactoid.makeRibbonViewModel()();
                  *(&v90 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel(0);
                  v91 = &protocol witness table for WatchPlaceRibbonItemViewModel;
                  *&v89 = v46;
                  swift_unknownObjectRelease();

                  goto LABEL_37;
                }
              }
            }

            v16 = v80;
          }

          else
          {
            if (v20 != 7)
            {
              *&v83 = v78;
              *(&v83 + 1) = v77;
              *&v84 = v76;
              *(&v84 + 1) = v75;
              v25 = sub_1C565F574(v74, v81);
              if (v25)
              {
                v26 = v25;
                *(&v90 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel(0);
                v91 = &protocol witness table for WatchPlaceRibbonItemViewModel;
                *&v89 = v26;
                goto LABEL_37;
              }
            }

LABEL_4:
          }

LABEL_5:
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          goto LABEL_6;
        }

        switch(v20)
        {
          case 9:
            goto LABEL_4;
          case 10:
            if (!MapsFeature_IsEnabled_ExpertPartners())
            {
              goto LABEL_4;
            }

            sub_1C5653614(v81, &v83);
            v52 = *(&v83 + 1);
            if (!*(&v83 + 1))
            {
              goto LABEL_4;
            }

            v53 = v86;
            v54 = v83;
            *(&v90 + 1) = &type metadata for WatchPlaceAccoladesViewModel;
            v91 = &protocol witness table for WatchPlaceAccoladesViewModel;
            v55 = swift_allocObject();
            *&v89 = v55;
            *(v55 + 16) = v54;
            *(v55 + 24) = v52;
            v17 = &selRef_shouldBlurChromeHeaderButtons;
            v56 = v85;
            *(v55 + 32) = v84;
            *(v55 + 48) = v56;
            *(v55 + 64) = v53;
            break;
          case 11:
            *&v83 = v78;
            *(&v83 + 1) = v77;
            *&v84 = v76;
            *(&v84 + 1) = v75;
            sub_1C565E970(v9, &v87);
            if (!*(&v87 + 1))
            {
              goto LABEL_4;
            }

            v91 = &protocol witness table for WatchPlaceAcceptsPaymentsViewModel;
            v89 = v87;
            *&v90 = v88;
            *(&v90 + 1) = &type metadata for WatchPlaceAcceptsPaymentsViewModel;
            break;
          default:
            goto LABEL_4;
        }
      }

      else
      {
        if (v20 > 2)
        {
          if (v20 != 4)
          {
            goto LABEL_4;
          }

          v27 = objc_opt_self();
          v28 = v72;
          sub_1C584EC80();
          v29 = sub_1C584EC10();
          (*v71)(v28, v73);
          v30 = [v27 priceRangeForMapItem:v81 locale:v29];

          if (v30)
          {
            v31 = sub_1C584F660();
            v33 = v32;

            if (sub_1C584F6D0())
            {
              *&v69 = type metadata accessor for WatchPlaceRibbonItemViewModel(0);
              v34 = [objc_opt_self() priceRangeRibbonTitle];
              v68 = sub_1C584F660();
              v36 = v35;

              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E138, &qword_1C5869668);
              v38 = v70;
              (*(*(v37 - 8) + 56))(v70, 1, 1, v37);
              v39 = v33;
              v40 = v69;
              v41 = WatchPlaceRibbonItemViewModel.__allocating_init(title:symbol:symbolColor:initialText:textPublisher:axIDPrefix:)(v68, v36, 0, 0, 0, v31, v39, v38, 0x6E61526563697250, 0xEA00000000006567);
              *(&v90 + 1) = v40;
              v91 = &protocol witness table for WatchPlaceRibbonItemViewModel;
              *&v89 = v41;
              goto LABEL_37;
            }

            v16 = v80;
          }

          v17 = &selRef_shouldBlurChromeHeaderButtons;
          goto LABEL_5;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        if (v20 != 1)
        {
          if (v20 == 2)
          {
            static WatchPlaceRatingRowViewModel.overallRatingViewModel(for:mapItem:)(v79, v81, &v83);
            v21 = BYTE8(v84);
            if (BYTE8(v84) != 255)
            {
              v22 = v85;
              v23 = v84;
              v69 = v83;
              *(&v90 + 1) = &type metadata for WatchPlaceRatingRowViewModel;
              v91 = &protocol witness table for WatchPlaceRatingRowViewModel;
              v24 = swift_allocObject();
              *&v89 = v24;
              *(v24 + 16) = v69;
              *(v24 + 32) = v23;
              *(v24 + 40) = v21 & 1;
              *(v24 + 48) = v22;
LABEL_37:

LABEL_45:
              sub_1C5632F90(&v89, &v83);
              v57 = v82;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v92 = v57;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v57 = sub_1C565F000(0, v57[2] + 1, 1, v57);
                v92 = v57;
              }

              v9 = v57[2];
              v59 = v57[3];
              if (v9 >= v59 >> 1)
              {
                v82 = sub_1C565F000((v59 > 1), v9 + 1, 1, v57);
                v92 = v82;
              }

              else
              {
                v82 = v57;
              }

              v60 = *(&v84 + 1);
              v61 = v85;
              v62 = __swift_mutable_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
              MEMORY[0x1EEE9AC00](v62, v62);
              v64 = &v67 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v65 + 16))(v64);
              sub_1C565F4DC(v9, v64, &v92, v60, v61);
              __swift_destroy_boxed_opaque_existential_1(&v83);
              v16 = v80;
              v17 = &selRef_shouldBlurChromeHeaderButtons;
              goto LABEL_7;
            }
          }

          goto LABEL_4;
        }

        if (![v79 supportsHours])
        {
          goto LABEL_4;
        }

        WatchPlaceHoursViewModel.init(mapItem:)(v81, &v83);
        v47 = *(&v83 + 1);
        if (!*(&v83 + 1))
        {
          goto LABEL_4;
        }

        LODWORD(v69) = v85;
        v48 = *(&v84 + 1);
        v49 = v84;
        v50 = v83;
        *(&v90 + 1) = &type metadata for WatchPlaceHoursViewModel;
        v91 = &protocol witness table for WatchPlaceHoursViewModel;
        v51 = swift_allocObject();
        *&v89 = v51;
        *(v51 + 16) = v50;
        *(v51 + 24) = v47;
        *(v51 + 32) = v49;
        *(v51 + 40) = v48;
        v16 = v80;
        v17 = &selRef_shouldBlurChromeHeaderButtons;
        *(v51 + 48) = v69;
      }

      if (*(&v90 + 1))
      {
        goto LABEL_45;
      }

LABEL_6:
      sub_1C5625230(&v89, &qword_1EC16E170, &qword_1C5869728);
LABEL_7:
      ++v15;
      if (v19 == i)
      {
        return v82;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1C5660288(void *a1, id a2, void *a3)
{
  v40 = v3[1];
  v41 = *v3;
  if ([a2 supportsHours] && (WatchPlaceHoursViewModel.init(mapItem:)(a1, &v42), (v7 = *(&v42 + 1)) != 0))
  {
    v39 = a3;
    v8 = v42;
    v9 = v43;
    v10 = v44;
    v11 = sub_1C565F000(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1C565F000((v12 > 1), v13 + 1, 1, v11);
    }

    *(&v43 + 1) = &type metadata for WatchPlaceHoursViewModel;
    v44 = &protocol witness table for WatchPlaceHoursViewModel;
    v14 = swift_allocObject();
    *&v42 = v14;
    *(v14 + 16) = v8;
    *(v14 + 24) = v7;
    *(v14 + 32) = v9;
    *(v14 + 48) = v10;
    v11[2] = v13 + 1;
    sub_1C5632F90(&v42, &v11[5 * v13 + 4]);
    a3 = v39;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  static WatchPlaceRatingRowViewModel.overallRatingViewModel(for:mapItem:)(a2, a1, &v42);
  v15 = BYTE8(v43);
  if (BYTE8(v43) != 255)
  {
    v16 = v42;
    v17 = v43;
    v18 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
    }

    v20 = v11[2];
    v19 = v11[3];
    if (v20 >= v19 >> 1)
    {
      v11 = sub_1C565F000((v19 > 1), v20 + 1, 1, v11);
    }

    *(&v43 + 1) = &type metadata for WatchPlaceRatingRowViewModel;
    v44 = &protocol witness table for WatchPlaceRatingRowViewModel;
    v21 = swift_allocObject();
    *&v42 = v21;
    *(v21 + 16) = v16;
    *(v21 + 32) = v17;
    *(v21 + 40) = v15 & 1;
    *(v21 + 48) = v18;
    v11[2] = v20 + 1;
    sub_1C5632F90(&v42, &v11[5 * v20 + 4]);
  }

  v22 = sub_1C565E704(a1);
  if (v22)
  {
    v23 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
    }

    v25 = v11[2];
    v24 = v11[3];
    if (v25 >= v24 >> 1)
    {
      v11 = sub_1C565F000((v24 > 1), v25 + 1, 1, v11);
    }

    *(&v43 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel(0);
    v44 = &protocol witness table for WatchPlaceRibbonItemViewModel;
    *&v42 = v23;
    v11[2] = v25 + 1;
    sub_1C5632F90(&v42, &v11[5 * v25 + 4]);
  }

  v42 = v41;
  v43 = v40;
  v26 = sub_1C565F574(a3, a1);
  if (v26)
  {
    v27 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
    }

    v29 = v11[2];
    v28 = v11[3];
    if (v29 >= v28 >> 1)
    {
      v11 = sub_1C565F000((v28 > 1), v29 + 1, 1, v11);
    }

    *(&v43 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel(0);
    v44 = &protocol witness table for WatchPlaceRibbonItemViewModel;
    *&v42 = v27;
    v11[2] = v29 + 1;
    sub_1C5632F90(&v42, &v11[5 * v29 + 4]);
  }

  v30 = [a1 _encyclopedicInfo];
  if (v30)
  {
    v31 = [v30 factoids];
    if (!v31)
    {
      swift_unknownObjectRelease();
      return;
    }

    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E1F0, &unk_1C5869750);
    v33 = sub_1C584F770();

    if (v33 >> 62)
    {
      v34 = sub_1C584FB90();
      if (v34)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
LABEL_29:
        if (v34 < 1)
        {
          __break(1u);
          return;
        }

        v35 = 0;
        do
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C694A320](v35, v33);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          swift_getObjectType();
          v36 = GEOFactoid.makeRibbonViewModel()();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1C565F000(0, v11[2] + 1, 1, v11);
          }

          v38 = v11[2];
          v37 = v11[3];
          if (v38 >= v37 >> 1)
          {
            v11 = sub_1C565F000((v37 > 1), v38 + 1, 1, v11);
          }

          ++v35;
          swift_unknownObjectRelease();
          *(&v43 + 1) = type metadata accessor for WatchPlaceRibbonItemViewModel(0);
          v44 = &protocol witness table for WatchPlaceRibbonItemViewModel;
          *&v42 = v36;
          v11[2] = v38 + 1;
          sub_1C5632F90(&v42, &v11[5 * v38 + 4]);
        }

        while (v34 != v35);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C56607A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C56607F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}