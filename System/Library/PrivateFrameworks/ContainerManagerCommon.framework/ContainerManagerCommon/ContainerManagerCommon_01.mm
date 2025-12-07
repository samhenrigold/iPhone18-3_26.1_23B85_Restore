MCMAnalytics *sub_1DF2E19F8(void *a1)
{
  v1 = a1;
  sub_1DF2D2724(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FC0, &unk_1DF3BDF98);
  if (swift_dynamicCast())
  {
    v2 = v71;
    v3 = sub_1DF2E10DC(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = 1 << *(v71 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v71 + 64);
    v8 = (v5 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        if (!v7)
        {
          if (v8 <= v4 + 1)
          {
            v11 = v4 + 1;
          }

          else
          {
            v11 = v8;
          }

          v4 = v11 - 1;
          while (1)
          {
            v10 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v10 >= v8)
            {
              v7 = 0;
              v67 = 0u;
              v68 = 0u;
              v66 = 0u;
              goto LABEL_15;
            }

            v7 = *(v2 + 64 + 8 * v10);
            ++v9;
            if (v7)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          result = sub_1DF3B103C();
          __break(1u);
          return result;
        }

        v10 = v4;
LABEL_14:
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = v12 | (v10 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1DF2D2724(*(v2 + 56) + 32 * v13, v65);
        *&v66 = v15;
        *(&v66 + 1) = v16;
        sub_1DF2DD320(v65, &v67);

        v4 = v10;
LABEL_15:
        v69 = v66;
        v70[0] = v67;
        v70[1] = v68;
        v17 = *(&v66 + 1);
        if (!*(&v66 + 1))
        {
          __swift_destroy_boxed_opaque_existential_0(v1);

          if (*v3->db)
          {
            goto LABEL_33;
          }

          v3, v55, v56, v57, v58, v59, v60, v61;
          goto LABEL_32;
        }

        v18 = v69;
        sub_1DF2DD320(v70, &v66);
        v19 = sub_1DF2E1660(&v66);
        if (v19)
        {
          break;
        }

        v17, v20, v21, v22, v23, v24, v25, v26;
      }

      v63 = v1;
      v64 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v66 = v3;
      v28 = sub_1DF2D6BE4(v18, v17);
      v36 = *v3->db;
      v37 = (v29 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_35;
      }

      v40 = v29;
      if (v3[1].super.isa >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v51 = v28;
        sub_1DF2E08DC();
        v28 = v51;
        if ((v40 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_25:
        v41 = v28;
        v17, v29, v30, v31, v32, v33, v34, v35;
        v3 = v66;
        v42 = *(v66 + 56);
        v43 = *(v42 + 8 * v41);
        *(v42 + 8 * v41) = v64;
        v43, v44, v45, v46, v47, v48, v49, v50;
        v1 = v63;
      }

      else
      {
        sub_1DF2E0228(v39, isUniquelyReferenced_nonNull_native);
        v28 = sub_1DF2D6BE4(v18, v17);
        if ((v40 & 1) != (v29 & 1))
        {
          goto LABEL_37;
        }

LABEL_24:
        if (v40)
        {
          goto LABEL_25;
        }

LABEL_27:
        v3 = v66;
        *(v66 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v52 = (v3[2].super.isa + 16 * v28);
        *v52 = v18;
        v52[1] = v17;
        *(v3[2].queue + v28) = v64;
        v53 = *v3->db;
        v38 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v38)
        {
          goto LABEL_36;
        }

        *v3->db = v54;
        v1 = v63;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v1);
LABEL_32:
  v3 = 0;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_0(v72);
  return v3;
}

unint64_t type metadata accessor for MCMEntitlementAccess()
{
  result = qword_1ECE34F00[0];
  if (!qword_1ECE34F00[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECE34F00);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF2E1D98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DF2E1DE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DF2E1E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF2E1F08(uint64_t *a1)
{
  v3 = sub_1DF2E62A8(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
  if (v1)
  {
    return v3 & 1;
  }

  if (a1[1])
  {
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  sub_1DF2E6460(v4, v5, 1, &_s16AmbiguousPersonaVN, &off_1F5A5A500);
  v5, v6, v7, v8, v9, v10, v11, v12;
  sub_1DF2E6460(a1[2], a1[3], 2, &_s16AmbiguousPersonaVN, &off_1F5A5A500);
  sub_1DF2E6460(a1[4], a1[5], 3, &_s16AmbiguousPersonaVN, &off_1F5A5A500);
  sub_1DF2E65D8(*(a1 + 12), 4, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 13), 5, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 14), 6, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 60) & 1, 7, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E65D8(*(a1 + 61) & 1, 8, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  sub_1DF2E6460(a1[8], a1[9], 9, &_s16AmbiguousPersonaVN, &off_1F5A5A500);
  result = sub_1DF2E65D8(*(a1 + 20), 10, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
  v14 = a1[11];
  if (!(v14 >> 31))
  {
    sub_1DF2E65D8(v14, 11, &_s16AmbiguousPersonaVN, &off_1F5A5A518);
    sub_1DF2E637C(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
    v3 = sub_1DF2E6428(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
    return v3 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF2E22B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s16AmbiguousPersonaVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s16AmbiguousPersonaVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

id sub_1DF2E23E0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC22ContainerManagerCommon27MCMAnalyticsDatabaseWrapper_unwrapped] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1DF2E2484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCMAnalyticsDatabaseWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t variable initialization expression of MCMAnalytics.queue()
{
  v7 = sub_1DF3B0EDC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DF3B0ECC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DF3B0D8C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DF2D7818(0, &qword_1EE172C78, 0x1E69E9610);
  sub_1DF3B0D7C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&unk_1EE172C80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF2E4B24(&qword_1EE172C90, &unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF3B0F2C();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  return sub_1DF3B0EFC();
}

id sub_1DF2E2730()
{
  v0 = sub_1DF3B0D0C();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v36 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1DF3B0D3C();
  v35 = *(v40 - 8);
  v2 = MEMORY[0x1EEE9AC00](v40);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v33 - v4;
  v39 = sub_1DF3B0CEC();
  v47 = *(v39 - 8);
  v5 = MEMORY[0x1EEE9AC00](v39);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v33 - v7;
  v44 = sub_1DF3B0EDC();
  v8 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF3B0ECC();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DF3B0D8C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = OBJC_IVAR___MCMAnalytics_queue;
  v42 = sub_1DF2D7818(0, &qword_1EE172C78, 0x1E69E9610);
  sub_1DF3B0D7C();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&unk_1EE172C80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF2E4B24(&qword_1EE172C90, &unk_1ECE31008, &unk_1DF3BE0A0);
  sub_1DF3B0F2C();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v44);
  v13 = v45;
  *&v13[v43] = sub_1DF3B0EFC();
  v14 = containermanager_copy_global_configuration();
  v15 = &selRef_deleteCommand;
  if ([v14 isInternalImage])
  {
    v16 = [v14 managedPathRegistry];
    v17 = [v16 containermanagerLibrary];

    v44 = v17;
    v18 = [v17 url];
    v19 = v33;
    sub_1DF3B0CCC();

    v20 = v41;
    sub_1DF3B0CBC();
    v21 = *(v47 + 8);
    v22 = v39;
    v47 += 8;
    v21(v19, v39);
    v23 = sub_1DF3B0CDC();
    v24 = v46;
    MEMORY[0x1E12D26F0](v23);
    type metadata accessor for MCMAnalyticsDatabase(0);
    v25 = v34;
    v26 = v35;
    v27 = v40;
    (*(v35 + 16))(v34, v24, v40);
    v28 = sub_1DF2DACBC(v25);
    v29 = type metadata accessor for MCMAnalyticsDatabaseWrapper();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC22ContainerManagerCommon27MCMAnalyticsDatabaseWrapper_unwrapped] = v28;
    v48.receiver = v30;
    v48.super_class = v29;

    v31 = objc_msgSendSuper2(&v48, sel_init);
    v15 = &selRef_deleteCommand;

    swift_unknownObjectRelease();

    (*(v26 + 8))(v46, v27);
    v21(v20, v22);
    *&v13[OBJC_IVAR___MCMAnalytics_db] = v31;
  }

  else
  {
    swift_unknownObjectRelease();
    *&v13[OBJC_IVAR___MCMAnalytics_db] = 0;
  }

  v49.receiver = v13;
  v49.super_class = MCMAnalytics;
  return objc_msgSendSuper2(&v49, v15[169]);
}

id sub_1DF2E2EE8()
{
  result = [objc_allocWithZone(MCMAnalytics) init];
  qword_1EE172DF8 = result;
  return result;
}

uint64_t sub_1DF2E2F1C(uint64_t a1, MCMAnalytics *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, char a9, uint64_t a10)
{
  v112 = a8;
  v113 = a5;
  v150[45] = *MEMORY[0x1E69E9840];
  v17 = sub_1DF3B0D0C();
  v116 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v109 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v108 = &v97 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v106 = &v97 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v111 = &v97 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v105 = &v97 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v110 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v97 - v30;
  result = MCMPersonasAreSupported();
  if (!result)
  {
    return result;
  }

  v107 = a1;
  v100 = a7;
  v101 = a4;
  v102 = a6;
  v103 = v10;
  v33 = sub_1DF2DABBC();
  v34 = *(v116 + 16);
  v114 = v33;
  v115 = v34;
  v104 = v116 + 16;
  (v34)(v31);

  v35 = sub_1DF3B0CFC();
  v36 = sub_1DF3B0E9C();
  a2, v37, v38, v39, v40, v41, v42, v43;
  v44 = os_log_type_enabled(v35, v36);
  v98 = a2;
  v99 = a3;
  if (v44)
  {
    v45 = a2;
    v46 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v128 = v97;
    *v46 = 136315138;
    v150[0] = v107;
    v150[1] = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE31030, &qword_1DF3BE0B0);
    v47 = sub_1DF3B0DDC();
    v49 = v48;
    v50 = sub_1DF2D1250(v47, v48, v128);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v46 + 4) = v50;
    _os_log_impl(&dword_1DF2C3000, v35, v36, "Ambiguous persona with identifier: [%s]", v46, 0xCu);
    v58 = v97;
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x1E12D4520](v58, -1, -1);
    MEMORY[0x1E12D4520](v46, -1, -1);
  }

  v59 = *(v116 + 8);
  v59(v31, v17);
  v60 = v17;
  memset(v150, 0, 348);
  v149 = 0;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  *&v128[4] = 0u;
  *v128 = 2;
  v61 = kpersona_info();
  v63 = v110;
  v62 = v111;
  if (v61)
  {
    v115(v110, v114, v17);
    v64 = sub_1DF3B0CFC();
    v65 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1DF2C3000, v64, v65, "Unable to fetch current persona info", v66, 2u);
      MEMORY[0x1E12D4520](v66, -1, -1);
    }

    v59(v63, v60);
    LODWORD(v116) = 0;
  }

  else
  {
    LODWORD(v116) = *&v128[8];
  }

  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  if (voucher_get_current_persona_proximate_info())
  {
    v115(v62, v114, v60);
    v67 = sub_1DF3B0CFC();
    v68 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1DF2C3000, v67, v68, "Unable to fetch current persona proximate", v69, 2u);
      MEMORY[0x1E12D4520](v69, -1, -1);
    }

    v70 = v62;
LABEL_17:
    v59(v70, v60);
    LODWORD(v111) = 0;
    goto LABEL_18;
  }

  memcpy(v127, v150, 0x15CuLL);
  v127[0] = 2;
  if (kpersona_info())
  {
    v115(v105, v114, v60);
    v71 = sub_1DF3B0CFC();
    v72 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67109120;
      swift_beginAccess();
      *(v73 + 4) = DWORD1(v121);
      _os_log_impl(&dword_1DF2C3000, v71, v72, "Unable to fetch current persona proximate info; personaid = %u", v73, 8u);
      MEMORY[0x1E12D4520](v73, -1, -1);
    }

    v70 = v105;
    goto LABEL_17;
  }

  LODWORD(v111) = v127[2];
LABEL_18:
  v117 = v123;
  v118 = v124;
  v119 = v125;
  if (voucher_get_current_persona_originator_info())
  {
    v74 = v109;
    v115(v109, v114, v60);
    v75 = v74;
    v76 = sub_1DF3B0CFC();
    v77 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1DF2C3000, v76, v77, "Unable to fetch current persona originator", v78, 2u);
      MEMORY[0x1E12D4520](v78, -1, -1);
    }

    v59(v75, v60);
    v79 = 0;
    v80 = 0;
    v81 = 0xE000000000000000;
    goto LABEL_33;
  }

  memcpy(v127, v150, 0x15CuLL);
  v127[0] = 2;
  if (kpersona_info())
  {
    v115(v106, v114, v60);
    v82 = sub_1DF3B0CFC();
    v83 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 67109120;
      swift_beginAccess();
      *(v84 + 4) = DWORD1(v118);
      _os_log_impl(&dword_1DF2C3000, v82, v83, "Unable to fetch current persona originator info; personaid = %u", v84, 8u);
      MEMORY[0x1E12D4520](v84, -1, -1);
    }

    v59(v106, v60);
    v79 = 0;
  }

  else
  {
    v79 = v127[2];
  }

  v126 = 0;
  swift_beginAccess();
  if (container_audit_token_copy_executable_name_with_pid() || !v126)
  {
    v115(v108, v114, v60);
    v85 = sub_1DF3B0CFC();
    v86 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 67109120;
      *(v87 + 4) = DWORD2(v117);
      _os_log_impl(&dword_1DF2C3000, v85, v86, "Unable to fetch originator procpath, pid = %d", v87, 8u);
      MEMORY[0x1E12D4520](v87, -1, -1);
    }

    v59(v108, v60);
    v80 = 0;
    v81 = 0xE000000000000000;
    v88 = v126;
    if (!v126)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v80 = sub_1DF3B0E2C();
    v81 = v96;
    v88 = v126;
    if (!v126)
    {
      goto LABEL_33;
    }
  }

  MEMORY[0x1E12D4520](v88, -1, -1);
