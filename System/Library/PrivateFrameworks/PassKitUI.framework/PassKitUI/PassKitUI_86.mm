void sub_1BD9187F8(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD918878(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD9188F4(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD918974(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD9189E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE051F54();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD918B04, 0, 0);
}

uint64_t sub_1BD918B04()
{
  v1 = v0[16];
  v2 = v0[13];
  v31 = v0[15];
  v32 = v0[14];
  v3 = v0[11];
  v30 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = sub_1BE052434();
  v8 = v7;
  v9 = sub_1BD51D758(v6, v7, v4);
  v8, v10, v11, v12, v13, v14, v15, v16;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v29 = sub_1BE052D54();
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = v9;
  v0[6] = sub_1BD91A494;
  v0[7] = v17;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_211;
  v18 = _Block_copy(v0 + 2);
  v19 = v0[7];
  sub_1BE048964();
  v19, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v18);
  _Block_release(v18);

  (*(v30 + 8))(v2, v3);
  (*(v31 + 8))(v1, v32);

  v27 = v0[1];

  return v27();
}

void sub_1BD918D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = sub_1BE053704();
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    v20 = swift_getKeyPath();
    sub_1BE04D8B4(&v61);
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
    v20, v28, v29, v30, v31, v32, v33, v34;
    sub_1BDA7AC7C(v4);
    v35 = v61;
    v36 = swift_getKeyPath();
    v37 = swift_getKeyPath();
    sub_1BE04D8B4(&v60);
    v36, v38, v39, v40, v41, v42, v43, v44;
    v37, v45, v46, v47, v48, v49, v50, v51;
    v52 = v60;
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v35;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD917E9C(v52);
    v52, v53, v54, v55, v56, v57, v58, v59;
    return;
  }

  v61 = MEMORY[0x1E69E7CC0];
  sub_1BE0538E4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](v5, a2);
      }

      else
      {
        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_1BE052434();
      v9 = v8;
      v10 = v7;
      v11 = sub_1BE052404();
      v9, v12, v13, v14, v15, v16, v17, v18;
      [v10 setValueSource_];

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v3 != v5);
    v4 = v61;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BD918FBC()
{
  v1 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D0, &unk_1BE0D4EC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__phoneNumbers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD58EA0, &qword_1BE105868);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__errors;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD527E8, &unk_1BE0F5FE0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__isValid;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_1BD40FB5C(*(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 32), *(v0 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 40));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhoneNumbers(uint64_t a1)
{
  result = qword_1EBD58E50;
  if (!qword_1EBD58E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9191D8(uint64_t a1)
{
  sub_1BD0E4578(319, &unk_1EBD58E60, &qword_1EBD42FC8, &qword_1BE0CF180);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD58E70, &qword_1EBD42FB8, &unk_1BE0D4ED0);
    if (v2 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD52750, &qword_1EBD459D8, &qword_1BE0F5B50);
      if (v3 <= 0x3F)
      {
        sub_1BD1E1120();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1BD919378()
{
  result = qword_1EBD58E90;
  if (!qword_1EBD58E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58E90);
  }

  return result;
}

uint64_t sub_1BD9193D4(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (!a1 || (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) == 0))
  {
    v35 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_10;
    }

LABEL_6:
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35, a2, a3, a4, a5, a6, a7, a8;
    if (!v36)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  v13 = *MEMORY[0x1E69BB7C8];
  *(v12 + 32) = *MEMORY[0x1E69BB7C8];
  type metadata accessor for PKContactField(0);
  v14 = v13;
  v15 = a1;
  v16 = sub_1BE052724();
  v12, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v11 clientErrors];
  if (v24)
  {
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v26 = sub_1BE052744();

    v27 = sub_1BD3F00D4(v26);
    v26, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v38 = objc_opt_self();
  v46 = sub_1BD3F01E8(v27, v39, v40, v41, v42, v43, v44, v45);
  v27, v47, v48, v49, v50, v51, v52, v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  v54 = sub_1BE052724();
  v46, v55, v56, v57, v58, v59, v60, v61;
  v62 = [v38 pk:v16 FilteredShippingErrorsForContactFields:v54 errors:?];

  v63 = sub_1BE052744();
  v64 = sub_1BD3F00D4(v63);

  v63, v65, v66, v67, v68, v69, v70, v71;
  v35 = v64;
  if (!(v64 >> 62))
  {
    goto LABEL_6;
  }

LABEL_10:
  v72 = v35;
  v73 = sub_1BE053704();
  v72, v74, v75, v76, v77, v78, v79, v80;
  if (v73)
  {
    return 0;
  }

LABEL_11:
  v81 = [a2 shippingPhone];
  if (!v81)
  {
    return 1;
  }

  v82 = v81;
  v83 = [v81 phoneNumbers];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v84 = sub_1BE052744();

  if (!(v84 >> 62))
  {
    result = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_24:
    v84, v85, v86, v87, v88, v89, v90, v91;
    return 1;
  }

LABEL_14:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v92 = MEMORY[0x1BFB40900](0, v84);
LABEL_17:
    v100 = v92;
    v84, v93, v94, v95, v96, v97, v98, v99;
    v101 = [v100 value];

    if (v101)
    {
      v102 = [v101 digits];
      if (!v102)
      {
        sub_1BE052434();
        v104 = v103;
        v102 = sub_1BE052404();
        v104, v105, v106, v107, v108, v109, v110, v111;
      }

      v112 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

      v113 = [a2 contactFormatValidator];
      if (v113)
      {
        v114 = v113;
        v115 = [v113 phoneNumberIsValid:v112 forCountryCode:0];

        return v115;
      }
    }

    return 1;
  }

  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v92 = *(v84 + 32);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1BD9197C0(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v201 = *(a1 + 16);
  v202 = *(a1 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D0, &unk_1BE0D4EC0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v196 - v8;
  v10 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers__internalSelectedPhoneNumber;
  v206[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FC8, &qword_1BE0CF180);
  sub_1BE04D874();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  v12 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_defaults;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69B8CF8]) init];
  result = [objc_opt_self() defaultInstance];
  if (!result)
  {
    goto LABEL_39;
  }

  v14 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_recents;
  *(v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_recents) = result;
  v15 = MEMORY[0x1E69E7CC0];
  v203 = v1;
  v196 = v14;
  v197 = v12;
  v199 = v4;
  v200 = v3;
  if (v5)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BE0B69E0;
      v19 = *MEMORY[0x1E69BB7C8];
      *(v18 + 32) = *MEMORY[0x1E69BB7C8];
      type metadata accessor for PKContactField(0);
      v20 = v19;
      v21 = v5;
      v22 = sub_1BE052724();
      v18, v23, v24, v25, v26, v27, v28, v29;
      v30 = [v17 clientErrors];
      if (v30)
      {
        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v32 = sub_1BE052744();

        v33 = sub_1BD3F00D4(v32);
        v32, v34, v35, v36, v37, v38, v39, v40;
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
      }

      v41 = objc_opt_self();
      v49 = sub_1BD3F01E8(v33, v42, v43, v44, v45, v46, v47, v48);
      v33, v50, v51, v52, v53, v54, v55, v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v57 = sub_1BE052724();
      v49, v58, v59, v60, v61, v62, v63, v64;
      v65 = [v41 pk:v22 FilteredShippingErrorsForContactFields:v57 errors:?];

      v66 = sub_1BE052744();
      v15 = sub_1BD3F00D4(v66);

      v66, v67, v68, v69, v70, v71, v72, v73;
    }
  }

  swift_beginAccess();
  v207 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD459D8, &qword_1BE0F5B50);
  sub_1BE04D874();
  swift_endAccess();
  v74 = *(a1 + 32);
  v81 = sub_1BD9193D4(v5, v74, v75, v76, v77, v78, v79, v80);
  swift_beginAccess();
  LOBYTE(v207) = v81 & 1;
  sub_1BE04D874();
  swift_endAccess();
  v82 = *a1;
  v207 = *(a1 + 8);
  v83 = *v11;
  v84 = *(v11 + 8);
  v85 = *(v11 + 16);
  v86 = *(v11 + 24);
  v87 = *(v11 + 40);
  v198 = *(v11 + 32);
  v88 = v199;
  *v11 = v200;
  *(v11 + 8) = v88;
  *(v11 + 16) = v201;
  *(v11 + 24) = v5;
  *(v11 + 32) = v202;
  v89 = v5;
  v90 = v82;
  v91 = v74;
  sub_1BE048964();
  sub_1BD91A424(&v207, v206);
  sub_1BD40FB5C(v83, v84, v85, v86, v198, v87);
  v92 = [v91 shippingPhone];
  if (!v92)
  {
    v93 = v203;
    v94 = [*(v203 + v196) meCard];
    v95 = [*(v93 + v197) defaultContactPhone];
    if (!v95)
    {
      v95 = v94;
    }

    [v91 setShippingPhone_];

    v92 = v94;
  }

  v96 = sub_1BE052434();
  v98 = v97;
  v99 = [v91 shippingPhone];
  v100 = v99;
  if (v99)
  {
    v101 = v99;
  }

  v102 = v203;
  v103 = MEMORY[0x1E69E7CC0];

  v104 = sub_1BD51D758(v96, v98, v100);
  v98, v105, v106, v107, v108, v109, v110, v111;

  if (v104 >> 62)
  {
    v119 = sub_1BE053704();
    if (v119)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v119 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v119)
    {
LABEL_16:
      v206[0] = v103;
      result = sub_1BE0538E4();
      if ((v119 & 0x8000000000000000) == 0)
      {
        *&v202 = v91;
        v120 = 0;
        do
        {
          if ((v104 & 0xC000000000000001) != 0)
          {
            v121 = MEMORY[0x1BFB40900](v120, v104);
          }

          else
          {
            v121 = *(v104 + 8 * v120 + 32);
          }

          v122 = v121;
          ++v120;
          sub_1BE052434();
          v124 = v123;
          v125 = v122;
          v126 = sub_1BE052404();
          v124, v127, v128, v129, v130, v131, v132, v133;
          [v125 setValueSource_];

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        while (v119 != v120);
        v104, v134, v135, v136, v137, v138, v139, v140;
        v148 = v206[0];
        v102 = v203;
        v103 = MEMORY[0x1E69E7CC0];
        v91 = v202;
        goto LABEL_25;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }
  }

  v104, v112, v113, v114, v115, v116, v117, v118;
  v148 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v149 = MEMORY[0x1E69E7CD0];
  v204 = v103;
  v205 = MEMORY[0x1E69E7CD0];
  v150 = v148[2];
  if (v150)
  {
    v151 = v148 + 4;
    do
    {
      v152 = *v151;
      v153 = sub_1BD99F5F8(v152);
      v155 = sub_1BD2A5644(v206, v153, v154);
      v206[1], v156, v157, v158, v159, v160, v161, v162;
      if (v155)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v151;
      --v150;
    }

    while (v150);
    v103 = v204;
    v149 = v205;
  }

  v148, v141, v142, v143, v144, v145, v146, v147;
  v149, v163, v164, v165, v166, v167, v168, v169;
  swift_beginAccess();
  v205 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8, &unk_1BE0D4ED0);
  sub_1BE04D874();
  swift_endAccess();
  v170 = [v91 shippingPhone];
  if (!v170)
  {
    KeyPath = swift_getKeyPath();
    v172 = swift_getKeyPath();
    sub_1BE04D8B4(v206);
    KeyPath, v173, v174, v175, v176, v177, v178, v179;
    v172, v180, v181, v182, v183, v184, v185, v186;
    v194 = v206[0];
    if (*(v206[0] + 16))
    {
      v170 = *(v206[0] + 32);
    }

    else
    {
      v170 = 0;
    }

    v194, v187, v188, v189, v190, v191, v192, v193;
    [v91 setShippingPhone_];
  }

  v195 = [v91 shippingPhone];
  swift_getKeyPath();
  swift_getKeyPath();
  v206[0] = v195;
  sub_1BE048964();
  sub_1BE04D8C4();
  return v102;
}

void sub_1BD91A048(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Analytics.StateChange(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a3 shippingPhone];
  v15 = v14;
  if (!a1)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v14)
  {
    v69[0] = v9;
    v69[1] = v6;
    v70 = a2;
    v71 = a1;
    v16 = [v71 identifier];
    v17 = sub_1BE052434();
    v19 = v18;

    v20 = [v15 identifier];
    v21 = sub_1BE052434();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {
      v19, v24, v25, v26, v27, v28, v29, v30;
      v23, v31, v32, v33, v34, v35, v36, v37;
    }

    else
    {
      v38 = sub_1BE053B84();
      v19, v39, v40, v41, v42, v43, v44, v45;
      v23, v46, v47, v48, v49, v50, v51, v52;
      if ((v38 & 1) == 0)
      {

        a2 = v70;
        v9 = v69[0];
        goto LABEL_15;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v53 = sub_1BE053074();

    a2 = v70;
    v9 = v69[0];
    if (v53)
    {
      v54 = v71;

      return;
    }
  }

  v55 = a1;
LABEL_15:
  sub_1BD99F5F8(a1);
  v57 = v56;

  v57, v58, v59, v60, v61, v62, v63, v64;
LABEL_16:
  sub_1BE04D084();
  v65 = sub_1BE04D204();
  v66 = sub_1BE052C54();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1BD026000, v65, v66, "Updating selected phone number", v67, 2u);
    MEMORY[0x1BFB45F20](v67, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  v68 = a1;
  sub_1BD6B56B4(v8, 2);
  sub_1BD42D548(v8);
  [a2 didSelectShippingPhoneNumber_];
}

uint64_t sub_1BD91A3BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E80, &qword_1BE1057D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD91A424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D490, &unk_1BE0D42B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id PKIdentityDataReleaseTransactionConfiguration.__allocating_init(documentType:elements:transactionSource:passName:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B80, &qword_1BE0FB220);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_1BE04DA84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v45 = v7;
  v19 = objc_allocWithZone(v7);
  sub_1BD7FFA38(a3);
  sub_1BE04DA34();
  a3, v20, v21, v22, v23, v24, v25, v26;
  if ((*(v13 + 48))(v11, 1, v12))
  {
    v44, v27, v28, v29, v30, v31, v32, v33;
    sub_1BD8010AC(v11);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v35 = *(v13 + 32);
    v35(v15, v11, v12);
    v35(v18, v15, v12);
    v35(&v19[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_elementCategoryGroups], v18, v12);
    v36 = OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_presentmentSource;
    v37 = sub_1BE04DA24();
    v38 = MEMORY[0x1E6997D18];
    if (v42 != 2)
    {
      v38 = MEMORY[0x1E6997D20];
    }

    (*(*(v37 - 8) + 104))(&v19[v36], *v38, v37);
    v39 = &v19[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_passName];
    v40 = v44;
    *v39 = v43;
    v39[1] = v40;
    v46.receiver = v19;
    v46.super_class = v45;
    return objc_msgSendSuper2(&v46, sel_init);
  }
}

id PKIdentityDataReleaseTransactionConfiguration.init(documentType:elements:transactionSource:passName:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = a5;
  v42 = a6;
  v40 = a4;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54B80, &qword_1BE0FB220);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_1BE04DA84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  sub_1BD7FFA38(a3);
  sub_1BE04DA34();
  a3, v18, v19, v20, v21, v22, v23, v24;
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v42, v25, v26, v27, v28, v29, v30, v31;
    sub_1BD8010AC(v10);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v33 = *(v12 + 32);
    v33(v14, v10, v11);
    v33(v17, v14, v11);
    v33(&v6[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_elementCategoryGroups], v17, v11);
    v34 = OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_presentmentSource;
    v35 = sub_1BE04DA24();
    v36 = MEMORY[0x1E6997D18];
    if (v40 != 2)
    {
      v36 = MEMORY[0x1E6997D20];
    }

    (*(*(v35 - 8) + 104))(&v6[v34], *v36, v35);
    v37 = &v6[OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_passName];
    v38 = v42;
    *v37 = v41;
    v37[1] = v38;
    v44.receiver = v6;
    v44.super_class = ObjectType;
    return objc_msgSendSuper2(&v44, sel_init);
  }
}

id PKIdentityDataReleaseTransactionConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *PKDataReleaseElementsTransactionCell.dataReleaseConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PKDataReleaseElementsTransactionCell.dataReleaseConfiguration.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8, &qword_1BE105908);
  v6[4] = sub_1BD91B3E0();
  __swift_allocate_boxed_opaque_existential_1(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8, &unk_1BE105910);
  sub_1BD91B444();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FD10](v6);
}

uint64_t sub_1BD91AEE0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8, &qword_1BE105908);
  v8[4] = sub_1BD91B3E0();
  __swift_allocate_boxed_opaque_existential_1(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8, &unk_1BE105910);
  sub_1BD91B444();
  sub_1BE04FCE4();
  return MEMORY[0x1BFB3FD10](v8);
}

void (*PKDataReleaseElementsTransactionCell.dataReleaseConfiguration.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return sub_1BD91B044;
}

void sub_1BD91B044(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8, &qword_1BE105908);
    v3[4] = sub_1BD91B3E0();
    __swift_allocate_boxed_opaque_existential_1(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8, &unk_1BE105910);
    sub_1BD91B444();
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FD10](v3);
  }

  free(v3);
}

uint64_t sub_1BD91B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_1BE04DA24();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04DA84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE0520D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (v16)
  {
    (*(v8 + 16))(v10, v16 + OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_elementCategoryGroups, v7);
    (*(v4 + 16))(v6, v16 + OBJC_IVAR____TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration_presentmentSource, v22);
    sub_1BE048C84();
    sub_1BE0520C4();
    v17 = v23;
    (*(v12 + 32))(v23, v14, v11);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v23;
  }

  return (*(v12 + 56))(v19, v18, 1, v11);
}

unint64_t sub_1BD91B3E0()
{
  result = qword_1EBD58EE0;
  if (!qword_1EBD58EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58ED8, &qword_1BE105908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58EE0);
  }

  return result;
}

unint64_t sub_1BD91B444()
{
  result = qword_1EBD58EF0;
  if (!qword_1EBD58EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58EE8, &unk_1BE105910);
    sub_1BD91B9D4(&qword_1EBD58EF8, MEMORY[0x1E6997E48], MEMORY[0x1E6997E40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58EF0);
  }

  return result;
}

id PKDataReleaseElementsTransactionCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v7];

  return v15;
}

id PKDataReleaseElementsTransactionCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration] = 0;
  if (a3)
  {
    v7 = sub_1BE052404();
    a3, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v15;
}

id PKDataReleaseElementsTransactionCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDataReleaseElementsTransactionCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t type metadata accessor for PKIdentityDataReleaseTransactionConfiguration(uint64_t a1)
{
  result = qword_1EBD58F00;
  if (!qword_1EBD58F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD91B854(uint64_t a1)
{
  result = sub_1BE04DA84();
  if (v2 <= 0x3F)
  {
    result = sub_1BE04DA24();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BD91B988()
{
  result = qword_1EBD406D0;
  if (!qword_1EBD406D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD406D0);
  }

  return result;
}

uint64_t sub_1BD91B9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD91BB08(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v81 = v1;
  v3 = sub_1BD1877FC(v1, KeyPath);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v18 = v3[2];
  v19 = v3 + 4;
  while (2)
  {
    v29 = v18;
    if (v18)
    {
      v20 = 0xEF65636976654420;
      v30 = "fer";
      switch(*v19)
      {
        case 1:
          goto LABEL_13;
        case 2:
          v20 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v20 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v20 = 0x80000001BE118260;
          goto LABEL_3;
        case 5:
          v30 = "Precursor Education";
LABEL_13:
          v20 = (v30 | 0x8000000000000000);
          if (0x80000001BE118230 != (v30 | 0x8000000000000000))
          {
            goto LABEL_3;
          }

          v3, v11, v12, v13, v14, v15, v16, v17;
          v3 = v20;
          break;
        case 6:
          v20 = 0x80000001BE1182A0;
          goto LABEL_3;
        case 7:
          v20 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v20 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v20 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v20 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v20 = 0x80000001BE1182F0;
          goto LABEL_3;
        case 0xC:
          v20 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v20 = 0x80000001BE118310;
          goto LABEL_3;
        default:
LABEL_3:
          v21 = sub_1BE053B84();
          v20, v22, v23, v24, v25, v26, v27, v28;
          ++v19;
          v18 = v29 - 1;
          if ((v21 & 1) == 0)
          {
            continue;
          }

          goto LABEL_21;
      }
    }

    break;
  }

LABEL_21:
  v3, v11, v12, v13, v14, v15, v16, v17;
  v31 = swift_getKeyPath();
  v32 = sub_1BD18781C(v81, v31);
  v31, v33, v34, v35, v36, v37, v38, v39;
  if (!v29 && (v32 & 1) != 0)
  {
    v40 = "not grouped pass";
    v41 = 0xD000000000000019;
LABEL_24:
    a1(v41, v40 | 0x8000000000000000, 0, 1);
    return;
  }

  v42 = *&v81[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController];
  if (v42)
  {
    v43 = *&v81[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController];
    v83 = v43;
  }

  else
  {
    v44 = sub_1BD91C044(v81);
    if (!v44)
    {
      v40 = "ExpressPassSelectionFlowItem";
      v41 = 0xD00000000000001FLL;
      goto LABEL_24;
    }

    v83 = v44;
    v43 = v44;
    v42 = 0;
  }

  v45 = v42;
  v46 = sub_1BE04BC84();
  v47 = [v46 uniqueID];

  v48 = [v43 groupIndexForPassUniqueID_];
  v49 = [v43 groupAtIndex_];
  if (v49 && (v50 = v49, v51 = [v49 passes], v50, v51) && (sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20), v52 = sub_1BE052744(), v51, v53 = sub_1BD3FCF30(v52), v52, v54, v55, v56, v57, v58, v59, v60, v53))
  {
    v61 = *&v81[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupedPassesWithPrimaryPass];
    *&v81[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupedPassesWithPrimaryPass] = v53;
    sub_1BE048C84();
    v61, v62, v63, v64, v65, v66, v67, v68;
    if (v53 >> 62)
    {
      v76 = sub_1BE053704();
    }

    else
    {
      v76 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53, v69, v70, v71, v72, v73, v74, v75;
    if (v76 > 1)
    {
      if (!v29)
      {
        v77 = 0;
        v78 = 0;
LABEL_45:
        v80 = 0;
        goto LABEL_39;
      }

LABEL_44:
      v77 = 0x6E65206775626564;
      v78 = 0xED000064656C6261;
      goto LABEL_45;
    }

    if (v29)
    {
      goto LABEL_44;
    }

    v79 = "no passes found in group";
    v77 = 0xD000000000000010;
  }

  else
  {
    v79 = "could not get groups controller";
    v77 = 0xD000000000000018;
  }

  v78 = v79 | 0x8000000000000000;
  v80 = 1;
LABEL_39:
  a1(v77, v78, 0, v80);
}

id sub_1BD91C044(uint64_t a1)
{
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v6 = sub_1BE04B8F4();
  (*(v3 + 8))(v5, v2);
  if (!v6)
  {
    return 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E69B88E0]) initWithPassLibrary_];
  v8 = v7;
  [v8 loadGroupsSynchronously];

  v9 = *(a1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController);
  *(a1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController) = v7;
  v10 = v8;

  return v7;
}

id sub_1BD91C18C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BD14();
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupedPassesWithPrimaryPass);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController);
  sub_1BE048C84();
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(PKShareableCredentialsExpressPassSelectionViewController);
  sub_1BD0E5E8C(0, &qword_1EBD456C0, 0x1E69B91E8);
  v10 = sub_1BE052724();
  v6, v11, v12, v13, v14, v15, v16, v17;
  v18 = [v9 initWithPasses:v10 groupsController:v7 context:v8 delegate:v1];

  if (v18)
  {
    sub_1BE052434();
    v20 = v19;
    v21 = v18;
    v22 = sub_1BE04BB74();
    v20, v23, v24, v25, v26, v27, v28, v29;
    [v21 setReporter_];
  }

  return v18;
}

