uint64_t sub_24F2BF82C(void *a1, uint64_t a2)
{
  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  if (sub_24F92C408())
  {
    if (a2 == 2)
    {
      v4 = "com.apple.spotlightui";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x72656469766F7270;
      v6 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      v7 = [a1 localizedName];
      goto LABEL_7;
    }

    if (a2 == 1)
    {
      v4 = "CALL_PROVIDER_VIDEO";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x72656469766F7270;
      v6 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      v7 = [a1 localizedName];
LABEL_7:
      v8 = v7;
      v9 = sub_24F92B0D8();
      v11 = v10;

      *(inited + 48) = v9;
      *(inited + 56) = v11;
      v12 = sub_24E6086DC(inited);
      swift_setDeallocating();
      sub_24E601704(v6, &qword_27F219F90, &qword_24F955020);
      v13._object = (v4 | 0x8000000000000000);
      v13._countAndFlagsBits = 0xD000000000000013;
      countAndFlagsBits = localizedString(_:with:)(v13, v12)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  v16 = [a1 localizedName];
  v17 = sub_24F92B0D8();

  return v17;
}

unint64_t sub_24F2BFA4C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F2CD040(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24F2BFA78@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F2CD020(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24F2BFAA4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F2CD030(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24F2BFAD0()
{
  BYTE8(v3) = 0;
  sub_24F92CA38();
  MEMORY[0x253050C20](32, 0xE100000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](32, 0xE100000000000000);
  *&v3 = *(v0 + 2);
  sub_24F92CA38();
  MEMORY[0x253050C20](2128928, 0xE300000000000000);
  type metadata accessor for Score(0);
  sub_24F91F648();
  sub_24F2D4580(&qword_27F229EE8, MEMORY[0x277CC95B8]);
  v1 = sub_24F92CD88();
  MEMORY[0x253050C20](v1);

  return *(&v3 + 1);
}

void sub_24F2BFC1C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 providerManager];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F941C80;
  *(v6 + 32) = a1;
  v7 = v5;
  v8 = a1;
  if (([v8 supportsAudioOnly] & 1) != 0 || objc_msgSend(v8, sel_supportsAudioAndVideo))
  {
    v9 = v8;
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if ([v8 supportsAudioAndVideo])
  {
    v11 = v8;
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 faceTimeProvider];
  v14 = [v7 telephonyProvider];

  *a2 = v7;
  a2[1] = v10;
  a2[2] = v12;
  a2[3] = v6;
  a2[4] = v13;
  a2[5] = v14;
}

__n128 sub_24F2BFD7C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v16 = *(a2 + 32);
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 providerManager];

  if (([a1 supportsAudioOnly] & 1) != 0 || objc_msgSend(a1, sel_supportsAudioAndVideo))
  {
    v11 = a1;
    v12 = a1;
  }

  else
  {
    v11 = v5;
    v12 = v5;
  }

  v13 = v11;
  if (![a1 supportsAudioAndVideo])
  {

    v14 = v8;
    a1 = v8;
  }

  a3->n128_u64[0] = v10;
  a3->n128_u64[1] = v12;
  a3[1].n128_u64[0] = a1;
  a3[1].n128_u64[1] = v7;
  result = v16;
  a3[2] = v16;
  return result;
}

void *sub_24F2BFEB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x253052270](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 bundleIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = sub_24F92B0D8();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return v9;
        }

        v17 = sub_24F92CE08();

        if (v17)
        {
          return v9;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

void *sub_24F2C0014(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  result = sub_24F2BFEB0(a1, a2);
  if (!result)
  {
    result = sub_24F2BF550(a1, a2);
    if (!result)
    {
      if (v6 >> 62)
      {
        goto LABEL_22;
      }

      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        while (1)
        {
          v9 = 0;
          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          while ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x253052270](v9, v6);
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_18:
              __break(1u);
LABEL_19:

              return v3;
            }

LABEL_9:
            v3 = v10;
            v12 = [v10 localizedName];
            v13 = sub_24F92B0D8();
            v15 = v14;

            if (v13 == a1 && v15 == a2)
            {
              goto LABEL_19;
            }

            v17 = sub_24F92CE08();

            if (v17)
            {
              return v3;
            }

            result = 0;
            ++v9;
            if (v11 == v8)
            {
              return result;
            }
          }

          if (v9 < *(v18 + 16))
          {
            break;
          }

          __break(1u);
LABEL_22:
          v8 = sub_24F92C738();
          if (!v8)
          {
            return 0;
          }
        }

        v10 = *(v6 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      return 0;
    }
  }

  return result;
}

id sub_24F2C01B4()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_27F39E1E0 = result;
  return result;
}

uint64_t sub_24F2C01E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E290, &qword_24F9E0120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  v1 = *MEMORY[0x277CF7D90];
  *(inited + 32) = *MEMORY[0x277CF7D88];
  *(inited + 36) = v1;
  *(inited + 40) = *MEMORY[0x277CF7D78];
  v2 = sub_24F45DB1C(inited);
  result = swift_setDeallocating();
  off_27F23E160 = v2;
  return result;
}

uint64_t sub_24F2C027C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000024FA72850;
  sub_24F92D038();
}

void sub_24F2C0318(uint64_t isUniquelyReferenced_nonNull_native, void (**a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v212 = a8;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E298, &qword_24F9ECA70);
  MEMORY[0x28223BE20](v204);
  v203 = v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v202 = v176 - v21;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB0, &qword_24F93B9F8);
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v209 = (v176 - v22);
  v207 = type metadata accessor for SocialGameCallHistory.CallNode(0);
  v210 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v208 = v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v176 - v28;
  v217 = sub_24F91F648();
  v211 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v206 = v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v205 = v176 - v32;
  MEMORY[0x28223BE20](v33);
  v216 = v176 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = v176 - v36;
  MEMORY[0x28223BE20](v38);
  v214 = v176 - v39;
  MEMORY[0x28223BE20](v40);
  v215 = v176 - v41;
  MEMORY[0x28223BE20](v42);
  v213 = v176 - v43;
  swift_beginAccess();
  v44 = a2[2];
  v45 = __OFADD__(v44, 1);
  v46 = (v44 + 1);
  if (v45)
  {
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
LABEL_124:
    __break(1u);
LABEL_125:
    swift_once();
LABEL_98:
    v153 = sub_24F9220D8();
    __swift_project_value_buffer(v153, qword_27F39E958);

    v154 = sub_24F9220B8();
    v155 = sub_24F92BDB8();

    v156 = os_log_type_enabled(v154, v155);
    v61 = v211;
    if (v156)
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v159 = v12;
      v160 = isUniquelyReferenced_nonNull_native;
      v161 = v158;
      v219 = v158;
      *v157 = 136446210;
      v162 = sub_24E7620D4(v159, a2, &v219);

      *(v157 + 4) = v162;
      _os_log_impl(&dword_24E5DD000, v154, v155, "Missing start focus event for %{public}s", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v161);
      MEMORY[0x2530542D0](v161, -1, -1);
      MEMORY[0x2530542D0](v157, -1, -1);
    }

    else
    {
    }

LABEL_112:
    (*(v61 + 8))(v213, v217);
    return;
  }

  a2[2] = v46;
  v47 = [isUniquelyReferenced_nonNull_native eventBody];
  if (!v47)
  {
    return;
  }

  v48 = v47;
  v49 = [v47 bundleID];
  v50 = v48;
  if (!v49)
  {

    return;
  }

  v51 = v49;
  v199 = v50;
  v12 = sub_24F92B0D8();
  a2 = v52;

  if (sub_24F4D36F8(v12, a2, a3))
  {

LABEL_6:

    return;
  }

  v53 = sub_24F4D36F8(v12, a2, a5);
  isUniquelyReferenced_nonNull_native = v199;
  if (v53)
  {
    swift_beginAccess();
    v54 = *(a6 + 24);
    v55 = v214;
    if (v54)
    {
      v194 = *(a6 + 16);
    }

    else
    {

      v194 = v12;
      v54 = a2;
    }
  }

  else
  {
    if (a7 && (sub_24F4D36F8(v12, a2, a7) & 1) == 0)
    {

      swift_beginAccess();
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      goto LABEL_6;
    }

    swift_beginAccess();
    *(a6 + 16) = v12;
    *(a6 + 24) = a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = v199;

    v194 = v12;
    v54 = a2;
    v55 = v214;
  }

  v56 = [isUniquelyReferenced_nonNull_native absoluteTimestamp];
  if (!v56)
  {

    return;
  }

  v57 = v56;
  sub_24F91F608();

  if ([isUniquelyReferenced_nonNull_native starting])
  {

    v58 = v212;
    swift_beginAccess();
    v59 = v58[2];
    if (*(v59 + 16))
    {
      v60 = sub_24E76D644(v12, a2);
      v61 = v211;
      if (v62)
      {
        (*(v211 + 16))(v29, *(v59 + 56) + *(v211 + 72) * v60, v217);
        v63 = 0;
      }

      else
      {
        v63 = 1;
      }
    }

    else
    {
      v63 = 1;
      v61 = v211;
    }

    v163 = *(v61 + 56);
    v164 = v217;
    v163(v29, v63, 1, v217);
    swift_endAccess();
    v165 = (*(v61 + 48))(v29, 1, v164);
    sub_24E601704(v29, &unk_27F22EC30, &qword_24F939880);
    if (v165 == 1)
    {
      v166 = v213;
      v167 = v217;
      (*(v61 + 16))(v26, v213, v217);
      v163(v26, 0, 1, v167);
      swift_beginAccess();
      sub_24E988988(v26, v12, a2);
      swift_endAccess();

      (*(v61 + 8))(v166, v167);
      return;
    }

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v168 = sub_24F9220D8();
    __swift_project_value_buffer(v168, qword_27F39E958);

    v169 = sub_24F9220B8();
    v170 = sub_24F92BDB8();

    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v219 = v172;
      *v171 = 136446210;
      v173 = sub_24E7620D4(v12, a2, &v219);

      *(v171 + 4) = v173;
      _os_log_impl(&dword_24E5DD000, v169, v170, "Duplicate start focus event for %{public}s", v171, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v172);
      MEMORY[0x2530542D0](v172, -1, -1);
      MEMORY[0x2530542D0](v171, -1, -1);
    }

    else
    {
    }

    goto LABEL_112;
  }

  v64 = v212;
  swift_beginAccess();
  v65 = v64[2];
  if (!*(v65 + 16) || (v66 = sub_24E76D644(v12, a2), (v67 & 1) == 0))
  {

    swift_endAccess();
    if (qword_27F211458 == -1)
    {
      goto LABEL_98;
    }

    goto LABEL_125;
  }

  LODWORD(v197) = v53;
  v188 = a10;
  v187 = a9;
  v68 = *(v65 + 56);
  v69 = v211;
  v70 = v68 + *(v211 + 72) * v66;
  v198 = v12;
  v71 = v211 + 16;
  v72 = *(v211 + 16);
  v73 = v217;
  v72(v215, v70, v217);
  swift_endAccess();
  (*(v69 + 56))(v26, 1, 1, v73);
  swift_beginAccess();
  sub_24E988988(v26, v198, a2);
  swift_endAccess();
  v181 = v71;
  v180 = v72;
  v72(v55, v213, v73);
  v74 = *(v188 + 16);
  v75 = v187;
  swift_beginAccess();
  swift_beginAccess();
  v190 = 0;
  v189 = 0;
  v76 = *(v75 + 16);
  v186 = v74;
  v77 = v207;
  v78 = v208;
  if (v76 < v74)
  {
    v189 = 0;
    v190 = 0;
    v177 = v197 ^ 1;
    v179 = (v211 + 32);
    v12 = (v211 + 8);
    v184 = a12;
    v176[1] = a11;
    v182 = *MEMORY[0x277CF7DA8];
    v193 = v54;
    v185 = (v211 + 8);
    v178 = v37;
    while (1)
    {
      if (v76 < 0)
      {
        goto LABEL_120;
      }

      sub_24F2CC85C(v188 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v76, v78, type metadata accessor for SocialGameCallHistory.CallNode);
      v79 = sub_24F2D4580(&qword_27F2363D0, MEMORY[0x277CC9590]);
      if (sub_24F92AF78() & 1) != 0 || (sub_24F92AF78())
      {
        isUniquelyReferenced_nonNull_native = v77;
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = v77;
      v82 = *(v78 + *(v77 + 24));
      if (v82 >> 62)
      {
        break;
      }

      a2 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2)
      {
        goto LABEL_35;
      }

LABEL_29:
      v77 = isUniquelyReferenced_nonNull_native;
      v80 = sub_24F91F588();
      sub_24F2CC8C4(v78, type metadata accessor for SocialGameCallHistory.CallNode);
      if ((v80 & 1) == 0)
      {

        goto LABEL_115;
      }

      v81 = *(v187 + 16);
      v45 = __OFADD__(v81, 1);
      v76 = v81 + 1;
      isUniquelyReferenced_nonNull_native = v199;
      if (v45)
      {
        goto LABEL_121;
      }

      *(v187 + 16) = v76;
      if (v76 >= v186)
      {
        goto LABEL_113;
      }
    }

    a2 = sub_24F92C738();
    if (!a2)
    {
      goto LABEL_29;
    }

LABEL_35:
    v197 = v79;
    v83 = 0;
    v198 = v82 & 0xC000000000000001;
    v192 = v82 & 0xFFFFFFFFFFFFFF8;
    v191 = v82 + 32;
    v195 = v82;
    v196 = a2;
    while (1)
    {
      if (v198)
      {
        v84 = MEMORY[0x253052270](v83, v82);
      }

      else
      {
        if (v83 >= *(v192 + 16))
        {
          goto LABEL_119;
        }

        v84 = *(v191 + 8 * v83);
      }

      v85 = v84;
      v45 = __OFADD__(v83++, 1);
      if (v45)
      {
        goto LABEL_118;
      }

      v86 = [v84 date];
      if (!v86)
      {

        goto LABEL_37;
      }

      v87 = v86;
      sub_24F91F608();

      v212 = v85;
      [v85 duration];
      v88 = v216;
      sub_24F91F568();
      if (sub_24F92AF78() & 1) != 0 || (sub_24F92AF78())
      {

        v89 = *v12;
        v90 = v217;
        (*v12)(v88, v217);
        v89(v37, v90);
LABEL_47:
        v82 = v195;
        a2 = v196;
        goto LABEL_37;
      }

      v91 = sub_24F92AF78();
      v92 = v212;
      if ((v91 & 1) == 0 && ((sub_24F92AF78() | v177) & 1) == 0)
      {
        v93 = [v92 initiator];
        if (v93)
        {
          v94 = v93;
          v95 = [v92 remoteParticipantHandles];
          if (v95)
          {
            v96 = v95;
            sub_24E69A5C4(0, &qword_27F23E1B0, 0x277CF7D30);
            sub_24ECFF898();
            v97 = sub_24F92BAA8();

            if ((v97 & 0xC000000000000001) != 0)
            {
              v98 = v94;
              v99 = sub_24F92C788();

              if ((v99 & 1) == 0)
              {
                goto LABEL_63;
              }

              isUniquelyReferenced_nonNull_native = v207;
            }

            else
            {
              if (!*(v97 + 16) || (v100 = sub_24F92C3F8(), v101 = -1 << *(v97 + 32), v102 = v100 & ~v101, ((*(v97 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0))
              {
LABEL_62:

                v55 = v214;
                v12 = v185;
LABEL_63:
                swift_beginAccess();
                v92 = v212;
                sub_24ED7ED84(&v218, v212);
                swift_endAccess();

                isUniquelyReferenced_nonNull_native = v207;
                goto LABEL_64;
              }

              v103 = ~v101;
              while (1)
              {
                v104 = *(*(v97 + 48) + 8 * v102);
                v105 = sub_24F92C408();

                if (v105)
                {
                  break;
                }

                v102 = (v102 + 1) & v103;
                if (((*(v97 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
                {
                  goto LABEL_62;
                }
              }

              isUniquelyReferenced_nonNull_native = v207;
              v55 = v214;
              v12 = v185;
            }

            v92 = v212;
          }

          else
          {
          }
        }
      }

LABEL_64:
      v106 = [v92 callStatus];
      if ((v182 & v106) == 0)
      {

        v130 = *v12;
        v131 = v217;
        (*v12)(v216, v217);
        v130(v37, v131);
        v78 = v208;
        goto LABEL_47;
      }

      v107 = v215;
      v108 = v217;
      a2 = v197;
      if (sub_24F92AF88())
      {
        v109 = v107;
      }

      else
      {
        v109 = v37;
      }

      v110 = v205;
      isUniquelyReferenced_nonNull_native = v181;
      v12 = v180;
      v180(v205, v109, v108);
      v111 = v216;
      if (sub_24F92AF78())
      {
        v112 = v55;
      }

      else
      {
        v112 = v111;
      }

      v113 = v206;
      (v12)(v206, v112, v108);
      if ((sub_24F92AF98() & 1) == 0)
      {
        goto LABEL_122;
      }

      v114 = v108;
      a2 = v179;
      v115 = *v179;
      v116 = v202;
      (*v179)(v202, v110, v114);
      v117 = v204;
      v115((v116 + *(v204 + 48)), v113, v114);
      v118 = v203;
      sub_24E60169C(v116, v203, &qword_27F23E298, &qword_24F9ECA70);
      v183 = *(v117 + 48);
      v12 = v209;
      v115(v209, v118, v114);
      v119 = *v185;
      (*v185)(&v183[v118], v114);
      sub_24E6009C8(v116, v118, &qword_27F23E298, &qword_24F9ECA70);
      v115(v12 + *(v201 + 36), (v118 + *(v117 + 48)), v114);
      v183 = v119;
      (v119)(v118, v114);
      v120 = v184;
      swift_beginAccess();
      sub_24E824448(v190, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v218 = *(v120 + 16);
      v121 = v218;
      *(v120 + 16) = 0x8000000000000000;
      v123 = sub_24E76E3F4(v212);
      v124 = v121[2];
      v125 = (v122 & 1) == 0;
      v126 = v124 + v125;
      if (__OFADD__(v124, v125))
      {
        goto LABEL_123;
      }

      v127 = v122;
      a2 = v196;
      if (v121[3] >= v126)
      {
        v37 = v178;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24E8B6B98();
          v121 = v218;
        }
      }

      else
      {
        sub_24E8A9534(v126, isUniquelyReferenced_nonNull_native);
        isUniquelyReferenced_nonNull_native = sub_24E69A5C4(0, &unk_27F23E280, 0x277CF7D48);
        v121 = v218;
        v128 = sub_24E76E3F4(v212);
        v37 = v178;
        if ((v127 & 1) != (v129 & 1))
        {
          goto LABEL_127;
        }

        v123 = v128;
      }

      *(v184 + 16) = v121;
      if ((v127 & 1) == 0)
      {
        v132 = sub_24E611134(MEMORY[0x277D84F90]);
        v133 = v212;
        sub_24EC2665C(v123, v212, v132, v121);
        v134 = v133;
      }

      v12 = v121[7];
      sub_24E824448(v189, 0);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v218 = v12[v123];
      v136 = v218;
      v12[v123] = 0x8000000000000000;
      v138 = sub_24E76D644(v194, v193);
      v139 = v136[2];
      v140 = (v137 & 1) == 0;
      v141 = v139 + v140;
      if (__OFADD__(v139, v140))
      {
        goto LABEL_124;
      }

      v142 = v137;
      if (v136[3] >= v141)
      {
        if ((v135 & 1) == 0)
        {
          sub_24E8B6A24();
        }
      }

      else
      {
        sub_24E8A9280(v141, v135);
        v143 = sub_24E76D644(v194, v193);
        if ((v142 & 1) != (v144 & 1))
        {
          sub_24F92CF88();
          __break(1u);
LABEL_127:
          sub_24F92CF88();
          __break(1u);
          return;
        }

        v138 = v143;
      }

      v12[v123] = v218;

      v145 = v12[v123];
      if ((v142 & 1) == 0)
      {
        sub_24EC275F0(v138, v194, v193, MEMORY[0x277D84F90], v145);
      }

      v146 = *(v145 + 56);
      v147 = *(v146 + 8 * v138);
      v148 = swift_isUniquelyReferenced_nonNull_native();
      *(v146 + 8 * v138) = v147;
      v12 = v185;
      if ((v148 & 1) == 0)
      {
        v147 = sub_24E61A1AC(0, v147[2] + 1, 1, v147);
        *(v146 + 8 * v138) = v147;
      }

      v150 = v147[2];
      v149 = v147[3];
      if (v150 >= v149 >> 1)
      {
        v147 = sub_24E61A1AC((v149 > 1), v150 + 1, 1, v147);
        *(v146 + 8 * v138) = v147;
      }

      isUniquelyReferenced_nonNull_native = v207;
      v147[2] = v150 + 1;
      sub_24E6009C8(v209, v147 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v150, &qword_27F213DB0, &qword_24F93B9F8);
      swift_endAccess();

      v151 = v217;
      v152 = v183;
      (v183)(v216, v217);
      v152(v37, v151);
      v189 = sub_24F2D4E44;
      v190 = sub_24F2C1ADC;
      v78 = v208;
      v55 = v214;
      v82 = v195;
LABEL_37:
      if (v83 == a2)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_113:

  v12 = (v211 + 8);
LABEL_115:
  v174 = *v12;
  v175 = v217;
  (*v12)(v55, v217);
  v174(v215, v175);
  v174(v213, v175);
  sub_24E824448(v190, 0);
  sub_24E824448(v189, 0);
}

unint64_t sub_24F2C1ADC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E611134(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

id sub_24F2C1B10(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_24F92B098();
  v4 = [v2 countryCodeForNumber_];

  v5 = sub_24F92B098();
  v6 = [v2 internationalizedUnformattedNumber:v5 countryCode:v4];

  if (v6)
  {
    sub_24F92B0D8();

    v6 = sub_24F92B198();
  }

  return v6;
}

uint64_t sub_24F2C1C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for Player(0);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2C1D04, 0, 0);
}

uint64_t sub_24F2C1D04()
{
  v272 = v0;
  v271[1] = *MEMORY[0x277D85DE8];
  if (qword_27F211458 != -1)
  {
LABEL_196:
    swift_once();
  }

  v1 = (v0 + 16);
  v236 = v0 + 64;
  v237 = v0 + 72;
  v234 = v0 + 80;
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E958);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BDA8();

  v266 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v271[0] = v7;
    *v6 = 136380675;
    v8 = MEMORY[0x253050F40](v5, MEMORY[0x277D837D0]);
    v10 = sub_24E7620D4(v8, v9, v271);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "handlesToQuery: %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  if (qword_27F210FC8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 120);
  v12 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v13 = sub_24F92B588();
  v14 = [v12 initWithKeysToFetch_];

  v15 = objc_opt_self();
  v16 = sub_24F92B588();
  v17 = [v15 predicateForContactsMatchingHandleStrings_];

  [v14 setPredicate_];
  v18 = MEMORY[0x277D84F90];
  *(v266 + 64) = sub_24E60D924(MEMORY[0x277D84F90]);
  *(v266 + 72) = sub_24E60D924(v18);
  *(v266 + 80) = sub_24E60D924(v18);
  v19 = *(v11 + 16);
  v20 = swift_allocObject();
  v20[2] = v236;
  v20[3] = v237;
  v20[4] = v234;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F2D463C;
  *(v21 + 24) = v20;
  *(v266 + 48) = sub_24F2D4658;
  *(v266 + 56) = v21;
  *(v266 + 16) = MEMORY[0x277D85DD0];
  *(v266 + 24) = 1107296256;
  *(v266 + 32) = sub_24F2BE704;
  *(v266 + 40) = &block_descriptor_138;
  v22 = _Block_copy(v1);

  *(v266 + 88) = 0;
  v231 = v14;
  v23 = [v19 enumerateContactsWithFetchRequest:v14 error:v266 + 88 usingBlock:v22];
  _Block_release(v22);
  v24 = *(v266 + 88);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_198:
    __break(1u);
  }

  if (!v23)
  {
    v25 = sub_24F91F278();

    swift_willThrow();
    v26 = v25;
    v27 = sub_24F9220B8();
    v28 = sub_24F92BDB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      v31 = v25;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_24E5DD000, v27, v28, "Failed to enumerate handle contacts: %{public}@", v29, 0xCu);
      sub_24E601704(v30, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v30, -1, -1);
      MEMORY[0x2530542D0](v29, -1, -1);
    }

    else
    {
    }
  }

  v33 = sub_24F9220B8();
  v34 = sub_24F92BDA8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24E5DD000, v33, v34, "PHONE", v35, 2u);
    MEMORY[0x2530542D0](v35, -1, -1);
  }

  v0 = *v236 + 64;
  v36 = -1;
  v37 = -1 << *(*v236 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(*v236 + 64);
  v39 = (63 - v37) >> 6;
  v246 = *v236;

  v40 = 0;
  v238 = v39;
  v242 = v0;
  while (v38)
  {
LABEL_22:
    v250 = v38;
    v254 = v40;
    v42 = __clz(__rbit64(v38)) | (v40 << 6);
    v43 = (*(v246 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    v46 = *(*(v246 + 56) + 8 * v42);

    v0 = sub_24F9220B8();
    v47 = sub_24F92BDA8();
    if (os_log_type_enabled(v0, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v271[0] = v49;
      *v48 = 136380675;
      v50 = sub_24E7620D4(v45, v44, v271);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_24E5DD000, v0, v47, "\t%{private}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x2530542D0](v49, -1, -1);
      MEMORY[0x2530542D0](v48, -1, -1);
    }

    else
    {
    }

    if (v46 >> 62)
    {
      v51 = sub_24F92C738();
      if (!v51)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v51 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        goto LABEL_16;
      }
    }

    if (v51 < 1)
    {
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v52 = 0;
    v53 = v46 & 0xC000000000000001;
    v258 = v46 & 0xC000000000000001;
    v262 = v51;
    do
    {
      if (v53)
      {
        v54 = MEMORY[0x253052270](v52, v46);
      }

      else
      {
        v54 = *(v46 + 8 * v52 + 32);
      }

      v55 = v54;
      v56 = sub_24F9220B8();
      v57 = sub_24F92BDA8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = v46;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v271[0] = v60;
        *v59 = 136380931;
        v61 = [v55 displayName];
        if (v61)
        {
          v62 = v61;
          v63 = sub_24F92B0D8();
          v65 = v64;
        }

        else
        {
          v65 = 0xE100000000000000;
          v63 = 45;
        }

        v66 = sub_24E7620D4(v63, v65, v271);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2082;
        v67 = [v55 identifier];
        v68 = sub_24F92B0D8();
        v70 = v69;

        v71 = sub_24E7620D4(v68, v70, v271);

        *(v59 + 14) = v71;
        _os_log_impl(&dword_24E5DD000, v56, v57, "\t\t%{private}s (%{public}s)", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v60, -1, -1);
        MEMORY[0x2530542D0](v59, -1, -1);

        v46 = v58;
        v53 = v258;
        v51 = v262;
      }

      else
      {
      }

      ++v52;
    }

    while (v51 != v52);
LABEL_16:
    v38 = (v250 - 1) & v250;

    v39 = v238;
    v0 = v242;
    v40 = v254;
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v41 >= v39)
    {
      break;
    }

    v38 = *(v0 + 8 * v41);
    ++v40;
    if (v38)
    {
      v40 = v41;
      goto LABEL_22;
    }
  }

  v72 = sub_24F9220B8();
  v73 = sub_24F92BDA8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_24E5DD000, v72, v73, "EMAIL", v74, 2u);
    MEMORY[0x2530542D0](v74, -1, -1);
  }

  v0 = *v237 + 64;
  v75 = -1;
  v76 = -1 << *(*v237 + 32);
  if (-v76 < 64)
  {
    v75 = ~(-1 << -v76);
  }

  v77 = v75 & *(*v237 + 64);
  v78 = (63 - v76) >> 6;
  v247 = *v237;

  v79 = 0;
  v239 = v78;
  v243 = v0;
  while (2)
  {
    if (v77)
    {
LABEL_52:
      v251 = v77;
      v255 = v79;
      v81 = __clz(__rbit64(v77)) | (v79 << 6);
      v82 = (*(v247 + 48) + 16 * v81);
      v84 = *v82;
      v83 = v82[1];
      v85 = *(*(v247 + 56) + 8 * v81);

      v0 = sub_24F9220B8();
      v86 = sub_24F92BDA8();
      if (os_log_type_enabled(v0, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v271[0] = v88;
        *v87 = 136380675;
        v89 = sub_24E7620D4(v84, v83, v271);

        *(v87 + 4) = v89;
        _os_log_impl(&dword_24E5DD000, v0, v86, "\t%{private}s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x2530542D0](v88, -1, -1);
        MEMORY[0x2530542D0](v87, -1, -1);
      }

      else
      {
      }

      if (v85 >> 62)
      {
        v90 = sub_24F92C738();
        if (v90)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v90 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v90)
        {
LABEL_57:
          if (v90 < 1)
          {
            goto LABEL_188;
          }

          v91 = 0;
          v92 = v85 & 0xC000000000000001;
          v259 = v85 & 0xC000000000000001;
          v263 = v90;
          do
          {
            if (v92)
            {
              v93 = MEMORY[0x253052270](v91, v85);
            }

            else
            {
              v93 = *(v85 + 8 * v91 + 32);
            }

            v94 = v93;
            v95 = sub_24F9220B8();
            v96 = sub_24F92BDA8();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = v85;
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v271[0] = v99;
              *v98 = 136380931;
              v100 = [v94 displayName];
              if (v100)
              {
                v101 = v100;
                v102 = sub_24F92B0D8();
                v104 = v103;
              }

              else
              {
                v104 = 0xE100000000000000;
                v102 = 45;
              }

              v105 = sub_24E7620D4(v102, v104, v271);

              *(v98 + 4) = v105;
              *(v98 + 12) = 2082;
              v106 = [v94 identifier];
              v107 = sub_24F92B0D8();
              v109 = v108;

              v110 = sub_24E7620D4(v107, v109, v271);

              *(v98 + 14) = v110;
              _os_log_impl(&dword_24E5DD000, v95, v96, "\t\t%{private}s (%{public}s)", v98, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2530542D0](v99, -1, -1);
              MEMORY[0x2530542D0](v98, -1, -1);

              v85 = v97;
              v92 = v259;
              v90 = v263;
            }

            else
            {
            }

            ++v91;
          }

          while (v90 != v91);
        }
      }

      v77 = (v251 - 1) & v251;

      v78 = v239;
      v0 = v243;
      v79 = v255;
      continue;
    }

    break;
  }

  while (1)
  {
    v80 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      goto LABEL_181;
    }

    if (v80 >= v78)
    {
      break;
    }

    v77 = *(v0 + 8 * v80);
    ++v79;
    if (v77)
    {
      v79 = v80;
      goto LABEL_52;
    }
  }

  v111 = sub_24F9220B8();
  v112 = sub_24F92BDA8();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_24E5DD000, v111, v112, "SOCIAL", v113, 2u);
    MEMORY[0x2530542D0](v113, -1, -1);
  }

  v0 = *v234 + 64;
  v114 = -1;
  v115 = -1 << *(*v234 + 32);
  if (-v115 < 64)
  {
    v114 = ~(-1 << -v115);
  }

  v116 = v114 & *(*v234 + 64);
  v117 = (63 - v115) >> 6;
  v248 = *v234;

  v118 = 0;
  v240 = v117;
  v244 = v0;
  while (2)
  {
    if (v116)
    {
LABEL_82:
      v252 = v116;
      v256 = v118;
      v120 = __clz(__rbit64(v116)) | (v118 << 6);
      v121 = (*(v248 + 48) + 16 * v120);
      v123 = *v121;
      v122 = v121[1];
      v124 = *(*(v248 + 56) + 8 * v120);

      v125 = sub_24F9220B8();
      v126 = sub_24F92BDA8();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v271[0] = v128;
        *v127 = 136380675;
        v129 = sub_24E7620D4(v123, v122, v271);

        *(v127 + 4) = v129;
        _os_log_impl(&dword_24E5DD000, v125, v126, "\t%{private}s", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v128);
        MEMORY[0x2530542D0](v128, -1, -1);
        MEMORY[0x2530542D0](v127, -1, -1);
      }

      else
      {
      }

      if (v124 >> 62)
      {
        v0 = sub_24F92C738();
        if (v0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v0 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0)
        {
LABEL_87:
          if (v0 < 1)
          {
            goto LABEL_189;
          }

          v130 = 0;
          v131 = v124 & 0xC000000000000001;
          v260 = v124 & 0xC000000000000001;
          v264 = v0;
          do
          {
            if (v131)
            {
              v132 = MEMORY[0x253052270](v130, v124);
            }

            else
            {
              v132 = *(v124 + 8 * v130 + 32);
            }

            v133 = v132;
            v134 = sub_24F9220B8();
            v135 = sub_24F92BDA8();

            if (os_log_type_enabled(v134, v135))
            {
              v136 = v124;
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v271[0] = v138;
              *v137 = 136380931;
              v139 = [v133 displayName];
              if (v139)
              {
                v140 = v139;
                v141 = sub_24F92B0D8();
                v143 = v142;
              }

              else
              {
                v143 = 0xE100000000000000;
                v141 = 45;
              }

              v144 = sub_24E7620D4(v141, v143, v271);

              *(v137 + 4) = v144;
              *(v137 + 12) = 2082;
              v145 = [v133 identifier];
              v146 = sub_24F92B0D8();
              v148 = v147;

              v149 = sub_24E7620D4(v146, v148, v271);

              *(v137 + 14) = v149;
              _os_log_impl(&dword_24E5DD000, v134, v135, "\t\t%{private}s (%{public}s)", v137, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2530542D0](v138, -1, -1);
              MEMORY[0x2530542D0](v137, -1, -1);

              v124 = v136;
              v131 = v260;
              v0 = v264;
            }

            else
            {
            }

            ++v130;
          }

          while (v0 != v130);
        }
      }

      v116 = (v252 - 1) & v252;

      v117 = v240;
      v0 = v244;
      v118 = v256;
      continue;
    }

    break;
  }

  while (1)
  {
    v119 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_182;
    }

    if (v119 >= v117)
    {
      break;
    }

    v116 = *(v0 + 8 * v119);
    ++v118;
    if (v116)
    {
      v118 = v119;
      goto LABEL_82;
    }
  }

  v150 = v266;
  v151 = *(v266 + 112);

  v152 = MEMORY[0x277D84F90];
  v249 = sub_24E60D924(MEMORY[0x277D84F90]);
  v269 = sub_24E608B7C(v152);
  v233 = *(v151 + 16);
  if (v233)
  {
    v153 = 0;
    v154 = 0;
    v232 = *(v266 + 152);
    v155 = *(v266 + 136);
    v241 = *(v266 + 128);
    v257 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v235 = *(v266 + 112) + v257;
    v267 = *(v155 + 72);
    while (1)
    {
      v156 = *(v150 + 152);
      v245 = v154;
      sub_24F2CC85C(v235 + v154 * v267, v156, type metadata accessor for Player);
      v270 = MEMORY[0x277D84F90];
      if (*(v156 + *(v241 + 40) + 8))
      {
        v157 = sub_24F92B198();
        if (*(*v237 + 16))
        {
          sub_24E76D644(v157, v158);
          v160 = v159;

          if (v160)
          {

            sub_24EA0B0D8(v161);
          }
        }

        else
        {
        }

        v162 = objc_opt_self();
        v163 = sub_24F92B098();
        v164 = [v162 countryCodeForNumber_];

        v165 = sub_24F92B098();
        v166 = [v162 internationalizedUnformattedNumber:v165 countryCode:v164];

        if (v166)
        {
          sub_24F92B0D8();

          v167 = sub_24F92B198();
          v169 = v168;

          if (*(*v236 + 16))
          {
            sub_24E76D644(v167, v169);
            v171 = v170;

            if (v171)
            {

              sub_24EA0B0D8(v172);
            }
          }

          else
          {
          }
        }
      }

      v271[0] = MEMORY[0x277D84FA0];
      v173 = sub_24F2CC3DC(&v270);
      v174 = v173;
      v175 = v270;
      v176 = v270 >> 62;
      if (v270 >> 62)
      {
        v177 = sub_24F92C738();
        v0 = v177 - v174;
        if (v177 < v174)
        {
          goto LABEL_190;
        }
      }

      else
      {
        v177 = *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v0 = v177 - v173;
        if (v177 < v173)
        {
          goto LABEL_190;
        }
      }

      if (v174 < 0)
      {
        goto LABEL_191;
      }

      if (v176)
      {
        v178 = sub_24F92C738();
      }

      else
      {
        v178 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v178 < v177)
      {
        goto LABEL_192;
      }

      v179 = __OFSUB__(0, v0);
      v0 = -v0;
      if (v179)
      {
        goto LABEL_193;
      }

      if (v176)
      {
        v180 = sub_24F92C738();
      }

      else
      {
        v180 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v179 = __OFADD__(v180, v0);
      v0 += v180;
      if (v179)
      {
        goto LABEL_194;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v176)
      {
        goto LABEL_132;
      }

LABEL_133:
      v175 = sub_24F92C8F8();
      v270 = v175;
LABEL_134:
      sub_24EDAB8D4(v174, v177, 0);

      if (v175 >> 62)
      {
        v181 = sub_24F92C738();
        if (!v181)
        {
          goto LABEL_162;
        }

LABEL_136:
        v182 = 0;
        v261 = v175;
        v265 = v175 & 0xC000000000000001;
        v253 = v175 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v265)
          {
            v183 = MEMORY[0x253052270](v182, v175);
          }

          else
          {
            if (v182 >= *(v253 + 16))
            {
              goto LABEL_186;
            }

            v183 = *(v175 + 8 * v182 + 32);
          }

          v184 = v182 + 1;
          if (__OFADD__(v182, 1))
          {
            goto LABEL_183;
          }

          v186 = *(v266 + 144);
          v185 = *(v266 + 152);
          v187 = v183;
          v188 = [v183 identifier];
          v189 = sub_24F92B0D8();
          v0 = v190;

          sub_24F2CC85C(v185, v186, type metadata accessor for Player);
          sub_24E824448(v153, 0);
          v191 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v271[0] = v269;
          v194 = sub_24E76D644(v189, v0);
          v195 = *(v269 + 16);
          v196 = (v193 & 1) == 0;
          v197 = v195 + v196;
          if (__OFADD__(v195, v196))
          {
            goto LABEL_184;
          }

          v198 = v193;
          if (*(v269 + 24) >= v197)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v193 & 1) == 0)
              {
                goto LABEL_151;
              }
            }

            else
            {
              sub_24E8B07DC();
              v191 = v271[0];
              if ((v198 & 1) == 0)
              {
                goto LABEL_151;
              }
            }
          }

          else
          {
            sub_24E89DAD4(v197, isUniquelyReferenced_nonNull_native);
            v199 = v271[0];
            v200 = sub_24E76D644(v189, v0);
            if ((v198 & 1) != (v201 & 1))
            {
              goto LABEL_173;
            }

            v194 = v200;
            v191 = v199;
            if ((v198 & 1) == 0)
            {
LABEL_151:
              v191[(v194 >> 6) + 8] |= 1 << v194;
              v202 = (v191[6] + 16 * v194);
              *v202 = v189;
              v202[1] = v0;
              *(v191[7] + 8 * v194) = MEMORY[0x277D84F90];
              v203 = v191[2];
              v179 = __OFADD__(v203, 1);
              v204 = v203 + 1;
              if (v179)
              {
                goto LABEL_185;
              }

              v191[2] = v204;
LABEL_153:
              v269 = v191;
              v205 = v191[7];
              v206 = *(v205 + 8 * v194);
              v207 = swift_isUniquelyReferenced_nonNull_native();
              *(v205 + 8 * v194) = v206;
              if ((v207 & 1) == 0)
              {
                v206 = sub_24E618138(0, v206[2] + 1, 1, v206);
                *(v205 + 8 * v194) = v206;
              }

              v209 = v206[2];
              v208 = v206[3];
              v0 = v209 + 1;
              if (v209 >= v208 >> 1)
              {
                *(v205 + 8 * v194) = sub_24E618138((v208 > 1), v209 + 1, 1, v206);
              }

              v210 = *(v266 + 144);

              v211 = *(v205 + 8 * v194);
              *(v211 + 16) = v0;
              sub_24F2CC924(v210, v211 + v257 + v209 * v267, type metadata accessor for Player);
              ++v182;
              v153 = sub_24F2D4E44;
              v175 = v261;
              if (v184 == v181)
              {
                goto LABEL_162;
              }

              continue;
            }
          }

          break;
        }

        goto LABEL_153;
      }

      v181 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v181)
      {
        goto LABEL_136;
      }