LABEL_33:
  v89 = v98;

  v90 = v101;

  v91 = v102;

  sub_1DF2DDDF4(v107, v89, v99, v90, v113, v91, v111, v116, v127, v100, v112 & 1, a9 & 1, v80, v81, v79, a10);
  v92 = v103;
  v93 = [v103 queue];
  v94 = *&v92[OBJC_IVAR___MCMAnalytics_db];
  if (v94)
  {
    v95 = *(v94 + OBJC_IVAR____TtC22ContainerManagerCommon27MCMAnalyticsDatabaseWrapper_unwrapped);
  }

  else
  {
    v95 = 0;
  }

  sub_1DF2E3998(v93, v95);

  return sub_1DF2E49DC(v127);
}

uint64_t sub_1DF2E3998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = sub_1DF3B0D5C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DF3B0D8C();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = v3[3];
  *(v12 + 48) = v3[2];
  *(v12 + 64) = v13;
  v14 = v3[5];
  *(v12 + 80) = v3[4];
  *(v12 + 96) = v14;
  v15 = v3[1];
  *(v12 + 16) = *v3;
  *(v12 + 32) = v15;
  *(v12 + 112) = a2;
  aBlock[4] = sub_1DF2E4BC8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2E4998;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);
  sub_1DF2E4C34(v3, v21);

  sub_1DF3B0D6C();
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&qword_1ECE31038, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF2E4B24(&qword_1ECE31048, &qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF3B0F2C();
  MEMORY[0x1E12D2890](0, v11, v8, v16);
  _Block_release(v16);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1DF2E3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a2;
  v24 = a1;
  v6 = sub_1DF3B0D5C();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DF3B0D8C();
  v9 = *(v22 - 8);
  v10 = MEMORY[0x1EEE9AC00](v22);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 16) = a3;
  *(v16 + 24) = v17;
  (*(v13 + 32))(v16 + v15, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_1DF2E4A30;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2E4998;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  sub_1DF3B0D6C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DF2E4ADC(&qword_1ECE31038, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF2E4B24(&qword_1ECE31048, &qword_1ECE31040, &qword_1DF3BE0B8);
  sub_1DF3B0F2C();
  MEMORY[0x1E12D2890](0, v12, v8, v18);
  _Block_release(v18);
  (*(v23 + 8))(v8, v6);
  (*(v9 + 8))(v12, v22);
}

void sub_1DF2E4154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - v10;
  v12 = sub_1DF3B0D0C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DF2DABBC();
  v62 = v13;
  (*(v13 + 16))(v15, v16, v12);
  v17 = *(v6 + 16);
  v64 = v3;
  v65 = v17;
  v17(v11, v3, a1);
  v18 = sub_1DF3B0CFC();
  v61 = sub_1DF3B0E8C();
  if (os_log_type_enabled(v18, v61))
  {
    v19 = swift_slowAlloc();
    v57 = v19;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v19 = 136315138;
    v65(v9, v11, a1);
    v58 = v18;
    v20 = v9;
    v21 = a2;
    v22 = *(v6 + 8);
    v22(v11, a1);
    v23 = sub_1DF3B0FFC();
    v59 = v12;
    v24 = v6;
    v25 = v23;
    v27 = v26;
    v22(v20, a1);
    a2 = v21;
    v9 = v20;
    v28 = v25;
    v6 = v24;
    v29 = sub_1DF2D1250(v28, v27, aBlock);
    v27, v30, v31, v32, v33, v34, v35, v36;
    v37 = v57;
    v38 = v58;
    *(v57 + 1) = v29;
    v39 = v37;
    _os_log_impl(&dword_1DF2C3000, v38, v61, "Submitting CA event %s", v37, 0xCu);
    v40 = v60;
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x1E12D4520](v40, -1, -1);
    MEMORY[0x1E12D4520](v39, -1, -1);

    (*(v62 + 8))(v15, v59);
  }

  else
  {
    (*(v6 + 8))(v11, a1);

    (*(v62 + 8))(v15, v12);
  }

  v41 = v64;
  (*(a2 + 16))(a1, a2);
  v42 = a2;
  v44 = v43;
  v45 = sub_1DF3B0DBC();
  v44, v46, v47, v48, v49, v50, v51, v52;
  v65(v9, v41, a1);
  v53 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = a1;
  *(v54 + 24) = v42;
  (*(v6 + 32))(v54 + v53, v9, a1);
  aBlock[4] = sub_1DF2E4B78;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2E48F0;
  aBlock[3] = &block_descriptor_6;
  v55 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v55);
}

uint64_t sub_1DF2E45C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v41 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-v9];
  v11 = sub_1DF3B0D0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1DF2DABBC();
  v16 = *(v12 + 16);
  v43 = v11;
  v16(v14, v15, v11);
  v17 = *(v6 + 16);
  v44 = a1;
  v17(v10, a1, a2);
  v18 = sub_1DF3B0CFC();
  v19 = sub_1DF3B0E8C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = a3;
    v21 = v20;
    v40 = swift_slowAlloc();
    v45 = v40;
    *v21 = 136315138;
    v39 = v19;
    v22 = v41;
    v17(v41, v10, a2);
    v23 = *(v6 + 8);
    v23(v10, a2);
    v24 = sub_1DF3B0FFC();
    v26 = v25;
    v23(v22, a2);
    v27 = sub_1DF2D1250(v24, v26, &v45);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v21 + 4) = v27;
    _os_log_impl(&dword_1DF2C3000, v18, v39, "Responding CA event %s", v21, 0xCu);
    v35 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1E12D4520](v35, -1, -1);
    v36 = v21;
    a3 = v42;
    MEMORY[0x1E12D4520](v36, -1, -1);
  }

  else
  {
    (*(v6 + 8))(v10, a2);
  }

  (*(v12 + 8))(v14, v43);
  return (*(a3 + 24))(a2, a3);
}

id sub_1DF2E48F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1DF2D7818(0, &unk_1ECE310B0, 0x1E69E58C0);
    v4 = sub_1DF3B0D9C();
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1DF2E4998(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DF2E4ADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF2E4B24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DF2E4BC8()
{
  v1 = *(v0 + 112);
  v2 = sub_1DF2DE100();
  return (*(v2 + 40))(v1, &_s21AmbiguousPersonaEventVN, v2);
}

uint64_t sub_1DF2E4CA0(uint64_t a1, MCMAnalytics *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 == 0x70756B6F6F6CLL && a2 == 0xE600000000000000;
  if (v10 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x657461657263 && a2 == 0xE600000000000000 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 1819045746 && a2 == 0xE400000000000000 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 5;
  }

  else if (a1 == 0x6F666E692D746573 && a2 == 0xE800000000000000 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 6;
  }

  else if (a1 == 0x726961706572 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 7;
  }

  else
  {
    v12 = sub_1DF3B100C();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DF2E4F48(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x6F666E692D746573;
      }

      if (a1 == 7)
      {
        return 0x726961706572;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 1819045746;
    }

    else
    {
      return 0x6563616C706572;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x70756B6F6F6CLL;
      }

      if (a1 == 1)
      {
        return 0x657461657263;
      }

LABEL_18:
      type metadata accessor for MCMOperationType(0);
      result = sub_1DF3B101C();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x6574656C6564;
    }

    else
    {
      return 0x7465736572;
    }
  }
}

unint64_t sub_1DF2E5098()
{
  result = qword_1ECE310D0;
  if (!qword_1ECE310D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE310D8, &qword_1DF3BE128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE310D0);
  }

  return result;
}

void sub_1DF2E510C(sqlite3 *a1)
{
  nullsub_1();
  sub_1DF2E5164(v3);
  if (!v1)
  {
    nullsub_1();
    sub_1DF2E5518(v4);
    sub_1DF2E5D6C(a1);
  }
}

void sub_1DF2E5164(uint64_t a1)
{
  errmsg[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  errmsg[0] = 0;
  v6 = off_1F5A59F88;
  v7 = off_1F5A59F88();
  off_1F5A59F80();
  v9 = v8;
  v10 = sub_1DF3B0DFC();
  v9, v11, v12, v13, v14, v15, v16, v17;
  LODWORD(v9) = sqlite3_exec(v7, (v10 + 32), 0, 0, errmsg);

  v18 = errmsg[0];
  if (v9)
  {
    v67 = v6;
    if (errmsg[0])
    {
      v19 = sub_1DF3B0E2C();
      v21 = v20;
    }

    else
    {
      v21 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E75;
    }

    v22 = sub_1DF2DABBC();
    (*(v3 + 16))(v5, v22, v2);

    v23 = sub_1DF3B0CFC();
    v24 = sub_1DF3B0EAC();
    v21, v25, v26, v27, v28, v29, v30, v31;
    if (os_log_type_enabled(v23, v24))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v65 = v19;
      v34 = v33;
      v70 = v33;
      *v32 = 136315394;
      v68 = &_s8SettingsVN;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE310F0, &qword_1DF3BE2A0);
      v35 = sub_1DF3B0DDC();
      v37 = v36;
      v38 = sub_1DF2D1250(v35, v36, &v70);
      v66 = v2;
      v39 = v38;
      v37, v40, v41, v42, v43, v44, v45, v46;
      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      v47 = sub_1DF2D1250(v65, v21, &v70);
      v21, v48, v49, v50, v51, v52, v53, v54;
      *(v32 + 14) = v47;
      _os_log_impl(&dword_1DF2C3000, v23, v24, "Failed to execute statement [%s], error = %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v34, -1, -1);
      MEMORY[0x1E12D4520](v32, -1, -1);

      (*(v3 + 8))(v5, v66);
    }

    else
    {

      v21, v55, v56, v57, v58, v59, v60, v61;
      (*(v3 + 8))(v5, v2);
    }

    v62 = v67();
    v63 = sqlite3_extended_errcode(v62);
    sub_1DF2E66D4();
    swift_allocError();
    *v64 = v63;
    *(v64 + 4) = 6;
    swift_willThrow();
    v18 = errmsg[0];
  }

  sqlite3_free(v18);
}

void sub_1DF2E5518(uint64_t a1)
{
  errmsg[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  errmsg[0] = 0;
  v6 = off_1F5A5A4F0;
  v7 = off_1F5A5A4F0();
  off_1F5A5A4E8[0]();
  v9 = v8;
  v10 = sub_1DF3B0DFC();
  v9, v11, v12, v13, v14, v15, v16, v17;
  LODWORD(v9) = sqlite3_exec(v7, (v10 + 32), 0, 0, errmsg);

  v18 = errmsg[0];
  if (v9)
  {
    v67 = v6;
    if (errmsg[0])
    {
      v19 = sub_1DF3B0E2C();
      v21 = v20;
    }

    else
    {
      v21 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E75;
    }

    v22 = sub_1DF2DABBC();
    (*(v3 + 16))(v5, v22, v2);

    v23 = sub_1DF3B0CFC();
    v24 = sub_1DF3B0EAC();
    v21, v25, v26, v27, v28, v29, v30, v31;
    if (os_log_type_enabled(v23, v24))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v65 = v19;
      v34 = v33;
      v70 = v33;
      *v32 = 136315394;
      v68 = &_s22AmbiguousPersonaSchemaVN;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE310E8, &qword_1DF3BE298);
      v35 = sub_1DF3B0DDC();
      v37 = v36;
      v38 = sub_1DF2D1250(v35, v36, &v70);
      v66 = v2;
      v39 = v38;
      v37, v40, v41, v42, v43, v44, v45, v46;
      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      v47 = sub_1DF2D1250(v65, v21, &v70);
      v21, v48, v49, v50, v51, v52, v53, v54;
      *(v32 + 14) = v47;
      _os_log_impl(&dword_1DF2C3000, v23, v24, "Failed to execute statement [%s], error = %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v34, -1, -1);
      MEMORY[0x1E12D4520](v32, -1, -1);

      (*(v3 + 8))(v5, v66);
    }

    else
    {

      v21, v55, v56, v57, v58, v59, v60, v61;
      (*(v3 + 8))(v5, v2);
    }

    v62 = v67();
    v63 = sqlite3_extended_errcode(v62);
    sub_1DF2E66D4();
    swift_allocError();
    *v64 = v63;
    *(v64 + 4) = 6;
    swift_willThrow();
    v18 = errmsg[0];
  }

  sqlite3_free(v18);
}