uint64_t sub_1BD91C388()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD91C3C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD91C564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupsController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_identifier];
  *v8 = 0xD00000000000001CLL;
  *(v8 + 1) = 0x80000001BE140580;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_context] = a1;
  sub_1BE048964();
  v9 = sub_1BE04BB84();
  v10 = *&v3[v7];
  *&v3[v7] = v9;

  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_provisionedPasses] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_groupedPassesWithPrimaryPass] = MEMORY[0x1E69E7CC0];
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1BD91C67C(unint64_t a1, void *a2)
{
  v42 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(a1 + 8 * j + 32);
      }

      v14 = v13;
      v15 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v16 = [v13 uniqueID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1BE052434();
        v20 = v19;

        if (*(*a2 + 16) && (sub_1BD148F70(v18, v20), (v21 & 1) != 0))
        {
          v22 = sub_1BD148F70(v18, v20);
          v24 = v23;
          v20, v23, v25, v26, v27, v28, v29, v30;
          if (v24)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = *a2;
            v41 = *a2;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1BD50818C();
              v39 = v41;
            }

            *(*(v39 + 48) + 16 * v22 + 8), v32, v33, v34, v35, v36, v37, v38;

            sub_1BD509760();
            *a2 = v39;
          }

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {

          v20, v6, v7, v8, v9, v10, v11, v12;
        }
      }

      else
      {
      }

      if (v15 == i)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD91C894(void *a1)
{
  v2 = v1;
  v3 = sub_1BE04BD44();
  v11 = v3;
  if (v3 >> 62)
  {
LABEL_27:
    v12 = sub_1BE053704();
    v85 = v2;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v85 = v1;
    if (v12)
    {
LABEL_3:
      v13 = 0;
      v87 = v11 & 0xFFFFFFFFFFFFFF8;
      v88 = v11 & 0xC000000000000001;
      v14 = MEMORY[0x1E69E7CC8];
      v86 = v11;
      while (1)
      {
        if (v88)
        {
          v17 = MEMORY[0x1BFB40900](v13, v11);
        }

        else
        {
          if (v13 >= *(v87 + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v11 + 8 * v13 + 32);
        }

        v2 = v17;
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v11 = v12;
        v19 = [v17 uniqueID];
        if (!v19)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          sub_1BE053C14();
          __break(1u);
          return;
        }

        v20 = v19;
        v21 = sub_1BE052434();
        v23 = v22;

        v24 = v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v14;
        v33 = sub_1BD148F70(v21, v23);
        v34 = v14[2];
        v35 = (v26 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_25;
        }

        v2 = v26;
        if (v14[3] >= v36)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v26)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1BD50818C();
            if (v2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1BD503DB8(v36, isUniquelyReferenced_nonNull_native);
          v37 = sub_1BD148F70(v21, v23);
          if ((v2 & 1) != (v26 & 1))
          {
            goto LABEL_41;
          }

          v33 = v37;
          if (v2)
          {
LABEL_4:
            v23, v26, v27, v28, v29, v30, v31, v32;
            v14 = v89;
            v15 = v89[7];
            v2 = *(v15 + 8 * v33);
            *(v15 + 8 * v33) = v24;

            goto LABEL_5;
          }
        }

        v14 = v89;
        v89[(v33 >> 6) + 8] |= 1 << v33;
        v38 = (v14[6] + 16 * v33);
        *v38 = v21;
        v38[1] = v23;
        *(v14[7] + 8 * v33) = v24;

        v39 = v14[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_26;
        }

        v14[2] = v41;
LABEL_5:
        ++v13;
        v12 = v11;
        v16 = v18 == v11;
        v11 = v86;
        if (v16)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
LABEL_29:
  v11, v4, v5, v6, v7, v8, v9, v10;
  v89 = v14;
  if (!a1)
  {
    goto LABEL_40;
  }

  v42 = sub_1BE048C84();
  v43 = sub_1BD91C67C(v42, &v89);
  a1, v44, v45, v46, v47, v48, v49, v50;
  v51 = v89;
  if (v89[2])
  {
    v52 = sub_1BE048C84();
    sub_1BDA7AD84(v52, v53, v54, v55, v56, v57, v58, v59);
  }

  sub_1BE04BD54();
  v43, v60, v61, v62, v63, v64, v65, v66;
  v67 = v85 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExpressPassSelectionFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v75 = *(v67 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v85, &off_1F3BC5FC0, ObjectType, v75);
    v51, v77, v78, v79, v80, v81, v82, v83;

    swift_unknownObjectRelease();
  }

  else
  {

    v51, v68, v69, v70, v71, v72, v73, v74;
  }
}

uint64_t sub_1BD91CC00(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  sub_1BD0D4534((v8 + 4));
  v8[7], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

id sub_1BD91CC74(uint64_t a1)
{
  v209[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v202[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v202[-v8];
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v202[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    return 0;
  }

  v206 = v4;
  v204 = v12;
  v17 = *(v1 + 24);
  v18 = [v17 setupProductMethodsOfType_];
  if (v18)
  {
    sub_1BD0E5E8C(0, &qword_1EBD48A90, 0x1E69B9220);
    v19 = sub_1BE052744();

    v18 = sub_1BD3FCF18(v19);
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  result = [v17 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_87;
  }

  v27 = result;
  v28 = [result type];

  if (v28 == 4)
  {
    if (!v18)
    {
LABEL_63:
      sub_1BE04D0E4();
      v190 = sub_1BE04D204();
      v191 = sub_1BE052C54();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 0;
        _os_log_impl(&dword_1BD026000, v190, v191, "Unable to find suitable flow item for eMoney product", v192, 2u);
        MEMORY[0x1BFB45F20](v192, -1, -1);
      }

      (*(v206 + 8))(v9, v3);
      return 0;
    }

    v28 = v17;
    if (v18 >> 62)
    {
      if (sub_1BE053704() == 1 && sub_1BE053704())
      {
        goto LABEL_11;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_11:
      if ((v18 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1BFB40900](0, v18);
        goto LABEL_14;
      }

      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v36 = *(v18 + 32);
LABEL_14:
        v6 = v36;
        v37 = [v36 appLaunchURL];
        if (!v37)
        {
          v18, v38, v39, v40, v41, v42, v43, v44;
          goto LABEL_53;
        }

        v205 = v1;
        v45 = v37;
        sub_1BE04A9F4();

        result = [objc_opt_self() defaultWorkspace];
        if (result)
        {
          v53 = result;
          v18, v46, v47, v48, v49, v50, v51, v52;
          v54 = sub_1BE04A9C4();
          v209[0] = 0;
          v55 = [v53 isApplicationAvailableToOpenURL:v54 error:v209];

          v56 = v209[0];
          if (v55)
          {
            v57 = v205[2];
            v58 = type metadata accessor for PaymentSetupOpenAppFlowItem();
            v59 = objc_allocWithZone(v58);
            *&v59[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem__hasSeenHeroScreen] = &type metadata for HasSeenHeroScreenKey;
            *&v59[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
            *&v59[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_delegate + 8] = 0;
            swift_unknownObjectWeakInit();
            v60 = &v59[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_identifier];
            *v60 = 0x467070416E65704FLL;
            *(v60 + 1) = 0xEF6D657449776F6CLL;
            *&v59[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_context] = v57;
            *&v59[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_product] = v17;
            *&v59[OBJC_IVAR____TtC9PassKitUI27PaymentSetupOpenAppFlowItem_inApp] = v6;
            v207.receiver = v59;
            v207.super_class = v58;
            v61 = v56;
            sub_1BE048964();
            v62 = v17;
            v63 = objc_msgSendSuper2(&v207, sel_init);
            (*(v11 + 1))(v15, v204);
            return v63;
          }

          v177 = v209[0];
          v178 = sub_1BE04A854();

          v17 = v28;
          swift_willThrow();

          (*(v11 + 1))(v15, v204);
LABEL_53:
          v179 = [v6 associatedStoreIdentifiers];
          if (!v179)
          {
LABEL_59:

            goto LABEL_63;
          }

          v180 = v179;
          sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
          v15 = sub_1BE052744();

          if (!(v15 >> 62))
          {
            v188 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_56;
          }

LABEL_78:
          v188 = sub_1BE053704();
          v17 = v28;
LABEL_56:
          v15, v181, v182, v183, v184, v185, v186, v187;
          if (v188)
          {
            objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
            v189 = v17;
            v174 = sub_1BE048964();
            v175 = v189;
            v176 = v6;
            return sub_1BD9DC084(v174, v175, v176);
          }

          goto LABEL_59;
        }

LABEL_87:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_74;
    }

    v18, v29, v30, v31, v32, v33, v34, v35;
    goto LABEL_63;
  }

  v64 = [v17 setupProductMethodsOfType_];
  v9 = v64;
  if (v64)
  {
  }

  v65 = [v17 displayName];
  v205 = v1;
  if (v65)
  {
    v66 = v65;
    v67 = sub_1BE052434();
    v69 = v68;
  }

  else
  {
    v69 = 0xE700000000000000;
    v67 = 0x6E776F6E6B6E75;
  }

  sub_1BE04D0E4();
  sub_1BE048C84();
  v70 = sub_1BE04D204();
  v71 = sub_1BE052C54();
  v69, v72, v73, v74, v75, v76, v77, v78;
  if (os_log_type_enabled(v70, v71))
  {
    v203 = v9 != 0;
    v28 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v204 = v17;
    v80 = v79;
    v209[0] = v79;
    *v28 = 136446722;
    v81 = sub_1BD123690(v67, v69, v209);
    v69, v82, v83, v84, v85, v86, v87, v88;
    *(v28 + 4) = v81;
    *(v28 + 6) = 1026;
    *(v28 + 14) = v203;
    *(v28 + 9) = 1026;
    *(v28 + 5) = v18 != 0;
    _os_log_impl(&dword_1BD026000, v70, v71, "Selected bank: %{public}s; Camera capture support: %{BOOL,public}d; In-App Support: %{BOOL,public}d", v28, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v80, v89, v90, v91, v92, v93, v94, v95);
    v96 = v80;
    v17 = v204;
    MEMORY[0x1BFB45F20](v96, -1, -1);
    MEMORY[0x1BFB45F20](v28, -1, -1);
  }

  else
  {

    v69, v97, v98, v99, v100, v101, v102, v103;
  }

  (*(v206 + 8))(v6, v3);
  v15 = v205;
  if (!v18)
  {
    if (v9)
    {
      v158 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
      v159 = sub_1BE048964();
      return sub_1BD87126C(v159, 0, 0);
    }

    return 0;
  }

  sub_1BE048C84();
  v11 = v17;
  v104 = [v17 setupProductMethodsOfType_];
  if (v104)
  {
    v112 = v104;
    sub_1BD0E5E8C(0, &qword_1EBD48A90, 0x1E69B9220);
    v113 = sub_1BE052744();

    v1 = sub_1BD3FCF24(v113);
    v113, v114, v115, v116, v117, v118, v119, v120;
    v18, v121, v122, v123, v124, v125, v126, v127;
    if (v1)
    {
      v3 = v18 & 0xFFFFFFFFFFFFFF8;
      if (!(v18 >> 62))
      {
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_80;
        }

        goto LABEL_31;
      }

LABEL_74:
      if (sub_1BE053704() != 1)
      {
        goto LABEL_80;
      }

LABEL_31:
      if (v1 >> 62)
      {
        if (sub_1BE053704() == 1)
        {
LABEL_33:
          if ((v18 & 0xC000000000000001) != 0)
          {
            v135 = MEMORY[0x1BFB40900](0, v18);
          }

          else
          {
            if (!*(v3 + 16))
            {
              __break(1u);
              goto LABEL_85;
            }

            v135 = *(v18 + 32);
          }

          v143 = v135;
          v18, v136, v137, v138, v139, v140, v141, v142;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v144 = MEMORY[0x1BFB40900](0, v1);
            goto LABEL_39;
          }

          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v144 = *(v1 + 32);
LABEL_39:
            v152 = v144;
            v1, v145, v146, v147, v148, v149, v150, v151;
            v153 = *(v15 + 16);
            v154 = type metadata accessor for PaymentSetupAppDisambiguationFlowItem();
            v155 = objc_allocWithZone(v154);
            *&v155[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_linkedApplication] = 0;
            *&v155[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate + 8] = 0;
            swift_unknownObjectWeakInit();
            v156 = &v155[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_identifier];
            *v156 = 0xD000000000000019;
            *(v156 + 1) = 0x80000001BE1406A0;
            *&v155[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_context] = v153;
            *&v155[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_product] = v11;
            *&v155[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_inApp] = v143;
            *&v155[OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_cameraCapture] = v152;
            v208.receiver = v155;
            v208.super_class = v154;
            v157 = v11;
            sub_1BE048964();
            return objc_msgSendSuper2(&v208, sel_init);
          }

LABEL_85:
          __break(1u);
        }
      }

      else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_33;
      }

LABEL_80:
      v1, v128, v129, v130, v131, v132, v133, v134;
      goto LABEL_81;
    }
  }

  else
  {
    v18, v105, v106, v107, v108, v109, v110, v111;
  }

  if (v18 >> 62)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      v3 = v18 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v3 = v18;
    }

    if (sub_1BE053704() != 1)
    {
      goto LABEL_81;
    }

    v160 = *(v15 + 16);
    if (!sub_1BE053704())
    {
      v172 = v11;
      v193 = v11;
      sub_1BE048964();
      v18, v194, v195, v196, v197, v198, v199, v200;
      v171 = 0;
      goto LABEL_50;
    }

LABEL_46:
    if ((v18 & 0xC000000000000001) != 0)
    {
      v201 = v11;
      sub_1BE048964();
      v163 = MEMORY[0x1BFB40900](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v161 = *(v18 + 32);
      v162 = v11;
      sub_1BE048964();
      v163 = v161;
    }

    v171 = v163;
    v18, v164, v165, v166, v167, v168, v169, v170;
    v172 = v11;
LABEL_50:
    v173 = objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
    v174 = v160;
    v175 = v172;
    v176 = v171;
    return sub_1BD9DC084(v174, v175, v176);
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    v160 = *(v15 + 16);
    goto LABEL_46;
  }

LABEL_81:
  v18, v128, v129, v130, v131, v132, v133, v134;
  return 0;
}

uint64_t PeerPaymentGroupRecipientPickerModel.__allocating_init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  PeerPaymentGroupRecipientPickerModel.init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(a1, a2, a3, a4, a5);
  return v10;
}

double sub_1BD91D868@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v12;
  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD91D940()
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  swift_beginAccess();
  v9 = *(v0 + 16);
  sub_1BE048C84();
  return v9;
}

void sub_1BD91DA04(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v12 = *(v2 + 24);
  v13 = *(v2 + 16) == a1 && v12 == a2;
  if (v13 || (sub_1BE053B84() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    v12, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
    sub_1BE04B584();
    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    a2, v22, v23, v24, v25, v26, v27, v28;
  }
}

void sub_1BD91DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1BE048C84();
  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t (*sub_1BD91DBC4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD91D818(v4);
  return sub_1BD91DCFC;
}

void sub_1BD91DCFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  KeyPath = swift_getKeyPath();
  sub_1BE04B5A4();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;

  free(v1);
}

uint64_t sub_1BD91DD94()
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 32);
  sub_1BE048C84();
  return v9;
}

double sub_1BD91DE44@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v12;
  sub_1BE048C84();
  return result;
}

uint64_t keypath_setTm_2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1BE048C84();
  return a5(v7, v6);
}

void sub_1BD91DF50(uint64_t a1, char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 40);
  v12 = *(v8 + 32) == a1 && v11 == a2;
  if (v12 || (sub_1BE053B84() & 1) != 0)
  {
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    v11, a2, a3, a4, a5, a6, a7, a8;

    sub_1BD91EACC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
    sub_1BE04B584();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    a2, v21, v22, v23, v24, v25, v26, v27;
  }
}

void *sub_1BD91E0B4()
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 48);
  v10 = v9;
  return v9;
}

id sub_1BD91E15C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 48);
  *a2 = v12;

  return v12;
}

void sub_1BD91E214(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD91E244(v1);
}

void sub_1BD91E244(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t sub_1BD91E424()
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 64);
}

void sub_1BD91E4C4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 64);
}

void sub_1BD91E594(unsigned __int8 a1)
{
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t PeerPaymentGroupRecipient.__allocating_init(recipient:)(void *a1)
{
  swift_allocObject();
  sub_1BD92081C(a1);
  v3 = v2;

  return v3;
}

uint64_t PeerPaymentGroupRecipient.init(recipient:)(void *a1)
{
  sub_1BD92081C(a1);
  v3 = v2;

  return v3;
}

void sub_1BD91E714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30 = v14;
    v31 = v13;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v17 = a1;
    v18 = sub_1BE052D54();
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = v17;
    v19[4] = a3;
    v19[5] = a4;
    aBlock[4] = sub_1BD920FE4;
    v33 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_104_2;
    v20 = _Block_copy(aBlock);
    v21 = v33;
    v22 = v17;
    sub_1BE048964();
    sub_1BE048C84();
    v21, v23, v24, v25, v26, v27, v28, v29;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD920AD0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v11, v20);
    _Block_release(v20);

    (*(v9 + 8))(v11, v8);
    (*(v30 + 8))(v16, v31);
  }
}

void sub_1BD91EA10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  sub_1BD91E244(a2);
  v6 = objc_opt_self();
  v7 = sub_1BE052404();
  v8 = [v6 displayNameForCounterpartHandle:v7 contact:v5];

  if (v8)
  {
    v9 = sub_1BE052434();
    v11 = v10;

    sub_1BD91DF50(v9, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD91EACC()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v0 + 40);
  sub_1BE048C84();
  v11 = sub_1BE052404();
  v10, v12, v13, v14, v15, v16, v17, v18;
  LODWORD(v10) = PKIsEmailAddress();

  if (!v10)
  {
    v19 = swift_getKeyPath();
    sub_1BE04B594();
    v19, v20, v21, v22, v23, v24, v25, v26;
    v27 = *(v1 + 32);
    v28 = *(v1 + 40);
    sub_1BE048C84();
    v29 = sub_1BD961028(v27, v28);
    v31 = v30;
    v28, v30, v32, v33, v34, v35, v36, v37;
    if (v31)
    {
      if (v29 == 43 && v31 == 0xE100000000000000)
      {
        0xE100000000000000, v38, v39, v40, v41, v42, v43, v44;
        goto LABEL_9;
      }

      v45 = sub_1BE053B84();
      v31, v46, v47, v48, v49, v50, v51, v52;
      if (v45)
      {
LABEL_9:
        if (*(v1 + 64) == 1)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    if (!*(v1 + 64))
    {
      return;
    }

    goto LABEL_12;
  }

  if (*(v1 + 64) == 2)
  {
    return;
  }

LABEL_12:
  v53 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v53);
  sub_1BE04B584();
  v53, v54, v55, v56, v57, v58, v59, v60;
}

id *PeerPaymentGroupRecipient.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  v16 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  v17 = sub_1BE04B5D4();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  return v8;
}

uint64_t PeerPaymentGroupRecipient.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  v16 = OBJC_IVAR____TtC9PassKitUI25PeerPaymentGroupRecipient___observationRegistrar;
  v17 = sub_1BE04B5D4();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);

  return swift_deallocClassInstance();
}

double sub_1BD91EEF0@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v12;
  sub_1BE048C84();
  return result;
}

uint64_t PeerPaymentGroupRecipientPickerModel.State.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

void sub_1BD91F048(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 40);
}

void sub_1BD91F128(_BYTE *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  *a1 = *(v1 + 40);
}

void sub_1BD91F1D0(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + 40))
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
    sub_1BE04B584();
    KeyPath, v4, v5, v6, v7, v8, v9, v10;
  }
}

uint64_t sub_1BD91F2E8()
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BD91F3A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 64);
  return sub_1BE048964();
}

uint64_t sub_1BD91F480()
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048964();
}

void sub_1BD91F524(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v11 = *(v8 + 64);
  if (!v11)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
    sub_1BE04B584();
    KeyPath, v45, v46, v47, v48, v49, v50, v51;
    a1, v52, v53, v54, v55, v56, v57, v58;
    return;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v12 = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE048964();
  sub_1BE04B594();
  v12, v13, v14, v15, v16, v17, v18, v19;
  swift_beginAccess();
  v21 = v11[2];
  v20 = v11[3];
  v22 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();
  v22, v23, v24, v25, v26, v27, v28, v29;
  swift_beginAccess();
  v35 = a1[2];
  v36 = a1[3];
  if (v21 != v35 || v20 != v36)
  {
    v59 = sub_1BE053B84();
    v20, v60, v61, v62, v63, v64, v65, v66;
    v11, v67, v68, v69, v70, v71, v72, v73;
    if (v59)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v20, v30, v35, v36, v31, v32, v33, v34;
  v11, v37, v38, v39, v40, v41, v42, v43;
LABEL_9:
  v74 = *(v9 + 64);
  *(v9 + 64) = a1;
  v74, a2, a3, a4, a5, a6, a7, a8;
}

void *PeerPaymentGroupRecipientPickerModel.init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 64) = 0;
  sub_1BE04B5C4();
  if (a1 >> 62)
  {
    v17 = sub_1BE053704();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v61 = MEMORY[0x1E69E7CC0];
    result = sub_1BE0538E4();
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v20 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB40900](v20, a1);
      }

      else
      {
        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      type metadata accessor for PeerPaymentGroupRecipient(0);
      swift_allocObject();
      sub_1BD92081C(v22);

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v17 != v20);
    a1, v23, v24, v25, v26, v27, v28, v29;
    v37 = v61;
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    a1, v10, v11, v12, v13, v14, v15, v16;
    v37 = MEMORY[0x1E69E7CC0];
  }

  v6[2] = v37;
  if (!(a2 >> 62))
  {
    v38 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_14;
    }

LABEL_23:
    a2, v30, v31, v32, v33, v34, v35, v36;
    v49 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v6[3] = v49;
    v6[4] = a3;
    v6[6] = a4;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
    v51 = a3;
    v52 = a4;
    sub_1BE04B584();
    KeyPath, v53, v54, v55, v56, v57, v58, v59;

    swift_unknownObjectRelease();
    return v6;
  }

  v38 = sub_1BE053704();
  if (!v38)
  {
    goto LABEL_23;
  }

LABEL_14:
  result = sub_1BE0538E4();
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1BFB40900](v39, a2);
      }

      else
      {
        v40 = *(a2 + 8 * v39 + 32);
      }

      v41 = v40;
      ++v39;
      type metadata accessor for PeerPaymentGroupRecipient(0);
      swift_allocObject();
      sub_1BD92081C(v41);

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v38 != v39);
    a2, v42, v43, v44, v45, v46, v47, v48;
    v49 = v18;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1BD91FB38(uint64_t a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  v130[0] = v1;
  sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  if ((*(v1 + 40) & 1) == 0)
  {
    [*(v1 + 48) selectIdentifiedRecipient_];
    v12 = sub_1BE048964();
    sub_1BD91F524(v12, v13, v14, v15, v16, v17, v18, v19);
    if (*(v1 + 40) == 1)
    {
      *(v1 + 40) = 1;
    }

    else
    {
      v20 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v20);
      v130[0] = v1;
      sub_1BE04B584();
      v20, v21, v22, v23, v24, v25, v26, v27;
    }

    v28 = swift_getKeyPath();
    v130[0] = v1;
    sub_1BE04B594();
    v28, v29, v30, v31, v32, v33, v34, v35;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      v38 = swift_allocObject();
      swift_weakInit();
      v130[4] = sub_1BD920B58;
      v131 = v38;
      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 1107296256;
      v130[2] = sub_1BD3F08C0;
      v130[3] = &block_descriptor_212;
      v39 = _Block_copy(v130);
      v131, v40, v41, v42, v43, v44, v45, v46;
      [v37 handleAction:10 sender:v2 completion:v39];
      swift_unknownObjectRelease();
      _Block_release(v39);
    }
  }

  v47 = swift_getKeyPath();
  v130[0] = v2;
  sub_1BE04B594();
  v47, v48, v49, v50, v51, v52, v53, v54;
  v55 = swift_unknownObjectWeakLoadStrong();
  if (!v55)
  {
    v57 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  v56 = [v55 analyticsMessagesContext];
  swift_unknownObjectRelease();
  v57 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  if (!v56)
  {
LABEL_13:
    v66 = 0;
    goto LABEL_14;
  }

  v58 = v56;
  v57, v59, v60, v61, v62, v63, v64, v65;
  v130[0] = 0;
  v66 = v58;
  sub_1BE052234();

  v57 = v130[0];
  if (!v130[0])
  {
    v57 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

LABEL_14:
  v67 = swift_getKeyPath();
  v130[0] = v2;
  sub_1BE04B594();
  v67, v68, v69, v70, v71, v72, v73, v74;
  v75 = swift_unknownObjectWeakLoadStrong();
  if (v75)
  {
    v76 = [v75 ineligibleCount];
    swift_unknownObjectRelease();
    if (!v76)
    {
      *&v134 = sub_1BE052434();
      *(&v134 + 1) = v77;
      v78 = MEMORY[0x1E69E6158];
      sub_1BE0537C4();
      v135 = v78;
      *&v134 = 48;
      *(&v134 + 1) = 0xE100000000000000;
      sub_1BD1B6140(&v134, v133);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = v57;
      sub_1BD1DAFB0(v133, v130, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v130);
      v57 = v132;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  v81 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v82 = sub_1BE052434();
  v83 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v82;
  *(inited + 48) = v84;
  v85 = *v83;
  *(inited + 56) = *v83;
  v86 = sub_1BE052434();
  v87 = MEMORY[0x1E69BA680];
  *(inited + 64) = v86;
  *(inited + 72) = v88;
  v89 = *v87;
  *(inited + 80) = *v87;
  v90 = sub_1BE052434();
  v91 = MEMORY[0x1E69BA440];
  *(inited + 88) = v90;
  *(inited + 96) = v92;
  v93 = *v91;
  *(inited + 104) = *v91;
  v94 = sub_1BE052434();
  v95 = MEMORY[0x1E69BAFB0];
  *(inited + 112) = v94;
  *(inited + 120) = v96;
  v97 = *v95;
  *(inited + 128) = *v95;
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v98;
  v99 = v81;
  v100 = v85;
  v101 = v89;
  v102 = v93;
  v103 = v97;
  v104 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v105 = objc_opt_self();
  v106 = sub_1BD1A8C44(v104);
  v104, v107, v108, v109, v110, v111, v112, v113;
  v114 = sub_1BE052224();
  v106, v115, v116, v117, v118, v119, v120, v121;
  v122 = sub_1BE052224();
  v57, v123, v124, v125, v126, v127, v128, v129;
  [v105 reportAppleCashEvent:v114 withMessagesContext:v122];
}

uint64_t sub_1BD920150(char a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD920F90;
  v25 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_90_2;
  v14 = _Block_copy(aBlock);
  v15 = v25;
  sub_1BE048964();
  v15, v16, v17, v18, v19, v20, v21, v22;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD920AD0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1BD920420(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((a2 & 1) == 0)
    {
      if (Strong[40])
      {
        v11 = Strong;
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1BD920AD0(&qword_1EBD55900, type metadata accessor for PeerPaymentGroupRecipientPickerModel, &protocol conformance descriptor for PeerPaymentGroupRecipientPickerModel);
        sub_1BE04B584();
        v11, v13, v14, v15, v16, v17, v18, v19;
        KeyPath, v20, v21, v22, v23, v24, v25, v26;
        return;
      }

      Strong[40] = 0;
    }

    Strong, v4, v5, v6, v7, v8, v9, v10;
  }
}

id *PeerPaymentGroupRecipientPickerModel.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  sub_1BD0D4534((v8 + 7));
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC9PassKitUI36PeerPaymentGroupRecipientPickerModel___observationRegistrar;
  v24 = sub_1BE04B5D4();
  (*(*(v24 - 8) + 8))(v8 + v23, v24);
  return v8;
}

uint64_t PeerPaymentGroupRecipientPickerModel.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  sub_1BD0D4534((v8 + 7));
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC9PassKitUI36PeerPaymentGroupRecipientPickerModel___observationRegistrar;
  v24 = sub_1BE04B5D4();
  (*(*(v24 - 8) + 8))(v8 + v23, v24);

  return swift_deallocClassInstance();
}

uint64_t _s9PassKitUI25PeerPaymentGroupRecipientC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD920AD0(&qword_1EBD51300, type metadata accessor for PeerPaymentGroupRecipient, &protocol conformance descriptor for PeerPaymentGroupRecipient);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04B594();
  v14, v15, v16, v17, v18, v19, v20, v21;
  swift_beginAccess();
  v27 = *(a2 + 16);
  v28 = *(a2 + 24);
  if (__PAIR128__(v12, v13) == __PAIR128__(v28, v27))
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_1BE053B84();
  }

  v12, v22, v27, v28, v23, v24, v25, v26;
  return v29 & 1;
}