LABEL_162:
      v212 = **(v266 + 152);
      v0 = *(v232 + 8);

      v213 = v249;
      v214 = swift_isUniquelyReferenced_nonNull_native();
      v271[0] = v249;
      v215 = sub_24E76D644(v212, v0);
      v217 = *(v249 + 16);
      v218 = (v216 & 1) == 0;
      v179 = __OFADD__(v217, v218);
      v219 = v217 + v218;
      if (v179)
      {
        goto LABEL_195;
      }

      v220 = v216;
      if (*(v249 + 24) >= v219)
      {
        if (v214)
        {
          if (v216)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v226 = v215;
          sub_24E8B2BA4();
          v215 = v226;
          v213 = v271[0];
          v249 = v271[0];
          if (v220)
          {
            goto LABEL_103;
          }
        }
      }

      else
      {
        sub_24E8A2144(v219, v214);
        v221 = v271[0];
        v215 = sub_24E76D644(v212, v0);
        if ((v220 & 1) != (v222 & 1))
        {
LABEL_173:

          return sub_24F92CF88();
        }

        v213 = v221;
        v249 = v221;
        if (v220)
        {
LABEL_103:
          *(v213[7] + 8 * v215) = v175;

          goto LABEL_104;
        }
      }

      v213[(v215 >> 6) + 8] |= 1 << v215;
      v223 = (v213[6] + 16 * v215);
      *v223 = v212;
      v223[1] = v0;
      *(v213[7] + 8 * v215) = v175;
      v224 = v213[2];
      v179 = __OFADD__(v224, 1);
      v225 = v224 + 1;
      if (v179)
      {
        goto LABEL_198;
      }

      v213[2] = v225;
LABEL_104:
      v154 = v245 + 1;
      v150 = v266;
      sub_24F2CC8C4(*(v266 + 152), type metadata accessor for Player);
      if (v245 + 1 == v233)
      {
        goto LABEL_177;
      }
    }

    if (!v176)
    {
      if (v0 <= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_134;
      }

      goto LABEL_133;
    }

LABEL_132:
    sub_24F92C738();
    goto LABEL_133;
  }

  v153 = 0;
LABEL_177:
  v228 = *(v150 + 96);

  v229 = *(v150 + 80);
  v268 = *(v150 + 64);

  sub_24E824448(v153, 0);

  *v228 = v268;
  *(v228 + 16) = v229;
  *(v228 + 24) = v249;
  *(v228 + 32) = v269;
  v230 = *(v150 + 8);

  return v230();
}

void sub_24F2C3708(void *a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v5 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E458, &unk_24F95C3C8);
  v6 = sub_24F92B5A8();

  if (v6 >> 62)
  {
LABEL_30:
    v7 = sub_24F92C738();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v162 = 0;
      v152 = objc_opt_self();
      v154 = v6 & 0xC000000000000001;
      v150 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v154)
        {
          v13 = MEMORY[0x253052270](v8, v6);
        }

        else
        {
          if (v8 >= *(v150 + 16))
          {
            goto LABEL_28;
          }

          v13 = *(v6 + 8 * v8 + 32);
        }

        v11 = v13;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v14 = [v13 value];
        v15 = [v14 stringValue];

        v16 = v15;
        v17 = v15;
        if (!v15)
        {
          sub_24F92B0D8();
          v17 = sub_24F92B098();

          sub_24F92B0D8();
          v16 = sub_24F92B098();
        }

        v18 = v15;
        v19 = [v152 countryCodeForNumber_];

        v20 = [v152 internationalizedUnformattedNumber:v16 countryCode:v19];
        if (v20)
        {
          v21 = v11;
          v22 = v7;
          v23 = v6;
          sub_24F92B0D8();

          v24 = sub_24F92B198();
          v26 = v25;

          sub_24E824448(v162, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *a3;
          *a3 = 0x8000000000000000;
          v6 = sub_24E76D644(v24, v26);
          v30 = v28[2];
          v31 = (v29 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_27;
          }

          v33 = v29;
          if (v28[3] >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v32, isUniquelyReferenced_nonNull_native);
            v34 = sub_24E76D644(v24, v26);
            if ((v33 & 1) != (v35 & 1))
            {
LABEL_138:
              sub_24F92CF88();
              __break(1u);
              return;
            }

            v6 = v34;
          }

          *a3 = v28;

          v36 = *a3;
          if (v33)
          {
          }

          else
          {
            v36[(v6 >> 6) + 8] |= 1 << v6;
            v37 = (v36[6] + 16 * v6);
            *v37 = v24;
            v37[1] = v26;
            *(v36[7] + 8 * v6) = MEMORY[0x277D84F90];
            v38 = v36[2];
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_29;
            }

            v36[2] = v40;
          }

          v9 = (v36[7] + 8 * v6);
          v10 = a1;
          MEMORY[0x253050F00]();
          if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v162 = sub_24F2D4E44;
          v6 = v23;
          v7 = v22;
          v11 = v21;
          v12 = v8 + 1;
        }

        ++v8;
        if (v12 == v7)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v162 = 0;
LABEL_32:

  v41 = [a1 emailAddresses];
  v42 = sub_24F92B5A8();

  if (v42 >> 62)
  {
    goto LABEL_59;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v43)
  {
LABEL_34:
    v44 = 0;
    v45 = 0;
    v157 = v42;
    v160 = v42 & 0xC000000000000001;
    v155 = v42 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v160)
      {
        v46 = MEMORY[0x253052270](v44, v42);
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v44 >= *(v155 + 16))
        {
          goto LABEL_58;
        }

        v46 = *(v42 + 8 * v44 + 32);
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          v43 = sub_24F92C738();
          if (!v43)
          {
            break;
          }

          goto LABEL_34;
        }
      }

      v48 = v46;
      v49 = [v46 value];
      v50 = [v49 stringValue];

      sub_24F92B0D8();
      v51 = sub_24F92B198();
      v53 = v52;

      sub_24E824448(v45, 0);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *a4;
      *a4 = 0x8000000000000000;
      v56 = sub_24E76D644(v51, v53);
      v57 = *(v42 + 16);
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_56;
      }

      v60 = v55;
      if (*(v42 + 24) >= v59)
      {
        if ((v54 & 1) == 0)
        {
          sub_24E8B2BA4();
        }
      }

      else
      {
        sub_24E8A2144(v59, v54);
        v61 = sub_24E76D644(v51, v53);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_138;
        }

        v56 = v61;
      }

      *a4 = v42;

      v42 = *a4;
      if (v60)
      {
      }

      else
      {
        *(v42 + 8 * (v56 >> 6) + 64) |= 1 << v56;
        v63 = (*(v42 + 48) + 16 * v56);
        *v63 = v51;
        v63[1] = v53;
        *(*(v42 + 56) + 8 * v56) = MEMORY[0x277D84F90];
        v64 = *(v42 + 16);
        v39 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v39)
        {
          goto LABEL_57;
        }

        *(v42 + 16) = v65;
      }

      v66 = (*(v42 + 56) + 8 * v56);
      v67 = a1;
      MEMORY[0x253050F00]();
      if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      ++v44;
      v45 = sub_24F2D4E44;
      v42 = v157;
      if (v47 == v43)
      {
        goto LABEL_61;
      }
    }
  }

  v45 = 0;
