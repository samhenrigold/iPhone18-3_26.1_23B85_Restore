uint64_t sub_221D95F38(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for XPCEventSubscriberAccountType.keys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCEventSubscriberAccountType.keys(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for ACDXPCEventPublisher(uint64_t a1)
{
  result = qword_281303818;
  if (!qword_281303818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221D961A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221D96280(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_221D962D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_221D96328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_221D963D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_221D96434(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_221D964DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_221D90888(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_221D96434(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_221D965DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_221D96644(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221D96B50;

  return sub_221D90330(a1, v4);
}

uint64_t sub_221D966FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221D967B4;

  return sub_221D90330(a1, v4);
}

uint64_t sub_221D967B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_221D968A8()
{
  result = qword_281303200;
  if (!qword_281303200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281303200);
  }

  return result;
}

uint64_t sub_221D968F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_221D9693C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221D96B50;

  return sub_221D8D810();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221D969E8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221D967B4;

  return sub_221D8EAA0(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_221D96A98()
{
  result = qword_2813031B8;
  if (!qword_2813031B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813031B8);
  }

  return result;
}

void sub_221D96B00(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_221D96B94(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_221D96C68(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

id ACDAsyncAuthenticationPluginManager.__allocating_init(with:)(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F90];
  v3[15] = sub_221D9F388(MEMORY[0x277D84F90]);
  v3[16] = sub_221D9F48C(v4);
  v3[14] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ACDAsyncAuthenticationPluginManager.init(with:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  v1[15] = sub_221D9F388(MEMORY[0x277D84F90]);
  v1[16] = sub_221D9F48C(v3);
  v1[14] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ACDAsyncAuthenticationPluginManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_221D96E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[81] = v3;
  v4[80] = a3;
  v4[79] = a2;
  v4[78] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  v4[82] = swift_task_alloc();
  v5 = sub_221DAC238();
  v4[83] = v5;
  v4[84] = *(v5 - 8);
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D96FD4, v3, 0);
}

uint64_t sub_221D96FD4()
{
  v263 = v0;
  v1 = v0;
  v2 = [*(v0 + 624) accountType];
  if (!v2)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v7 = v2;
  v8 = [v2 identifier];

  if (!v8)
  {
    v33 = *(v0 + 696);
    v34 = *(v0 + 672);
    v35 = v1[83];
    v36 = v1[78];
    v37 = sub_221DA02C0();
    swift_beginAccess();
    (*(v34 + 16))(v33, v37, v35);
    v38 = v36;
    v39 = sub_221DAC218();
    v40 = sub_221DAC558();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v1[87];
    v43 = v1[84];
    v44 = v1[83];
    if (v41)
    {
      v256 = v1[87];
      v45 = v1[78];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v261 = v47;
      *v46 = 136315138;
      v48 = v45;
      v49 = [v48 description];
      v50 = v1;
      v51 = sub_221DAC3B8();
      v252 = v44;
      v53 = v52;

      v54 = v51;
      v1 = v50;
      v55 = sub_221D909D4(v54, v53, &v261);

      *(v46 + 4) = v55;
      _os_log_impl(&dword_221D2F000, v39, v40, "ACDAsyncAuthenticationPluginManager: no account type on %s, bailing!", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223DAA350](v47, -1, -1);
      MEMORY[0x223DAA350](v46, -1, -1);

      (*(v43 + 8))(v256, v252);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
    }

    v258 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:0];
    goto LABEL_66;
  }

  v9 = *(v0 + 648);
  v10 = *(v0 + 640);
  v11 = sub_221DAC3B8();
  v13 = v12;

  v14 = (*((*MEMORY[0x277D85000] & *v9) + 0xB8))(v10);
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v15 = v2;
  v16 = [v2 valueForManagedDefault_];

  if (v16)
  {
    LOBYTE(v261) = 2;
    MEMORY[0x223DA91C0](v16, &v261);

    if (v261 != 2 && (v261 & 1) != 0)
    {
      v17 = v1[93];
      v18 = v1[84];
      v19 = v1[83];

      v20 = sub_221DA02C0();
      swift_beginAccess();
      (*(v18 + 16))(v17, v20, v19);
      v21 = sub_221DAC218();
      v22 = sub_221DAC558();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v1[93];
      v25 = v1[84];
      v26 = v1[83];
      if (v23)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_221D2F000, v21, v22, "Password dialogs suppressed, force-rejecting renewal request.", v27, 2u);
        MEMORY[0x223DAA350](v27, -1, -1);
      }

      (*(v25 + 8))(v24, v26);
      goto LABEL_113;
    }
  }

  v28 = sub_221DAC3B8();
  if (*(v14 + 16))
  {
    v30 = sub_221D9295C(v28, v29);
    v32 = v31;

    if (v32)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v30, (v1 + 18));
      if (swift_dynamicCast())
      {
        v247 = *(v1 + 859);
        goto LABEL_18;
      }
    }
  }

  else
  {
  }

  v247 = 0;
LABEL_18:
  v56 = sub_221DAC3B8();
  if (*(v14 + 16))
  {
    v58 = sub_221D9295C(v56, v57);
    v60 = v59;

    if (v60)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v58, (v1 + 22));
      if (swift_dynamicCast())
      {
        v244 = *(v1 + 858);
        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  v244 = 0;
LABEL_24:
  v61 = sub_221DAC3B8();
  if (*(v14 + 16))
  {
    v63 = sub_221D9295C(v61, v62);
    v65 = v64;

    if (v65)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v63, (v1 + 26));
      if (swift_dynamicCast())
      {
        v257 = *(v1 + 857);
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v257 = 0;
LABEL_30:
  v66 = sub_221DAC3B8();
  v241 = v11;
  if (*(v14 + 16))
  {
    v68 = sub_221D9295C(v66, v67);
    v70 = v69;

    if (v70)
    {
      sub_221D963D4(*(v14 + 56) + 32 * v68, (v1 + 30));
      v71 = swift_dynamicCast();
      v72 = v1[75];
      if (!v71)
      {
        v72 = 0;
      }

      v243 = v72;
      if (v71)
      {
        v73 = v1[76];
      }

      else
      {
        v73 = 0;
      }

      goto LABEL_39;
    }
  }

  else
  {
  }

  v243 = 0;
  v73 = 0;
LABEL_39:
  v74 = v1[92];
  v75 = v1[84];
  v76 = v1[83];
  v77 = v1[79];
  v78 = v1[78];
  v79 = sub_221DA02C0();
  v1[94] = v79;
  swift_beginAccess();
  v80 = *(v75 + 16);
  v1[95] = v80;
  v1[96] = (v75 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v249 = v79;
  v248 = v80;
  v80(v74, v79, v76);

  v81 = v78;
  v82 = v77;
  v83 = sub_221DAC218();
  v84 = v73;
  v85 = sub_221DAC568();

  v86 = os_log_type_enabled(v83, v85);
  v87 = v1[92];
  v88 = v1[84];
  v89 = v1[83];
  v251 = v13;
  v253 = v14;
  v250 = v84;
  if (v86)
  {
    v90 = v1[79];
    v91 = v1[78];
    v92 = v1;
    v93 = swift_slowAlloc();
    v239 = v87;
    v94 = swift_slowAlloc();
    v237 = v89;
    v95 = swift_slowAlloc();
    v261 = v95;
    *v93 = 138413314;
    *(v93 + 4) = v91;
    *v94 = v91;
    *(v93 + 12) = 2114;
    v96 = v91;
    v97 = [v90 client];
    *(v93 + 14) = v97;
    v94[1] = v97;
    *(v93 + 22) = 2080;
    v92[73] = v243;
    v92[74] = v84;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
    v98 = sub_221DAC3C8();
    v100 = sub_221D909D4(v98, v99, &v261);

    *(v93 + 24) = v100;
    *(v93 + 32) = 2082;
    v101 = sub_221DA035C(v247);
    v103 = sub_221D909D4(v101, v102, &v261);

    *(v93 + 34) = v103;
    *(v93 + 42) = 2082;
    v104 = sub_221DA035C(v244);
    v106 = sub_221D909D4(v104, v105, &v261);

    *(v93 + 44) = v106;
    v13 = v251;
    _os_log_impl(&dword_221D2F000, v83, v85, "ACDAsyncAuthenticationPluginManager renewCredential %@ was called by client %{public}@ with reason %s shouldForce %{public}s shouldAvoidUI %{public}s", v93, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8890, &unk_221DB1B70);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v94, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v95, -1, -1);
    v107 = v93;
    v1 = v92;
    MEMORY[0x223DAA350](v107, -1, -1);

    v108 = *(v88 + 8);
    v108(v239, v237);
  }

  else
  {

    v108 = *(v88 + 8);
    v108(v87, v89);
  }

  v1[97] = v108;
  if (v257)
  {

    v245 = v241;
    v109 = v13;
  }

  else
  {
    v245 = (*((*MEMORY[0x277D85000] & *v1[81]) + 0xC0))(v1[78]);
    v109 = v110;
  }

  v111 = v1[91];
  v112 = v1[83];
  swift_beginAccess();
  v248(v111, v249, v112);

  v113 = sub_221DAC218();
  v114 = sub_221DAC548();

  v115 = os_log_type_enabled(v113, v114);
  v116 = v1[91];
  v117 = v1[83];
  v240 = v108;
  if (v115)
  {
    v238 = v1[91];
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v261 = v119;
    *v118 = 136315138;
    *(v118 + 4) = sub_221D909D4(v245, v109, &v261);
    _os_log_impl(&dword_221D2F000, v113, v114, "ACDAsyncAuthenticationPluginManager renewCredential using authType: %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    v120 = v119;
    v13 = v251;
    MEMORY[0x223DAA350](v120, -1, -1);
    MEMORY[0x223DAA350](v118, -1, -1);

    v108(v238, v117);
  }

  else
  {

    v108(v116, v117);
  }

  v121 = *(v1[81] + 112);
  v122 = sub_221DAC388();
  v123 = [v121 pluginForAuthenticationType_];
  v1[98] = v123;

  if (v123)
  {
    if (v257)
    {
      v124 = v1[78];
    }

    else
    {
      v124 = (*((*MEMORY[0x277D85000] & *v1[81]) + 0xC8))(v1[78]);
    }

    v136 = v124;
    v1[99] = v124;
    if ([v123 respondsToSelector_])
    {
      if (([v123 respondsToSelector_] & 1) == 0)
      {
LABEL_69:
        v141 = MEMORY[0x277D84F90];
        goto LABEL_70;
      }

      v137 = v1[79];
      v138 = v136;
      sub_221D99490(v253);
      v139 = sub_221DAC348();
      v140 = [v123 renewalIDsForAccount:v138 accountStore:v137 options:v139];

      if (v140)
      {
        v141 = sub_221DAC498();

LABEL_70:
        if (!*(v141 + 16))
        {
          v175 = [v136 identifier];
          if (v175)
          {
            v261 = 0;
            v262 = 0;
            v176 = v175;
            sub_221DAC3A8();

            v177 = v262;
            if (v262)
            {
              v178 = v261;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8930, &qword_221DB1BF0);
              v141 = swift_allocObject();
              *(v141 + 16) = xmmword_221DB1CC0;
              *(v141 + 32) = v178;
              *(v141 + 40) = v177;
            }
          }
        }

        v246 = v123;
        v1[77] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89E8, &qword_221DB1CF8);
        v157 = sub_221DAC3C8();
        v259 = v158;
        v159 = *(v141 + 16);
        v160 = MEMORY[0x277D84F90];
        v242 = v136;
        v255 = v1;
        if (v159)
        {
          v161 = v157;
          v260 = MEMORY[0x277D84F90];
          sub_221D9F25C(0, v159, 0);
          v160 = v260;
          v162 = (v141 + 40);
          do
          {
            v163 = *(v162 - 1);
            v164 = *v162;
            v261 = v161;
            v262 = v259;

            MEMORY[0x223DA9120](46, 0xE100000000000000);
            MEMORY[0x223DA9120](v163, v164);

            v166 = v261;
            v165 = v262;
            v168 = v260[2];
            v167 = v260[3];
            if (v168 >= v167 >> 1)
            {
              sub_221D9F25C((v167 > 1), v168 + 1, 1);
            }

            v260[2] = v168 + 1;
            v169 = &v260[2 * v168];
            v169[4] = v166;
            v169[5] = v165;
            v162 += 2;
            --v159;
          }

          while (v159);
        }

        v170 = sub_221DAC3B8();
        if (*(v253 + 16) && (v172 = sub_221D9295C(v170, v171), (v173 & 1) != 0))
        {
          sub_221D963D4(*(v253 + 56) + 32 * v172, (v1 + 38));
        }

        else
        {
          *(v1 + 19) = 0u;
          *(v1 + 20) = 0u;
        }

        if (v1[41])
        {
          v2 = swift_dynamicCast();
          if (v2 && (v1[107] & 1) != 0)
          {
            goto LABEL_99;
          }

          v174 = v160[2];
          if (!v174)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v2 = sub_221D96328((v1 + 38), &qword_27CFE89F0, &unk_221DB1D00);
          v174 = v160[2];
          if (!v174)
          {
LABEL_99:
            v1 = v255;
            if ((v247 & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v255[81]) + 0xD0))(v255[78], v255[79]) & 1) == 0)
            {
              v221 = v255[89];
              v222 = v255[83];
              v223 = v255[78];

              swift_beginAccess();
              v248(v221, v249, v222);
              v224 = v223;
              v225 = sub_221DAC218();
              v226 = sub_221DAC568();

              if (os_log_type_enabled(v225, v226))
              {
                v227 = v255[78];
                v228 = swift_slowAlloc();
                v229 = swift_slowAlloc();
                *v228 = 138412290;
                *(v228 + 4) = v227;
                *v229 = v227;
                v230 = v227;
                _os_log_impl(&dword_221D2F000, v225, v226, "ACDAsyncAuthenticationPluginManager limit renewal for account %@", v228, 0xCu);
                sub_221D96328(v229, &unk_27CFE8890, &unk_221DB1B70);
                MEMORY[0x223DAA350](v229, -1, -1);
                MEMORY[0x223DAA350](v228, -1, -1);

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                v225 = v242;
              }

              v231 = v255[89];
              v232 = v255[83];

              v240(v231, v232);
LABEL_113:
              v258 = 0;
              v156 = 1;
              goto LABEL_114;
            }

            v197 = [objc_opt_self() expirerWithTimeout_];
            v255[103] = v197;
            v198 = swift_allocObject();
            v198[2] = v197;
            v198[3] = v246;
            v198[4] = 3600;
            v255[16] = sub_221D9F6E4;
            v255[17] = v198;
            v255[12] = MEMORY[0x277D85DD0];
            v255[13] = 1107296256;
            v255[14] = sub_221D999D4;
            v255[15] = &block_descriptor_0;
            v199 = _Block_copy(v255 + 12);
            v200 = v197;
            swift_unknownObjectRetain();

            [v200 scheduleExpiration_];
            _Block_release(v199);
            if (v160[2])
            {
              v201 = v160[4];
              v202 = v160[5];

LABEL_105:
              v205 = v255[82];
              v206 = v255[81];
              v207 = v255[79];
              v208 = sub_221DAC4E8();
              (*(*(v208 - 8) + 56))(v205, 1, 1, v208);
              v209 = sub_221D9F708();
              v210 = swift_allocObject();
              v210[2] = v206;
              v210[3] = v209;
              v210[4] = v206;
              v210[5] = v201;
              v210[6] = v202;
              v210[7] = v246;
              v210[8] = v242;
              v210[9] = v207;
              v210[10] = v253;
              v210[11] = v243;
              v210[12] = v250;
              swift_retain_n();
              v211 = v207;
              v212 = v242;
              swift_unknownObjectRetain();

              v213 = sub_221D9B820(0, 0, v205, &unk_221DB1D18, v210);
              v255[104] = v213;
              v214 = *((*MEMORY[0x277D85000] & *v206) + 0x98);

              v215 = v214(v255 + 34);
              v217 = v216;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v261 = *v217;
              *v217 = 0x8000000000000000;
              sub_221D9ED60(v213, v201, v202, isUniquelyReferenced_nonNull_native);

              *v217 = v261;
              v215(v255 + 34, 0);
              v219 = swift_task_alloc();
              v255[105] = v219;
              v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
              v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8A00, &unk_221DB1D28);
              *v219 = v255;
              v219[1] = sub_221D98D40;
              v6 = MEMORY[0x277D84950];
              v2 = v255 + 69;
              v3 = v213;
              v4 = v220;
LABEL_106:

              return MEMORY[0x282200430](v2, v3, v4, v5, v6);
            }

            v2 = [v242 identifier];
            if (v2)
            {
              v203 = v2;

              v201 = sub_221DAC3B8();
              v202 = v204;

              goto LABEL_105;
            }

LABEL_122:
            __break(1u);
            return MEMORY[0x282200430](v2, v3, v4, v5, v6);
          }
        }

        v179 = 0;
        v180 = v160 + 5;
        while (1)
        {
          if (v179 >= v160[2])
          {
            __break(1u);
            goto LABEL_120;
          }

          v182 = *(v180 - 1);
          v181 = *v180;
          v183 = *((*MEMORY[0x277D85000] & *v255[81]) + 0x88);

          if (*(v183(v184) + 16))
          {
            sub_221D9295C(v182, v181);
            if (v185)
            {
              break;
            }
          }

          ++v179;

          v180 += 2;
          if (v174 == v179)
          {
            goto LABEL_99;
          }
        }

        v187 = v183(v186);
        if (!*(v187 + 16) || (v188 = sub_221D9295C(v182, v181), (v189 & 1) == 0))
        {

          goto LABEL_99;
        }

        v190 = v188;
        v191 = v255[90];
        v192 = v255[83];

        v193 = *(*(v187 + 56) + 8 * v190);
        v255[100] = v193;

        swift_beginAccess();
        v248(v191, v249, v192);
        v194 = sub_221DAC218();
        v195 = sub_221DAC568();
        if (os_log_type_enabled(v194, v195))
        {
          v196 = swift_slowAlloc();
          *v196 = 0;

          _os_log_impl(&dword_221D2F000, v194, v195, "ACDAsyncAuthenticationPluginManager renew already running, awaiting that", v196, 2u);
          MEMORY[0x223DAA350](v196, -1, -1);
        }

        else
        {
        }

        v240(v255[90], v255[83]);
        v235 = swift_task_alloc();
        v255[101] = v235;
        v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8A00, &unk_221DB1D28);
        *v235 = v255;
        v235[1] = sub_221D98AF8;
        v6 = MEMORY[0x277D84950];
        v2 = v255 + 71;
        v3 = v193;
        v4 = v236;
        goto LABEL_106;
      }
    }

    else
    {
      if (![v123 respondsToSelector_] || (objc_msgSend(v123, sel_respondsToSelector_, sel_renewalIDForAccount_) & 1) == 0)
      {
        goto LABEL_69;
      }

      v138 = v136;
      v142 = [v123 renewalIDForAccount_];
      if (v142)
      {
        v143 = v142;
        v144 = sub_221DAC3B8();
        v146 = v145;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8930, &qword_221DB1BF0);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_221DB1CC0;
        *(v147 + 32) = v144;
        *(v147 + 40) = v146;
        v141 = v147;
        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v125 = v1[88];
  v126 = v1[83];

  swift_beginAccess();
  v248(v125, v249, v126);

  v127 = sub_221DAC218();
  v128 = sub_221DAC558();

  v129 = os_log_type_enabled(v127, v128);
  v130 = v1[88];
  v131 = v1[83];
  if (v129)
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v261 = v133;
    *v132 = 136315138;
    v134 = v241;
    *(v132 + 4) = sub_221D909D4(v241, v251, &v261);
    _os_log_impl(&dword_221D2F000, v127, v128, "ACDAsyncAuthenticationPluginManager: no auth plugin to renew credentials for accounts of type %s, bailing!", v132, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v133);
    v135 = v133;
    v13 = v251;
    MEMORY[0x223DAA350](v135, -1, -1);
    MEMORY[0x223DAA350](v132, -1, -1);

    v240(v130, v131);
  }

  else
  {

    v108(v130, v131);
    v134 = v241;
  }

  v261 = 0;
  v262 = 0xE000000000000000;
  sub_221DAC648();
  MEMORY[0x223DA9120](0xD000000000000039, 0x8000000221DBE3A0);
  MEMORY[0x223DA9120](v134, v13);

  v149 = v261;
  v148 = v262;
  v150 = *MEMORY[0x277CB8DC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D8, &qword_221DB1CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221DB1CC0;
  *(inited + 32) = sub_221DAC3B8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v152;
  *(inited + 48) = v149;
  *(inited + 56) = v148;
  v153 = v150;
  sub_221D9F5B4(inited);
  swift_setDeallocating();
  sub_221D96328(inited + 32, &qword_27CFE89E0, &unk_221DB1CE8);
  v154 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v155 = sub_221DAC348();

  v258 = [v154 initWithDomain:v153 code:4 userInfo:v155];

LABEL_66:
  v156 = 2;
LABEL_114:
  v254 = v156;

  v233 = v1[1];

  return v233(v254, v258);
}

uint64_t sub_221D98AF8()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 648);
  if (v0)
  {
    v4 = sub_221D98F9C;
  }

  else
  {
    v4 = sub_221D98C24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221D98C24()
{

  swift_unknownObjectRelease();
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);

  v1 = *(v0 + 8);

  return v1(v4, v3);
}