void sub_1BD92081C(void *a1)
{
  *(v2 + 48) = 0;
  *(v2 + 64) = 0;
  sub_1BE04B5C4();
  v4 = [a1 normalizedAddress];
  if (!v4)
  {
    __break(1u);
LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  v1 = v4;
  v5 = sub_1BE052434();
  v7 = v6;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  sub_1BE048C84();
  v8 = [a1 displayName];
  if (!v8)
  {
    v8 = [objc_opt_self() displayNameForCounterpartHandle:v1 contact:0];
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  v9 = v8;
  v10 = sub_1BE052434();
  v12 = v11;

  *(v2 + 32) = v10;
  *(v2 + 40) = v12;
  *(v2 + 56) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  v15 = [v13 defaultContactResolver];
  if (!v15)
  {
    v7, v16, v17, v18, v19, v20, v21, v22;
LABEL_10:

    goto LABEL_11;
  }

  v23 = v15;
  if (([v15 hasCachedResultForHandle_] & 1) == 0)
  {
    v43 = swift_allocObject();
    v43[2] = v2;
    v43[3] = v5;
    v43[4] = v7;
    v53[4] = sub_1BD920FD8;
    v54 = v43;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 1107296256;
    v53[2] = sub_1BD20815C;
    v53[3] = &block_descriptor_98_2;
    v44 = _Block_copy(v53);
    v45 = v54;
    sub_1BE048964();
    v45, v46, v47, v48, v49, v50, v51, v52;
    [v23 contactForHandle:v1 withCompletion:v44];

    _Block_release(v44);
    goto LABEL_10;
  }

  v24 = [v23 contactForHandle_];
  v25 = v24;
  sub_1BD91E244(v24);
  v26 = [objc_opt_self() displayNameForCounterpartHandle:v1 contact:v25];

  if (v26)
  {
    v7, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_1BE052434();
    v36 = v35;

    sub_1BD91DF50(v34, v36, v37, v38, v39, v40, v41, v42);
LABEL_11:
    sub_1BD91EACC();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1BD920AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD920B64()
{
  result = qword_1EBD58F70;
  if (!qword_1EBD58F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58F70);
  }

  return result;
}

uint64_t sub_1BD920BC0(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD920D20(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

unint64_t sub_1BD920EDC()
{
  result = qword_1EBD58FA8;
  if (!qword_1EBD58FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58FA8);
  }

  return result;
}

void sub_1BD920F40()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
  sub_1BD91EACC();
}

void sub_1BD920F9C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
  sub_1BE048964();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD921024(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v92 = v4;
  }

  else
  {
    v5 = [objc_opt_self() systemGray2Color];
    v92 = sub_1BE0511C4();
  }

  v94 = *(a1 + 32);
  v95 = v94;
  sub_1BE048964();
  sub_1BD206260(&v95, v93);
  sub_1BD0DDEBC();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BE050384();
  v13 = sub_1BE050544();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1BD0DDF10(v6, v8, (v10 & 1), v18, v20, v21, v22, v23);
  v12, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BE0505F4();
  v33 = v32;
  LOBYTE(v8) = v34;
  v36 = v35;
  sub_1BD0DDF10(v13, v15, (v17 & 1), v35, v37, v38, v39, v40);
  v19, v41, v42, v43, v44, v45, v46, v47;
  v48 = sub_1BE051424();
  *&v94 = v48;
  v49 = sub_1BE050574();
  v51 = v50;
  LOBYTE(v15) = v52;
  v54 = v53;
  sub_1BD0DDF10(v31, v33, (v8 & 1), v53, v55, v56, v57, v58);
  v48, v59, v60, v61, v62, v63, v64, v65;
  v36, v66, v67, v68, v69, v70, v71, v72;
  *a2 = v92;
  *(a2 + 8) = 256;
  *(a2 + 16) = v49;
  *(a2 + 24) = v51;
  *(a2 + 32) = v15 & 1;
  *(a2 + 40) = v54;
  sub_1BE048964();
  sub_1BD0D7F18(v49, v51, v15 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v49, v51, (v15 & 1), v73, v74, v75, v76, v77);
  v92, v78, v79, v80, v81, v82, v83, v84;
  v54, v85, v86, v87, v88, v89, v90, v91;
}

uint64_t sub_1BD92123C(uint64_t a1)
{
  v2 = v1[1];
  v35[0] = *v1;
  v35[1] = v2;
  v35[2] = v1[2];
  v3 = sub_1BE051CD4();
  v5 = v4;
  sub_1BD921024(v35, &v36);
  v6 = v36;
  v7 = BYTE8(v36);
  v8 = BYTE9(v36);
  v9 = v37;
  v10 = v38;
  v11 = *(&v38 + 1);
  sub_1BE048964();
  sub_1BD0D7F18(v9, *(&v9 + 1), v10);
  sub_1BE048C84();
  v6, v12, v13, v14, v15, v16, v17, v18;
  sub_1BD0DDF10(v9, *(&v9 + 1), v10, v19, v20, v21, v22, v23);
  v11, v24, v25, v26, v27, v28, v29, v30;
  *&v32 = v3;
  *(&v32 + 1) = v5;
  *&v33 = v6;
  BYTE8(v33) = v7;
  BYTE9(v33) = v8;
  LOBYTE(v34) = v10;
  *(&v34 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59368, &qword_1BE106800);
  sub_1BD0DE4F4(&qword_1EBD59370, &qword_1EBD59368, &qword_1BE106800, MEMORY[0x1E6981880]);
  sub_1BE050A24();
  v36 = v32;
  v37 = v33;
  v38 = v9;
  v39 = v34;
  return sub_1BD0DE53C(&v36, &qword_1EBD59368, &qword_1BE106800);
}

uint64_t sub_1BD9213B4()
{
  sub_1BE053D04();
  sub_1BE052524();
  v1 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  sub_1BE04AA64();
  sub_1BD928A24(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BE052294();
  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD9214C8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178, &qword_1BE106238);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v11 - v5);
  sub_1BD0DE19C(v2, &v11 - v5, &qword_1EBD59178, &qword_1BE106238);
  v7 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_1BD0DE53C(v6, &qword_1EBD59178, &qword_1BE106238);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *v6;
    v10 = v6[1];
    sub_1BE048C84();
    result = sub_1BD935C74(v6, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  }

  *a1 = v9;
  a1[1] = v10;
  return result;
}

uint64_t sub_1BD921604(uint64_t a1, uint64_t a2)
{
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD928A24(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BE052294();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  return sub_1BE052524();
}

uint64_t sub_1BD9216FC(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD928A24(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BE052294();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  return sub_1BE053D64();
}

void *sub_1BD921800()
{
  KeyPath = swift_getKeyPath();
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel, &unk_1BE106578);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 48);
  v10 = v9;
  return v9;
}

id sub_1BD9218A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel, &unk_1BE106578);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 48);
  *a2 = v12;

  return v12;
}

void sub_1BD921960(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel, &unk_1BE106578);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CashDetailsViewControllerWrapper.DelegateProxy();
  v5 = v4;
  v6 = a1;
  v7 = sub_1BE053074();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t sub_1BD921AE0()
{
  KeyPath = swift_getKeyPath();
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel, &unk_1BE106578);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 64);
  sub_1BE048C84();
  return v9;
}

void sub_1BD921B90(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 72);
  if (v11)
  {
    if (a2)
    {
      v12 = *(v8 + 64) == a1 && v11 == a2;
      if (v12 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel, &unk_1BE106578);
    sub_1BE04B584();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    a2, v21, v22, v23, v24, v25, v26, v27;
    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;

  v11, a2, a3, a4, a5, a6, a7, a8;
}

void sub_1BD921D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

void *sub_1BD921D3C(void *a1, void *a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x1E698F6A0]) init];
  v2[6] = 0;
  v5 = [objc_opt_self() sharedService];
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = v5;
  sub_1BE04B5C4();
  v2[4] = a1;
  v2[5] = a2;
  v6 = v2[2];
  v15 = sub_1BD0E5E8C(0, &qword_1EBD59428, 0x1E698F6A0);
  v16 = &off_1F3BC8FD8;
  *&v14 = v6;
  type metadata accessor for MerchantTokenIconProvider();
  v7 = swift_allocObject();
  v8 = a1;
  v9 = a2;
  v10 = v6;
  swift_defaultActor_initialize();
  v11 = MEMORY[0x1E69E7CC0];
  *(v7 + 152) = sub_1BD1AC6F4(MEMORY[0x1E69E7CC0]);
  v12 = sub_1BD1AC8E0(v11);

  *(v7 + 160) = v12;
  sub_1BD043990(&v14, v7 + 112);
  v2[3] = v7;
  return v2;
}

void *sub_1BD921E80(unint64_t a1)
{
  v3 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v176 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v189 = &v170 - v7;
  v198 = sub_1BE04AA64();
  v8 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v193 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v195 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for UnifiedMerchantTokenData(0);
  v197 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v202 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v188 = &v170 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v170 - v16);
  v18 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v173 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v181 = &v170 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v172 = &v170 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v170 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v170 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v170 - v32;
  v34 = *(v4 + 56);
  v178 = v3;
  v177 = v4 + 56;
  v175 = v34;
  (v34)(&v170 - v32, 1, 1, v3, v31);
  v182 = v18;
  v35 = *(v18 + 20);
  v36 = a1;
  v37 = MEMORY[0x1E69E7CC0];
  v190 = v35;
  v191 = v33;
  *&v33[v35] = MEMORY[0x1E69E7CC0];
  v194 = sub_1BD1AE54C(v37);
  if (a1 >> 62)
  {
    v38 = sub_1BE053704();
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x1E69E7CC0];
  v170 = v20;
  if (v38)
  {
    if (v38 >= 1)
    {
      v187 = v29;
      v40 = 0;
      v199 = a1 & 0xC000000000000001;
      v203 = *(v1 + 32);
      v186 = (v8 + 48);
      v180 = (v8 + 32);
      v174 = (v8 + 16);
      v179 = (v8 + 8);
      v196 = a1;
      v200 = v38;
      v185 = v17;
      while (1)
      {
        if (v199)
        {
          v41 = MEMORY[0x1BFB40900](v40, v36);
        }

        else
        {
          v41 = *(v36 + 8 * v40 + 32);
        }

        v42 = v41;
        if (v203)
        {
          v43 = v203;
          v44 = [v42 primaryAccountIdentifier];
          v45 = sub_1BE052434();
          v47 = v46;

          v48 = [v43 primaryAccountIdentifier];
          v49 = sub_1BE052434();
          v51 = v50;

          if (v45 == v49 && v47 == v51)
          {

            v47, v68, v69, v70, v71, v72, v73, v74;
            v51, v75, v76, v77, v78, v79, v80, v81;
            v36 = v196;
          }

          else
          {
            v53 = sub_1BE053B84();

            v47, v54, v55, v56, v57, v58, v59, v60;
            v51, v61, v62, v63, v64, v65, v66, v67;
            v36 = v196;
            if ((v53 & 1) == 0)
            {

              goto LABEL_7;
            }
          }
        }

        v82 = v42;
        v83 = v195;
        sub_1BE04AEF4();
        sub_1BD3D4BAC(v82, v83, v17);
        v84 = [v82 primaryAccountDisplayName];
        if (v84)
        {
          v201 = v39;
          v85 = v84;
          v86 = sub_1BE052434();
          v88 = v87;

          v89 = v189;
          sub_1BD0DE19C(v17 + *(v192 + 72), v189, &unk_1EBD3CF70, &qword_1BE0BA000);
          v90 = v198;
          if ((*v186)(v89, 1, v198) != 1)
          {
            (*v180)(v193, v89, v90);
            v100 = [v82 primaryAccountIdentifier];
            v101 = sub_1BE052434();
            v103 = v102;

            v104 = v194;
            v105 = *(v194 + 16);
            v184 = v103;
            if (v105 && (v106 = sub_1BD148F70(v101, v103), (v107 & 1) != 0))
            {
              v114 = v106;
              v88, v107, v108, v109, v110, v111, v112, v113;
              v115 = *(v104 + 56) + *(v173 + 72) * v114;
              v116 = v172;
              sub_1BD930FE0(v115, v172, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v117 = v116;
              v118 = v171;
              sub_1BD93641C(v117, v171, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v119 = v187;
              sub_1BD93641C(v118, v187, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v120 = v182;
              v17 = v185;
              v121 = v101;
            }

            else
            {
              v122 = v101;
              v183 = v101;
              v123 = v178;
              v124 = v176;
              (*v174)(&v176[*(v178 + 20)], v193, v198);
              v17 = v185;
              v125 = (v185 + *(v192 + 80));
              v126 = *v125;
              v127 = v125[1];
              *v124 = v122;
              v124[1] = v103;
              v128 = (v124 + *(v123 + 24));
              *v128 = v126;
              v128[1] = v127;
              v129 = (v124 + *(v123 + 28));
              *v129 = v86;
              v129[1] = v88;
              v119 = v187;
              sub_1BD930FE0(v124, v187, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v175(v119, 0, 1, v123);
              sub_1BE048C84();
              sub_1BE048C84();
              v130 = v124;
              v104 = v194;
              sub_1BD935C74(v130, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v120 = v182;
              *(v119 + *(v182 + 20)) = MEMORY[0x1E69E7CC0];
              v121 = v183;
            }

            sub_1BD930FE0(v17, v188, type metadata accessor for UnifiedMerchantTokenData);
            v131 = *(v120 + 20);
            v132 = *(v119 + v131);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v201;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v132 = sub_1BD1D9A28(0, v132[2] + 1, 1, v132);
            }

            v135 = v132[2];
            v134 = v132[3];
            if (v135 >= v134 >> 1)
            {
              v132 = sub_1BD1D9A28((v134 > 1), v135 + 1, 1, v132);
            }

            v132[2] = v135 + 1;
            sub_1BD93641C(v188, v132 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v135, type metadata accessor for UnifiedMerchantTokenData);
            v136 = v187;
            *&v187[v131] = v132;
            v137 = v181;
            sub_1BD930FE0(v136, v181, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            v138 = swift_isUniquelyReferenced_nonNull_native();
            v204[0] = v104;
            v139 = v137;
            v140 = v184;
            sub_1BD1DC080(v139, v121, v184, v138);
            v140, v141, v142, v143, v144, v145, v146, v147;

            (*v179)(v193, v198);
            sub_1BD935C74(v17, type metadata accessor for UnifiedMerchantTokenData);
            v194 = v204[0];
            sub_1BD935C74(v136, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            v36 = v196;
            goto LABEL_7;
          }

          v88, v91, v92, v93, v94, v95, v96, v97;
          sub_1BD0DE53C(v89, &unk_1EBD3CF70, &qword_1BE0BA000);
          v17 = v185;
          v39 = v201;
        }

        sub_1BD930FE0(v17, v202, type metadata accessor for UnifiedMerchantTokenData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_1BD1D9A28(0, v39[2] + 1, 1, v39);
        }

        v99 = v39[2];
        v98 = v39[3];
        if (v99 >= v98 >> 1)
        {
          v39 = sub_1BD1D9A28((v98 > 1), v99 + 1, 1, v39);
        }

        sub_1BD935C74(v17, type metadata accessor for UnifiedMerchantTokenData);
        v39[2] = v99 + 1;
        sub_1BD93641C(v202, v39 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v99, type metadata accessor for UnifiedMerchantTokenData);
        *&v191[v190] = v39;
LABEL_7:
        if (v200 == ++v40)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_46:
    v39 = sub_1BD500080(v39);
    goto LABEL_38;
  }

LABEL_36:
  v17 = v194;
  v148 = sub_1BE048C84();
  sub_1BD6CAF44(v148, sub_1BD922BB8, 0);
  v204[0] = v149;
  sub_1BD922D04(v204);
  v17, v150, v151, v152, v153, v154, v155, v156;
  v20 = v204[0];
  if (!v39[2])
  {
    goto LABEL_43;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_38:
  v157 = v39[2];
  v204[0] = v39 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
  v204[1] = v157;
  sub_1BD931074(v204, type metadata accessor for UnifiedMerchantTokenData, sub_1BD931B10, sub_1BD9311C4);
  v158 = v191;
  *&v191[v190] = v39;
  v159 = v170;
  sub_1BD930FE0(v158, v170, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1BD1D9A00(0, v20[2] + 1, 1, v20);
  }

  v161 = v20[2];
  v160 = v20[3];
  if (v161 >= v160 >> 1)
  {
    v20 = sub_1BD1D9A00((v160 > 1), v161 + 1, 1, v20);
  }

  v20[2] = v161 + 1;
  sub_1BD93641C(v159, v20 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v161, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
LABEL_43:
  sub_1BD935C74(v191, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
  v17, v162, v163, v164, v165, v166, v167, v168;
  return v20;
}

void sub_1BD922BB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD930FE0(a1, a2, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
  v3 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  sub_1BD922C1C((a2 + *(v3 + 20)));
}

void sub_1BD922C1C(void *a1)
{
  v2 = *(type metadata accessor for UnifiedMerchantTokenData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD500080(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD931074(v5, type metadata accessor for UnifiedMerchantTokenData, sub_1BD93256C, sub_1BD931450);
  *a1 = v3;
}

void sub_1BD922D04(uint64_t *a1)
{
  v2 = *(type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED7F4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD931074(v5, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection, sub_1BD932F10, sub_1BD9316CC);
  *a1 = v3;
}

uint64_t sub_1BD922DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178, &qword_1BE106238);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - v8;
  sub_1BD0DE19C(a1, v34 - v8, &qword_1EBD59178, &qword_1BE106238);
  v10 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v11 = *(*(v10 - 8) + 48);
  result = v11(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = &v9[*(v10 + 28)];
    v15 = *v13;
    v14 = *(v13 + 1);
    sub_1BE048C84();
    sub_1BD935C74(v9, type metadata accessor for MerchantTokenListViewModel.SectionCard);
    v34[2] = v15;
    v34[3] = v14;
    sub_1BD0DE19C(a2, v6, &qword_1EBD59178, &qword_1BE106238);
    result = v11(v6, 1, v10);
    if (result != 1)
    {
      v16 = &v6[*(v10 + 28)];
      v18 = *v16;
      v17 = *(v16 + 1);
      sub_1BE048C84();
      sub_1BD935C74(v6, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v34[0] = v18;
      v34[1] = v17;
      sub_1BD0DDEBC();
      v19 = sub_1BE0535B4();
      v14, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      return v19 == -1;
    }
  }

  __break(1u);
  return result;
}

id *sub_1BD922FFC()
{
  v0[3], v1, v2, v3, v4, v5, v6, v7;

  v0[9], v8, v9, v10, v11, v12, v13, v14;
  v15 = OBJC_IVAR____TtC9PassKitUI26MerchantTokenListViewModel___observationRegistrar;
  v16 = sub_1BE04B5D4();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t sub_1BD923094()
{
  sub_1BD922FFC();

  return swift_deallocClassInstance();
}

void sub_1BD9230EC(void *a1@<X8>)
{
  v141 = a1;
  v1 = sub_1BE051584();
  v131 = *(v1 - 8);
  *&v132 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v130 = &v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59378, &qword_1BE106808);
  MEMORY[0x1EEE9AC00](v138);
  v140 = (&v124 - v3);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59380, &qword_1BE106810);
  MEMORY[0x1EEE9AC00](v134);
  v135 = (&v124 - v4);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59388, &unk_1BE106818);
  MEMORY[0x1EEE9AC00](v139);
  v136 = &v124 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v128 = &v124 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v129 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v124 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59390, &unk_1BE106828);
  MEMORY[0x1EEE9AC00](v133);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v124 - v16;
  v18 = sub_1BE04AA64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v124 - v26;
  v28 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(v137, v30, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = *v30;
      v33 = *(v30 + 1);
      v34 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1BD041A38(v32, v33);
      v35 = sub_1BE04AAB4();
      v36 = [v34 initWithData_];

      v137 = v32;
      v129 = v33;
      sub_1BD1245AC(v32, v33, v37, v38, v39, v40, v41, v42);
      if (v36)
      {
        v43 = v36;
        v44 = sub_1BE051544();
        v46 = v130;
        v45 = v131;
        v47 = v132;
        (*(v131 + 13))(v130, *MEMORY[0x1E6981630], v132);
        v48 = sub_1BE0515E4();
        v44, v49, v50, v51, v52, v53, v54, v55;
        (*(v45 + 8))(v46, v47);
        v142 = v48;
        v143 = 0;
        v144 = 1;
        v145 = 0;
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
        sub_1BD223C50();
        sub_1BE04F9A4();
        v48, v56, v57, v58, v59, v60, v61, v62;
      }

      else
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
        sub_1BD223C50();
        sub_1BE04F9A4();
      }

      v105 = v147;
      v106 = v148;
      v132 = v146;
      v107 = v135;
      *v135 = v146;
      *(v107 + 8) = v105;
      *(v107 + 18) = v106;
      swift_storeEnumTagMultiPayload();
      v108 = v132;
      sub_1BD936ACC(v132, *(&v132 + 1), v105, v106);
      sub_1BD936ACC(v108, *(&v108 + 1), v105, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0, &qword_1BE106838);
      sub_1BD0DE4F4(&qword_1EBD593A0, &qword_1EBD59390, &unk_1BE106828, &unk_1BE10F338);
      sub_1BD936A40();
      v109 = v136;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v109, v140, &qword_1EBD59388, &unk_1BE106818);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BD936988();
      sub_1BD223C50();
      sub_1BE04F9A4();
      sub_1BD936AD8(v108, *(&v108 + 1), v105, v106, v110, v111, v112, v113);
      sub_1BD936AD8(v108, *(&v108 + 1), v105, v106, v114, v115, v116, v117);
      sub_1BD1245AC(v137, v129, v118, v119, v120, v121, v122, v123);
      sub_1BD0DE53C(v109, &qword_1EBD59388, &unk_1BE106818);
    }

    else
    {
      v76 = *v30;
      v77 = sub_1BE051544();
      v79 = v130;
      v78 = v131;
      v80 = v132;
      (*(v131 + 13))(v130, *MEMORY[0x1E6981630], v132);
      v81 = sub_1BE0515E4();
      v77, v82, v83, v84, v85, v86, v87, v88;
      (*(v78 + 8))(v79, v80);
      v89 = v140;
      *v140 = v81;
      v89[1] = 0;
      *(v89 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BD936988();
      sub_1BD223C50();
      sub_1BE04F9A4();
      v81, v90, v91, v92, v93, v94, v95, v96;
    }
  }

  else
  {
    v130 = v14;
    v125 = v24;
    v126 = v21;
    v63 = v128;
    v137 = v17;
    v64 = *(v19 + 32);
    v64(v27, v30, v18);
    v65 = *(v19 + 16);
    *&v132 = v27;
    v66 = v27;
    v67 = v65;
    v65(v12, v66, v18);
    (*(v19 + 56))(v12, 0, 1, v18);
    v68 = [objc_opt_self() sharedURLCache];
    v131 = v12;
    v69 = v12;
    v70 = v129;
    sub_1BD0DE19C(v69, v129, &unk_1EBD3CF70, &qword_1BE0BA000);
    v71 = (*(v19 + 48))(v70, 1, v18);
    v72 = v19;
    v73 = v18;
    v127 = v72;
    if (v71 == 1)
    {
      sub_1BD0DE53C(v70, &unk_1EBD3CF70, &qword_1BE0BA000);
      v74 = 1;
      v75 = v63;
    }

    else
    {
      v97 = v125;
      v64(v125, v70, v73);
      v67(v126, v97, v73);
      v75 = v63;
      sub_1BE04A114();
      (*(v72 + 8))(v97, v73);
      v74 = 0;
    }

    v98 = v130;
    v99 = v73;
    v100 = sub_1BE04A134();
    (*(*(v100 - 8) + 56))(v75, v74, 1, v100);
    v101 = v133;
    sub_1BD0DE204(v75, v98 + *(v133 + 40), &qword_1EBD45720, &qword_1BE0DBCF0);
    *(v98 + 16) = sub_1BD923D54;
    *(v98 + 24) = 0;
    *(v98 + v101[12]) = 0;
    v102 = v98 + v101[13];
    *v102 = 0;
    *(v102 + 8) = 0;
    *(v102 + 16) = 0;
    *(v102 + 24) = 1;
    *(v98 + v101[11]) = v68;
    v142 = 0x8000000000000000;
    sub_1BE051694();
    sub_1BD0DE53C(v131, &unk_1EBD3CF70, &qword_1BE0BA000);
    *v98 = v146;
    v103 = v137;
    sub_1BD0DE204(v98, v137, &qword_1EBD59390, &unk_1BE106828);
    sub_1BD0DE19C(v103, v135, &qword_1EBD59390, &unk_1BE106828);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0, &qword_1BE106838);
    sub_1BD0DE4F4(&qword_1EBD593A0, &qword_1EBD59390, &unk_1BE106828, &unk_1BE10F338);
    sub_1BD936A40();
    v104 = v136;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v104, v140, &qword_1EBD59388, &unk_1BE106818);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD936988();
    sub_1BD223C50();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v104, &qword_1EBD59388, &unk_1BE106818);
    sub_1BD0DE53C(v103, &qword_1EBD59390, &unk_1BE106828);
    (*(v127 + 8))(v132, v99);
  }
}

void sub_1BD923D54(unint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B8, &qword_1BE106840);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593C0, &unk_1BE106848);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593C8, &qword_1BE106858);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v31 - v11;
  v13 = sub_1BE051584();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BD223C50();
      sub_1BE04F9A4();
      v18 = v41;
      v19 = v42;
      *v12 = v40;
      *(v12 + 8) = v18;
      v12[18] = v19;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0, &qword_1BE106838);
      sub_1BD936A40();
      sub_1BD936AE4();
      sub_1BE04F9A4();
    }

    else
    {
      sub_1BE04E4F4();
      v30 = v32;
      (*(v32 + 16))(v5, v10, v8);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v7, v12, &qword_1EBD593C0, &unk_1BE106848);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0, &qword_1BE106838);
      sub_1BD936A40();
      sub_1BD936AE4();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v7, &qword_1EBD593C0, &unk_1BE106848);
      (*(v30 + 8))(v10, v8);
    }
  }

  else
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E6981630], v13, v15);
    v20 = sub_1BE0515E4();
    (*(v14 + 8))(v17, v13);
    v36 = v20;
    v37 = 0;
    v38 = 1;
    v39 = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v21 = v41;
    v22 = v42;
    *v12 = v40;
    *(v12 + 8) = v21;
    v12[18] = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593B0, &qword_1BE106838);
    sub_1BD936A40();
    sub_1BD936AE4();
    sub_1BE04F9A4();
    v20, v23, v24, v25, v26, v27, v28, v29;
  }
}