LABEL_61:

  v68 = [a1 socialProfiles];
  v69 = sub_24F92B5A8();

  if (v69 >> 62)
  {
    goto LABEL_133;
  }

  v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v70)
  {
LABEL_63:
    v71 = 0;
    v151 = 0;
    v153 = 0;
    v158 = v69;
    v161 = v69 & 0xC000000000000001;
    v148 = v69 & 0xFFFFFFFFFFFFFF8;
    v149 = 0;
    v156 = v70;
    while (1)
    {
      if (v161)
      {
        v72 = MEMORY[0x253052270](v71, v69);
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (v71 >= *(v148 + 16))
        {
          goto LABEL_126;
        }

        v72 = *(v69 + 8 * v71 + 32);
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          v70 = sub_24F92C738();
          if (!v70)
          {
            break;
          }

          goto LABEL_63;
        }
      }

      v165 = v72;
      v74 = [v72 value];
      v75 = [v74 service];
      v76 = sub_24F92B0D8();
      v78 = v77;

      if (v76)
      {
        v79 = 0;
      }

      else
      {
        v79 = v78 == 0xE000000000000000;
      }

      if (v79)
      {
      }

      else
      {
        v80 = sub_24F92CE08();

        if ((v80 & 1) == 0)
        {
          v81 = [v74 service];
          sub_24F92B0D8();

          v82 = sub_24F92B198();
          v84 = v83;

          sub_24E824448(v153, 0);
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v86 = *a5;
          *a5 = 0x8000000000000000;
          v69 = sub_24E76D644(v82, v84);
          v88 = v86[2];
          v89 = (v87 & 1) == 0;
          v90 = v88 + v89;
          if (__OFADD__(v88, v89))
          {
            goto LABEL_127;
          }

          v91 = v87;
          if (v86[3] >= v90)
          {
            if ((v85 & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v90, v85);
            v92 = sub_24E76D644(v82, v84);
            if ((v91 & 1) != (v93 & 1))
            {
              goto LABEL_138;
            }

            v69 = v92;
          }

          *a5 = v86;

          v94 = *a5;
          if (v91)
          {
          }

          else
          {
            v94[(v69 >> 6) + 8] |= 1 << v69;
            v95 = (v94[6] + 16 * v69);
            *v95 = v82;
            v95[1] = v84;
            *(v94[7] + 8 * v69) = MEMORY[0x277D84F90];
            v96 = v94[2];
            v39 = __OFADD__(v96, 1);
            v97 = v96 + 1;
            if (v39)
            {
              goto LABEL_130;
            }

            v94[2] = v97;
          }

          v98 = (v94[7] + 8 * v69);
          v99 = a1;
          MEMORY[0x253050F00]();
          v70 = v156;
          if (*((*v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v153 = sub_24F2D4E44;
          v69 = v158;
        }
      }

      v100 = [v74 username];
      v101 = sub_24F92B0D8();
      v103 = v102;

      if (v101 || v103 != 0xE000000000000000)
      {
        v104 = sub_24F92CE08();

        if ((v104 & 1) == 0)
        {
          v105 = [v74 username];
          sub_24F92B0D8();

          v106 = sub_24F92B198();
          v69 = v107;

          sub_24E824448(v151, 0);
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v109 = *a5;
          *a5 = 0x8000000000000000;
          v111 = sub_24E76D644(v106, v69);
          v112 = v109[2];
          v113 = (v110 & 1) == 0;
          v114 = v112 + v113;
          if (__OFADD__(v112, v113))
          {
            goto LABEL_128;
          }

          v115 = v110;
          if (v109[3] >= v114)
          {
            if ((v108 & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v114, v108);
            v116 = sub_24E76D644(v106, v69);
            if ((v115 & 1) != (v117 & 1))
            {
              goto LABEL_138;
            }

            v111 = v116;
          }

          *a5 = v109;

          v118 = *a5;
          if (v115)
          {
          }

          else
          {
            v118[(v111 >> 6) + 8] |= 1 << v111;
            v119 = (v118[6] + 16 * v111);
            *v119 = v106;
            v119[1] = v69;
            *(v118[7] + 8 * v111) = MEMORY[0x277D84F90];
            v120 = v118[2];
            v39 = __OFADD__(v120, 1);
            v121 = v120 + 1;
            if (v39)
            {
              goto LABEL_131;
            }

            v118[2] = v121;
          }

          v122 = (v118[7] + 8 * v111);
          v123 = a1;
          MEMORY[0x253050F00]();
          v70 = v156;
          v69 = v158;
          if (*((*v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v151 = sub_24F2D4E44;
        }
      }

      else
      {
      }

      v124 = [v74 userIdentifier];
      v125 = sub_24F92B0D8();
      v127 = v126;

      if (!v125 && v127 == 0xE000000000000000)
      {
      }

      else
      {
        v128 = sub_24F92CE08();

        if (v128)
        {
        }

        else
        {
          v129 = [v74 userIdentifier];
          sub_24F92B0D8();

          v130 = sub_24F92B198();
          v69 = v131;

          sub_24E824448(v149, 0);
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v133 = *a5;
          *a5 = 0x8000000000000000;
          v135 = sub_24E76D644(v130, v69);
          v136 = v133[2];
          v137 = (v134 & 1) == 0;
          v138 = v136 + v137;
          if (__OFADD__(v136, v137))
          {
            goto LABEL_129;
          }

          v139 = v134;
          if (v133[3] >= v138)
          {
            if ((v132 & 1) == 0)
            {
              sub_24E8B2BA4();
            }
          }

          else
          {
            sub_24E8A2144(v138, v132);
            v140 = sub_24E76D644(v130, v69);
            if ((v139 & 1) != (v141 & 1))
            {
              goto LABEL_138;
            }

            v135 = v140;
          }

          *a5 = v133;

          v142 = *a5;
          if (v139)
          {
          }

          else
          {
            v142[(v135 >> 6) + 8] |= 1 << v135;
            v143 = (v142[6] + 16 * v135);
            *v143 = v130;
            v143[1] = v69;
            *(v142[7] + 8 * v135) = MEMORY[0x277D84F90];
            v144 = v142[2];
            v39 = __OFADD__(v144, 1);
            v145 = v144 + 1;
            if (v39)
            {
              goto LABEL_132;
            }

            v142[2] = v145;
          }

          v146 = (v142[7] + 8 * v135);
          v147 = a1;
          MEMORY[0x253050F00]();
          v70 = v156;
          v69 = v158;
          if (*((*v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v149 = sub_24F2D4E44;
        }
      }

      ++v71;
      if (v73 == v70)
      {
        goto LABEL_135;
      }
    }
  }

  v151 = 0;
  v153 = 0;
  v149 = 0;
LABEL_135:

  sub_24E824448(v162, 0);
  sub_24E824448(v45, 0);
  sub_24E824448(v153, 0);
  sub_24E824448(v151, 0);

  sub_24E824448(v149, 0);
}

unint64_t sub_24F2C4620@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24E60DE58(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_24F2C4650@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230, &qword_24F9536F8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v40 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F253B40, &unk_24F9DFE80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v42 = type metadata accessor for SocialUser(0);
  v13 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  if (*(v2[41] + 16))
  {
    v19 = *a1;
    v18 = a1[1];

    sub_24E76D644(v19, v18);
    if (v20)
    {
    }
  }

  sub_24F2CC85C(a1, v9, type metadata accessor for Player);
  v21 = type metadata accessor for Player(0);
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  v22 = v2[3];
  v23 = v2[4];
  v24 = v2[5];
  v25 = v2[6];
  v27 = v3[7];
  v26 = v3[8];
  v44[0] = v22;
  v44[1] = v23;
  v44[2] = v24;
  v44[3] = v25;
  v44[4] = v27;
  v44[5] = v26;
  v28 = v24;

  v29 = v27;
  v30 = v26;
  v31 = v22;
  v32 = v23;
  SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)(v9, v44, 0, 0, v12);
  if ((*(v13 + 48))(v12, 1, v42) == 1)
  {
    sub_24E601704(v12, &unk_27F253B40, &unk_24F9DFE80);
    v33 = type metadata accessor for SocialUserGroup(0);
    return (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
  }

  else
  {
    sub_24F2CC924(v12, v17, type metadata accessor for SocialUser);
    v35 = v40;
    sub_24F2CC85C(v17, v40, type metadata accessor for SocialUser);
    v36 = v41;
    SocialUserGroup.init(user:)(v35, v41);
    sub_24F2CC8C4(v17, type metadata accessor for SocialUser);
    v37 = type metadata accessor for SocialUserGroup(0);
    if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
    {
      v38 = *(v37 + 20);
      sub_24E601704(v36 + v38, &qword_27F22DF80, &unk_24F942E50);
      v39 = type metadata accessor for PlayerAvatar.Overlay(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(v36 + v38, 0, 1, v39);
    }

    return sub_24E6009C8(v36, v43, &unk_27F23E230, &qword_24F9536F8);
  }
}

uint64_t sub_24F2C4AEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, __n128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v245) = a6;
  v237 = a3;
  v238 = a7;
  v232 = a2;
  v246 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v207 - v10;
  v12 = sub_24F9289E8();
  v209 = *(v12 - 8);
  v210 = v12;
  MEMORY[0x28223BE20](v12);
  v208 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_24F91EAA8();
  v217 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v239 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v15 - 8);
  v227 = &v207 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E180, &unk_24F9E3310);
  v225 = *(v17 - 8);
  v226 = v17;
  MEMORY[0x28223BE20](v17);
  v222 = &v207 - v18;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E188, &unk_24F9DFE70);
  v221 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v219 = &v207 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E190, &qword_24F9E3320);
  v223 = *(v20 - 8);
  v224 = v20;
  MEMORY[0x28223BE20](v20);
  v220 = &v207 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F253B40, &unk_24F9DFE80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v207 - v23;
  v25 = type metadata accessor for SocialUser(0);
  v243 = *(v25 - 8);
  v244 = v25;
  MEMORY[0x28223BE20](v25);
  v218 = &v207 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v207 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v207 - v31;
  v33 = type metadata accessor for SocialUserGroup(0);
  v34 = *(v33 - 1);
  MEMORY[0x28223BE20](v33);
  v36 = &v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5[2];
  v257 = a5[1];
  *v258 = v37;
  v256 = *a5;
  v39 = *(v38 + 20);
  v40 = type metadata accessor for PlayerAvatar.Overlay(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v233 = v39;
  v212 = v42;
  v213 = v40;
  v211 = v41 + 56;
  (v42)(&v36[v39], 1, 1);
  v43 = &v36[v33[8]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v36[v33[10]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v234 = v44;
  v44[16] = -1;
  v45 = v33[11];
  v46 = type metadata accessor for CallProviderConversationHandleSet(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v235 = v45;
  v236 = v36;
  v49 = &v36[v45];
  v50 = v246;
  v215 = v48;
  v216 = v46;
  v214 = v47 + 56;
  (v48)(v49, 1, 1);
  v51 = [v50 remoteParticipantHandles];
  if (!v51)
  {
    v70 = v238;
    v248.n128_u64[0] = *a4;
    sub_24E601704(&v248, &unk_27F23E1A0, &qword_24F9976C0);
    *&v247[0] = a4[1];
    sub_24E601704(v247, &unk_27F23E1A0, &qword_24F9976C0);
    v255 = a4[2];
    sub_24E601704(&v255, &unk_27F23E1A0, &qword_24F9976C0);
    v254 = a4[3];
    sub_24E601704(&v254, &unk_27F23E1A0, &qword_24F9976C0);
    v253 = a4[4];
    sub_24E601704(&v253, &unk_27F22E000, &unk_24F984240);
    sub_24F2CC7F4(&v256);

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v71 = sub_24F9220D8();
    __swift_project_value_buffer(v71, qword_27F39E958);
    v72 = v50;
    v73 = sub_24F9220B8();
    v74 = sub_24F92BDB8();

    if (!os_log_type_enabled(v73, v74))
    {

LABEL_59:
      v157 = v235;
      v160 = v236;
      v159 = v233;
      v158 = v234;
      goto LABEL_60;
    }

    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = v34;
    v231 = v33;
    v78 = v76;
    v252 = v76;
    *v75 = 136446210;
    v79 = [v72 uniqueId];
    v80 = sub_24F92B0D8();
    v82 = v81;

    v83 = sub_24E7620D4(v80, v82, &v252);

    *(v75 + 4) = v83;
    _os_log_impl(&dword_24E5DD000, v73, v74, "Missing remoteParticipantHandles for %{public}s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x2530542D0](v78, -1, -1);
    MEMORY[0x2530542D0](v75, -1, -1);

    goto LABEL_37;
  }

  v52 = v51;
  v207 = v11;
  v229 = v34;
  v231 = v33;
  sub_24E69A5C4(0, &qword_27F23E1B0, 0x277CF7D30);
  sub_24ECFF898();
  v53 = sub_24F92BAA8();

  sub_24F2BE2E4(v53);
  v55 = v54;

  v250 = MEMORY[0x277D84FA0];
  v56 = *a4;
  v254 = a4[1];
  v255 = v56;
  v57 = a4[2];
  v252 = a4[3];
  v253 = v57;
  v242 = a4;
  v251 = a4[4];
  v58 = v50;
  v59 = *(v55 + 16);
  sub_24E60169C(&v255, &v248, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v254, &v248, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v253, &v248, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v252, &v248, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v251, &v248, &unk_27F22E000, &unk_24F984240);
  sub_24F2CC824(&v256, &v248);
  v60 = v58;
  v241 = v60;
  v230 = v55;
  if (v59)
  {
    v61 = (v243 + 48);
    v62 = (v55 + 48);
    v246 = MEMORY[0x277D84F90];
    v63 = v242;
    do
    {
      v65 = *(v62 - 1);
      v64 = *v62;
      v248.n128_u8[0] = *(v62 - 16);
      v248.n128_u64[1] = v65;
      *v249 = v64;

      sub_24F2CB790(&v248, v63, &v256, v245 & 1, v60, v24);

      if ((*v61)(v24, 1, v244) == 1)
      {
        sub_24E601704(v24, &unk_27F253B40, &unk_24F9DFE80);
      }

      else
      {
        sub_24F2CC924(v24, v32, type metadata accessor for SocialUser);
        sub_24F2CC924(v32, v29, type metadata accessor for SocialUser);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v66 = v246;
        }

        else
        {
          v66 = sub_24E6189C4(0, v246[2] + 1, 1, v246);
        }

        v68 = v66[2];
        v67 = v66[3];
        if (v68 >= v67 >> 1)
        {
          v66 = sub_24E6189C4((v67 > 1), v68 + 1, 1, v66);
        }

        v66[2] = v68 + 1;
        v69 = (v243[80] + 32) & ~v243[80];
        v246 = v66;
        sub_24F2CC924(v29, v66 + v69 + *(v243 + 9) * v68, type metadata accessor for SocialUser);
        v60 = v241;
        v63 = v242;
      }

      v62 += 3;
      --v59;
    }

    while (v59);
  }

  else
  {
    v246 = MEMORY[0x277D84F90];
  }

  sub_24F2CC7F4(&v256);
  sub_24E601704(&v255, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v254, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v253, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v252, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v251, &unk_27F22E000, &unk_24F984240);
  sub_24E601704(&v255, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v254, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v253, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v252, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E601704(&v251, &unk_27F22E000, &unk_24F984240);
  v84 = [v60 serviceProvider];
  if (!v84)
  {

    sub_24F2CC7F4(&v256);

    v70 = v238;
    v34 = v229;
    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v107 = sub_24F9220D8();
    __swift_project_value_buffer(v107, qword_27F39E958);
    v108 = v60;
    v109 = sub_24F9220B8();
    v110 = sub_24F92BDB8();

    if (!os_log_type_enabled(v109, v110))
    {

LABEL_58:

      v33 = v231;
      goto LABEL_59;
    }

    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v248.n128_u64[0] = v112;
    *v111 = 136446210;
    v113 = [v108 uniqueId];
    v77 = v34;
    v114 = sub_24F92B0D8();
    v116 = v115;

    v117 = sub_24E7620D4(v114, v116, &v248);

    *(v111 + 4) = v117;
    _os_log_impl(&dword_24E5DD000, v109, v110, "Missing service provider for call %{public}s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v112);
    MEMORY[0x2530542D0](v112, -1, -1);
    MEMORY[0x2530542D0](v111, -1, -1);

LABEL_37:
    v118 = v236;
    sub_24E601704(v236 + v233, &qword_27F22DF80, &unk_24F942E50);
    sub_24E640000(*v234, *(v234 + 1), v234[16]);
    sub_24E601704(v118 + v235, &unk_27F23E170, &unk_24F9EBA60);
    return (*(v77 + 56))(v238, 1, 1, v231);
  }

  v85 = v84;
  v86 = sub_24F92B0D8();
  v88 = v87;

  v248 = v256;
  *v249 = v257;
  *&v249[16] = *v258;
  v89 = sub_24F2BF550(v86, v88);
  v70 = v238;
  v34 = v229;
  if (!v89)
  {

    sub_24F2CC7F4(&v256);

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v135 = sub_24F9220D8();
    __swift_project_value_buffer(v135, qword_27F39E958);

    v136 = sub_24F9220B8();
    v137 = sub_24F92BDB8();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = v70;
      v139 = v60;
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v248.n128_u64[0] = v141;
      *v140 = 136446210;
      v142 = sub_24E7620D4(v86, v88, &v248);

      *(v140 + 4) = v142;
      _os_log_impl(&dword_24E5DD000, v136, v137, "Missing provider matching %{public}s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v141);
      MEMORY[0x2530542D0](v141, -1, -1);
      MEMORY[0x2530542D0](v140, -1, -1);

      v70 = v138;
    }

    else
    {
    }

    v33 = v231;
    v158 = v234;
    v157 = v235;
    v159 = v233;

    v160 = v236;
    goto LABEL_60;
  }

  v90 = v89;

  v91 = v246[2];
  if (!v91)
  {

    sub_24F2CC7F4(&v256);

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v143 = sub_24F9220D8();
    __swift_project_value_buffer(v143, qword_27F39E958);
    v144 = v241;
    v145 = sub_24F9220B8();
    v146 = sub_24F92BDB8();

    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v242 = v90;
      v149 = v148;
      v248.n128_u64[0] = v148;
      *v147 = 136446210;
      v150 = v34;
      v151 = [v144 uniqueId];
      v152 = sub_24F92B0D8();
      v154 = v153;

      v155 = sub_24E7620D4(v152, v154, &v248);

      *(v147 + 4) = v155;
      _os_log_impl(&dword_24E5DD000, v145, v146, "Missing users for call %{public}s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x2530542D0](v149, -1, -1);
      MEMORY[0x2530542D0](v147, -1, -1);

      v156 = v236;
      sub_24E601704(v236 + v233, &qword_27F22DF80, &unk_24F942E50);
      sub_24E640000(*v234, *(v234 + 1), v234[16]);
      sub_24E601704(v156 + v235, &unk_27F23E170, &unk_24F9EBA60);
      return (*(v150 + 56))(v238, 1, 1, v231);
    }

    goto LABEL_58;
  }

  v242 = v90;
  v92 = v246 + ((v243[80] + 32) & ~v243[80]);
  v93 = *(v243 + 9);
  v94 = v218;
  v244 = (v217 + 8);
  *&v245 = v93;
  v95 = MEMORY[0x277D84F90];
  do
  {
    sub_24F2CC85C(v92, v94, type metadata accessor for SocialUser);
    v96 = v94[5];
    if (v96)
    {
      if (v94[7])
      {
        v97 = v94[6];
        v98 = v94[7];
      }

      else
      {
        v97 = 0;
        v98 = 0xE000000000000000;
      }

      v99 = v94[4];
      v248.n128_u64[0] = v97;
      v248.n128_u64[1] = v98;

      MEMORY[0x253050C20](32, 0xE100000000000000);

      MEMORY[0x253050C20](v99, v96);

      v100 = v239;
      sub_24F91E9F8();
      sub_24E600AEC();
      v101 = sub_24F92C538();
      v103 = v102;
      (*v244)(v100, v240);

      sub_24F2CC8C4(v94, type metadata accessor for SocialUser);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_24E615CF4(0, *(v95 + 2) + 1, 1, v95);
      }

      v105 = *(v95 + 2);
      v104 = *(v95 + 3);
      if (v105 >= v104 >> 1)
      {
        v95 = sub_24E615CF4((v104 > 1), v105 + 1, 1, v95);
      }

      *(v95 + 2) = v105 + 1;
      v106 = &v95[16 * v105];
      *(v106 + 4) = v101;
      *(v106 + 5) = v103;
    }

    else
    {
      sub_24F2CC8C4(v94, type metadata accessor for SocialUser);
    }

    v92 += v245;
    --v91;
  }

  while (v91);
  *&v247[0] = v95;
  v120 = v221;
  v121 = v219;
  (*(v221 + 104))(v219, *MEMORY[0x277CC8AF0], v228);
  v123 = v225;
  v122 = v226;
  v124 = v222;
  (*(v225 + 104))(v222, *MEMORY[0x277CC8B08], v226);
  *&v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E602068(&qword_27F23E1B8, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83970]);
  v125 = v220;
  sub_24F91E978();
  (*(v123 + 8))(v124, v122);
  (*(v120 + 8))(v121, v228);
  sub_24E602068(&unk_27F23E1C0, &unk_27F23E190, &qword_24F9E3320, MEMORY[0x277CC8B28]);
  v126 = v224;
  sub_24F92B3E8();
  (*(v223 + 8))(v125, v126);

  v127 = v248.n128_u64[1];
  v128 = v248.n128_u64[0];
  v129 = [v242 bundleIdentifier];
  if (v129)
  {
    v130 = v129;
    v131 = sub_24F92B0D8();
    v133 = v132;

    v134 = sub_24F4D36F8(v131, v133, v232);
    v33 = v231;
    if (v134)
    {

      v70 = v238;
LABEL_56:
      v164 = v242;

      sub_24F2CC7F4(&v256);

      v157 = v235;
      v160 = v236;
      v159 = v233;
      v158 = v234;
      v34 = v229;
LABEL_60:
      sub_24E601704(v160 + v159, &qword_27F22DF80, &unk_24F942E50);
      sub_24E640000(*v158, *(v158 + 1), v158[16]);
      sub_24E601704(v160 + v157, &unk_27F23E170, &unk_24F9EBA60);
      return (*(v34 + 56))(v70, 1, 1, v33);
    }

    v243 = v128;
    v163 = sub_24F4D36F8(v131, v133, v237);

    v70 = v238;
    if (v163)
    {

      goto LABEL_56;
    }

    v228 = v127;
    v248.n128_u64[0] = v131;
    v248.n128_u64[1] = v133;
    v165 = v239;
    sub_24F91EA28();
    sub_24E600AEC();
    v166 = sub_24F92C578();
    v168 = v167;
    (*v244)(v165, v240);
    if (v168)
    {
      v131 = v166;
    }

    else
    {

      v168 = v133;
    }

    v170 = v209;
    v169 = v210;
    v171 = v208;
    v128 = v243;
    v248.n128_u64[0] = 0x3A6E6F6369707061;
    v248.n128_u64[1] = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v131, v168);

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();
    v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
    v173 = v227;
    (*(v170 + 32))(v227, v171, v169);
    *(v173 + v172) = 0;
    v174 = v213;
    swift_storeEnumTagMultiPayload();
    v162 = v174;
    v161 = 0;
  }

  else
  {
    v228 = v127;

    v161 = 1;
    v162 = v213;
  }

  v212(v227, v161, 1, v162);
  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  v175 = v258[0];
  v176 = v242;
  v177 = sub_24F92C408();

  v243 = v128;
  if (v177 & 1) != 0 || (v178 = v258[1], v179 = sub_24F92C408(), v178, (v179))
  {
    v247[0] = v256;
    v247[1] = v257;
    v247[2] = *v258;
    sub_24F2BFD7C(v176, v247, &v248);
  }

  else
  {
    sub_24F2CC7F4(&v256);
    sub_24F2BFC1C(v176, &v248);
  }

  v244 = v248.n128_u64[1];
  v180 = v248.n128_u64[0];
  v181 = *v249;
  v245 = *&v249[8];
  v182 = *&v249[24];
  v183 = v176;
  v184 = v231;
  v185 = v236;
  v186 = (v236 + v231[9]);
  v187 = [v183 identifier];
  v188 = sub_24F92B0D8();
  v190 = v189;

  *v185 = v188;
  v185[1] = v190;
  sub_24EAC2650(v227, v185 + v233);
  v191 = [v241 uniqueId];
  v192 = sub_24F92B0D8();
  v194 = v193;

  v195 = (v185 + v184[6]);
  *v195 = v192;
  v195[1] = v194;
  v196 = (v185 + v184[7]);
  v197 = v228;
  *v196 = v243;
  v196[1] = v197;
  *v186 = 0;
  v186[1] = 0;
  v198 = v234;
  sub_24E640000(*v234, *(v234 + 1), v234[16]);
  *v198 = 0;
  *(v198 + 1) = 0;
  v198[16] = -1;
  v199 = v244;
  v248.n128_u64[0] = v180;
  v248.n128_u64[1] = v244;
  *v249 = v181;
  *&v249[8] = v245;
  *&v249[24] = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0, &qword_24F93B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v243 = v181;

  v201 = *(&v245 + 1);
  v202 = v182;
  v203 = v180;
  v204 = v199;
  sub_24F26E39C(v230, (inited + 32));
  v205 = v207;
  sub_24F4B6440(&v248, inited, 0, v207);

  sub_24E601704(v227, &qword_27F22DF80, &unk_24F942E50);
  v215(v205, 0, 1, v216);
  sub_24F1416E4(v205, v185 + v235);
  *(v185 + v184[12]) = v246;

  v206 = v238;
  sub_24F2CC85C(v185, v238, type metadata accessor for SocialUserGroup);
  (*(v229 + 56))(v206, 0, 1, v184);
  return sub_24F2CC8C4(v185, type metadata accessor for SocialUserGroup);
}

long double sub_24F2C65AC(unsigned __int8 *a1)
{
  type metadata accessor for Score(0);
  sub_24F91F5C8();
  v4 = *a1;
  if (v4 <= 2)
  {
    v7 = v1 + 13;
    if (v4 != 1)
    {
      v7 = v1 + 14;
    }

    if (*a1)
    {
      v6 = v7;
    }

    else
    {
      v6 = v1 + 12;
    }
  }

  else if (*a1 > 4u)
  {
    if (v4 == 5)
    {
      v6 = v1 + 17;
    }

    else
    {
      v6 = v1 + 18;
    }
  }

  else
  {
    v5 = v4 == 3;
    v6 = v1 + 15;
    if (!v5)
    {
      v6 = v1 + 16;
    }
  }

  v8 = *v6;
  v9 = v1 + 19;
  v10 = a1[1];
  v11 = v1 + 22;
  v12 = v1 + 23;
  if (v10 != 4)
  {
    v12 = v1 + 24;
  }

  if (v10 != 3)
  {
    v11 = v12;
  }

  v13 = v1 + 20;
  if (v10 != 1)
  {
    v13 = v1 + 21;
  }

  if (a1[1])
  {
    v9 = v13;
  }

  if (a1[1] > 2u)
  {
    v9 = v11;
  }

  v14 = *v9;
  v15 = v1 + 25;
  v16 = v1 + 27;
  if (a1[2] != 2)
  {
    v16 = v1 + 28;
  }

  if (a1[2])
  {
    v15 = v1 + 26;
  }

  if (a1[2] > 1u)
  {
    v15 = v16;
  }

  v17 = *v15;
  return exp(v3 * 0.693147181 / v1[11]) * v8 * v14 * v17;
}

unint64_t sub_24F2C66F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, NSObject *a6, uint64_t a7)
{
  v8 = v7;
  v718 = a7;
  v725 = a6;
  v682 = a5;
  v637 = a4;
  v629 = a3;
  v647 = a1;
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E200, &unk_24F93A8F0);
  v671 = *(v694 - 8);
  MEMORY[0x28223BE20](v694);
  v685 = &v621 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v684 = &v621 - v12;
  MEMORY[0x28223BE20](v13);
  v670 = &v621 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E208, &qword_24F9DFEA0);
  MEMORY[0x28223BE20](v15 - 8);
  v676 = &v621 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E210, &qword_24F9DFEA8);
  MEMORY[0x28223BE20](v17 - 8);
  v704 = &v621 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v701 = &v621 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  MEMORY[0x28223BE20](v21 - 8);
  v678 = &v621 - v22;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v632 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v669 = &v621 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  MEMORY[0x28223BE20](v24 - 8);
  v677 = &v621 - v25;
  *&v721 = COERCE_DOUBLE(type metadata accessor for Player.LastPlayedTogetherInfo(0));
  v631 = *(v721 - 8);
  MEMORY[0x28223BE20](v721);
  v668 = &v621 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0);
  v711 = *(v710 - 8);
  MEMORY[0x28223BE20](v710);
  v689 = &v621 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v697 = &v621 - v29;
  MEMORY[0x28223BE20](v30);
  v688 = &v621 - v31;
  MEMORY[0x28223BE20](v32);
  v675 = &v621 - v33;
  MEMORY[0x28223BE20](v34);
  v665 = &v621 - v35;
  MEMORY[0x28223BE20](v36);
  v715 = (&v621 - v37);
  MEMORY[0x28223BE20](v38);
  v653 = &v621 - v39;
  v712 = type metadata accessor for Score(0);
  v662 = *(v712 - 8);
  MEMORY[0x28223BE20](v712);
  v692 = &v621 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v700 = &v621 - v42;
  MEMORY[0x28223BE20](v43);
  v707 = &v621 - v44;
  MEMORY[0x28223BE20](v45);
  v674 = &v621 - v46;
  MEMORY[0x28223BE20](v47);
  v644 = &v621 - v48;
  MEMORY[0x28223BE20](v49);
  v626 = &v621 - v50;
  MEMORY[0x28223BE20](v51);
  v656 = &v621 - v52;
  MEMORY[0x28223BE20](v53);
  v655 = &v621 - v54;
  MEMORY[0x28223BE20](v55);
  v664 = &v621 - v56;
  MEMORY[0x28223BE20](v57);
  *&v714 = &v621 - v58;
  MEMORY[0x28223BE20](v59);
  v652 = &v621 - v60;
  isa = type metadata accessor for Player(0);
  v734 = *(isa - 8);
  MEMORY[0x28223BE20](isa);
  v705 = (&v621 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62);
  v642 = &v621 - v63;
  MEMORY[0x28223BE20](v64);
  v623 = &v621 - v65;
  MEMORY[0x28223BE20](v66);
  v687 = (&v621 - v67);
  MEMORY[0x28223BE20](v68);
  v693 = (&v621 - v69);
  MEMORY[0x28223BE20](v70);
  v730 = &v621 - v71;
  MEMORY[0x28223BE20](v72);
  v729 = (&v621 - v73);
  MEMORY[0x28223BE20](v74);
  v667 = &v621 - v75;
  MEMORY[0x28223BE20](v76);
  v666 = &v621 - v77;
  v78 = type metadata accessor for SocialUser(0);
  v708 = *(v78 - 8);
  MEMORY[0x28223BE20](v78 - 8);
  v719 = (&v621 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v80);
  *&v736 = &v621 - v81;
  MEMORY[0x28223BE20](v82);
  *&v722 = &v621 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230, &qword_24F9536F8);
  MEMORY[0x28223BE20](v84 - 8);
  v686 = &v621 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v713 = (&v621 - v87);
  MEMORY[0x28223BE20](v88);
  v651 = &v621 - v89;
  v720 = type metadata accessor for SocialUserGroup(0);
  v645 = *(v720 - 8);
  MEMORY[0x28223BE20](v720);
  v699 = &v621 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v690 = &v621 - v92;
  MEMORY[0x28223BE20](v93);
  v696 = &v621 - v94;
  MEMORY[0x28223BE20](v95);
  v727 = (&v621 - v96);
  MEMORY[0x28223BE20](v97);
  v660 = &v621 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v99 - 8);
  v628 = &v621 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v627 = &v621 - v102;
  MEMORY[0x28223BE20](v103);
  *&v737 = &v621 - v104;
  MEMORY[0x28223BE20](v105);
  v738 = &v621 - v106;
  v107 = type metadata accessor for Game(0);
  v741 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v641 = (&v621 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v109);
  v735 = (&v621 - v110);
  MEMORY[0x28223BE20](v111);
  v113 = (&v621 - v112);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v114 - 8);
  v643 = &v621 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v118 = &v621 - v117;
  MEMORY[0x28223BE20](v119);
  v121 = &v621 - v120;
  v724 = 0;
  v726 = sub_24F91F648();
  v702 = *(v726 - 8);
  MEMORY[0x28223BE20](v726);
  v636 = &v621 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v123);
  v633 = &v621 - v124;
  MEMORY[0x28223BE20](v125);
  v649 = &v621 - v126;
  MEMORY[0x28223BE20](v127);
  v634 = &v621 - v128;
  MEMORY[0x28223BE20](v129);
  v650 = &v621 - v130;
  MEMORY[0x28223BE20](v131);
  v638 = &v621 - v132;
  MEMORY[0x28223BE20](v133);
  v703 = &v621 - v134;
  MEMORY[0x28223BE20](v135);
  v698 = &v621 - v136;
  MEMORY[0x28223BE20](v137);
  v691 = &v621 - v138;
  MEMORY[0x28223BE20](v139);
  v625 = &v621 - v140;
  MEMORY[0x28223BE20](v141);
  v624 = &v621 - v142;
  MEMORY[0x28223BE20](v143);
  v654 = &v621 - v144;
  MEMORY[0x28223BE20](v145);
  v147 = &v621 - v146;
  MEMORY[0x28223BE20](v148);
  v728 = &v621 - v149;
  MEMORY[0x28223BE20](v150);
  v740 = &v621 - v151;
  MEMORY[0x28223BE20](v152);
  *&v723 = &v621 - v153;
  MEMORY[0x28223BE20](v154);
  v732 = (&v621 - v155);
  MEMORY[0x28223BE20](v156);
  v659 = &v621 - v157;
  MEMORY[0x28223BE20](v158);
  v635 = &v621 - v159;
  sub_24F91F638();
  v683 = v121;
  v160 = v121;
  v161 = v741;
  sub_24E60169C(a2, v160, &qword_27F216FE0, &unk_24F959350);
  v162 = a2;
  v163 = v725;
  sub_24E60169C(v162, v118, &qword_27F216FE0, &unk_24F959350);
  v164 = *(v161 + 48);
  v680 = v161 + 48;
  v681 = v107;
  v679 = v164;
  v165 = v164(v118, 1, v107);
  v630 = v147;
  if (v165 == 1)
  {
    sub_24E601704(v118, &qword_27F216FE0, &unk_24F959350);
  }

  else
  {
    sub_24F2CC924(v118, v113, type metadata accessor for Game);
    v166 = sub_24F4D36F8(*v113, v113[1], v163);
    sub_24F2CC8C4(v113, type metadata accessor for Game);
    if (v166)
    {
      v167 = v683;
      sub_24E601704(v683, &qword_27F216FE0, &unk_24F959350);
      (*(v161 + 56))(v167, 1, 1, v681);
    }
  }

  v168 = v726;
  v169 = v721;
  v170 = v705;
  v171 = v738;
  if (qword_27F211458 != -1)
  {
    goto LABEL_371;
  }

  while (1)
  {
    v172 = sub_24F9220D8();
    v173 = __swift_project_value_buffer(v172, qword_27F39E958);
    sub_24E60169C(v647, v171, &unk_27F23E1F0, &unk_24F9549C0);
    v706 = v173;
    v174 = sub_24F9220B8();
    v175 = sub_24F92BD98();
    v176 = os_log_type_enabled(v174, v175);
    v739 = v8;
    v177 = ChallengeInfo;
    if (v176)
    {
      v178 = swift_slowAlloc();
      v741 = swift_slowAlloc();
      v747.n128_u64[0] = v741;
      *v178 = 136380931;
      v179 = *&v737;
      sub_24E60169C(v171, *&v737, &unk_27F23E1F0, &unk_24F9549C0);
      v180 = isa;
      if ((*(v734 + 48))(v179, 1, isa) == 1)
      {
        sub_24E601704(v179, &unk_27F23E1F0, &unk_24F9549C0);
        v181 = 0xE100000000000000;
        v182 = 45;
      }

      else
      {
        v183 = (v179 + *(v180 + 28));
        v184 = v179;
        v182 = *v183;
        v181 = v183[1];

        sub_24F2CC8C4(v184, type metadata accessor for Player);
      }

      sub_24E601704(v171, &unk_27F23E1F0, &unk_24F9549C0);
      v185 = sub_24E7620D4(v182, v181, &v747);

      *(v178 + 4) = v185;
      *(v178 + 12) = 2081;
      v186 = v683;
      swift_beginAccess();
      if (v679(v186, 1, v681))
      {
        v171 = 0xE100000000000000;
        v187 = 45;
        v177 = ChallengeInfo;
        v169 = v721;
      }

      else
      {
        v188 = v735;
        sub_24F2CC85C(v186, v735, type metadata accessor for Game);
        if (v188[7])
        {
          v189 = v188[6];
          v171 = v188[7];
        }

        else
        {
          v189 = v188[4];
          v171 = v188[5];
        }

        v177 = ChallengeInfo;
        v169 = v721;

        sub_24F2CC8C4(v188, type metadata accessor for Game);
        v187 = v189;
        v8 = v739;
      }

      v190 = sub_24E7620D4(v187, v171, &v747);

      *(v178 + 14) = v190;
      _os_log_impl(&dword_24E5DD000, v174, v175, "Calculating suggestions for player %{private}s in game %{private}s…", v178, 0x16u);
      v191 = v741;
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v191, -1, -1);
      MEMORY[0x2530542D0](v178, -1, -1);

      v170 = v705;
    }

    else
    {

      sub_24E601704(v171, &unk_27F23E1F0, &unk_24F9549C0);
    }

    v663 = sub_24E60DB34(MEMORY[0x277D84F90]);
    v752 = v663;
    v192 = v693;
    if (v682 != 2 && (v682 & 1) != 0)
    {
      v193 = MEMORY[0x277D84F90];
      goto LABEL_130;
    }

    sub_24F91F638();
    v194 = v8;
    v195 = *(v8 + 264);
    v197 = *(v195 + 64);
    v170 = v195 + 64;
    v196 = v197;
    v198 = 1 << *(*(v8 + 264) + 32);
    if (v198 < 64)
    {
      v199 = ~(-1 << v198);
    }

    else
    {
      v199 = -1;
    }

    v200 = v199 & v196;
    v731 = *(v8 + 264);

    swift_beginAccess();
    v201 = 0;
    v202 = (v198 + 63) >> 6;
    v741 = &v725[7];
    *&v716 = v645 + 48;
    v709 = (v702 + 16);
    v717 = v702 + 8;
    v735 = MEMORY[0x277D84F90];
    v672 = v202;
    v673 = v170;
    while (2)
    {
      if (v200)
      {
        goto LABEL_32;
      }

      do
      {
        v203 = v201 + 1;
        if (__OFADD__(v201, 1))
        {
          goto LABEL_365;
        }

        if (v203 >= v202)
        {

          v8 = v194;
          v217 = *(v194 + 240);
          if (!(v217 >> 62))
          {
            v170 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_89;
          }

          goto LABEL_373;
        }

        v200 = *(v170 + 8 * v203);
        ++v201;
      }

      while (!v200);
      v201 = v203;
LABEL_32:
      v204 = __clz(__rbit64(v200));
      v200 &= v200 - 1;
      v205 = v204 | (v201 << 6);
      v206 = (*(*&v731 + 48) + 16 * v205);
      v171 = *v206;
      v207 = v206[1];
      v208 = *(*(*&v731 + 56) + 8 * v205);
      v209 = v725;
      if (v725[2].isa)
      {
        sub_24F92D068();

        v8 = v208;

        sub_24F92B218();
        v210 = sub_24F92D0B8();
        v211 = -1 << LOBYTE(v209[4].isa);
        v212 = v210 & ~v211;
        if (((*(v741 + ((v212 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v212) & 1) == 0)
        {
          goto LABEL_43;
        }

        v213 = ~v211;
        while (1)
        {
          v214 = (v725[6].isa + 16 * v212);
          v215 = *v214 == v171 && v214[1] == v207;
          if (v215 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v212 = (v212 + 1) & v213;
          if (((*(v741 + ((v212 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v212) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v194 = v739;
LABEL_26:

        v202 = v672;
        v170 = v673;
        continue;
      }

      break;
    }

    v8 = v208;

LABEL_43:
    v216 = v683;
    if (v679(v683, 1, v681))
    {

      v194 = v739;
      goto LABEL_45;
    }

    v194 = v739;
    if (*v216 == v171 && v216[1] == v207)
    {

      v661 = 0;
    }

    else
    {
      v218 = sub_24F92CE08();

      v661 = 0;
      if ((v218 & 1) == 0)
      {
LABEL_45:
        v661 = 1;
      }
    }

    v170 = v732;
    if (v8 >> 62)
    {
      v217 = sub_24F92C738();
      v219 = v217;
      if (!v217)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v219 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v219)
      {
        goto LABEL_26;
      }
    }

    v171 = 0;
    v648 = v8 & 0xC000000000000001;
    v621 = v8 + 32;
    v622 = v8 & 0xFFFFFFFFFFFFFF8;
    v639 = v219;
    v640 = v8;
    while (2)
    {
      if (v648)
      {
        v220 = MEMORY[0x253052270](v171, v8);
        goto LABEL_60;
      }

      if (v171 < *(v622 + 16))
      {
        v220 = *(v621 + 8 * v171);
LABEL_60:
        v169 = v220;
        v221 = __OFADD__(v171++, 1);
        if (v221)
        {
          goto LABEL_368;
        }

        v222 = [v220 date];
        if (!v222)
        {

          v169 = v721;
          if (v171 == v219)
          {
            goto LABEL_26;
          }

          continue;
        }

        v658 = v171;
        v223 = v222;
        sub_24F91F608();

        [v169 duration];
        sub_24F91F568();
        v224 = *(v194 + 248);

        v646 = sub_24F4D429C(v169, v224);

        v225 = *(v194 + 320);
        v753[0] = *(v194 + 304);
        v753[1] = v225;
        v754 = *(v194 + 336);
        v760 = v753[0];
        v761 = v225;
        v762[0] = v754;
        v226 = *(v194 + 32);
        v737 = *(v194 + 24);
        v227 = v194;
        v738 = v226;
        v229 = *(v194 + 40);
        v228 = *(v194 + 48);
        v230 = *(v194 + 56);
        v657 = *(v227 + 64);
        v747.n128_f64[0] = v737;
        v747.n128_u64[1] = v226;
        v748 = v229;
        v749 = v228;
        v750 = v230;
        v751 = v657;
        v231 = v169;
        v232 = v725;

        sub_24E60169C(&v760, v755, &unk_27F23E1A0, &qword_24F9976C0);
        sub_24E60169C(&v760 + 8, v755, &unk_27F23E1A0, &qword_24F9976C0);
        sub_24E60169C(&v761, v755, &unk_27F23E1A0, &qword_24F9976C0);
        sub_24E60169C(&v761 + 8, v755, &unk_27F23E1A0, &qword_24F9976C0);
        sub_24E60169C(v762, v755, &unk_27F22E000, &unk_24F984240);
        v233 = v229;

        v234 = v230;
        v235 = v657;
        v236 = *&v737;
        v237 = v738;
        v238 = v651;
        sub_24F2C4AEC(v231, v232, v718, v753, &v747, 0, v651);
        v239 = v720;
        if ((**&v716)(v238, 1, v720) == 1)
        {

          v240 = *v717;
          v168 = v726;
          (*v717)(v723, v726);
          v241 = v732;
          (v240)(v732, v168);
          v217 = sub_24E601704(v238, &unk_27F23E230, &qword_24F9536F8);
          v194 = v739;
          v169 = v721;
          v170 = v241;
          goto LABEL_85;
        }

        v657 = v231;
        v242 = v660;
        sub_24F2CC924(v238, v660, type metadata accessor for SocialUserGroup);
        v243 = *(v242 + *(v239 + 48));
        v244 = *(v243 + 16);
        v169 = v721;
        v245 = *&v722;
        if (!v244)
        {
          v738 = MEMORY[0x277D84F90];
          v248 = v739;
LABEL_78:
          v262 = (v646 & 1) == 0;
          v263 = v248;
          v264 = v724;
          v265 = sub_24F2CF568(v738, v263);
          v724 = v264;

          if (v265 == 4)
          {
            v265 = 3;
          }

          v266 = v652;
          v168 = v726;
          (*v709)(&v652[*(v712 + 28)], v723, v726);
          *v266 = v262;
          v266[1] = v661;
          v266[2] = v265;
          v267 = *(v710 + 48);
          v268 = v653;
          sub_24F2CC85C(v266, v653, type metadata accessor for Score);
          sub_24F2CC85C(v660, v268 + v267, type metadata accessor for SocialUserGroup);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v735 = sub_24E618B0C(0, v735[2] + 1, 1, v735);
          }

          v269 = v657;
          v271 = v735[2];
          v270 = v735[3];
          if (v271 >= v270 >> 1)
          {
            v735 = sub_24E618B0C((v270 > 1), v271 + 1, 1, v735);
          }

          sub_24F2CC8C4(v652, type metadata accessor for Score);
          v272 = *v717;
          (*v717)(v723, v168);
          v273 = v732;
          (v272)(v732, v168);
          v274 = v735;
          v735[2] = v271 + 1;
          v170 = v273;
          sub_24E6009C8(v653, v274 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v271, &qword_27F2138C0, &qword_24F9DFEC0);
          v217 = sub_24F2CC8C4(v660, type metadata accessor for SocialUserGroup);
          v194 = v739;
LABEL_85:
          v219 = v639;
          v8 = v640;
          v171 = v658;
          if (v658 == v639)
          {
            goto LABEL_26;
          }

          continue;
        }

        v246 = v708;
        v247 = v243 + ((*(v708 + 80) + 32) & ~*(v708 + 80));
        v248 = v739;
        swift_beginAccess();
        v249 = *(v246 + 72);
        v738 = MEMORY[0x277D84F90];
        v737 = v249;
        while (2)
        {
          sub_24F2CC85C(v247, v245, type metadata accessor for SocialUser);
          v250 = *(v245 + 24);
          if (v250)
          {
            v251 = *(v248 + 288);
            if (*(v251 + 16))
            {
              v252 = v245;
              v253 = *(v245 + 16);

              v254 = sub_24E76D644(v253, v250);
              if (v255)
              {
                v256 = v667;
                sub_24F2CC85C(*(v251 + 56) + *(v734 + 72) * v254, v667, type metadata accessor for Player);

                v257 = v666;
                sub_24F2CC924(v256, v666, type metadata accessor for Player);
                v258 = *(v257 + *(isa + 76));
                sub_24F2CC8C4(v257, type metadata accessor for Player);
                sub_24F2CC8C4(v252, type metadata accessor for SocialUser);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v738 = sub_24E618B58(0, *(v738 + 16) + 1, 1, v738);
                }

                v169 = v721;
                v249 = v737;
                v260 = *(v738 + 16);
                v259 = *(v738 + 24);
                if (v260 >= v259 >> 1)
                {
                  v738 = sub_24E618B58((v259 > 1), v260 + 1, 1, v738);
                }

                v261 = v738;
                *(v738 + 16) = v260 + 1;
                *(v261 + v260 + 32) = 2 - v258;
                v248 = v739;
                v245 = *&v722;
LABEL_68:
                v247 += *&v249;
                if (!--v244)
                {
                  goto LABEL_78;
                }

                continue;
              }

              v245 = v252;
              v249 = v737;
            }
          }

          break;
        }

        sub_24F2CC8C4(v245, type metadata accessor for SocialUser);
        v169 = v721;
        goto LABEL_68;
      }

      break;
    }

    __break(1u);
LABEL_373:
    v619 = v217;
    *&v170 = COERCE_DOUBLE(sub_24F92C738());
    v217 = v619;
LABEL_89:
    v193 = v735;
    if (*&v170 != 0.0)
    {
      v738 = v217 & 0xC000000000000001;
      *&v723 = v217 & 0xFFFFFFFFFFFFFF8;
      *&v722 = v217 + 32;
      v732 = v217;

      v275 = v170;
      while (1)
      {
        v221 = __OFSUB__(v275, 1);
        v276 = v275 - 1;
        if (v221)
        {
          break;
        }

        v741 = v276;
        if (v738)
        {
          v277 = COERCE_DOUBLE(MEMORY[0x253052270]());
        }

        else
        {
          if ((v276 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_363:
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
            goto LABEL_366;
          }

          if (v276 >= *(v723 + 16))
          {
            goto LABEL_363;
          }

          *&v277 = *(*&v722 + 8 * v276);
        }

        *&v170 = v277;
        v278 = *(v8 + 256);

        v171 = sub_24F4D429C(v170, v278);

        if ((v171 & 1) != 0 || (v279 = [v170 date]) == 0)
        {
        }

        else
        {
          v735 = v193;
          v280 = v279;
          sub_24F91F608();

          [v170 duration];
          sub_24F91F568();
          v281 = *(v8 + 320);
          v755[0] = *(v8 + 304);
          v755[1] = v281;
          v756 = *(v8 + 336);
          v757 = v755[0];
          v758 = v281;
          v759 = v756;
          v282 = *(v8 + 24);
          v731 = *(v8 + 32);
          v284 = *(v8 + 40);
          v283 = *(v8 + 48);
          v286 = *(v8 + 56);
          v285 = *(v8 + 64);
          v747.n128_u64[0] = v282;
          v747.n128_f64[1] = v731;
          v748 = v284;
          v749 = v283;
          v750 = v286;
          v751 = v285;
          v737 = COERCE_DOUBLE(v170);
          v287 = v725;

          v288 = v718;

          sub_24E60169C(&v757, v746, &unk_27F23E1A0, &qword_24F9976C0);
          sub_24E60169C(&v757 + 8, v746, &unk_27F23E1A0, &qword_24F9976C0);
          sub_24E60169C(&v758, v746, &unk_27F23E1A0, &qword_24F9976C0);
          sub_24E60169C(&v758 + 8, v746, &unk_27F23E1A0, &qword_24F9976C0);
          sub_24E60169C(&v759, v746, &unk_27F22E000, &unk_24F984240);
          v289 = v284;

          v290 = v286;
          v291 = v285;
          v292 = v282;
          v171 = *&v737;
          v293 = *&v731;
          v294 = v713;
          sub_24F2C4AEC(v171, v287, v288, v755, &v747, 0, v713);
          v295 = v720;
          if ((**&v716)(v294, 1, v720) != 1)
          {
            v297 = v727;
            sub_24F2CC924(v294, v727, type metadata accessor for SocialUserGroup);
            v298 = *(v297 + *(v295 + 48));
            v299 = *(v298 + 16);
            v300 = v736;
            if (!v299)
            {
              v305 = MEMORY[0x277D84F90];
              v303 = v739;
              v306 = v740;
LABEL_117:
              v318 = v303;
              v319 = v724;
              v320 = sub_24F2CF568(v305, v318);
              v724 = v319;

              if (v320 == 4)
              {
                v320 = 3;
              }

              v321 = *&v714;
              v168 = v726;
              (*v709)(*&v714 + *(v712 + 28), v728, v726);
              *v321 = 1286;
              *(v321 + 2) = v320;
              v322 = *(v710 + 48);
              v323 = v321;
              v324 = v715;
              sub_24F2CC85C(v323, v715, type metadata accessor for Score);
              sub_24F2CC85C(v727, v324 + v322, type metadata accessor for SocialUserGroup);
              v193 = v735;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v193 = sub_24E618B0C(0, v193[2] + 1, 1, v193);
              }

              v169 = v721;
              v325 = v737;
              v327 = v193[2];
              v326 = v193[3];
              if (v327 >= v326 >> 1)
              {
                v193 = sub_24E618B0C((v326 > 1), v327 + 1, 1, v193);
              }

              sub_24F2CC8C4(*&v714, type metadata accessor for Score);
              v171 = v717;
              v328 = *v717;
              v170 = v728;
              (*v717)(v728, v168);
              (v328)(v306, v168);
              v193[2] = v327 + 1;
              sub_24E6009C8(v715, v193 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v327, &qword_27F2138C0, &qword_24F9DFEC0);
              sub_24F2CC8C4(v727, type metadata accessor for SocialUserGroup);
              v8 = v739;
              goto LABEL_92;
            }

            v301 = v708;
            v302 = v298 + ((*(v708 + 80) + 32) & ~*(v708 + 80));
            v303 = v739;
            swift_beginAccess();
            v304 = *(v301 + 72);
            v305 = MEMORY[0x277D84F90];
            v306 = v740;
            while (2)
            {
              sub_24F2CC85C(v302, v300, type metadata accessor for SocialUser);
              v307 = *(v300 + 24);
              if (v307)
              {
                v308 = *(v303 + 288);
                if (*(v308 + 16))
                {
                  v309 = v300;
                  v310 = *(v300 + 16);

                  v311 = sub_24E76D644(v310, v307);
                  if (v312)
                  {
                    v313 = v730;
                    sub_24F2CC85C(*(v308 + 56) + *(v734 + 72) * v311, v730, type metadata accessor for Player);

                    v314 = v729;
                    sub_24F2CC924(v313, v729, type metadata accessor for Player);
                    v315 = *(v314 + *(isa + 76));
                    sub_24F2CC8C4(v314, type metadata accessor for Player);
                    sub_24F2CC8C4(v309, type metadata accessor for SocialUser);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v305 = sub_24E618B58(0, *(v305 + 2) + 1, 1, v305);
                    }

                    v306 = v740;
                    v317 = *(v305 + 2);
                    v316 = *(v305 + 3);
                    if (v317 >= v316 >> 1)
                    {
                      v305 = sub_24E618B58((v316 > 1), v317 + 1, 1, v305);
                    }

                    *(v305 + 2) = v317 + 1;
                    v305[v317 + 32] = 2 - v315;
                    v303 = v739;
                    v300 = v736;
LABEL_107:
                    v302 += v304;
                    if (!--v299)
                    {
                      goto LABEL_117;
                    }

                    continue;
                  }

                  v300 = v309;
                  v306 = v740;
                }
              }

              break;
            }

            sub_24F2CC8C4(v300, type metadata accessor for SocialUser);
            goto LABEL_107;
          }

          v296 = *v717;
          v170 = v728;
          v168 = v726;
          (*v717)(v728, v726);
          (v296)(v740, v168);
          sub_24E601704(v294, &unk_27F23E230, &qword_24F9536F8);
          v193 = v735;
          v169 = v721;
          v8 = v739;
        }

LABEL_92:
        v275 = v741;
        if (!v741)
        {
          goto LABEL_125;
        }
      }

      __break(1u);
LABEL_125:
    }

    v171 = v630;
    (*v709)(v630, v659, v168);
    v329 = sub_24F9220B8();
    v330 = sub_24F92BDA8();
    v331 = os_log_type_enabled(v329, v330);
    v192 = v693;
    if (v331)
    {
      v332 = swift_slowAlloc();
      v741 = v329;
      v333 = v332;
      *v332 = 134217984;
      LODWORD(v740) = v330;
      sub_24F91F5C8();
      v335 = v334;
      v336 = *v717;
      (*v717)(v171, v168);
      *(v333 + 1) = -v335;
      v171 = v741;
      _os_log_impl(&dword_24E5DD000, v741, v740, "\tRecent call processing: %fs", v333, 0xCu);
      MEMORY[0x2530542D0](v333, -1, -1);
    }

    else
    {

      v336 = *v717;
      (*v717)(v171, v168);
    }

    (v336)(v659, v168);
    v177 = ChallengeInfo;
    v170 = v705;
LABEL_130:
    sub_24F91F638();
    v337 = *(v8 + 272);
    v729 = *(v337 + 16);
    if (*&v729 != 0.0)
    {
      v338 = v734;
      v728 = (v337 + ((*(v734 + 80) + 32) & ~*(v734 + 80)));
      v730 = v337;

      swift_beginAccess();
      swift_beginAccess();
      v727 = (v645 + 48);
      v717 = v631 + 48;
      v709 = (v338 + 48);
      v339 = 0;
      *&v716 = v632 + 48;
      v732 = (v702 + 16);
      *&v736 = v702 + 32;
      v740 = v702 + 8;
      v715 = (v662 + 48);
      *&v340 = 136315138;
      v723 = v340;
      while (1)
      {
        if (v339 >= *(v730 + 16))
        {
          goto LABEL_367;
        }

        v341 = *(v734 + 72);
        v741 = v339;
        sub_24F2CC85C(&v728[v341 * v339], v192, type metadata accessor for Player);
        v342 = v687;
        sub_24F2CC85C(v192, v687, type metadata accessor for Player);
        v343 = sub_24F9220B8();
        v344 = sub_24F92BDA8();
        v345 = os_log_type_enabled(v343, v344);
        v735 = v193;
        if (v345)
        {
          v346 = swift_slowAlloc();
          v347 = swift_slowAlloc();
          v742 = v347;
          *v346 = v723;
          v348 = *v342;
          v349 = v342[1];

          sub_24F2CC8C4(v342, type metadata accessor for Player);
          v350 = sub_24E7620D4(v348, v349, &v742);
          v193 = v735;

          *(v346 + 4) = v350;
          v169 = v721;
          _os_log_impl(&dword_24E5DD000, v343, v344, "\tProcessing friend %s…", v346, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v347);
          v351 = v347;
          v177 = ChallengeInfo;
          MEMORY[0x2530542D0](v351, -1, -1);
          v352 = v346;
          v170 = v705;
          MEMORY[0x2530542D0](v352, -1, -1);
        }

        else
        {

          sub_24F2CC8C4(v342, type metadata accessor for Player);
        }

        v171 = v686;
        v192 = v693;
        sub_24F2C4650(v693, v686);
        if ((*v727)(v171, 1, v720) == 1)
        {
          sub_24E601704(v171, &unk_27F23E230, &qword_24F9536F8);
          sub_24F2CC85C(v192, v170, type metadata accessor for Player);
          v353 = sub_24F9220B8();
          v171 = sub_24F92BDB8();
          if (os_log_type_enabled(v353, v171))
          {
            v354 = swift_slowAlloc();
            v355 = swift_slowAlloc();
            v742 = v355;
            *v354 = v723;
            v356 = *v705;
            v357 = v705[1];

            sub_24F2CC8C4(v705, type metadata accessor for Player);
            v358 = sub_24E7620D4(v356, v357, &v742);
            v193 = v735;

            *(v354 + 4) = v358;
            v169 = v721;
            _os_log_impl(&dword_24E5DD000, v353, v171, "\t\tUnable to make social user group for friend %s", v354, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v355);
            v359 = v355;
            v177 = ChallengeInfo;
            MEMORY[0x2530542D0](v359, -1, -1);
            v360 = v354;
            v170 = v705;
            MEMORY[0x2530542D0](v360, -1, -1);
          }

          else
          {

            sub_24F2CC8C4(v170, type metadata accessor for Player);
          }

          goto LABEL_133;
        }

        sub_24F2CC924(v171, v696, type metadata accessor for SocialUserGroup);
        if (v682)
        {
          v361 = v192[1];
          v362 = *v192 & 0xFFFFFFFFFFFFLL;
          if ((v361 & 0x2000000000000000) != 0)
          {
            v362 = HIBYTE(v361) & 0xF;
          }

          if (v362)
          {
            v363 = v664;
            sub_24F91F618();
            *v363 = 1285;
            *(v363 + 2) = 1;
            v364 = *(v710 + 48);
            v365 = v363;
            v366 = v665;
            sub_24F2CC85C(v365, v665, type metadata accessor for Score);
            sub_24F2CC85C(v696, v366 + v364, type metadata accessor for SocialUserGroup);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v193 = sub_24E618B0C(0, v193[2] + 1, 1, v193);
            }

            v368 = v193[2];
            v367 = v193[3];
            if (v368 >= v367 >> 1)
            {
              v193 = sub_24E618B0C((v367 > 1), v368 + 1, 1, v193);
            }

            sub_24F2CC8C4(v664, type metadata accessor for Score);
            sub_24F2CC8C4(v696, type metadata accessor for SocialUserGroup);
            v193[2] = v368 + 1;
            v369 = v193 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v368;
            v370 = v665;
LABEL_262:
            sub_24E6009C8(v370, v369, &qword_27F2138C0, &qword_24F9DFEC0);
            goto LABEL_263;
          }
        }

        LODWORD(v718) = 2 - *(v192 + *(isa + 76));
        v371 = v677;
        sub_24E60169C(v192 + *(isa + 64), v677, &unk_27F23E220, &unk_24F9F2E30);
        if ((*v717)(v371, 1, v169) == 1)
        {
          sub_24E601704(v371, &unk_27F23E220, &unk_24F9F2E30);
          v731 = MEMORY[0x277D84F90];
          v372 = v678;
          goto LABEL_177;
        }

        v373 = v371;
        v374 = v668;
        sub_24F2CC924(v373, v668, type metadata accessor for Player.LastPlayedTogetherInfo);
        v375 = *v374;
        v376 = v374[1];
        if (sub_24F4D36F8(*v374, v376, v725))
        {
          sub_24F2CC8C4(v374, type metadata accessor for Player.LastPlayedTogetherInfo);
          v731 = MEMORY[0x277D84F90];
          v372 = v678;
          v169 = v721;
          goto LABEL_177;
        }

        v377 = v683;
        if (!v679(v683, 1, v681) && (v375 == *v377 && v376 == v377[1] || (sub_24F92CE08() & 1) != 0))
        {
          v380 = 0;
        }

        else
        {
          v378 = v668;
          v379 = *(v668 + 96);
          if (*(v668 + 104) == 1)
          {
            if (v379)
            {
              v380 = 1;
            }

            else
            {
              v380 = 4;
            }
          }

          else if (v379)
          {
            v381 = v627;
            sub_24E60169C(v647, v627, &unk_27F23E1F0, &unk_24F9549C0);
            if ((*v709)(v381, 1, isa) == 1)
            {
              sub_24E601704(v381, &unk_27F23E1F0, &unk_24F9549C0);
            }

            else
            {
              v382 = v381;
              v383 = v623;
              sub_24F2CC924(v382, v623, type metadata accessor for Player);
              if (*(v378 + 105))
              {
                v384 = v383;
                v385 = isa;
                v386 = *(v384 + *(isa + 56));
                sub_24F2CC8C4(v384, type metadata accessor for Player);
                if ((v386 & 1) == 0)
                {
                  if (*(v192 + *(v385 + 56)))
                  {
                    v380 = 2;
                  }

                  else
                  {
                    v380 = 3;
                  }

                  goto LABEL_174;
                }
              }

              else
              {
                sub_24F2CC8C4(v383, type metadata accessor for Player);
              }
            }

            v380 = 2;
          }

          else
          {
            v380 = 4;
          }
        }

LABEL_174:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v745 = v752;
        sub_24E81FC80(v380, v375, v376, isUniquelyReferenced_nonNull_native);
        v663 = v745;
        v752 = v745;
        swift_endAccess();
        v388 = v655;
        sub_24F91F5D8();
        *v388 = 2;
        v388[1] = v380;
        v388[2] = v718;
        v389 = COERCE_DOUBLE(sub_24E618B30(0, 1, 1, MEMORY[0x277D84F90]));
        v391 = *(*&v389 + 16);
        v390 = *(*&v389 + 24);
        v731 = v389;
        if (v391 >= v390 >> 1)
        {
          v731 = COERCE_DOUBLE(sub_24E618B30((v390 > 1), v391 + 1, 1, *&v731));
        }

        v193 = v735;
        v169 = v721;
        v392 = v731;
        *(*&v731 + 16) = v391 + 1;
        sub_24F2CC924(v655, *&v392 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v391, type metadata accessor for Score);
        sub_24F2CC8C4(v668, type metadata accessor for Player.LastPlayedTogetherInfo);
        v8 = v739;
        v372 = v678;
LABEL_177:
        sub_24E60169C(v192 + *(isa + 68), v372, &unk_27F247220, &unk_24F9DFEB0);
        if ((**&v716)(v372, 1, v177) == 1)
        {
          sub_24E601704(v372, &unk_27F247220, &unk_24F9DFEB0);
          goto LABEL_206;
        }

        v393 = v372;
        v394 = v669;
        sub_24F2CC924(v393, v669, type metadata accessor for Player.LastChallengeInfo);
        v395 = *v394;
        v396 = v394[1];
        if (sub_24F4D36F8(*v394, v396, v725))
        {
          sub_24F2CC8C4(v394, type metadata accessor for Player.LastChallengeInfo);
          v193 = v735;
          v169 = v721;
          goto LABEL_206;
        }

        v397 = v683;
        v398 = v679(v683, 1, v681);
        v399 = v642;
        if (!v398 && (v395 == *v397 && v396 == v397[1] || (sub_24F92CE08() & 1) != 0))
        {
          v402 = 0;
        }

        else
        {
          v400 = v669;
          v401 = *(v669 + 96);
          if (*(v669 + 104) == 1)
          {
            if (v401)
            {
              v402 = 1;
            }

            else
            {
              v402 = 4;
            }
          }

          else if (v401)
          {
            v403 = v628;
            sub_24E60169C(v647, v628, &unk_27F23E1F0, &unk_24F9549C0);
            if ((*v709)(v403, 1, isa) == 1)
            {
              sub_24E601704(v403, &unk_27F23E1F0, &unk_24F9549C0);
            }

            else
            {
              sub_24F2CC924(v403, v399, type metadata accessor for Player);
              if (*(v400 + 105))
              {
                v404 = v399;
                v405 = isa;
                v406 = *(v404 + *(isa + 56));
                sub_24F2CC8C4(v404, type metadata accessor for Player);
                if ((v406 & 1) == 0)
                {
                  if (*(v192 + *(v405 + 56)))
                  {
                    v402 = 2;
                  }

                  else
                  {
                    v402 = 3;
                  }

                  goto LABEL_201;
                }
              }

              else
              {
                sub_24F2CC8C4(v399, type metadata accessor for Player);
              }
            }

            v402 = 2;
          }

          else
          {
            v402 = 4;
          }
        }

LABEL_201:
        swift_beginAccess();
        v407 = swift_isUniquelyReferenced_nonNull_native();
        v745 = v752;
        sub_24E81FC80(v402, v395, v396, v407);
        v663 = v745;
        v752 = v745;
        swift_endAccess();
        v408 = v656;
        sub_24F91F5D8();
        *v408 = 3;
        v408[1] = v402;
        v408[2] = v718;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v731 = COERCE_DOUBLE(sub_24E618B30(0, *(*&v731 + 16) + 1, 1, *&v731));
        }

        v193 = v735;
        v169 = v721;
        v410 = *(*&v731 + 16);
        v409 = *(*&v731 + 24);
        if (v410 >= v409 >> 1)
        {
          v731 = COERCE_DOUBLE(sub_24E618B30((v409 > 1), v410 + 1, 1, *&v731));
        }

        v411 = v731;
        *(*&v731 + 16) = v410 + 1;
        sub_24F2CC924(v656, *&v411 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v410, type metadata accessor for Score);
        sub_24F2CC8C4(v669, type metadata accessor for Player.LastChallengeInfo);
        v8 = v739;
LABEL_206:
        v412 = *(v8 + 296);
        if (!*(v412 + 16))
        {
          v170 = v705;
          goto LABEL_255;
        }

        v414 = *v192;
        v413 = v192[1];

        v415 = sub_24E76D644(v414, v413);
        if ((v416 & 1) == 0)
        {

          v177 = ChallengeInfo;
          v170 = v705;
          goto LABEL_255;
        }

        v737 = *(*(v412 + 56) + 8 * v415);

        v417 = v643;
        v171 = &unk_24F959350;
        sub_24E60169C(v683, v643, &qword_27F216FE0, &unk_24F959350);
        v418 = v679(v417, 1, v681);
        v177 = ChallengeInfo;
        if (v418 == 1)
        {
          sub_24E601704(v417, &qword_27F216FE0, &unk_24F959350);
          v419 = v701;
          v170 = v705;
        }

        else
        {
          v420 = v417;
          v421 = v641;
          sub_24F2CC924(v420, v641, type metadata accessor for Game);
          v422 = v421;
          v423 = *(v421 + 105);
          v419 = v701;
          v170 = v705;
          if (v423 == 1 && *(v192 + *(isa + 56)) == 1)
          {
            v171 = *&v737;
            if (*(*&v737 + 16))
            {
              v424 = sub_24E76D644(*v422, v422[1]);
              v422 = v641;
              v419 = v701;
              if (v425)
              {
                v426 = v702;
                v427 = *(v171 + 56) + *(v702 + 72) * v424;
                v738 = *(v702 + 16);
                (v738)(v625, v427, v168);

                v428 = v624;
                (*(v426 + 32))(v624, v625, v168);
                v429 = v626;
                (v738)(v626 + *(v712 + 28), v428, v168);
                *v429 = 4;
                *(v429 + 2) = v718;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v731 = COERCE_DOUBLE(sub_24E618B30(0, *(*&v731 + 16) + 1, 1, *&v731));
                }

                v431 = *(*&v731 + 16);
                v430 = *(*&v731 + 24);
                if (v431 >= v430 >> 1)
                {
                  v731 = COERCE_DOUBLE(sub_24E618B30((v430 > 1), v431 + 1, 1, *&v731));
                }

                (*v740)(v624, v168);
                v432 = v731;
                *(*&v731 + 16) = v431 + 1;
                sub_24F2CC924(v626, *&v432 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v431, type metadata accessor for Score);
                sub_24F2CC8C4(v641, type metadata accessor for Game);
                v8 = v739;
                goto LABEL_255;
              }
            }
          }

          sub_24F2CC8C4(v422, type metadata accessor for Game);
        }

        if (*(*&v737 + 16))
        {
          v433 = v737;
          sub_24F91F548();
          v713 = 0;
          v434 = 0;
          v436 = *(*&v433 + 64);
          v8 = *&v433 + 64;
          v435 = v436;
          v722 = *&v8;
          v437 = 1 << *(v8 - 32);
          if (v437 < 64)
          {
            v438 = ~(-1 << v437);
          }

          else
          {
            v438 = -1;
          }

          v439 = v438 & v435;
          v440 = ((v437 + 63) >> 6);
          v714 = -2.68156159e154;
          v168 = v736;
          v738 = v440;
LABEL_227:
          v441 = v434;
          while (v439)
          {
            v169 = v441;
LABEL_239:
            v446 = __clz(__rbit64(v439));
            v439 &= v439 - 1;
            v447 = v446 | (v169 << 6);
            v448 = (*(*&v737 + 48) + 16 * v447);
            v449 = *v448;
            v450 = v448[1];
            v451 = v702;
            v452 = v698;
            v453 = v726;
            (*(v702 + 16))(v698, *(*&v737 + 56) + *(v702 + 72) * v447, v726);
            v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E250, &qword_24F9DFEC8);
            v455 = *(v454 + 48);
            v456 = v704;
            *v704 = v449;
            *(v456 + 1) = v450;
            v457 = v452;
            v168 = v736;
            (*(v451 + 32))(&v456[v455], v457, v453);
            (*(*(v454 - 8) + 56))(v456, 0, 1, v454);

            v434 = v169;
            v458 = v456;
            v419 = v701;
LABEL_240:
            sub_24E6009C8(v458, v419, &unk_27F23E210, &qword_24F9DFEA8);
            v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E250, &qword_24F9DFEC8);
            if ((*(*(v459 - 8) + 48))(v419, 1, v459) == 1)
            {

              v469 = sub_24E76C464(v713, *&v714, v663);
              if (v469 == 6)
              {
                v470 = 4;
              }

              else
              {
                v470 = v469;
              }

              v471 = v644;
              v168 = v726;
              (*v732)(&v644[*(v712 + 28)], v691, v726);
              *v471 = 5;
              v471[1] = v470;
              v471[2] = v718;
              v472 = swift_isUniquelyReferenced_nonNull_native();
              v193 = v735;
              if ((v472 & 1) == 0)
              {
                v731 = COERCE_DOUBLE(sub_24E618B30(0, *(*&v731 + 16) + 1, 1, *&v731));
              }

              v177 = ChallengeInfo;
              v169 = v721;
              v170 = v705;
              v192 = v693;
              v474 = *(*&v731 + 16);
              v473 = *(*&v731 + 24);
              if (v474 >= v473 >> 1)
              {
                v731 = COERCE_DOUBLE(sub_24E618B30((v473 > 1), v474 + 1, 1, *&v731));
              }

              (*v740)(v691, v168);
              v475 = v731;
              *(*&v731 + 16) = v474 + 1;
              sub_24F2CC924(v644, *&v475 + ((*(v662 + 80) + 32) & ~*(v662 + 80)) + *(v662 + 72) * v474, type metadata accessor for Score);
              v8 = v739;
              goto LABEL_255;
            }

            v460 = *v419;
            v170 = *(v419 + 8);
            v8 = *v168;
            v461 = v419 + *(v459 + 48);
            v171 = v703;
            v462 = v726;
            (*v168)(v703, v461, v726);
            if (sub_24F4D36F8(v460, v170, v725))
            {
              v442 = *v740;
              v443 = v171;
              v444 = v462;
            }

            else
            {
              v463 = sub_24F91F588();
              v442 = *v740;
              if (v463)
              {
                v466 = v691;
                v467 = v726;
                v442(v691, v726);

                v468 = v466;
                v168 = v736;
                (v8)(v468, v171, v467);
                v713 = v460;
                v714 = *&v170;
                v440 = v738;
                goto LABEL_227;
              }

              v443 = v171;
              v444 = v726;
            }

            v442(v443, v444);

            v441 = v434;
            v440 = v738;
          }

          if (v440 <= v441 + 1)
          {
            v445 = (v441 + 1);
          }

          else
          {
            v445 = v440;
          }

          v434 = v445 - 1;
          while (1)
          {
            v169 = v441 + 1;
            if (__OFADD__(v441, 1))
            {
              goto LABEL_364;
            }

            if (v169 >= v440)
            {
              v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E250, &qword_24F9DFEC8);
              v465 = v704;
              (*(*(v464 - 8) + 56))(v704, 1, 1, v464);
              v458 = v465;
              v439 = 0;
              goto LABEL_240;
            }

            v439 = *(*&v722 + 8 * v169);
            ++v441;
            if (v439)
            {
              goto LABEL_239;
            }
          }
        }

LABEL_255:

        v171 = *&v731;

        v477 = v676;
        v478 = v8;
        v479 = v724;
        sub_24F2BF054(v476, v478, v676);
        v724 = v479;
        swift_bridgeObjectRelease_n();
        if ((*v715)(v477, 1, v712) != 1)
        {
          v480 = v674;
          sub_24F2CC924(v477, v674, type metadata accessor for Score);
          v481 = *(v710 + 48);
          v482 = v480;
          v483 = v675;
          sub_24F2CC85C(v482, v675, type metadata accessor for Score);
          sub_24F2CC85C(v696, v483 + v481, type metadata accessor for SocialUserGroup);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v193 = sub_24E618B0C(0, v193[2] + 1, 1, v193);
          }

          v485 = v193[2];
          v484 = v193[3];
          if (v485 >= v484 >> 1)
          {
            v193 = sub_24E618B0C((v484 > 1), v485 + 1, 1, v193);
          }

          sub_24F2CC8C4(v674, type metadata accessor for Score);
          sub_24F2CC8C4(v696, type metadata accessor for SocialUserGroup);
          v193[2] = v485 + 1;
          v369 = v193 + ((*(v711 + 80) + 32) & ~*(v711 + 80)) + *(v711 + 72) * v485;
          v370 = v675;
          goto LABEL_262;
        }

        sub_24F2CC8C4(v696, type metadata accessor for SocialUserGroup);
        sub_24E601704(v477, &qword_27F23E208, &qword_24F9DFEA0);
LABEL_263:
        v8 = v739;
LABEL_133:
        v339 = v741 + 1;
        sub_24F2CC8C4(v192, type metadata accessor for Player);
        if (v339 == v729)
        {

          break;
        }
      }
    }

    v169 = v702;
    v486 = *(v702 + 16);
    v171 = v638;
    v709 = (v702 + 16);
    v705 = v486;
    (v486)(v638, v654, v168);
    v487 = sub_24F9220B8();
    v488 = sub_24F92BDA8();
    v489 = v8;
    if (os_log_type_enabled(v487, v488))
    {
      v490 = v488;
      v491 = swift_slowAlloc();
      *v491 = 134217984;
      sub_24F91F5C8();
      v493 = v492;
      v713 = *(v169 + 8);
      (v713)(v171, v168);
      *(v491 + 4) = -v493;
      _os_log_impl(&dword_24E5DD000, v487, v490, "\tFriend processing: %fs", v491, 0xCu);
      MEMORY[0x2530542D0](v491, -1, -1);
    }

    else
    {

      v713 = *(v169 + 8);
      (v713)(v171, v168);
    }

    v494 = v690;
    sub_24F91F638();
    v495 = MEMORY[0x277D84F90];
    v741 = sub_24E60DC30(MEMORY[0x277D84F90]);
    v8 = v724;
    *&v736 = v193[2];
    v735 = v193;
    if (!v736)
    {
      break;
    }

    *&v170 = 0.0;
    v734 = *(v710 + 48);
    v732 = ((*(v711 + 80) + 32) & ~*(v711 + 80));
    isa = v732 + v193;
    v731 = 0.693147181;
    v738 = v495;
    while (v170 < v193[2])
    {
      v740 = *(v711 + 72);
      v496 = v688;
      sub_24E60169C(isa + v740 * v170, v688, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24F2CC924(v496, v707, type metadata accessor for Score);
      sub_24F2CC924(v496 + v734, v494, type metadata accessor for SocialUserGroup);
      v497 = *(v494 + *(v720 + 48));
      v498 = *(v497 + 16);
      if (v498)
      {
        v724 = v8;
        v742 = MEMORY[0x277D84F90];
        sub_24F4577CC(v498);
        v499 = v497 + ((*(v708 + 80) + 32) & ~*(v708 + 80));
        v500 = *(v708 + 72);
        v501 = v742;
        do
        {
          v502 = v719;
          sub_24F2CC85C(v499, v719, type metadata accessor for SocialUser);
          v503 = *v502;
          v504 = v502[1];

          sub_24F2CC8C4(v502, type metadata accessor for SocialUser);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_24F4578E0(0, *(v501 + 2) + 1, 1);
            v501 = v742;
          }

          v506 = *(v501 + 2);
          v505 = *(v501 + 3);
          if (v506 >= v505 >> 1)
          {
            sub_24F4578E0((v505 > 1), v506 + 1, 1);
            v501 = v742;
          }

          *(v501 + 2) = v506 + 1;
          v507 = &v501[16 * v506];
          *(v507 + 4) = v503;
          *(v507 + 5) = v504;
          v499 += v500;
          --v498;
        }

        while (v498);
        v168 = v726;
        v8 = v724;
      }

      else
      {
        v501 = MEMORY[0x277D84F90];
      }

      v742 = v501;

      sub_24E8C0BD4(&v742);
      v508 = v741;
      v724 = v8;
      if (*&v8 != 0.0)
      {
        goto LABEL_375;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
      v169 = sub_24F92AF68();
      v510 = v509;

      v489 = v739;
      if (v508[2].isa && (v511 = sub_24E76D644(v169, v510), (v512 & 1) != 0))
      {
        v513 = v670;
        sub_24E60169C(v508[7].isa + *(v671 + 72) * v511, v670, &qword_27F23E200, &unk_24F93A8F0);
        v514 = *(v513 + *(v694 + 48));
        sub_24F2CC924(v513, v700, type metadata accessor for Score);
        v515 = v707;
        sub_24F91F5C8();
        v517 = *(v489 + 88);
        v518 = exp(v516 * v731 / v517);
        v520 = *(v489 + 96);
        v519 = *(v489 + 104);
        v522 = *(v489 + 112);
        v521 = *(v489 + 120);
        v523 = *(v489 + 128);
        v524 = *(v489 + 136);
        v525 = *(v489 + 144);
        v526 = *v515;
        *&v723 = v521;
        v722 = v524;
        v737 = v517;
        if (v526 <= 2)
        {
          v524 = v520;
          if (v526)
          {
            v524 = v519;
            if (v526 != 1)
            {
              v524 = v522;
            }
          }
        }

        else if (v526 > 4)
        {
          if (v526 != 5)
          {
            v524 = *&v525;
          }
        }

        else
        {
          v524 = v521;
          if (v526 != 3)
          {
            v524 = *&v523;
          }
        }

        v538 = *(v489 + 152);
        v539 = *(v489 + 160);
        v540 = *(v489 + 168);
        v541 = *(v489 + 176);
        v543 = *(v489 + 184);
        v542 = *(v489 + 192);
        v544 = v707[1];
        *&v730 = v541;
        if (v544 > 2)
        {
          if (v544 != 3)
          {
            v541 = *&v543;
            if (v544 != 4)
            {
              v541 = v542;
            }
          }
        }

        else
        {
          v541 = *&v538;
          if (v544)
          {
            v541 = *&v539;
            if (v544 != 1)
            {
              v541 = *&v540;
            }
          }
        }

        v725 = v543;
        v727 = v539;
        *&v717 = v542;
        v718 = v540;
        v545 = *(v489 + 200);
        v729 = *(v489 + 208);
        v546 = *(v489 + 216);
        v728 = *(v489 + 224);
        v547 = v707[2];
        v716 = v522;
        v715 = v523;
        v714 = *&v525;
        *&v721 = v519;
        if (v547 > 1)
        {
          v549 = v518;
          v548 = v546;
          if (v547 != 2)
          {
            v546 = *&v728;
          }
        }

        else
        {
          v548 = v546;
          v549 = v518;
          v546 = v545;
          if (v547)
          {
            v546 = *&v729;
          }
        }

        v171 = v700;
        sub_24F91F5C8();
        v551 = exp(v550 * v731 / v737);
        v552 = *v171;
        if (v552 <= 2)
        {
          if (*v171)
          {
            v520 = *&v721;
            if (v552 != 1)
            {
              v520 = v716;
            }
          }
        }

        else if (*v171 > 4u)
        {
          v520 = v722;
          if (v552 != 5)
          {
            v520 = v714;
          }
        }

        else
        {
          v520 = *&v723;
          if (v552 != 3)
          {
            v520 = *&v715;
          }
        }

        v553 = *(v700 + 1);
        if (v553 > 2)
        {
          v538 = v730;
          if (v553 != 3)
          {
            v538 = v725;
            if (v553 != 4)
            {
              v538 = v717;
            }
          }
        }

        else if (*(v700 + 1))
        {
          v538 = v727;
          if (v553 != 1)
          {
            v538 = v718;
          }
        }

        if (*(v700 + 2) > 1u)
        {
          v545 = v548;
          if (*(v700 + 2) != 2)
          {
            v545 = *&v728;
          }
        }

        else if (*(v700 + 2))
        {
          v545 = *&v729;
        }

        if (v551 * v520 * *&v538 * v545 >= v549 * v524 * v541 * v546)
        {

          sub_24F2CC8C4(v700, type metadata accessor for Score);
          sub_24F2CC8C4(v707, type metadata accessor for Score);
          v494 = v690;
          sub_24F2CC8C4(v690, type metadata accessor for SocialUserGroup);
          v193 = v735;
          v8 = v724;
        }

        else
        {
          v554 = *(v694 + 48);
          v555 = v684;
          sub_24F2CC85C(v707, v684, type metadata accessor for Score);
          *(v555 + v554) = v514;
          v556 = v555;
          v171 = v685;
          sub_24E6009C8(v556, v685, &qword_27F23E200, &unk_24F93A8F0);
          v557 = swift_isUniquelyReferenced_nonNull_native();
          v742 = v508;
          sub_24E81FDB0(v171, v169, v510, v557);

          v558 = v742;
          v559 = swift_isUniquelyReferenced_nonNull_native();
          v741 = v558;
          if ((v559 & 1) == 0)
          {
            v738 = sub_24ECDE27C(v738);
          }

          v8 = v724;
          sub_24F2CC8C4(v700, type metadata accessor for Score);
          v193 = v735;
          if ((v514 & 0x8000000000000000) != 0)
          {
            goto LABEL_369;
          }

          if (v514 >= *(v738 + 16))
          {
            goto LABEL_370;
          }

          v560 = v732 + v738 + v514 * v740;
          sub_24F2D45C4(v707, v560, type metadata accessor for Score);
          v494 = v690;
          sub_24F2D45C4(v690, &v560[*(v710 + 48)], type metadata accessor for SocialUserGroup);
        }
      }

      else
      {
        v737 = *&v170;
        v527 = *(v694 + 48);
        v528 = v707;
        v529 = v684;
        sub_24F2CC85C(v707, v684, type metadata accessor for Score);
        v530 = v169;
        v169 = v738;
        *(v529 + v527) = *(v738 + 16);
        v531 = v529;
        v532 = v685;
        sub_24E6009C8(v531, v685, &qword_27F23E200, &unk_24F93A8F0);
        v533 = swift_isUniquelyReferenced_nonNull_native();
        v742 = v508;
        sub_24E81FDB0(v532, v530, v510, v533);

        v741 = v742;
        v534 = *(v710 + 48);
        v535 = v528;
        v536 = v697;
        sub_24F2CC85C(v535, v697, type metadata accessor for Score);
        v494 = v690;
        sub_24F2CC85C(v690, v536 + v534, type metadata accessor for SocialUserGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_24E618B0C(0, *(v169 + 16) + 1, 1, v169);
        }

        v193 = v735;
        v8 = v724;
        *&v170 = v737;
        v171 = *(v169 + 16);
        v537 = *(v169 + 24);
        if (v171 >= v537 >> 1)
        {
          v169 = sub_24E618B0C((v537 > 1), v171 + 1, 1, v169);
        }

        sub_24F2CC8C4(v707, type metadata accessor for Score);
        sub_24F2CC8C4(v494, type metadata accessor for SocialUserGroup);
        *(v169 + 16) = v171 + 1;
        v738 = v169;
        sub_24E6009C8(v697, v732 + v169 + v171 * v740, &qword_27F2138C0, &qword_24F9DFEC0);
        v489 = v739;
      }

      if (++v170 == v736)
      {
        goto LABEL_339;
      }
    }

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
    swift_once();
  }

  v738 = v495;