uint64_t sub_221D98D40()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 648);
  if (v0)
  {
    v4 = sub_221D99218;
  }

  else
  {
    v4 = sub_221D98E6C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221D98E6C()
{
  v1 = v0[103];
  v2 = v0[99];

  v5 = v0[70];
  v6 = v0[69];
  [v1 cancelTimer];

  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v6, v5);
}

uint64_t sub_221D98F9C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 688);
  v5 = *(v0 + 664);
  swift_beginAccess();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_221DAC218();
  v8 = sub_221DAC558();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 816);
    v10 = *(v0 + 792);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_221D2F000, v7, v8, "ACDAsyncAuthenticationPluginManager renewal failed in an unexpected way %@", v11, 0xCu);
    sub_221D96328(v12, &unk_27CFE8890, &unk_221DB1B70);
    MEMORY[0x223DAA350](v12, -1, -1);
    MEMORY[0x223DAA350](v11, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v17 = *(v0 + 816);
  (*(v0 + 776))(*(v0 + 688), *(v0 + 664));

  v15 = *(v0 + 8);

  return v15(2, v17);
}

uint64_t sub_221D99218()
{
  v1 = v0[106];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[85];
  v5 = v0[83];
  swift_beginAccess();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_221DAC218();
  v8 = sub_221DAC558();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[106];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_221D2F000, v7, v8, "ACDAsyncAuthenticationPluginManager renewal failed in an unexpected way %@", v10, 0xCu);
    sub_221D96328(v11, &unk_27CFE8890, &unk_221DB1B70);
    MEMORY[0x223DAA350](v11, -1, -1);
    MEMORY[0x223DAA350](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[106];
  v14 = v0[103];
  v15 = v0[99];
  (*(v0[84] + 8))(v0[85], v0[83]);
  [v14 cancelTimer];

  swift_unknownObjectRelease();

  v16 = v0[1];

  return v16(2, v18);
}