uint64_t sub_1BD9242AC()
{
  v1 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B0F4();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 88));
  if (*(v24 + 16) != 1)
  {
    return 0;
  }

  v25 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD930FE0(v24 + *(v25 + 28) + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)), v23, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

    sub_1BD93641C(v23, v20, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    sub_1BD0DE19C(v20, v17, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    v31 = sub_1BE0493F4();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v17, 1, v31) == 1)
    {
      sub_1BD935C74(v20, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
      sub_1BD0DE53C(v17, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      return 0;
    }

    v35 = v41;
    sub_1BE04B054();
    v36 = sub_1BE0493E4();
    (*(v42 + 8))(v35, v43);
    sub_1BD935C74(v20, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    (*(v32 + 8))(v17, v31);
    return v36;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1BD93641C(v23, v6, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    sub_1BD0DE19C(v6, v14, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    v33 = sub_1BE0493F4();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v14, 1, v33) == 1)
    {
      sub_1BD935C74(v6, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      sub_1BD0DE53C(v14, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      return 0;
    }

    v37 = v41;
    sub_1BE04B054();
    v36 = sub_1BE0493E4();
    (*(v42 + 8))(v37, v43);
    sub_1BD935C74(v6, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    (*(v34 + 8))(v14, v33);
    return v36;
  }

  sub_1BD93641C(v23, v3, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
  v27 = *&v3[*(v1 + 20)];
  if (!*(v27 + 16))
  {
    sub_1BD935C74(v3, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    return 0;
  }

  v28 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0) - 8);
  sub_1BD0DE19C(v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v11, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v29 = sub_1BE0493F4();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v11, 1, v29) != 1)
  {
    v39 = v41;
    sub_1BE04B054();
    v36 = sub_1BE0493E4();
    (*(v42 + 8))(v39, v43);
    sub_1BD935C74(v3, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    (*(v30 + 8))(v11, v29);
    return v36;
  }

  sub_1BD935C74(v3, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
  sub_1BD0DE53C(v11, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  return 0;
}

void sub_1BD9249D8(void *a1@<X8>)
{
  v3 = sub_1BE04AA64();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BD0DE19C(v1 + *(v13 + 40), v8, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1BD93641C(v8, v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD93641C(v12, a1, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    (*(v10 + 56))(a1, 0, 1, v9);
    return;
  }

  sub_1BD0DE53C(v8, &qword_1EBD44D48, &qword_1BE1067C0);
  v14 = (v1 + *(v13 + 84));
  v15 = *v14;
  v16 = v14[1];
  v18 = sub_1BE052434();
  v24 = v17;
  if (v15 == v18 && v16 == v17)
  {
    v17, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v25 = sub_1BE053B84();
    v24, v26, v27, v28, v29, v30, v31, v32;
    if ((v25 & 1) == 0)
    {
      (*(v10 + 56))(a1, 1, 1, v9);
      return;
    }
  }

  v33 = PKPassKitUIBundle();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BE052404();
    v36 = sub_1BE052404();
    v37 = [v34 URLForResource:v35 withExtension:v36];

    if (v37)
    {
      sub_1BE04A9F4();

      v38 = sub_1BE04A9C4();
      (*(v42 + 8))(v5, v43);
    }

    else
    {
      v38 = 0;
    }

    v39 = a1;
    v40 = PKUIScreenScale();
    v41 = PKUIImageFromPDF(v38, 80.0, 80.0, v40);

    if (v41)
    {
      *v39 = v41;
      swift_storeEnumTagMultiPayload();
      (*(v10 + 56))(v39, 0, 1, v9);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD924DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372E8, &qword_1BE1067A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - v4;
  *v5 = sub_1BE04F504();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59348, &qword_1BE1067A8);
  sub_1BD925264(v1, &v5[*(v6 + 44)]);
  v7 = type metadata accessor for MerchantTokenCell(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1BD930FE0(v1, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenCell);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1BD93641C(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for MerchantTokenCell);
  v14 = sub_1BE0528D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v44 - v17;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v47 = sub_1BE04EAA4();
    v48 = &v44;
    v46 = *(v47 - 8);
    MEMORY[0x1EEE9AC00](v47);
    v45 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1BE053834();
    v51, v20, v21, v22, v23, v24, v25, v26;
    v50 = 0xD000000000000032;
    v51 = 0x80000001BE1408D0;
    v49 = 286;
    v27 = sub_1BE053B24();
    v29 = v28;
    MEMORY[0x1BFB3F610](v27);
    v29, v30, v31, v32, v33, v34, v35, v36;
    v44 = &v44;
    v38 = MEMORY[0x1EEE9AC00](v37);
    (*(v15 + 16))(&v44 - v17, &v44 - v17, v14, v38);
    v39 = v45;
    sub_1BE04EA94();
    (*(v15 + 8))(v18, v14);
    sub_1BD0DE204(v5, a1, &qword_1EBD372E8, &qword_1BE1067A0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372F0, &qword_1BE0B1310);
    return (*(v46 + 32))(a1 + *(v40 + 36), v39, v47);
  }

  else
  {
    v42 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372F8, &qword_1BE0B1318) + 36));
    v43 = sub_1BE04E7B4();
    (*(v15 + 32))(&v42[*(v43 + 20)], &v44 - v17, v14);
    *v42 = &unk_1BE1067B8;
    *(v42 + 1) = v12;
    return sub_1BD0DE204(v5, a1, &qword_1EBD372E8, &qword_1BE1067A0);
  }
}

uint64_t sub_1BD925264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F210, &unk_1BE0ED150);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v107 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v103 - v7;
  sub_1BD925830(a1, (&v103 - v7));
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v9 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F218, &unk_1BE1067D0) + 36)];
  v10 = v115;
  *v9 = v114;
  *(v9 + 1) = v10;
  *(v9 + 2) = v116;
  v11 = *(v4 + 44);
  v104 = v8;
  v12 = &v8[v11];
  v13 = *(sub_1BE04EDE4() + 20);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1BE04F684();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #7.0 }

  *v12 = _Q0;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
  v106 = sub_1BE04F7C4();
  v113 = 1;
  sub_1BD925F78(a1, &v110);
  v119 = v111[1];
  v120 = v111[2];
  v121 = v111[3];
  v122 = *&v111[4];
  v117 = v110;
  v118 = v111[0];
  v124 = *&v111[4];
  v123[2] = v111[1];
  v123[3] = v111[2];
  v123[4] = v111[3];
  v123[0] = v110;
  v123[1] = v111[0];
  sub_1BD0DE19C(&v117, v108, &qword_1EBD3F470, &qword_1BE0C6150);
  sub_1BD0DE53C(v123, &qword_1EBD3F470, &qword_1BE0C6150);
  *(&v112[2] + 7) = v119;
  *(&v112[3] + 7) = v120;
  *(&v112[4] + 7) = v121;
  *(&v112[5] + 7) = v122;
  *(v112 + 7) = v117;
  *(&v112[1] + 7) = v118;
  v105 = v113;
  type metadata accessor for MerchantTokenCell(0);
  v21 = sub_1BD9242AC();
  if (v22)
  {
    *&v110 = v21;
    *(&v110 + 1) = v22;
    sub_1BD0DDEBC();
    v23 = sub_1BE0506C4();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = sub_1BE0502A4();
    v31 = sub_1BE0505F4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v30, v32, v34, v36, v38, v39, v40, v41;
    sub_1BD0DDF10(v23, v25, (v27 & 1), v42, v43, v44, v45, v46);
    v29, v47, v48, v49, v50, v51, v52, v53;
    LODWORD(v110) = sub_1BE04FC74();
    v54 = v37;
    v55 = sub_1BE050574();
    v57 = v56;
    LOBYTE(v25) = v58;
    v60 = v59;
    sub_1BD0DDF10(v31, v33, (v35 & 1), v59, v61, v62, v63, v64);
    v54, v65, v66, v67, v68, v69, v70, v71;
    v72 = (v25 & 1);
    sub_1BD0D7F18(v55, v57, v25 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v55, v57, v72, v73, v74, v75, v76, v77);
    v60, v78, v79, v80, v81, v82, v83, v84;
    sub_1BD0D7F18(v55, v57, v25 & 1);
    sub_1BE048C84();
    v85 = 1;
  }

  else
  {
    v85 = 0;
    v55 = 0;
    v57 = 0;
    v72 = 0;
    v60 = 0;
  }

  v86 = v104;
  v87 = v107;
  sub_1BD0DE19C(v104, v107, &qword_1EBD4F210, &unk_1BE0ED150);
  v88 = v87;
  v89 = v103;
  sub_1BD0DE19C(v88, v103, &qword_1EBD4F210, &unk_1BE0ED150);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59350, &unk_1BE1067E0);
  v91 = (v89 + *(v90 + 48));
  v108[0] = v106;
  v108[1] = 0;
  LOBYTE(v109[0]) = v105;
  *(v109 + 1) = v112[0];
  *(&v109[1] + 1) = v112[1];
  *(&v109[4] + 1) = v112[4];
  v109[5] = *(&v112[4] + 15);
  *(&v109[3] + 1) = v112[3];
  *(&v109[2] + 1) = v112[2];
  v92 = v109[0];
  *v91 = v106;
  v91[1] = v92;
  v93 = v109[1];
  v94 = v109[2];
  v95 = v109[5];
  v96 = v109[3];
  v91[5] = v109[4];
  v91[6] = v95;
  v91[3] = v94;
  v91[4] = v96;
  v91[2] = v93;
  v97 = (v89 + *(v90 + 64));
  sub_1BD0DE19C(v108, &v110, &qword_1EBD3F450, &unk_1BE0C6140);
  sub_1BD171A2C(0, v85, v55, v57, v72, v60);
  sub_1BD171A78(0, v85, v55, v57, v72, v60, v98, v99);
  *v97 = 0;
  v97[1] = v85;
  v97[2] = v55;
  v97[3] = v57;
  v97[4] = v72;
  v97[5] = v60;
  sub_1BD0DE53C(v86, &qword_1EBD4F210, &unk_1BE0ED150);
  sub_1BD171A78(0, v85, v55, v57, v72, v60, v100, v101);
  *(&v111[2] + 1) = v112[2];
  *(&v111[3] + 1) = v112[3];
  *(&v111[4] + 1) = v112[4];
  v111[5] = *(&v112[4] + 15);
  *(v111 + 1) = v112[0];
  v110 = v106;
  LOBYTE(v111[0]) = v105;
  *(&v111[1] + 1) = v112[1];
  sub_1BD0DE53C(&v110, &qword_1EBD3F450, &unk_1BE0C6140);
  return sub_1BD0DE53C(v107, &qword_1EBD4F210, &unk_1BE0ED150);
}

void *sub_1BD925830@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F240, &qword_1BE0ED218);
  MEMORY[0x1EEE9AC00](v69);
  v68 = (&v62 - v3);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F248, &qword_1BE0ED220);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v62 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F250, &qword_1BE0ED228);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v62 - v5;
  v64 = type metadata accessor for MerchantTokenIconView(0);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = a1 + *(type metadata accessor for MerchantTokenCell(0) + 20);
  sub_1BD9249D8(v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    v21 = v67;
    sub_1BD0DE53C(v12, &qword_1EBD44D48, &qword_1BE1067C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138, &qword_1BE1061E8);
    sub_1BE0516A4();
    if (v20(v9, 3, v13))
    {
      sub_1BD935C74(v9, type metadata accessor for MerchantTokenCell.ImageState);
      v22 = *(v19 + 32);
      v23 = *(v19 + 40);
      sub_1BE048C84();
      v24 = sub_1BE0503E4();
      v25 = sub_1BE0524C4();
      v27 = v26;
      sub_1BE048C84();
      v28 = sub_1BD683A34(1, v25, v27);
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v27, v29, v31, v33, v35, v36, v37, v38;
      v39 = MEMORY[0x1BFB3F570](v28, v30, v32, v34);
      v41 = v40;
      v34, v40, v42, v43, v44, v45, v46, v47;
      v23, v48, v49, v50, v51, v52, v53, v54;
      v55 = v68;
      *v68 = v22;
      v55[1] = v23;
      v55[2] = v24;
      v55[3] = 0;
      v55[4] = v39;
      v55[5] = v41;
      swift_storeEnumTagMultiPayload();
      sub_1BD683C8C();
      sub_1BD683D40();
      return sub_1BE04F9A4();
    }

    v60 = v62;
    sub_1BD93641C(v9, v62, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD930FE0(v60, v21, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD930FE0(v21, v63, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD928A24(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView, &unk_1BE1062D8);
    v61 = v66;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v61, v68, &qword_1EBD4F250, &qword_1BE0ED228);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v61, &qword_1EBD4F250, &qword_1BE0ED228);
    sub_1BD935C74(v21, type metadata accessor for MerchantTokenIconView);
    v59 = v60;
  }

  else
  {
    sub_1BD93641C(v12, v18, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    v57 = v67;
    sub_1BD930FE0(v18, v67, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD930FE0(v57, v63, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD928A24(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView, &unk_1BE1062D8);
    v58 = v66;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v58, v68, &qword_1EBD4F250, &qword_1BE0ED228);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v58, &qword_1EBD4F250, &qword_1BE0ED228);
    sub_1BD935C74(v57, type metadata accessor for MerchantTokenIconView);
    v59 = v18;
  }

  return sub_1BD935C74(v59, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
}

void sub_1BD925F78(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v171 = a2;
  v3 = sub_1BE050404();
  v168 = *(v3 - 8);
  v169 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v167 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + *(type metadata accessor for MerchantTokenCell(0) + 20);
  v6 = *(v5 + 40);
  v173 = *(v5 + 32);
  v174 = v6;
  v7 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v166 = v7;
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1BE050324();
  sub_1BE0503A4();
  v16 = sub_1BE0503F4();
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = sub_1BE0505F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v16, v25, v27, v29, v31, v32, v33, v34;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v35, v36, v37, v38, v39);
  v14, v40, v41, v42, v43, v44, v45, v46;
  LODWORD(v173) = sub_1BE04FC74();
  v47 = sub_1BE050574();
  v49 = v48;
  v170 = v50;
  v52 = v51;
  sub_1BD0DDF10(v24, v26, (v28 & 1), v51, v53, v54, v55, v56);
  v30, v57, v58, v59, v60, v61, v62, v63;
  KeyPath = swift_getKeyPath();
  v65 = sub_1BD3D3D1C();
  if (v66)
  {
    v173 = v65;
    v174 = v66;
    v67 = sub_1BE0506C4();
    v165 = v68;
    v166 = v67;
    v70 = v69;
    v164 = v71;
    v72 = sub_1BE050454();
    v74 = v167;
    v73 = v168;
    v75 = v169;
    (*(v168 + 13))(v167, *MEMORY[0x1E6980EA8], v169);
    v76 = sub_1BE050434();
    v72, v77, v78, v79, v80, v81, v82, v83;
    (*(v73 + 1))(v74, v75);
    v85 = v165;
    v84 = v166;
    v86 = v164;
    v87 = sub_1BE0505F4();
    v168 = v49;
    v169 = v52;
    v89 = v88;
    v167 = KeyPath;
    v90 = v47;
    v92 = v91;
    v94 = v93;
    v76, v88, v91, v93, v95, v96, v97, v98;
    sub_1BD0DDF10(v84, v85, (v70 & 1), v99, v100, v101, v102, v103);
    v86, v104, v105, v106, v107, v108, v109, v110;
    LODWORD(v173) = sub_1BE04FC94();
    v111 = sub_1BE050574();
    v113 = v112;
    LOBYTE(v86) = v114;
    v116 = v115;
    v117 = (v92 & 1);
    v47 = v90;
    KeyPath = v167;
    v118 = v89;
    v52 = v169;
    sub_1BD0DDF10(v87, v118, v117, v115, v119, v120, v121, v122);
    v123 = v94;
    v49 = v168;
    v123, v124, v125, v126, v127, v128, v129, v130;
    v131 = v86 & 1;
    sub_1BD0D7F18(v111, v113, v86 & 1);
    sub_1BE048C84();
  }

  else
  {
    v111 = 0;
    v113 = 0;
    v131 = 0;
    v116 = 0;
  }

  v132 = (v170 & 1);
  LOBYTE(v173) = v170 & 1;
  v172 = 0;
  sub_1BD0D7F18(v47, v49, v170 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD1969AC(v111, v113, v131, v116);
  sub_1BD1969F0(v111, v113, v131, v116, v133, v134, v135, v136);
  v137 = v173;
  v138 = v172;
  v139 = v171;
  *v171 = v47;
  v139[1] = v49;
  *(v139 + 16) = v137;
  v139[3] = v52;
  v139[4] = KeyPath;
  v139[5] = 2;
  *(v139 + 48) = v138;
  v139[7] = v111;
  v139[8] = v113;
  v139[9] = v131;
  v139[10] = v116;
  sub_1BD1969F0(v111, v113, v131, v116, v140, v141, v142, v143);
  sub_1BD0DDF10(v47, v49, v132, v144, v145, v146, v147, v148);
  KeyPath, v149, v150, v151, v152, v153, v154, v155;
  v52, v156, v157, v158, v159, v160, v161, v162;
}

uint64_t sub_1BD92639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  v3[3] = swift_task_alloc();
  sub_1BE0528A4();
  v3[4] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD92646C, v5, v4);
}

uint64_t sub_1BD92646C()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for MerchantTokenCell(0);
  sub_1BD9249D8(v1);
  v3 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    v11 = *(v0 + 16);
    sub_1BD0DE53C(*(v0 + 24), &qword_1EBD44D48, &qword_1BE1067C0);
    v12 = *(v11 + *(v2 + 24));
    v13 = swift_task_alloc();
    *(v0 + 56) = v13;
    *v13 = v0;
    v13[1] = sub_1BD9265F0;
    v14 = *(v0 + 16);

    return sub_1BD926778(v14, v12);
  }

  else
  {
    v16 = *(v0 + 24);
    *(v0 + 32), v4, v5, v6, v7, v8, v9, v10;
    sub_1BD0DE53C(v16, &qword_1EBD44D48, &qword_1BE1067C0);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1BD9265F0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1BD926710, v3, v2);
}

uint64_t sub_1BD926710(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD926778(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BE04D214();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MerchantTokenCell.ImageState(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1BE0528A4();
  v3[10] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD9268A8, v6, v5);
}

uint64_t sub_1BD9268A8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  *(v0 + 104) = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 2, 3, v3);
  *(v0 + 160) = *(type metadata accessor for MerchantTokenCell(0) + 28);
  sub_1BD930FE0(v1, v2, type metadata accessor for MerchantTokenCell.ImageState);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138, &qword_1BE1061E8);
  sub_1BE0516B4();
  sub_1BD935C74(v1, type metadata accessor for MerchantTokenCell.ImageState);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1BD926A10;
  v7 = *(v0 + 16);

  return sub_1BD98A454(v7);
}

uint64_t sub_1BD926A10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_1BD926CB8;
  }

  else
  {
    v7 = sub_1BD926B54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD926B54(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 144);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    v10 = *(v8 + 144);
    v11 = *(v8 + 32);
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    v13 = sub_1BE051D74();
    sub_1BE04E7D4();
    v13, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v22 = *(v8 + 64);
    v21 = *(v8 + 72);
    (*(v8 + 112))(v21, 3, 3, *(v8 + 104));
    sub_1BD930FE0(v21, v22, type metadata accessor for MerchantTokenCell.ImageState);
    sub_1BE0516B4();
    sub_1BD935C74(v21, type metadata accessor for MerchantTokenCell.ImageState);
  }

  v23 = *(v8 + 8);

  return v23();
}

uint64_t sub_1BD926CB8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 152);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D144();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v8 + 152);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BD026000, v11, v12, "Error fetching icon: %@", v14, 0xCu);
    sub_1BD0DE53C(v15, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v28 = *(v8 + 152);
  v18 = v11;
  v20 = *(v8 + 104);
  v19 = *(v8 + 112);
  v22 = *(v8 + 64);
  v21 = *(v8 + 72);
  v23 = *(v8 + 48);
  v24 = *(v8 + 56);
  v25 = *(v8 + 40);

  (*(v23 + 8))(v24, v25);
  v19(v21, 3, 3, v20);
  sub_1BD930FE0(v21, v22, type metadata accessor for MerchantTokenCell.ImageState);
  sub_1BE0516B4();

  sub_1BD935C74(v21, type metadata accessor for MerchantTokenCell.ImageState);

  v26 = *(v8 + 8);

  return v26();
}

uint64_t sub_1BD926EE4(double a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  *(&v13 - v8) = a3;
  v10 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 3, v10);
  type metadata accessor for MerchantTokenCell(0);
  sub_1BD930FE0(v9, v6, type metadata accessor for MerchantTokenCell.ImageState);
  v11 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59138, &qword_1BE1061E8);
  sub_1BE0516B4();
  return sub_1BD935C74(v9, type metadata accessor for MerchantTokenCell.ImageState);
}