LABEL_339:

  v561 = v634;
  (v705)(v634, v650, v168);
  v562 = sub_24F9220B8();
  v563 = v168;
  v564 = sub_24F92BDA8();
  if (os_log_type_enabled(v562, v564))
  {
    v565 = v561;
    v566 = swift_slowAlloc();
    *v566 = 134217984;
    sub_24F91F5C8();
    v568 = v567;
    (v713)(v565, v563);
    *(v566 + 4) = -v568;
    _os_log_impl(&dword_24E5DD000, v562, v564, "\tDe-Dupe: %fs", v566, 0xCu);
    MEMORY[0x2530542D0](v566, -1, -1);
  }

  else
  {

    (v713)(v561, v563);
  }

  v569 = v692;
  sub_24F91F638();
  v742 = v738;

  sub_24F2CF474(&v742, v489);

  v570 = v699;
  if (*&v8 != 0.0)
  {
    goto LABEL_377;
  }

  *&v732 = 0.0;
  v571 = v742;

  v572 = sub_24F9220B8();
  *&v8 = COERCE_DOUBLE(sub_24F92BDA8());
  if (os_log_type_enabled(v572, v8))
  {
    v573 = swift_slowAlloc();
    *v573 = 0;
    _os_log_impl(&dword_24E5DD000, v572, v8, "\tSuggestions", v573, 2u);
    v574 = v573;
    v569 = v692;
    MEMORY[0x2530542D0](v574, -1, -1);
  }

  v734 = v571;
  isa = v571[2].isa;
  if (isa)
  {
    v576 = v734 + ((*(v711 + 80) + 32) & ~*(v711 + 80));
    *&v577 = *(v710 + 48);
    v741 = *(v711 + 72);
    *&v575 = 136315395;
    v736 = v575;
    v578 = isa;
    v737 = v577;
    do
    {
      v579 = v689;
      sub_24E60169C(v576, v689, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24F2CC924(v579, v569, type metadata accessor for Score);
      sub_24F2CC924(v579 + *&v577, v570, type metadata accessor for SocialUserGroup);
      *&v8 = COERCE_DOUBLE(sub_24F9220B8());
      v580 = sub_24F92BDA8();
      if (os_log_type_enabled(v8, v580))
      {
        v581 = swift_slowAlloc();
        v740 = swift_slowAlloc();
        v745 = v740;
        *v581 = v736;
        v742 = 0;
        v743 = 0xE000000000000000;
        v744 = *v569;
        sub_24F92CA38();
        MEMORY[0x253050C20](32, 0xE100000000000000);
        v744 = v569[1];
        sub_24F92CA38();
        MEMORY[0x253050C20](32, 0xE100000000000000);
        v744 = v569[2];
        sub_24F92CA38();
        MEMORY[0x253050C20](2128928, 0xE300000000000000);
        sub_24F2D4580(&qword_27F229EE8, MEMORY[0x277CC95B8]);
        v582 = sub_24F92CD88();
        MEMORY[0x253050C20](v582);

        v583 = v742;
        v584 = v743;
        sub_24F2CC8C4(v692, type metadata accessor for Score);
        v585 = sub_24E7620D4(v583, v584, &v745);

        *(v581 + 4) = v585;
        *(v581 + 12) = 2081;
        v586 = (v699 + *(v720 + 28));
        v587 = *v586;
        v588 = v586[1];

        sub_24F2CC8C4(v699, type metadata accessor for SocialUserGroup);
        v589 = sub_24E7620D4(v587, v588, &v745);
        v569 = v692;

        *(v581 + 14) = v589;
        _os_log_impl(&dword_24E5DD000, v8, v580, "\t\t%s | %{private}s", v581, 0x16u);
        v590 = v740;
        swift_arrayDestroy();
        v570 = v699;
        MEMORY[0x2530542D0](v590, -1, -1);
        v577 = v737;
        MEMORY[0x2530542D0](v581, -1, -1);
      }

      else
      {

        sub_24F2CC8C4(v570, type metadata accessor for SocialUserGroup);
        sub_24F2CC8C4(v569, type metadata accessor for Score);
      }

      v576 += v741;
      --v578;
    }

    while (v578);
  }

  if (v637)
  {
    v591 = v734;
    v592 = *(v734 + 16);

    v593 = v726;
    v595 = v635;
    v594 = v636;
    if (v592 < isa)
    {
      __break(1u);
LABEL_375:
      for (i = v724; ; i = v8)
      {

        __break(1u);
LABEL_377:
        ;
      }
    }

    v596 = 0;
    v597 = v591 + ((*(v711 + 80) + 32) & ~*(v711 + 80));
    v598 = (2 * isa) | 1;
  }

  else
  {
    v599 = v734;

    sub_24E6B7CA4(v629, v599);
    v597 = v600;
    v596 = v601;
    v598 = v602;
    v593 = v726;
    v595 = v635;
    v594 = v636;
  }

  v603 = v739;

  swift_unknownObjectRetain();
  sub_24F2CC98C(v597, v596, v598, v603);
  v741 = v604;

  swift_unknownObjectRelease();

  v605 = v633;
  (v705)(v633, v649, v593);
  v606 = sub_24F9220B8();
  v607 = sub_24F92BDA8();
  if (os_log_type_enabled(v606, v607))
  {
    v608 = v605;
    v609 = swift_slowAlloc();
    *v609 = 134217984;
    sub_24F91F5C8();
    v611 = v610;
    (v713)(v608, v593);
    *(v609 + 4) = -v611;
    _os_log_impl(&dword_24E5DD000, v606, v607, "\tScoring: %fs", v609, 0xCu);
    MEMORY[0x2530542D0](v609, -1, -1);
  }

  else
  {

    (v713)(v605, v593);
  }

  (v705)(v594, v595, v593);
  v612 = sub_24F9220B8();
  v613 = sub_24F92BD98();
  if (os_log_type_enabled(v612, v613))
  {
    v614 = swift_slowAlloc();
    *v614 = 134217984;
    sub_24F91F5C8();
    v616 = v615;
    v617 = v713;
    (v713)(v594, v593);
    *(v614 + 4) = -v616;
    _os_log_impl(&dword_24E5DD000, v612, v613, "Total suggestions time: %fs", v614, 0xCu);
    MEMORY[0x2530542D0](v614, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v617 = v713;
    (v713)(v594, v593);
  }

  v617(v649, v593);
  v617(v650, v593);
  v617(v654, v593);
  v617(v595, v593);

  sub_24E601704(v683, &qword_27F216FE0, &unk_24F959350);
  return v741;
}

uint64_t sub_24F2CB644()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);

  return v0;
}

