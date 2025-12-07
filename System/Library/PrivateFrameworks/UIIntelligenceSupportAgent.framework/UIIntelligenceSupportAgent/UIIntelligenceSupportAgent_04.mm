void sub_22BB134E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v98 = a5;
  v9 = sub_22BB1E93C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v68[-v13];
  v96 = sub_22BB1E91C();
  v15 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v87 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v94 = &v68[-v18];
  v19 = sub_22BB1E96C();
  MEMORY[0x28223BE20](v19);
  v79 = &v68[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v97 = &v68[-v22];
  v25 = MEMORY[0x28223BE20](v23);
  v95 = &v68[-v26];
  v71 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v29 = *(v24 + 16);
    v28 = v24 + 16;
    v84 = v29;
    v30 = *(v28 + 56);
    v93 = (v10 + 88);
    v92 = *MEMORY[0x277D74670];
    v89 = (v15 + 32);
    v90 = (v10 + 96);
    v82 = (v15 + 8);
    v83 = (v28 - 8);
    v85 = v28;
    v77 = (v28 + 16);
    v69 = (v10 + 8);
    v31 = v27 + v30 * (a3 - 1);
    v76 = -v30;
    v32 = a1 - a3;
    v78 = v27;
    v70 = v30;
    v33 = v27 + v30 * a3;
    v91 = v9;
    v81 = v14;
    v86 = v19;
    while (2)
    {
      v75 = a3;
      v72 = v33;
      v73 = v32;
      v74 = v31;
      while (1)
      {
        v88 = v32;
        v35 = v84;
        (v84)(v95, v33, v19, v25);
        v35(v97, v31, v19);
        sub_22BB1E94C();
        v36 = *v93;
        v37 = (*v93)(v14, v9);
        if (v37 != v92)
        {
          break;
        }

        v38 = *v90;
        (*v90)(v14, v9);
        v39 = *v89;
        (*v89)(v94, v14, v96);
        v40 = sub_22BB1E8AC();
        if (!v41)
        {
          (*v82)(v94, v96);
          v9 = v91;
          goto LABEL_5;
        }

        if (!*(v98 + 16))
        {

LABEL_25:
          (*v82)(v94, v96);
          v9 = v91;
          v14 = v81;
          goto LABEL_5;
        }

        v42 = v98;
        v43 = sub_22BAD6B9C(v40, v41);
        v45 = v44;

        if ((v45 & 1) == 0)
        {
          goto LABEL_25;
        }

        v46 = *(*(v42 + 56) + 8 * v43);
        v47 = v80;
        sub_22BB1E94C();
        v48 = v47;
        v49 = v47;
        v9 = v91;
        v50 = v36(v49, v91);
        if (v50 != v92)
        {
          (*v82)(v94, v96);
          (*v69)(v48, v9);
          v14 = v81;
          goto LABEL_5;
        }

        v38(v48, v9);
        v39(v87, v48, v96);
        v51 = sub_22BB1E8AC();
        v19 = v86;
        if (!v52)
        {
          goto LABEL_28;
        }

        if (!*(v98 + 16))
        {

LABEL_28:
          v66 = *v82;
          v67 = v96;
          (*v82)(v87, v96);
          v66(v94, v67);
          v9 = v91;
          v14 = v81;
          goto LABEL_6;
        }

        v53 = v98;
        v54 = sub_22BAD6B9C(v51, v52);
        v56 = v55;

        if ((v56 & 1) == 0)
        {
          goto LABEL_28;
        }

        v57 = *(*(v53 + 56) + 8 * v54);
        v58 = *v82;
        v59 = v96;
        (*v82)(v87, v96);
        v58(v94, v59);
        v60 = *v83;
        (*v83)(v97, v19);
        v60(v95, v19);
        v61 = v57 < v46;
        v9 = v91;
        v14 = v81;
        v62 = v88;
        if (!v61)
        {
          goto LABEL_7;
        }

        if (!v78)
        {
          __break(1u);
          return;
        }

        v63 = *v77;
        v64 = v79;
        (*v77)(v79, v33, v19);
        swift_arrayInitWithTakeFrontToBack();
        v63(v31, v64, v19);
        v31 += v76;
        v33 += v76;
        v65 = __CFADD__(v62, 1);
        v32 = v62 + 1;
        if (v65)
        {
          goto LABEL_7;
        }
      }

      (*v69)(v14, v9);
LABEL_5:
      v19 = v86;
LABEL_6:
      v34 = *v83;
      (*v83)(v97, v19);
      v34(v95, v19);
LABEL_7:
      a3 = v75 + 1;
      v31 = v74 + v70;
      v32 = v73 - 1;
      v33 = v72 + v70;
      if (v75 + 1 == v71)
      {
        return;
      }

      continue;
    }
  }
}

void sub_22BB13C24(uint64_t result)
{
  v2 = *(v1 + 16);
  if (*v2 & 1) == 0 && (sub_22BB1E7AC())
  {
    *v2 = 1;
  }
}

uint64_t sub_22BB13C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_22BB0D434(a1, v7, v8, (v2 + v6), v9, a2);
}

uint64_t sub_22BB13D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BB13DE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BAF2CCC(result, a2);
  }

  return result;
}