uint64_t sub_221D99490(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A38, &qword_221DB1E88);
    v2 = sub_221DAC688();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_221D963D4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_221D9F868(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_221D9F868(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_221D9F868(v31, v32);
    result = sub_221DAC5F8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_221D9F868(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_221D99758(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_221DAC238();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 cancelTimer];
  v10 = sub_221DA02C0();
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  swift_unknownObjectRetain();
  v11 = sub_221DAC218();
  v12 = sub_221DAC558();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    if ([a2 respondsToSelector_])
    {
      v15 = [a2 debugDescription];
      v25 = a3;
      v16 = v15;
      v17 = sub_221DAC3B8();
      v19 = v18;

      a3 = v25;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v26 = v17;
    v27 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
    v20 = sub_221DAC3C8();
    v22 = sub_221D909D4(v20, v21, &v28);

    *(v13 + 4) = v22;
    *(v13 + 12) = 2050;
    *(v13 + 14) = a3;
    _os_log_impl(&dword_221D2F000, v11, v12, "ACDAsyncAuthenticationPluginManager renew for plugin %s failed to complete in expected time %{public}llu.", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DAA350](v14, -1, -1);
    MEMORY[0x223DAA350](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_221D999D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_221D99A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v14;
  *(v8 + 240) = v15;
  *(v8 + 216) = v13;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a1;
  *(v8 + 176) = a4;
  v10 = sub_221DAC238();
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 - 8);
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D99AF8, a4, 0);
}

uint64_t sub_221D99AF8()
{
  v1 = *(v0 + 240);
  v10 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = swift_allocObject();
  *(v0 + 272) = v4;
  *(v4 + 16) = 2;
  v5 = swift_allocObject();
  *(v0 + 280) = v5;
  *(v5 + 16) = 0;
  sub_221D9F708();
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  v7 = *(v0 + 208);
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v7;
  *(v6 + 64) = v10;
  *(v6 + 80) = v1;
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_221D99C74;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_221D99C74()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_221D99DA0, v1, 0);
}

uint64_t sub_221D99DA0(uint64_t a1)
{
  v48 = v1;
  v3 = *(v1 + 256);
  v2 = *(v1 + 264);
  v4 = *(v1 + 248);
  v5 = *(v1 + 208);
  v6 = sub_221DA02C0();
  swift_beginAccess();
  (*(v3 + 16))(v2, v6, v4);

  v7 = v5;

  v8 = sub_221DAC218();
  v9 = sub_221DAC548();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 272);
    v11 = *(v1 + 208);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    swift_beginAccess();
    v15 = *(v10 + 16);
    v16 = 0xE600000000000000;
    v17 = 0x44454C494146;
    v18 = 0xE700000000000000;
    v19 = 0x4E574F4E4B4E55;
    if (v15 == 1)
    {
      v19 = 0x44455443454A4552;
      v18 = 0xE800000000000000;
    }

    if (v15 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (v15)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0x444557454E4552;
    }

    if (v15)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    v22 = *(v1 + 280);
    v23 = *(v1 + 208);

    v24 = sub_221D909D4(v20, v21, &v47);

    *(v12 + 14) = v24;
    *(v12 + 22) = 2112;
    swift_beginAccess();
    v25 = *(v22 + 16);
    if (v25)
    {
      v26 = v25;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v33 = *(v1 + 256);
    v32 = *(v1 + 264);
    v34 = *(v1 + 248);
    *(v12 + 24) = v27;
    v13[1] = v28;
    _os_log_impl(&dword_221D2F000, v8, v9, "ACDAsyncAuthenticationPluginManager renew account %@ finished with result %s and error %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8890, &unk_221DB1B70);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DAA350](v14, -1, -1);
    MEMORY[0x223DAA350](v12, -1, -1);

    (*(v33 + 8))(v32, v34);
  }

  else
  {
    v29 = *(v1 + 264);
    v30 = *(v1 + 248);
    v31 = *(v1 + 256);

    (*(v31 + 8))(v29, v30);
  }

  v35 = *(v1 + 272);
  v36 = *(v1 + 280);
  v37 = *(v1 + 176);
  swift_beginAccess();
  v38 = *(v35 + 16);
  swift_beginAccess();
  v39 = *(v36 + 16);
  *(v1 + 304) = v39;
  v40 = *((*MEMORY[0x277D85000] & *v37) + 0xB0);
  v41 = v39;
  v46 = (v40 + *v40);
  v42 = swift_task_alloc();
  *(v1 + 312) = v42;
  *v42 = v1;
  v42[1] = sub_221D9A1F4;
  v44 = *(v1 + 208);
  v43 = *(v1 + 216);

  return v46(v44, v38, v43, v39);
}

uint64_t sub_221D9A1F4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_221D9A434;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_221D9A31C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221D9A31C()
{
  v1 = v0[35];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  *v4 = *(v0[34] + 16);
  v6 = *(v1 + 16);
  v4[1] = v6;
  v7 = v6;

  v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x98))(v0 + 2);
  sub_221D9E2B8(v3, v2);

  v8(v0 + 2, 0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_221D9A434()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);

  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = *(v0 + 280);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  *v7 = *(*(v0 + 272) + 16);
  v9 = *(v4 + 16);
  v7[1] = v9;
  v10 = v9;

  v11 = (*((*MEMORY[0x277D85000] & *v8) + 0x98))(v0 + 16);
  sub_221D9E2B8(v6, v5);

  v11(v0 + 16, 0);

  v12 = *(v0 + 8);

  return v12();
}