void sub_1DF2E58CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  errmsg[1] = *MEMORY[0x1E69E9840];
  v78 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF3B0D0C();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  errmsg[0] = 0;
  v11 = *(a2 + 8);
  v79 = *(v11 + 16);
  v77 = v11 + 16;
  v12 = v79(a1, v11);
  (*(v11 + 8))(a1, v11);
  v14 = v13;
  v15 = sub_1DF3B0DFC();
  v14, v16, v17, v18, v19, v20, v21, v22;
  LODWORD(v12) = sqlite3_exec(v12, (v15 + 32), 0, 0, errmsg);

  v23 = errmsg[0];
  if (v12)
  {
    if (errmsg[0])
    {
      v75 = sub_1DF3B0E2C();
      v25 = v24;
    }

    else
    {
      v25 = 0xE700000000000000;
      v75 = 0x6E776F6E6B6E75;
    }

    v27 = v80;
    v26 = v81;
    v28 = v10;
    v29 = sub_1DF2DABBC();
    (*(v27 + 16))(v10, v29, v26);
    v30 = v78;
    (*(v78 + 16))(v7, v3, a1);

    v76 = v28;
    v31 = sub_1DF3B0CFC();
    LODWORD(v28) = sub_1DF3B0EAC();
    v25, v32, v33, v34, v35, v36, v37, v38;
    v74 = v28;
    v39 = v28;
    v40 = v31;
    if (os_log_type_enabled(v31, v39))
    {
      v41 = swift_slowAlloc();
      v73[1] = v3;
      v42 = v41;
      v73[0] = swift_slowAlloc();
      v83 = v73[0];
      *v42 = 136315394;
      DynamicType = swift_getDynamicType();
      swift_getMetatypeMetadata();
      v43 = sub_1DF3B0DDC();
      v45 = v44;
      (*(v30 + 8))(v7, a1);
      v46 = sub_1DF2D1250(v43, v45, &v83);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v54 = sub_1DF2D1250(v75, v25, &v83);
      v25, v55, v56, v57, v58, v59, v60, v61;
      *(v42 + 14) = v54;
      _os_log_impl(&dword_1DF2C3000, v40, v74, "Failed to execute statement [%s], error = %s", v42, 0x16u);
      v62 = v73[0];
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v62, -1, -1);
      MEMORY[0x1E12D4520](v42, -1, -1);

      (*(v80 + 8))(v76, v81);
    }

    else
    {

      v25, v63, v64, v65, v66, v67, v68, v69;
      (*(v27 + 8))(v76, v81);
      (*(v30 + 8))(v7, a1);
    }

    v70 = v79(a1, v11);
    v71 = sqlite3_extended_errcode(v70);
    sub_1DF2E66D4();
    swift_allocError();
    *v72 = v71;
    *(v72 + 4) = 6;
    swift_willThrow();
    v23 = errmsg[0];
  }

  sqlite3_free(v23);
}

void sub_1DF2E5D6C(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  ppStmt[0] = 0;
  v3 = off_1F5A5A578();
  v5 = v4;
  sub_1DF2E61BC(v3, v4, a1, ppStmt);
  if (v1)
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    if (ppStmt[0])
    {
      off_1F5A5A568(a1, ppStmt[0], &v14);
    }

    else
    {
      sub_1DF2E66D4();
      swift_allocError();
      *v13 = 1;
      *(v13 + 4) = 0;
      swift_willThrow();
    }
  }
}

void sub_1DF2E5E9C(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v7 = (*(*(a3 + 8) + 8))(a2);
  v9 = v8;
  sub_1DF2E61BC(v7, v8, a1, v18);
  if (v3)
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    if (v18[0])
    {
      (*(a3 + 56))(a1, v18[0], a2, a3);
    }

    else
    {
      sub_1DF2E66D4();
      swift_allocError();
      *v17 = 1;
      *(v17 + 4) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1DF2E5FF0()
{
  result = off_1F5A5A548(&_s16AmbiguousPersonaVN, &off_1F5A5A530);
  if (!v0)
  {
    v2 = off_1F5A5A540[0]();
    result = sqlite3_finalize(v2);
    if (result)
    {
      v3 = off_1F5A5A580();
      v4 = sqlite3_extended_errcode(v3);
      sub_1DF2E66D4();
      swift_allocError();
      *v5 = v4;
      *(v5 + 4) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1DF2E60F0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v2)
  {
    v6 = (*(a2 + 16))(a1, a2);
    result = sqlite3_finalize(v6);
    if (result)
    {
      v7 = (*(*(a2 + 8) + 16))(a1);
      v8 = sqlite3_extended_errcode(v7);
      sub_1DF2E66D4();
      swift_allocError();
      *v9 = v8;
      *(v9 + 4) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1DF2E61BC(uint64_t a1, uint64_t a2, sqlite3 *db, sqlite3_stmt **ppStmt)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1DF3B0F8C();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }

    return sub_1DF3B0F8C();
  }

  *zSql = a1;
  v10 = a2 & 0xFFFFFFFFFFFFFFLL;
  v5 = zSql;
LABEL_6:
  result = sqlite3_prepare_v3(db, v5, -1, 0, ppStmt, 0);
  if (result)
  {
    v7 = sqlite3_extended_errcode(db);
    sub_1DF2E66D4();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF2E62A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4();
  if (sqlite3_reset(v5))
  {
    v6 = 4;
  }

  else
  {
    v7 = (v4)(a1, a2);
    result = sqlite3_clear_bindings(v7);
    if (!result)
    {
      return result;
    }

    v6 = 5;
  }

  v9 = (*(*(a2 + 8) + 16))(a1);
  v10 = sqlite3_extended_errcode(v9);
  sub_1DF2E66D4();
  swift_allocError();
  *v11 = v10;
  *(v11 + 4) = v6;
  return swift_willThrow();
}

uint64_t sub_1DF2E637C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  result = sqlite3_step(v4);
  if (result != 101)
  {
    v6 = (*(*(a2 + 8) + 16))(a1);
    v7 = sqlite3_extended_errcode(v6);
    sub_1DF2E66D4();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF2E6460(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = *(a5 + 8);
    v16 = (*(v7 + 16))(a4, v7);
    result = sqlite3_bind_null(v16, a3);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v7 = *(a5 + 8);
  v8 = (*(v7 + 16))(a4, v7);
  if (qword_1ECE352A8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECE35430;
  v10 = sub_1DF3B0DFC();
  v11 = sqlite3_bind_text(v8, a3, (v10 + 32), -1, v9);

  if (v11)
  {
LABEL_5:
    v13 = (*(*(v7 + 8) + 16))(a4);
    v14 = sqlite3_extended_errcode(v13);
    sub_1DF2E66D4();
    swift_allocError();
    *v15 = v14;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF2E65D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x100000000) != 0)
  {
    v7 = *(a4 + 8);
    v10 = (*(v7 + 16))(a3, v7);
    result = sqlite3_bind_null(v10, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = a1;
  v7 = *(a4 + 8);
  v8 = (*(v7 + 16))(a3, v7);
  result = sqlite3_bind_int(v8, a2, v6);
  if (result)
  {
LABEL_5:
    v11 = (*(*(v7 + 8) + 16))(a3);
    v12 = sqlite3_extended_errcode(v11);
    sub_1DF2E66D4();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1DF2E66D4()
{
  result = qword_1ECE310E0;
  if (!qword_1ECE310E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE310E0);
  }

  return result;
}

uint64_t _s14descr1F5A59CC1C10StatementsV14StatementErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 5))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 4);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s14descr1F5A59CC1C10StatementsV14StatementErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 4) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF2E67DC(char *zSql)
{
  v2 = *(v1 + 16);
  result = sqlite3_prepare_v3(v2, zSql, -1, 0, *(v1 + 24), 0);
  if (result)
  {
    v4 = sqlite3_extended_errcode(v2);
    sub_1DF2E66D4();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t MCMGetContainerPartForName(uint64_t a1)
{
  v2 = -1;
  v3 = gContainerPartNames;
  do
  {
    v4 = *v3++;
    v5 = [v4 isEqualToString:a1];
    v6 = v2 + 1;
    if (v5)
    {
      break;
    }
  }

  while (v2++ != 5);
  if (v5)
  {
    return v6;
  }

  else
  {
    return 7;
  }
}

void sub_1DF2EB2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  if (a11)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1DF2EB2F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DF2EB2F4);
  }

  objc_terminate();
}

void sub_1DF2F8D9C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void _containermanagerd_main(int a1, char *const *a2, uint64_t a3)
{
  v137 = *MEMORY[0x1E69E9840];
  v108 = 91;
  [MEMORY[0x1E696ABC0] _setFileNameLocalizationEnabled:0];
  objc_setExceptionPreprocessor(_containermanagerd_exception_preprocessor);
  _CFPrefsSetDirectModeEnabled();
  v92 = MCMSharedFastWorkloop();
  v93 = MCMSharedSlowWorkloop();
  v94 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.listener", 0, v92);
  context = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MCMRuntimeState);
  [(MCMRuntimeState *)v6 restore];
  v96 = v6;
  [(MCMRuntimeState *)v6 reset];
  v7 = +[MCMPOSIXUser currentPOSIXUser];
  v97 = v7;
  if (v7)
  {
    if (_containermanagerd_posix_user_has_home_dir(v7, "current", &v108))
    {
      getpid();
      v8 = memorystatus_control();
      if (v8)
      {
        v9 = container_log_handle_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v44 = strerror(v8);
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v44;
          _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Error elevating inactive jetsam priority: %{public}s", &buf, 0xCu);
        }
      }

      else
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v129 = 0x3032000000;
        v130 = __Block_byref_object_copy__1060;
        v131 = __Block_byref_object_dispose__1061;
        v132 = 0;
        v10 = dispatch_get_global_queue(17, 0);
        v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10);
        v12 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v11;

        v13 = dispatch_time(0, 240000000000);
        dispatch_source_set_timer(*(*(&buf + 1) + 40), v13, 0xFFFFFFFFFFFFFFFFLL, 0x4A817C800uLL);
        v14 = *(*(&buf + 1) + 40);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___containermanagerd_main_block_invoke;
        handler[3] = &unk_1E86AFAD0;
        handler[4] = &buf;
        dispatch_source_set_event_handler(v14, handler);
        dispatch_activate(*(*(&buf + 1) + 40));
        _Block_object_dispose(&buf, 8);
      }

      v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
      v99 = @"normal";
      v100 = @"fixed";
      v15 = @"root";
      v103 = @"no";
      v104 = @"_installd";
      v16 = MEMORY[0x1E69E98E0];
      v101 = @"global";
      v102 = @"global";
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v17 = getopt_long_only(a1, a2, "r:u:b:B:s:S:c:", &_containermanagerd_main_opts, 0);
            if (v17 != 99)
            {
              break;
            }

            if (os_variant_has_internal_content())
            {
              [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
              v98 = v18 = v98;
              goto LABEL_31;
            }
          }

          if (v17 <= 106)
          {
            break;
          }

          if (v17 > 114)
          {
            if (v17 == 115)
            {
              [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
              v102 = v18 = v102;
            }

            else
            {
              if (v17 != 117)
              {
                goto LABEL_43;
              }

              [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
              v100 = v18 = v100;
            }
          }

          else if (v17 == 107)
          {
            [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
            v103 = v18 = v103;
          }

          else
          {
            if (v17 != 114)
            {
              goto LABEL_43;
            }

            [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
            v99 = v18 = v99;
          }

LABEL_31:
        }

        if (v17 <= 82)
        {
          if (v17 != 66)
          {
            if (v17 != -1)
            {
LABEL_43:
              v108 = 148;
              _containermanagerd_usage();
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v21 = 0;
              v27 = 0;
              goto LABEL_44;
            }

            v19 = [MCMStaticConfiguration alloc];
            v20 = +[MCMStaticConfiguration defaultPlistDirectoryURL];
            v21 = [(MCMStaticConfiguration *)v19 initFromPlistAtPathOrName:v98 defaultPlistDirectoryURL:v20];

            v22 = container_log_handle_for_category();
            v23 = os_signpost_id_make_with_pointer(v22, v21);

            v24 = container_log_handle_for_category();
            v25 = v24;
            if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
            {
              LODWORD(buf) = 138477827;
              *(&buf + 4) = v98;
              _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "LoadConfiguration", " path=%{private, signpost.description:attribute}@ ", &buf, 0xCu);
            }

            v106 = 0;
            v26 = [v21 loadWithError:&v106];
            v27 = v106;
            v28 = container_log_handle_for_category();
            v29 = v28;
            if (v23 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
            {
              v30 = [v21 sourceFileURL];
              v31 = [v30 path];
              LODWORD(buf) = 138477827;
              *(&buf + 4) = v31;
              _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v29, OS_SIGNPOST_INTERVAL_END, v23, "LoadConfiguration", " path=%{private, signpost.description:attribute}@ ", &buf, 0xCu);
            }

            if ((v26 & 1) == 0)
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              has_home_dir = 0;
              v108 = [v27 type];
              goto LABEL_45;
            }

            if ([(__CFString *)v99 isEqualToString:@"privileged"])
            {
              if (!geteuid())
              {
                v32 = 0;
                goto LABEL_62;
              }

              v45 = *MEMORY[0x1E69E9848];
              v46 = getprogname();
              fprintf(v45, "ERROR: %s must be run as root when in privileged mode\n", v46);
LABEL_58:
              v33 = 0;
              v34 = 0;
LABEL_59:
              v35 = 0;
LABEL_44:
              has_home_dir = 0;
LABEL_45:

              objc_autoreleasePoolPop(context);
              if (has_home_dir)
              {
                v37 = v92;
                v38 = v93;
                v39 = v94;
                v126[0] = 0;
                v126[1] = v126;
                v126[2] = 0x3032000000;
                v126[3] = __Block_byref_object_copy__1060;
                v126[4] = __Block_byref_object_dispose__1061;
                v127 = 0;
                v40 = objc_autoreleasePoolPush();
                if (_os_feature_enabled_impl())
                {
                  v41 = containermanager_copy_global_configuration();
                  if ([v41 runmode])
                  {
                  }

                  else
                  {
                    v42 = containermanager_copy_global_configuration();
                    v43 = [v42 isInternalImage];

                    if (v43 && _containermanagerd_setup_log_replication_onceToken != -1)
                    {
                      dispatch_once(&_containermanagerd_setup_log_replication_onceToken, &__block_literal_global_1063);
                    }
                  }
                }

                v63 = +[MCMUserIdentitySharedCache sharedInstance];
                v64 = container_log_handle_for_category();
                v65 = os_signpost_id_make_with_pointer(v64, &_containermanagerd_start_xpc_userListener);

                v66 = containermanager_copy_global_configuration();
                v67 = [v66 runmode] == 3;

                if (!v67)
                {
                  aBlock = 0;
                  p_aBlock = &aBlock;
                  v111 = 0x3032000000;
                  v112 = __Block_byref_object_copy__1060;
                  v113 = __Block_byref_object_dispose__1061;
                  v114 = os_transaction_create();
                  *&buf = MEMORY[0x1E69E9820];
                  *(&buf + 1) = 3221225472;
                  v129 = ___containermanagerd_start_xpc_block_invoke;
                  v130 = &unk_1E86AFAF8;
                  v83 = v39;
                  v131 = v83;
                  v132 = v37;
                  v136 = v65;
                  v84 = v63;
                  v133 = v84;
                  v134 = v126;
                  v135 = &aBlock;
                  v85 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &buf);
                  dispatch_async(v83, v85);
                  v86 = containermanager_copy_global_configuration();
                  v105 = [v86 runmode] == 4;

                  if (!v105)
                  {
                    v124[0] = 0;
                    v124[1] = v124;
                    v124[2] = 0x3032000000;
                    v124[3] = __Block_byref_object_copy__1060;
                    v124[4] = __Block_byref_object_dispose__1061;
                    v125 = os_transaction_create();
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = ___containermanagerd_start_xpc_block_invoke_2;
                    block[3] = &unk_1E86AFB20;
                    v123 = v65;
                    v119 = v84;
                    v121 = v126;
                    v87 = v83;
                    v120 = v87;
                    v122 = v124;
                    v88 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
                    dispatch_async(v87, v88);

                    _Block_object_dispose(v124, 8);
                  }

                  _Block_object_dispose(&aBlock, 8);
                }

                aBlock = MEMORY[0x1E69E9820];
                p_aBlock = 3221225472;
                v111 = ___containermanagerd_start_xpc_block_invoke_3;
                v112 = &unk_1E86AFB70;
                v68 = v39;
                v113 = v68;
                v117 = v126;
                v69 = v37;
                v114 = v69;
                v70 = v38;
                v115 = v70;
                v71 = v63;
                v116 = v71;
                v72 = _Block_copy(&aBlock);
                v73 = containermanager_copy_global_configuration();
                v74 = [v73 runmode] == 0;

                if (v74)
                {
                  v75 = v72[2](v72, "com.apple.containermanagerd.system");
                  v76 = _containermanagerd_start_xpc_systemListener;
                  _containermanagerd_start_xpc_systemListener = v75;
                }

                v77 = containermanager_copy_global_configuration();
                v78 = [v77 runmode] == 0;

                if (!v78)
                {
                  v79 = v72[2](v72, "com.apple.containermanagerd");
                  v80 = _containermanagerd_start_xpc_userListener;
                  _containermanagerd_start_xpc_userListener = v79;
                }

                objc_autoreleasePoolPop(v40);
                CFRunLoopRun();
                _Block_object_dispose(v126, 8);
              }

LABEL_74:
              _containermanagerd_start_xpc_with_permanent_error(v94, v108);
            }

            if ([(__CFString *)v99 isEqualToString:@"agent"])
            {
              if (![v97 isRoleUser] || (objc_msgSend(v97, "hasUseableHomeDirectory") & 1) != 0 || (objc_msgSend(v97, "isRoot") & 1) != 0)
              {
                v32 = 2;
LABEL_62:
                if (([(__CFString *)v100 isEqualToString:@"none"]& 1) != 0)
                {
                  v47 = 0;
                }

                else if (([(__CFString *)v100 isEqualToString:@"current"]& 1) != 0)
                {
                  v47 = 1;
                }

                else
                {
                  if (([(__CFString *)v100 isEqualToString:@"fixed"]& 1) == 0)
                  {
                    v54 = *MEMORY[0x1E69E9848];
                    v55 = v100;
                    fprintf(v54, "ERROR: Unrecognized user container mode: [%s]\n", [(__CFString *)v100 UTF8String]);
                    _containermanagerd_usage();
                    goto LABEL_58;
                  }

                  v47 = 2;
                }

                if (([(__CFString *)v101 isEqualToString:@"none"]& 1) != 0)
                {
                  v48 = 0;
                }

                else if (([(__CFString *)v101 isEqualToString:@"global"]& 1) != 0)
                {
                  v48 = 1;
                }

                else if (([(__CFString *)v101 isEqualToString:@"per-user"]& 1) != 0)
                {
                  v48 = 2;
                }

                else
                {
                  if (([(__CFString *)v101 isEqualToString:@"proxy"]& 1) == 0)
                  {
                    v81 = *MEMORY[0x1E69E9848];
                    v82 = v101;
                    fprintf(v81, "ERROR: Unrecognized bundle container mode: [%s]\n", [(__CFString *)v101 UTF8String]);
                    _containermanagerd_usage();
                    goto LABEL_58;
                  }

                  v48 = 3;
                }

                if (v104)
                {
                  v49 = [MCMPOSIXUser posixUserWithName:v104];
                }

                else
                {
                  v49 = v97;
                }

                v34 = v49;
                if (!v49)
                {
                  v34 = v97;
                  v51 = container_log_handle_for_category();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v104;
                    _os_log_error_impl(&dword_1DF2C3000, v51, OS_LOG_TYPE_ERROR, "Cannot find user [%{public}@] specified for bundle container owner, continuing without bundle container support", &buf, 0xCu);
                  }

                  v48 = 0;
                }

                if (([(__CFString *)v102 isEqualToString:@"none"]& 1) != 0)
                {
                  v52 = 0;
                }

                else if (([(__CFString *)v102 isEqualToString:@"global"]& 1) != 0)
                {
                  v52 = 1;
                }

                else if (([(__CFString *)v102 isEqualToString:@"per-user"]& 1) != 0)
                {
                  v52 = 2;
                }

                else
                {
                  if (([(__CFString *)v102 isEqualToString:@"proxy"]& 1) == 0)
                  {
                    v89 = *MEMORY[0x1E69E9848];
                    v90 = v102;
                    fprintf(v89, "ERROR: Unrecognized system container mode: [%s]\n", [(__CFString *)v102 UTF8String]);
                    _containermanagerd_usage();
                    v33 = 0;
                    goto LABEL_59;
                  }

                  v52 = 3;
                }

                if (v15)
                {
                  v53 = [MCMPOSIXUser posixUserWithName:v15];
                }

                else
                {
                  v53 = v97;
                }

                v33 = v53;
                if (!v53)
                {
                  v33 = v97;
                  v59 = container_log_handle_for_category();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v15;
                    _os_log_error_impl(&dword_1DF2C3000, v59, OS_LOG_TYPE_ERROR, "Cannot find user [%{public}@] specified for system container owner, continuing without system container support", &buf, 0xCu);
                  }

                  v52 = 0;
                }

                if (v103)
                {
                  v60 = [(__CFString *)v103 isEqualToString:@"yes"];
                }

                else
                {
                  v60 = 0;
                }

                LOBYTE(v91) = v60;
                v35 = [[MCMGlobalConfiguration alloc] initWithStaticConfig:v21 runMode:v32 userContainerMode:v47 bundleContainerMode:v48 bundleContainerOwner:v34 systemContainerMode:v52 systemContainerOwner:v33 kernelUpcallEnabled:v91, v92, v93, v94, context];
                v61 = _gGlobalConfiguration;
                _gGlobalConfiguration = v35;

                v62 = [v21 defaultUser];
                has_home_dir = _containermanagerd_posix_user_has_home_dir(v62, "default", &v108);

                goto LABEL_45;
              }

              v56 = container_log_handle_for_category();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v97;
                _os_log_impl(&dword_1DF2C3000, v56, OS_LOG_TYPE_DEFAULT, "Starting up in PROXY mode because current user %@ does not have a home directory.", &buf, 0xCu);
              }
            }

            else if (([(__CFString *)v99 isEqualToString:@"proxy"]& 1) == 0)
            {
              if (([(__CFString *)v99 isEqualToString:@"sync"]& 1) != 0)
              {
                v32 = 4;
              }

              else
              {
                if (([(__CFString *)v99 isEqualToString:@"normal"]& 1) == 0)
                {
                  v57 = *MEMORY[0x1E69E9848];
                  v58 = v99;
                  fprintf(v57, "ERROR: Unrecognized run mode: [%s]\n", [(__CFString *)v99 UTF8String]);
                  _containermanagerd_usage();
                  goto LABEL_58;
                }

                v32 = 1;
              }

              goto LABEL_62;
            }

            v32 = 3;
            goto LABEL_62;
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];

          v104 = v18;
          if (([(__CFString *)v18 isEqualToString:@"-"]& 1) != 0)
          {
            v104 = 0;
            goto LABEL_31;
          }
        }

        else
        {
          if (v17 != 83)
          {
            if (v17 != 98)
            {
              goto LABEL_43;
            }

            [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
            v101 = v18 = v101;
            goto LABEL_31;
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];

          v15 = v18;
          if (([(__CFString *)v18 isEqualToString:@"-"]& 1) != 0)
          {
            v15 = 0;
            goto LABEL_31;
          }
        }
      }
    }
  }

  else
  {
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = geteuid();
      _os_log_fault_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_FAULT, "Could not get user details for current uid: %u", &buf, 8u);
    }
  }

  objc_autoreleasePoolPop(context);
  goto LABEL_74;
}