uint64_t sub_24F2CB718()
{
  sub_24F2CB644();

  return swift_deallocClassInstance();
}

uint64_t sub_24F2CB790@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X3>, int a4@<W4>, void *a5@<X5>, void *a6@<X8>)
{
  v101 = a5;
  *&v113 = a2;
  v104 = sub_24F91EAA8();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for CallProviderConversationHandleSet(0);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v100 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Player(0);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v97 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v110 = &v97 - v18;
  LODWORD(v19) = *a1;
  v20 = *(a1 + 1);
  v21 = *(a1 + 2);
  v114 = v20;
  if (!v19)
  {
    v98 = v16;
    v99 = a4;
    v109 = a3;
    v112 = a6;
    v28 = sub_24F2C1B10(v20, v21);
    if (v29)
    {
      v24 = *v113;
      if (*(*v113 + 16))
      {
        v25 = sub_24E76D644(v28, v29);
        v31 = v30;

        if (v31)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v24 = *(v113 + 8);
    v38 = sub_24F92B198();
    if (*(v24 + 16))
    {
      v25 = sub_24E76D644(v38, v39);
      v41 = v40;

      if (v41)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v24 = *(v113 + 16);
    v42 = sub_24F92B198();
    if (*(v24 + 16))
    {
      v25 = sub_24E76D644(v42, v43);
      v45 = v44;

      if (v45)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    if (qword_27F211458 != -1)
    {
      swift_once();
    }

    v47 = sub_24F9220D8();
    __swift_project_value_buffer(v47, qword_27F39E958);

    v48 = sub_24F9220B8();
    v49 = sub_24F92BDB8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v116 = v51;
      *v50 = 136380931;
      *(v50 + 4) = sub_24E7620D4(v114, v21, &v116);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_24E7620D4(0x636972656E6567, 0xE700000000000000, &v116);
      _os_log_impl(&dword_24E5DD000, v48, v49, "Can't find contact for recent call handle %{private}s with type %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v51, -1, -1);
      MEMORY[0x2530542D0](v50, -1, -1);
    }

    goto LABEL_30;
  }

  if (v19 != 1)
  {
    v98 = v16;
    v99 = a4;
    v109 = a3;
    v112 = a6;
    v24 = *(v113 + 8);
    v32 = sub_24F92B198();
    if (*(v24 + 16))
    {
      v25 = sub_24E76D644(v32, v33);
      v35 = v34;

      if ((v35 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

LABEL_14:

LABEL_30:
    v46 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v22 = sub_24F2C1B10(v20, v21);
  if (!v23)
  {
    v36 = type metadata accessor for SocialUser(0);
    return (*(*(v36 - 8) + 56))(a6, 1, 1, v36);
  }

  v98 = v16;
  v99 = a4;
  v109 = a3;
  v112 = a6;
  v24 = *v113;
  if (!*(*v113 + 16))
  {
    goto LABEL_14;
  }

  v25 = sub_24E76D644(v22, v23);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v46 = *(*(v24 + 56) + 8 * v25);

LABEL_31:
  v119 = MEMORY[0x277D84FA0];
  v52 = sub_24F2CC66C(v46, &v119);

  v111 = v6;
  if (v52 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v54 = 0;
    v55 = v52 & 0xC000000000000001;
    v114 = v52 & 0xFFFFFFFFFFFFFF8;
    while (i != v54)
    {
      if (v55)
      {
        v56 = MEMORY[0x253052270](v54, v52);
      }

      else
      {
        if (v54 >= *(v114 + 16))
        {
          goto LABEL_56;
        }

        v56 = *(v52 + 8 * v54 + 32);
      }

      v19 = v56;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v57 = [v56 identifier];
      v58 = sub_24F92B0D8();
      v21 = v59;

      LOBYTE(v57) = sub_24ED7C5F0(&v116, v58, v21);

      ++v54;
      if ((v57 & 1) == 0)
      {

        v76 = type metadata accessor for SocialUser(0);
        (*(*(v76 - 8) + 56))(v112, 1, 1, v76);
      }
    }

    v60 = *(v107 + 56);
    v106 = v107 + 56;
    v105 = v60;
    (v60)(v110, 1, 1, v108);
    v61 = 0;
    v62 = *(v113 + 32);
    *&v113 = v52;
    while (1)
    {
      if (v55)
      {
        v64 = MEMORY[0x253052270](v61, v52);
      }

      else
      {
        if (v61 >= *(v114 + 16))
        {
          goto LABEL_58;
        }

        v64 = *(v52 + 8 * v61 + 32);
      }

      v19 = v64;
      v52 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v65 = [v64 identifier];
      v21 = sub_24F92B0D8();
      v67 = v66;

      if (*(v62 + 16))
      {
        v21 = sub_24E76D644(v21, v67);
        v69 = v68;

        if (v69)
        {
          v70 = *(*(v62 + 56) + 8 * v21);
          if (*(v70 + 16))
          {
            v71 = v97;
            sub_24F2CC85C(v70 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v97, type metadata accessor for Player);

            v72 = v110;
            sub_24E601704(v110, &unk_27F23E1F0, &unk_24F9549C0);
            sub_24F2CC924(v71, v72, type metadata accessor for Player);
            (v105)(v72, 0, 1, v108);
LABEL_54:
            v73 = v110;
            v74 = v98;
            sub_24E60169C(v110, v98, &unk_27F23E1F0, &unk_24F9549C0);
            v75 = v109[1];
            v116 = *v109;
            v117 = v75;
            v118 = v109[2];
            sub_24F2CC824(v109, v115);
            SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)(v74, &v116, 1, v99 & 1, v112);
            sub_24E601704(v73, &unk_27F23E1F0, &unk_24F9549C0);
          }
        }
      }

      else
      {
      }

      ++v61;
      v63 = v52 == i;
      v52 = v113;
      if (v63)
      {
        goto LABEL_54;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v77 = v109;
  v78 = v109[1];
  v116 = *v109;
  v117 = v78;
  v118 = v109[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0, &qword_24F93B780);
  inited = swift_initStackObject();
  v113 = xmmword_24F93DE60;
  *(inited + 16) = xmmword_24F93DE60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858, &unk_24F9DFE90);
  v80 = swift_allocObject();
  *(v80 + 16) = v113;
  *(v80 + 32) = v19;
  v81 = v114;
  *(v80 + 40) = v114;
  *(v80 + 48) = v21;

  sub_24F2CC824(v77, v115);
  sub_24F26E39C(v80, (inited + 32));
  v82 = v100;
  sub_24F4B6440(&v116, inited, 0, v100);

  v83 = [v101 callerNameForDisplay];
  v84 = sub_24F92B0D8();
  *&v113 = v85;

  v86 = 0xEB00000000726564;
  *&v116 = 0x6C6F686563616C70;
  *(&v116 + 1) = 0xEB00000000726564;
  v87 = v102;
  sub_24F91EA28();
  sub_24E600AEC();
  v88 = sub_24F92C578();
  v90 = v89;
  (*(v103 + 8))(v87, v104);
  if (v90)
  {
    v91 = v88;
  }

  else
  {
    v91 = 0x6C6F686563616C70;
  }

  if (v90)
  {
    v86 = v90;
  }

  *&v116 = 0x3A746361746E6F63;
  *(&v116 + 1) = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v91, v86);

  v92 = v116;
  v93 = type metadata accessor for SocialUser(0);
  v94 = *(v93 + 36);
  v95 = v112;
  sub_24F2CC924(v82, v112 + v94, type metadata accessor for CallProviderConversationHandleSet);
  v105[7](v95 + v94, 0, 1, v106);
  *v95 = v81;
  v95[1] = v21;
  v95[2] = 0;
  v95[3] = 0;
  v96 = v113;
  v95[4] = v84;
  v95[5] = v96;
  v95[6] = 0;
  v95[7] = 0;
  *(v95 + 4) = v92;
  (*(*(v93 - 8) + 56))(v95, 0, 1, v93);
}

uint64_t sub_24F2CC3DC(unint64_t *a1)
{
  v3 = *a1;
  v4 = sub_24F2BE598(*a1);
  v6 = v4;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_24F92C738();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = a1;
  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_24F92C738())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](v7, v3);
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_16:
    v10 = v9;
    v11 = [v9 identifier];
    v12 = sub_24F92B0D8();
    v14 = v13;

    LOBYTE(v14) = sub_24ED7C5F0(&v26, v12, v14);

    if (v14)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x253052270](v6, v3);
          v16 = MEMORY[0x253052270](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v17)
          {
            goto LABEL_46;
          }

          if (v7 >= v17)
          {
            goto LABEL_47;
          }

          v18 = *(v3 + 32 + 8 * v7);
          v15 = *(v3 + 32 + 8 * v6);
          v16 = v18;
        }

        v19 = v16;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_24ECDE964(v3);
          v20 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v3 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v19;

        if ((v3 & 0x8000000000000000) != 0 || v20)
        {
          v3 = sub_24ECDE964(v3);
          v21 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >= *(v21 + 16))
        {
          goto LABEL_44;
        }

        v23 = v21 + 8 * v7;
        v24 = *(v23 + 32);
        *(v23 + 32) = v15;

        *v27 = v3;
      }

LABEL_8:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_43;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_42;
    }
  }

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
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_24F92C738();
}

uint64_t sub_24F2CC66C(unint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_16:
    v3 = sub_24F92C738();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x253052270](v4, a1);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            return v13;
          }
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v4 + 32);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = v6;
        v9 = sub_24ED80060(&v12, v8);

        if (v9)
        {
          sub_24F92C948();
          sub_24F92C988();
          v5 = v11;
          sub_24F92C998();
          sub_24F92C958();
        }

        else
        {
        }

        ++v4;
        if (v7 == v3)
        {
          return v13;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24F2CC85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F2CC8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F2CC924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F2CC98C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230, &qword_24F9536F8);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v40 - v8;
  v9 = type metadata accessor for SocialUserGroup(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = v40 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0);
  v62 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v40 - v16;
  v18 = a3 >> 1;
  if (v18 != a2)
  {
    v46 = (a4 + 96);
    v40[2] = a4 + 144;
    v43 = (a4 + 136);
    v40[1] = a4 + 128;
    v42 = (a4 + 120);
    v40[0] = a4 + 112;
    v41 = (a4 + 104);
    v50 = (a4 + 152);
    v40[4] = a4 + 192;
    v45 = (a4 + 184);
    v49 = (a4 + 176);
    v40[3] = a4 + 168;
    v44 = (a4 + 160);
    v48 = (a4 + 200);
    v40[7] = a4 + 224;
    v47 = (a4 + 216);
    v40[6] = a4 + 208;
    v51 = v10;
    v57 = (v10 + 48);
    v58 = (v10 + 56);
    if (a2 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = a2;
    }

    v60 = v19;
    v20 = MEMORY[0x277D84F90];
    v52 = a4;
    v59 = v9;
    v56 = v18;
    v21 = v54;
    while (1)
    {
      if (v60 == a2)
      {
        __break(1u);
        return;
      }

      sub_24E60169C(v67 + *(v62 + 72) * a2, v17, &qword_27F2138C0, &qword_24F9DFEC0);
      if (*(a4 + 80))
      {
LABEL_37:
        v34 = a4;
        sub_24E60169C(v17, v21, &qword_27F2138C0, &qword_24F9DFEC0);
        v35 = v61;
        sub_24F2CC924(v21 + *(v55 + 48), v61, type metadata accessor for SocialUserGroup);
        (*v58)(v35, 0, 1, v9);
        sub_24F2CC8C4(v21, type metadata accessor for Score);
        goto LABEL_38;
      }

      v22 = *(a4 + 72);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v24 = exp(v23 * 0.693147181 / *(a4 + 88));
      v25 = *v17;
      if (v25 > 2)
      {
        break;
      }

      v26 = v46;
      v9 = v59;
      if (*v17)
      {
        v26 = v41;
        if (v25 != 1)
        {
          v27 = &v64;
LABEL_20:
          v26 = *(v27 - 32);
        }
      }

LABEL_21:
      v28 = *v26;
      v29 = v17[1];
      if (v29 > 2)
      {
        v30 = v49;
        if (v29 != 3)
        {
          v30 = v45;
          if (v29 != 4)
          {
            v31 = &v68;
            goto LABEL_28;
          }
        }
      }

      else
      {
        v30 = v50;
        if (v17[1])
        {
          v30 = v44;
          if (v29 != 1)
          {
            v31 = &v67;
LABEL_28:
            v30 = *(v31 - 32);
          }
        }
      }

      if (v17[2] > 1u)
      {
        v32 = v47;
        if (v17[2] == 2)
        {
          goto LABEL_35;
        }

        v33 = &v70;
      }

      else
      {
        v32 = v48;
        if (!v17[2])
        {
          goto LABEL_35;
        }

        v33 = &v69;
      }

      v32 = *(v33 - 32);
LABEL_35:
      if (v24 * v28 * *v30 * *v32 >= v22)
      {
        goto LABEL_37;
      }

      v34 = a4;
      v35 = v61;
      (*v58)(v61, 1, 1, v9);
LABEL_38:
      sub_24E601704(v17, &qword_27F2138C0, &qword_24F9DFEC0);
      if ((*v57)(v35, 1, v9) == 1)
      {
        sub_24E601704(v35, &unk_27F23E230, &qword_24F9536F8);
        a4 = v34;
      }

      else
      {
        v36 = v35;
        v37 = v53;
        sub_24F2CC924(v36, v53, type metadata accessor for SocialUserGroup);
        sub_24F2CC924(v37, v63, type metadata accessor for SocialUserGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24E6181C8(0, v20[2] + 1, 1, v20);
        }

        v39 = v20[2];
        v38 = v20[3];
        if (v39 >= v38 >> 1)
        {
          v20 = sub_24E6181C8((v38 > 1), v39 + 1, 1, v20);
        }

        v20[2] = v39 + 1;
        sub_24F2CC924(v63, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, type metadata accessor for SocialUserGroup);
        a4 = v52;
        v9 = v59;
      }

      if (v56 == ++a2)
      {
        return;
      }
    }

    if (*v17 > 4u)
    {
      v26 = v43;
      v9 = v59;
      if (v25 == 5)
      {
        goto LABEL_21;
      }

      v27 = &v66;
    }

    else
    {
      v26 = v42;
      v9 = v59;
      if (v25 == 3)
      {
        goto LABEL_21;
      }

      v27 = &v65;
    }

    goto LABEL_20;
  }
}