uint64_t sub_1BD927054(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD930FE0(v1, v3, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  MEMORY[0x1BFB40DA0](0);
  sub_1BD3D409C(v6);
  sub_1BD935C74(v3, type metadata accessor for UnifiedMerchantTokenData);
  return sub_1BE053D64();
}

uint64_t sub_1BD92711C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(v1, v4, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  MEMORY[0x1BFB40DA0](0);
  sub_1BD3D409C(a1);
  return sub_1BD935C74(v4, type metadata accessor for UnifiedMerchantTokenData);
}

uint64_t sub_1BD9271D8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD930FE0(v1, v3, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  MEMORY[0x1BFB40DA0](0);
  sub_1BD3D409C(v6);
  sub_1BD935C74(v3, type metadata accessor for UnifiedMerchantTokenData);
  return sub_1BE053D64();
}

uint64_t sub_1BD92729C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59340, &qword_1BE106798);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_1BD930FE0(a1, &v10 - v5, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  sub_1BD930FE0(a2, &v6[v8], type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  LOBYTE(a2) = sub_1BD3D4098();
  sub_1BD935C74(&v6[v8], type metadata accessor for UnifiedMerchantTokenData);
  sub_1BD935C74(v6, type metadata accessor for UnifiedMerchantTokenData);
  return a2 & 1;
}

uint64_t MerchantTokenNavigationStack.body.getter()
{
  type metadata accessor for MerchantTokenNavigationStack(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0, &unk_1BE105F10);
  sub_1BE0516C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42CD8, &qword_1BE0CE8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB8, &qword_1BE105F20);
  sub_1BD0DE4F4(&qword_1EBD58FC0, &qword_1EBD42CD8, &qword_1BE0CE8C8, MEMORY[0x1E69E6318]);
  sub_1BD0DE4F4(&qword_1EBD58FC8, &qword_1EBD42CD8, &qword_1BE0CE8C8, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD58FD0, &qword_1EBD42CD8, &qword_1BE0CE8C8, MEMORY[0x1E69E6348]);
  sub_1BD92827C();
  sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination, &unk_1BE106538);
  return sub_1BE04EBF4();
}

id sub_1BD927578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = sub_1BE04F434();
  v158 = *(v3 - 1);
  v159 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MerchantTokenNavigationStack(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59020, &qword_1BE105F58);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v16 = &v136 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59010, &qword_1BE105F48);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v136 - v17;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593E0, &qword_1BE1068B8);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v136 - v18;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59008, &qword_1BE105F40);
  MEMORY[0x1EEE9AC00](v144);
  v139 = &v136 - v19;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FE8, &qword_1BE105F30);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v136 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FE0, &qword_1BE105F28);
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v149 = &v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593E8, &unk_1BE1068C0);
  v153 = *(v22 - 8);
  v154 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v151 = &v136 - v23;
  v24 = *(a1 + *(v11 + 28));
  v156 = a1;
  sub_1BD930FE0(a1, v14, type metadata accessor for MerchantTokenNavigationStack);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v160 = *(v12 + 80);
  v161 = v25 + v13;
  v26 = swift_allocObject();
  v162 = v25;
  v155 = v14;
  sub_1BD93641C(v14, v26 + v25, type metadata accessor for MerchantTokenNavigationStack);
  KeyPath = swift_getKeyPath();
  v28 = v24[5];
  v163 = v24;
  v164 = sub_1BD936B9C;
  v165 = v26;
  v166 = KeyPath;
  v167 = v28;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B80D8], v6);
  sub_1BE048964();
  v29 = v28;
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    (*(v7 + 8))(v9, v6);
    v169 = v32;
    v170 = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59028, &qword_1BE105F60);
    v36 = sub_1BD9287D0();
    v37 = sub_1BD0DDEBC();
    v38 = MEMORY[0x1E69E6158];
    sub_1BE050B74();
    v34, v39, v40, v41, v42, v43, v44, v45;
    v46 = v163;
    v48 = v165;
    v47 = v166;

    v47, v49, v50, v51, v52, v53, v54, v55;
    v48, v56, v57, v58, v59, v60, v61, v62;
    v46, v63, v64, v65, v66, v67, v68, v69;
    v71 = v158;
    v70 = v159;
    (*(v158 + 13))(v5, *MEMORY[0x1E697C438], v159);
    v163 = v35;
    v164 = v38;
    v165 = v36;
    v166 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = v140;
    v74 = v138;
    sub_1BE050E84();
    (*(v71 + 1))(v5, v70);
    (*(v137 + 8))(v16, v74);
    v75 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
    v159 = type metadata accessor for MerchantTokenNavigationStack;
    v76 = v155;
    v77 = v156;
    sub_1BD930FE0(v156, v155, type metadata accessor for MerchantTokenNavigationStack);
    v78 = swift_allocObject();
    v158 = type metadata accessor for MerchantTokenNavigationStack;
    sub_1BD93641C(v76, v78 + v162, type metadata accessor for MerchantTokenNavigationStack);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59018, &qword_1BE105F50);
    v163 = v74;
    v164 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v138 = sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination, &unk_1BE106538);
    sub_1BD9288DC();
    v79 = v143;
    v137 = v75;
    v80 = v142;
    sub_1BE050D64();
    v78, v81, v82, v83, v84, v85, v86, v87;
    (*(v141 + 8))(v73, v80);
    sub_1BD930FE0(v77, v76, v159);
    v88 = swift_allocObject();
    v89 = v76;
    sub_1BD93641C(v76, v88 + v162, v158);
    v90 = v139;
    v91 = &v139[*(v144 + 36)];
    sub_1BE04E7B4();
    sub_1BE0528B4();
    *v91 = &unk_1BE1068D8;
    *(v91 + 1) = v88;
    (v145[4])(v90, v79, v146);
    v146 = *MEMORY[0x1E69B9D20];
    sub_1BE052434();
    v93 = v92;
    sub_1BD9285C8();
    v94 = v147;
    sub_1BE050DE4();
    v93, v95, v96, v97, v98, v99, v100, v101;
    v102 = sub_1BD0DE53C(v90, &qword_1EBD59008, &qword_1BE105F40);
    v145 = &v136;
    MEMORY[0x1EEE9AC00](v102);
    v103 = v77;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FF0, &qword_1BE105F38);
    v105 = sub_1BD92850C();
    v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59078, &qword_1BE105F78);
    v107 = sub_1BD0DE4F4(&qword_1EBD59080, &qword_1EBD59078, &qword_1BE105F78, MEMORY[0x1E697BEF0]);
    v163 = v106;
    v164 = v107;
    v108 = swift_getOpaqueTypeConformance2();
    v109 = v149;
    v110 = v148;
    sub_1BE051024();
    sub_1BD0DE53C(v94, &qword_1EBD58FE8, &qword_1BE105F30);
    sub_1BD930FE0(v103, v89, v159);
    v111 = swift_allocObject();
    sub_1BD93641C(v89, v111 + v162, v158);
    v112 = type metadata accessor for MerchantTokenDetailView(0);
    v163 = v110;
    v164 = v104;
    v165 = v105;
    v166 = v108;
    v113 = swift_getOpaqueTypeConformance2();
    v135 = sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView, &unk_1BE0ECDFC);
    v115 = v151;
    v114 = v152;
    v116 = v137;
    v117 = v138;
    sub_1BE050D64();
    v111, v118, v119, v120, v121, v122, v123, v124;
    (*(v150 + 8))(v109, v114);
    sub_1BE052434();
    v126 = v125;
    v163 = v114;
    v164 = v116;
    v165 = v112;
    v166 = v113;
    v167 = v117;
    v168 = v135;
    swift_getOpaqueTypeConformance2();
    v127 = v154;
    sub_1BE050DE4();
    v126, v128, v129, v130, v131, v132, v133, v134;
    return (*(v153 + 8))(v115, v127);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD92827C()
{
  result = qword_1EBD58FD8;
  if (!qword_1EBD58FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FB8, &qword_1BE105F20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FE0, &qword_1BE105F28);
    type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(255);
    type metadata accessor for MerchantTokenDetailView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FE8, &qword_1BE105F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FF0, &qword_1BE105F38);
    sub_1BD92850C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59078, &qword_1BE105F78);
    sub_1BD0DE4F4(&qword_1EBD59080, &qword_1EBD59078, &qword_1BE105F78, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination, &unk_1BE106538);
    sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView, &unk_1BE0ECDFC);
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58FD8);
  }

  return result;
}

unint64_t sub_1BD92850C()
{
  result = qword_1EBD58FF8;
  if (!qword_1EBD58FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58FE8, &qword_1BE105F30);
    sub_1BD9285C8();
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58FF8);
  }

  return result;
}

unint64_t sub_1BD9285C8()
{
  result = qword_1EBD59000;
  if (!qword_1EBD59000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59008, &qword_1BE105F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59010, &qword_1BE105F48);
    type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59018, &qword_1BE105F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59020, &qword_1BE105F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59028, &qword_1BE105F60);
    sub_1BD9287D0();
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination, &unk_1BE106538);
    sub_1BD9288DC();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59000);
  }

  return result;
}

unint64_t sub_1BD9287D0()
{
  result = qword_1EBD59030;
  if (!qword_1EBD59030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59028, &qword_1BE105F60);
    sub_1BD928888();
    sub_1BD0DE4F4(&qword_1EBD59040, &qword_1EBD59048, &qword_1BE105F68, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59030);
  }

  return result;
}

unint64_t sub_1BD928888()
{
  result = qword_1EBD59038;
  if (!qword_1EBD59038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59038);
  }

  return result;
}

unint64_t sub_1BD9288DC()
{
  result = qword_1EBD59058;
  if (!qword_1EBD59058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59018, &qword_1BE105F50);
    sub_1BD928998();
    sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView, &unk_1BE0ECDFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59058);
  }

  return result;
}

unint64_t sub_1BD928998()
{
  result = qword_1EBD59060;
  if (!qword_1EBD59060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59068, &qword_1BE105F70);
    sub_1BD362620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59060);
  }

  return result;
}

uint64_t sub_1BD928A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD928A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(a1, v7, type metadata accessor for UnifiedMerchantTokenData);
  v8 = a2 + *(type metadata accessor for MerchantTokenNavigationStack(0) + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v28[3] = *v8;
  v28[4] = v10;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0, &unk_1BE105F10);
  sub_1BE0516A4();
  v11 = v28[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1BD1D9A50(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1BD1D9A50((v12 > 1), v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  sub_1BD93641C(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  v28[1] = v9;
  v28[2] = v10;
  v28[0] = v11;
  sub_1BE0516B4();
  v10, v14, v15, v16, v17, v18, v19, v20;
  v9, v21, v22, v23, v24, v25, v26, v27;
}

uint64_t sub_1BD928C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v89 = a3;
  v85 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v81 - v6;
  v7 = type metadata accessor for MerchantTokenNavigationStack(0);
  v82 = *(v7 - 8);
  v8 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for MerchantTokenDetailView(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59420, &qword_1BE106918);
  MEMORY[0x1EEE9AC00](v87);
  v13 = &v81 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59018, &qword_1BE105F50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v81 - v15;
  v16 = type metadata accessor for UnifiedMerchantTokenData(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(a1, v22, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  sub_1BD93641C(v22, v19, type metadata accessor for UnifiedMerchantTokenData);
  v23 = &v19[*(v17 + 92)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = sub_1BE052434();
  v34 = v27;
  if (v24 == v26 && v25 == v27)
  {
    v27, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    v36 = sub_1BE053B84();
    v34, v37, v38, v39, v40, v41, v42, v43;
    if ((v36 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v44 = sub_1BD3CE02C();
  if (!v44)
  {
LABEL_10:
    sub_1BD930FE0(v19, v11, type metadata accessor for UnifiedMerchantTokenData);
    v63 = *(v86 + *(v7 + 20));
    v64 = *(v63 + 24);
    v81 = *(v63 + 32);
    v65 = v81;
    sub_1BD930FE0(v86, &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
    v66 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v67 = swift_allocObject();
    sub_1BD93641C(&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v67 + v66, type metadata accessor for MerchantTokenNavigationStack);
    v68 = v9[7];
    v69 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
    v70 = v65;
    sub_1BE048964();
    *&v11[v68] = [v69 init];
    v71 = &v11[v9[8]];
    v90 = 0;
    sub_1BE051694();
    v72 = v92;
    *v71 = v91;
    *(v71 + 1) = v72;
    v73 = &v11[v9[9]];
    v90 = 0;
    sub_1BE051694();
    v74 = v92;
    *v73 = v91;
    *(v73 + 1) = v74;
    v75 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    v76 = v84;
    (*(*(v75 - 8) + 56))(v84, 1, 3, v75);
    sub_1BD930FE0(v76, v83, type metadata accessor for MerchantTokenDetailView.ImageState);
    sub_1BE051694();
    sub_1BD935C74(v76, type metadata accessor for MerchantTokenDetailView.ImageState);
    v77 = &v11[v9[11]];
    v90 = 0;
    sub_1BE051694();
    v78 = v92;
    *v77 = v91;
    *(v77 + 1) = v78;
    *&v11[v9[5]] = v64;
    *&v11[v9[12]] = v81;
    v79 = &v11[v9[6]];
    *v79 = sub_1BD937290;
    *(v79 + 1) = v67;
    sub_1BD930FE0(v11, v13, type metadata accessor for MerchantTokenDetailView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59068, &qword_1BE105F70);
    sub_1BD928998();
    sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView, &unk_1BE0ECDFC);
    v62 = v88;
    sub_1BE04F9A4();
    sub_1BD935C74(v11, type metadata accessor for MerchantTokenDetailView);
    goto LABEL_11;
  }

  v45 = v44;
  v46 = *(v86 + *(v7 + 20));
  KeyPath = swift_getKeyPath();
  v91 = v46;
  sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel, &unk_1BE106578);
  v48 = v45;
  sub_1BE04B594();
  KeyPath, v49, v50, v51, v52, v53, v54, v55;
  v56 = *(v46 + 48);
  v57 = objc_allocWithZone(PKMerchantTokenDetailViewController);
  v58 = v56;
  v59 = [v57 initWithMerchantToken_];
  [v59 setDelegate_];

  v60 = sub_1BE0501D4();
  *v13 = v59;
  v13[8] = v60;
  swift_storeEnumTagMultiPayload();
  v61 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59068, &qword_1BE105F70);
  sub_1BD928998();
  sub_1BD928A24(&qword_1EBD59070, type metadata accessor for MerchantTokenDetailView, &unk_1BE0ECDFC);
  v62 = v88;
  sub_1BE04F9A4();

LABEL_11:
  sub_1BD0DE204(v62, v89, &qword_1EBD59018, &qword_1BE105F50);
  return sub_1BD935C74(v19, type metadata accessor for UnifiedMerchantTokenData);
}

uint64_t sub_1BD929440(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for MerchantTokenNavigationStack(0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v5 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD92953C, v5, v4);
}

uint64_t sub_1BD92953C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  receiver = v8[4].receiver;
  v10 = v8[3].receiver;
  v11 = v8[2].receiver;
  v8[4].super_class, a2, a3, a4, a5, a6, a7, a8;
  sub_1BD930FE0(v11, receiver, type metadata accessor for MerchantTokenNavigationStack);
  v12 = (v10[80] + 16) & ~v10[80];
  v13 = swift_allocObject();
  sub_1BD93641C(receiver, v13 + v12, type metadata accessor for MerchantTokenNavigationStack);
  v14 = type metadata accessor for CashDetailsViewControllerWrapper.DelegateProxy();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtCV9PassKitUI32CashDetailsViewControllerWrapper13DelegateProxy_didRevokeMerchantToken];
  *v16 = sub_1BD93705C;
  v16[1] = v13;
  v8[1].receiver = v15;
  v8[1].super_class = v14;
  v17 = objc_msgSendSuper2(v8 + 1, sel_init);
  sub_1BD921960(v17);

  super_class = v8->super_class;

  return super_class();
}

void sub_1BD92967C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + *(type metadata accessor for MerchantTokenNavigationStack(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0, &unk_1BE105F10);
  sub_1BE0516A4();
  v6 = v24;
  if (!v24[2])
  {
    __break(1u);
LABEL_6:
    v6 = sub_1BD500094(v24);
    v7 = v6[2];
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v24[2];
  if (v7)
  {
LABEL_4:
    v8 = v7 - 1;
    v9 = *(type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0) - 8);
    sub_1BD935C74(v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
    v6[2] = v8;
    sub_1BE0516B4();
    v5, v10, v11, v12, v13, v14, v15, v16;
    v4, v17, v18, v19, v20, v21, v22, v23;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BD9297E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59078, &qword_1BE105F78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  sub_1BE04FB04();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593F0, &qword_1BE1068E0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD593F8, &unk_1BE1068E8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52030, &qword_1BE0B7570);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59400, &unk_1BE1068F8);
  v11 = sub_1BD0DE4F4(&qword_1EBD59408, &qword_1EBD593F8, &unk_1BE1068E8, MEMORY[0x1E697D680]);
  v17 = MEMORY[0x1E6981CD8];
  v18 = MEMORY[0x1E6981CD0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_1BD936ED0();
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = OpaqueTypeConformance2;
  v22 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E424();
  v14 = sub_1BD0DE4F4(&qword_1EBD59080, &qword_1EBD59078, &qword_1BE105F78, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v7, v4, v14);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BD929A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for MerchantTokenNavigationStack(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593F8, &unk_1BE1068E8);
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - v10;
  sub_1BD930FE0(a1, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_1BD93641C(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for MerchantTokenNavigationStack);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59418, &unk_1BE106908);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A728, &qword_1BE0E1360);
  v23 = MEMORY[0x1E6981CD8];
  v24 = MEMORY[0x1E6981CD0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1BD55AB08();
  v23 = MEMORY[0x1E6981748];
  v24 = v3;
  v25 = v14;
  v26 = MEMORY[0x1E6981710];
  v27 = OpaqueTypeConformance2;
  v28 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE051704();
  sub_1BE051C64();
  sub_1BE04F694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59400, &unk_1BE1068F8);
  sub_1BD0DE4F4(&qword_1EBD59408, &qword_1EBD593F8, &unk_1BE1068E8, MEMORY[0x1E697D680]);
  sub_1BD936ED0();
  v17 = v20;
  sub_1BE0510C4();
  (*(v21 + 8))(v5, v3);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1BD929E6C(uint64_t a1)
{
  v23 = sub_1BE04F3D4();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v12 = *v7;
    sub_1BE052C44();
    v13 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v12, v14, v15, v16, v17, v18, v19, v20;
    (*(v2 + 8))(v4, v23);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

void sub_1BD92A0E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - v2;
  sub_1BE051C54();
  v4 = sub_1BE051574();
  v14[3] = v4;
  sub_1BE051C64();
  v5 = MEMORY[0x1E6981CD0];
  v6 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A728, &qword_1BE0E1360);
  v14[1] = v6;
  v14[2] = v5;
  swift_getOpaqueTypeConformance2();
  sub_1BD55AB08();
  sub_1BE0510C4();
  (*(v1 + 8))(v3, v0);
  v4, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD92A2C0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00, &qword_1BE0CC620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1BE04F804();
  v6 = sub_1BE04F824();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = sub_1BE0515B4();
  sub_1BD0DE53C(v5, &qword_1EBD41F00, &qword_1BE0CC620);
  result = sub_1BE04FC94();
  *a2 = v7;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1BD92A3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051464();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD593F8, &unk_1BE1068E8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59400, &unk_1BE1068F8);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_1BD92A45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for MerchantTokenNavigationStack(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD930FE0(a1, v19, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
  sub_1BD93641C(v19, v16, type metadata accessor for UnifiedMerchantTokenData);
  sub_1BD930FE0(v16, a3, type metadata accessor for UnifiedMerchantTokenData);
  v20 = *(a2 + *(v11 + 28));
  v22 = *(v20 + 24);
  v21 = *(v20 + 32);
  sub_1BD930FE0(a2, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenNavigationStack);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = swift_allocObject();
  sub_1BD93641C(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for MerchantTokenNavigationStack);
  v25 = type metadata accessor for MerchantTokenDetailView(0);
  v26 = v25[7];
  v27 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  v28 = v21;
  sub_1BE048964();
  *(a3 + v26) = [v27 init];
  v29 = a3 + v25[8];
  v41 = 0;
  sub_1BE051694();
  v30 = v43;
  *v29 = v42;
  *(v29 + 8) = v30;
  v31 = a3 + v25[9];
  v41 = 0;
  sub_1BE051694();
  v32 = v43;
  *v31 = v42;
  *(v31 + 8) = v32;
  v33 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  (*(*(v33 - 8) + 56))(v9, 1, 3, v33);
  sub_1BD930FE0(v9, v39, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BE051694();
  sub_1BD935C74(v9, type metadata accessor for MerchantTokenDetailView.ImageState);
  v34 = a3 + v25[11];
  v41 = 0;
  sub_1BE051694();
  result = sub_1BD935C74(v16, type metadata accessor for UnifiedMerchantTokenData);
  v36 = v43;
  *v34 = v42;
  *(v34 + 8) = v36;
  *(a3 + v25[5]) = v22;
  *(a3 + v25[12]) = v21;
  v37 = (a3 + v25[6]);
  *v37 = sub_1BD936E70;
  v37[1] = v24;
  return result;
}

void sub_1BD92A890(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for MerchantTokenNavigationStack(0) + 24);
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0, &unk_1BE105F10);
  sub_1BE0516A4();
  v4 = v22;
  if (!v22[2])
  {
    __break(1u);
LABEL_6:
    v4 = sub_1BD500094(v22);
    v5 = v4[2];
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v22[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    v7 = *(type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination(0) - 8);
    sub_1BD935C74(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination);
    v4[2] = v6;
    sub_1BE0516B4();
    v3, v8, v9, v10, v11, v12, v13, v14;
    v2, v15, v16, v17, v18, v19, v20, v21;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BD92A9F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB0, &unk_1BE105F10);
  sub_1BE0516C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42CD8, &qword_1BE0CE8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58FB8, &qword_1BE105F20);
  sub_1BD0DE4F4(&qword_1EBD58FC0, &qword_1EBD42CD8, &qword_1BE0CE8C8, MEMORY[0x1E69E6318]);
  sub_1BD0DE4F4(&qword_1EBD58FC8, &qword_1EBD42CD8, &qword_1BE0CE8C8, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD58FD0, &qword_1EBD42CD8, &qword_1BE0CE8C8, MEMORY[0x1E69E6348]);
  sub_1BD92827C();
  sub_1BD928A24(&qword_1EBD59050, type metadata accessor for MerchantTokenNavigationStack.MerchantTokenNavigationDestination, &unk_1BE106538);
  return sub_1BE04EBF4();
}

id MerchantTokenListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v45 = sub_1BE04F434();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59088, &qword_1BE105F80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v40 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59090, &qword_1BE105F88);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v15 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  sub_1BE048964();
  v17 = sub_1BE048964();
  sub_1BD92AF88(v17, v14, v16, v10);
  KeyPath = swift_getKeyPath();
  v19 = *(v15 + 40);
  v20 = (v10 + *(v8 + 36));
  *v20 = KeyPath;
  v20[1] = v19;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B80D8], v4);
  v21 = v19;
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v5 + 8))(v7, v4);
    v46 = v24;
    v47 = v26;
    v27 = sub_1BD92B120();
    v28 = sub_1BD0DDEBC();
    v29 = MEMORY[0x1E69E6158];
    sub_1BE050B74();
    v26, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE53C(v10, &qword_1EBD59088, &qword_1BE105F80);
    v37 = v43;
    v38 = v45;
    (*(v43 + 104))(v3, *MEMORY[0x1E697C438], v45);
    v46 = v8;
    v47 = v29;
    v48 = v27;
    v49 = v28;
    swift_getOpaqueTypeConformance2();
    v39 = v42;
    sub_1BE050E84();
    (*(v37 + 8))(v3, v38);
    return (*(v41 + 8))(v13, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD92AF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v5 = type metadata accessor for MerchantTokenList(0);
  sub_1BE049EC4();
  v6 = sub_1BE049EA4();
  sub_1BD0E5E8C(0, &qword_1EBD593D8, 0x1E696AEB0);
  v7 = sub_1BE052724();
  [v6 setSortDescriptors_];

  sub_1BE04E4D4();
  v8 = (a4 + v5[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59110, &qword_1BE1061A8);
  sub_1BE051694();
  *v8 = v13;
  v8[1] = v14;
  v9 = v5[8];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30, &qword_1BE0C9228);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v5[9];
  sub_1BE051694();
  *v10 = v13;
  *(v10 + 1) = v14;
  v11 = a4 + v5[10];
  result = sub_1BE051694();
  *v11 = v13;
  *(v11 + 1) = v14;
  return result;
}

unint64_t sub_1BD92B120()
{
  result = qword_1EBD59098;
  if (!qword_1EBD59098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59088, &qword_1BE105F80);
    sub_1BD928A24(&qword_1EBD590A0, type metadata accessor for MerchantTokenList, &unk_1BE1064E8);
    sub_1BD0DE4F4(&qword_1EBD59040, &qword_1EBD59048, &qword_1BE105F68, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59098);
  }

  return result;
}