void sub_1DF2FD274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t _containermanagerd_posix_user_has_home_dir(void *a1, uint64_t a2, uint64_t *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v23 = 0;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v5 unvalidatedHomeDirectoryURL];
  v22 = 0;
  v8 = [v6 itemAtURL:v7 followSymlinks:1 exists:&v23 + 1 isDirectory:&v23 error:&v22];
  v9 = v22;

  if (v8)
  {
    if (HIBYTE(v23) != 1 || (v23 & 1) == 0)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = [v5 unvalidatedHomeDirectoryURL];
        v21 = [v20 path];
        *buf = 136315394;
        v25 = a2;
        v26 = 2112;
        v27 = v21;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "%s user home directory [%@] not found or not a directory.", buf, 0x16u);
      }

      v13 = 102;
      goto LABEL_11;
    }

    v10 = [v5 homeDirectoryURL];

    if (v10)
    {
      v11 = 1;
      goto LABEL_13;
    }

    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v5 unvalidatedHomeDirectoryURL];
      v16 = [v15 path];
      *buf = 136315394;
      v25 = a2;
      v26 = 2112;
      v27 = v16;
      v17 = "Could not realpath %s home directory [%@]";
      v18 = v12;
      v19 = 22;
LABEL_17:
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    }
  }

  else
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v5 unvalidatedHomeDirectoryURL];
      v16 = [v15 path];
      *buf = 136315650;
      v25 = a2;
      v26 = 2112;
      v27 = v16;
      v28 = 2114;
      v29 = v9;
      v17 = "Failed to check for existence of %s user home directory [%@]: %{public}@";
      v18 = v12;
      v19 = 32;
      goto LABEL_17;
    }
  }

  v13 = 103;
LABEL_11:

  v11 = 0;
  if (a3)
  {
    *a3 = v13;
  }

LABEL_13:

  return v11;
}

uint64_t __Block_byref_object_copy__1060(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1061(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void ___containermanagerd_main_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  getpid();
  v2 = memorystatus_control();
  if (v2)
  {
    v3 = v2;
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446210;
      v8 = strerror(v3);
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "Error de-elevating inactive jetsam priority: %{public}s", &v7, 0xCu);
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

uint64_t _containermanagerd_usage()
{
  v0 = getprogname();
  printf("usage:\n%s <options>\n", v0);
  puts("\tOptions:\n");
  printf("\t\t[--runmode <%s|%s|%s|%s|%s>]\n", [@"privileged" UTF8String], objc_msgSend(@"normal", "UTF8String"), objc_msgSend(@"agent", "UTF8String"), objc_msgSend(@"proxy", "UTF8String"), objc_msgSend(@"sync", "UTF8String"));
  printf("\t\t\tSets the daemon run mode. Default is [%s].\n\n", [@"normal" UTF8String]);
  printf("\t\t[--user-container-mode <%s|%s|%s>]\n", [@"none" UTF8String], objc_msgSend(@"current", "UTF8String"), objc_msgSend(@"fixed", "UTF8String"));
  printf("\t\t\tSets the user container mode. Default is [%s].\n\n", [@"fixed" UTF8String]);
  printf("\t\t[--bundle-container-mode <%s|%s|%s|%s>]\n", [@"none" UTF8String], objc_msgSend(@"global", "UTF8String"), objc_msgSend(@"per-user", "UTF8String"), objc_msgSend(@"proxy", "UTF8String"));
  printf("\t\t\tSets the bundle container mode. Default is [%s].\n\n", [@"global" UTF8String]);
  puts("\t\t[--bundle-container-owner <username>]");
  v1 = [@"_installd" UTF8String];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = "<current user>";
  }

  printf("\t\t\tSets the bundle container owner when mode is global. Default is [%s].\n\n", v2);
  printf("\t\t[--system-container-mode <%s|%s|%s|%s>]\n", [@"none" UTF8String], objc_msgSend(@"global", "UTF8String"), objc_msgSend(@"per-user", "UTF8String"), objc_msgSend(@"proxy", "UTF8String"));
  printf("\t\t\tSets the system container mode. Default is [%s].\n\n", [@"global" UTF8String]);
  puts("\t\t[--system-container-owner <username>]");
  v3 = [@"root" UTF8String];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "<current user>";
  }

  printf("\t\t\tSets the system container owner when mode is global. Default is [%s].\n\n", v4);
  return printf("\t\t[--kernel-upcall <%s|%s>]\n", [@"no" UTF8String], objc_msgSend(@"yes", "UTF8String"));
}