void sub_221D9A568(uint64_t a1, char *a2, char *a3, void *a4, uint64_t a5, char *a6, _BYTE *a7, id a8, uint64_t a9, void *a10)
{
  v85 = a8;
  v88 = a6;
  v89 = a7;
  v91 = a5;
  v92 = a2;
  v87 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v80 - v13;
  v83 = sub_221DAC238();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A48, &qword_221DB1E98);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v84 = (v21 + 16);
  v22 = *(v16 + 16);
  v93 = v15;
  v22(v20, a1, v15);
  v90 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22(v90, v20, v15);
  v23 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v29 = v92;
  v28 = v93;
  *(v27 + 2) = v21;
  *(v27 + 3) = v29;
  *(v27 + 4) = a3;
  v86 = v16;
  (*(v16 + 32))(&v27[v23], v20, v28);
  v31 = v87;
  v30 = v88;
  *&v27[v24] = v87;
  *&v27[v25] = v91;
  *&v27[v26] = v30;
  v32 = v89;
  *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v89;
  v33 = v32;
  v34 = v30;

  swift_unknownObjectRetain();
  v88 = a3;

  v35 = v92;

  v89 = v21;

  v36 = v31;
  if ([v31 respondsToSelector_])
  {
    (*(v86 + 8))(v90, v93);
    sub_221D99490(v85);
    v37 = v34;
    v38 = sub_221DAC348();

    v39 = swift_allocObject();
    *(v39 + 16) = sub_221D9FF54;
    *(v39 + 24) = v27;
    v98 = sub_221DA00F4;
    v99 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_221D9B7A8;
    v97 = &block_descriptor_67;
    v40 = _Block_copy(&aBlock);

    [v31 renewCredentialsForAccount:v37 accountStore:v33 options:v38 completion:v40];
LABEL_12:

    _Block_release(v40);

    return;
  }

  v41 = v93;
  v85 = v33;
  v42 = v86;
  if ([v31 respondsToSelector_])
  {
    v38 = a10;
    (*(v42 + 8))(v90, v41);
    v43 = v34;
    if (a10)
    {
      v38 = sub_221DAC388();
    }

    v64 = v85;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_221D9FF54;
    *(v65 + 24) = v27;
    v98 = sub_221DA0238;
    v99 = v65;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_221D9B7A8;
    v97 = &block_descriptor_61_0;
    v40 = _Block_copy(&aBlock);

    [v31 renewCredentialsForAccount:v43 accountStore:v64 reason:v38 completion:v40];
    goto LABEL_12;
  }

  v44 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CB8DC0] code:-102 userInfo:0];
  v45 = v84;
  swift_beginAccess();
  if (*v45 == 1)
  {
    v88 = v44;
    v92 = v34;
    v46 = sub_221DA02C0();
    swift_beginAccess();
    v47 = v82;
    v48 = v81;
    v49 = v83;
    (*(v82 + 16))(v81, v46, v83);
    swift_unknownObjectRetain();
    v50 = sub_221DAC218();
    v51 = sub_221DAC558();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v50, v51))
    {
      v84 = v27;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v100[0] = v53;
      *v52 = 136315138;
      if ([v36 respondsToSelector_])
      {
        v54 = [v36 debugDescription];
        v55 = sub_221DAC3B8();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      v66 = v81;
      v100[1] = v55;
      v100[2] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
      v67 = sub_221DAC3C8();
      v69 = sub_221D909D4(v67, v68, v100);

      *(v52 + 4) = v69;
      _os_log_impl(&dword_221D2F000, v50, v51, "ACDAsyncAuthenticationPluginManager error in %s renewCredentials implementation, called completion handler twice", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x223DAA350](v53, -1, -1);
      MEMORY[0x223DAA350](v52, -1, -1);

      (*(v82 + 8))(v66, v83);
      v41 = v93;
    }

    else
    {

      (*(v47 + 8))(v48, v49);
    }

    v70 = v90;
    v71 = sub_221DAC4E8();
    v72 = v80;
    (*(*(v71 - 8) + 56))(v80, 1, 1, v71);
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v74 = v92;
    v73[4] = v91;
    v73[5] = v74;
    v73[6] = 2;
    v75 = v85;
    v76 = v88;
    v73[7] = v85;
    v73[8] = v76;
    v77 = v75;
    v78 = v74;

    v79 = v76;
    sub_221D8DBBC(0, 0, v72, &unk_221DB1EA8, v73);

    sub_221D96328(v72, &qword_27CFE89D0, &qword_221DB1570);
    (*(v42 + 8))(v70, v41);
  }

  else
  {
    v89[16] = 1;
    swift_beginAccess();
    *(v35 + 2) = 2;
    v58 = objc_opt_self();
    v59 = sub_221DAC188();
    v60 = [v58 _sanitizeError_];

    v61 = v88;
    swift_beginAccess();
    v62 = *(v61 + 2);
    *(v61 + 2) = v60;

    v63 = v90;
    sub_221DAC4C8();

    (*(v42 + 8))(v63, v41);
  }
}