void sub_22BB13E24(uint64_t a1)
{
  sub_22BB1E9DC();
  if (v1 <= 0x3F)
  {
    sub_22BB1EADC();
    if (v2 <= 0x3F)
    {
      sub_22BB13FA0(319, &qword_281424168, MEMORY[0x277D746B0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22BB13F18(uint64_t a1)
{
  sub_22BB13FA0(319, &unk_2814244C0, type metadata accessor for FragmentCollator.ElementVisibilityContext, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22BB13FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BB1402C(uint64_t a1)
{
  result = sub_22BB1E55C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BB140C8(uint64_t a1)
{
  type metadata accessor for CGAffineTransform(319);
  if (v1 <= 0x3F)
  {
    sub_22BB1E96C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BB14194(uint64_t a1)
{
  sub_22BB1F5BC();
  if (v1 <= 0x3F)
  {
    sub_22BB1F11C();
    if (v2 <= 0x3F)
    {
      sub_22BB14230();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BB14230()
{
  if (!qword_281424188[0])
  {
    v0 = sub_22BB1F3CC();
    if (!v1)
    {
      atomic_store(v0, qword_281424188);
    }
  }
}

uint64_t sub_22BB14290(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v4 = sub_22BB1F52C();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22BB1F56C();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Snapshotter(0);
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = v8;
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22BB1F2AC();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = v9;
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BB1F5BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = _s17AsyncProviderTaskVMa(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v45 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v24 = *(v11 + 16);
  v54 = v2;
  v24(v13, v2, v10, v21);
  aBlock = 0x746F687370616E53;
  v64 = 0xE900000000000028;
  v53 = a1;
  v25 = sub_22BB1F24C();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  MEMORY[0x23189D130](v25, v27);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  sub_22BAC8A94(v13, aBlock, v64, v16);

  (*(v11 + 8))(v13, v10);
  v28 = v18;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_22BAC81E8(v16, &qword_27D8DF048, &unk_22BB216E0);
  }

  sub_22BB16F58(v16, v23, _s17AsyncProviderTaskVMa);
  if (qword_27D8DECC8 != -1)
  {
    swift_once();
  }

  v61 = qword_27D8DF668;
  v44 = _s17AsyncProviderTaskVMa;
  v30 = v45;
  sub_22BB16EF0(v23, v45, _s17AsyncProviderTaskVMa);
  v31 = v49;
  v32 = v46;
  v33 = v51;
  (*(v49 + 16))(v46, v53, v51);
  v34 = v52;
  sub_22BB16EF0(v54, v52, type metadata accessor for Snapshotter);
  v35 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v36 = (v19 + *(v31 + 80) + v35) & ~*(v31 + 80);
  v37 = *(v48 + 80);
  v54 = v23;
  v38 = (v47 + v37 + v36) & ~v37;
  v39 = swift_allocObject();
  sub_22BB16F58(v30, v39 + v35, v44);
  (*(v31 + 32))(v39 + v36, v32, v33);
  sub_22BB16F58(v34, v39 + v38, type metadata accessor for Snapshotter);
  v67 = sub_22BB16FC0;
  v68 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22BAC37D4;
  v66 = &block_descriptor_6;
  v40 = _Block_copy(&aBlock);
  v41 = v55;
  sub_22BB1F54C();
  v62 = MEMORY[0x277D84F90];
  sub_22BAC378C(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  v42 = v57;
  v43 = v60;
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v41, v42, v40);
  _Block_release(v40);
  (*(v59 + 8))(v42, v43);
  (*(v56 + 8))(v41, v58);
  sub_22BAC9F20(v54);
}

uint64_t sub_22BB14A2C()
{
  v0 = sub_22BB1F8EC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BB1F90C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BAD7598();
  sub_22BB1F55C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_22BAC378C(&unk_2814240D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_27D8DF668 = result;
  return result;
}

void sub_22BB14C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v259 = a3;
  v5 = sub_22BB1EB2C();
  v243 = *(v5 - 8);
  v244 = v5;
  MEMORY[0x28223BE20](v5);
  v242 = v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1E68C();
  v230 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v252 = v226 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1E60C();
  v240 = *(v9 - 8);
  v241 = v9;
  MEMORY[0x28223BE20](v9);
  v239 = v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BB1EB3C();
  v237 = *(v11 - 8);
  v238 = v11;
  MEMORY[0x28223BE20](v11);
  v236 = v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BB1EB9C();
  v234 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v250 = v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_22BB1F1DC();
  v269 = *(v273 - 1);
  MEMORY[0x28223BE20](v273);
  v272 = v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BB1F17C();
  v247 = *(v16 - 8);
  v248 = v16;
  MEMORY[0x28223BE20](v16);
  v246 = v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BB1F45C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v232 = v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v268 = v226 - v22;
  MEMORY[0x28223BE20](v23);
  v235 = v226 - v24;
  MEMORY[0x28223BE20](v25);
  v231 = v226 - v26;
  MEMORY[0x28223BE20](v27);
  v245 = (v226 - v28);
  v260 = sub_22BB1F1AC();
  v249 = *(v260 - 1);
  MEMORY[0x28223BE20](v260);
  v261 = v226 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_22BB1F1FC();
  v270 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v271 = v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22BB1F21C();
  v262 = *(v31 - 8);
  v263 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = v226 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22BB1F24C();
  if (v35)
  {
    v36 = v35;
    v251 = v34;
  }

  else
  {
    v251 = sub_22BB1EBAC();
    v36 = v37;
  }

  v229 = type metadata accessor for Snapshotter(0);
  v253 = *(v229 + 20);
  v38 = 1.0;
  if ((sub_22BB1EFEC() & 1) == 0)
  {
    sub_22BB1F27C();
    v38 = v39;
  }

  sub_22BB1F26C();
  v40 = v38 * CGRectGetWidth(v281);
  if (COERCE__INT64(fabs(v40)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_22BB1F26C();
  v41 = v38 * CGRectGetHeight(v282);
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v228 = v7;
  v257 = v36;
  if ((v40 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v258 = a2;
  v233 = v13;
  v255 = v18;
  v42 = v41;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v44 = AlignedBytesPerRow * v42;
  if ((AlignedBytesPerRow * v42) >> 64 == (AlignedBytesPerRow * v42) >> 63)
  {
    v45 = AlignedBytesPerRow;
    v254 = v19;
    v256 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF670, &unk_22BB22D70);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_22BB22D00;
    v47 = *MEMORY[0x277CD2B88];
    *(v46 + 32) = *MEMORY[0x277CD2B88];
    v48 = MEMORY[0x277D83B88];
    *(v46 + 40) = v40;
    v49 = *MEMORY[0x277CD2A28];
    *(v46 + 64) = v48;
    *(v46 + 72) = v49;
    *(v46 + 80) = v42;
    v50 = *MEMORY[0x277CD2A70];
    *(v46 + 104) = v48;
    *(v46 + 112) = v50;
    v51 = MEMORY[0x277D84CC0];
    *(v46 + 120) = 1111970369;
    v52 = *MEMORY[0x277CD2960];
    *(v46 + 160) = 4;
    v53 = MEMORY[0x277CD2968];
    *(v46 + 144) = v51;
    *(v46 + 152) = v52;
    v54 = *v53;
    *(v46 + 200) = v45;
    v55 = MEMORY[0x277CD2948];
    *(v46 + 184) = v48;
    *(v46 + 192) = v54;
    v56 = *v55;
    *(v46 + 224) = v48;
    *(v46 + 232) = v56;
    *(v46 + 264) = v48;
    *(v46 + 240) = v44;
    v57 = v47;
    v58 = v49;
    v59 = v50;
    v60 = v52;
    v61 = v54;
    v62 = v56;
    sub_22BAF7D0C(v46);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF318, &unk_22BB21FF0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for CFString(0);
    sub_22BAC378C(&qword_27D8DEDA8, type metadata accessor for CFString, &unk_22BB2092C);
    v63 = sub_22BB1F5EC();

    v64 = IOSurfaceCreate(v63);

    if (!v64)
    {
      v120 = v268;
      sub_22BB1F40C();
      v121 = v257;

      v122 = sub_22BB1F44C();
      v123 = sub_22BB1F8BC();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&a.m11 = v125;
        *v124 = 136446210;
        v126 = sub_22BABDC4C(v251, v121, &a);

        *(v124 + 4) = v126;
        _os_log_impl(&dword_22BABB000, v122, v123, "Failed to create IOSurfaceRef for snapshot: %{public}s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x23189DF20](v125, -1, -1);
        MEMORY[0x23189DF20](v124, -1, -1);
      }

      else
      {
      }

      v183 = (*(v254 + 8))(v120, v255);
      if (qword_281424D70 == -1)
      {
        goto LABEL_36;
      }

      goto LABEL_71;
    }

    v65 = v64;
    v66 = sub_22BB1F66C();
    v67 = sub_22BB1E56C();
    IOSurfaceSetValue(v65, v66, v67);

    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF678, &unk_22BB22D80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_22BB22D10;
    *(v68 + 32) = sub_22BB1F68C();
    *(v68 + 40) = v69;
    v70 = sub_22BB1F22C();
    *(v68 + 72) = MEMORY[0x277D837D0];
    *(v68 + 48) = v70;
    *(v68 + 56) = v71;
    *(v68 + 80) = sub_22BB1F68C();
    *(v68 + 88) = v72;
    type metadata accessor for IOSurfaceRef(0);
    *(v68 + 120) = v73;
    *(v68 + 96) = v65;
    v267 = *MEMORY[0x277CDA900];
    *(v68 + 128) = sub_22BB1F68C();
    *(v68 + 136) = v74;
    v75 = v65;
    sub_22BB1F29C();
    CATransform3DMakeScale(&v278, v38, v38, 1.0);
    a = v277;
    v276 = v278;
    CATransform3DConcat(&v279, &a, &v276);
    type metadata accessor for CATransform3D(0);
    v266 = v76;
    *(v68 + 168) = v76;
    v77 = swift_allocObject();
    *(v68 + 144) = v77;
    v78 = *&v279.m33;
    v77[5] = *&v279.m31;
    v77[6] = v78;
    v79 = *&v279.m43;
    v77[7] = *&v279.m41;
    v77[8] = v79;
    v80 = *&v279.m13;
    v77[1] = *&v279.m11;
    v77[2] = v80;
    v81 = *&v279.m23;
    v77[3] = *&v279.m21;
    v77[4] = v81;
    *(v68 + 176) = sub_22BB1F68C();
    *(v68 + 184) = v82;
    v83 = MEMORY[0x277D839B0];
    *(v68 + 216) = MEMORY[0x277D839B0];
    *(v68 + 192) = 1;
    *(v68 + 224) = sub_22BB1F68C();
    *(v68 + 232) = v84;
    *(v68 + 264) = v83;
    *(v68 + 240) = 1;
    *(v68 + 272) = sub_22BB1F68C();
    *(v68 + 280) = v85;
    v86 = v259;
    v87 = sub_22BB1F02C();
    *(v68 + 312) = v83;
    *(v68 + 288) = v87 & 1;
    *(v68 + 320) = sub_22BB1F68C();
    *(v68 + 328) = v88;
    v89 = sub_22BB1F08C();
    *(v68 + 360) = v83;
    *(v68 + 336) = v89 & 1;
    v90 = sub_22BAF7E34(v68);
    swift_setDeallocating();
    v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF320, &qword_22BB22000);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22BB1F28C();
    v91 = v271;
    sub_22BB1F20C();
    (*(v262 + 8))(v33, v263);
    v92 = v270;
    v93 = v264;
    v94 = (*(v270 + 88))(v91, v264);
    if (v94 == *MEMORY[0x277D74918])
    {
      (*(v92 + 96))(v91, v93);
      v95 = v249;
      v97 = v260;
      v96 = v261;
      (*(v249 + 32))(v261, v91, v260);
      v98 = sub_22BB1F19C();
      v99 = v252;
      if (!v98 || !sub_22BB1F18C())
      {

        v173 = v245;
        sub_22BB1F40C();
        v174 = v257;

        v175 = sub_22BB1F44C();
        v176 = sub_22BB1F8BC();

        if (os_log_type_enabled(v175, v176))
        {
          v177 = v75;
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          *&a.m11 = v179;
          *v178 = 136446210;
          v180 = v95;
          v181 = sub_22BABDC4C(v251, v174, &a);

          *(v178 + 4) = v181;
          _os_log_impl(&dword_22BABB000, v175, v176, "Ignoring snapshot request for %{public}s due to contextID or layerID being 0", v178, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v179);
          MEMORY[0x23189DF20](v179, -1, -1);
          MEMORY[0x23189DF20](v178, -1, -1);

          (*(v254 + 8))(v245, v255);
          v182 = (*(v180 + 8))(v261, v97);
        }

        else
        {

          (*(v254 + 8))(v173, v255);
          v182 = (*(v95 + 8))(v261, v97);
        }

        if (qword_281424D70 == -1)
        {
          goto LABEL_59;
        }

        goto LABEL_72;
      }

      v245 = v75;
      v100 = sub_22BB1F68C();
      v102 = v101;
      v103 = sub_22BB1F68C();
      *&a.m14 = MEMORY[0x277D837D0];
      *&a.m11 = v103;
      a.m12 = v104;
      sub_22BAEEDE4(&a, &v276);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v275[0] = v90;
      sub_22BB0F0A0(&v276, v100, v102, isUniquelyReferenced_nonNull_native);

      v106 = *&v275[0];
      v107 = sub_22BB1F68C();
      v109 = v108;
      v110 = sub_22BB1F19C();
      *&a.m14 = MEMORY[0x277D84CC0];
      LODWORD(a.m11) = v110;
      sub_22BAEEDE4(&a, &v276);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *&v275[0] = v106;
      sub_22BB0F0A0(&v276, v107, v109, v111);

      v112 = *&v275[0];
      v113 = sub_22BB1F68C();
      v115 = v114;
      v116 = sub_22BB1F18C();
      *&a.m14 = MEMORY[0x277D84D38];
      *&a.m11 = v116;
      sub_22BAEEDE4(&a, &v276);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      *&v275[0] = v112;
      sub_22BB0F0A0(&v276, v113, v115, v117);

      (*(v95 + 8))(v96, v97);
      v118 = *&v275[0];
      v119 = v257;
      goto LABEL_46;
    }

    v99 = v252;
    if (v94 == *MEMORY[0x277D74910])
    {
      v245 = v75;
      (*(v92 + 96))(v91, v93);
      (*(v247 + 32))(v246, v91, v248);
      v127 = sub_22BB1F68C();
      v129 = v128;
      v130 = sub_22BB1F68C();
      *&a.m14 = MEMORY[0x277D837D0];
      *&a.m11 = v130;
      a.m12 = v131;
      sub_22BAEEDE4(&a, &v276);
      v132 = swift_isUniquelyReferenced_nonNull_native();
      *&v275[0] = v90;
      sub_22BB0F0A0(&v276, v127, v129, v132);

      v133 = *&v275[0];
      v134 = sub_22BB1F68C();
      v136 = v135;
      v137 = sub_22BB1F16C();
      v138 = *(v137 + 16);
      if (v138)
      {
        v227 = v133;
        v231 = v134;
        v249 = v136;
        *&v275[0] = MEMORY[0x277D84F90];
        sub_22BB03470(0, v138, 0);
        v271 = *&v275[0];
        v264 = *MEMORY[0x277CDA860];
        v139 = v269;
        v140 = (*(v269 + 80) + 32) & ~*(v269 + 80);
        v226[1] = v137;
        v141 = v137 + v140;
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
        v143 = *(v139 + 16);
        v139 += 16;
        v262 = v143;
        v263 = v142;
        v144 = *(v139 + 56);
        v269 = v139;
        v260 = (v139 - 8);
        v261 = v144;
        while (1)
        {
          v270 = v138;
          (v262)(v272, v141, v273);
          v145 = swift_allocObject();
          *(v145 + 32) = sub_22BB1F68C();
          *(v145 + 40) = v146;
          v147 = sub_22BB1F1BC();
          *(v145 + 72) = MEMORY[0x277D84CC0];
          *(v145 + 48) = v147;
          *(v145 + 80) = sub_22BB1F68C();
          *(v145 + 88) = v148;
          sub_22BB1F1CC();
          *(v145 + 120) = v266;
          v149 = swift_allocObject();
          *(v145 + 96) = v149;
          v150 = *&a.m33;
          v149[5] = *&a.m31;
          v149[6] = v150;
          v151 = *&a.m43;
          v149[7] = *&a.m41;
          v149[8] = v151;
          v152 = *&a.m13;
          v149[1] = *&a.m11;
          v149[2] = v152;
          v153 = *&a.m23;
          v149[3] = *&a.m21;
          v149[4] = v153;
          v154 = sub_22BB1FC2C();

          sub_22BB17104(v145 + 32, &v276);
          m11 = v276.m11;
          m12 = v276.m12;
          v157 = sub_22BAD6B9C(*&v276.m11, *&v276.m12);
          if (v158)
          {
            break;
          }

          *(v154 + ((v157 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v157;
          v159 = (v154[6] + 16 * v157);
          *v159 = m11;
          v159[1] = m12;
          sub_22BAEEDE4(&v276.m13, (v154[7] + 32 * v157));
          v160 = v154[2];
          v161 = __OFADD__(v160, 1);
          v162 = v160 + 1;
          if (v161)
          {
            goto LABEL_62;
          }

          v154[2] = v162;
          sub_22BB17104(v145 + 80, &v276);
          v163 = v276.m11;
          v164 = v276.m12;
          v165 = sub_22BAD6B9C(*&v276.m11, *&v276.m12);
          if (v166)
          {
            break;
          }

          *(v154 + ((v165 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v165;
          v167 = (v154[6] + 16 * v165);
          *v167 = v163;
          v167[1] = v164;
          sub_22BAEEDE4(&v276.m13, (v154[7] + 32 * v165));
          v168 = v154[2];
          v161 = __OFADD__(v168, 1);
          v169 = v168 + 1;
          if (v161)
          {
            goto LABEL_62;
          }

          v154[2] = v169;

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*v260)(v272, v273);
          v170 = v271;
          *&v275[0] = v271;
          v172 = *(v271 + 2);
          v171 = *(v271 + 3);
          if (v172 >= v171 >> 1)
          {
            sub_22BB03470((v171 > 1), v172 + 1, 1);
            v170 = *&v275[0];
          }

          *(v170 + 2) = v172 + 1;
          v271 = v170;
          *&v170[8 * v172 + 32] = v154;
          v141 += v261;
          v138 = v270 - 1;
          if (v270 == 1)
          {

            v119 = v257;
            v86 = v259;
            v99 = v252;
            v136 = v249;
            v134 = v231;
            v133 = v227;
            v192 = *&v271;
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v192 = MEMORY[0x277D84F90];
      v119 = v257;
LABEL_45:
      *&v276.m14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF680, &qword_22BB22D90);
      v276.m11 = v192;
      sub_22BAEEDE4(&v276, v275);
      v200 = swift_isUniquelyReferenced_nonNull_native();
      v274 = v133;
      sub_22BB0F0A0(v275, v134, v136, v200);

      (*(v247 + 8))(v246, v248);
      v118 = v274;
    }

    else
    {
      v185 = v257;
      if (v94 != *MEMORY[0x277D74920])
      {

        v193 = v231;
        sub_22BB1F40C();

        v194 = sub_22BB1F44C();
        v195 = sub_22BB1F8BC();

        if (os_log_type_enabled(v194, v195))
        {
          v196 = v75;
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *&a.m11 = v198;
          *v197 = 136446210;
          v199 = sub_22BABDC4C(v251, v185, &a);

          *(v197 + 4) = v199;
          v92 = v270;
          _os_log_impl(&dword_22BABB000, v194, v195, "Snapshot %{public}s provided a SnapshotTarget that Snapshotter does not know about", v197, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v198);
          MEMORY[0x23189DF20](v198, -1, -1);
          MEMORY[0x23189DF20](v197, -1, -1);
        }

        else
        {
        }

        (*(v254 + 8))(v193, v255);
        v182 = (*(v92 + 8))(v271, v93);
        if (qword_281424D70 == -1)
        {
          goto LABEL_59;
        }

        goto LABEL_72;
      }

      v245 = v75;
      v186 = sub_22BB1F68C();
      v188 = v187;
      v189 = sub_22BB1F68C();
      *&a.m14 = MEMORY[0x277D837D0];
      *&a.m11 = v189;
      a.m12 = v190;
      sub_22BAEEDE4(&a, &v276);
      v191 = swift_isUniquelyReferenced_nonNull_native();
      *&v275[0] = v90;
      sub_22BB0F0A0(&v276, v186, v188, v191);

      v118 = *&v275[0];
      v119 = v185;
    }

LABEL_46:
    *&v201 = COERCE_DOUBLE(sub_22BB1F25C());
    if (v202 != 0.0)
    {
      v203 = *&v201;
      v204 = v202;
      v205 = sub_22BB1F68C();
      v207 = v206;
      *&v276.m14 = MEMORY[0x277D837D0];
      v276.m11 = v203;
      v276.m12 = v204;
      sub_22BAEEDE4(&v276, v275);
      v208 = swift_isUniquelyReferenced_nonNull_native();
      v274 = v118;
      sub_22BB0F0A0(v275, v205, v207, v208);

      v118 = v274;
    }

    v209 = v250;
    sub_22BB0BDCC(v118);
    v210 = sub_22BB1F5EC();

    v211 = CARenderServerSnapshot();

    if (v211)
    {
      sub_22BB1EB8C();
      sub_22BB1EF5C();
      sub_22BB1EB6C();
      (*(v237 + 104))(v236, *MEMORY[0x277D74770], v238);
      v212 = sub_22BB1EB7C();
      sub_22BB1EB4C();
      v212(&v276, 0);
      (*(v240 + 104))(v239, *MEMORY[0x277D74490], v241);
      v213 = sub_22BB1EB7C();
      sub_22BB1EB5C();
      v213(&v276, 0);
      v214 = v242;
      v215 = v86;
      v216 = v245;
      sub_22BB1EB1C();
      sub_22BB1EB0C();

      v224 = (*(v243 + 8))(v214, v244);
      v273 = v226;
      v225 = *(v215 + *(v229 + 24));
      MEMORY[0x28223BE20](v224);
      v226[-2] = v258;
      v226[-1] = v99;
      os_unfair_lock_lock(v225 + 6);
      sub_22BB170E8(&v225[4]);
      os_unfair_lock_unlock(v225 + 6);

      (*(v234 + 8))(v209, v233);

      v182 = (*(v230 + 8))(v99, v228);
      if (qword_281424D70 == -1)
      {
        goto LABEL_59;
      }
    }

    else
    {

      v217 = v235;
      sub_22BB1F40C();

      v218 = sub_22BB1F44C();
      v219 = sub_22BB1F8BC();

      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        *&v276.m11 = v221;
        *v220 = 136446210;
        v222 = sub_22BABDC4C(v251, v119, &v276);

        *(v220 + 4) = v222;
        _os_log_impl(&dword_22BABB000, v218, v219, "CARenderServer failed to render snapshot for %{public}s", v220, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v221);
        MEMORY[0x23189DF20](v221, -1, -1);
        MEMORY[0x23189DF20](v220, -1, -1);
        v223 = v245;
      }

      else
      {

        v218 = v245;
      }

      v182 = (*(v254 + 8))(v217, v255);
      if (qword_281424D70 == -1)
      {
        goto LABEL_59;
      }
    }

LABEL_72:
    v182 = swift_once();
LABEL_59:
    v184 = *(qword_281425148 + 24);
    MEMORY[0x28223BE20](v182);
    v226[-2] = v256;
    LOBYTE(v226[-1]) = 0;
    os_unfair_lock_lock((v184 + 40));
    sub_22BB17174((v184 + 16));
    goto LABEL_60;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v183 = swift_once();
LABEL_36:
  v184 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](v183);
  v226[-2] = v256;
  LOBYTE(v226[-1]) = 0;
  os_unfair_lock_lock((v184 + 40));
  sub_22BACB55C((v184 + 16));
LABEL_60:
  os_unfair_lock_unlock((v184 + 40));
}

uint64_t sub_22BB16C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5F0, &qword_22BB22BD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_22BB1F2AC();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2, v9);
  v13 = sub_22BB1E68C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, a3, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  return sub_22BB09DD4(v7, v11);
}

uint64_t sub_22BB16DB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_22BB19350(a2, a4), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_22BB1E68C();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = sub_22BB1E68C();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_22BB16EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BB16F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22BB16FC0()
{
  v1 = *(_s17AsyncProviderTaskVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22BB1F2AC() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Snapshotter(0) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  sub_22BB14C7C(v0 + v2, v0 + v5, v8);
}

uint64_t sub_22BB17104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF320, &qword_22BB22000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB1718C(uint64_t a1)
{
  v2 = sub_22BB1EADC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  result = MEMORY[0x23189D290](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_22BB197C4(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22BB173EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E69C();
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v80 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  v75 = sub_22BB1EADC();
  v9 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF718, &qword_22BB22FC0);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v68 = v15;
    v19 = 0;
    v20 = *(a1 + 64);
    v62 = a1 + 64;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    v61 = (v21 + 63) >> 6;
    v74 = (v9 + 32);
    v64 = v9 + 16;
    v65 = (v9 + 8);
    v76 = (v81 + 8);
    v77 = v81 + 16;
    v66 = a2;
    v67 = v18;
    v69 = a1;
    v63 = v9;
    while (v23)
    {
      v71 = v19;
      v72 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_17:
      v29 = v70;
      v30 = v75;
      (*(v9 + 16))(v70, *(a1 + 48) + *(v9 + 72) * v24, v75, v16);
      v31 = *(a1 + 56);
      v32 = v9;
      v33 = *(v31 + 8 * v24);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
      v35 = *(v34 + 48);
      v36 = *(v32 + 32);
      v37 = v68;
      v36(v68, v29, v30);
      *(v37 + v35) = v33;
      (*(*(v34 - 8) + 56))(v37, 0, 1, v34);

LABEL_18:
      v38 = v67;
      sub_22BAD7044(v37, v67, &qword_27D8DF718, &qword_22BB22FC0);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        return;
      }

      v40 = *(v39 + 48);
      v41 = v73;
      v42 = v75;
      (*v74)(v73, v38, v75);
      v43 = *(v38 + v40);
      v44 = v66;
      v45 = sub_22BB1927C(v41);
      v47 = v46;
      (*v65)(v41, v42);
      if ((v47 & 1) == 0 || (v82 = *(*(v44 + 56) + 8 * v45), v48 = *(v82 + 16), v48 != *(v43 + 16)))
      {
LABEL_32:

        return;
      }

      a1 = v69;
      if (v48 && v82 != v43)
      {
        v49 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v78 = v43 + v49;
        v79 = v82 + v49;

        v50 = 0;
        while (v50 < *(v82 + 16))
        {
          v51 = *(v81 + 72) * v50;
          v52 = *(v81 + 16);
          v52(v8, v79 + v51, v4);
          if (v50 >= *(v43 + 16))
          {
            goto LABEL_36;
          }

          v53 = v43;
          v54 = v8;
          v55 = v80;
          v52(v80, v78 + v51, v4);
          sub_22BABE0B4(&qword_27D8DF720, MEMORY[0x277D74590], MEMORY[0x277D745A0]);
          v56 = sub_22BB1F65C();
          v57 = *v76;
          v58 = v55;
          v8 = v54;
          (*v76)(v58, v4);
          v57(v54, v4);
          if ((v56 & 1) == 0)
          {

            goto LABEL_32;
          }

          ++v50;
          v43 = v53;
          if (v48 == v50)
          {

            a1 = v69;
            goto LABEL_6;
          }
        }

        goto LABEL_35;
      }

LABEL_6:

      v9 = v63;
      v19 = v71;
      v23 = v72;
    }

    if (v61 <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = v61;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v61)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
        v37 = v68;
        (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
        v71 = v26;
        v72 = 0;
        goto LABEL_18;
      }

      v28 = *(v62 + 8 * v27);
      ++v19;
      if (v28)
      {
        v71 = v27;
        v72 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

void sub_22BB17A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF728, &qword_22BB22FC8);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = v49 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v54 = v12;
    v15 = 0;
    v16 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 64);
    v20 = (v17 + 63) >> 6;
    v49[1] = v5 + 16;
    v50 = v5;
    v58 = v49 - v11;
    v59 = (v5 + 32);
    v52 = (v5 + 8);
    v53 = a2;
    v51 = a1;
    while (v19)
    {
      v57 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_17:
      v26 = v55;
      (*(v5 + 16))(v55, *(a1 + 48) + *(v5 + 72) * v21, v4, v13);
      v27 = *(*(a1 + 56) + 8 * v21);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF730, &unk_22BB22FD0);
      v29 = *(v28 + 48);
      v30 = v54;
      (*(v5 + 32))(v54, v26, v4);
      *(v30 + v29) = v27;
      (*(*(v28 - 8) + 56))(v30, 0, 1, v28);

      v14 = v58;
LABEL_18:
      sub_22BAD7044(v30, v14, &qword_27D8DF728, &qword_22BB22FC8);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF730, &unk_22BB22FD0);
      if ((*(*(v31 - 8) + 48))(v14, 1, v31) == 1)
      {
        return;
      }

      v32 = *(v31 + 48);
      v33 = v56;
      (*v59)(v56, v14, v4);
      v34 = *&v14[v32];
      v35 = v53;
      v36 = sub_22BB1927C(v33);
      LOBYTE(v32) = v37;
      (*v52)(v33, v4);
      if ((v32 & 1) == 0 || (v38 = *(*(v35 + 56) + 8 * v36), v39 = *(v38 + 16), v39 != *(v34 + 16)))
      {
LABEL_36:

        return;
      }

      v40 = v4;
      v41 = v50;
      v42 = v51;
      if (v39)
      {
        v43 = v38 == v34;
      }

      else
      {
        v43 = 1;
      }

      if (!v43)
      {
        v44 = (v38 + 40);
        v45 = (v34 + 40);
        while (v39)
        {
          v46 = *(v44 - 1) == *(v45 - 1) && *v44 == *v45;
          if (!v46 && (sub_22BB1FD9C() & 1) == 0)
          {
            goto LABEL_36;
          }

          v44 += 2;
          v45 += 2;
          if (!--v39)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_6:

      a1 = v42;
      v4 = v40;
      v5 = v41;
      v19 = v57;
      v14 = v58;
    }

    if (v20 <= v15 + 1)
    {
      v22 = v15 + 1;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF730, &unk_22BB22FD0);
        v48 = v54;
        (*(*(v47 - 8) + 56))(v54, 1, 1, v47);
        v57 = 0;
        v15 = v23;
        v30 = v48;
        goto LABEL_18;
      }

      v25 = *(v16 + 8 * v24);
      ++v15;
      if (v25)
      {
        v57 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v15 = v24;
        goto LABEL_17;
      }
    }

LABEL_39:
    __break(1u);
  }
}

uint64_t sub_22BB17F84()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF710, &qword_22BB22FB8);
  MEMORY[0x28223BE20](v30 - 8);
  v29 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = *v0;
  v6 = (*v0 + 64);
  v7 = *(*v0 + 32);
  v8 = 1;
  v9 = 1 << v7;
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *v6;
  v12 = (v9 + 63) >> 6;
  v31 = v5;

  v14 = 0;
  v28 = v4;
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v8;
    }

    v11 = v6[v15];
    ++v14;
    if (v11)
    {
      v32 = v8;
      while (1)
      {
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = v16 | (v15 << 6);
        v18 = v31;
        v19 = *(v31 + 48);
        v20 = sub_22BB1EADC();
        v21 = *(v20 - 8);
        (*(v21 + 16))(v4, v19 + *(v21 + 72) * v17, v20);
        v22 = v30;
        *&v4[*(v30 + 48)] = *(*(v18 + 56) + 8 * v17);
        if (v32)
        {
          v23 = v4;
          v24 = v29;
          sub_22BAD7044(v23, v29, &qword_27D8DF710, &qword_22BB22FB8);
          v25 = *(*(v24 + *(v22 + 48)) + 16);

          v8 = v25 == 0;
          v26 = v24;
          v4 = v28;
          result = (*(v21 + 8))(v26, v20);
          v14 = v15;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        else
        {

          result = sub_22BAC81E8(v4, &qword_27D8DF710, &qword_22BB22FB8);
          v8 = 0;
          v14 = v15;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v32 = v8;
        v15 = v14;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t IntelligenceSupportAgent.ExecutableCommands.description.getter()
{
  v33 = sub_22BB1E69C();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BB1EADC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v52 = 0xD000000000000013;
  v53 = 0x800000022BB28220;

  result = sub_22BB1718C(v8);
  v10 = 0;
  v11 = result + 56;
  v12 = 1 << *(result + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(result + 56);
  v15 = (v12 + 63) >> 6;
  v43 = result + 56;
  v44 = v4;
  v40 = (v4 + 8);
  v41 = v4 + 16;
  v38 = v3;
  v39 = v1;
  v42 = v15;
  v36 = v7;
  v37 = v6;
  v34 = (v1 + 8);
  v35 = result;
  v48 = v1 + 16;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      MEMORY[0x23189D130](10506, 0xE200000000000000);
      return v52;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      while (1)
      {
        v47 = v16;
        v17 = result;
        (*(v44 + 16))(v6, *(result + 48) + *(v44 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v3);
        v50 = 10;
        v51 = 0xE100000000000000;
        sub_22BABE0B4(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
        v18 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v18);

        MEMORY[0x23189D130](v50, v51);

        if (*(v7 + 16) && (v19 = sub_22BB1927C(v6), (v20 & 1) != 0))
        {
          v21 = *(*(v7 + 56) + 8 * v19);
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        v14 &= v14 - 1;
        (*v40)(v6, v3);
        v22 = *(v21 + 16);
        if (v22)
        {
          v45 = v21;
          v46 = v14;
          v23 = v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
          v49 = *(v39 + 72);
          v24 = *(v39 + 16);
          v26 = v33;
          v25 = v34;
          v27 = v32;
          do
          {
            v24(v27, v23, v26);
            v50 = 545005578;
            v51 = 0xE400000000000000;
            sub_22BABE0B4(&qword_27D8DF688, MEMORY[0x277D74590], MEMORY[0x277D745B0]);
            v28 = sub_22BB1FD7C();
            v30 = v29;
            (*v25)(v27, v26);
            MEMORY[0x23189D130](v28, v30);

            MEMORY[0x23189D130](v50, v51);

            v23 += v49;
            --v22;
          }

          while (v22);

          v14 = v46;
          v10 = v47;
          v6 = v37;
          v3 = v38;
          result = v35;
          v7 = v36;
          v15 = v42;
          v11 = v43;
          if (!v46)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v10 = v47;
          v15 = v42;
          v11 = v43;
          result = v17;
          if (!v14)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v16 = v10;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.availableProcesses.getter()
{

  return sub_22BB1718C(v0);
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.availableBundleIDs.getter()
{
  v28 = sub_22BB1EADC();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  v4 = sub_22BB1718C(v3);
  v5 = v4 + 56;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  v26 = v0 + 8;
  v27 = v0 + 16;
  v29 = v4;

  v11 = 0;
  v25 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v28;
      (*(v0 + 16))(v2, *(v29 + 48) + *(v0 + 72) * (v12 | (v11 << 6)), v28);
      v14 = sub_22BB1EA9C();
      v16 = v15;
      result = (*(v0 + 8))(v2, v13);
      if (v16)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22BACE678(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    v19 = *(v25 + 2);
    v18 = *(v25 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v24 = v19 + 1;
      result = sub_22BACE678((v18 > 1), v19 + 1, 1, v25);
      v20 = v24;
      v25 = result;
    }

    v21 = v25;
    *(v25 + 2) = v20;
    v22 = &v21[16 * v19];
    *(v22 + 4) = v14;
    *(v22 + 5) = v16;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v9)
    {

      v23 = sub_22BB1DCC8(v25);

      return v23;
    }

    v8 = *(v5 + 8 * v17);
    ++v11;
    if (v8)
    {
      v11 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.commands(for:)(uint64_t a1)
{
  if (*(*v1 + 16) && (sub_22BB1927C(a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.commands(for:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v36 - v3;
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v36 - v8;
  MEMORY[0x28223BE20](v9);
  v37 = &v36 - v10;

  v11 = sub_22BB1718C(v36);
  v12 = v11;
  v13 = v11 + 56;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 56);
  v17 = (v14 + 63) >> 6;
  v40 = v5 + 16;
  v42 = (v5 + 8);
  v43 = (v5 + 32);

  v19 = 0;
  while (v16)
  {
LABEL_11:
    v22 = v12;
    v23 = v41;
    (*(v5 + 16))(v41, *(v12 + 48) + *(v5 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v4);
    v24 = *(v5 + 32);
    v25 = v23;
    v26 = v4;
    v24(v45, v25, v4);
    v27 = sub_22BB1EA9C();
    if (v28)
    {
      if (v27 == v44 && v28 == v39)
      {

        goto LABEL_25;
      }

      v20 = sub_22BB1FD9C();

      if (v20)
      {

LABEL_25:
        v30 = v38;
        v4 = v26;
        v24(v38, v45, v26);
        v29 = 0;
LABEL_16:
        (*(v5 + 56))(v30, v29, 1, v4);

        if ((*(v5 + 48))(v30, 1, v4) == 1)
        {
          sub_22BAC81E8(v30, &qword_27D8DEEA0, &qword_22BB20A30);
          return MEMORY[0x277D84F90];
        }

        else
        {
          v32 = v37;
          (*v43)(v37, v30, v4);
          v33 = v36;
          if (*(v36 + 16) && (v34 = sub_22BB1927C(v32), (v35 & 1) != 0))
          {
            v31 = *(*(v33 + 56) + 8 * v34);
          }

          else
          {
            v31 = MEMORY[0x277D84F90];
          }

          (*v42)(v32, v4);
        }

        return v31;
      }
    }

    v16 &= v16 - 1;
    v4 = v26;
    result = (*v42)(v45, v26);
    v12 = v22;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      v29 = 1;
      v30 = v38;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB18D74()
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](0);
  return sub_22BB1FE0C();
}

uint64_t sub_22BB18DE0(uint64_t a1)
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](0);
  return sub_22BB1FE0C();
}

uint64_t sub_22BB18E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000022BB28240 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22BB1FD9C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22BB18ED0(uint64_t a1)
{
  v2 = sub_22BB1DD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BB18F0C(uint64_t a1)
{
  v2 = sub_22BB1DD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF690, &qword_22BB22D98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB1DD60();

  sub_22BB1FE2C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF6A0, &qword_22BB22DA0);
  sub_22BB1DDB4();
  sub_22BB1FD4C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceSupportAgent.ExecutableCommands.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF6C8, &qword_22BB22DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB1DD60();
  sub_22BB1FE1C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF6A0, &qword_22BB22DA0);
    sub_22BB1DEA8();
    sub_22BB1FCBC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22BB1927C(uint64_t a1)
{
  sub_22BB1EADC();
  v2 = MEMORY[0x277D74708];
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  v3 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v3, MEMORY[0x277D74708], &unk_2814250D0, v2, MEMORY[0x277D74728]);
}

unint64_t sub_22BB19350(uint64_t a1, __n128 a2)
{
  sub_22BB1F2AC();
  v3 = MEMORY[0x277D74928];
  sub_22BABE0B4(&qword_27D8DF0B0, MEMORY[0x277D74928], MEMORY[0x277D74930]);
  v4 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v4, MEMORY[0x277D74928], &qword_27D8DF738, v3, MEMORY[0x277D74938]);
}

unint64_t sub_22BB19424(uint64_t a1)
{
  sub_22BB1E9DC();
  v2 = MEMORY[0x277D746D8];
  sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
  v3 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v3, MEMORY[0x277D746D8], &unk_2814250F0, v2, MEMORY[0x277D746E8]);
}

unint64_t sub_22BB194F8(uint64_t a1)
{
  v2 = sub_22BB1FB0C();

  return sub_22BB195F0(a1, v2);
}

unint64_t sub_22BB1953C(uint64_t a1)
{
  sub_22BB1FDDC();
  type metadata accessor for CFString(0);
  sub_22BABE0B4(&qword_27D8DF750, type metadata accessor for CFString, &unk_22BB20900);
  sub_22BB1E59C();
  v2 = sub_22BB1FE0C();

  return sub_22BB196B8(a1, v2);
}

unint64_t sub_22BB195F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22BB1E308(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23189D540](v9, a1);
      sub_22BB1E364(v9);
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

unint64_t sub_22BB196B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_22BABE0B4(&qword_27D8DF750, type metadata accessor for CFString, &unk_22BB20900);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22BB1E58C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22BB197C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22BB1EADC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  v33 = a2;
  v11 = sub_22BB1F61C();
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
      sub_22BABE0B4(&unk_2814250D0, MEMORY[0x277D74708], MEMORY[0x277D74728]);
      v21 = sub_22BB1F65C();
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
    sub_22BB1B834(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22BB19AA4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22BB1F2EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
  v33 = a2;
  v11 = sub_22BB1F61C();
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
      sub_22BABE0B4(&qword_281425068, MEMORY[0x277D74940], MEMORY[0x277D74950]);
      v21 = sub_22BB1F65C();
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
    sub_22BB1BAFC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22BB19D84(uint64_t a1, void *a2)
{
  v25 = a1;
  v4 = type metadata accessor for ConnectionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v23 = (&v23 - v9);
  v24 = v2;
  v10 = *v2;
  sub_22BB1FDDC();
  v11 = *a2;
  MEMORY[0x23189D810](*a2);
  v26 = v4;
  sub_22BB1EADC();
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  v27 = a2;
  sub_22BB1F62C();
  v12 = sub_22BB1FE0C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    do
    {
      sub_22BABED78(*(v10 + 48) + v16 * v14, v7, type metadata accessor for ConnectionID);
      if (*v7 == v11)
      {
        v17 = sub_22BB1EAAC();
        sub_22BABEDE0(v7, type metadata accessor for ConnectionID);
        if (v17)
        {
          sub_22BABEDE0(v27, type metadata accessor for ConnectionID);
          sub_22BABED78(*(v10 + 48) + v16 * v14, v25, type metadata accessor for ConnectionID);
          return 0;
        }
      }

      else
      {
        sub_22BABEDE0(v7, type metadata accessor for ConnectionID);
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v19 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v27;
  v22 = v23;
  sub_22BABED78(v27, v23, type metadata accessor for ConnectionID);
  v28 = *v19;
  sub_22BB1BDC4(v22, v14, isUniquelyReferenced_nonNull_native);
  *v19 = v28;
  sub_22BAEF968(v21, v25);
  return 1;
}

uint64_t sub_22BB1A088(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22BB1FAEC();

    if (v9)
    {

      sub_22BB1E2BC();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22BB1FADC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22BB1A3F0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22BB1B328(v20 + 1);
    }

    v18 = v8;
    sub_22BB1B7B0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_22BB1E2BC();
  v11 = sub_22BB1F9EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22BB1C080(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22BB1F9FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22BB1A2A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22BB1FDDC();
  sub_22BB1F6EC();
  v8 = sub_22BB1FE0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22BB1FD9C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22BB1C1E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22BB1A3F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
    v2 = sub_22BB1FB4C();
    v15 = v2;
    sub_22BB1FACC();
    if (sub_22BB1FAFC())
    {
      sub_22BB1E2BC();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_22BB1B328(v9 + 1);
        }

        v2 = v15;
        result = sub_22BB1F9EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_22BB1FAFC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22BB1A5D0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22BB1EADC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF708, &qword_22BB22FB0);
  result = sub_22BB1FB3C();
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
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      result = sub_22BB1F61C();
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

uint64_t sub_22BB1A92C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22BB1F2EC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF758, &unk_22BB22FF0);
  result = sub_22BB1FB3C();
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
      sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
      result = sub_22BB1F61C();
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

uint64_t sub_22BB1AC88(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ConnectionID(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF740, &qword_22BB22FE0);
  result = sub_22BB1FB3C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_22BAEF968(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v5);
      sub_22BB1EADC();
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22BAEF968(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_22BB1AFCC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22BB1E9DC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF638, &qword_22BB22C20);
  result = sub_22BB1FB3C();
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
      sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
      result = sub_22BB1F61C();
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

uint64_t sub_22BB1B328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
  result = sub_22BB1FB3C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_22BB1F9EC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22BB1B550(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF700, &qword_22BB22FA8);
  result = sub_22BB1FB3C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22BB1B7B0(uint64_t a1, uint64_t a2)
{
  sub_22BB1F9EC();
  result = sub_22BB1FABC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22BB1B834(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22BB1EADC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1A5D0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22BB1C580(MEMORY[0x277D74708], &qword_27D8DF708, &qword_22BB22FB0);
      goto LABEL_12;
    }

    sub_22BB1CA64(v11 + 1);
  }

  v13 = *v3;
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  v14 = sub_22BB1F61C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22BABE0B4(&unk_2814250D0, MEMORY[0x277D74708], MEMORY[0x277D74728]);
      v22 = sub_22BB1F65C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

uint64_t sub_22BB1BAFC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22BB1F2EC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1A92C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22BB1C580(MEMORY[0x277D74940], &qword_27D8DF758, &unk_22BB22FF0);
      goto LABEL_12;
    }

    sub_22BB1CD80(v11 + 1);
  }

  v13 = *v3;
  sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
  v14 = sub_22BB1F61C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22BABE0B4(&qword_281425068, MEMORY[0x277D74940], MEMORY[0x277D74950]);
      v22 = sub_22BB1F65C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

uint64_t sub_22BB1BDC4(void *a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = type metadata accessor for ConnectionID(0);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v23 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_22BB1AC88(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22BB1C360();
      goto LABEL_15;
    }

    sub_22BB1D09C(v9 + 1);
  }

  v11 = *v3;
  sub_22BB1FDDC();
  v12 = *v25;
  MEMORY[0x23189D810](*v25);
  sub_22BB1EADC();
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  sub_22BB1F62C();
  v13 = sub_22BB1FE0C();
  v14 = -1 << *(v11 + 32);
  a2 = v13 & ~v14;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v24 + 72);
    do
    {
      sub_22BABED78(*(v11 + 48) + v16 * a2, v8, type metadata accessor for ConnectionID);
      if (*v8 == v12)
      {
        v17 = sub_22BB1EAAC();
        sub_22BABEDE0(v8, type metadata accessor for ConnectionID);
        if (v17)
        {
          sub_22BB1FDAC();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_22BABEDE0(v8, type metadata accessor for ConnectionID);
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v18 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22BAEF968(v25, *(v18 + 48) + *(v24 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_22BB1C080(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1B328(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22BB1C7B8();
      goto LABEL_12;
    }

    sub_22BB1D6E0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_22BB1F9EC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_22BB1E2BC();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_22BB1F9FC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22BB1FDAC();
  __break(1u);
}

uint64_t sub_22BB1C1E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22BB1B550(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22BB1C908();
      goto LABEL_16;
    }

    sub_22BB1D8F4(v8 + 1);
  }

  v10 = *v4;
  sub_22BB1FDDC();
  sub_22BB1F6EC();
  result = sub_22BB1FE0C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22BB1FD9C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

void *sub_22BB1C360()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF740, &qword_22BB22FE0);
  v6 = *v0;
  v7 = sub_22BB1FB2C();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_22BABED78(*(v6 + 48) + v21, v5, type metadata accessor for ConnectionID);
        result = sub_22BAEF968(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_22BB1C580(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_22BB1FB2C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

id sub_22BB1C7B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
  v2 = *v0;
  v3 = sub_22BB1FB2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22BB1C908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF700, &qword_22BB22FA8);
  v2 = *v0;
  v3 = sub_22BB1FB2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22BB1CA64(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22BB1EADC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF708, &qword_22BB22FB0);
  v7 = sub_22BB1FB3C();
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
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      result = sub_22BB1F61C();
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

uint64_t sub_22BB1CD80(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22BB1F2EC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF758, &unk_22BB22FF0);
  v7 = sub_22BB1FB3C();
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
      sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
      result = sub_22BB1F61C();
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

uint64_t sub_22BB1D09C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ConnectionID(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF740, &qword_22BB22FE0);
  result = sub_22BB1FB3C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_22BABED78(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for ConnectionID);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v5);
      sub_22BB1EADC();
      sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22BAEF968(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v31;
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

        v2 = v30;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_22BB1D3C4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22BB1E9DC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF638, &qword_22BB22C20);
  v7 = sub_22BB1FB3C();
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
      sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
      result = sub_22BB1F61C();
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

uint64_t sub_22BB1D6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF748, &qword_22BB22FE8);
  result = sub_22BB1FB3C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_22BB1F9EC();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22BB1D8F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF700, &qword_22BB22FA8);
  result = sub_22BB1FB3C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22BB1FDDC();

      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22BB1DB2C(uint64_t a1)
{
  v2 = sub_22BB1F2EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
  result = MEMORY[0x23189D290](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_22BB19AA4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22BB1DCC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23189D290](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22BB1A2A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_22BB1DD60()
{
  result = qword_27D8DF698;
  if (!qword_27D8DF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF698);
  }

  return result;
}

unint64_t sub_22BB1DDB4()
{
  result = qword_27D8DF6A8;
  if (!qword_27D8DF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF6A0, &qword_22BB22DA0);
    sub_22BABE0B4(&qword_27D8DF158, MEMORY[0x277D74708], MEMORY[0x277D74710]);
    sub_22BB1DF9C(&qword_27D8DF6B0, &qword_27D8DF6C0, MEMORY[0x277D74598], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6A8);
  }

  return result;
}

unint64_t sub_22BB1DEA8()
{
  result = qword_27D8DF6D0;
  if (!qword_27D8DF6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF6A0, &qword_22BB22DA0);
    sub_22BABE0B4(&qword_27D8DF148, MEMORY[0x277D74708], MEMORY[0x277D74738]);
    sub_22BB1DF9C(&qword_27D8DF6D8, &qword_27D8DF6E0, MEMORY[0x277D745A8], MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6D0);
  }

  return result;
}

uint64_t sub_22BB1DF9C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF6B8, &qword_22BB22DA8);
    sub_22BABE0B4(a2, MEMORY[0x277D74590], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB1E038(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22BB1E080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14descr283F6AF29O18ExecutableCommandsV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s14descr283F6AF29O18ExecutableCommandsV10CodingKeysOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22BB1E1B8()
{
  result = qword_27D8DF6E8;
  if (!qword_27D8DF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6E8);
  }

  return result;
}

unint64_t sub_22BB1E210()
{
  result = qword_27D8DF6F0;
  if (!qword_27D8DF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6F0);
  }

  return result;
}

unint64_t sub_22BB1E268()
{
  result = qword_27D8DF6F8;
  if (!qword_27D8DF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF6F8);
  }

  return result;
}

unint64_t sub_22BB1E2BC()
{
  result = qword_2814240C0;
  if (!qword_2814240C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814240C0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BB1E3CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BB1E3EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}