unint64_t sub_24F2CD020(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_24F2CD030(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_24F2CD040(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void sub_24F2CD050(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, double *a5)
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0);
  MEMORY[0x28223BE20](v139);
  v11 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v127 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v127 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v127 - v19;
  v136 = *(v21 + 72);
  if (*&v136 == 0.0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && *&v136 == NAN)
  {
    goto LABEL_175;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && *&v136 == NAN)
  {
    goto LABEL_176;
  }

  v23 = (a2 - a1) / v136;
  v151 = a1;
  v150 = a4;
  if (v23 >= v22 / v136)
  {
    v25 = a2;
    v26 = v22 / v136 * v136;
    if (a4 < v25 || v25 + v26 <= a4)
    {
      v27 = v25;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v27 = v25;
      if (a4 != v25)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v68 = a4 + v26;
    if (v26 < 1)
    {
      v71 = v27;
      goto LABEL_172;
    }

    *&v69 = -v136;
    v147 = 0.693147181;
    *&v70 = a4 + v26;
    v71 = v27;
    v128 = a4;
    *&v148 = -v136;
    while (1)
    {
      v72 = v68;
      v73 = v71;
      v131 = v71 + *&v69;
      v127[0] = v68;
      v129 = v71;
      while (1)
      {
        if (v73 <= a1)
        {
          v151 = v73;
          v149 = v127[0];
          goto LABEL_173;
        }

        v74 = a3;
        v75 = *&v72;
        v146 = v70;
        v72 = *&v70 + *&v69;
        sub_24E60169C(*&v70 + *&v69, v14, &qword_27F2138C0, &qword_24F9DFEC0);
        sub_24E60169C(v131, v11, &qword_27F2138C0, &qword_24F9DFEC0);
        type metadata accessor for Score(0);
        sub_24F91F5C8();
        v77 = a5[11];
        v78 = exp(v76 * v147 / v77);
        v79 = a5[12];
        v80 = a5[13];
        v82 = a5[14];
        v81 = a5[15];
        v84 = a5[16];
        v83 = a5[17];
        v85 = a5[18];
        v86 = *v14;
        v137 = v79;
        if (v86 <= 2)
        {
          if (v86)
          {
            if (v86 == 1)
            {
              v79 = v80;
            }

            else
            {
              v79 = v82;
            }
          }
        }

        else if (v86 > 4)
        {
          v79 = v83;
          if (v86 != 5)
          {
            v79 = v85;
          }
        }

        else
        {
          v79 = v81;
          if (v86 != 3)
          {
            v79 = v84;
          }
        }

        v88 = a5[19];
        v87 = a5[20];
        v90 = a5[21];
        v89 = a5[22];
        v91 = a5[23];
        v92 = a5[24];
        v93 = v14[1];
        v145 = v77;
        if (v93 > 2)
        {
          v94 = v89;
          if (v93 != 3)
          {
            v94 = v91;
            if (v93 != 4)
            {
              v94 = v92;
            }
          }
        }

        else
        {
          v94 = v88;
          if (v93)
          {
            if (v93 == 1)
            {
              v94 = v87;
            }

            else
            {
              v94 = v90;
            }
          }
        }

        v96 = a5[25];
        v95 = a5[26];
        v98 = a5[27];
        v97 = a5[28];
        v99 = v14[2];
        v134 = v83;
        *&v130 = v85;
        v133 = v81;
        v132 = v84;
        *&v136 = v82;
        v135 = v80;
        v143 = v96;
        v144 = v92;
        v141 = v98;
        v142 = v91;
        v140 = v94;
        v100 = v79;
        v101 = v78;
        if (v99 > 1)
        {
          v96 = v98;
          if (v99 != 2)
          {
            v96 = v97;
          }
        }

        else if (v99)
        {
          v96 = v95;
        }

        v138 = v96;
        sub_24F91F5C8();
        v103 = exp(v102 * v147 / v145);
        v104 = *v11;
        if (v104 <= 2)
        {
          v112 = *&v136;
          if (v104 == 1)
          {
            v112 = v135;
          }

          if (*v11)
          {
            v110 = v112;
          }

          else
          {
            v110 = v137;
          }

          v105 = v148;
          v106 = v101;
          v107 = v100;
          v111 = v140;
          v108 = v142;
          v109 = v144;
          goto LABEL_134;
        }

        v105 = v148;
        v106 = v101;
        v107 = v100;
        v108 = v142;
        v109 = v144;
        if (*v11 <= 4u)
        {
          if (v104 == 3)
          {
            v110 = v133;
          }

          else
          {
            v110 = v132;
          }

          v111 = v140;
LABEL_134:
          v113 = v143;
          v114 = v141;
          v115 = v138;
          goto LABEL_135;
        }

        v110 = v134;
        v111 = v140;
        v114 = v141;
        v113 = v143;
        v115 = v138;
        if (v104 != 5)
        {
          v110 = *&v130;
        }

LABEL_135:
        v116 = v11[1];
        if (v116 == 4)
        {
          v117 = v108;
        }

        else
        {
          v117 = v109;
        }

        if (v116 == 3)
        {
          v117 = v89;
        }

        if (v116 == 1)
        {
          v118 = v87;
        }

        else
        {
          v118 = v90;
        }

        if (!v11[1])
        {
          v118 = v88;
        }

        if (v11[1] <= 2u)
        {
          v117 = v118;
        }

        v145 = v75;
        if (v11[2] == 2)
        {
          v119 = v114;
        }

        else
        {
          v119 = v97;
        }

        if (v11[2])
        {
          v120 = v95;
        }

        else
        {
          v120 = v113;
        }

        if (v11[2] <= 1u)
        {
          v119 = v120;
        }

        v121 = v14;
        v122 = v11;
        v123 = a3 + *&v105;
        v124 = v106 * v107 * v111 * v115;
        v125 = v103 * v110 * v117 * v119;
        v126 = v122;
        sub_24E601704(v122, &qword_27F2138C0, &qword_24F9DFEC0);
        sub_24E601704(v121, &qword_27F2138C0, &qword_24F9DFEC0);
        if (v125 < v124)
        {
          break;
        }

        a3 = v123;
        if (v74 < *&v146 || v123 >= *&v146)
        {
          swift_arrayInitWithTakeFrontToBack();
          v11 = v126;
        }

        else
        {
          v11 = v126;
          if (v74 != *&v146)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v70 = *&v72;
        v14 = v121;
        v69 = v148;
        v73 = v129;
        if (v72 <= v128)
        {
          v71 = v129;
          v68 = v72;
          goto LABEL_172;
        }
      }

      a3 = v123;
      v71 = v131;
      if (v74 < v129 || v123 >= v129)
      {
        swift_arrayInitWithTakeFrontToBack();
        v71 = v131;
        v11 = v126;
        v68 = *&v145;
      }

      else
      {
        v11 = v126;
        v68 = *&v145;
        if (v74 != v129)
        {
          swift_arrayInitWithTakeBackToFront();
          v71 = v131;
        }
      }

      v70 = v146;
      v14 = v121;
      v69 = v148;
      if (*&v146 <= v128)
      {
LABEL_172:
        v151 = v71;
        v149 = v68;
        goto LABEL_173;
      }
    }
  }

  v24 = v23 * v136;
  if (a4 < a1 || a1 + v24 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v131 = a4 + v24;
  v149 = a4 + v24;
  if (v24 >= 1 && a2 < a3)
  {
    v148 = 0.693147181;
    v130 = a3;
    do
    {
      sub_24E60169C(a2, v20, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24E60169C(a4, v17, &qword_27F2138C0, &qword_24F9DFEC0);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v144 = a5[11];
      v147 = exp(v29 * v148 / v144);
      v30 = a5[12];
      v31 = a5[13];
      v33 = a5[14];
      v32 = a5[15];
      v35 = a5[16];
      v34 = a5[17];
      v36 = a5[18];
      v37 = *v20;
      v138 = v30;
      if (v37 <= 2)
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v30 = v31;
          }

          else
          {
            v30 = v33;
          }
        }
      }

      else if (v37 > 4)
      {
        v30 = v34;
        if (v37 != 5)
        {
          v30 = v36;
        }
      }

      else
      {
        v30 = v32;
        if (v37 != 3)
        {
          v30 = v35;
        }
      }

      v38 = a5[19];
      v39 = a5[20];
      v41 = a5[21];
      v40 = a5[22];
      v43 = a5[23];
      v42 = a5[24];
      v44 = v20[1];
      v145 = v38;
      if (v44 > 2)
      {
        v38 = v40;
        if (v44 != 3)
        {
          v38 = v43;
          if (v44 != 4)
          {
            v38 = v42;
          }
        }
      }

      else if (v44)
      {
        if (v44 == 1)
        {
          v38 = v39;
        }

        else
        {
          v38 = v41;
        }
      }

      v45 = a5[25];
      v46 = a5[26];
      v47 = a5[27];
      v48 = a5[28];
      v49 = v20[2];
      v146 = v30;
      v132 = v36;
      v135 = v34;
      v134 = v32;
      v133 = v35;
      v137 = v31;
      v142 = v47;
      v143 = v45;
      v50 = v40;
      if (v49 > 1)
      {
        v45 = v47;
        if (v49 != 2)
        {
          v45 = v48;
        }
      }

      else if (v49)
      {
        v45 = v46;
      }

      v140 = v45;
      v141 = v48;
      v51 = v46;
      sub_24F91F5C8();
      v53 = exp(v52 * v148 / v144);
      v54 = *v17;
      if (v54 <= 2)
      {
        v56 = v137;
        if (v54 != 1)
        {
          v56 = v33;
        }

        if (*v17)
        {
          v55 = v56;
        }

        else
        {
          v55 = v138;
        }
      }

      else
      {
        if (*v17 > 4u)
        {
          v55 = v135;
          v58 = v141;
          v57 = v142;
          if (v54 != 5)
          {
            v55 = v132;
          }

          goto LABEL_55;
        }

        if (v54 == 3)
        {
          v55 = v134;
        }

        else
        {
          v55 = v133;
        }
      }

      v58 = v141;
      v57 = v142;
LABEL_55:
      v59 = v17[1];
      if (v59 == 4)
      {
        v60 = v43;
      }

      else
      {
        v60 = v42;
      }

      if (v59 == 3)
      {
        v60 = v50;
      }

      if (v59 == 1)
      {
        v61 = v39;
      }

      else
      {
        v61 = v41;
      }

      if (!v17[1])
      {
        v61 = v145;
      }

      if (v17[1] <= 2u)
      {
        v60 = v61;
      }

      v62 = v136;
      if (v17[2] == 2)
      {
        v63 = v57;
      }

      else
      {
        v63 = v58;
      }

      v64 = v143;
      if (v17[2])
      {
        v64 = v51;
      }

      if (v17[2] <= 1u)
      {
        v63 = v64;
      }

      v65 = v147 * v146 * v38 * v140;
      v66 = v53 * v55 * v60 * v63;
      sub_24E601704(v17, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24E601704(v20, &qword_27F2138C0, &qword_24F9DFEC0);
      if (v66 >= v65)
      {
        v67 = v130;
        if (a1 < a4 || a1 >= a4 + v62)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v150 = a4 + v62;
        a4 += v62;
      }

      else
      {
        v67 = v130;
        if (a1 < a2 || a1 >= a2 + v62)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v62;
      }

      a1 += v62;
      v151 = a1;
    }

    while (a4 < v131 && a2 < v67);
  }

LABEL_173:
  sub_24F8FB020(&v151, &v150, &v149);
}

void sub_24F2CDB54(uint64_t *a1, unint64_t a2, uint64_t *a3, double *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_24E86164C(v25);
  }

  v20 = v6;
  *v6 = v25;
  v6 = (v25 + 16);
  v8 = *(v25 + 2);
  if (v8 < 2)
  {
LABEL_10:

    *v20 = v25;
  }

  else
  {
    v21 = (v25 + 16);
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v25[16 * v8];
      v11 = *v10;
      v12 = &v6[2 * v8];
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0) - 8) + 72);
      v16 = v9 + v15 * v11;
      v6 = (v9 + v15 * v13);
      v17 = v9 + v15 * v14;

      sub_24F2CD050(v16, v6, v17, a2, a4);

      if (v5)
      {
        *v20 = v25;

        return;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v6 = (v25 + 16);
      v18 = *v21;
      if (v8 - 2 >= *v21)
      {
        goto LABEL_13;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_14;
      }

      v8 = v18 - 1;
      memmove(v12, v12 + 2, 16 * v19);
      *v21 = v8;
      if (v8 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v20 = v25;
    __break(1u);
  }
}

uint64_t sub_24F2CDD20(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, double *a5)
{
  v196 = a1;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0);
  v201 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v198 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v225 = &v191 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v191 - v12;
  MEMORY[0x28223BE20](v14);
  v229 = &v191 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v216 = &v191 - v18;
  MEMORY[0x28223BE20](v19);
  v193 = &v191 - v20;
  MEMORY[0x28223BE20](v21);
  v192 = &v191 - v23;
  v230 = MEMORY[0x277D84F90];
  v207 = a3;
  v24 = a3[1];
  if (v24 >= 1)
  {
    v215 = v22;
    swift_retain_n();
    v25 = 0;
    v205 = MEMORY[0x277D84F90];
    v228 = 0.693147181;
    v206 = a5;
    v195 = a4;
    v200 = v13;
LABEL_5:
    if (v25 + 1 >= v24)
    {
      v80 = v25 + 1;
      goto LABEL_85;
    }

    v209 = v24;
    v26 = *v207;
    v27 = *(v201 + 72);
    v28 = *v207 + *&v27 * (v25 + 1);
    v29 = v192;
    sub_24E60169C(v28, v192, &qword_27F2138C0, &qword_24F9DFEC0);
    v30 = v193;
    sub_24E60169C(v26 + *&v27 * v25, v193, &qword_27F2138C0, &qword_24F9DFEC0);
    v203 = sub_24F2C65AC(v29);
    v202 = sub_24F2C65AC(v30);
    sub_24E601704(v30, &qword_27F2138C0, &qword_24F9DFEC0);
    sub_24E601704(v29, &qword_27F2138C0, &qword_24F9DFEC0);
    v194 = v25;
    v31 = v25 + 2;
    v218 = v27;
    v32 = v26 + *&v27 * (v25 + 2);
    v33 = v206;
    while (1)
    {
      if (v209 == v31)
      {
        v80 = v209;
        goto LABEL_70;
      }

      v52 = v216;
      sub_24E60169C(v32, v216, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24E60169C(v28, v215, &qword_27F2138C0, &qword_24F9DFEC0);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v227 = *(v33 + 88);
      v54 = exp(v53 * v228 / v227);
      v56 = *(v33 + 96);
      v55 = *(v33 + 104);
      v58 = *(v33 + 112);
      v57 = *(v33 + 120);
      v60 = *(v33 + 128);
      v59 = *(v33 + 136);
      v61 = *(v33 + 144);
      v62 = *v52;
      v217 = v56;
      if (v62 <= 2)
      {
        if (v62)
        {
          if (v62 == 1)
          {
            v56 = v55;
          }

          else
          {
            v56 = v58;
          }
        }
      }

      else if (v62 > 4)
      {
        v56 = v59;
        if (v62 != 5)
        {
          v56 = v61;
        }
      }

      else
      {
        v56 = v57;
        if (v62 != 3)
        {
          v56 = v60;
        }
      }

      v63 = *(v33 + 152);
      v64 = *(v33 + 160);
      v66 = *(v33 + 168);
      v65 = *(v33 + 176);
      v67 = *(v33 + 184);
      v68 = *(v33 + 192);
      v69 = v216[1];
      if (v69 > 2)
      {
        v70 = *(v33 + 176);
        if (v69 != 3)
        {
          v70 = *(v33 + 184);
          if (v69 != 4)
          {
            v70 = *(v33 + 192);
          }
        }
      }

      else
      {
        v70 = *(v33 + 152);
        if (v216[1])
        {
          if (v69 == 1)
          {
            v70 = *(v33 + 160);
          }

          else
          {
            v70 = *(v33 + 168);
          }
        }
      }

      v71 = *(v33 + 200);
      v72 = *(v33 + 208);
      v74 = *(v33 + 216);
      v73 = *(v33 + 224);
      v75 = v216[2];
      v212 = v59;
      v204 = v61;
      v211 = v57;
      v210 = v60;
      v214 = v55;
      v213 = v58;
      v223 = v71;
      v224 = v68;
      v221 = v74;
      v222 = v72;
      v220 = v67;
      v76 = v64;
      if (v75 > 1)
      {
        if (v75 != 2)
        {
          v74 = v73;
        }
      }

      else if (v75)
      {
        v74 = v72;
      }

      else
      {
        v74 = v71;
      }

      v219 = v74;
      sub_24F91F5C8();
      v78 = exp(v77 * v228 / v227);
      v79 = *v215;
      if (v79 <= 2)
      {
        v34 = v214;
        if (v79 != 1)
        {
          v34 = v213;
        }

        if (*v215)
        {
          v35 = v34;
        }

        else
        {
          v35 = v217;
        }

        v36 = v56;
        v37 = v76;
        v38 = v220;
        v39 = v224;
      }

      else
      {
        v36 = v56;
        v37 = v76;
        v38 = v220;
        v39 = v224;
        if (*v215 > 4u)
        {
          v35 = v212;
          v41 = v222;
          v40 = v223;
          v42 = v221;
          v43 = v219;
          if (v79 != 5)
          {
            v35 = v204;
          }

          goto LABEL_14;
        }

        if (v79 == 3)
        {
          v35 = v211;
        }

        else
        {
          v35 = v210;
        }
      }

      v41 = v222;
      v40 = v223;
      v42 = v221;
      v43 = v219;
LABEL_14:
      v44 = v215[1];
      if (v44 == 4)
      {
        v45 = v38;
      }

      else
      {
        v45 = v39;
      }

      if (v44 == 3)
      {
        v45 = v65;
      }

      if (v44 == 1)
      {
        v46 = v37;
      }

      else
      {
        v46 = v66;
      }

      if (!v215[1])
      {
        v46 = v63;
      }

      if (v215[1] <= 2u)
      {
        v45 = v46;
      }

      if (v215[2] == 2)
      {
        v47 = v42;
      }

      else
      {
        v47 = v73;
      }

      if (v215[2])
      {
        v48 = v41;
      }

      else
      {
        v48 = v40;
      }

      if (v215[2] <= 1u)
      {
        v47 = v48;
      }

      v49 = v202 < v203;
      v50 = v54 * v36 * v70 * v43;
      v51 = v78 * v35 * v45 * v47;
      sub_24E601704(v215, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24E601704(v216, &qword_27F2138C0, &qword_24F9DFEC0);
      ++v31;
      v32 += *&v218;
      v28 += *&v218;
      if (((v49 ^ (v51 >= v50)) & 1) == 0)
      {
        v80 = v31 - 1;
LABEL_70:
        a4 = v195;
        v25 = v194;
        if (v202 >= v203)
        {
          goto LABEL_83;
        }

        if (v80 < v194)
        {
          goto LABEL_219;
        }

        if (v194 >= v80)
        {
LABEL_83:
          a5 = v206;
        }

        else
        {
          v81 = *&v218 * (v80 - 1);
          v82 = v80 * *&v218;
          v83 = v80;
          v84 = v194;
          v85 = v194 * *&v218;
          do
          {
            if (v84 != --v80)
            {
              v86 = *v207;
              if (!*v207)
              {
                goto LABEL_224;
              }

              sub_24E6009C8(v86 + v85, v198, &qword_27F2138C0, &qword_24F9DFEC0);
              if (v85 < v81 || v86 + v85 >= (v86 + v82))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v85 != v81)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24E6009C8(v198, v86 + v81, &qword_27F2138C0, &qword_24F9DFEC0);
            }

            ++v84;
            v81 -= *&v218;
            v82 -= *&v218;
            v85 += *&v218;
          }

          while (v84 < v80);
          a5 = v206;
          a4 = v195;
          v25 = v194;
          v80 = v83;
        }

LABEL_85:
        v87 = v207[1];
        if (v80 >= v87)
        {
          goto LABEL_148;
        }

        if (__OFSUB__(v80, v25))
        {
          goto LABEL_218;
        }

        if (v80 - v25 >= a4)
        {
          goto LABEL_148;
        }

        if (__OFADD__(v25, a4))
        {
          goto LABEL_220;
        }

        if (v25 + a4 < v87)
        {
          v87 = v25 + a4;
        }

        if (v87 < v25)
        {
LABEL_221:
          __break(1u);
LABEL_222:

          __break(1u);
LABEL_223:

          __break(1u);
LABEL_224:

          __break(1u);
          goto LABEL_225;
        }

        if (v80 == v87)
        {
          goto LABEL_148;
        }

        v199 = v87;
        v88 = *v207;
        v89 = a5[11];
        v224 = a5[12];
        v90 = a5[14];
        v221 = a5[13];
        v212 = v90;
        v91 = a5[16];
        v220 = a5[15];
        v211 = v91;
        v92 = a5[18];
        v219 = a5[17];
        v210 = v92;
        v93 = a5[20];
        v227 = a5[19];
        v223 = v93;
        v94 = a5[22];
        v214 = a5[21];
        v95 = a5[24];
        v222 = a5[23];
        v213 = v95;
        v96 = a5[25];
        v218 = a5[26];
        v97 = *(v201 + 72);
        v98 = v88 + v97 * (v80 - 1);
        v99 = a5;
        v100 = -v97;
        v194 = v25;
        *&v101 = v25 - v80;
        v102 = v88;
        v197 = v97;
        *&v103 = v88 + v80 * v97;
        v104 = *(v99 + 216);
        v217 = *(v99 + 224);
LABEL_95:
        v209 = v80;
        v202 = v103;
        v105 = *&v103;
        v203 = v101;
        v204 = *&v98;
        v106 = v98;
        while (2)
        {
          v107 = v229;
          sub_24E60169C(v105, v229, &qword_27F2138C0, &qword_24F9DFEC0);
          sub_24E60169C(v106, v13, &qword_27F2138C0, &qword_24F9DFEC0);
          type metadata accessor for Score(0);
          sub_24F91F5C8();
          v109 = exp(v108 * v228 / v89);
          v110 = *v107;
          if (v110 <= 2)
          {
            v111 = v224;
            if (!*v107)
            {
              goto LABEL_106;
            }

            v111 = v221;
            if (v110 == 1)
            {
              goto LABEL_106;
            }

            v112 = &v233;
          }

          else
          {
            if (*v107 <= 4u)
            {
              v111 = v220;
              if (v110 != 3)
              {
                v112 = &v232;
                break;
              }

LABEL_106:
              v113 = v229[1];
              if (v113 > 2)
              {
                v114 = v94;
                if (v113 != 3)
                {
                  v114 = v222;
                  if (v113 != 4)
                  {
                    v115 = &v234;
LABEL_113:
                    v114 = *(v115 - 32);
                  }
                }
              }

              else
              {
                v114 = v227;
                if (v229[1])
                {
                  v114 = v223;
                  if (v113 != 1)
                  {
                    v115 = &v235;
                    goto LABEL_113;
                  }
                }
              }

              if (v229[2] > 1u)
              {
                v116 = v104;
                if (v229[2] != 2)
                {
                  v116 = v217;
                }
              }

              else
              {
                v116 = v96;
                if (v229[2])
                {
                  v116 = v218;
                }
              }

              sub_24F91F5C8();
              v118 = exp(v117 * v228 / v89);
              v119 = *v13;
              if (v119 <= 2)
              {
                v120 = v224;
                if (!*v13)
                {
                  goto LABEL_129;
                }

                v120 = v221;
                if (v119 == 1)
                {
                  goto LABEL_129;
                }

                v121 = &v233;
              }

              else
              {
                if (*v13 <= 4u)
                {
                  v120 = v220;
                  if (v119 != 3)
                  {
                    v121 = &v232;
                    goto LABEL_128;
                  }

LABEL_129:
                  v122 = v13[1];
                  if (v122 > 2)
                  {
                    v123 = v94;
                    if (v122 != 3)
                    {
                      v123 = v222;
                      if (v122 != 4)
                      {
                        v124 = &v234;
LABEL_136:
                        v123 = *(v124 - 32);
                      }
                    }
                  }

                  else
                  {
                    v123 = v227;
                    if (v13[1])
                    {
                      v123 = v223;
                      if (v122 != 1)
                      {
                        v124 = &v235;
                        goto LABEL_136;
                      }
                    }
                  }

                  if (v13[2] > 1u)
                  {
                    v125 = v104;
                    if (v13[2] != 2)
                    {
                      v125 = v217;
                    }
                  }

                  else
                  {
                    v125 = v96;
                    if (v13[2])
                    {
                      v125 = v218;
                    }
                  }

                  v126 = v109 * v111 * v114 * v116;
                  v127 = v118 * v120 * v123 * v125;
                  sub_24E601704(v13, &qword_27F2138C0, &qword_24F9DFEC0);
                  sub_24E601704(v229, &qword_27F2138C0, &qword_24F9DFEC0);
                  if (v127 < v126)
                  {
                    if (!v102)
                    {
                      goto LABEL_222;
                    }

                    v128 = v225;
                    sub_24E6009C8(v105, v225, &qword_27F2138C0, &qword_24F9DFEC0);
                    swift_arrayInitWithTakeFrontToBack();
                    sub_24E6009C8(v128, v106, &qword_27F2138C0, &qword_24F9DFEC0);
                    v106 += v100;
                    v105 += v100;
                    if (!__CFADD__((*&v101)++, 1))
                    {
                      continue;
                    }
                  }

                  v80 = v209 + 1;
                  v98 = *&v204 + v197;
                  *&v101 = *&v203 - 1;
                  *&v103 = *&v202 + v197;
                  if (v209 + 1 != v199)
                  {
                    goto LABEL_95;
                  }

                  v25 = v194;
                  v80 = v199;
LABEL_148:
                  v130 = v205;
                  if (v80 < v25)
                  {
                    goto LABEL_217;
                  }

                  v199 = v80;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v130 = sub_24E615ED8(0, *(v130 + 2) + 1, 1, v130);
                  }

                  v132 = *(v130 + 2);
                  v131 = *(v130 + 3);
                  v133 = v132 + 1;
                  if (v132 >= v131 >> 1)
                  {
                    v130 = sub_24E615ED8((v131 > 1), v132 + 1, 1, v130);
                  }

                  *(v130 + 2) = v133;
                  v134 = v130 + 32;
                  v135 = &v130[16 * v132 + 32];
                  v136 = v199;
                  *v135 = v25;
                  *(v135 + 1) = v136;
                  v230 = v130;
                  v227 = *v196;
                  if (v227 != 0.0)
                  {
                    v205 = v130;
                    if (!v132)
                    {
LABEL_4:
                      v24 = v207[1];
                      v25 = v199;
                      a5 = v206;
                      a4 = v195;
                      if (v199 >= v24)
                      {
                        goto LABEL_199;
                      }

                      goto LABEL_5;
                    }

                    while (2)
                    {
                      v137 = v133 - 1;
                      if (v133 >= 4)
                      {
                        v142 = &v134[16 * v133];
                        v143 = *(v142 - 8);
                        v144 = *(v142 - 7);
                        v148 = __OFSUB__(v144, v143);
                        v145 = v144 - v143;
                        if (v148)
                        {
                          goto LABEL_206;
                        }

                        v147 = *(v142 - 6);
                        v146 = *(v142 - 5);
                        v148 = __OFSUB__(v146, v147);
                        v140 = v146 - v147;
                        v141 = v148;
                        if (v148)
                        {
                          goto LABEL_207;
                        }

                        v149 = &v130[16 * v133];
                        v151 = *v149;
                        v150 = *(v149 + 1);
                        v148 = __OFSUB__(v150, v151);
                        v152 = v150 - v151;
                        if (v148)
                        {
                          goto LABEL_209;
                        }

                        v148 = __OFADD__(v140, v152);
                        v153 = v140 + v152;
                        if (v148)
                        {
                          goto LABEL_212;
                        }

                        if (v153 >= v145)
                        {
                          v171 = &v134[16 * v137];
                          v173 = *v171;
                          v172 = *(v171 + 1);
                          v148 = __OFSUB__(v172, v173);
                          v174 = v172 - v173;
                          if (v148)
                          {
                            goto LABEL_216;
                          }

                          if (v140 < v174)
                          {
                            v137 = v133 - 2;
                          }
                        }

                        else
                        {
LABEL_168:
                          if (v141)
                          {
                            goto LABEL_208;
                          }

                          v154 = &v130[16 * v133];
                          v156 = *v154;
                          v155 = *(v154 + 1);
                          v157 = __OFSUB__(v155, v156);
                          v158 = v155 - v156;
                          v159 = v157;
                          if (v157)
                          {
                            goto LABEL_211;
                          }

                          v160 = &v134[16 * v137];
                          v162 = *v160;
                          v161 = *(v160 + 1);
                          v148 = __OFSUB__(v161, v162);
                          v163 = v161 - v162;
                          if (v148)
                          {
                            goto LABEL_214;
                          }

                          if (__OFADD__(v158, v163))
                          {
                            goto LABEL_215;
                          }

                          if (v158 + v163 < v140)
                          {
                            goto LABEL_182;
                          }

                          if (v140 < v163)
                          {
                            v137 = v133 - 2;
                          }
                        }
                      }

                      else
                      {
                        if (v133 == 3)
                        {
                          v138 = *(v130 + 4);
                          v139 = *(v130 + 5);
                          v148 = __OFSUB__(v139, v138);
                          v140 = v139 - v138;
                          v141 = v148;
                          goto LABEL_168;
                        }

                        v164 = &v130[16 * v133];
                        v166 = *v164;
                        v165 = *(v164 + 1);
                        v148 = __OFSUB__(v165, v166);
                        v158 = v165 - v166;
                        v159 = v148;
LABEL_182:
                        if (v159)
                        {
                          goto LABEL_210;
                        }

                        v167 = &v134[16 * v137];
                        v169 = *v167;
                        v168 = *(v167 + 1);
                        v148 = __OFSUB__(v168, v169);
                        v170 = v168 - v169;
                        if (v148)
                        {
                          goto LABEL_213;
                        }

                        if (v170 < v158)
                        {
                          goto LABEL_3;
                        }
                      }

                      if (v137 - 1 >= v133)
                      {
                        __break(1u);
LABEL_203:
                        __break(1u);
LABEL_204:
                        __break(1u);
LABEL_205:
                        __break(1u);
LABEL_206:
                        __break(1u);
LABEL_207:
                        __break(1u);
LABEL_208:
                        __break(1u);
LABEL_209:
                        __break(1u);
LABEL_210:
                        __break(1u);
LABEL_211:
                        __break(1u);
LABEL_212:
                        __break(1u);
LABEL_213:
                        __break(1u);
LABEL_214:
                        __break(1u);
LABEL_215:
                        __break(1u);
LABEL_216:
                        __break(1u);
LABEL_217:
                        __break(1u);
LABEL_218:
                        __break(1u);
LABEL_219:
                        __break(1u);
LABEL_220:
                        __break(1u);
                        goto LABEL_221;
                      }

                      v175 = *v207;
                      if (!*v207)
                      {
                        goto LABEL_223;
                      }

                      v176 = &v134[16 * v137 - 16];
                      v177 = *v176;
                      v178 = v137;
                      v179 = &v134[16 * v137];
                      v180 = *(v179 + 1);
                      v181 = *(v201 + 72);
                      v182 = v175 + v181 * *v176;
                      v183 = v175 + v181 * *v179;
                      v184 = v175 + v181 * v180;
                      v185 = v206;

                      v186 = v182;
                      v187 = v208;
                      sub_24F2CD050(v186, v183, v184, *&v227, v185);
                      v208 = v187;
                      if (v187)
                      {

                        v230 = v205;
                        goto LABEL_201;
                      }

                      if (v180 < v177)
                      {
                        goto LABEL_203;
                      }

                      v130 = v205;
                      v188 = *(v205 + 16);
                      if (v178 > v188)
                      {
                        goto LABEL_204;
                      }

                      *v176 = v177;
                      *(v176 + 1) = v180;
                      if (v178 >= v188)
                      {
                        goto LABEL_205;
                      }

                      v133 = v188 - 1;
                      memmove(v179, v179 + 16, 16 * (v188 - 1 - v178));
                      *(v130 + 2) = v188 - 1;
                      v13 = v200;
                      if (v188 <= 2)
                      {
LABEL_3:
                        v230 = v130;
                        goto LABEL_4;
                      }

                      continue;
                    }
                  }

LABEL_225:

                  __break(1u);
LABEL_226:

                  __break(1u);
                  return result;
                }

                v120 = v219;
                if (v119 == 5)
                {
                  goto LABEL_129;
                }

                v121 = &v231;
              }

LABEL_128:
              v120 = *(v121 - 32);
              goto LABEL_129;
            }

            v111 = v219;
            if (v110 == 5)
            {
              goto LABEL_106;
            }

            v112 = &v231;
          }

          break;
        }

        v111 = *(v112 - 32);
        goto LABEL_106;
      }
    }
  }

  swift_retain_n();
LABEL_199:
  v189 = *v196;
  if (!*v196)
  {
    goto LABEL_226;
  }

  sub_24F2CDB54(&v230, v189, v207, a5);

LABEL_201:
}