void ___containermanagerd_start_xpc_block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v64 = v2;
  v6 = v4;
  v7 = container_log_handle_for_category();
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v3, "StartingUp", "", buf, 2u);
  }

  v9 = objc_autoreleasePoolPush();
  if (setiopolicy_np(9, 0, 1))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v61 = *__error();
      *buf = 67109120;
      *&buf[4] = v61;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Unable to set low disk space io policy: %{darwin.errno}d", buf, 8u);
    }
  }

  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "MobileContainerManager-725.40.12~15";
    *&buf[12] = 2082;
    *&buf[14] = "Oct 23 2025";
    *&buf[22] = 2082;
    v73 = "06:43:23";
    _os_log_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEFAULT, "containermanagerd (%{public}s) built at %{public}s %{public}s started", buf, 0x20u);
  }

  v12 = _CFCopySystemVersionDictionary();
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
    if (v14)
    {
      v15 = [v13 objectForKeyedSubscript:@"ReleaseType"];
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEFAULT, "Current build version (%@ / %@)", buf, 0x16u);
      }
    }

    else
    {
      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not get current build string", buf, 2u);
      }
    }
  }

  else
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not get current build info", buf, 2u);
    }
  }

  v17 = containermanager_copy_global_configuration();
  v18 = [v17 kernelUpcallEnabled];

  if (v18)
  {
    v19 = v5;
    v20 = objc_opt_class();
    v21 = v19;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __conmanupcall_block_invoke;
    v73 = &unk_1E86B1200;
    v75 = &v68;
    v76 = v20;
    v74 = v21;
    v22 = conmanupcall_onceToken;
    v23 = v21;
    if (v22 != -1)
    {
      dispatch_once(&conmanupcall_onceToken, buf);
    }

    v24 = *(v69 + 24);

    _Block_object_dispose(&v68, 8);
    if ((v24 & 1) == 0)
    {
      _os_crash();
      __break(1u);
      return;
    }
  }

  v25 = containermanager_copy_global_configuration();
  v26 = [v25 libraryRepair];
  v68 = 0;
  v27 = [v26 createPathsIfNecessaryWithError:&v68];
  v28 = v68;

  if ((v27 & 1) == 0)
  {
    v40 = container_log_handle_for_category();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed creating working directories: %{public}@", buf, 0xCu);
    }

    v41 = 0;
    goto LABEL_44;
  }

  v29 = containermanager_copy_global_configuration();
  v30 = [v29 dispositionForContainerClass:2];

  if (v30 == 1)
  {
    v31 = v5;
    v32 = [v6 defaultUserIdentity];
    v33 = [v6 libraryRepairForUserIdentity:v32];
    v67 = v28;
    v34 = [v33 createPathsIfNecessaryWithError:&v67];
    v35 = v67;

    if ((v34 & 1) == 0)
    {
      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v35;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed creating working directories: %{public}@", buf, 0xCu);
      }

      v41 = 0;
      v28 = v35;
      v5 = v31;
      goto LABEL_44;
    }

    v28 = v35;
    v5 = v31;
  }

  v36 = containermanager_copy_global_configuration();
  v37 = [v36 dispositionForContainerClass:2];

  if (v37 == 1)
  {
    v66 = v28;
    v38 = [MCMCodeSigningMapping codeSignMappingWithError:&v66];
    v39 = v66;

    if (!v38)
    {
      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v39;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed to connect codesign mapping database: %{public}@", buf, 0xCu);
      }

      v41 = 0;
      v28 = v39;
      goto LABEL_44;
    }

    v63 = v5;
    objc_storeStrong(&gCodeSigningMapping, v38);
    v28 = v39;
  }

  else
  {
    v63 = v5;
    v38 = 0;
  }

  v42 = [MCMContainerCache alloc];
  v43 = [v38 childParentMapCache];
  v44 = objc_opt_class();
  v65 = 0;
  v45 = [(MCMContainerCache *)v42 initWithUserIdentityCache:v6 childParentMapCache:v43 classCacheClass:v44 cacheEntryClass:objc_opt_class() error:&v65];
  v40 = v65;

  if (v45)
  {
    v46 = gContainerCache;
    gContainerCache = v45;
    v62 = v45;

    v47 = [MCMSystemChangeMonitor alloc];
    *buf = gContainerCache;
    v48 = v6;
    v49 = v9;
    v50 = containermanager_copy_global_configuration();
    v51 = [v50 classPathCache];
    *&buf[8] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:2];
    v53 = [(MCMSystemChangeMonitor *)v47 initWithQueue:v64 flushables:v52];
    v54 = gMCMChangeMonitor;
    gMCMChangeMonitor = v53;

    v9 = v49;
    v6 = v48;
    [v48 addUserIdentityCacheObserver:gMCMChangeMonitor];

    v41 = 1;
  }

  else
  {
    v55 = container_log_handle_for_category();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "Failed to connect container cache database: %{public}@", buf, 0xCu);
    }

    v41 = 0;
  }

  v5 = v63;
LABEL_44:

  objc_autoreleasePoolPop(v9);
  if ((v41 & 1) == 0)
  {
    v56 = [[MCMError alloc] initWithErrorType:91];
    v57 = *(*(a1 + 56) + 8);
    v58 = *(v57 + 40);
    *(v57 + 40) = v56;

    _containermanagerd_self_destruct(*(a1 + 32));
  }

  v59 = *(*(a1 + 64) + 8);
  v60 = *(v59 + 40);
  *(v59 + 40) = 0;
}

void ___containermanagerd_start_xpc_block_invoke_2(uint64_t a1)
{
  v113 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v88 = +[MCMClientConnection sharedClientConnection];
  v5 = v3;
  v6 = containermanager_copy_global_configuration();
  v7 = [v6 managedPathRegistry];
  v8 = [v7 containermanagerLibrary];

  v9 = containermanager_copy_global_configuration();
  LODWORD(v7) = [v9 runmode];

  v87 = v2;
  if (v7)
  {
    v10 = [v5 defaultUserIdentity];
    v11 = [v5 managedUserPathRegistryForUserIdentity:v10];
    v12 = [v11 containermanagerUserLibrary];

    v8 = v12;
  }

  v13 = a1;
  v14 = [v8 url];
  v15 = [v14 URLByAppendingPathComponent:@"boot.txt" isDirectory:0];

  v16 = v15;
  *&out_token = 0;
  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:container_internal_get_first_boot_uuid() length:0];
  v18 = +[MCMFileManager defaultManager];
  *v93 = 0;
  v89 = v16;
  v19 = [v18 readDataFromURL:v16 options:2 error:v93];
  v20 = *v93;

  v21 = container_log_handle_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v102 = v89;
    v103 = 2112;
    v104 = v17;
    v105 = 2112;
    v106 = v19;
    v107 = 2112;
    v108 = v20;
    _os_log_debug_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEBUG, "First boot check with [%@]; uuid = [%@], marker = [%@], error = %@", buf, 0x2Au);
  }

  if (v19)
  {
    v22 = [v17 isEqualToData:v19] ^ 1;
  }

  else
  {
    v22 = 1;
  }

  v23 = v88;

  v86 = v22;
  if (v22)
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_DEBUG, "containermanagerd performing first boot initialization", buf, 2u);
    }

    v25 = container_log_handle_for_category();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FirstBootSetup", "", buf, 2u);
    }

    [v88 rebootContainerManagerSetup];
    v26 = container_log_handle_for_category();
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FirstBootSetup", "", buf, 2u);
    }

    v27 = v89;
    *&out_token = 0;
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:container_internal_get_first_boot_uuid() length:0];
    v29 = +[MCMFileManager defaultManager];
    v30 = [v29 dataWritingOptionsForFileAtURL:v27];

    v31 = +[MCMFileManager defaultManager];
    *v93 = 0;
    v32 = [v31 writeData:v28 toURL:v27 options:v30 mode:384 error:v93];
    v33 = *v93;

    v34 = container_log_handle_for_category();
    v35 = v34;
    if (v32)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v102 = v27;
        v103 = 2112;
        v104 = v28;
        _os_log_debug_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_DEBUG, "First boot set complete with [%@]; uuid = [%@]", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v102 = v27;
      v103 = 2112;
      v104 = v33;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Could not write boot marker at [%@]; error = %@", buf, 0x16u);
    }

    v23 = v88;
  }

  v36 = container_log_handle_for_category();
  if (os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v36, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BootSetup", "", buf, 2u);
  }

  [v23 containerManagerSetup];
  v37 = containermanager_copy_global_configuration();
  v38 = [v37 dispositionForContainerClass:2];

  v39 = v22;
  v40 = v87;
  v41 = v4;
  v42 = v13;
  if (v38 != 1)
  {
    goto LABEL_41;
  }

  v85 = v41;
  v43 = [gContainerCache userIdentityCache];
  v44 = [v43 userIdentityForPersonalPersona];
  if (v44)
  {
    v45 = v44;
    v82 = v43;
    v83 = v5;
    v84 = v42;
    v46 = [MCMClientIdentity privilegedClientIdentityWithUserIdentity:v44 kernel:1];
    v47 = +[MCMUserIdentitySharedCache sharedInstance];
    v48 = [MCMContainerFactory alloc];
    v81 = v46;
    v91 = [(MCMContainerFactory *)v48 initWithContainerCache:gContainerCache clientIdentity:v46 userIdentityCache:v47];
    v49 = containermanager_copy_global_configuration();
    v50 = [v49 staticConfig];
    v51 = [v50 configForContainerClass:2];

    v111 = 0u;
    v112 = 0u;
    out_token = 0u;
    v110 = 0u;
    v52 = +[MCMEntitlementBypassList sharedBypassList];
    v53 = [v52 wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet];

    obj = v53;
    v54 = [v53 countByEnumeratingWithState:&out_token objects:buf count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v110;
      do
      {
        v57 = 0;
        do
        {
          if (*v110 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&out_token + 1) + 8 * v57);
          v98 = 1;
          v59 = [MCMContainerIdentity containerIdentityWithUserIdentity:v45 identifier:v58 containerConfig:v51 platform:dyld_get_active_platform() userIdentityCache:v47 error:&v98];
          if (v59)
          {
            v92 = 0;
            v60 = [(MCMContainerFactory *)v91 containerForContainerIdentity:v59 createIfNecessary:1 error:&v92];
            v61 = v92;
            v62 = v61;
            if (!v60)
            {
              v98 = [v61 type];
            }
          }

          if (v98 != 1)
          {
            v63 = container_log_handle_for_category();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *v93 = 138543618;
              *&v93[4] = v58;
              v94 = 2048;
              v95 = v98;
              _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "_create_well_known_containers: Failed for bundleID '%{public}@' with error: %llu", v93, 0x16u);
            }
          }

          ++v57;
        }

        while (v55 != v57);
        v55 = [obj countByEnumeratingWithState:&out_token objects:buf count:16];
      }

      while (v55);
    }

    v5 = v83;
    v42 = v84;
    v40 = v87;
    v23 = v88;
    v41 = v85;
    v39 = v86;
LABEL_41:
    v64 = containermanager_copy_global_configuration();
    v65 = [v64 dispositionForContainerClass:13];

    if (v65 == 1)
    {
      v98 = "systemgroup.com.apple.installcoordinationd";
      v99 = "/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.installcoordinationd";
      v100 = 0;
      v66 = sandbox_set_user_state_item_with_persona();
      if (v66)
      {
        v67 = v66;
        v68 = container_log_handle_for_category();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *v93 = 136315650;
          *&v93[4] = v98;
          v94 = 2080;
          v95 = v99;
          v96 = 1024;
          v97 = v67;
          _os_log_error_impl(&dword_1DF2C3000, v68, OS_LOG_TYPE_ERROR, "Failed to set systemgroup mapping for identifier %s, path: %s : %d", v93, 0x1Cu);
        }
      }
    }

    goto LABEL_49;
  }

  v69 = container_log_handle_for_category();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v69, OS_LOG_TYPE_ERROR, "_create_well_known_containers: Unable to find user identity!", buf, 2u);
  }