uint64_t sub_1BD92B28C(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

void sub_1BD92B37C(uint64_t a1)
{
  sub_1BD92B628(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MerchantTokenListViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1BD23BC4C(319, &qword_1EBD590D0, &qword_1EBD42CD8, &qword_1BE0CE8C8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD92B4A8(uint64_t a1)
{
  type metadata accessor for MerchantTokenListViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD92B628(319, &qword_1EBD59100, MEMORY[0x1E6967CC0], MEMORY[0x1E697BF10]);
      if (v3 <= 0x3F)
      {
        sub_1BD23BC4C(319, &qword_1EBD59108, &qword_1EBD59110, &qword_1BE1061A8);
        if (v4 <= 0x3F)
        {
          sub_1BD92B628(319, &qword_1EBD40C58, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1BD683EFC(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1BD92B628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD92B68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59118, &unk_1BE1061B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BD92B704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59118, &unk_1BE1061B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1BD92B78C(uint64_t a1)
{
  sub_1BD92B844();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for UnifiedMerchantTokenData(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1BD92B844()
{
  if (!qword_1EBD59130)
  {
    v0 = type metadata accessor for UnifiedMerchantTokenData(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD59130);
    }
  }
}

void sub_1BD92B8F4(uint64_t a1)
{
  type metadata accessor for UnifiedMerchantTokenData(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MerchantTokenCellPresentationModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MerchantTokenIconProvider();
      if (v3 <= 0x3F)
      {
        sub_1BD92B628(319, &qword_1EBD59150, type metadata accessor for MerchantTokenCell.ImageState, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1BD92BC24(uint64_t a1)
{
  sub_1BD92B628(319, &qword_1EBD59190, type metadata accessor for MerchantTokenListViewModel.SectionCard, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD92B628(319, &qword_1EBD59198, type metadata accessor for UnifiedMerchantTokenData, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD92BD50(uint64_t a1)
{
  sub_1BE04AA64();
  if (v1 <= 0x3F)
  {
    sub_1BD683EFC(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_75Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_76Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1BD92BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1BD92C08C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v171 = a1;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37300, &unk_1BE0B1320);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v177 = &v166 - v3;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591D0, &qword_1BE1065A0);
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v180 = &v166 - v4;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591D8, &qword_1BE1065A8);
  MEMORY[0x1EEE9AC00](v185);
  v181 = &v166 - v5;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591E0, &qword_1BE1065B0);
  v176 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v7 = &v166 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591E8, &qword_1BE1065B8);
  v172 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v166 - v9;
  v11 = type metadata accessor for MerchantTokenList(0);
  v12 = *(v11 + 28);
  v13 = v11;
  v178 = v11;
  v179 = v1;
  v14 = (v1 + v12);
  v16 = *v14;
  v15 = v14[1];
  v193 = v16;
  v194 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0, &unk_1BE1065C0);
  v17 = sub_1BE0516A4();
  v18 = v191;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v174 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v166 - v174;
  v184 = type metadata accessor for MerchantTokenList;
  sub_1BD930FE0(v2, &v166 - v174, type metadata accessor for MerchantTokenList);
  v183 = *(v19 + 80);
  v22 = (v183 + 16) & ~v183;
  v173 = v22;
  v23 = swift_allocObject();
  v182 = type metadata accessor for MerchantTokenList;
  sub_1BD93641C(v21, v23 + v22, type metadata accessor for MerchantTokenList);
  v193 = v18;
  v186 = &v193;
  v187 = sub_1BD931048;
  v188 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F8, &qword_1BE1065D0);
  sub_1BD93557C();
  sub_1BE0504E4();
  v18, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  v38 = sub_1BE04FB94();
  v39 = *(v38 - 1);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FB84();
  v42 = sub_1BD0DE4F4(&qword_1EBD59228, &qword_1EBD591E8, &qword_1BE1065B8, MEMORY[0x1E697CD20]);
  v43 = MEMORY[0x1E697C750];
  sub_1BE051144();
  (*(v39 + 8))(v41, v38);
  (*(v172 + 8))(v10, v8);
  v44 = sub_1BE0501E4();
  v45 = sub_1BE04FC54();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v166 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC24();
  v193 = v8;
  v194 = v38;
  v195 = v42;
  v196 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v181;
  v51 = v175;
  MEMORY[0x1BFB3DB30](v44, 0, 0, v48, v175, OpaqueTypeConformance2);
  (*(v46 + 8))(v48, v45);
  (*(v176 + 8))(v7, v51);
  v52 = sub_1BE051CD4();
  v54 = v53;
  v55 = &v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59230, &qword_1BE1065E8) + 36)];
  v56 = v179;
  sub_1BD92EB18(v179, v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59238, &qword_1BE1065F0);
  v58 = (v55 + *(v57 + 36));
  *v58 = v52;
  v58[1] = v54;
  MEMORY[0x1EEE9AC00](v57);
  v59 = v174;
  sub_1BD930FE0(v56, &v166 - v174, v184);
  v60 = v173;
  v61 = swift_allocObject();
  sub_1BD93641C(&v166 - v59, v61 + v60, v182);
  v62 = &v50[*(v185 + 9)];
  *v62 = sub_1BD93586C;
  v62[1] = v61;
  v62[2] = 0;
  v62[3] = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59240, &qword_1BE1065F8);
  MEMORY[0x1EEE9AC00](v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8, &qword_1BE106188);
  sub_1BE04E4E4();
  sub_1BD0DE4F4(&qword_1EBD59248, &qword_1EBD59240, &qword_1BE1065F8, MEMORY[0x1E697C030]);
  v64 = sub_1BE0526B4();
  v65 = sub_1BD921E80(v64);
  v64, v66, v67, v68, v69, v70, v71, v72;
  v193 = v65;
  MEMORY[0x1EEE9AC00](v73);
  sub_1BD930FE0(v56, &v166 - v59, v184);
  v74 = swift_allocObject();
  sub_1BD93641C(&v166 - v59, v74 + v60, v182);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59110, &qword_1BE1061A8);
  v76 = sub_1BD935918();
  v77 = sub_1BD935B28();
  v78 = v181;
  sub_1BE051064();
  v65, v79, v80, v81, v82, v83, v84, v85;
  v74, v86, v87, v88, v89, v90, v91, v92;
  sub_1BD0DE53C(v78, &qword_1EBD591D8, &qword_1BE1065A8);
  v93 = sub_1BE04BD74();
  v94 = *(v93 - 8);
  v95 = MEMORY[0x1EEE9AC00](v93);
  v97 = &v166 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v94 + 104))(v97, *MEMORY[0x1E69B8080], v93, v95);
  result = PKPassKitBundle();
  if (result)
  {
    v99 = result;
    v100 = sub_1BE04B6F4();
    v102 = v101;

    (*(v94 + 8))(v97, v93);
    v191 = v100;
    v192 = v102;
    v103 = (v179 + *(v178 + 40));
    v104 = *v103;
    v105 = *(v103 + 1);
    v189 = v104;
    v190 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v106 = v193;
    v107 = v194;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    v193 = v185;
    v194 = v75;
    v195 = v76;
    v196 = v77;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v108 = v168;
    v109 = v180;
    sub_1BE050F34();
    v102, v110, v111, v112, v113, v114, v115, v116;
    v107, v117, v118, v119, v120, v121, v122, v123;
    v106, v124, v125, v126, v127, v128, v129, v130;
    (*(v167 + 8))(v109, v108);
    sub_1BE0528A4();
    v131 = sub_1BE052894();
    v132 = swift_allocObject();
    v133 = MEMORY[0x1E69E85E0];
    *(v132 + 16) = v131;
    *(v132 + 24) = v133;
    v134 = sub_1BE0528D4();
    v135 = *(v134 - 8);
    v136 = *(v135 + 64);
    MEMORY[0x1EEE9AC00](v134);
    v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF0;
    v138 = &v166 - v137;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v183 = sub_1BE04EAA4();
      v184 = &v166;
      v182 = *(v183 - 8);
      MEMORY[0x1EEE9AC00](v183);
      v185 = &v166;
      v140 = &v166 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
      v193 = 0;
      v194 = 0xE000000000000000;
      sub_1BE053834();
      v194, v141, v142, v143, v144, v145, v146, v147;
      v193 = 0xD000000000000032;
      v194 = 0x80000001BE1408D0;
      v191 = 529;
      v148 = sub_1BE053B24();
      v150 = v149;
      MEMORY[0x1BFB3F610](v148);
      v150, v151, v152, v153, v154, v155, v156, v157;
      v159 = MEMORY[0x1EEE9AC00](v158);
      (*(v135 + 16))(&v166 - v137, &v166 - v137, v134, v159);
      sub_1BE04EA94();
      (*(v135 + 8))(&v166 - v137, v134);
      v160 = v171;
      (*(v169 + 32))(v171, v177, v170);
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37308, &unk_1BE106610);
      return (*(v182 + 4))(v160 + *(v161 + 36), v140, v183);
    }

    else
    {
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37310, &unk_1BE0B1330);
      v163 = v171;
      v164 = (v171 + *(v162 + 36));
      v165 = sub_1BE04E7B4();
      (*(v135 + 32))(&v164[*(v165 + 20)], v138, v134);
      *v164 = &unk_1BE106608;
      *(v164 + 1) = v132;
      return (*(v169 + 32))(v163, v177, v170);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD92CFC8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59220, &qword_1BE1065E0);
  sub_1BD0DE4F4(&qword_1EBD59218, &qword_1EBD59220, &qword_1BE1065E0, MEMORY[0x1E6981F48]);
  return sub_1BE051A44();
}

id sub_1BD92D06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v122 = a1;
  v120 = a3;
  v3 = type metadata accessor for MerchantTokenList(0);
  v112 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = v4;
  v115 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592A0, &qword_1BE106678);
  v118 = *(v5 - 8);
  v119 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = &v109 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592A8, &qword_1BE106680);
  MEMORY[0x1EEE9AC00](v110);
  v10 = &v109 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592B0, &qword_1BE106688);
  MEMORY[0x1EEE9AC00](v109);
  v12 = &v109 - v11;
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178, &qword_1BE106238);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v109 - v18;
  v20 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592B8, &qword_1BE106690);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v111 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v109 - v27;
  sub_1BD0DE19C(v122, v19, &qword_1EBD59178, &qword_1BE106238);
  v29 = (*(v21 + 48))(v19, 1, v20);
  v121 = v28;
  if (v29 != 1)
  {
    sub_1BD93641C(v19, v23, type metadata accessor for MerchantTokenListViewModel.SectionCard);
    *v10 = sub_1BE04F504();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59320, &qword_1BE1066C8);
    sub_1BD92D9D8(v23, &v10[*(v96 + 44)]);
    sub_1BD0DE19C(v10, v12, &qword_1EBD592A8, &qword_1BE106680);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD592C0, &qword_1EBD592A8, &qword_1BE106680, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v10, &qword_1EBD592A8, &qword_1BE106680);
    sub_1BD935C74(v23, type metadata accessor for MerchantTokenListViewModel.SectionCard);
    goto LABEL_5;
  }

  sub_1BD0DE53C(v19, &qword_1EBD59178, &qword_1BE106238);
  (*(v14 + 104))(v16, *MEMORY[0x1E69B8080], v13);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v34 = v33;

    (*(v14 + 8))(v16, v13);
    v123 = v32;
    v124 = v34;
    sub_1BD0DDEBC();
    v35 = sub_1BE0506C4();
    v37 = v36;
    LOBYTE(v34) = v38;
    v40 = v39;
    v41 = sub_1BE050324();
    sub_1BE0503A4();
    v42 = sub_1BE0503F4();
    v41, v43, v44, v45, v46, v47, v48, v49;
    v50 = sub_1BE0505F4();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v42, v51, v53, v55, v57, v58, v59, v60;
    sub_1BD0DDF10(v35, v37, (v34 & 1), v61, v62, v63, v64, v65);
    v40, v66, v67, v68, v69, v70, v71, v72;
    v73 = sub_1BE051464();
    v74 = sub_1BE050564();
    v76 = v75;
    LOBYTE(v40) = v77;
    v79 = v78;
    v73, v75, v77, v78, v80, v81, v82, v83;
    sub_1BD0DDF10(v50, v52, (v54 & 1), v84, v85, v86, v87, v88);
    v56, v89, v90, v91, v92, v93, v94, v95;
    *v12 = v74;
    *(v12 + 1) = v76;
    v12[16] = v40 & 1;
    *(v12 + 3) = v79;
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD592C0, &qword_1EBD592A8, &qword_1BE106680, MEMORY[0x1E69817F8]);
    v28 = v121;
    sub_1BE04F9A4();
LABEL_5:
    v123 = *(v122 + *(type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0) + 20));
    v97 = v115;
    sub_1BD930FE0(v114, v115, type metadata accessor for MerchantTokenList);
    v98 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v99 = swift_allocObject();
    sub_1BD93641C(v97, v99 + v98, type metadata accessor for MerchantTokenList);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592C8, &qword_1BE106698);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592D0, &qword_1BE1066A0);
    sub_1BD0DE4F4(&qword_1EBD592D8, &qword_1EBD592C8, &qword_1BE106698, MEMORY[0x1E69E6338]);
    sub_1BD9365AC();
    sub_1BD928A24(&qword_1EBD59310, type metadata accessor for UnifiedMerchantTokenData, &unk_1BE0D3444);
    v100 = v116;
    sub_1BE0519D4();
    v101 = v111;
    sub_1BD0DE19C(v28, v111, &qword_1EBD592B8, &qword_1BE106690);
    v103 = v117;
    v102 = v118;
    v104 = *(v118 + 16);
    v105 = v119;
    v104(v117, v100, v119);
    v106 = v120;
    sub_1BD0DE19C(v101, v120, &qword_1EBD592B8, &qword_1BE106690);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59318, &qword_1BE1066C0);
    v104((v106 + *(v107 + 48)), v103, v105);
    v108 = *(v102 + 8);
    v108(v100, v105);
    sub_1BD0DE53C(v121, &qword_1EBD592B8, &qword_1BE106690);
    v108(v103, v105);
    return sub_1BD0DE53C(v101, &qword_1EBD592B8, &qword_1BE106690);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD92D9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a1;
  v188 = a2;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F100, &unk_1BE0ED060);
  MEMORY[0x1EEE9AC00](v184);
  v189 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v187 = &v179 - v5;
  v6 = sub_1BE04BD74();
  v182 = *(v6 - 8);
  v183 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v180 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F228, &qword_1BE0ED1F8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v186 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v179 - v12;
  v190 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v14 = (a1 + v190[7]);
  v15 = v14[1];
  *&v191 = *v14;
  *(&v191 + 1) = v15;
  v16 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v179 = v16;
  v17 = sub_1BE0506C4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1BE050324();
  sub_1BE0503A4();
  v25 = sub_1BE0503F4();
  v24, v26, v27, v28, v29, v30, v31, v32;
  v33 = sub_1BE0505F4();
  v35 = v34;
  v37 = v36;
  v185 = v38;
  v25, v34, v36, v38, v39, v40, v41, v42;
  sub_1BD0DDF10(v17, v19, (v21 & 1), v43, v44, v45, v46, v47);
  v23, v48, v49, v50, v51, v52, v53, v54;
  v55 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30) + 36)];
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v57 = sub_1BE0505C4();
  (*(*(v57 - 8) + 56))(v55 + v56, 1, 1, v57);
  *v55 = swift_getKeyPath();
  *v13 = v33;
  *(v13 + 1) = v35;
  v13[16] = v37 & 1;
  *(v13 + 3) = v185;
  v58 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v60 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F220, &qword_1BE0ED1C0) + 36)];
  *v60 = KeyPath;
  v60[1] = v58;
  v61 = swift_getKeyPath();
  v62 = *(v9 + 44);
  v185 = v13;
  v63 = &v13[v62];
  v64 = v181;
  *v63 = v61;
  *(v63 + 1) = 1;
  v63[16] = 0;
  if (*(v64 + v190[6] + 8))
  {
    v65 = sub_1BE052404();
  }

  else
  {
    v65 = 0;
  }

  v66 = PKMaskedPaymentPAN();

  if (v66)
  {
    v67 = sub_1BE052434();
    v69 = v68;

    v71 = v182;
    v70 = v183;
    v72 = v180;
    (*(v182 + 104))(v180, *MEMORY[0x1E69B8080], v183);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1BE0B69E0;
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = sub_1BD110550();
    *(v73 + 32) = v67;
    *(v73 + 40) = v69;
    v74 = sub_1BE04B714();
    v76 = v75;
    v73, v75, v77, v78, v79, v80, v81, v82;
    (*(v71 + 8))(v72, v70);
    *&v191 = v74;
    *(&v191 + 1) = v76;
    v83 = sub_1BE0506C4();
    v85 = v84;
    LOBYTE(v76) = v86;
    v88 = v87;
    v89 = sub_1BE050464();
    v90 = sub_1BE050334();
    v89, v91, v92, v93, v94, v95, v96, v97;
    v98 = sub_1BE0505F4();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v90, v99, v101, v103, v105, v106, v107, v108;
    sub_1BD0DDF10(v83, v85, (v76 & 1), v109, v110, v111, v112, v113);
    v88, v114, v115, v116, v117, v118, v119, v120;
    v121 = sub_1BE051464();
    v122 = sub_1BE050564();
    v124 = v123;
    LOBYTE(v85) = v125;
    v127 = v126;
    v121, v123, v125, v126, v128, v129, v130, v131;
    sub_1BD0DDF10(v98, v100, (v102 & 1), v132, v133, v134, v135, v136);
    v104, v137, v138, v139, v140, v141, v142, v143;
    v182 = v85 & 1;
    v183 = v122;
    v144 = v124;
    sub_1BD0D7F18(v122, v124, v85 & 1);
    v145 = v127;
    sub_1BE048C84();
  }

  else
  {
    v182 = 0;
    v183 = 0;
    v144 = 0;
    v145 = 0;
  }

  v146 = v190[5];
  v147 = sub_1BE04AA64();
  v148 = v187;
  (*(*(v147 - 8) + 16))(v187, v64 + v146, v147);
  type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  swift_storeEnumTagMultiPayload();
  v149 = v148 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F0, &unk_1BE0ED050) + 36);
  *v149 = 0x3FF89DB22D0E5604;
  *(v149 + 8) = 256;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v150 = (v148 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F8, &unk_1BE106770) + 36));
  v151 = v192;
  *v150 = v191;
  v150[1] = v151;
  v150[2] = v193;
  v152 = (v148 + *(v184 + 36));
  v153 = *(sub_1BE04EDE4() + 20);
  v154 = *MEMORY[0x1E697F468];
  v155 = sub_1BE04F684();
  (*(*(v155 - 8) + 104))(&v152[v153], v154, v155);
  __asm { FMOV            V0.2D, #3.0 }

  *v152 = _Q0;
  *&v152[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
  v162 = v185;
  v161 = v186;
  sub_1BD0DE19C(v185, v186, &qword_1EBD4F228, &qword_1BE0ED1F8);
  v163 = v189;
  sub_1BD0DE19C(v148, v189, &qword_1EBD4F100, &unk_1BE0ED060);
  v164 = v188;
  sub_1BD0DE19C(v161, v188, &qword_1EBD4F228, &qword_1BE0ED1F8);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59328, &unk_1BE106780);
  v166 = (v164 + v165[12]);
  v167 = v182;
  v168 = v183;
  *v166 = v183;
  v166[1] = v144;
  v166[2] = v167;
  v166[3] = v145;
  v169 = v164 + v165[16];
  *v169 = 0;
  *(v169 + 8) = 1;
  sub_1BD0DE19C(v163, v164 + v165[20], &qword_1EBD4F100, &unk_1BE0ED060);
  sub_1BD1969AC(v168, v144, v167, v145);
  sub_1BD1969F0(v168, v144, v167, v145, v170, v171, v172, v173);
  sub_1BD0DE53C(v148, &qword_1EBD4F100, &unk_1BE0ED060);
  sub_1BD0DE53C(v162, &qword_1EBD4F228, &qword_1BE0ED1F8);
  sub_1BD0DE53C(v163, &qword_1EBD4F100, &unk_1BE0ED060);
  sub_1BD1969F0(v168, v144, v167, v145, v174, v175, v176, v177);
  return sub_1BD0DE53C(v161, &qword_1EBD4F228, &qword_1BE0ED1F8);
}

uint64_t sub_1BD92E22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = sub_1BE04FF64();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592F8, &qword_1BE1066B8);
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v46 - v9;
  v10 = type metadata accessor for UnifiedMerchantTokenData(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MerchantTokenList(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592F0, &qword_1BE1066B0);
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD592E8, &qword_1BE1066A8);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59330, &qword_1BE106790);
  v22 = *(v21 - 8);
  v54 = v21;
  v55 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v46 - v23;
  sub_1BD930FE0(a2, v15, type metadata accessor for MerchantTokenList);
  sub_1BD930FE0(a1, v12, type metadata accessor for UnifiedMerchantTokenData);
  v24 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v25 = (v14 + *(v48 + 80) + v24) & ~*(v48 + 80);
  v26 = swift_allocObject();
  sub_1BD93641C(v15, v26 + v24, type metadata accessor for MerchantTokenList);
  sub_1BD93641C(v12, v26 + v25, type metadata accessor for UnifiedMerchantTokenData);
  v62 = a1;
  v63 = a2;
  type metadata accessor for MerchantTokenCell(0);
  sub_1BD928A24(&qword_1EBD59338, type metadata accessor for MerchantTokenCell, &unk_1BE106470);
  sub_1BE051704();
  v27 = v52;
  sub_1BE04FA14();
  v28 = sub_1BD0DE4F4(&qword_1EBD59300, &qword_1EBD592F0, &qword_1BE1066B0, MEMORY[0x1E697D680]);
  v29 = sub_1BD0DE4F4(&qword_1EBD59308, &qword_1EBD592F8, &qword_1BE1066B8, MEMORY[0x1E697C9F0]);
  v30 = v56;
  sub_1BE050894();
  (*(v57 + 8))(v27, v30);
  (*(v50 + 8))(v18, v16);
  v31 = v58;
  sub_1BE04FF44();
  v64 = v16;
  v65 = v30;
  v66 = v28;
  v67 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v49;
  v34 = v51;
  sub_1BE050D14();
  (*(v59 + 8))(v31, v60);
  (*(v53 + 8))(v20, v34);
  sub_1BE052434();
  v36 = v35;
  v64 = v34;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v54;
  sub_1BE050DE4();
  v36, v38, v39, v40, v41, v42, v43, v44;
  return (*(v55 + 8))(v33, v37);
}

uint64_t sub_1BD92E90C(uint64_t (**a1)(void), uint64_t a2)
{
  if (*(*a1 + 4))
  {
    v4 = MEMORY[0x1E69BB6F8];
  }

  else
  {
    v4 = MEMORY[0x1E69BB718];
  }

  v5 = *v4;
  sub_1BD6BB340(v5);

  return a1[1](a2);
}

uint64_t sub_1BD92E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1BD930FE0(a1, a3, type metadata accessor for UnifiedMerchantTokenData);
  v12 = type metadata accessor for MerchantTokenCell(0);
  sub_1BD930FE0(a1, a3 + *(v12 + 20), type metadata accessor for UnifiedMerchantTokenData);
  *(a3 + *(v12 + 24)) = *(*a2 + 24);
  v13 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  (*(*(v13 - 8) + 56))(v11, 1, 3, v13);
  sub_1BD930FE0(v11, v8, type metadata accessor for MerchantTokenCell.ImageState);
  sub_1BE048964();
  sub_1BE051694();
  return sub_1BD935C74(v11, type metadata accessor for MerchantTokenCell.ImageState);
}

uint64_t sub_1BD92EB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59288, &unk_1BE106668);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = (a1 + *(type metadata accessor for MerchantTokenList(0) + 28));
  v10 = *v8;
  v9 = v8[1];
  v24 = v10;
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0, &unk_1BE1065C0);
  sub_1BE0516A4();
  v11 = v23[2];
  v23, v12, v13, v14, v15, v16, v17, v18;
  if (v11)
  {
    v20 = 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248, &qword_1BE111830);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BD1BCD34();
    sub_1BE04FC64();
    (*(v5 + 32))(a2, v7, v4);
    v20 = 0;
  }

  return (*(v5 + 56))(a2, v20, 1, v4);
}