void sub_24F2CEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0);
  MEMORY[0x28223BE20](v78);
  v77 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v57 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(a5 + 88);
    v74 = *(a5 + 96);
    v20 = *(a5 + 112);
    v71 = *(a5 + 104);
    v64 = v20;
    v21 = *(a5 + 128);
    v70 = *(a5 + 120);
    v63 = v21;
    v22 = *(a5 + 144);
    v69 = *(a5 + 136);
    v62 = v22;
    v23 = *(a5 + 160);
    v80 = *(a5 + 152);
    v73 = v23;
    v24 = *(a5 + 176);
    v66 = *(a5 + 168);
    v79 = v24;
    v25 = *(a5 + 192);
    v72 = *(a5 + 184);
    v65 = v25;
    v26 = *(v15 + 72);
    v27 = v18 + v26 * (a3 - 1);
    v75 = -v26;
    v76 = v18;
    v28 = *(a5 + 200);
    v68 = *(a5 + 208);
    v29 = a1 - a3;
    v56 = v26;
    v30 = v18 + v26 * a3;
    v31 = *(a5 + 216);
    v67 = *(a5 + 224);
LABEL_5:
    v61 = a3;
    v58 = v30;
    v32 = v30;
    v59 = v29;
    v60 = v27;
    while (1)
    {
      sub_24E60169C(v32, v17, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24E60169C(v27, v13, &qword_27F2138C0, &qword_24F9DFEC0);
      type metadata accessor for Score(0);
      sub_24F91F5C8();
      v34 = exp(v33 * 0.693147181 / v19);
      v35 = *v17;
      if (v35 > 2)
      {
        break;
      }

      v36 = v74;
      if (*v17)
      {
        v36 = v71;
        if (v35 != 1)
        {
          v37 = &v83;
LABEL_15:
          v36 = *(v37 - 32);
        }
      }

LABEL_16:
      v38 = v17[1];
      if (v38 > 2)
      {
        v39 = v79;
        if (v38 != 3)
        {
          v39 = v72;
          if (v38 != 4)
          {
            v40 = &v84;
            goto LABEL_23;
          }
        }
      }

      else
      {
        v39 = v80;
        if (v17[1])
        {
          v39 = v73;
          if (v38 != 1)
          {
            v40 = &v85;
LABEL_23:
            v39 = *(v40 - 32);
          }
        }
      }

      if (v17[2] > 1u)
      {
        v41 = v31;
        if (v17[2] != 2)
        {
          v41 = v67;
        }
      }

      else
      {
        v41 = v28;
        if (v17[2])
        {
          v41 = v68;
        }
      }

      sub_24F91F5C8();
      v43 = exp(v42 * 0.693147181 / v19);
      v44 = *v13;
      if (v44 > 2)
      {
        if (*v13 > 4u)
        {
          v45 = v69;
          if (v44 == 5)
          {
            goto LABEL_39;
          }

          v46 = &v81;
        }

        else
        {
          v45 = v70;
          if (v44 == 3)
          {
            goto LABEL_39;
          }

          v46 = &v82;
        }

        goto LABEL_38;
      }

      v45 = v74;
      if (*v13)
      {
        v45 = v71;
        if (v44 != 1)
        {
          v46 = &v83;
LABEL_38:
          v45 = *(v46 - 32);
        }
      }

LABEL_39:
      v47 = v13[1];
      if (v47 > 2)
      {
        v48 = v79;
        if (v47 != 3)
        {
          v48 = v72;
          if (v47 != 4)
          {
            v49 = &v84;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v48 = v80;
        if (v13[1])
        {
          v48 = v73;
          if (v47 != 1)
          {
            v49 = &v85;
LABEL_46:
            v48 = *(v49 - 32);
          }
        }
      }

      if (v13[2] > 1u)
      {
        v50 = v31;
        if (v13[2] != 2)
        {
          v50 = v67;
        }
      }

      else
      {
        v50 = v28;
        if (v13[2])
        {
          v50 = v68;
        }
      }

      v51 = v34 * v36 * v39 * v41;
      v52 = v43 * v45 * v48 * v50;
      sub_24E601704(v13, &qword_27F2138C0, &qword_24F9DFEC0);
      sub_24E601704(v17, &qword_27F2138C0, &qword_24F9DFEC0);
      if (v52 >= v51)
      {
LABEL_4:
        a3 = v61 + 1;
        v27 = v60 + v56;
        v29 = v59 - 1;
        v30 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v76)
      {
        __break(1u);
        return;
      }

      v53 = v77;
      sub_24E6009C8(v32, v77, &qword_27F2138C0, &qword_24F9DFEC0);
      swift_arrayInitWithTakeFrontToBack();
      sub_24E6009C8(v53, v27, &qword_27F2138C0, &qword_24F9DFEC0);
      v27 += v75;
      v32 += v75;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    if (*v17 > 4u)
    {
      v36 = v69;
      if (v35 == 5)
      {
        goto LABEL_16;
      }

      v37 = &v81;
    }

    else
    {
      v36 = v70;
      if (v35 == 3)
      {
        goto LABEL_16;
      }

      v37 = &v82;
    }

    goto LABEL_15;
  }
}

uint64_t sub_24F2CF2D8(uint64_t *a1, double *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_24F92CD78();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0);
        v8 = sub_24F92B618();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_24F2CDD20(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_24F2CEDB0(0, v4, 1, a1, a2);
  }
}

uint64_t sub_24F2CF474(uint64_t *a1, double *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C0, &qword_24F9DFEC0) - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_24E86182C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_24F2CF2D8(v8, a2);

  *a1 = v5;
}