uint64_t sub_221D9AF34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v51 = a6;
  v52 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_221DAC238();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16))
  {
    v50 = a1;
    v51 = a2;
    v24 = a9;
    v23 = a10;
    v25 = sub_221DA02C0();
    swift_beginAccess();
    (*(v20 + 16))(v22, v25, v19);
    swift_unknownObjectRetain();
    v26 = sub_221DAC218();
    v27 = sub_221DAC558();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v48 = a9;
      v49 = a10;
      v28 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53[0] = v47;
      *v28 = 136315138;
      if ([a7 respondsToSelector_])
      {
        v29 = [a7 debugDescription];
        v30 = sub_221DAC3B8();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v53[3] = v30;
      v53[4] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
      v37 = sub_221DAC3C8();
      v39 = sub_221D909D4(v37, v38, v53);

      *(v28 + 4) = v39;
      _os_log_impl(&dword_221D2F000, v26, v27, "ACDAsyncAuthenticationPluginManager error in %s renewCredentials implementation, called completion handler twice", v28, 0xCu);
      v40 = v47;
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223DAA350](v40, -1, -1);
      MEMORY[0x223DAA350](v28, -1, -1);

      (*(v20 + 8))(v22, v19);
      v24 = v48;
      v23 = v49;
    }

    else
    {

      (*(v20 + 8))(v22, v19);
    }

    v41 = sub_221DAC4E8();
    (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v43 = v51;
    v42[4] = v52;
    v42[5] = v24;
    v42[6] = v50;
    v42[7] = v23;
    v42[8] = v43;

    v44 = v24;
    v45 = v23;
    v46 = v43;
    sub_221D8DBBC(0, 0, v18, &unk_221DB1EB8, v42);

    return sub_221D96328(v18, &qword_27CFE89D0, &qword_221DB1570);
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    *(a4 + 16) = a1;
    if (a2)
    {
      v33 = sub_221DAC188();
    }

    else
    {
      v33 = 0;
    }

    v34 = [objc_opt_self() _sanitizeError_];

    swift_beginAccess();
    v35 = *(a5 + 16);
    *(a5 + 16) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A48, &qword_221DB1E98);
    return sub_221DAC4C8();
  }
}