LABEL_49:
  v70 = container_log_handle_for_category();
  if (os_signpost_enabled(v70))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v70, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BootSetup", "", buf, 2u);
  }

  LODWORD(out_token) = 0;
  v71 = *MEMORY[0x1E69B1A70];
  v72 = notify_register_dispatch(*MEMORY[0x1E69B1A70], &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_179);
  if (v72)
  {
    v73 = v72;
    v74 = container_log_handle_for_category();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v102 = v71;
      v103 = 1024;
      LODWORD(v104) = v73;
      _os_log_error_impl(&dword_1DF2C3000, v74, OS_LOG_TYPE_ERROR, "notify_register_dispatch for notification %s failed; returned %u\n", buf, 0x12u);
    }
  }

  _containermanagerd_keybagd_notification_callback();
  if (v39)
  {
    v75 = container_log_handle_for_category();
    if (os_signpost_enabled(v75))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v75, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FirstBootCleanup", "", buf, 2u);
    }

    [v23 rebootContainerManagerCleanupWithCompletion:&__block_literal_global_182];
  }

  v76 = container_log_handle_for_category();
  if (os_signpost_enabled(v76))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v76, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BootCleanup", "", buf, 2u);
  }

  [v23 containerManagerCleanupWithCompletion:&__block_literal_global_185];
  objc_autoreleasePoolPop(v41);
  v77 = container_log_handle_for_category();
  v78 = v77;
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v78, OS_SIGNPOST_INTERVAL_END, v40, "StartingUp", "", buf, 2u);
  }

  v79 = *(*(v42 + 56) + 8);
  v80 = *(v79 + 40);
  *(v79 + 40) = 0;
}

_xpc_connection_s *___containermanagerd_start_xpc_block_invoke_3(uint64_t a1, char *name)
{
  v18 = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service(name, *(a1 + 32), 1uLL);
  if (!mach_service)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "unable to start xpc service!", buf, 2u);
    }

    exit(100);
  }

  v4 = mach_service;
  __xpc_connection_set_logging();
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___containermanagerd_start_xpc_block_invoke_149;
  handler[3] = &unk_1E86AFB48;
  v16 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  xpc_connection_set_event_handler(v4, handler);
  xpc_connection_resume(v4);

  return v4;
}

void _containermanagerd_start_xpc_with_permanent_error(void *a1, uint64_t a2)
{
  v3 = a1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___containermanagerd_start_xpc_with_permanent_error_block_invoke;
  v10[3] = &unk_1E86AFC08;
  v10[5] = a2;
  v4 = v3;
  v10[4] = v4;
  v5 = _Block_copy(v10);
  v6 = v5[2](v5, "com.apple.containermanagerd.system");
  v7 = _containermanagerd_start_xpc_with_permanent_error_systemListener;
  _containermanagerd_start_xpc_with_permanent_error_systemListener = v6;

  v8 = v5[2](v5, "com.apple.containermanagerd");
  v9 = _containermanagerd_start_xpc_with_permanent_error_userListener;
  _containermanagerd_start_xpc_with_permanent_error_userListener = v8;

  _containermanagerd_self_destruct(v4);
  dispatch_main();
}

_xpc_connection_s *___containermanagerd_start_xpc_with_permanent_error_block_invoke(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [[MCMError alloc] initWithErrorType:*(a1 + 40)];
  mach_service = xpc_connection_create_mach_service(a2, *(a1 + 32), 1uLL);
  if (mach_service)
  {
    __xpc_connection_set_logging();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___containermanagerd_start_xpc_with_permanent_error_block_invoke_2;
    handler[3] = &unk_1E86AFBB8;
    v8 = *(a1 + 32);
    v9 = v4;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(mach_service);
  }

  return mach_service;
}

void _containermanagerd_self_destruct(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___containermanagerd_self_destruct_block_invoke;
  v4[3] = &unk_1E86B0E08;
  v5 = v1;
  v2 = _containermanagerd_self_destruct_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_containermanagerd_self_destruct_onceToken, v4);
  }
}

void ___containermanagerd_self_destruct_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__1060;
  v5[4] = __Block_byref_object_dispose__1061;
  v6 = os_transaction_create();
  v2 = dispatch_time(0, 2000000000);
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___containermanagerd_self_destruct_block_invoke_2;
  v4[3] = &unk_1E86AFAD0;
  v4[4] = v5;
  dispatch_after(v2, v3, v4);
  _Block_object_dispose(v5, 8);
}

void ___containermanagerd_self_destruct_block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_ERROR, "Exiting when clean.", v5, 2u);
  }

  xpc_transaction_exit_clean();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void ___containermanagerd_start_xpc_with_permanent_error_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  _containermanagerd_listener_handler_for_permanent_error(v3, a2, v4);
}

void _containermanagerd_listener_handler_for_permanent_error(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (MEMORY[0x1E12D4840](v6) == MEMORY[0x1E69E9E68])
  {
    xpc_connection_set_target_queue(v6, v5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___containermanagerd_listener_handler_for_permanent_error_block_invoke;
    handler[3] = &unk_1E86AFBB8;
    v8 = v6;
    v10 = v8;
    v11 = v7;
    xpc_connection_set_event_handler(v8, handler);
    xpc_connection_resume(v8);
  }
}

void ___containermanagerd_listener_handler_for_permanent_error_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x1E12D4840]() != MEMORY[0x1E69E9E98])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = v4;
    reply = xpc_dictionary_create_reply(v6);
    if (reply)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      [v7 libsystemError];
      container_xpc_encode_error();
      xpc_dictionary_set_value(reply, "ReplyErrorExtended", v9);
      uint64 = xpc_dictionary_get_uint64(v6, "Command");
      v26 = 0u;
      v27 = 0u;
      xpc_dictionary_get_audit_token();
      v15 = container_audit_token_copy_codesign_identifier();
      euid = container_audit_token_get_euid();
      memset(buf, 0, 32);
      pid = container_audit_token_get_pid();
      v12 = geteuid();
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v7 type];
        [v7 type];
        *buf = 67110914;
        *&buf[4] = v12;
        *&buf[8] = 2082;
        *&buf[10] = " EXITING AFTER REPLYING TO:";
        *&buf[18] = 2048;
        *&buf[20] = uint64;
        *&buf[28] = 2080;
        *&buf[30] = v15;
        v18 = 1024;
        v19 = euid;
        v20 = 1024;
        v21 = pid;
        v22 = 2048;
        v23 = v14;
        v24 = 2080;
        error_description = container_get_error_description();
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "[%u]%{public}s command=%llu, client=%s(uid: %u, pid: %d), error=%llu (%s)", buf, 0x46u);
      }

      xpc_connection_send_message(v5, reply);
      xpc_connection_send_barrier(v5, &__block_literal_global_200);
    }

    else
    {
      xpc_connection_cancel(v5);
    }
  }
}

void ___containermanagerd_connection_handler_block_invoke()
{
  v0 = objc_alloc_init(MCMCommandDispatcher);
  v1 = _containermanagerd_connection_handler_dispatcher;
  _containermanagerd_connection_handler_dispatcher = v0;

  v3 = _containermanagerd_connection_handler_dispatcher;
  has_internal_content = os_variant_has_internal_content();
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  if (has_internal_content)
  {
    [v3 registerCommandClass:objc_opt_class()];
  }

  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  if (has_internal_content)
  {
    [v3 registerCommandClass:objc_opt_class()];
  }

  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
  [v3 registerCommandClass:objc_opt_class()];
}

void ___containermanagerd_perform_launch_tasks_block_invoke_183()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = container_log_handle_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v0, OS_LOG_TYPE_DEBUG, "containermanagerd cleanup complete", buf, 2u);
  }

  v1 = container_log_handle_for_category();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BootCleanup", "", v2, 2u);
  }
}

void ___containermanagerd_perform_launch_tasks_block_invoke_180()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = container_log_handle_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v0, OS_LOG_TYPE_DEBUG, "containermanagerd first boot cleanup complete", buf, 2u);
  }

  v1 = container_log_handle_for_category();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FirstBootCleanup", "", v2, 2u);
  }
}

void ___containermanagerd_setup_log_replication_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.containermanagerd.volume-notification", v0);

  v1 = MCMSharedFastWorkloop();
  v2 = containermanager_copy_global_configuration();
  v3 = [v2 defaultUser];
  [v3 UID];
  container_log_replication_prune_for_uid();

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var" isDirectory:1 relativeToURL:0];
  v5 = [[MCMLogReplicator alloc] initWithWorkloop:v1];
  v6 = _containermanagerd_setup_log_replication_logReplicator;
  _containermanagerd_setup_log_replication_logReplicator = v5;

  v7 = [[MCMVolumeChangeMonitor alloc] initWithWorkloop:v9 mountPointURL:v4];
  v8 = gMCMVolumeMonitor;
  gMCMVolumeMonitor = v7;

  [gMCMVolumeMonitor addVolumeChangeObserver:_containermanagerd_setup_log_replication_logReplicator];
  [gMCMVolumeMonitor start];
}

uint64_t _containermanagerd_exception_preprocessor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v2 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v4 = [v1 reason];
    v6 = 136315138;
    v7 = [v4 UTF8String];
    _os_log_send_and_compose_impl(v3, &v9, v8, 80, &dword_1DF2C3000, v2, 16, "Exception occurred: %s", &v6);

    _os_crash_msg();
    __break(1u);
  }

  result = _os_crash();
  __break(1u);
  return result;
}

void sub_1DF302320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF30302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1135(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1136(uint64_t a1)
{
  v1 = *(a1 + 40);
}

uint64_t _fix_permissions_on_path(const char *a1, const char *a2, char *a3, int *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v45 = 0;
  memset(&v49, 0, sizeof(v49));
  v44 = 0;
  v43 = 0;
  if (a2)
  {
    v8 = strlen(a2);
    if (strncmp(a1, a2, v8))
    {
      v44 = 62;
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v47 = a1;
        *&v47[8] = 2080;
        v48[0] = a2;
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Path [%s] does not have accepted path prefix [%s] when trying to fix permissions", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_44;
    }
  }

  if (lstat(a1, &v49))
  {
    v44 = *__error();
    v11 = strdup(a1);
    v43 = v11;
    v12 = rindex(v11, 47);
    v13 = container_log_handle_for_category();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!v12 || v11 == v12)
    {
      if (v14)
      {
        v23 = *__error();
        v24 = __error();
        v25 = strerror(*v24);
        *buf = 136315650;
        *v47 = a1;
        *&v47[8] = 1024;
        LODWORD(v48[0]) = v23;
        WORD2(v48[0]) = 2080;
        *(v48 + 6) = v25;
        v19 = "Failed to stat [%s] when trying to fix permissions, could not recover: (%d) %s";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v14)
    {
      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      *buf = 136315650;
      *v47 = a1;
      *&v47[8] = 1024;
      LODWORD(v48[0]) = v37;
      WORD2(v48[0]) = 2080;
      *(v48 + 6) = v39;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to stat [%s] when trying to fix permissions, attempting to recover: (%d) %s", buf, 0x1Cu);
    }

    *v12 = 0;
    if (!_fix_permissions_on_path(v11, a2, &v45, &v44))
    {
      v10 = 0;
      goto LABEL_42;
    }

    if (lstat(a1, &v49))
    {
      v15 = *__error();
      v44 = v15;
      if (v15 != 13 && v15 != 1)
      {
        v13 = container_log_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v40 = *__error();
          v41 = __error();
          v42 = strerror(*v41);
          *buf = 136315650;
          *v47 = a1;
          *&v47[8] = 1024;
          LODWORD(v48[0]) = v40;
          WORD2(v48[0]) = 2080;
          *(v48 + 6) = v42;
          _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to stat [%s] when trying to fix permissions, but no longer a permission error: (%d) %s", buf, 0x1Cu);
        }

        v10 = 1;
        goto LABEL_41;
      }

      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = *__error();
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136315650;
        *v47 = a1;
        *&v47[8] = 1024;
        LODWORD(v48[0]) = v16;
        WORD2(v48[0]) = 2080;
        *(v48 + 6) = v18;
        v19 = "Failed to stat [%s] when trying to fix permissions, gave up: (%d) %s";
LABEL_39:
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v19, buf, 0x1Cu);
        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((v49.st_flags & 6) == 0)
  {
LABEL_28:
    v27 = v49.st_mode & 0xF000;
    if (v27 == 40960 || v27 == 0x4000)
    {
      v29 = 448;
    }

    else
    {
      v29 = 384;
    }

    if ((v49.st_mode & 0x1C0) == v29)
    {
      v10 = 1;
      goto LABEL_42;
    }

    v30 = v49.st_mode & 0xFE3F;
    v31 = v29 | v30;
    if (!lchmod(a1, v29 | v30))
    {
      v10 = 1;
      v45 = 1;
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v47 = v49.st_mode;
        *&v47[4] = 1024;
        *&v47[6] = v31;
        LOWORD(v48[0]) = 2080;
        *(v48 + 2) = a1;
        _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "lchmod u+rw(x) (0%o → 0%o) on [%s]", buf, 0x18u);
      }

      goto LABEL_41;
    }

    v44 = *__error();
    v13 = container_log_handle_for_category();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v32 = *__error();
    v33 = __error();
    v34 = strerror(*v33);
    *buf = 136315650;
    *v47 = a1;
    *&v47[8] = 1024;
    LODWORD(v48[0]) = v32;
    WORD2(v48[0]) = 2080;
    *(v48 + 6) = v34;
    v19 = "lchmod() for [%s] failed during permissions repair: (%d) %s";
    goto LABEL_39;
  }

  if (!lchflags(a1, v49.st_flags & 0xFFFFFFF9))
  {
    v45 = 1;
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v47 = a1;
      _os_log_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_DEFAULT, "Unset UF_IMMUTABLE | UF_APPEND on [%s]", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v44 = *__error();
  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v20 = *__error();
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315650;
    *v47 = a1;
    *&v47[8] = 1024;
    LODWORD(v48[0]) = v20;
    WORD2(v48[0]) = 2080;
    *(v48 + 6) = v22;
    v19 = "Failed to lchflags [%s]: (%d) %s";
    goto LABEL_39;
  }