id sub_1BD92ED7C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80D8], v0, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v10[0] = v7;
    v10[1] = v9;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD92EEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD92F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v66 = a2;
  v2 = type metadata accessor for MerchantTokenList(0);
  v57 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = v3;
  v60 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - v5;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_1BE04AA64();
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v63 = &v54 - v19;
  v20 = *MEMORY[0x1E69B80D8];
  v21 = *(v7 + 104);
  v67 = v6;
  v21(v11, v20, v6, v18);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    sub_1BE04B6F4();
    v25 = v24;

    v26 = *(v7 + 8);
    v26(v11, v67);
    sub_1BE04AA54();
    v25, v27, v28, v29, v30, v31, v32, v33;
    if ((*(v68 + 48))(v14, 1, v69) == 1)
    {
      sub_1BD0DE53C(v14, &unk_1EBD3CF70, &qword_1BE0BA000);
      v34 = 1;
      v36 = v65;
      v35 = v66;
      v37 = v64;
      return (*(v37 + 56))(v35, v34, 1, v36);
    }

    v38 = v63;
    v55 = *(v68 + 32);
    v55(v63, v14, v69);
    v39 = v62;
    (v21)(v62, v20, v67);
    result = PKPassKitBundle();
    if (result)
    {
      v40 = result;
      v41 = v39;
      v42 = sub_1BE04B6F4();
      v44 = v43;

      v26(v41, v67);
      v70 = v42;
      v71 = v44;
      v45 = v60;
      sub_1BD930FE0(v58, v60, type metadata accessor for MerchantTokenList);
      v47 = v68;
      v46 = v69;
      v48 = v56;
      (*(v68 + 16))(v56, v38, v69);
      v49 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v50 = (v59 + *(v47 + 80) + v49) & ~*(v47 + 80);
      v51 = swift_allocObject();
      sub_1BD93641C(v45, v51 + v49, type metadata accessor for MerchantTokenList);
      v55((v51 + v50), v48, v46);
      sub_1BD0DDEBC();
      v52 = v61;
      sub_1BE051744();
      (*(v47 + 8))(v38, v46);
      v37 = v64;
      v35 = v66;
      v53 = v52;
      v36 = v65;
      (*(v64 + 32))(v66, v53, v65);
      v34 = 0;
      return (*(v37 + 56))(v35, v34, 1, v36);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD92F628(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v24[0] = sub_1BE04F3D4();
  v3 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30, &qword_1BE0C9228);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v24 - v7);
  v9 = sub_1BE04E784();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MerchantTokenList(0);
  sub_1BD0DE19C(a1 + *(v13 + 32), v8, &qword_1EBD40C30, &qword_1BE0C9228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v14 = *v8;
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v14, v16, v17, v18, v19, v20, v21, v22;
    (*(v3 + 8))(v5, v24[0]);
  }

  sub_1BE04E734();
  return (*(v10 + 8))(v12, v9);
}

void sub_1BD92F8B8(uint64_t a1)
{
  v2 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for MerchantTokenList(0) + 28));
  v8 = *v6;
  v7 = v6[1];
  v89 = v8;
  v90 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0, &unk_1BE1065C0);
  sub_1BE0516A4();
  v16 = v88[2];
  if (!v16)
  {
    v88, v9, v10, v11, v12, v13, v14, v15;
    v20 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v59 = v20[2];
    v20, v52, v53, v54, v55, v56, v57, v58;
    if (v59 >= 5)
    {
      v62 = 0xE200000000000000;
      v60 = 11061;
    }

    else
    {
      v89 = v59;
      v60 = sub_1BE053B24();
      v62 = v61;
    }

    if (*(*a1 + 32))
    {
      v63 = MEMORY[0x1E69BB6F8];
    }

    else
    {
      v63 = MEMORY[0x1E69BB718];
    }

    v64 = *v63;
    v65 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B98D0;
    v67 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v68 = sub_1BE052434();
    v69 = MEMORY[0x1E69BABE8];
    *(inited + 40) = v68;
    *(inited + 48) = v70;
    v71 = *v69;
    *(inited + 56) = *v69;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v72;
    v73 = *MEMORY[0x1E69BB030];
    *(inited + 80) = *MEMORY[0x1E69BB030];
    *(inited + 88) = v60;
    *(inited + 96) = v62;
    v74 = v67;
    v75 = v71;
    v76 = v73;
    v77 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD928A24(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v78 = sub_1BE052224();
    v77, v79, v80, v81, v82, v83, v84, v85;
    [v65 subject:v64 sendEvent:v78];

    return;
  }

  v86 = v88;
  v87 = a1;
  v17 = *(v2 + 20);
  v18 = v88 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v19 = *(v3 + 72);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1BD930FE0(v18, v5, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v28 = *&v5[v17];
    sub_1BE048C84();
    sub_1BD935C74(v5, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v29 = v28[2];
    v30 = v20[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v31 <= v20[3] >> 1)
    {
      if (v28[2])
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v40 = v30 + v29;
      }

      else
      {
        v40 = v30;
      }

      v20 = sub_1BD1D9A28(isUniquelyReferenced_nonNull_native, v40, 1, v20);
      if (v28[2])
      {
LABEL_14:
        v41 = (v20[3] >> 1) - v20[2];
        type metadata accessor for UnifiedMerchantTokenData(0);
        if (v41 < v29)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();
        v28, v42, v43, v44, v45, v46, v47, v48;
        if (v29)
        {
          v49 = v20[2];
          v50 = __OFADD__(v49, v29);
          v51 = v49 + v29;
          if (v50)
          {
            goto LABEL_30;
          }

          v20[2] = v51;
        }

        goto LABEL_4;
      }
    }

    v28, v33, v34, v35, v36, v37, v38, v39;
    if (v29)
    {
      goto LABEL_28;
    }

LABEL_4:
    v18 += v19;
    if (!--v16)
    {
      v86, v21, v22, v23, v24, v25, v26, v27;
      a1 = v87;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1BD92FD20(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = type metadata accessor for UnifiedMerchantTokenData(0);
  v189 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v187 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v171 = &v165 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50190, &qword_1BE106630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v165 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59280, &qword_1BE106638);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v174 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v185 = &v165 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v165 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v175 = &v165 - v23;
  v24 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v183 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v180 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v165 - v27;
  v29 = *a2;
  v30 = type metadata accessor for MerchantTokenList(0);
  v31 = (a3 + *(v30 + 28));
  v33 = *v31;
  v32 = v31[1];
  v191 = v33;
  v192 = v32;
  v190 = v29;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD591F0, &unk_1BE1065C0);
  sub_1BE0516B4();
  v170 = v30;
  v34 = a3 + *(v30 + 36);
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v191) = v35;
  v182 = v36;
  v192 = v36;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v181 = v24;
  v184 = v29;
  if ((v190 & 1) == 0)
  {
    v186 = v21;
    v178 = v14;
    v179 = v11;
    v177 = a3;
    v44 = *(v29 + 16);
    LODWORD(v173) = v35;
    if (v44)
    {
      v188 = *(v24 + 20);
      v45 = v29 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v46 = *(v183 + 72);
      v47 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v48 = v5;
        sub_1BD930FE0(v45, v28, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        v49 = *(v188 + v28);
        sub_1BE048C84();
        sub_1BD935C74(v28, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        v50 = v49[2];
        v51 = v47[2];
        v52 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v52 > v47[3] >> 1)
        {
          if (v51 <= v52)
          {
            v61 = v51 + v50;
          }

          else
          {
            v61 = v51;
          }

          v47 = sub_1BD1D9A28(isUniquelyReferenced_nonNull_native, v61, 1, v47);
        }

        v5 = v48;
        if (v49[2])
        {
          if ((v47[3] >> 1) - v47[2] < v50)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();
          v49, v62, v63, v64, v65, v66, v67, v68;
          if (v50)
          {
            v69 = v47[2];
            v70 = __OFADD__(v69, v50);
            v71 = v69 + v50;
            if (v70)
            {
              goto LABEL_57;
            }

            v47[2] = v71;
          }
        }

        else
        {
          v49, v54, v55, v56, v57, v58, v59, v60;
          if (v50)
          {
            goto LABEL_54;
          }
        }

        v45 += v46;
        if (!--v44)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v47 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v72 = v47[2];
    v47, v37, v38, v39, v40, v41, v42, v43;
    a3 = v177;
    if (*(*v177 + 32))
    {
      v73 = MEMORY[0x1E69BB6F8];
    }

    else
    {
      v73 = MEMORY[0x1E69BB718];
    }

    v74 = *v73;
    sub_1BD6BB4C0(v74, v72);

    LOBYTE(v191) = v173;
    v192 = v182;
    LOBYTE(v190) = 1;
    sub_1BE0516B4();
    v14 = v178;
    v11 = v179;
    v21 = v186;
    v29 = v184;
  }

  if (!*(v29 + 16))
  {
    return;
  }

  v75 = *a3;
  KeyPath = swift_getKeyPath();
  v77 = OBJC_IVAR____TtC9PassKitUI26MerchantTokenListViewModel___observationRegistrar;
  v191 = v75;
  v78 = sub_1BD928A24(&qword_1EBD42BB0, type metadata accessor for MerchantTokenListViewModel, &unk_1BE106578);
  sub_1BE04B594();
  KeyPath, v79, v80, v81, v82, v83, v84, v85;
  v86 = *(v75 + 72);
  if (!v86)
  {
    return;
  }

  v169 = v78;
  v167 = v77;
  v177 = a3;
  v186 = v21;
  v168 = v75;
  v87 = (v75 + 64);
  v88 = *(v75 + 64);
  v166 = v87;
  v89 = (v189 + 56);
  v188 = (v189 + 48);
  v173 = (v183 + 56);
  v172 = (v183 + 48);
  swift_bridgeObjectRetain_n();
  sub_1BE048C84();
  v90 = 0;
  v182 = 0;
  v178 = v14;
  v179 = v11;
  while (1)
  {
    if (!v90)
    {
      goto LABEL_36;
    }

    v91 = v90[2];
    if (v91)
    {
      break;
    }

LABEL_35:
    v106 = v185;
    (*v89)(v185, 1, 1, v5);
    sub_1BD0DE53C(v106, &qword_1EBD59280, &qword_1BE106638);
    v14 = v178;
    v11 = v179;
LABEL_36:
    v107 = *(v184 + 16);
    if (v182 == v107)
    {
      v108 = 1;
    }

    else
    {
      if (v182 >= v107)
      {
        goto LABEL_58;
      }

      v109 = v182;
      sub_1BD930FE0(v184 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v182, v14, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v108 = 0;
      v182 = v109 + 1;
    }

    v110 = v181;
    (*v173)(v14, v108, 1, v181);
    sub_1BD0DE204(v14, v11, &qword_1EBD50190, &qword_1BE106630);
    if ((*v172)(v11, 1, v110) == 1)
    {
      swift_bridgeObjectRelease_n();
      v86, v158, v159, v160, v161, v162, v163, v164;
      v95 = *v89;
      (*v89)(v186, 1, 1, v5);
LABEL_44:
      v90, v135, v136, v137, v138, v139, v140, v141;
      v127 = v175;
      v95(v175, 1, 1, v5);
LABEL_45:
      v142 = v174;
      v143 = v177;
      v144 = v168;
      sub_1BD0DE19C(v127, v174, &qword_1EBD59280, &qword_1BE106638);
      if ((*v188)(v142, 1, v5) == 1)
      {
        sub_1BD0DE53C(v142, &qword_1EBD59280, &qword_1BE106638);
        v145 = v143 + *(v170 + 40);
        v146 = *v145;
        v147 = *(v145 + 1);
        LOBYTE(v191) = v146;
        v192 = v147;
        LOBYTE(v190) = 1;
        sub_1BE0516B4();
        if (*(v144 + 72))
        {
          goto LABEL_47;
        }

LABEL_49:
        v157 = v166;
        *v166 = 0;
        v157[1] = 0;
      }

      else
      {
        v156 = v171;
        sub_1BD93641C(v142, v171, type metadata accessor for UnifiedMerchantTokenData);
        (v143[1])(v156);
        sub_1BD935C74(v156, type metadata accessor for UnifiedMerchantTokenData);
        if (!*(v144 + 72))
        {
          goto LABEL_49;
        }

LABEL_47:
        v148 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v148);
        *(&v165 - 3) = 0;
        *(&v165 - 2) = 0;
        *(&v165 - 4) = v144;
        v191 = v144;
        sub_1BE04B584();
        v127 = v175;
        v148, v149, v150, v151, v152, v153, v154, v155;
      }

      sub_1BD0DE53C(v127, &qword_1EBD59280, &qword_1BE106638);
      return;
    }

    v111 = v180;
    sub_1BD93641C(v11, v180, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v112 = *(v111 + *(v110 + 20));
    sub_1BE048C84();
    sub_1BD935C74(v111, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v90, v113, v114, v115, v116, v117, v118, v119;
    v90 = v112;
  }

  v92 = 0;
  while (v92 < v91)
  {
    v93 = v189;
    v94 = v185;
    sub_1BD930FE0(v90 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v189 + 72) * v92, v185, type metadata accessor for UnifiedMerchantTokenData);
    v95 = *(v93 + 56);
    v95(v94, 0, 1, v5);
    v96 = v94;
    v97 = v186;
    sub_1BD0DE204(v96, v186, &qword_1EBD59280, &qword_1BE106638);
    if ((*(v93 + 48))(v97, 1, v5) == 1)
    {
      swift_bridgeObjectRelease_n();
      v86, v128, v129, v130, v131, v132, v133, v134;
      goto LABEL_44;
    }

    v98 = v187;
    sub_1BD93641C(v97, v187, type metadata accessor for UnifiedMerchantTokenData);
    v105 = *(v98 + 24);
    if (*(v98 + 16) == v88 && v86 == v105 || (sub_1BE053B84() & 1) != 0)
    {
      v86, v105, v99, v100, v101, v102, v103, v104;
      v90, v120, v121, v122, v123, v124, v125, v126;
      swift_bridgeObjectRelease_n();
      v127 = v175;
      sub_1BD93641C(v187, v175, type metadata accessor for UnifiedMerchantTokenData);
      v95(v127, 0, 1, v5);
      goto LABEL_45;
    }

    ++v92;
    sub_1BD935C74(v187, type metadata accessor for UnifiedMerchantTokenData);
    v91 = v90[2];
    if (v92 == v91)
    {
      goto LABEL_35;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

id sub_1BD9308AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8080], v3, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v4 + 8))(v7, v3);
    v14[0] = v10;
    v14[1] = v12;
    sub_1BE04E1B4();
    v13 = sub_1BE04E1D4();
    (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD930ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8080], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD930C28()
{
  sub_1BE0528A4();
  v0[18] = sub_1BE052894();
  v2 = sub_1BE052844();
  v0[19] = v2;
  v0[20] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BD930CBC, v2, v1);
}

uint64_t sub_1BD930CBC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[21] = v1;
  v0[2] = v0;
  v0[3] = sub_1BD930DEC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59278, &unk_1BE106620);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD930F60;
  v0[13] = &block_descriptor_213;
  v0[14] = v2;
  [v1 refreshMerchantTokenMetadataWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD930DEC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1BD930EF4, v2, v1);
}