uint64_t sub_221D9B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_221DAC238();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D9B488, 0, 0);
}

uint64_t sub_221D9B488(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = sub_221DA02C0();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_221DAC218();
  v7 = sub_221DAC548();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_221D2F000, v6, v7, "Saving despite multiple callbacks out of an abundance of conforming to prior behavior", v8, 2u);
    MEMORY[0x223DAA350](v8, -1, -1);
  }

  v10 = v1[11];
  v9 = v1[12];
  v11 = v1[10];
  v12 = v1[5];

  (*(v10 + 8))(v9, v11);
  v13 = *((*MEMORY[0x277D85000] & *v12) + 0xB0);
  v20 = (v13 + *v13);
  v14 = swift_task_alloc();
  v1[13] = v14;
  *v14 = v1;
  v14[1] = sub_221D9B694;
  v15 = v1[8];
  v16 = v1[9];
  v18 = v1[6];
  v17 = v1[7];

  return v20(v18, v17, v15, v16);
}

uint64_t sub_221D9B694()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

void sub_221D9B7A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_221D9B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_221D965DC(a3, v22 - v9, &qword_27CFE89D0, &qword_221DB1570);
  v11 = sub_221DAC4E8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_221D96328(v10, &qword_27CFE89D0, &qword_221DB1570);
  }

  else
  {
    sub_221DAC4D8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_221DAC4B8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_221DAC3D8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89F8, &qword_221DB1D20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_221D9BC84(void *a1, void *a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v8 = sub_221DAC358();
  v5[6] = v8;
  v9 = a1;
  v10 = a2;

  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_221D9BD98;

  return sub_221D96E70(v9, v10, v8);
}

uint64_t sub_221D9BD98(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (a2)
  {
    v9 = a2;
    v10 = sub_221DAC188();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v5 + 40);
  (v11)[2](v11, a1, v10);

  _Block_release(v11);
  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_221D9BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = sub_221DAC238();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v7 = sub_221DAC208();
  v5[33] = v7;
  v5[34] = *(v7 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221D9C0A0, v4, 0);
}

uint64_t sub_221D9C0A0()
{
  v1 = *(v0 + 200);
  if (!(*(v0 + 216) | v1))
  {
    [*(v0 + 192) setAuthenticated_];
LABEL_5:
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = *(v0 + 192);
    v11 = sub_221DA02C0();
    *(v0 + 288) = v11;
    swift_beginAccess();
    v12 = *(v9 + 16);
    *(v0 + 296) = v12;
    *(v0 + 304) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v7, v11, v8);
    v13 = v10;
    v14 = sub_221DAC218();
    v15 = sub_221DAC548();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 192);
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_221D2F000, v14, v15, "ACDAsyncAuthenticationPluginManager renewCredentials is saving account %@", v18, 0xCu);
      sub_221D96328(v19, &unk_27CFE8890, &unk_221DB1B70);
      MEMORY[0x223DAA350](v19, -1, -1);
      MEMORY[0x223DAA350](v18, -1, -1);
    }

    *(v0 + 312) = v17;
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v24 = *(v0 + 208);
    v25 = *(v0 + 192);
    v26 = *(v23 + 8);
    *(v0 + 320) = v26;
    *(v0 + 328) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v21, v22);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 344;
    *(v0 + 24) = sub_221D9C3DC;
    v27 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A18, &qword_221DB1D48);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221D9C780;
    *(v0 + 104) = &block_descriptor_9;
    *(v0 + 112) = v27;
    [v24 saveVerifiedAccount:v25 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v2 = *(v0 + 280);
  if (v1 == 1)
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 192);
    sub_221DAC1F8();
    v6 = sub_221DAC1D8();
    (*(v4 + 8))(v2, v3);
    [v5 setLastCredentialRenewalRejectionDate_];

    goto LABEL_5;
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_221D9C3DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 224);
  if (v2)
  {
    v4 = sub_221D9C574;
  }

  else
  {
    v4 = sub_221D9C4FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221D9C4FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221D9C574(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[37];
  v4 = v1[36];
  v5 = v1[31];
  v6 = v1[29];
  v7 = v1[24];
  swift_willThrow();
  swift_beginAccess();
  v3(v5, v4, v6);
  v8 = v7;
  v9 = v2;
  v10 = sub_221DAC218();
  v11 = sub_221DAC558();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v1[42];
    v13 = v1[39];
    v14 = v1[24];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v13;
    *(v15 + 12) = 2112;
    v17 = v14;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    v16[1] = v19;
    _os_log_impl(&dword_221D2F000, v10, v11, "ACDAsyncAuthenticationPluginManager renewCredentials failed to save account: %@ error: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8890, &unk_221DB1B70);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v16, -1, -1);
    MEMORY[0x223DAA350](v15, -1, -1);
  }

  v20 = v1[40];
  v21 = v1[31];
  v22 = v1[29];

  v20(v21, v22);
  swift_willThrow();

  v23 = v1[1];

  return v23();
}

uint64_t sub_221D9C780(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFE8A00, &unk_221DB1D28);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_221D9C84C(uint64_t a1)
{
  v2 = sub_221DAC3B8();
  if (!*(a1 + 16))
  {

LABEL_7:

    return a1;
  }

  v4 = sub_221D9295C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_221D963D4(*(a1 + 56) + 32 * v4, &v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v16[0];
  v17 = a1;
  v8 = sub_221DAC3B8();
  v10 = v9;

  v11 = sub_221DAC1A8();
  v12 = unserializeSecCertificates();

  if (v12)
  {
    v13 = sub_221DAC358();

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A20, &qword_221DB1D50);
    *&v18 = v13;
    sub_221D9F868(&v18, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_221D9EC10(v16, v8, v10, isUniquelyReferenced_nonNull_native);
    sub_221D962D4(v7, *(&v7 + 1));
  }

  else
  {
    sub_221D9E214(v8, v10, v16);
    sub_221D962D4(v7, *(&v7 + 1));

    sub_221D96328(v16, &qword_27CFE89F0, &unk_221DB1D00);
    return v17;
  }

  return a1;
}

void sub_221D9CA2C(void *a1)
{
  v3 = sub_221DAC238();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = [a1 authenticationType];
  if (!v13)
  {
    v26 = sub_221DA02C0();
    swift_beginAccess();
    (*(v4 + 16))(v7, v26, v3);
    v27 = a1;
    v28 = sub_221DAC218();
    v29 = sub_221DAC548();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v30 = 136315138;
      v31 = [v27 accountType];

      if (!v31)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v53 = v3;
      v32 = [v31 identifier];

      if (v32)
      {
        v33 = sub_221DAC3B8();
        v35 = v34;
      }

      else
      {
        v35 = 0xE600000000000000;
        v33 = 0x296C6C756E28;
      }

      v49 = sub_221D909D4(v33, v35, &v55);

      *(v30 + 4) = v49;
      _os_log_impl(&dword_221D2F000, v28, v29, "Returning account's accountType as the authentication type: %s", v30, 0xCu);
      v50 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223DAA350](v50, -1, -1);
      MEMORY[0x223DAA350](v30, -1, -1);

      (*(v4 + 8))(v7, v53);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v51 = [v27 accountType];
    if (v51)
    {
      v52 = v51;
      v48 = [v51 identifier];

      if (!v48)
      {
        return;
      }

LABEL_27:
      sub_221DAC3B8();

      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  v14 = v13;
  v15 = sub_221DAC3B8();
  v17 = v16;

  if (v15 == sub_221DAC3B8() && v17 == v18)
  {

LABEL_15:
    v36 = v1;
    v37 = sub_221DA02C0();
    swift_beginAccess();
    (*(v4 + 16))(v12, v37, v3);
    v38 = a1;
    v39 = sub_221DAC218();
    v40 = sub_221DAC548();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_221D2F000, v39, v40, "Account %@ depends on parent for Authentication", v41, 0xCu);
      sub_221D96328(v42, &unk_27CFE8890, &unk_221DB1B70);
      MEMORY[0x223DAA350](v42, -1, -1);
      MEMORY[0x223DAA350](v41, -1, -1);
    }

    (*(v4 + 8))(v12, v3);
    v44 = [v38 parentAccount];
    if (v44)
    {
      v45 = v44;

      (*((*MEMORY[0x277D85000] & *v36) + 0xC0))(v45);

      return;
    }

    v46 = [v38 accountType];
    if (v46)
    {
      v47 = v46;

      v48 = [v47 identifier];

      if (!v48)
      {
        return;
      }

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
    return;
  }

  v20 = sub_221DAC6C8();

  if (v20)
  {
    goto LABEL_15;
  }

  v21 = sub_221DA02C0();
  swift_beginAccess();
  (*(v4 + 16))(v10, v21, v3);

  v22 = sub_221DAC218();
  v23 = sub_221DAC548();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v55 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_221D909D4(v15, v17, &v55);
    _os_log_impl(&dword_221D2F000, v22, v23, "Returning account's authenticationType: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DAA350](v25, -1, -1);
    MEMORY[0x223DAA350](v24, -1, -1);
  }

  (*(v4 + 8))(v10, v3);
}

id sub_221D9D0D0(void *a1)
{
  v2 = [a1 authenticationType];
  if (!v2)
  {
    sub_221DAC3B8();
    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_221DAC3B8();
  v6 = v5;

  v7 = sub_221DAC3B8();
  if (!v6)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v4 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_221DAC6C8();

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = [a1 parentAccount];
  if (v12)
  {
    v13 = v12;
    v14 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();

    return v14;
  }

LABEL_11:

  return a1;
}

uint64_t sub_221D9D238(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_221DAC238();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v92 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v89 - v9;
  v11 = sub_221DAC208();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v89 - v16;
  v91 = a1;
  v18 = [a1 identifier];
  if (!v18)
  {
    sub_221D9F878();
    v18 = sub_221DAC5A8();
  }

  v19 = [a2 accountWithIdentifier_];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 lastCredentialRenewalRejectionDate];
    if (v21)
    {
      v22 = v21;
      sub_221DAC1E8();

      sub_221DAC1F8();
      sub_221DAC1C8();
      v24 = v23;
      v25 = *(v12 + 8);
      v25(v15, v11);
      if (v24 < 86400.0)
      {
        v92 = v25;
        v26 = sub_221DA02C0();
        swift_beginAccess();
        v27 = v93;
        (*(v93 + 16))(v10, v26, v94);
        v28 = v18;
        v29 = sub_221DAC218();
        v30 = sub_221DAC568();

        LODWORD(v91) = v30;
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v89 = v31;
          v90 = swift_slowAlloc();
          v95[0] = v90;
          *v31 = 136315138;
          v32 = v28;
          v33 = [v32 description];
          v34 = sub_221DAC3B8();
          v36 = v35;

          v37 = sub_221D909D4(v34, v36, v95);

          v38 = v89;
          *(v89 + 1) = v37;
          v39 = v38;
          _os_log_impl(&dword_221D2F000, v29, v91, "The user has declined an identical request to renew credentials for %s within the past 24 hours. Suppressing the password prompt and failing immediately.", v38, 0xCu);
          v40 = v90;
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x223DAA350](v40, -1, -1);
          MEMORY[0x223DAA350](v39, -1, -1);

          (*(v93 + 8))(v10, v94);
        }

        else
        {

          (*(v27 + 8))(v10, v94);
        }

        (v92)(v17, v11);
        return 0;
      }

      v25(v17, v11);
    }
  }

  v41 = 0x296C6C756E28;
  v42 = [a2 client];
  if (v42 && (v43 = v42, v44 = [v42 bundleID], v43, v44))
  {
    v41 = sub_221DAC3B8();
    v46 = v45;
  }

  else
  {
    v46 = 0xE600000000000000;
  }

  v97 = v41;
  v98 = v46;
  MEMORY[0x223DA9120](46, 0xE100000000000000);
  v47 = v18;
  v48 = [v47 description];
  v49 = sub_221DAC3B8();
  v51 = v50;

  MEMORY[0x223DA9120](v49, v51);

  MEMORY[0x223DA9120](46, 0xE100000000000000);
  v52 = *(v3 + 112);
  v53 = sub_221DA035C([v52 _ac_DMIsMigrationNeeded]);
  MEMORY[0x223DA9120](v53);

  MEMORY[0x223DA9120](41, 0xE100000000000000);
  v55 = v97;
  v54 = v98;
  v56 = [v52 renewalRateLimiter];
  v57 = sub_221DAC388();
  v58 = [v56 reservePerformActionForKey_];

  if (v58)
  {

    return 1;
  }

  v90 = v47;
  v60 = sub_221DA02C0();
  swift_beginAccess();
  v61 = v92;
  v62 = v93;
  v63 = v94;
  (*(v93 + 16))(v92, v60, v94);
  swift_retain_n();

  v64 = v91;
  v65 = sub_221DAC218();
  v66 = sub_221DAC558();

  LODWORD(v91) = v66;
  if (!os_log_type_enabled(v65, v66))
  {

    (*(v62 + 8))(v61, v63);
    return 0;
  }

  v67 = v65;
  v68 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  v96 = v69;
  *v68 = 136446978;
  v70 = sub_221D909D4(v55, v54, &v96);

  *(v68 + 4) = v70;
  *(v68 + 12) = 2082;
  v71 = [v64 accountType];

  if (v71)
  {
    v72 = [v71 identifier];

    v73 = v92;
    if (v72)
    {
      v74 = sub_221DAC3B8();
      v76 = v75;
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    v95[0] = v74;
    v95[1] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A10, &unk_221DB1D38);
    v77 = sub_221DAC3C8();
    v79 = sub_221D909D4(v77, v78, &v96);

    *(v68 + 14) = v79;
    *(v68 + 22) = 2082;
    v80 = [v52 renewalRateLimiter];
    v81 = [v80 maximum];

    v95[0] = v81;
    v82 = sub_221DAC6A8();
    v84 = sub_221D909D4(v82, v83, &v96);

    *(v68 + 24) = v84;
    *(v68 + 32) = 2082;
    v85 = [v52 renewalRateLimiter];
    [v85 timeInterval];

    v86 = sub_221DAC508();
    v88 = sub_221D909D4(v86, v87, &v96);

    *(v68 + 34) = v88;
    _os_log_impl(&dword_221D2F000, v67, v91, "%{public}s (%{public}s exceeded %{public}s renewals per %{public}s minutes -- rejecting", v68, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DAA350](v69, -1, -1);
    MEMORY[0x223DAA350](v68, -1, -1);

    (*(v93 + 8))(v73, v94);
    return 0;
  }

  __break(1u);
  return result;
}

void ACDAsyncAuthenticationPluginManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ACDAsyncAuthenticationPluginManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t ACDAsyncAuthenticationPluginManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ACDAsyncAuthenticationPluginManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221D9DC50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_221D96B50;

  return v6();
}

uint64_t sub_221D9DD38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_221D967B4;

  return v7();
}

uint64_t sub_221D9DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_221D965DC(a3, v23 - v10, &qword_27CFE89D0, &qword_221DB1570);
  v12 = sub_221DAC4E8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_221D96328(v11, &qword_27CFE89D0, &qword_221DB1570);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_221DAC4D8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_221DAC4B8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_221DAC3D8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);

    return v21;
  }

LABEL_8:
  sub_221D96328(a3, &qword_27CFE89D0, &qword_221DB1570);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_221D9E11C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221DA023C;

  return v6(a1);
}

double sub_221D9E214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_221D9295C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_221D9EF48();
      v10 = v12;
    }

    sub_221D9F868((*(v10 + 56) + 32 * v8), a3);
    sub_221D9E8B0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_221D9E2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_221D9295C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_221D9F0EC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_221D9EA60(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_221D9E350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A30, &qword_221DB1E80);
  v33 = v4;
  result = sub_221DAC678();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_221D9F868(v24, v34);
      }

      else
      {
        sub_221D963D4(v24, v34);
      }

      sub_221DAC718();
      sub_221DAC3F8();
      result = sub_221DAC728();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_221D9F868(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_221D9E608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A40, &qword_221DB1E90);
  v34 = v4;
  result = sub_221DAC678();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_221DAC718();
      sub_221DAC3F8();
      result = sub_221DAC728();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
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