LABEL_40:
  v10 = 0;
LABEL_41:

LABEL_42:
  if (v11)
  {
    free(v11);
    memset_s(&v43, 8uLL, 0, 8uLL);
  }

LABEL_44:
  if (a4 && (v10 & 1) == 0)
  {
    *a4 = v44;
  }

  v35 = v10 ^ 1;
  if (!a3)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    *a3 = v45;
  }

  return v10;
}

void sub_1DF30E110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t _removefile_error_callback(_removefile_state *a1, const char *a2, _DWORD *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  dst = 0;
  if (!removefile_state_get(a1, 5u, &dst))
  {
    if (dst == 2)
    {
      goto LABEL_15;
    }

    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = dst;
      v14 = strerror(dst);
      v26.st_dev = 136315650;
      *&v26.st_mode = a2;
      WORD2(v26.st_ino) = 1024;
      *(&v26.st_ino + 6) = v13;
      HIWORD(v26.st_uid) = 2080;
      *&v26.st_gid = v14;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "removefile hit error for [%s]: (%d) %s", &v26, 0x1Cu);
    }

    if ((v7, dst != 13) && dst != 1 || (v18 = 0, _fix_permissions_on_path(a2, 0, &v18, 0), (v18 & 1) == 0))
    {
LABEL_15:
      result = 0;
      if (!a3)
      {
        return result;
      }

      goto LABEL_16;
    }

    memset(&v26, 0, sizeof(v26));
    if (lstat(a2, &v26))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_15;
      }

      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136315650;
      v21 = a2;
      v22 = 1024;
      v23 = v15;
      v24 = 2080;
      v25 = v17;
      v12 = "lstat of [%s] failed when trying to figure out why unlink failed: (%d) %s";
    }

    else
    {
      if ((v26.st_mode & 0xF000) == 0x4000)
      {
        dst = 35;
        result = 2;
        if (!a3)
        {
          return result;
        }

        goto LABEL_16;
      }

      result = unlink(a2);
      if (!result)
      {
        return result;
      }

      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 136315650;
      v21 = a2;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v11;
      v12 = "unlink of [%s] failed: (%d) %s";
    }

    _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, v12, buf, 0x1Cu);
    goto LABEL_14;
  }

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v26.st_dev = 136315138;
    *&v26.st_mode = a2;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "removefile hit error for [%s] but we failed to get the error number", &v26, 0xCu);
  }

  result = 0;
  dst = 2;
  if (a3)
  {
LABEL_16:
    if (!*a3)
    {
      *a3 = dst;
    }
  }

  return result;
}

uint64_t __containermanager_copy_default_file_manager_block_invoke()
{
  gMCMDefaultFileManager = objc_alloc_init(MCMFileManager);

  return MEMORY[0x1EEE66BB8]();
}

void containermanager_set_global_configuration(id obj)
{

  objc_storeStrong(&_gGlobalConfiguration, obj);
}

void sub_1DF321CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2545(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__2546(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF3270F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF32A23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3288(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__3289(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF32C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF32FE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3962(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__3963(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF330EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF334698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3348A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF334E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4357(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__4358(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF3358E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33630C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3367D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3369D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF336CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF337D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3380C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3383C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1DF338B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF338D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF338F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33AAAC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1DF33AAB8);
}

void sub_1DF33C648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33E160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33F4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DF33FF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose((v24 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF340474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _moveSystemContainerIntoPlace(void *a1, uint64_t a2, void *a3, void *a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 lastPathComponent];
  v78 = [v7 URLByDeletingLastPathComponent];
  v11 = [v78 URLByAppendingPathExtension:@"failed"];
  v82 = [v11 URLByAppendingPathComponent:v10 isDirectory:1];

  v93 = 1;
  v12 = containermanager_copy_global_configuration();
  v13 = [v12 staticConfig];
  v14 = [v13 configForContainerClass:a2];

  v15 = v14;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  v79 = v10;
  v17 = [MCMContainerIdentity containerIdentityWithUserIdentity:v9 identifier:v10 containerConfig:v14 platform:0 userIdentityCache:v16 error:&v93];

  v18 = v17;
  if (v17)
  {
    v19 = [v8 containerFactory];
    v92 = 0;
    v20 = [v19 containerForContainerIdentity:v18 createIfNecessary:1 error:&v92];
    v21 = v92;

    v77 = v20;
    if (v20)
    {
      v22 = [v20 metadataMinimal];
      v23 = +[MCMFileManager defaultManager];
      log = v22;
      v24 = [v22 containerPath];
      v84 = [v24 containerRootURL];

      v25 = container_log_handle_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [v7 path];
        v66 = v65 = v18;
        [v84 path];
        v68 = v67 = v15;
        *buf = 138412802;
        v97 = v79;
        v98 = 2112;
        v99 = v66;
        v100 = 2112;
        v101 = v68;
        _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Restoring container for %@ at %@ to %@", buf, 0x20u);

        v15 = v67;
        v18 = v65;
      }

      v91 = 0;
      v26 = [v23 urlsForItemsInDirectoryAtURL:v7 error:&v91];
      v27 = v91;
      v75 = v26;
      if (v26 && !v21)
      {
        v72 = v9;
        v73 = v8;
        v74 = v7;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        obj = v26;
        v85 = [obj countByEnumeratingWithState:&v105 objects:v104 count:16];
        v70 = v18;
        v71 = v15;
        if (!v85)
        {
          v28 = v27;
          goto LABEL_39;
        }

        v83 = *v106;
        v81 = v23;
        v28 = v27;
        p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
        while (1)
        {
          for (i = 0; i != v85; ++i)
          {
            if (*v106 != v83)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v105 + 1) + 8 * i);
            v32 = [v31 lastPathComponent];
            v33 = [v84 URLByAppendingPathComponent:v32 isDirectory:0];
            v90 = v28;
            v34 = [v23 removeItemAtURL:v33 error:&v90];
            v35 = v90;

            v86 = v33;
            if (v34)
            {
              v36 = [p_superclass + 409 defaultManager];
              v89 = v35;
              v37 = [v36 moveItemAtURL:v31 toURL:v33 error:&v89];
              v28 = v89;

              if (v37)
              {
                goto LABEL_28;
              }

              v38 = container_log_handle_for_category();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v39 = [v31 path];
                v40 = [v86 path];
                *buf = 138413058;
                v97 = v79;
                v98 = 2112;
                v99 = v39;
                v100 = 2112;
                v101 = v40;
                v102 = 2112;
                v103 = v28;
                _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Failed to move file in restored system container %@:%@ to destination %@: %@", buf, 0x2Au);
              }
            }

            else
            {
              v38 = container_log_handle_for_category();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v97 = v79;
                v98 = 2112;
                v99 = v86;
                v100 = 2112;
                v101 = v35;
                _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Failed to remove destination %@:%@: %@", buf, 0x20u);
              }

              v28 = v35;
            }

            v87 = v31;
            v41 = v82;
            v42 = v32;
            v43 = [p_superclass + 409 defaultManager];
            v95 = 0;
            v44 = [v43 createDirectoryAtURL:v41 withIntermediateDirectories:1 mode:511 error:&v95];
            v45 = v95;

            if ((v44 & 1) == 0)
            {
              v46 = container_log_handle_for_category();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v97 = v82;
                v98 = 2112;
                v99 = v45;
                _os_log_error_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_ERROR, "Failed to create %@: %@", buf, 0x16u);
              }
            }

            v47 = v32;
            v48 = v28;
            v49 = [v41 URLByAppendingPathComponent:v42 isDirectory:0];
            v50 = [p_superclass + 409 defaultManager];
            v94 = v45;
            v51 = [v50 moveItemAtURL:v87 toURL:v49 error:&v94];
            v52 = v94;

            if ((v51 & 1) == 0)
            {
              v53 = container_log_handle_for_category();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v97 = v87;
                v98 = 2112;
                v99 = v49;
                v100 = 2112;
                v101 = v52;
                _os_log_error_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_ERROR, "Failed to move %@ to %@: %@", buf, 0x20u);
              }
            }

            v23 = v81;
            v21 = 0;
            v28 = v48;
            p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
            v32 = v47;
LABEL_28:
          }

          v85 = [obj countByEnumeratingWithState:&v105 objects:v104 count:16];
          if (!v85)
          {
LABEL_39:
            v27 = v28;

            v56 = objc_alloc_init(MCMResultPromise);
            v59 = [MCMCommandProcessRestoredContainer alloc];
            v60 = [log containerIdentity];
            v8 = v73;
            v61 = [(MCMCommandProcessRestoredContainer *)v59 initWithConcreteContainerIdentity:v60 context:v73 resultPromise:v56];

            [(MCMCommandProcessRestoredContainer *)v61 execute];
            v62 = [(MCMResultPromise *)v56 result];
            v63 = [v62 error];

            v7 = v74;
            v9 = v72;
            if (v63)
            {
              v64 = container_log_handle_for_category();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v88 = [(MCMResultPromise *)v56 result];
                v69 = [v88 error];
                *buf = 138412546;
                v97 = v79;
                v98 = 2112;
                v99 = v69;
                _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, "Error processing restored system container %@: %@", buf, 0x16u);
              }
            }

            v18 = v70;
            v15 = v71;
            goto LABEL_44;
          }
        }
      }

      v56 = container_log_handle_for_category();
      if (os_log_type_enabled(&v56->super, OS_LOG_TYPE_ERROR))
      {
        [v7 path];
        v58 = v57 = v18;
        *buf = 138412802;
        v97 = v79;
        v98 = 2112;
        v99 = v58;
        v100 = 2112;
        v101 = v27;
        _os_log_error_impl(&dword_1DF2C3000, &v56->super, OS_LOG_TYPE_ERROR, "Failed to enumerate contents of restored system container %@ at %@: %@", buf, 0x20u);

        v18 = v57;
      }

LABEL_44:
    }

    else
    {
      log = container_log_handle_for_category();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v97 = v79;
        v98 = 2112;
        v99 = v21;
        _os_log_error_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_ERROR, "Failed to create system container %@: %@", buf, 0x16u);
      }
    }

    v55 = v78;
  }

  else
  {
    v54 = container_log_handle_for_category();
    v77 = v54;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v97 = v10;
      v98 = 2048;
      v99 = v93;
      _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Failed to create container identity %@: %llu", buf, 0x16u);
    }

    v21 = 0;
    v55 = v78;
  }
}