uint64_t sub_24F2CF568(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4;
  }

  result = *(a1 + 32);
  if (v2 != 1)
  {
    v5 = (a1 + 33);
    for (i = 1; ; ++i)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = *v5++;
      v8 = v9;
      v10 = a2[25];
      v11 = a2[27];
      if (result == 2)
      {
        v12 = a2[27];
      }

      else
      {
        v12 = a2[28];
      }

      if (result)
      {
        v13 = a2[26];
      }

      else
      {
        v13 = a2[25];
      }

      if (result <= 1u)
      {
        v12 = v13;
      }

      if (v8 != 2)
      {
        v11 = a2[28];
      }

      if (v8)
      {
        v10 = a2[26];
      }

      if (v8 > 1)
      {
        v10 = v11;
      }

      if (v12 >= v10)
      {
        result = result;
      }

      else
      {
        result = v8;
      }

      if (v7 == v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F2CF5F4(uint64_t a1)
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F8A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F888();
  sub_24F91F618();
  v9 = sub_24F91F868();
  (*(v2 + 8))(v4, v1);
  v10 = *(v6 + 8);
  v10(v8, v5);
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = qword_27F2110A8;
    v14 = 1;
  }

  else
  {
    sub_24F91F888();
    v11 = sub_24F91F828();
    v10(v8, v5);
    v14 = 0;
    v13 = qword_27F2110A8;
    v12 = v11;
  }

  if (v13 != -1)
  {
    swift_once();
    v12 = v11;
  }

  v15 = qword_27F39E1E0;
  [qword_27F39E1E0 setDateStyle_];
  [v15 setTimeStyle_];
  [v15 setDoesRelativeDateFormatting_];
  if (qword_27F2110A8 != -1)
  {
    swift_once();
  }

  v16 = sub_24F91F578();
  v17 = [v15 stringFromDate_];

  v18 = sub_24F92B0D8();
  return v18;
}

uint64_t sub_24F2CF8B8()
{
  v14 = MEMORY[0x277D84FA0];
  v0 = objc_opt_self();
  v1 = [v0 hiddenAppBundleIdentifiers];
  v2 = sub_24F92BAA8();

  sub_24EAE4034(v3);
  sub_24EAE4034(v2);
  v4 = [v0 lockedAppBundleIdentifiers];
  v5 = sub_24F92BAA8();

  sub_24EAE4034(v6);
  sub_24EAE4034(v5);
  v7 = sub_24F92B098();
  v8 = sub_24F92B098();
  v9 = CFPreferencesCopyAppValue(v7, v8);

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24F92B598();
    }

    swift_unknownObjectRelease();
  }

  v10 = sub_24F92B098();
  v11 = sub_24F92B098();
  v12 = CFPreferencesCopyAppValue(v10, v11);

  if (v12)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24F92B598();
    }

    swift_unknownObjectRelease();
  }

  return v14;
}

uint64_t sub_24F2CFB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[27] = a7;
  v8[28] = v7;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v9 = type metadata accessor for PlayActivity(0);
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v10 = sub_24F91F648();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v11 = type metadata accessor for Player(0);
  v8[39] = v11;
  v8[40] = *(v11 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2CFD1C, 0, 0);
}

uint64_t sub_24F2CFD1C(uint64_t a1)
{
  v80 = v1;
  *(v1 + 144) = MEMORY[0x277D84FA0];
  v2 = (v1 + 144);
  v3 = *(v1 + 168);
  if (v3 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v5 = 0;
    v71 = v3 & 0xFFFFFFFFFFFFFF8;
    v70 = *(v1 + 168) + 32;
    v77 = v2;
    v72 = i;
    while (1)
    {
      if (v74)
      {
        v6 = MEMORY[0x253052270](v5, *(v1 + 168));
      }

      else
      {
        if (v5 >= *(v71 + 16))
        {
          goto LABEL_47;
        }

        v6 = *(v70 + 8 * v5);
      }

      v3 = v6;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_46;
      }

      v8 = [v6 remoteParticipantHandles];
      if (v8)
      {
        break;
      }

LABEL_5:

      if (v5 == i)
      {
        goto LABEL_49;
      }
    }

    v9 = v8;
    v75 = v3;
    sub_24E69A5C4(0, &qword_27F23E1B0, 0x277CF7D30);
    v3 = sub_24ECFF898();
    v10 = sub_24F92BAA8();

    v76 = v5;
    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_24F92C6F8();
      sub_24F92BAE8();
      v10 = *(v1 + 56);
      v11 = *(v1 + 64);
      v12 = *(v1 + 72);
      v13 = *(v1 + 80);
      v14 = *(v1 + 88);
    }

    else
    {
      v13 = 0;
      v15 = -1 << *(v10 + 32);
      v11 = v10 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v10 + 56);
    }

    v18 = (v12 + 64) >> 6;
    if (v10 < 0)
    {
LABEL_28:
      v29 = sub_24F92C778();
      if (v29)
      {
        v2[2] = v29;
        swift_dynamicCast();
        v28 = v2[1];
        v1 = v13;
        v27 = v14;
        if (v28)
        {
          goto LABEL_30;
        }
      }

LABEL_4:
      sub_24E6586B4(v10);
      i = v72;
      v1 = v73;
      v3 = v75;
      v5 = v76;
      goto LABEL_5;
    }

    while (1)
    {
      v25 = v13;
      v26 = v14;
      v1 = v13;
      if (!v14)
      {
        break;
      }

LABEL_26:
      v27 = (v26 - 1) & v26;
      v28 = *(*(v10 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!v28)
      {
        goto LABEL_4;
      }

LABEL_30:
      v30 = [v28 type];
      v78 = v27;
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v41 = [v28 value];
          v42 = v41;
          v43 = v41;
          if (!v41)
          {
            sub_24F92B0D8();
            v43 = sub_24F92B098();

            sub_24F92B0D8();
            v42 = sub_24F92B098();
          }

          v44 = objc_opt_self();
          v45 = v41;
          v46 = [v44 countryCodeForNumber_];

          v40 = [v44 internationalizedUnformattedNumber:v42 countryCode:v46];
          if (!v40)
          {
            v50 = [v28 value];
            v51 = sub_24F92B0D8();
            v53 = v52;

            v23 = v51;
            v24 = v53;
            v2 = v77;
            goto LABEL_21;
          }

LABEL_43:
          sub_24F92B0D8();

          v47 = sub_24F92B198();
          v49 = v48;

          v23 = v47;
          v24 = v49;
          v2 = v77;
          goto LABEL_21;
        }

LABEL_20:
        v19 = [v28 value];
        v20 = sub_24F92B0D8();
        v22 = v21;

        v23 = v20;
        v24 = v22;
LABEL_21:
        v3 = v2;
        sub_24ED7C5F0(&v79, v23, v24);

        v13 = v1;
        v14 = v78;
        if (v10 < 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v30 != 1)
        {
          goto LABEL_20;
        }

        v31 = [v28 value];
        v32 = sub_24F92B0D8();
        v34 = v33;

        sub_24ED7C5F0(&v79, v32, v34);

        v35 = [v28 value];
        v3 = v35;
        v36 = v35;
        if (!v35)
        {
          sub_24F92B0D8();
          v36 = sub_24F92B098();

          sub_24F92B0D8();
          v3 = sub_24F92B098();
        }

        v37 = objc_opt_self();
        v38 = v35;
        v39 = [v37 countryCodeForNumber_];

        v40 = [v37 internationalizedUnformattedNumber:v3 countryCode:v39];
        if (v40)
        {
          goto LABEL_43;
        }

        v13 = v1;
        v2 = v77;
        v14 = v78;
        if (v10 < 0)
        {
          goto LABEL_28;
        }
      }
    }

    while (1)
    {
      v1 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v1 >= v18)
      {
        goto LABEL_4;
      }

      v26 = *(v11 + 8 * v1);
      v25 = (v25 + 1);
      if (v26)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_49:
  v54 = *(v1 + 200);
  v55 = *(v54 + 16);
  *(v1 + 352) = v55;
  if (v55)
  {
    v56 = *(v1 + 320);
    v57 = (*(v1 + 344) + *(*(v1 + 312) + 40));
    v58 = v54 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v59 = *(v56 + 72);
    do
    {
      v60 = *(v1 + 344);
      sub_24F2CC85C(v58, v60, type metadata accessor for Player);
      v61 = *v57;
      v62 = v57[1];

      sub_24F2CC8C4(v60, type metadata accessor for Player);
      if (v62)
      {
        sub_24ED7C5F0(&v79, v61, v62);
      }

      v58 += v59;
      --v55;
    }

    while (v55);
  }

  sub_24F91F638();
  v63 = *(v1 + 144);
  v64 = *(v63 + 16);
  if (v64)
  {
    v65 = sub_24EAE678C(*(v63 + 16), 0);
    v66 = sub_24EAE7C84(&v79, v65 + 4, v64, v63);
    sub_24E6586B4(v79);
    if (v66 == v64)
    {
      goto LABEL_58;
    }

    __break(1u);
  }

  v65 = MEMORY[0x277D84F90];
LABEL_58:
  *(v1 + 360) = v65;
  v67 = swift_task_alloc();
  *(v1 + 368) = v67;
  *v67 = v1;
  v67[1] = sub_24F2D0490;
  v68 = *(v1 + 200);

  return sub_24F2C1C08(v1 + 16, v65, v68);
}