uint64_t sub_1BD930EF4()
{
  v1 = *(v0 + 144);

  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD930F60(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1BD930FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BD931074(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_1BE053B14();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BE0527B4();
        v12[2] = v11;
      }

      v13 = *(a2(0) - 8);
      v21[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v21[1] = v11;
      a3(v21, v22, a1, v10);
      v12[2] = 0;
      v12, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_1BD9311C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1BD930FE0(v22, v16, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD930FE0(v19, v12, type metadata accessor for UnifiedMerchantTokenData);
      if (*(v16 + 4) == *(v12 + 4) && *(v16 + 5) == *(v12 + 5))
      {
        sub_1BD935C74(v12, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v16, type metadata accessor for UnifiedMerchantTokenData);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_1BE053B84();
      sub_1BD935C74(v12, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v16, type metadata accessor for UnifiedMerchantTokenData);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1BD93641C(v22, v9, type metadata accessor for UnifiedMerchantTokenData);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD93641C(v9, v19, type metadata accessor for UnifiedMerchantTokenData);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1BD931450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = *a4;
    v27 = v17;
    v21 = v33 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    while (1)
    {
      sub_1BD930FE0(v21, v16, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD930FE0(v18, v12, type metadata accessor for UnifiedMerchantTokenData);
      v22 = *(v16 + 5);
      v36 = *(v16 + 4);
      v37 = v22;
      v23 = *(v12 + 5);
      v34 = *(v12 + 4);
      v35 = v23;
      sub_1BD0DDEBC();
      v24 = sub_1BE0535B4();
      sub_1BD935C74(v12, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v16, type metadata accessor for UnifiedMerchantTokenData);
      if (v24 != -1)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1BD93641C(v21, v9, type metadata accessor for UnifiedMerchantTokenData);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD93641C(v9, v18, type metadata accessor for UnifiedMerchantTokenData);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD9316CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178, &qword_1BE106238);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v66 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  v58 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v63 = -v21;
    v64 = v20;
    v23 = a1 - a3;
    v57 = v21;
    v24 = v20 + v21 * a3;
    v67 = &v56 - v18;
    v68 = v12;
LABEL_5:
    v61 = v22;
    v62 = a3;
    v59 = v24;
    v60 = v23;
    while (1)
    {
      v70 = v23;
      v71 = v24;
      sub_1BD930FE0(v24, v19, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v25 = v69;
      sub_1BD930FE0(v22, v69, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD0DE19C(v19, v12, &qword_1EBD59178, &qword_1BE106238);
      v26 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
      v27 = *(*(v26 - 8) + 48);
      if (v27(v12, 1, v26) == 1)
      {
        break;
      }

      v28 = &v12[*(v26 + 28)];
      v29 = v12;
      v30 = *v28;
      v31 = *(v28 + 1);
      sub_1BE048C84();
      sub_1BD935C74(v29, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v74 = v30;
      v75 = v31;
      v32 = v76;
      sub_1BD0DE19C(v25, v76, &qword_1EBD59178, &qword_1BE106238);
      if (v27(v32, 1, v26) == 1)
      {
        goto LABEL_14;
      }

      v33 = v76;
      v34 = (v76 + *(v26 + 28));
      v35 = *v34;
      v36 = v34[1];
      sub_1BE048C84();
      sub_1BD935C74(v33, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v72 = v35;
      v73 = v36;
      sub_1BD0DDEBC();
      v37 = sub_1BE0535B4();
      v31, v38, v39, v40, v41, v42, v43, v44;
      v36, v45, v46, v47, v48, v49, v50, v51;
      sub_1BD935C74(v25, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v19 = v67;
      sub_1BD935C74(v67, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v12 = v68;
      v53 = v70;
      v52 = v71;
      if (v37 == -1)
      {
        if (!v64)
        {
          goto LABEL_15;
        }

        v54 = v65;
        sub_1BD93641C(v71, v65, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        swift_arrayInitWithTakeFrontToBack();
        sub_1BD93641C(v54, v22, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        v22 += v63;
        v24 = v52 + v63;
        v55 = __CFADD__(v53, 1);
        v23 = v53 + 1;
        if (!v55)
        {
          continue;
        }
      }

      a3 = v62 + 1;
      v22 = v61 + v57;
      v23 = v60 - 1;
      v24 = v59 + v57;
      if (v62 + 1 == v58)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1BD931B10(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v130 = a1;
  v144 = type metadata accessor for UnifiedMerchantTokenData(0);
  v137 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v133 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v124 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v124 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v124 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v124 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v128 = &v124 - v32;
  v33 = *(a3 + 8);
  if (v33 < 1)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v5 = *v130;
    if (!*v130)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v145 = v35;
      v119 = *(v35 + 16);
      if (v119 >= 2)
      {
        while (*a3)
        {
          v120 = v35;
          v35 = *(v35 + 16 * v119);
          v114 = v120;
          v121 = *&v120[16 * v119 + 24];
          sub_1BD933D50(*a3 + *(v137 + 72) * v35, *a3 + *(v137 + 72) * *&v120[16 * v119 + 16], *a3 + *(v137 + 72) * v121, v5);
          if (v6)
          {
            goto LABEL_121;
          }

          if (v121 < v35)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1BD5ED6C8(v114, v25, v26, v27, v28, v29, v30, v31);
          }

          if (v119 - 2 >= *(v114 + 2))
          {
            goto LABEL_139;
          }

          v122 = &v114[16 * v119];
          *v122 = v35;
          v122[1] = v121;
          v145 = v114;
          sub_1BD5ED63C(v119 - 1);
          v35 = v145;
          v119 = *(v145 + 16);
          if (v119 <= 1)
          {
            goto LABEL_122;
          }
        }

        goto LABEL_149;
      }

LABEL_122:
      v123 = v35;
LABEL_123:
      v123, v25, v26, v27, v28, v29, v30, v31;
      return;
    }

LABEL_145:
    v35 = sub_1BD5ED6C8(v35, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_112;
  }

  v124 = a4;
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v138 = a3;
  v134 = v17;
  while (1)
  {
    v36 = v34;
    v37 = v34 + 1;
    if (v34 + 1 < v33)
    {
      v135 = v33;
      v125 = v35;
      v38 = *a3;
      v39 = *(v137 + 72);
      v40 = v34 + 1;
      v41 = v128;
      sub_1BD930FE0(v38 + v39 * v37, v128, type metadata accessor for UnifiedMerchantTokenData);
      v139 = v39;
      v42 = v38 + v39 * v36;
      v43 = v129;
      sub_1BD930FE0(v42, v129, type metadata accessor for UnifiedMerchantTokenData);
      v44 = *(v41 + 32) == *(v43 + 32) && *(v41 + 40) == *(v43 + 40);
      v126 = v6;
      if (v44)
      {
        LODWORD(v136) = 0;
      }

      else
      {
        LODWORD(v136) = sub_1BE053B84();
      }

      sub_1BD935C74(v129, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v128, type metadata accessor for UnifiedMerchantTokenData);
      v127 = v36;
      v45 = v36 + 2;
      v46 = v139 * (v36 + 2);
      v47 = v38 + v46;
      v48 = v40;
      v49 = v139 * v40;
      a3 = v38 + v139 * v40;
      do
      {
        v51 = v45;
        v35 = v48;
        v5 = v49;
        v52 = v46;
        v142 = v45;
        if (v45 >= v135)
        {
          break;
        }

        v53 = v14;
        v54 = v140;
        sub_1BD930FE0(v47, v140, type metadata accessor for UnifiedMerchantTokenData);
        v55 = v141;
        sub_1BD930FE0(a3, v141, type metadata accessor for UnifiedMerchantTokenData);
        v56 = *(v54 + 32) == *(v55 + 32) && *(v54 + 40) == *(v55 + 40);
        v50 = v56 ? 0 : sub_1BE053B84();
        v14 = v53;
        v6 = type metadata accessor for UnifiedMerchantTokenData;
        sub_1BD935C74(v141, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v140, type metadata accessor for UnifiedMerchantTokenData);
        v51 = v142;
        v45 = v142 + 1;
        v47 += v139;
        a3 += v139;
        v48 = v35 + 1;
        v49 = v5 + v139;
        v46 = v52 + v139;
        v17 = v134;
      }

      while (((v136 ^ v50) & 1) == 0);
      if ((v136 & 1) == 0)
      {
        v37 = v51;
LABEL_36:
        v35 = v125;
        v6 = v126;
        a3 = v138;
        v36 = v127;
        goto LABEL_37;
      }

      if (v51 < v127)
      {
        goto LABEL_142;
      }

      if (v127 < v51)
      {
        v57 = v127 * v139;
        v58 = v127;
        do
        {
          if (v58 != v35)
          {
            v60 = *v138;
            if (!*v138)
            {
              goto LABEL_148;
            }

            sub_1BD93641C(v60 + v57, v133, type metadata accessor for UnifiedMerchantTokenData);
            if (v57 < v5 || v60 + v57 >= (v60 + v52))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BD93641C(v133, v60 + v5, type metadata accessor for UnifiedMerchantTokenData);
          }

          ++v58;
          v5 -= v139;
          v52 -= v139;
          v57 += v139;
        }

        while (v58 < v35--);
        v37 = v142;
        goto LABEL_36;
      }

      v37 = v51;
      v35 = v125;
      v6 = v126;
      a3 = v138;
      v36 = v127;
    }

LABEL_37:
    v61 = *(a3 + 8);
    if (v37 < v61)
    {
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_141;
      }

      if (v37 - v36 < v124)
      {
        break;
      }
    }

LABEL_59:
    if (v37 < v36)
    {
      goto LABEL_140;
    }

    v142 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1BD1D7844(0, *(v35 + 16) + 1, 1, v35, v28, v29, v30, v31);
    }

    v73 = *(v35 + 16);
    v72 = *(v35 + 24);
    v74 = v73 + 1;
    v34 = v142;
    if (v73 >= v72 >> 1)
    {
      v118 = sub_1BD1D7844((v72 > 1), v73 + 1, 1, v35, v28, v29, v30, v31);
      v34 = v142;
      v35 = v118;
    }

    *(v35 + 16) = v74;
    v75 = v35 + 16 * v73;
    *(v75 + 32) = v36;
    *(v75 + 40) = v34;
    v5 = *v130;
    if (!*v130)
    {
      goto LABEL_150;
    }

    if (v73)
    {
      while (1)
      {
        a3 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v76 = *(v35 + 32);
          v77 = *(v35 + 40);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_79:
          if (v79)
          {
            goto LABEL_129;
          }

          v92 = (v35 + 16 * v74);
          v94 = *v92;
          v93 = v92[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_132;
          }

          v98 = (v35 + 32 + 16 * a3);
          v100 = *v98;
          v99 = v98[1];
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_136;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              a3 = v74 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v102 = (v35 + 16 * v74);
        v104 = *v102;
        v103 = v102[1];
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_93:
        if (v97)
        {
          goto LABEL_131;
        }

        v105 = v35 + 16 * a3;
        v107 = *(v105 + 32);
        v106 = *(v105 + 40);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_134;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_100:
        v113 = a3 - 1;
        if (a3 - 1 >= v74)
        {
          __break(1u);
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
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v138)
        {
          goto LABEL_147;
        }

        v114 = v35;
        v115 = v35 + 32;
        v35 = *(v35 + 32 + 16 * v113);
        v116 = *(v115 + 16 * a3 + 8);
        sub_1BD933D50(*v138 + *(v137 + 72) * v35, *v138 + *(v137 + 72) * *(v115 + 16 * a3), *v138 + *(v137 + 72) * v116, v5);
        if (v6)
        {
LABEL_121:
          v123 = v114;
          goto LABEL_123;
        }

        if (v116 < v35)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1BD5ED6C8(v114, v25, v26, v27, v28, v29, v30, v31);
        }

        if (v113 >= *(v114 + 2))
        {
          goto LABEL_126;
        }

        v117 = &v114[16 * v113];
        *(v117 + 4) = v35;
        *(v117 + 5) = v116;
        v145 = v114;
        sub_1BD5ED63C(a3);
        v35 = v145;
        v74 = *(v145 + 16);
        v34 = v142;
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = v35 + 32 + 16 * v74;
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_127;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_128;
      }

      v87 = (v35 + 16 * v74);
      v89 = *v87;
      v88 = v87[1];
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_130;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_133;
      }

      if (v91 >= v83)
      {
        v109 = (v35 + 32 + 16 * a3);
        v111 = *v109;
        v110 = v109[1];
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_137;
        }

        if (v78 < v112)
        {
          a3 = v74 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v138;
    v33 = v138[1];
    if (v34 >= v33)
    {
      goto LABEL_110;
    }
  }

  v62 = v36 + v124;
  if (__OFADD__(v36, v124))
  {
    goto LABEL_143;
  }

  if (v62 >= v61)
  {
    v62 = *(a3 + 8);
  }

  if (v62 < v36)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v37 == v62)
  {
    goto LABEL_59;
  }

  v125 = v35;
  v126 = v6;
  a3 = *a3;
  v63 = *(v137 + 72);
  v64 = a3 + v63 * (v37 - 1);
  v65 = v36;
  v66 = -v63;
  v127 = v65;
  v67 = v65 - v37;
  v131 = v63;
  v132 = v62;
  v5 = a3 + v37 * v63;
LABEL_48:
  v142 = v37;
  v135 = v5;
  v136 = v67;
  v139 = v64;
  while (1)
  {
    sub_1BD930FE0(v5, v17, type metadata accessor for UnifiedMerchantTokenData);
    sub_1BD930FE0(v64, v14, type metadata accessor for UnifiedMerchantTokenData);
    if (*(v17 + 4) == *(v14 + 4) && *(v17 + 5) == *(v14 + 5))
    {
      sub_1BD935C74(v14, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v17, type metadata accessor for UnifiedMerchantTokenData);
LABEL_47:
      v37 = v142 + 1;
      v64 = v139 + v131;
      v67 = v136 - 1;
      v5 = v135 + v131;
      if (v142 + 1 == v132)
      {
        v37 = v132;
        v35 = v125;
        v6 = v126;
        v36 = v127;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v69 = sub_1BE053B84();
    sub_1BD935C74(v14, type metadata accessor for UnifiedMerchantTokenData);
    sub_1BD935C74(v17, type metadata accessor for UnifiedMerchantTokenData);
    if ((v69 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v70 = v143;
    sub_1BD93641C(v5, v143, type metadata accessor for UnifiedMerchantTokenData);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BD93641C(v70, v64, type metadata accessor for UnifiedMerchantTokenData);
    v64 += v66;
    v5 += v66;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_1BD93256C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v123 = type metadata accessor for UnifiedMerchantTokenData(0);
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v112 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v107 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v23 = &v107 - v22;
  v120 = a3;
  v24 = *(a3 + 8);
  if (v24 >= 1)
  {
    v109 = a4;
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v25 + 1 >= v24)
      {
        v33 = v25 + 1;
      }

      else
      {
        v121 = v24;
        v114 = v5;
        v27 = *v120;
        v28 = *(v118 + 72);
        a3 = *v120 + v28 * (v25 + 1);
        sub_1BD930FE0(a3, v23, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD930FE0(v27 + v28 * v25, v13, type metadata accessor for UnifiedMerchantTokenData);
        v29 = *(v23 + 5);
        v126 = *(v23 + 4);
        v127 = v29;
        v30 = *(v13 + 5);
        v124 = *(v13 + 4);
        v125 = v30;
        v116 = sub_1BD0DDEBC();
        v117 = sub_1BE0535B4();
        sub_1BD935C74(v13, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v23, type metadata accessor for UnifiedMerchantTokenData);
        v110 = v25;
        v31 = v25 + 2;
        v119 = v28;
        v32 = v27 + v28 * v31;
        while (1)
        {
          v33 = v121;
          if (v121 == v31)
          {
            break;
          }

          v34 = v26;
          v35 = v117 == -1;
          sub_1BD930FE0(v32, v23, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD930FE0(a3, v13, type metadata accessor for UnifiedMerchantTokenData);
          v36 = *(v23 + 5);
          v126 = *(v23 + 4);
          v127 = v36;
          v37 = *(v13 + 5);
          v124 = *(v13 + 4);
          v125 = v37;
          v38 = sub_1BE0535B4();
          sub_1BD935C74(v13, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD935C74(v23, type metadata accessor for UnifiedMerchantTokenData);
          v39 = v35 ^ (v38 != -1);
          v26 = v34;
          ++v31;
          v32 += v119;
          a3 += v119;
          if ((v39 & 1) == 0)
          {
            v33 = v31 - 1;
            break;
          }
        }

        v5 = v114;
        v25 = v110;
        if (v117 == -1)
        {
          if (v33 < v110)
          {
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
            return;
          }

          if (v110 < v33)
          {
            v108 = v26;
            v40 = v119 * (v33 - 1);
            v41 = v33 * v119;
            v121 = v33;
            v42 = v110 * v119;
            do
            {
              if (v25 != --v33)
              {
                v114 = v5;
                v43 = *v120;
                if (!*v120)
                {
                  goto LABEL_130;
                }

                a3 = v43 + v42;
                sub_1BD93641C(v43 + v42, v112, type metadata accessor for UnifiedMerchantTokenData);
                if (v42 < v40 || a3 >= v43 + v41)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v42 != v40)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD93641C(v112, v43 + v40, type metadata accessor for UnifiedMerchantTokenData);
                v5 = v114;
              }

              ++v25;
              v40 -= v119;
              v41 -= v119;
              v42 += v119;
            }

            while (v25 < v33);
            v26 = v108;
            v25 = v110;
            v33 = v121;
          }
        }
      }

      v44 = v120[1];
      if (v33 >= v44)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v33, v25))
      {
        goto LABEL_122;
      }

      if (v33 - v25 >= v109)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v25, v109))
      {
        goto LABEL_123;
      }

      if (v25 + v109 >= v44)
      {
        v45 = v120[1];
      }

      else
      {
        v45 = v25 + v109;
      }

      if (v45 < v25)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v33 == v45)
      {
LABEL_32:
        v46 = v33;
        if (v33 < v25)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v108 = v26;
        v114 = v5;
        v115 = v45;
        v92 = *v120;
        v93 = *(v118 + 72);
        v94 = *v120 + v93 * (v33 - 1);
        v95 = -v93;
        v110 = v25;
        v96 = v25 - v33;
        v113 = v93;
        a3 = v92 + v33 * v93;
        do
        {
          v121 = v33;
          v116 = a3;
          v117 = v96;
          v119 = v94;
          v97 = v94;
          do
          {
            sub_1BD930FE0(a3, v23, type metadata accessor for UnifiedMerchantTokenData);
            sub_1BD930FE0(v97, v13, type metadata accessor for UnifiedMerchantTokenData);
            v98 = *(v23 + 5);
            v126 = *(v23 + 4);
            v127 = v98;
            v99 = *(v13 + 5);
            v124 = *(v13 + 4);
            v125 = v99;
            sub_1BD0DDEBC();
            v100 = sub_1BE0535B4();
            sub_1BD935C74(v13, type metadata accessor for UnifiedMerchantTokenData);
            sub_1BD935C74(v23, type metadata accessor for UnifiedMerchantTokenData);
            if (v100 != -1)
            {
              break;
            }

            if (!v92)
            {
              goto LABEL_127;
            }

            v101 = v122;
            sub_1BD93641C(a3, v122, type metadata accessor for UnifiedMerchantTokenData);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD93641C(v101, v97, type metadata accessor for UnifiedMerchantTokenData);
            v97 += v95;
            a3 += v95;
          }

          while (!__CFADD__(v96++, 1));
          v33 = v121 + 1;
          v94 = v119 + v113;
          v96 = v117 - 1;
          a3 = v116 + v113;
          v46 = v115;
        }

        while (v121 + 1 != v115);
        v5 = v114;
        v26 = v108;
        v25 = v110;
        if (v115 < v110)
        {
          goto LABEL_121;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BD1D7844(0, *(v26 + 2) + 1, 1, v26, v18, v19, v20, v21);
      }

      a3 = *(v26 + 2);
      v47 = *(v26 + 3);
      v48 = a3 + 1;
      if (a3 >= v47 >> 1)
      {
        v26 = sub_1BD1D7844((v47 > 1), a3 + 1, 1, v26, v18, v19, v20, v21);
      }

      *(v26 + 2) = v48;
      v49 = &v26[16 * a3];
      *(v49 + 4) = v25;
      *(v49 + 5) = v46;
      v115 = v46;
      v50 = *v111;
      if (!*v111)
      {
        goto LABEL_131;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v51 = *(v26 + 4);
            v52 = *(v26 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_52:
            if (v54)
            {
              goto LABEL_110;
            }

            v67 = &v26[16 * v48];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_113;
            }

            v73 = &v26[16 * a3 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_117;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                a3 = v48 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v77 = &v26[16 * v48];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_66:
          if (v72)
          {
            goto LABEL_112;
          }

          v80 = &v26[16 * a3];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_115;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_73:
          v88 = a3 - 1;
          if (a3 - 1 >= v48)
          {
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
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
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
            goto LABEL_124;
          }

          if (!*v120)
          {
            goto LABEL_128;
          }

          v89 = *&v26[16 * v88 + 32];
          v90 = *&v26[16 * a3 + 40];
          sub_1BD9342FC(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v26[16 * a3 + 32], *v120 + *(v118 + 72) * v90, v50);
          if (v5)
          {
            goto LABEL_104;
          }

          if (v90 < v89)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
          }

          if (v88 >= *(v26 + 2))
          {
            goto LABEL_107;
          }

          v91 = &v26[16 * v88];
          *(v91 + 4) = v89;
          *(v91 + 5) = v90;
          v128 = v26;
          sub_1BD5ED63C(a3);
          v26 = v128;
          v48 = *(v128 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v55 = &v26[16 * v48 + 32];
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = &v26[16 * v48];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v66 >= v58)
        {
          v84 = &v26[16 * a3 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v87)
          {
            a3 = v48 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v24 = v120[1];
      v25 = v115;
      if (v115 >= v24)
      {
        goto LABEL_94;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_94:
  a3 = *v111;
  if (!*v111)
  {
    goto LABEL_132;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_125:
    v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
  }

  v128 = v26;
  v103 = *(v26 + 2);
  if (v103 >= 2)
  {
    while (*v120)
    {
      v104 = *&v26[16 * v103];
      v105 = *&v26[16 * v103 + 24];
      sub_1BD9342FC(*v120 + *(v118 + 72) * v104, *v120 + *(v118 + 72) * *&v26[16 * v103 + 16], *v120 + *(v118 + 72) * v105, a3);
      if (v5)
      {
        goto LABEL_104;
      }

      if (v105 < v104)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BD5ED6C8(v26, v15, v16, v17, v18, v19, v20, v21);
      }

      if (v103 - 2 >= *(v26 + 2))
      {
        goto LABEL_120;
      }

      v106 = &v26[16 * v103];
      *v106 = v104;
      *(v106 + 1) = v105;
      v128 = v26;
      sub_1BD5ED63C(v103 - 1);
      v26 = v128;
      v103 = *(v128 + 2);
      if (v103 <= 1)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_129;
  }

LABEL_104:
  v26, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD932F10(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v182 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178, &qword_1BE106238);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v177 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v177 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v177 - v18;
  v201 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v195 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v185 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v200 = &v177 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v178 = &v177 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v205 = &v177 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v177 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v196 = &v177 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v180 = &v177 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v179 = &v177 - v42;
  v43 = a3[1];
  v186 = a3;
  if (v43 < 1)
  {
    v45 = MEMORY[0x1E69E7CC0];
    v46 = a3;
LABEL_98:
    a4 = *v182;
    if (*v182)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_100;
    }

    goto LABEL_142;
  }

  v191 = v16;
  v192 = v19;
  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v181 = a4;
  v202 = v10;
  v203 = v13;
  v46 = a3;
  while (1)
  {
    v183 = v44;
    if (v44 + 1 >= v43)
    {
      v54 = v44 + 1;
      goto LABEL_26;
    }

    v197 = v43;
    v47 = *v46;
    v48 = *(v195 + 72);
    v204 = *v46 + v48 * (v44 + 1);
    v49 = v179;
    sub_1BD930FE0(v204, v179, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v50 = v180;
    sub_1BD930FE0(v47 + v48 * v183, v180, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    LODWORD(v198) = sub_1BD922DE8(v49, v50);
    if (v5)
    {
      sub_1BD935C74(v50, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD935C74(v49, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      goto LABEL_110;
    }

    sub_1BD935C74(v50, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    sub_1BD935C74(v49, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    v51 = v183 + 2;
    v52 = v47 + v48 * (v183 + 2);
    v53 = v48;
    v199 = v48;
    v193 = v45;
    v194 = 0;
    do
    {
      v54 = v197;
      if (v197 == v51)
      {
        goto LABEL_12;
      }

      v55 = v196;
      sub_1BD930FE0(v52, v196, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD930FE0(v204, v29, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      v56 = v29;
      v57 = v192;
      sub_1BD0DE19C(v55, v192, &qword_1EBD59178, &qword_1BE106238);
      v58 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
      v59 = *(*(v58 - 8) + 48);
      if (v59(v57, 1, v58) == 1)
      {
        goto LABEL_136;
      }

      v60 = (v57 + *(v58 + 28));
      v61 = v57;
      v63 = *v60;
      v62 = v60[1];
      sub_1BE048C84();
      sub_1BD935C74(v61, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v208 = v63;
      v209 = v62;
      v64 = v191;
      sub_1BD0DE19C(v56, v191, &qword_1EBD59178, &qword_1BE106238);
      if (v59(v64, 1, v58) == 1)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        return;
      }

      v65 = (v64 + *(v58 + 28));
      v66 = *v65;
      v67 = v65[1];
      sub_1BE048C84();
      sub_1BD935C74(v64, type metadata accessor for MerchantTokenListViewModel.SectionCard);
      v206 = v66;
      v207 = v67;
      sub_1BD0DDEBC();
      v68 = sub_1BE0535B4();
      v62, v69, v70, v71, v72, v73, v74, v75;
      v67, v76, v77, v78, v79, v80, v81, v82;
      sub_1BD935C74(v56, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      sub_1BD935C74(v196, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
      ++v51;
      v53 = v199;
      v52 += v199;
      v13 = v203;
      v204 += v199;
      v45 = v193;
      v29 = v56;
      v5 = v194;
    }

    while (((v198 ^ (v68 != -1)) & 1) != 0);
    v54 = v51 - 1;
LABEL_12:
    v46 = v186;
    a4 = v181;
    v44 = v183;
    if (v198)
    {
      break;
    }

LABEL_26:
    v89 = *(v46 + 8);
    if (v54 < v89)
    {
      if (__OFSUB__(v54, v44))
      {
        goto LABEL_128;
      }

      if (v54 - v44 < a4)
      {
        if (__OFADD__(v44, a4))
        {
          goto LABEL_129;
        }

        if (v44 + a4 < v89)
        {
          v89 = v44 + a4;
        }

        if (v89 < v44)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v187 = v89;
        if (v54 != v89)
        {
          v177 = v29;
          v193 = v45;
          v194 = v5;
          v90 = *v46;
          v91 = *(v195 + 72);
          a4 = *v46 + v91 * (v54 - 1);
          v198 = -v91;
          v199 = v90;
          v92 = v44 - v54;
          v184 = v91;
          v93 = v90 + v54 * v91;
          v94 = v178;
          do
          {
            v197 = v54;
            v188 = v93;
            v95 = v93;
            v189 = v92;
            v190 = a4;
            v96 = v92;
            while (1)
            {
              v204 = v96;
              v97 = v205;
              sub_1BD930FE0(v95, v205, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              sub_1BD930FE0(a4, v94, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              sub_1BD0DE19C(v97, v13, &qword_1EBD59178, &qword_1BE106238);
              v98 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
              v99 = *(*(v98 - 8) + 48);
              v100 = v94;
              if (v99(v13, 1, v98) == 1)
              {
                goto LABEL_134;
              }

              v101 = &v13[*(v98 + 28)];
              v102 = v13;
              v103 = *v101;
              v104 = *(v101 + 1);
              sub_1BE048C84();
              sub_1BD935C74(v102, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v208 = v103;
              v209 = v104;
              v105 = v202;
              sub_1BD0DE19C(v100, v202, &qword_1EBD59178, &qword_1BE106238);
              if (v99(v105, 1, v98) == 1)
              {
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }

              v106 = (v105 + *(v98 + 28));
              v107 = *v106;
              v108 = v106[1];
              sub_1BE048C84();
              sub_1BD935C74(v105, type metadata accessor for MerchantTokenListViewModel.SectionCard);
              v206 = v107;
              v207 = v108;
              sub_1BD0DDEBC();
              v109 = sub_1BE0535B4();
              v104, v110, v111, v112, v113, v114, v115, v116;
              v108, v117, v118, v119, v120, v121, v122, v123;
              sub_1BD935C74(v100, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              sub_1BD935C74(v205, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              v94 = v100;
              if (v109 != -1)
              {
                break;
              }

              v13 = v203;
              v124 = v204;
              if (!v199)
              {
                goto LABEL_135;
              }

              v125 = v200;
              sub_1BD93641C(v95, v200, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              swift_arrayInitWithTakeFrontToBack();
              sub_1BD93641C(v125, a4, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
              a4 += v198;
              v95 += v198;
              v126 = __CFADD__(v124, 1);
              v96 = v124 + 1;
              if (v126)
              {
                goto LABEL_36;
              }
            }

            v13 = v203;
LABEL_36:
            v54 = v197 + 1;
            a4 = v190 + v184;
            v92 = v189 - 1;
            v93 = v188 + v184;
          }

          while (v197 + 1 != v187);
          v45 = v193;
          v5 = v194;
          v46 = v186;
          v29 = v177;
          v44 = v183;
          v54 = v187;
        }
      }
    }

    if (v54 < v44)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1BD1D7844(0, *(v45 + 2) + 1, 1, v45, v38, v39, v40, v41);
    }

    v128 = *(v45 + 2);
    v127 = *(v45 + 3);
    a4 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      v45 = sub_1BD1D7844((v127 > 1), v128 + 1, 1, v45, v38, v39, v40, v41);
    }

    *(v45 + 2) = a4;
    v129 = &v45[16 * v128];
    *(v129 + 4) = v183;
    *(v129 + 5) = v54;
    v204 = *v182;
    if (!v204)
    {
      goto LABEL_141;
    }

    v187 = v54;
    if (v128)
    {
      while (1)
      {
        v130 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v131 = *(v45 + 4);
          v132 = *(v45 + 5);
          v141 = __OFSUB__(v132, v131);
          v133 = v132 - v131;
          v134 = v141;
LABEL_66:
          if (v134)
          {
            goto LABEL_116;
          }

          v147 = &v45[16 * a4];
          v149 = *v147;
          v148 = *(v147 + 1);
          v150 = __OFSUB__(v148, v149);
          v151 = v148 - v149;
          v152 = v150;
          if (v150)
          {
            goto LABEL_119;
          }

          v153 = &v45[16 * v130 + 32];
          v155 = *v153;
          v154 = *(v153 + 1);
          v141 = __OFSUB__(v154, v155);
          v156 = v154 - v155;
          if (v141)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v151, v156))
          {
            goto LABEL_123;
          }

          if (v151 + v156 >= v133)
          {
            if (v133 < v156)
            {
              v130 = a4 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v157 = &v45[16 * a4];
        v159 = *v157;
        v158 = *(v157 + 1);
        v141 = __OFSUB__(v158, v159);
        v151 = v158 - v159;
        v152 = v141;
LABEL_80:
        if (v152)
        {
          goto LABEL_118;
        }

        v160 = &v45[16 * v130];
        v162 = *(v160 + 4);
        v161 = *(v160 + 5);
        v141 = __OFSUB__(v161, v162);
        v163 = v161 - v162;
        if (v141)
        {
          goto LABEL_121;
        }

        if (v163 < v151)
        {
          goto LABEL_3;
        }

LABEL_87:
        v168 = v130 - 1;
        if (v130 - 1 >= a4)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v169 = *v46;
        if (!*v46)
        {
          goto LABEL_138;
        }

        v170 = v46;
        a4 = *&v45[16 * v168 + 32];
        v46 = *&v45[16 * v130 + 40];
        sub_1BD93485C(v169 + *(v195 + 72) * a4, v169 + *(v195 + 72) * *&v45[16 * v130 + 32], v169 + *(v195 + 72) * v46, v204);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v46 < a4)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1BD5ED6C8(v45, v35, v36, v37, v38, v39, v40, v41);
        }

        if (v168 >= *(v45 + 2))
        {
          goto LABEL_113;
        }

        v171 = &v45[16 * v168];
        *(v171 + 4) = a4;
        *(v171 + 5) = v46;
        v210 = v45;
        sub_1BD5ED63C(v130);
        v45 = v210;
        a4 = *(v210 + 2);
        v46 = v170;
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v135 = &v45[16 * a4 + 32];
      v136 = *(v135 - 64);
      v137 = *(v135 - 56);
      v141 = __OFSUB__(v137, v136);
      v138 = v137 - v136;
      if (v141)
      {
        goto LABEL_114;
      }

      v140 = *(v135 - 48);
      v139 = *(v135 - 40);
      v141 = __OFSUB__(v139, v140);
      v133 = v139 - v140;
      v134 = v141;
      if (v141)
      {
        goto LABEL_115;
      }

      v142 = &v45[16 * a4];
      v144 = *v142;
      v143 = *(v142 + 1);
      v141 = __OFSUB__(v143, v144);
      v145 = v143 - v144;
      if (v141)
      {
        goto LABEL_117;
      }

      v141 = __OFADD__(v133, v145);
      v146 = v133 + v145;
      if (v141)
      {
        goto LABEL_120;
      }

      if (v146 >= v138)
      {
        v164 = &v45[16 * v130 + 32];
        v166 = *v164;
        v165 = *(v164 + 1);
        v141 = __OFSUB__(v165, v166);
        v167 = v165 - v166;
        if (v141)
        {
          goto LABEL_124;
        }

        if (v133 < v167)
        {
          v130 = a4 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v43 = *(v46 + 8);
    v44 = v187;
    a4 = v181;
    if (v187 >= v43)
    {
      goto LABEL_98;
    }
  }

  if (v54 >= v183)
  {
    if (v183 < v54)
    {
      v83 = v53 * (v54 - 1);
      v84 = v54 * v53;
      v197 = v54;
      v85 = v183;
      v86 = v183 * v53;
      do
      {
        if (v85 != --v54)
        {
          v87 = v29;
          v88 = *v186;
          if (!*v186)
          {
            goto LABEL_139;
          }

          sub_1BD93641C(v88 + v86, v185, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          if (v86 < v83 || v88 + v86 >= (v88 + v84))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v86 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1BD93641C(v185, v88 + v83, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          v29 = v87;
          v5 = v194;
          v53 = v199;
        }

        ++v85;
        v83 -= v53;
        v84 -= v53;
        v86 += v53;
      }

      while (v85 < v54);
      v46 = v186;
      a4 = v181;
      v13 = v203;
      v44 = v183;
      v54 = v197;
    }

    goto LABEL_26;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  v45 = sub_1BD5ED6C8(v45, v35, v36, v37, v38, v39, v40, v41);
LABEL_100:
  v210 = v45;
  v172 = *(v45 + 2);
  if (v172 >= 2)
  {
    do
    {
      v173 = *v46;
      if (!*v46)
      {
        goto LABEL_140;
      }

      v46 = v172 - 1;
      v174 = *&v45[16 * v172];
      v175 = *&v45[16 * v172 + 24];
      sub_1BD93485C(v173 + *(v195 + 72) * v174, v173 + *(v195 + 72) * *&v45[16 * v172 + 16], v173 + *(v195 + 72) * v175, a4);
      if (v5)
      {
        break;
      }

      if (v175 < v174)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1BD5ED6C8(v45, v35, v36, v37, v38, v39, v40, v41);
      }

      if (v172 - 2 >= *(v45 + 2))
      {
        goto LABEL_126;
      }

      v176 = &v45[16 * v172];
      *v176 = v174;
      *(v176 + 1) = v175;
      v210 = v45;
      sub_1BD5ED63C(v46);
      v45 = v210;
      v172 = *(v210 + 2);
      v46 = v186;
    }

    while (v172 > 1);
  }

LABEL_110:
  v45, v35, v36, v37, v38, v39, v40, v41;
}