void sub_1DF343AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5095(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__5096(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF34474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF346600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5365(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__5366(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void *_MCMVolumeChangeMonitorCallback(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return [result _callbackWithVolume:a2 notificationType:a3 margs:a4];
  }

  return result;
}

void sub_1DF3565FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7315(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__7316(uint64_t a1)
{
  v1 = *(a1 + 40);
}

uint64_t __Block_byref_object_copy__7847(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__7848(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void __MCMContainerSchemaDefinitionForClass_block_invoke()
{
  v84[1] = *MEMORY[0x1E69E9840];
  v82 = @"script";
  v53 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v80[0] = v53;
  v50 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library"];
  v80[1] = v50;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
  v81[0] = v47;
  v44 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v79[0] = v44;
  v42 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Preferences"];
  v79[1] = v42;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  v81[1] = v40;
  v38 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v78[0] = v38;
  v36 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Caches"];
  v78[1] = v36;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v81[2] = v35;
  v34 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v77[0] = v34;
  v33 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Documents"];
  v77[1] = v33;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v81[3] = v0;
  v1 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v76[0] = v1;
  v2 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"SystemData"];
  v76[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v81[4] = v3;
  v4 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v75[0] = v4;
  v5 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"tmp"];
  v75[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v81[5] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:6];
  v83 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v84[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  v10 = MCMContainerSchemaDefinitionForClass_userDataSchemaDefinition;
  MCMContainerSchemaDefinitionForClass_userDataSchemaDefinition = v9;

  v72 = @"script";
  v54 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v70[0] = v54;
  v51 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library"];
  v70[1] = v51;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
  v71[0] = v48;
  v45 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v69[0] = v45;
  v43 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Preferences"];
  v69[1] = v43;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
  v71[1] = v41;
  v39 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v68[0] = v39;
  v37 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Caches"];
  v68[1] = v37;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v71[2] = v11;
  v12 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v67[0] = v12;
  v13 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Documents"];
  v67[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v71[3] = v14;
  v15 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v66[0] = v15;
  v16 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"tmp"];
  v66[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v71[4] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:5];
  v73 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v74 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  v21 = MCMContainerSchemaDefinitionForClass_systemSchemaDefinition;
  MCMContainerSchemaDefinitionForClass_systemSchemaDefinition = v20;

  v63 = @"script";
  v55 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v61[0] = v55;
  v52 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library"];
  v61[1] = v52;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v62[0] = v49;
  v46 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v60[0] = v46;
  v22 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Caches"];
  v60[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v62[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v64 = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v65[0] = v25;
  v58 = @"script";
  v26 = [(MCMActionArgumentBase *)[MCMActionArgumentCommand alloc] initWithString:@"mkdir"];
  v56[0] = v26;
  v27 = [(MCMActionArgumentBase *)[MCMActionArgumentRelativeDirectory alloc] initWithString:@"Library/Preferences"];
  v56[1] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v57 = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v59 = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v65[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v32 = MCMContainerSchemaDefinitionForClass_groupSchemaDefinition;
  MCMContainerSchemaDefinitionForClass_groupSchemaDefinition = v31;
}

id MCMSharedBackgroundQueue()
{
  if (MCMSharedBackgroundQueue_onceToken != -1)
  {
    dispatch_once(&MCMSharedBackgroundQueue_onceToken, &__block_literal_global_8631);
  }

  v0 = MCMSharedBackgroundQueue_queue;

  return v0;
}

void __MCMSharedBackgroundQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.containermanagerd.background", attr);
  v2 = MCMSharedBackgroundQueue_queue;
  MCMSharedBackgroundQueue_queue = v1;
}

id MCMSharedDeathrowQueue()
{
  if (MCMSharedDeathrowQueue_onceToken != -1)
  {
    dispatch_once(&MCMSharedDeathrowQueue_onceToken, &__block_literal_global_3);
  }

  v0 = MCMSharedDeathrowQueue_queue;

  return v0;
}

void __MCMSharedDeathrowQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.containermanagerd.deathrow", v2);
  v1 = MCMSharedDeathrowQueue_queue;
  MCMSharedDeathrowQueue_queue = v0;
}

id MCMSharedFastWorkloop()
{
  if (MCMSharedFastWorkloop_onceToken != -1)
  {
    dispatch_once(&MCMSharedFastWorkloop_onceToken, &__block_literal_global_6);
  }

  v0 = MCMSharedFastWorkloop_fastWorkloop;

  return v0;
}

uint64_t __MCMSharedFastWorkloop_block_invoke()
{
  MCMSharedFastWorkloop_fastWorkloop = dispatch_workloop_create("com.apple.containermanagerd.fast");

  return MEMORY[0x1EEE66BB8]();
}

id MCMSharedSlowWorkloop()
{
  if (MCMSharedSlowWorkloop_onceToken != -1)
  {
    dispatch_once(&MCMSharedSlowWorkloop_onceToken, &__block_literal_global_9);
  }

  v0 = MCMSharedSlowWorkloop_slowWorkloop;

  return v0;
}

uint64_t __MCMSharedSlowWorkloop_block_invoke()
{
  MCMSharedSlowWorkloop_slowWorkloop = dispatch_workloop_create("com.apple.containermanagerd.slow");

  return MEMORY[0x1EEE66BB8]();
}

id MCMDataProtectionQueue()
{
  if (MCMDataProtectionQueue_onceToken != -1)
  {
    dispatch_once(&MCMDataProtectionQueue_onceToken, &__block_literal_global_12);
  }

  v0 = MCMDataProtectionQueue_dataProtQueue;

  return v0;
}

void __MCMDataProtectionQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.containermanagerd.dataprot", v2);
  v1 = MCMDataProtectionQueue_dataProtQueue;
  MCMDataProtectionQueue_dataProtQueue = v0;
}

void __MCMLockStateQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.containermanagerd.lockstate", v2);
  v1 = MCMLockStateQueue_lockStateQueue;
  MCMLockStateQueue_lockStateQueue = v0;
}

void sub_1DF3628CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9003(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__9004(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF364A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9195(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__9196(uint64_t a1)
{
  v1 = *(a1 + 40);
}

id MCMValidateObject(void *a1, uint64_t a2)
{
  v2 = a1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1DF36801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3689C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9329(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__9330(uint64_t a1)
{
  v1 = *(a1 + 40);
}

uint64_t MCMPersonasAreSupported()
{
  if (MCMPersonasAreSupported_onceToken != -1)
  {
    dispatch_once(&MCMPersonasAreSupported_onceToken, &__block_literal_global_9454);
  }

  return MCMPersonasAreSupported_staticPersonasSupported;
}

void *__MCMPersonasAreSupported_block_invoke(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  multiuser_flags.val[0] = 0;
  v3 = MEMORY[0x1E12D3930]();
  multiuser_config_flags = host_get_multiuser_config_flags(v3, multiuser_flags.val);
  v5 = multiuser_flags.val[0];
  v6 = os_variant_uses_ephemeral_storage();
  is_system_session = xpc_is_system_session();
  v8 = MGGetBoolAnswer();
  v9 = v8;
  if (multiuser_config_flags)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5 < 0;
  }

  v11 = !v10;
  v12 = !v10 && v2 != 0;
  MCMPersonasAreSupported_staticPersonasSupported = v12 & (v6 ^ 1) & (v8 ^ 1) & (is_system_session ^ 1);
  memset(&v53, 0, sizeof(v53));
  container_codesign_get_self_audit_token();
  __s = 0;
  vproc_swap_string();
  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (MCMPersonasAreSupported_staticPersonasSupported)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v15 = "!hasUserManager ";
    if (v2)
    {
      v15 = "";
    }

    v27 = v15;
    v28 = v14;
    if (v11)
    {
      v16 = "";
    }

    else
    {
      v16 = "configuredForMultiUser ";
    }

    if (v9)
    {
      v17 = "inDiagnosticsMode ";
    }

    else
    {
      v17 = "";
    }

    if (v6)
    {
      v18 = "usesEphemeralStorage ";
    }

    else
    {
      v18 = "";
    }

    v19 = "isSystemSession";
    if ((is_system_session & 1) == 0)
    {
      v19 = "";
    }

    v26 = v19;
    v20 = getpid();
    v21 = getuid();
    multiuser_flags = v53;
    v22 = audit_token_to_pid(&multiuser_flags);
    multiuser_flags = v53;
    v23 = audit_token_to_auid(&multiuser_flags);
    multiuser_flags = v53;
    v24 = audit_token_to_asid(&multiuser_flags);
    multiuser_flags.val[0] = 136318466;
    *&multiuser_flags.val[1] = v28;
    LOWORD(multiuser_flags.val[3]) = 2080;
    *(&multiuser_flags.val[3] + 2) = v27;
    HIWORD(multiuser_flags.val[5]) = 2080;
    *&multiuser_flags.val[6] = v16;
    v31 = 2080;
    v32 = v17;
    v33 = 2080;
    v34 = v18;
    v35 = 2080;
    v36 = "";
    v37 = 2080;
    v38 = "";
    v39 = 2080;
    v40 = v26;
    v41 = 1024;
    v42 = v20;
    v43 = 1024;
    v44 = v21;
    v45 = 1024;
    v46 = v22;
    v47 = 1024;
    v48 = v23;
    v49 = 1024;
    v50 = v24;
    v51 = 2082;
    v52 = __s;
    _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "Personas are supported (static): %s (%s%s%s%s%s%s%s) {pid: %d, uid: %u, apid: %d, auid: %u, asid: %d, session: %{public}s}", &multiuser_flags, 0x7Au);
  }

  return __s;
}

uint64_t __Block_byref_object_copy__9797(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__9798(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void __MCMProcessXPCEvent_block_invoke(uint64_t a1)
{
  v5 = objc_opt_new();
  v2 = objc_opt_new();
  v3 = [[MCMClientFactory alloc] initWithUserIdentityCache:*(a1 + 32) clientCodeSignInfoCache:v5 clientIdentityCache:v2];
  v4 = MCMProcessXPCEvent_clientFactory;
  MCMProcessXPCEvent_clientFactory = v3;
}

uint64_t __Block_byref_object_copy__10026(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__10027(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF370020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11821(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__11822(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF380200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF3847A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v14 = objc_begin_catch(a1);
      [[MCMError alloc] initWithErrorType:40];

      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = [v14 callStackSymbols];
        LODWORD(buf) = 138412546;
        *(&buf + 4) = v14;
        WORD6(buf) = 2112;
        *(&buf + 14) = v18;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Got exception: %@ : %@", &buf, 0x16u);
      }

      v16 = containermanager_copy_global_configuration();
      v17 = [v16 isInternalImage];

      if (v17)
      {
        MCMCrashOnException(v14);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x1DF384668);
  }

  _Unwind_Resume(a1);
}

void sub_1DF3848FC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1DF384920);
  }

  JUMPOUT(0x1DF384938);
}

void sub_1DF385A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12529(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__12530(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF38B748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id (*a20)(uint64_t a1), void *a21, id a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id (*a32)(uint64_t a1), void *a33, void *a34)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v36 = objc_begin_catch(exception_object);
      a30 = MEMORY[0x1E69E9820];
      a31 = 3221225472;
      a32 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_232;
      a33 = &unk_1E86B0B98;
      v37 = v36;
      a34 = v37;
      v38 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_232(&a30);

      v39 = containermanager_copy_global_configuration();
      v40 = [v39 isInternalImage];

      if (v40)
      {
        MCMCrashOnException(v37);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
      v38 = v35;
    }

    a23 = v38;
    v41 = [v34 _sqliteExec:@"ROLLBACK;" error:&a23];
    v42 = a23;

    if ((v41 & 1) == 0)
    {
      a18 = MEMORY[0x1E69E9820];
      a19 = 3221225472;
      a20 = __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_238;
      a21 = &unk_1E86B0B98;
      a22 = v42;
      __70__MCMSQLiteDB_invalidateCodeSigningForIdentifierAndAllChildren_error___block_invoke_238(&a18);
      objc_claimAutoreleasedReturnValue();
      JUMPOUT(0x1DF38B6ACLL);
    }

    JUMPOUT(0x1DF38B6B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF38D1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id (*a24)(uint64_t a1), void *a25, void *a26)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v27 = objc_begin_catch(exception_object);
      a22 = MEMORY[0x1E69E9820];
      a23 = 3221225472;
      a24 = __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_183;
      a25 = &unk_1E86B0B98;
      v28 = v27;
      a26 = v28;
      __56__MCMSQLiteDB_addCodeSigningEntry_withIdentifier_error___block_invoke_183(&a22);
      objc_claimAutoreleasedReturnValue();

      v29 = containermanager_copy_global_configuration();
      v30 = [v29 isInternalImage];

      if (v30)
      {
        MCMCrashOnException(v28);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1DF38D0CCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF3949A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 184), 8);
  _Block_object_dispose((v33 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__12875(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF396CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DF39BE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF39DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__13435(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF39DED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF39E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 88), 8);
  _Unwind_Resume(a1);
}

void __MCMRunTransactionalTask_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  JUMPOUT(0x1E12D4890);
}

void __MCMRunTransactionalTaskWithDelay_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  JUMPOUT(0x1E12D4890);
}

void MCMCrashOnException(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 name];

  v4 = [objc_allocWithZone(MEMORY[0x1E696AD60]) initWithString:@"** INTERNAL ERROR: Uncaught Exception **\n"];
  [v4 appendString:@"Exception: "];
  if (v3)
  {
    [v4 appendString:@"<"];
    [v4 appendString:v3];
    [v4 appendString:@"> "];
  }

  v5 = [v1 name];

  if (v5)
  {
    v6 = [v1 name];
    [v4 appendString:v6];

    [v4 appendString:@": "];
  }

  v7 = [v1 reason];

  if (v7)
  {
    v8 = [v1 reason];
    [v4 appendString:v8];
  }

  [v4 appendString:@"\nStack:\n"];
  v9 = [v1 callStackSymbols];
  v10 = [v9 componentsJoinedByString:@"\n"];
  [v4 appendString:v10];

  if (MCMCrashOnException_onceToken != -1)
  {
    dispatch_once(&MCMCrashOnException_onceToken, &__block_literal_global_13696);
  }

  pthread_mutex_lock(&MCMCrashOnException_crashLock);
  if (v4)
  {
    qword_1ECE34358 = strdup([v4 UTF8String]);
  }

  abort();
}

uint64_t __MCMCrashOnException_block_invoke()
{

  return pthread_mutex_init(&MCMCrashOnException_crashLock, 0);
}

void sub_1DF3A6310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14291(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14292(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF3AB424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14647(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14648(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void sub_1DF3AEFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14909(uint64_t a1)
{
  v1 = *(a1 + 40);
}

void __conmanupcall_block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  sp = 0;
  v2 = bootstrap_check_in(*MEMORY[0x1E69E99F8], "com.apple.containermanagerd.upcall", &sp);
  if (v2)
  {
    v3 = v2;
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = mach_error_string(v3);
      *buf = 136315138;
      v14 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "bootstrap_check_in: %s", buf, 0xCu);
    }
  }

  else
  {
    gMCMKernMessageProcessorClass = a1[6];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = a1[4];
    if (v6)
    {
      v7 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.upcall", v4, v6);
    }

    else
    {
      v7 = dispatch_queue_create("com.apple.containermanagerd.upcall", v4);
    }

    v8 = conmanupcall_upcallQueue;
    conmanupcall_upcallQueue = v7;

    v9 = dispatch_mach_create();
    v10 = conmanupcall_channel;
    conmanupcall_channel = v9;

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Starting kernel upcall mach channel", buf, 2u);
    }

    dispatch_mach_connect();
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void (*container_manager_kern_server_routine(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == 322514900)
  {
    return _Xget_process_containers;
  }

  else
  {
    return 0;
  }
}

void sb_packbuff_free_cold_1(uint64_t *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v4 = 134218240;
  v5 = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&dword_1DF2C3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed: vm_deallocate(%p, %zu)", &v4, 0x16u);
}