uint64_t sub_221D9E8B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221DAC5E8() + 1) & ~v5;
    do
    {
      sub_221DAC718();

      sub_221DAC3F8();
      v10 = sub_221DAC728();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_221D9EA60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_221DAC5E8() + 1) & ~v5;
    do
    {
      sub_221DAC718();

      sub_221DAC3F8();
      v9 = sub_221DAC728();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_221D9EC10(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221D9295C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_221D9EF48();
      v11 = v19;
      goto LABEL_8;
    }

    sub_221D9E350(v16, a4 & 1);
    v11 = sub_221D9295C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_221DAC6E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_221D9F868(a1, v22);
  }

  else
  {
    sub_221D9EEDC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_221D9ED60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221D9295C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_221D9E608(v16, a4 & 1);
      v11 = sub_221D9295C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_221DAC6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_221D9F0EC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_221D9EEDC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_221D9F868(a4, (a5[7] + 32 * a1));
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

void *sub_221D9EF48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A30, &qword_221DB1E80);
  v2 = *v0;
  v3 = sub_221DAC668();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_221D963D4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_221D9F868(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_221D9F0EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A40, &qword_221DB1E90);
  v2 = *v0;
  v3 = sub_221DAC668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_221D9F25C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221D9F27C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221D9F27C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8930, &qword_221DB1BF0);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_221D9F388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A58, &qword_221DB1EC8);
    v3 = sub_221DAC688();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_221D9295C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221D9F48C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A40, &qword_221DB1E90);
    v3 = sub_221DAC688();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_221D9295C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221D9F5B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A30, &qword_221DB1E80);
    v3 = sub_221DAC688();
    v4 = a1 + 32;

    while (1)
    {
      sub_221D965DC(v4, &v13, &qword_27CFE89E0, &unk_221DB1CE8);
      v5 = v13;
      v6 = v14;
      result = sub_221D9295C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221D9F868(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221D9F708()
{
  result = qword_281303230[0];
  if (!qword_281303230[0])
  {
    type metadata accessor for ACDAsyncAuthenticationPluginManager();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281303230);
  }

  return result;
}

uint64_t sub_221D9F75C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_221D967B4;

  return sub_221D99A18(a1, v9, v10, v4, v5, v6, v7, v8);
}

_OWORD *sub_221D9F868(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_221D9F878()
{
  result = qword_27CFE8A28;
  if (!qword_27CFE8A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFE8A28);
  }

  return result;
}

uint64_t dispatch thunk of ACDAsyncAuthenticationPluginManager.renewCredential(for:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221D9FA38;

  return v11(a1, a2, a3);
}

uint64_t sub_221D9FA38(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void type metadata accessor for ACAccountCredentialRenewResult()
{
  if (!qword_2813031C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2813031C8);
    }
  }
}

uint64_t sub_221D9FB8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221D96B50;

  return sub_221D9BC84(v2, v3, v4, v5, v6);
}

uint64_t sub_221D9FC54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_221D96B50;

  return sub_221D9DC50(v2, v3, v4);
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_221D9FD54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221D96B50;

  return sub_221D9DD38(a1, v4, v5, v6);
}

uint64_t sub_221D9FE20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221D96B50;

  return sub_221D9E11C(a1, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_221D9FF54(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE8A48, &qword_221DB1E98) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_221D9AF34(a1, a2, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_221DA0038()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221D96B50;

  return sub_221D9B3C0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_53Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_221DA0174()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221D967B4;

  return sub_221D9B3C0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_221DA024C()
{
  v0 = sub_221DAC238();
  __swift_allocate_value_buffer(v0, qword_281303988);
  __swift_project_value_buffer(v0, qword_281303988);
  return sub_221DAC228();
}

uint64_t sub_221DA02C0()
{
  if (qword_281303868 != -1)
  {
    swift_once();
  }

  v0 = sub_221DAC238();

  return __swift_project_value_buffer(v0, qword_281303988);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_221DA035C(char a1)
{
  if (a1)
  {
    return 5457241;
  }

  else
  {
    return 20302;
  }
}

uint64_t sub_221DA0380(int a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0x6465646461;
    }

    if (a1 == 2)
    {
      return 0x6465696669646F6DLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return 0x646574656C6564;
      case 4:
        return 0x64656C696166;
      case 5:
        return 0x55676E696D726177;
    }
  }

  return 0x6E776F6E6B6E75;
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

void _ACDLazyArrayInitializeIfNecessary_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _ACDLazyArrayInitializeIfNecessary(ACDLazyArray * _Nonnull __strong)"];
  [v1 handleFailureInFunction:v0 file:@"ACDLazyArray.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"self"}];
}

void _ACCOUNTS_IS_VALIDATING_PLUGIN_RESPONSE_cold_1(void *a1, const char *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 136315394;
  ClassName = object_getClassName(a1);
  v7 = 2080;
  Name = sel_getName(a2);
  _os_log_fault_impl(&dword_221D2F000, a3, OS_LOG_TYPE_FAULT, "Authentication plugin '%s' indicated failure but provided no error! (selector: %s)", &v5, 0x16u);
}

void __getSimulateCrashSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CrashReporterSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ACDEventLedger.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}