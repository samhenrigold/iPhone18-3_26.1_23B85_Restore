id _s14HealthPlatform0A15AppPluginSourceC24allowedBundleIdentifiersShySSGSgyFZ_0()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleInternalInstall];

    if (v2 && (sub_22855D1AC(), v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v4 = sub_22855D17C(), , v5 = [v3 initWithSuiteName_], v4, v5) && (v6 = sub_22855D17C(), v7 = objc_msgSend(v5, sel_arrayForKey_, v6), v5, v6, v7) && (v8 = sub_22855D3AC(), v7, v9 = sub_228464940(v8), , v9))
    {
      v10 = sub_228406280(v9);

      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HealthAppPluginSource.init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a1;
  v11 = sub_22855BF5C();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855C06C();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v61 = v15;
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v56 - v16;
  sub_228407690(0);
  v17 = swift_allocObject();
  *(v17 + 28) = 0;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = 0;
  *(v6 + 16) = v17;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v18 = qword_280DEEBA0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_22855CABC();
  __swift_project_value_buffer(v19, qword_280DEEBA8);
  v20 = sub_22855CA8C();
  v21 = sub_22855D6AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2283ED000, v20, v21, "Setting up for bundle loading...", v22, 2u);
    MEMORY[0x22AABAD40](v22, -1, -1);
  }

  v23 = sub_22855CA8C();
  v24 = sub_22855D6AC();

  if (os_log_type_enabled(v23, v24))
  {
    v57 = a2;
    v58 = v6;
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v69 = v25;
    *v6 = 136315138;
    v26 = *(a4 + 16);
    if (v26)
    {
      a2 = sub_22840770C(*(a4 + 16), 0);
      v27 = sub_2284077A8(v68, (a2 + 32), v26, a4);
      sub_228407958(v68[0]);
      if (v27 != v26)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {

      a2 = MEMORY[0x277D84F90];
    }

    v68[0] = a2;
    v28 = MEMORY[0x277D837D0];
    sub_2283F783C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228407900(&qword_280DEE7C0, &qword_280DEE7C8, v28, MEMORY[0x277D83958]);
    v29 = sub_22855D15C();
    v31 = v30;

    v32 = sub_2283F8938(v29, v31, &v69);

    *(v6 + 4) = v32;
    _os_log_impl(&dword_2283ED000, v23, v24, "Disabled identifiers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AABAD40](v25, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);

    a2 = v57;
    v6 = v58;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_13:

    v33 = sub_22855CA8C();
    v34 = sub_22855D6AC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = a2;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69 = v37;
      *v36 = 136315138;
      v38 = *(a5 + 16);
      if (v38)
      {
        a2 = sub_22840770C(*(a5 + 16), 0);
        v39 = sub_2284077A8(v68, (a2 + 32), v38, a5);
        sub_228407958(v68[0]);
        if (v39 != v38)
        {
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {

        a2 = MEMORY[0x277D84F90];
      }

      v68[0] = a2;
      v51 = MEMORY[0x277D837D0];
      sub_2283F783C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_228407900(&qword_280DEE7C0, &qword_280DEE7C8, v51, MEMORY[0x277D83958]);
      v52 = sub_22855D15C();
      v54 = v53;

      v55 = sub_2283F8938(v52, v54, &v69);

      *(v36 + 4) = v55;
      _os_log_impl(&dword_2283ED000, v33, v34, "PLUGIN ALLOW LIST ENABLED; limiting plugins to: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AABAD40](v37, -1, -1);
      MEMORY[0x22AABAD40](v36, -1, -1);

      a2 = v35;
      v40 = v67;
      if (v67)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_9:

  if (a5)
  {
    goto LABEL_13;
  }

LABEL_18:
  v40 = v67;
  if (!v67)
  {
LABEL_19:
    type metadata accessor for StorageLocations();
    v41 = v62;
    static StorageLocations.rootDirectory.getter();
    v68[0] = 0xD000000000000026;
    v68[1] = 0x800000022856F190;
    v43 = v63;
    v42 = v64;
    v44 = v60;
    (*(v63 + 104))(v60, *MEMORY[0x277CC91C0], v64);
    sub_2283F79A4();
    v45 = v59;
    sub_22855C05C();
    (*(v43 + 8))(v44, v42);
    v47 = v65;
    v46 = v66;
    (*(v65 + 8))(v41, v66);
    v48 = *(v47 + 32);
    v48(v41, v45, v46);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    a2 = swift_allocObject();
    v48((a2 + v49), v41, v46);
    v40 = sub_228462AB8;
  }

LABEL_20:
  *(v6 + 24) = v40;
  *(v6 + 32) = a2;
  return v6;
}

uint64_t sub_228407608()
{
  v1 = sub_22855C06C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_228407690(uint64_t a1)
{
  if (!qword_280DED070)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED070);
    }
  }
}

void *sub_22840770C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2283F783C(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2284077A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_228407900(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2283F783C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HealthAppPluginSource.plugin(name:allowDynamicFallback:)@<X0>(void (*x8_0)(char *, uint64_t)@<X8>)
{
  if (sub_22855D28C())
  {
  }

  else
  {

    MEMORY[0x22AAB92A0](46, 0xE100000000000000);

    MEMORY[0x22AAB92A0](0x6C7068746C616568, 0xEC0000006E696775);
  }

  v6 = *(v3 + 16);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock((v6 + 28));
  sub_2284084EC((v6 + 16), x8_0);
  os_unfair_lock_unlock((v6 + 28));
}

void sub_228407AD0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void (*a7)(char *, uint64_t)@<X8>)
{
  v120 = a3;
  v102 = a6;
  LODWORD(v105) = a5;
  v117 = a4;
  v118 = a7;
  v111 = sub_22855BF5C();
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22855C06C();
  v112 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v115 = &v100 - v12;
  v116 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v114 = *(v116 - 8);
  v13 = MEMORY[0x28223BE20](v116);
  v104 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v100 - v16;
  MEMORY[0x28223BE20](v15);
  v109 = (&v100 - v17);
  v107 = a1;
  v18 = *a1;
  v19 = *(*a1 + 16) + 1;
  v20 = (v18 + 72);
  while (--v19)
  {
    v21 = *(v20 - 5);
    v22 = *(v20 - 4);
    v24 = *(v20 - 3);
    v23 = *(v20 - 2);
    v26 = *(v20 - 1);
    v25 = *v20;
    if (v21 == a2 && v22 == v120)
    {
      v21 = a2;
LABEL_21:
      v41 = v118;
      *v118 = v21;
      v41[1] = v22;
      v41[2] = v24;
      v41[3] = v23;
      v41[4] = v26;
      v41[5] = v25;

      v42 = v24;

LABEL_22:
      swift_unknownObjectRetain();
      return;
    }

    v20 += 6;
    if (sub_22855E15C())
    {
      goto LABEL_21;
    }
  }

  v28 = v115;
  sub_22840857C(a2, v120, v115);
  v29 = v116;
  if (v114[6](v28, 1, v116) == 1)
  {
    sub_22840BD38(v28);
    if (v105)
    {
      v30 = v107;
      v31 = v119;
      sub_22846140C(v107);
      if (v31)
      {
        return;
      }

      v119 = 0;
      v32 = *(*v30 + 16) + 1;
      v33 = (*v30 + 72);
      while (--v32)
      {
        v34 = *(v33 - 5);
        v35 = *(v33 - 4);
        v37 = *(v33 - 3);
        v36 = *(v33 - 2);
        v39 = *(v33 - 1);
        v38 = *v33;
        if (v34 == a2 && v35 == v120)
        {
          v34 = a2;
LABEL_34:
          v98 = v118;
          *v118 = v34;
          v98[1] = v35;
          v98[2] = v37;
          v98[3] = v36;
          v98[4] = v39;
          v98[5] = v38;

          v99 = v37;

          goto LABEL_22;
        }

        v33 += 6;
        if (sub_22855E15C())
        {
          goto LABEL_34;
        }
      }
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    v60 = v120;
    *v61 = a2;
    v61[1] = v60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v43 = v109;
    sub_22840875C(v28, v109);
    v44 = *(v29 + 24);
    v45 = v43[1];
    v101 = *v43;
    v121 = v101;
    v122 = v45;
    v46 = v113;
    v48 = v113 + 104;
    v47 = *(v113 + 104);
    v49 = v106;
    LODWORD(v115) = *MEMORY[0x277CC91D8];
    v50 = v111;
    v100 = v47;
    v47(v106);
    v51 = sub_2283F79A4();

    v105 = v44;
    v52 = v108;
    v120 = v51;
    sub_22855C05C();
    v54 = *(v46 + 8);
    v53 = v46 + 8;
    v114 = v54;
    (v54)(v49, v50);

    v55 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v56 = sub_22855BFBC();
    v57 = [v55 initWithURL_];

    v58 = v112 + 8;
    v59 = *(v112 + 8);
    v59(v52, v110);
    if (v57)
    {
      sub_228408938(v57, v107, v118);
      sub_228408700(v43);
    }

    else
    {
      v113 = v53;
      v62 = v111;
      v118 = v59;
      v119 = v48;
      v117 = v45;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v112 = v58;
      v63 = sub_22855CABC();
      __swift_project_value_buffer(v63, qword_280DEEBD0);
      v64 = v103;
      sub_228408514(v43, v103, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v65 = v43;
      v66 = v104;
      sub_228408514(v65, v104, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v67 = sub_22855CA8C();
      v68 = sub_22855D68C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v123 = v107;
        *v69 = 136315650;
        v121 = v102;
        swift_getMetatypeMetadata();
        v70 = sub_22855D1BC();
        v72 = sub_2283F8938(v70, v71, &v123);

        *(v69 + 4) = v72;
        LODWORD(v102) = v68;
        *(v69 + 12) = 2080;
        v73 = *(v64 + 16);
        v74 = *(v64 + 24);

        sub_228408700(v64);
        v75 = sub_2283F8938(v73, v74, &v123);
        v76 = v111;

        *(v69 + 14) = v75;
        *(v69 + 22) = 2080;
        v77 = v66[1];
        v121 = *v66;
        v122 = v77;
        v78 = v49;
        v79 = v49;
        v80 = v76;
        v81 = v76;
        v82 = v100;
        v100(v78, v115, v80);

        v83 = v108;
        sub_22855C05C();
        (v114)(v79, v81);

        sub_228463074(&qword_27D83FC20, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v49 = v79;
        v84 = v110;
        v85 = sub_22855E11C();
        v87 = v86;
        (v118)(v83, v84);
        sub_228408700(v66);
        v88 = sub_2283F8938(v85, v87, &v123);

        *(v69 + 24) = v88;
        _os_log_impl(&dword_2283ED000, v67, v102, "[%s] Known URL for bundle identifier %s appears invalid; cannot load bundle at that location: %s", v69, 0x20u);
        v89 = v107;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v89, -1, -1);
        v90 = v69;
        v62 = v111;
        MEMORY[0x22AABAD40](v90, -1, -1);

        v91 = v117;
      }

      else
      {

        sub_228408700(v66);
        sub_228408700(v64);
        v83 = v108;
        v91 = v117;
        v82 = v100;
      }

      type metadata accessor for HealthAppPluginInfo.LoadError(0);
      sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
      swift_allocError();
      v93 = v92;
      v121 = v101;
      v122 = v91;
      v82(v49, v115, v62);

      v94 = v109;
      sub_22855C05C();
      (v114)(v49, v62);

      v95 = sub_22855C01C();
      v97 = v96;
      (v118)(v83, v110);
      *v93 = v95;
      v93[1] = v97;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_228408700(v94);
    }
  }
}

uint64_t sub_228408514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22840857C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 40);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(v12 + 16))
    {
      sub_228408514(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v15 = *v11 == a1 && v11[1] == a2;
      if (v15 || (sub_22855E15C() & 1) != 0)
      {
        sub_22840875C(v11, a3);
        v16 = 0;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }

      ++v14;
      result = sub_228408700(v11);
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v16 = 1;
    return (*(v8 + 56))(a3, v16, 1, v7);
  }

  return result;
}

uint64_t sub_228408700(uint64_t a1)
{
  v2 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22840875C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284087D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22855C06C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22840888C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22855C06C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_228408938(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v95[1] = *MEMORY[0x277D85DE8];
  v9 = *v5;
  if (HKIsUnitTesting())
  {
    v10 = [objc_opt_self() callStackSymbols];
    v11 = sub_22855D3AC();

    if (*(v11 + 16) >= 5uLL)
    {
      v12 = 5;
    }

    else
    {
      v12 = *(v11 + 16);
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    v14 = v13;
    if (*(v11 + 16) == v12)
    {
    }

    else
    {
      sub_2284438D8(v11, v11 + 32, 0, (2 * v12) | 1);
    }

    *v14 = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  v16 = [a1 bundleIdentifier];
  if (v16)
  {
    v90 = a1;
    v91 = a3;
    v89 = v9;
    v17 = v16;
    v92 = sub_22855D1AC();
    v93 = v18;

    v88 = a2;
    v19 = *a2;
    v20 = (*a2 + 72);
    v87 = v19;
    v21 = *(v19 + 16) + 1;
    while (--v21)
    {
      v22 = *(v20 - 5);
      v23 = *(v20 - 4);
      v25 = *(v20 - 3);
      v24 = *(v20 - 2);
      v26 = *(v20 - 1);
      v27 = *v20;
      if (v24 == v92 && v26 == v93)
      {
        v24 = v92;
LABEL_29:

        v60 = v25;

        swift_unknownObjectRetain();

        *v91 = v22;
        v91[1] = v23;
        v91[2] = v60;
        v91[3] = v24;
        v91[4] = v26;
        v91[5] = v27;
        return;
      }

      v20 += 6;
      if (sub_22855E15C())
      {
        goto LABEL_29;
      }
    }

    if (sub_228409270(v92, v93, *(v5 + 48)))
    {
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v45 = sub_22855CABC();
      __swift_project_value_buffer(v45, qword_280DEEBD0);
      v46 = v90;
      v47 = sub_22855CA8C();
      v48 = sub_22855D68C();

      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_44;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v95[0] = v50;
      *v49 = 136315394;
      v94[0] = v89;
      swift_getMetatypeMetadata();
      v51 = sub_22855D1BC();
      v53 = sub_2283F8938(v51, v52, v95);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = [v46 bundlePath];
      v55 = sub_22855D1AC();
      v57 = v56;

      v58 = sub_2283F8938(v55, v57, v95);

      *(v49 + 14) = v58;
      v59 = "[%s] Ignoring plugin bundle (disabled): %s";
LABEL_43:
      _os_log_impl(&dword_2283ED000, v47, v48, v59, v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v50, -1, -1);
      MEMORY[0x22AABAD40](v49, -1, -1);
LABEL_44:

      type metadata accessor for HealthAppPluginInfo.LoadError(0);
      sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
      swift_allocError();
      *v85 = v92;
      v85[1] = v93;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v61 = *(v5 + 56);
    if (v61 && (sub_228409270(v92, v93, v61) & 1) == 0)
    {
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v75 = sub_22855CABC();
      __swift_project_value_buffer(v75, qword_280DEEBD0);
      v76 = v90;
      v47 = sub_22855CA8C();
      v48 = sub_22855D68C();

      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_44;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v94[0] = v50;
      *v49 = 136315394;
      v77 = sub_228460FD8(v89);
      v79 = sub_2283F8938(v77, v78, v94);

      *(v49 + 4) = v79;
      *(v49 + 12) = 2080;
      v80 = [v76 bundlePath];
      v81 = sub_22855D1AC();
      v83 = v82;

      v84 = sub_2283F8938(v81, v83, v94);

      *(v49 + 14) = v84;
      v59 = "[%s] Ignoring plugin bundle (not in allow list): %s";
      goto LABEL_43;
    }

    v62 = v90;
    HealthAppPluginInfo.init(bundle:)(v62, v94);
    if (!v4)
    {
      v64 = v94[0];
      v63 = v94[1];
      v65 = v94[2];
      v66 = v94[3];
      v67 = v94[4];
      v68 = v94[5];
      v94[0] = 0;
      if (![v62 loadAndReturnError_])
      {
        v86 = v94[0];
        sub_22855BF3C();

        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_8:

        return;
      }

      v69 = v94[0];

      v70 = v65;

      swift_unknownObjectRetain();
      v71 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_228409BF8(0, *(v87 + 16) + 1, 1, v87);
      }

      v73 = *(v71 + 2);
      v72 = *(v71 + 3);
      if (v73 >= v72 >> 1)
      {
        v71 = sub_228409BF8((v72 > 1), v73 + 1, 1, v71);
      }

      *(v71 + 2) = v73 + 1;
      v74 = &v71[48 * v73];
      *(v74 + 4) = v64;
      *(v74 + 5) = v63;
      *(v74 + 6) = v70;
      *(v74 + 7) = v66;
      *(v74 + 8) = v67;
      *(v74 + 9) = v68;
      *v88 = v71;
      *v91 = v64;
      v91[1] = v63;
      v91[2] = v70;
      v91[3] = v66;
      v91[4] = v67;
      v91[5] = v68;
    }
  }

  else
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v29 = sub_22855CABC();
    __swift_project_value_buffer(v29, qword_280DEEBD0);
    v30 = a1;
    v31 = sub_22855CA8C();
    v32 = sub_22855D68C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v95[0] = v34;
      *v33 = 136315394;
      v94[0] = v9;
      swift_getMetatypeMetadata();
      v35 = sub_22855D1BC();
      v37 = sub_2283F8938(v35, v36, v95);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = [v30 bundlePath];
      v39 = sub_22855D1AC();
      v41 = v40;

      v42 = sub_2283F8938(v39, v41, v95);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_2283ED000, v31, v32, "[%s] Ignoring plugin bundle (no bundle identifier): %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v34, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    *v43 = v30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v44 = v30;
  }
}

uint64_t sub_228409270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22855E22C();
  sub_22855D20C();
  v6 = sub_22855E27C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22855E15C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void HealthAppPluginInfo.init(bundle:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22855C06C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 bundleIdentifier];
  if (!v8)
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v25 = sub_22855CABC();
    __swift_project_value_buffer(v25, qword_280DEEBD0);
    v26 = a1;
    v27 = sub_22855CA8C();
    v28 = sub_22855D69C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74 = v30;
      *v29 = 136315138;
      v31 = [v26 bundlePath];
      v32 = sub_22855D1AC();
      v34 = v33;

      v35 = sub_2283F8938(v32, v34, &v74);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2283ED000, v27, v28, "Plugin bundle at %s has no bundle identifier.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AABAD40](v30, -1, -1);
      MEMORY[0x22AABAD40](v29, -1, -1);
    }

    goto LABEL_20;
  }

  v9 = v8;
  v10 = sub_22855D1AC();
  v12 = v11;

  if (![a1 principalClass])
  {

    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v36 = sub_22855CABC();
    __swift_project_value_buffer(v36, qword_280DEEBD0);
    v26 = a1;
    v27 = sub_22855CA8C();
    v37 = sub_22855D69C();

    if (os_log_type_enabled(v27, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74 = v39;
      *v38 = 136315138;
      v40 = [v26 bundlePath];
      v41 = sub_22855D1AC();
      v43 = v42;

      v44 = sub_2283F8938(v41, v43, &v74);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_2283ED000, v27, v37, "Plugin bundle at %s has no principal class.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v38, -1, -1);
    }

LABEL_20:

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    *v45 = v26;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v73 = v10;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = ObjCClassMetadata == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v46 = v14;
    v72 = v12;
    v47 = [a1 bundleURL];
    sub_22855C00C();

    v71 = sub_22855BFAC();
    v49 = v48;
    (*(v5 + 8))(v7, v4);
    v50 = (*(v46 + 8))(ObjCClassMetadata, v46);
LABEL_21:
    *a2 = v71;
    a2[1] = v49;
    v51 = v72;
    v52 = v73;
    a2[2] = a1;
    a2[3] = v52;
    a2[4] = v51;
    a2[5] = v50;
    return;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && ObjCClassMetadata)
  {
    v17 = v16;
    v72 = v12;
    v18 = [a1 bundleURL];
    sub_22855C00C();

    v71 = sub_22855BFAC();
    v49 = v19;
    v20 = (*(v5 + 8))(v7, v4);
    v70 = &v70;
    v21 = *(ObjCClassMetadata - 8);
    MEMORY[0x28223BE20](v20);
    v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 8))(ObjCClassMetadata, v17);
    v24 = sub_22855E14C();
    (*(v21 + 8))(v23, ObjCClassMetadata);
    v50 = v24;
    goto LABEL_21;
  }

  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v53 = sub_22855CABC();
  __swift_project_value_buffer(v53, qword_280DEEBD0);
  v54 = a1;
  v55 = sub_22855CA8C();
  v56 = sub_22855D68C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = v58;
    *v57 = 136315394;
    v59 = [v54 bundlePath];
    v60 = sub_22855D1AC();
    v62 = v61;

    v63 = sub_2283F8938(v60, v62, &v74);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2080;
    v64 = sub_22855E34C();
    v66 = sub_2283F8938(v64, v65, &v74);

    *(v57 + 14) = v66;
    _os_log_impl(&dword_2283ED000, v55, v56, "Plugin bundle at %s has a principal class (%s) of an unknown type; cannot instantiate.", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v58, -1, -1);
    MEMORY[0x22AABAD40](v57, -1, -1);
  }

  type metadata accessor for HealthAppPluginInfo.LoadError(0);
  sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
  swift_allocError();
  v68 = v67;
  *v67 = sub_22855E34C();
  v68[1] = v69;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

char *sub_228409BF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DED038, &type metadata for HealthAppPluginInfo, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_228409D54(uint64_t a1)
{
  if (!qword_280DE9390)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_22855C37C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9390);
    }
  }
}

uint64_t sub_228409DC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2283F0D04(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_228409E5C(uint64_t a1)
{
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v2 = sub_22855E27C();

  return sub_22840A110(a1, v2);
}

id sub_228409EEC()
{
  v0 = objc_opt_self();
  v1 = [v0 currentQueue];
  v2 = [v0 mainQueue];
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      sub_2283EF310(0, &qword_280DE9418, 0x277CCABD8);
      v4 = sub_22855D9AC();

      if ((v4 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v5 = sub_228400874();
      v6 = [v5 viewContext];

      return v6;
    }

    v3 = v1;
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

LABEL_9:
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

id NSManagedObjectContext.feedItemsController(sortDescriptors:predicate:sectionNameKeyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  [v7 setPredicate_];
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v8 = sub_22855D39C();
  [v7 setSortDescriptors_];

  if (a4)
  {
    a4 = sub_22855D17C();
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v7 managedObjectContext:v4 sectionNameKeyPath:a4 cacheName:0];

  return v9;
}

unint64_t sub_22840A110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22855D1AC();
      v8 = v7;
      if (v6 == sub_22855D1AC() && v8 == v9)
      {
        break;
      }

      v11 = sub_22855E15C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_22855D17C();
  v5 = [v3 BOOLForKey_];

  if (v5)
  {
    [v2 setReturnsObjectsAsFaults_];
  }

  return v2;
}

uint64_t sub_22840A300(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22840A348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22840A390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22840A3D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(uint64_t a1)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560580;
  *(v2 + 56) = MEMORY[0x277D837D0];
  v3 = sub_22840A7C8();
  *(v2 + 64) = v3;
  *(v2 + 32) = 0x73656C69666F7270;
  *(v2 + 40) = 0xE800000000000000;
  result = sub_22855D62C();
  v5 = *(a1 + 16);
  if (v5)
  {
    v15 = result;
    sub_22855DD4C();
    v6 = (a1 + 32);
    while (1)
    {
      v9 = *v6++;
      v8 = v9;
      if (v9)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_228560570;
        *(v10 + 56) = MEMORY[0x277D837D0];
        *(v10 + 64) = v3;
        *(v10 + 32) = 0x73656C69666F7270;
        *(v10 + 40) = 0xE800000000000000;
        v11 = v8;
        result = [v11 identifier];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v12 = result;
        *(v10 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
        *(v10 + 104) = sub_22840A81C();
        *(v10 + 72) = v12;
        sub_22855D62C();
      }

      else
      {
        v7 = v15;
      }

      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      if (!--v5)
      {
        v13 = sub_22855D39C();

        v14 = [objc_opt_self() orPredicateWithSubpredicates_];

        return v14;
      }
    }
  }

  return result;
}

void sub_22840A70C(uint64_t a1)
{
  if (!qword_280DED008)
  {
    sub_22840A764();
    v1 = sub_22855E12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED008);
    }
  }
}

unint64_t sub_22840A764()
{
  result = qword_280DEEB20;
  if (!qword_280DEEB20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DEEB20);
  }

  return result;
}

unint64_t sub_22840A7C8()
{
  result = qword_280DED2B0;
  if (!qword_280DED2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2B0);
  }

  return result;
}

unint64_t sub_22840A81C()
{
  result = qword_280DED0B8;
  if (!qword_280DED0B8)
  {
    sub_2283EF310(255, &unk_280DED0C0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED0B8);
  }

  return result;
}

uint64_t UserInterface.identifier.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 4)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    v3 = a1;
  }

  if (a3 <= 2u)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  sub_22840A934(a1, a2, a3);
  return v4;
}

uint64_t sub_22840A934(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_22840A968(uint64_t *a1@<X8>)
{
  v2 = 0x656D6F726863;
  if (*v1)
  {
    v2 = 0x656D6F7268436F6ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FeedItem.searchSection.getter()
{
  result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v0 searchSectionRawValue]);
  if (result == 13)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(uint64_t result)
{
  if (result >= 0xDu)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

uint64_t HealthAppPluginSource.tabProvidingPlugins()()
{
  v42 = *v0;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  *&v44 = &v38 - v3;
  v4 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v47 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v52 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v38 - v8;
  result = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v43 = v0;
  v12 = v0[5];
  v13 = *(v12 + 16);
  v46 = v1;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    *&v45 = v4;
    while (v15 < *(v12 + 16))
    {
      v17 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v18 = *(v47 + 72);
      sub_228408514(v12 + v17 + v18 * v15, v11, type metadata accessor for HealthAppPluginSource.KnownBundle);
      if (v11[*(v4 + 36)] == 1)
      {
        sub_22840875C(v11, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22840B0EC(0, *(v16 + 16) + 1, 1);
          v16 = v48;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22840B0EC((v20 > 1), v21 + 1, 1);
          v16 = v48;
        }

        *(v16 + 16) = v21 + 1;
        result = sub_22840875C(v52, v16 + v17 + v21 * v18);
        v4 = v45;
      }

      else
      {
        result = sub_228408700(v11);
      }

      if (v14 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_13:
  v41 = *(v16 + 16);
  if (v41)
  {
    v22 = 0;
    v52 = MEMORY[0x277D84F90];
    v23 = v44;
    v24 = v39;
    v40 = v16;
    while (v22 < *(v16 + 16))
    {
      sub_228408514(v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22, v24, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = v43;
      v28 = sub_22840B13C(v25, v26, v23);
      v29 = v27[2];
      MEMORY[0x28223BE20](v28);
      *(&v38 - 6) = v25;
      *(&v38 - 5) = v26;
      *(&v38 - 4) = v23;
      *(&v38 - 3) = v27;
      *(&v38 - 16) = 1;
      *(&v38 - 1) = v42;
      os_unfair_lock_lock((v29 + 28));
      v30 = v46;
      sub_22840B2D8((v29 + 16), &v48);
      if (v30)
      {
        os_unfair_lock_unlock((v29 + 28));

        sub_22840BD38(v23);
        sub_228408700(v24);

        return v52;
      }

      v46 = 0;
      os_unfair_lock_unlock((v29 + 28));
      sub_22840BD38(v23);
      v31 = v48;
      v32 = v50;
      v44 = v51;
      v45 = v49;
      sub_228408700(v24);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228409BF8(0, *(v52 + 2) + 1, 1, v52);
        v52 = result;
      }

      v34 = *(v52 + 2);
      v33 = *(v52 + 3);
      if (v34 >= v33 >> 1)
      {
        result = sub_228409BF8((v33 > 1), v34 + 1, 1, v52);
        v52 = result;
      }

      v35 = v52;
      *(v52 + 2) = v34 + 1;
      v36 = &v35[48 * v34];
      *(v36 + 4) = v31;
      ++v22;
      v37 = v44;
      *(v36 + 40) = v45;
      *(v36 + 7) = v32;
      *(v36 + 4) = v37;
      v16 = v40;
      if (v41 == v22)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_24:

  return v52;
}

void *sub_22840AEF8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22842B224(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_22840B0EC(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DED030, type metadata accessor for HealthAppPluginSource.KnownBundle, type metadata accessor for HealthAppPluginSource.KnownBundle);
  *v3 = result;
  return result;
}

uint64_t sub_22840B13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 40);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(v12 + 16))
    {
      sub_228408514(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v15 = *(v11 + 2) == a1 && *(v11 + 3) == a2;
      if (v15 || (sub_22855E15C() & 1) != 0)
      {
        sub_22840875C(v11, a3);
        v16 = 0;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }

      ++v14;
      result = sub_228408700(v11);
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v16 = 1;
    return (*(v8 + 56))(a3, v16, 1, v7);
  }

  return result;
}

void sub_22840B318(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void (*a8)(char *, uint64_t)@<X8>)
{
  v102 = a7;
  LODWORD(v105) = a6;
  v107 = a5;
  v117 = a4;
  v121 = a3;
  v119 = a8;
  v112 = sub_22855BF5C();
  v114 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v106 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_22855C06C();
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v116 = (&v101 - v13);
  v118 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v115 = *(v118 - 8);
  v14 = MEMORY[0x28223BE20](v118);
  v104 = (&v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v103 = &v101 - v17;
  MEMORY[0x28223BE20](v16);
  v110 = (&v101 - v18);
  v108 = a1;
  v19 = *a1;
  v20 = *(*a1 + 16) + 1;
  v21 = (v19 + 72);
  while (--v20)
  {
    v22 = *(v21 - 5);
    v23 = *(v21 - 4);
    v25 = *(v21 - 3);
    v24 = *(v21 - 2);
    v26 = *(v21 - 1);
    v27 = *v21;
    if (v24 == a2 && v26 == v121)
    {
      v24 = a2;
LABEL_21:
      v42 = v119;
      *v119 = v22;
      *(v42 + 1) = v23;
      *(v42 + 2) = v25;
      *(v42 + 3) = v24;
      *(v42 + 4) = v26;
      *(v42 + 5) = v27;

      v43 = v25;

LABEL_22:
      swift_unknownObjectRetain();
      return;
    }

    v21 += 6;
    if (sub_22855E15C())
    {
      goto LABEL_21;
    }
  }

  v29 = v116;
  sub_22840D038(v117, v116);
  v30 = v118;
  if ((*(v115 + 48))(v29, 1, v118) == 1)
  {
    sub_22840BD38(v29);
    if (v105)
    {
      v31 = v108;
      v32 = v120;
      sub_22846140C(v108);
      if (v32)
      {
        return;
      }

      v120 = 0;
      v33 = *(*v31 + 16) + 1;
      v34 = (*v31 + 72);
      while (--v33)
      {
        v35 = *(v34 - 5);
        v36 = *(v34 - 4);
        v38 = *(v34 - 3);
        v37 = *(v34 - 2);
        v40 = *(v34 - 1);
        v39 = *v34;
        if (v37 == a2 && v40 == v121)
        {
          v37 = a2;
LABEL_34:
          v99 = v119;
          *v119 = v35;
          *(v99 + 1) = v36;
          *(v99 + 2) = v38;
          *(v99 + 3) = v37;
          *(v99 + 4) = v40;
          *(v99 + 5) = v39;

          v100 = v38;

          goto LABEL_22;
        }

        v34 += 6;
        if (sub_22855E15C())
        {
          goto LABEL_34;
        }
      }
    }

    type metadata accessor for HealthAppPluginInfo.LoadError(0);
    sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
    swift_allocError();
    v61 = v121;
    *v62 = a2;
    v62[1] = v61;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v44 = v110;
    sub_22840875C(v29, v110);
    v45 = *(v30 + 24);
    v46 = v44[1];
    v105 = *v44;
    v122 = v105;
    v123 = v46;
    v47 = v114;
    v49 = v114 + 104;
    v48 = *(v114 + 104);
    v50 = v106;
    LODWORD(v117) = *MEMORY[0x277CC91D8];
    v51 = v112;
    v101 = v48;
    v48(v106);
    v52 = sub_2283F79A4();

    v115 = v45;
    v53 = v109;
    v121 = v52;
    sub_22855C05C();
    v55 = *(v47 + 8);
    v54 = v47 + 8;
    v116 = v55;
    v55(v50, v51);

    v56 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v57 = sub_22855BFBC();
    v58 = [v56 initWithURL_];

    v59 = v113 + 8;
    v60 = *(v113 + 8);
    v60(v53, v111);
    if (v58)
    {
      sub_228408938(v58, v108, v119);
      sub_228408700(v44);
    }

    else
    {
      v114 = v54;
      v63 = v112;
      v119 = v60;
      v120 = v49;
      v108 = v46;
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v113 = v59;
      v64 = sub_22855CABC();
      __swift_project_value_buffer(v64, qword_280DEEBD0);
      v65 = v103;
      sub_228408514(v44, v103, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v66 = v44;
      v67 = v104;
      sub_228408514(v66, v104, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v68 = sub_22855CA8C();
      v69 = sub_22855D68C();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v124 = v107;
        *v70 = 136315650;
        v122 = v102;
        swift_getMetatypeMetadata();
        v71 = sub_22855D1BC();
        v73 = sub_2283F8938(v71, v72, &v124);

        *(v70 + 4) = v73;
        LODWORD(v102) = v69;
        *(v70 + 12) = 2080;
        v74 = *(v65 + 16);
        v75 = *(v65 + 24);

        sub_228408700(v65);
        v76 = sub_2283F8938(v74, v75, &v124);
        v77 = v112;

        *(v70 + 14) = v76;
        *(v70 + 22) = 2080;
        v78 = v67[1];
        v122 = *v67;
        v123 = v78;
        v79 = v50;
        v80 = v50;
        v81 = v77;
        v82 = v77;
        v83 = v101;
        v101(v79, v117, v81);

        v84 = v109;
        sub_22855C05C();
        v116(v80, v82);

        sub_228463074(&qword_27D83FC20, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v50 = v80;
        v85 = v111;
        v86 = sub_22855E11C();
        v88 = v87;
        v119(v84, v85);
        sub_228408700(v67);
        v89 = sub_2283F8938(v86, v88, &v124);

        *(v70 + 24) = v89;
        _os_log_impl(&dword_2283ED000, v68, v102, "[%s] Known URL for bundle identifier %s appears invalid; cannot load bundle at that location: %s", v70, 0x20u);
        v90 = v107;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v90, -1, -1);
        v91 = v70;
        v63 = v112;
        MEMORY[0x22AABAD40](v91, -1, -1);

        v92 = v108;
      }

      else
      {

        sub_228408700(v67);
        sub_228408700(v65);
        v92 = v108;
        v84 = v109;
        v83 = v101;
      }

      type metadata accessor for HealthAppPluginInfo.LoadError(0);
      sub_228463074(qword_280DEE068, type metadata accessor for HealthAppPluginInfo.LoadError, &protocol conformance descriptor for HealthAppPluginInfo.LoadError);
      swift_allocError();
      v94 = v93;
      v122 = v105;
      v123 = v92;
      v83(v50, v117, v63);

      v95 = v110;
      sub_22855C05C();
      v116(v50, v63);

      v96 = sub_22855C01C();
      v98 = v97;
      v119(v84, v111);
      *v94 = v96;
      v94[1] = v98;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_228408700(v95);
    }
  }
}

uint64_t sub_22840BD38(uint64_t a1)
{
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static NSUserDefaults.healthAppShared.getter()
{
  if (qword_280DED1C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DED1C8;

  return v1;
}

id sub_22840BE0C()
{
  result = sub_22840BE2C();
  qword_280DED1C8 = result;
  return result;
}

id sub_22840BE2C()
{
  sub_22855D1AC();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22855D17C();

  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  sub_22855DC6C();

  v4 = sub_22855D1AC();
  MEMORY[0x22AAB92A0](v4);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void *HealthAppNotificationManager.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];

  return _s14HealthPlatform0A22AppNotificationManagerC18notificationCenterACSo06UNUserdG0C_tcfC_0(v0);
}

void *_s14HealthPlatform0A22AppNotificationManagerC18notificationCenterACSo06UNUserdG0C_tcfC_0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  sub_22855BDCC();
  swift_allocObject();
  v3 = sub_22855BDBC();
  sub_22855BD9C();
  swift_allocObject();
  v4 = sub_22855BD8C();
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v7 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v8 = v2;
  v9 = sub_22855D17C();
  v10 = [v7 initWithCategory:1 domainName:v9 healthStore:v8];

  type metadata accessor for HealthAppNotificationManager();
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  v11[8] = v12;
  v11[9] = sub_22840C148(MEMORY[0x277D84F90]);
  v11[2] = a1;
  v11[3] = v3;
  v11[4] = v4;
  v11[5] = v5;
  v11[6] = v8;
  v11[7] = v10;
  return v11;
}

unint64_t sub_22840C148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22840030C(0, &qword_27D83F5C8, &qword_27D83F440, &protocol descriptor for CoalescingNotification, sub_2283F9B94);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_22847F5E0(v4, &v14, &qword_27D83F940, &qword_27D83F440, &protocol descriptor for CoalescingNotification, v5);
      v6 = v14;
      v7 = v15;
      result = sub_2283F6D18(v14, v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_2283FAB3C(&v16, v3[7] + 40 * result);
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
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

uint64_t sub_22840C2D0()
{
  v0 = sub_22855CABC();
  __swift_allocate_value_buffer(v0, qword_280DE9DD0);
  __swift_project_value_buffer(v0, qword_280DE9DD0);
  return sub_22855CA9C();
}

uint64_t dispatch thunk of HealthAppNotificationManager.getNotificationSettings()()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 184))();
}

id sub_22840C374()
{
  v1 = [*(v0 + 16) notificationSettings];

  return v1;
}

uint64_t PinnedContentManager.__allocating_init(healthStore:domain:)(void *a1, char a2)
{
  type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v3 = swift_allocObject();
  sub_2283F2234();
  swift_allocObject();
  v4 = a1;
  *(v3 + 24) = sub_22855CD0C();
  sub_22855BCDC();
  v5 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v6 = v4;
  v7 = sub_22855D17C();

  v8 = [v5 initWithCategory:1 domainName:v7 healthStore:v6];

  *(v3 + 16) = v8;
  [v8 startObservation_];

  v9 = objc_allocWithZone(sub_22855BCCC());
  v10 = v6;
  v11 = sub_22855BCBC();
  v12 = swift_allocObject();
  v13 = sub_228401798(v11, v3, v12);

  return v13;
}

id static Feed.predicate(kind:associatedProfileIdentifier:feedPrefixKeyPath:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = sub_22840C950(a3, a4, a1);
  if (!a2)
  {
    sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_228560580;
    if (v4)
    {
      v23 = v4;

      MEMORY[0x22AAB92A0](46, 0xE100000000000000);
      v4 = a3;
      v14 = v23;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);

    MEMORY[0x22AAB92A0](0xD000000000000011, 0x80000002285729E0);

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_22840A7C8();
    *(v13 + 32) = v4;
    *(v13 + 40) = v14;
    v16 = sub_22855D62C();
    goto LABEL_11;
  }

  v8 = a2;
  result = [v8 identifier];
  if (result)
  {
    v10 = result;
    sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_228560570;
    if (v4)
    {
      v22 = v4;

      MEMORY[0x22AAB92A0](46, 0xE100000000000000);
      v4 = a3;
      v12 = v22;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);

    MEMORY[0x22AAB92A0](0xD000000000000022, 0x8000000228574AC0);

    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_22840A7C8();
    *(v11 + 32) = v4;
    *(v11 + 40) = v12;
    *(v11 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v11 + 104) = sub_22840A81C();
    *(v11 + 72) = v10;
    v15 = v10;
    v16 = sub_22855D62C();

LABEL_11:
    sub_22840CC88(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_228563E50;
    *(v17 + 32) = v7;
    *(v17 + 40) = v16;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v18 = v16;
    v19 = v7;
    v20 = sub_22855D39C();

    v21 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_22840C950(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  sub_22840CBD4(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560570;
  if (a2)
  {

    MEMORY[0x22AAB92A0](46, 0xE100000000000000);
    v7 = a1;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v15 = v7;

  MEMORY[0x22AAB92A0](0x56776152646E696BLL, 0xEC00000065756C61);

  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22840A7C8();
  *(v6 + 64) = v11;
  *(v6 + 32) = v15;
  *(v6 + 40) = v9;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v12 = 0xE700000000000000;
      v13 = 0x73656369746F6ELL;
    }

    else if (a3 == 4)
    {
      v12 = 0xE800000000000000;
      v13 = 0x73656C6369747261;
    }

    else
    {
      v12 = 0xE600000000000000;
      v13 = 0x73646E657274;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v12 = 0x800000022856D770;
      v13 = 0xD000000000000011;
    }

    else
    {
      v12 = 0xEA00000000007374;
      v13 = 0x6867696C68676968;
    }
  }

  else
  {
    v12 = 0xED000068746C6165;
    v13 = 0x48726F4673707061;
  }

  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v13;
  *(v6 + 80) = v12;
  return sub_22855D62C();
}

void sub_22840CB74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_22842BFBC(255, a3, a4, a5 & 1);
    v6 = sub_22855E12C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22840CBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22840CC38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22840CC88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22840CCD8(char a1)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560570;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22840A7C8();
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x800000022856E2C0;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 64) = v4;
  *(v2 + 72) = 0xD000000000000026;
  if (a1)
  {
    v5 = "com.apple.health.pinnedContent.logging";
  }

  else
  {
    v5 = "com.apple.health.pinnedContent.summary";
  }

  *(v2 + 80) = (v5 - 32) | 0x8000000000000000;
  return sub_22855D62C();
}

id static SourceProfile.primary.getter()
{
  v0 = [objc_opt_self() primaryProfile];

  return v0;
}

id static FeedItem.fetchRequest(predicate:)(uint64_t a1)
{
  v2 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  [v2 setPredicate_];
  return v2;
}

id static Feed.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t HealthAppPluginSource.plugin(bundleIdentifier:allowDynamicFallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(char *, uint64_t)@<X8>)
{
  v9 = *v4;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15[-v11];
  sub_22840B13C(a1, a2, &v15[-v11]);
  v13 = v4[2];
  v16 = a1;
  v17 = a2;
  v18 = v12;
  v19 = v4;
  v20 = a3;
  v21 = v9;
  os_unfair_lock_lock((v13 + 28));
  sub_22840B2C0((v13 + 16), a4);
  os_unfair_lock_unlock((v13 + 28));
  return sub_22840BD38(v12);
}

uint64_t sub_22840D038(uint64_t a1, uint64_t a2)
{
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RelevantDateInterval(uint64_t a1)
{
  result = qword_280DEEDB0;
  if (!qword_280DEEDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22840D104(uint64_t a1)
{
  result = sub_22855BE1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22840D194(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void FeedItem.contentKind.getter(char *a1@<X8>)
{
  v3 = [v1 contentKindRawValue];
  v4 = sub_22855D1AC();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  ContentKind.init(rawValue:)(v7);
  v8 = v26;
  if (v26 == 25)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = v1;
    v11 = sub_22855CA8C();
    v12 = sub_22855D69C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      v15 = [v10 contentKindRawValue];
      v16 = sub_22855D1AC();
      v18 = v17;

      v19 = sub_2283F8938(v16, v18, &v25);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      v20 = [v10 uniqueIdentifier];
      v21 = sub_22855D1AC();
      v23 = v22;

      v24 = sub_2283F8938(v21, v23, &v25);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_2283ED000, v11, v12, "Somehow a content kind got stored that we do not know about: %s, identifier: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v14, -1, -1);
      MEMORY[0x22AABAD40](v13, -1, -1);
    }

    v8 = 16;
  }

  *a1 = v8;
}

HealthPlatform::ContentKind_optional __swiftcall ContentKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855E17C();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t FeedItem.relevantDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22855C16C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v40 = v2;
  v23 = [v2 relevantStartDate];
  if (v23)
  {
    v39 = a1;
    v24 = v23;
    sub_22855C13C();

    v25 = v5[4];
    v25(v22, v20, v4);
    v26 = [v40 relevantEndDate];
    if (v26)
    {
      v27 = v26;
      sub_22855C13C();

      v25(v17, v14, v4);
      v28 = v5[2];
      v28(v11, v22, v4);
      v28(v8, v17, v4);
      v29 = v39;
      sub_22855BDFC();
      v30 = v40;
      [v40 relevantRampUpTime];
      v32 = v31;
      [v30 relevantRampDownTime];
      v34 = v33;
      v35 = v5[1];
      v35(v17, v4);
      v35(v22, v4);
      v36 = type metadata accessor for RelevantDateInterval(0);
      *(v29 + *(v36 + 20)) = v32;
      *(v29 + *(v36 + 24)) = v34;
      return (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
    }

    (v5[1])(v22, v4);
    a1 = v39;
  }

  v38 = type metadata accessor for RelevantDateInterval(0);
  return (*(*(v38 - 8) + 56))(a1, 1, 1, v38);
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

unint64_t _s14HealthPlatform17ForYouSectionKindO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855DFBC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22840DA18()
{
  result = qword_280DEEC40;
  if (!qword_280DEEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEEC40);
  }

  return result;
}

uint64_t sub_22840DA6C(uint64_t a1)
{
  sub_22855E22C();
  ContentKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t ContentKind.rawValue.getter()
{
  result = 0x7472656C61;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x656C6369747261;
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    case 5:
      result = 1635017060;
      break;
    case 6:
      result = 0x67676F4C61746164;
      break;
    case 7:
      result = 0x6D6D755361746164;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0x5365727574616566;
      break;
    case 0xC:
      result = 0x6867696C68676968;
      break;
    case 0xD:
      result = 0x6867696C68676968;
      break;
    case 0xE:
      result = 0x697461676976616ELL;
      break;
    case 0xF:
      result = 0x617461446F6ELL;
      break;
    case 0x10:
      result = 0x726568746FLL;
      break;
    case 0x11:
      result = 0x6D726F6674616C70;
      break;
    case 0x12:
      result = 0x6F69746F6D6F7270;
      break;
    case 0x13:
      result = 0x74706D6F7270;
      break;
    case 0x14:
      result = 0x656C69666F7270;
      break;
    case 0x15:
      result = 0x6E6F6974616C6572;
      break;
    case 0x16:
      result = 0x73676E6974746573;
      break;
    case 0x17:
      result = 0x657461647075;
      break;
    case 0x18:
      result = 0x72616265646973;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_22840DDD4()
{
  v0 = ContentKind.rawValue.getter();
  v2 = v1;
  if (v0 == ContentKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22855E15C();
  }

  return v5 & 1;
}

unint64_t sub_22840DE70()
{
  result = qword_280DE8E90;
  if (!qword_280DE8E90)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_280DE8E90);
  }

  return result;
}

void *sub_22840E048@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_22840E078(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22840E0F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22855D1AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22840E124()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E174()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E1AC(uint64_t a1, uint64_t (**a2)(uint64_t *))
{
  v2 = *a2;
  v4 = 0;
  return v2(&v4);
}

uint64_t sub_22840E37C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840E3B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22840E5BC@<X0>(_BYTE *a1@<X8>)
{
  result = FeedItem.favoriteStatus.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22840E604@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (([*a1 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    result = 13;
  }

  else
  {
    result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v3 searchSectionHintRawValue]);
  }

  *a2 = result;
  return result;
}

id sub_22840E660(_BYTE *a1, id *a2)
{
  if (*a1 == 13)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *a1;
  }

  [*a2 setSearchSectionHintRawValue_];
  return sub_22841E13C();
}

id sub_22840E718@<X0>(uint64_t a1@<X8>)
{
  result = FeedItem.userInterface.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

void sub_22840E748(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_22840A934(*a1, v2, v3);
  FeedItem.userInterface.setter(v1, v2, v3);
}

uint64_t sub_22840E828()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22840E870()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22840E8C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E900()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840E938()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22840E99C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22840E9EC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22840EA34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840EA88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_22840EE50(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855C10C();
  [v2 setDateSubmitted_];
}

id sub_22840EF78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedSection];
  *a2 = result;
  return result;
}

id sub_22840EFC8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hideInDiscover];
  *a2 = result;
  return result;
}

id sub_22840F268@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 searchSectionHintRawValue];
  *a2 = result;
  return result;
}

id sub_22840F2B0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 searchSectionRawValue];
  *a2 = result;
  return result;
}

id sub_22840F2F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sectionSortOrder];
  *a2 = result;
  return result;
}

id sub_22840F3E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

id sub_22840F428@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 suggestionRelevanceScore];
  *a2 = v4;
  return result;
}

id sub_22840F4DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 usesPlatformView];
  *a2 = result;
  return result;
}

id sub_22840F524@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 legacyUserInterfaceKind];
  *a2 = result;
  return result;
}

id sub_22840F62C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relevantRampUpTime];
  *a2 = v4;
  return result;
}

id sub_22840F674@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relevantRampDownTime];
  *a2 = v4;
  return result;
}

id sub_22840F6BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortHint];
  *a2 = result;
  return result;
}

id sub_22840F704@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 indexForSearch];
  *a2 = result;
  return result;
}

uint64_t sub_22840F74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22855C16C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22840F7F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22855C16C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22840F8B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840F8F0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22840FB94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22840FBCC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840FC18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22840FC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GeneratorContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22840FD14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GeneratorContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22840FDC4(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();
  [v2 setIdentifier_];
}

uint64_t sub_22840FE30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22840FE74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22840FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22840FF58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228410018()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_228410058@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

void sub_2284100A4(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();
  [v2 setIdentifier_];
}

uint64_t sub_2284101A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284101F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228464E14();
  *a1 = result;
  return result;
}

uint64_t sub_228410224()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284102F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410328()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228410360()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410398()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284103D0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228410408()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_228410450()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2284104B4@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_22846CEB8(a2);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2284104E4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228410524()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841055C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410598()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284105E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228410620()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410668()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2284106C8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284107B8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410808()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228410890()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2284108E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228410928()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228410960()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284109C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228450F00(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_228410A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_228450F00(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }
}

id sub_228410B90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_228410C14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410C4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228410C84()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228410CBC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228410D30()
{
  sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22841102C()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2284110AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedItem];
  *a2 = result;
  return result;
}

void sub_2284110FC()
{
  if (MEMORY[0x277D85020])
  {
    sub_2284916D4(0);
  }
}

uint64_t sub_228411138()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228411190()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284111C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411230()
{
  v1 = (type metadata accessor for UnprotectedNotificationContentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_22855C1DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228411320()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228411360()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2284113C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_228411408(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

uint64_t sub_22841144C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22841148C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2284114DC()
{
  v1 = (type metadata accessor for UnprotectedNotificationContentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_22855C1DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2284115CC()
{
  v1 = (type metadata accessor for ProtectedNotificationContentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_22855C1DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2284116DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411718()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22841178C()
{

  v1 = *(v0 + 104);
  if (v1 != 255)
  {
    sub_228451F14(*(v0 + 80), *(v0 + 88), *(v0 + 96), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_22841180C()
{

  sub_2284A6534(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_228411850()
{
  v1 = type metadata accessor for PluginFeedItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_22842B20C(*(v5 + 16), *(v5 + 24), *(v5 + 32));

  v6 = *(v0 + v3 + 64);
  if (v6 >> 60 != 15)
  {
    sub_22842B38C(*(v5 + 56), v6);
  }

  v7 = *(v5 + 96);
  if (v7 >> 60 != 15)
  {
    sub_22842B38C(*(v5 + 88), v7);
  }

  v8 = v1[11];
  v9 = type metadata accessor for RelevantDateInterval(0);
  if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
  {
    v10 = sub_22855BE1C();
    (*(*(v10 - 8) + 8))(v5 + v8, v10);
  }

  if (*(v5 + v1[28]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_228411A98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228411AD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228411B7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228411BB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411BEC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228411C2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228411C6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411CAC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228411D00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228411D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22855C06C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_22855D89C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_228411EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_22855C06C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22855D89C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_228411FD8()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412010()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22841204C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228412140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22855C1DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2284121F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228412238()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228412270()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284122B0()
{

  if (*(v0 + 72) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228412308@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_228412350(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_228412394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_2283F9B10(v3 + 24, a2);
}

void sub_228412488(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855C08C();
  [v2 setEncodedHKProfileIdentifier_];
}

void sub_228412590(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855C19C();
  [v2 setUniqueIdentifier_];
}

uint64_t sub_2284125EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_228412684()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284126F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841272C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228412784()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284127BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284127FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_2284C7A74;
  a2[1] = v5;
}

uint64_t sub_22841286C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284128A8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228412928()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284129A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_228412B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_228412CC0@<X0>(uint64_t *a1@<X8>)
{
  result = Profile.hkProfileIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_228412D18()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228412D58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228412DA0(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();
  [v2 setUniqueIdentifier_];
}

id sub_228412E14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plugin];
  *a2 = result;
  return result;
}

uint64_t sub_228412E64()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_228412EF8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228412FE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228413028()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413088()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2284130C0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228413100()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228413184()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2284131CC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228413240()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228413294()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413328()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228413380()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228413418@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_2284E926C;
  a2[1] = v5;
}

uint64_t sub_228413488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_228492FA4;
  a2[1] = v5;
}

uint64_t sub_2284134F8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_228466000;
  a2[1] = v5;
}

uint64_t sub_228413568()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284135A0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228413604()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_22841364C@<X0>(void *a1@<X8>)
{
  result = sub_228400874();
  *a1 = result;
  return result;
}

void sub_228413678(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

uint64_t sub_2284136C0()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284136F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228413740()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413780()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284137E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413818()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228413850()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413888()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284138C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_228413B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_228413CF4(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();
  [v2 setIdentifier_];
}

id sub_228413D58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feed];
  *a2 = result;
  return result;
}

id sub_228413DA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedItems];
  *a2 = result;
  return result;
}

id sub_228413DF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCollapsible];
  *a2 = result;
  return result;
}

id sub_228413E40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_228413EA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228413EE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228413F18()
{
  v1 = sub_22855C1DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_228414000()
{
  if (MEMORY[0x277D85020])
  {
    sub_2284FD600(0, &qword_27D840430, sub_2284FD4DC, MEMORY[0x277D85458]);
  }
}

uint64_t sub_22841406C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284140B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284140F4()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841412C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414164()
{
  if (*v0)
  {
    return 0x65746E4972657375;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_2284141B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_228501D8C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_228414264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_228501D8C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22841430C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228414358(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855C10C();
  [v2 setDateUpdated_];
}

id sub_2284143B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedProfile];
  *a2 = result;
  return result;
}

void sub_228414408(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();
  [v2 setKindRawValue_];
}

id sub_22841446C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sections];
  *a2 = result;
  return result;
}

uint64_t sub_2284144BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284144FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841456C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284145A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284145DC()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228414614()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22841464C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284146D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228414708()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414740()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_228414788()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22841482C(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_22855CDEC();
  swift_getWitnessTable();
  sub_22855CB8C();
  return swift_getWitnessTable();
}

uint64_t sub_2284148E8(void *a1)
{
  sub_22850F408(255);
  sub_228510094(&qword_280DE9810, sub_22850F408, MEMORY[0x277CBCE90]);
  sub_22855CB8C();
  return swift_getWitnessTable();
}

uint64_t sub_228414AC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414AFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414B34()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228414B74()
{
  sub_228517378(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228414C10(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_228414CF0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228414E0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228414E78()
{
  MEMORY[0x22AABAE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_228414EB4(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();
  [v2 setPackage_];
}

void sub_228414F24(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();
  [v2 setIdentifier_];
}

id sub_228414F88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 feedItem];
  *a2 = result;
  return result;
}

uint64_t sub_228414FD8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2284150C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284150FC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2284151B8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22841521C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22841525C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2284152BC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228415318()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228415358()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284153AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284153E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415438(uint64_t a1, uint64_t a2)
{
  sub_2283EFE3C(0, &unk_280DED2C0, &qword_280DED0B0, 0x277CCA9B8, MEMORY[0x277CCB2C8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2284154D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SyncError(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_228415558(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_228415630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_228415710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2283F1134(0, qword_280DEBFA8, type metadata accessor for ActiveSyncState);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }
}

uint64_t sub_2284157EC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22841592C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22841596C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284159A4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2284159EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415A24()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228415AAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415AE4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_228415B44()
{

  sub_22842B38C(*(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_228415BB8()
{
  v1 = sub_22855C62C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228415CB4()
{
  v1 = sub_22855C62C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228415DC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228415E08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228415E40()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228415E8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228415EC4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_228415F0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 codeRaw];
  *a2 = result;
  return result;
}

uint64_t sub_228415F70()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228415FA8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_228416144()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22841617C()
{

  sub_228451F14(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2284161DC()
{
  v1 = type metadata accessor for FeatureStatusFeedItemGeneratorPipeline(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v16 = sub_22855C37C();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v17 = v0;
  v6 = v0 + v3;

  v7 = (v0 + v3 + *(v1 + 20));

  v8 = type metadata accessor for GeneratorContext(0);
  v9 = (v7 + v8[5]);
  sub_228450F00(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v10 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
    v11 = sub_22855C16C();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  v12 = (v3 + v14 + v5) & ~v5;
  __swift_destroy_boxed_opaque_existential_0((v7 + v8[7]));
  __swift_destroy_boxed_opaque_existential_0((v7 + v8[8]));
  sub_228451F14(*(v6 + *(v1 + 24)), *(v6 + *(v1 + 24) + 8), *(v6 + *(v1 + 24) + 16), *(v6 + *(v1 + 24) + 24));

  (*(v4 + 8))(v17 + v12, v16);

  return MEMORY[0x2821FE8E8](v17, v12 + v15, v2 | v5 | 7);
}

uint64_t sub_228416428()
{
  v1 = type metadata accessor for GeneratorContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = (v0 + v3 + v1[5]);
  sub_228450F00(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v7 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
    v8 = sub_22855C16C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[8]));
  sub_228451F14(*(v0 + v9), *(v0 + v9 + 8), *(v0 + v9 + 16), *(v0 + v9 + 24));

  return MEMORY[0x2821FE8E8](v0, v9 + 25, v2 | 7);
}

uint64_t sub_228416594()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_228416740(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2284167AC(uint64_t a1, uint64_t a2)
{
  sub_228554618(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_228416818(uint64_t a1, uint64_t a2)
{
  sub_228554618(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_228416890()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2284168D0()
{

  if (*(v0 + 72) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_228416940()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228416978()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2284169B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2284169F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_2283F9B10(v3 + 56, a2);
}

uint64_t sub_228416A40()
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_228416B04()
{
  sub_228555F0C(0, &qword_27D840C50, sub_2284B7804, MEMORY[0x277D85670]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228416BBC()
{

  if (*(v0 + 72) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228416C18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228416CB8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_228416CF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_228416D2C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

id HealthExperienceStoreCleanupOperation.init(context:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC14HealthPlatform37HealthExperienceStoreCleanupOperation_context] = a1;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v15, sel_init);
  v6 = qword_280DEEC90;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DEEC98);
  v9 = sub_22855CA8C();
  v10 = sub_22855D6AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v7;
    *v12 = v7;
    v13 = v7;
    _os_log_impl(&dword_2283ED000, v9, v10, "%@ init", v11, 0xCu);
    sub_228418694(v12, &qword_280DED080, sub_2284185F4);
    MEMORY[0x22AABAD40](v12, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  return v7;
}

Swift::Void __swiftcall HealthExperienceStoreCleanupOperation.main()()
{
  v67 = sub_22855C2CC();
  v1 = *(v67 - 1);
  MEMORY[0x28223BE20](v67);
  v3 = v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22855C2DC();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228418640(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v63 - v8;
  v68 = sub_22855C16C();
  v10 = *(v68 - 8);
  v11 = MEMORY[0x28223BE20](v68);
  v63[0] = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v64 = v63 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v63 - v15;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v17 = sub_22855CABC();
  v18 = __swift_project_value_buffer(v17, qword_280DEEC98);
  v19 = v0;
  v63[1] = v18;
  v20 = sub_22855CA8C();
  v21 = sub_22855D6AC();

  v22 = os_log_type_enabled(v20, v21);
  v69 = v16;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = v10;
    v25 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v25 = v19;
    v26 = v19;
    _os_log_impl(&dword_2283ED000, v20, v21, "%@ main()", v23, 0xCu);
    sub_228418694(v25, &qword_280DED080, sub_2284185F4);
    v27 = v25;
    v10 = v24;
    v16 = v69;
    MEMORY[0x22AABAD40](v27, -1, -1);
    MEMORY[0x22AABAD40](v23, -1, -1);
  }

  sub_22855C15C();
  sub_22855C2BC();
  v28 = v67;
  (*(v1 + 104))(v3, *MEMORY[0x277CC9968], v67);
  sub_22855C2AC();
  (*(v1 + 8))(v3, v28);
  (*(v65 + 8))(v6, v66);
  v29 = v68;
  if ((*(v10 + 48))(v9, 1, v68) == 1)
  {
    sub_228418694(v9, &qword_280DEE380, MEMORY[0x277CC9578]);
    v30 = v63[0];
    (*(v10 + 16))(v63[0], v16, v29);
    v31 = v19;
    v32 = sub_22855CA8C();
    v33 = sub_22855D68C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v30;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v67 = v36;
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v35 = 138412546;
      *(v35 + 4) = v31;
      *v36 = v31;
      *(v35 + 12) = 2080;
      sub_228418978(&qword_280DECD88, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v38 = v31;
      v39 = sub_22855E11C();
      v41 = v40;
      v42 = *(v10 + 8);
      v42(v34, v29);
      v43 = sub_2283F8938(v39, v41, aBlock);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_2283ED000, v32, v33, "%@ cannot generate yesterday from today: %s", v35, 0x16u);
      v44 = v67;
      sub_228418694(v67, &qword_280DED080, sub_2284185F4);
      MEMORY[0x22AABAD40](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AABAD40](v37, -1, -1);
      MEMORY[0x22AABAD40](v35, -1, -1);

      v42(v69, v29);
    }

    else
    {

      v62 = *(v10 + 8);
      v62(v30, v29);
      v62(v16, v29);
    }
  }

  else
  {
    v45 = v10;
    (*(v10 + 32))(v64, v9, v29);
    v46 = objc_opt_self();
    v47 = sub_22855C10C();
    v48 = [v46 deleteHistoryBeforeDate_];

    v49 = *&v19[OBJC_IVAR____TtC14HealthPlatform37HealthExperienceStoreCleanupOperation_context];
    v50 = swift_allocObject();
    *(v50 + 16) = v19;
    *(v50 + 24) = v48;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_2284186F0;
    *(v51 + 24) = v50;
    aBlock[4] = sub_2284186F8;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228417B68;
    aBlock[3] = &block_descriptor;
    v52 = _Block_copy(aBlock);
    v53 = v19;
    v54 = v48;

    [v49 performBlockAndWait_];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
    }

    else
    {
      v55 = v53;
      v56 = sub_22855CA8C();
      v57 = sub_22855D6AC();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        *(v58 + 4) = v55;
        *v59 = v55;
        v60 = v55;
        _os_log_impl(&dword_2283ED000, v56, v57, "%@ start() done!", v58, 0xCu);
        sub_228418694(v59, &qword_280DED080, sub_2284185F4);
        MEMORY[0x22AABAD40](v59, -1, -1);
        MEMORY[0x22AABAD40](v58, -1, -1);
      }

      v61 = *(v45 + 8);
      v61(v64, v29);
      v61(v69, v29);
    }
  }
}

void sub_228417838(char *a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = *&a1[OBJC_IVAR____TtC14HealthPlatform37HealthExperienceStoreCleanupOperation_context];
  v30[0] = 0;
  v5 = [v4 executeRequest:a2 error:v30];
  if (v5)
  {
    v6 = v5;
    v7 = v30[0];
  }

  else
  {
    v8 = v30[0];
    v9 = sub_22855BF3C();

    swift_willThrow();
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = a1;
    v12 = a2;
    v13 = v9;
    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30[0] = v18;
      *v16 = 138412802;
      *(v16 + 4) = v11;
      *v17 = v11;
      *(v16 + 12) = 2080;
      v19 = v11;
      v20 = v12;
      v21 = [v20 description];
      v22 = sub_22855D1AC();
      v24 = v23;

      v25 = sub_2283F8938(v22, v24, v30);

      *(v16 + 14) = v25;
      *(v16 + 22) = 2080;
      v26 = v9;
      sub_228418D44();
      v27 = sub_22855D1CC();
      v29 = sub_2283F8938(v27, v28, v30);

      *(v16 + 24) = v29;
      _os_log_impl(&dword_2283ED000, v14, v15, "%@ executing this request failed: %s with error: %s", v16, 0x20u);
      sub_228418694(v17, &qword_280DED080, sub_2284185F4);
      MEMORY[0x22AABAD40](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t HealthExperienceStoreCleanupOperation.description.getter()
{
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000027, 0x800000022856D7D0);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0;
}

id HealthExperienceStoreCleanupOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthExperienceStoreCleanupOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228417E24()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t sub_228417E6C(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

void *sub_228417ED8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_228417F04@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_228417FB4(uint64_t a1, id *a2)
{
  result = sub_22855D18C();
  *a2 = 0;
  return result;
}

uint64_t sub_22841802C(uint64_t a1, id *a2)
{
  v3 = sub_22855D19C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2284180AC@<X0>(uint64_t *a2@<X8>)
{
  sub_22855D1AC();
  v3 = sub_22855D17C();

  *a2 = v3;
  return result;
}

uint64_t sub_2284180F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_228418D0C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_228418130(uint64_t a1)
{
  v2 = sub_228418978(&unk_280DE9370, type metadata accessor for HKFeatureIdentifier, &unk_22855FE04);
  v3 = sub_228418978(&unk_27D83F230, type metadata accessor for HKFeatureIdentifier, &unk_22855FA18);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2284181EC(uint64_t a1)
{
  v2 = sub_228418978(&qword_27D83F290, type metadata accessor for URLResourceKey, &unk_2285601E4);
  v3 = sub_228418978(&unk_27D83F298, type metadata accessor for URLResourceKey, &unk_228560184);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2284182A8(uint64_t a1)
{
  v2 = sub_228418978(&qword_27D83F2B0, type metadata accessor for NSKeyValueChangeKey, &unk_2285602B8);
  v3 = sub_228418978(&qword_27D83F2B8, type metadata accessor for NSKeyValueChangeKey, &unk_22855FF5C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_228418364@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22855D17C();

  *a2 = v3;
  return result;
}

uint64_t sub_2284183AC(uint64_t a1)
{
  v2 = sub_228418978(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey, &unk_228560274);
  v3 = sub_228418978(&qword_27D83F2A8, type metadata accessor for ProgressUserInfoKey, &unk_228560070);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_228418468()
{
  v0 = sub_22855D1AC();
  v1 = MEMORY[0x22AAB9310](v0);

  return v1;
}

uint64_t sub_2284184A4(uint64_t a1)
{
  sub_22855D1AC();
  sub_22855D20C();
}

uint64_t sub_2284184F8(uint64_t a1)
{
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v1 = sub_22855E27C();

  return v1;
}

uint64_t sub_22841856C(void *a1, uint64_t *a2)
{
  v2 = sub_22855D1AC();
  v4 = v3;
  if (v2 == sub_22855D1AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22855E15C();
  }

  return v7 & 1;
}

unint64_t sub_2284185F4()
{
  result = qword_280DEEB30;
  if (!qword_280DEEB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEEB30);
  }

  return result;
}

void sub_228418640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228418694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228418640(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentMagnitudeFeatureTag(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentMagnitudeFeatureTag(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2284188C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2284188E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_228418978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_228418C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F25A0(0, &qword_280DED010, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_228418D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_228418D44()
{
  result = qword_280DECFE0;
  if (!qword_280DECFE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DECFE0);
  }

  return result;
}

uint64_t (*MockSharableModelStorage.fetchHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_2284196B0;
}

unint64_t sub_228419298()
{
  result = qword_27D83F328;
  if (!qword_27D83F328)
  {
    sub_2283F8898(255, &qword_27D83F330, &type metadata for SharableModelPredicate, MEMORY[0x277D83D88]);
    sub_22841A730(255, &qword_27D83F338, sub_228419354, 1);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D83F328);
  }

  return result;
}

void sub_228419354(uint64_t a1)
{
  if (!qword_27D83F340)
  {
    sub_2284193F4(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    sub_228418D44();
    v1 = sub_22855E2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F340);
    }
  }
}

void sub_2284193F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228419458(uint64_t a1, uint64_t (**a2)(uint64_t *))
{
  v2 = *a2;
  v4 = MEMORY[0x277D84F90];
  v5 = 0;
  return v2(&v4);
}

uint64_t sub_22841949C(uint64_t *a1, _OWORD *a2, uint64_t (*a3)(uint64_t, uint64_t (*)(), _OWORD *))
{
  v3 = *a1;
  v5[1] = *a2;
  return a3(v3, sub_22841C06C, v5);
}

uint64_t sub_2284194F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22841C100;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_228419614(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *))
{
  v10 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[0] = sub_22841C0FC;
  v9[1] = v7;
  a4(&v10, v9);
}

uint64_t MockSharableModelStorage.fetchHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.fetchHandler.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C100;
  v3[8] = v7;

  return sub_2284198FC;
}

uint64_t (*MockSharableModelStorage.updateOrCreateHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_228419CFC;
}

unint64_t sub_228419AA8()
{
  result = qword_27D83F358;
  if (!qword_27D83F358)
  {
    sub_2284193F4(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    sub_228419B50();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D83F358);
  }

  return result;
}

unint64_t sub_228419B50()
{
  result = qword_27D83F360;
  if (!qword_27D83F360)
  {
    sub_2284193F4(255, &qword_280DE8EC0, sub_228418D44, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D83F360);
  }

  return result;
}

uint64_t sub_228419BDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22841C104;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockSharableModelStorage.updateOrCreateHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.updateOrCreateHandler.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C104;
  v3[8] = v7;

  return sub_228419F40;
}

uint64_t (*MockSharableModelStorage.deleteHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_22841A334;
}

unint64_t sub_22841A0EC()
{
  result = qword_27D83F378;
  if (!qword_27D83F378)
  {
    sub_2283F8898(255, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228419B50();
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D83F378);
  }

  return result;
}

uint64_t sub_22841A188(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22841C108;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_22841A2A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v13[0] = a7;
  v13[1] = v11;
  a4(&v14, v13);
}

uint64_t MockSharableModelStorage.deleteHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.deleteHandler.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C108;
  v3[8] = v7;

  return sub_22841A55C;
}

uint64_t (*MockSharableModelStorage.deleteAllHandler.getter())(uint64_t a1, uint64_t a2)
{
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v8;
  return sub_22841AABC;
}

uint64_t sub_22841A730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

double sub_22841A794@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X5>, _OWORD *a5@<X8>)
{
  sub_2284193F4(0, a2, a3, MEMORY[0x277D11C80]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = *a1;
  v14 = *a4;
  swift_beginAccess();
  (*(v10 + 16))(v12, v13 + v14, v9);
  sub_22855C94C();
  (*(v10 + 8))(v12, v9);
  result = v16[0];
  *a5 = *v16;
  return result;
}

uint64_t sub_22841A8D0(uint64_t (**a1)(uint64_t *))
{
  v1 = *a1;
  v3 = 0;
  return v1(&v3);
}

uint64_t sub_22841A908(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22841C0E4;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_22841AA28(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_22841C0F4;
  v8[1] = v6;
  a3(v8);
}

uint64_t MockSharableModelStorage.deleteAllHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelStorage.deleteAllHandler.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_22841C0E4;
  v3[8] = v7;

  return sub_22841ACB8;
}

void sub_22841ACF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(*a1 + 56);
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 64);
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v10;
    *v9 = a6;
    v9[1] = v12;

    v8(v6, 0);
    swift_endAccess();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = v10;
    *v9 = a4;
    v9[1] = v14;
    v8(v6, 0);
    swift_endAccess();
  }

  free(v6);
}

uint64_t MockSharableModelStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  MockSharableModelStorage.init()();
  return v0;
}

uint64_t MockSharableModelStorage.init()()
{
  v1 = MEMORY[0x277D11C80];
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - v3;
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, v1);
  v24 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, v1);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, v1);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  v28 = sub_228419458;
  v29 = 0;
  sub_228419298();
  sub_22855C92C();
  (*(v15 + 32))(v0 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  v28 = sub_22841C0F0;
  v29 = 0;
  sub_228419AA8();
  sub_22855C92C();
  (*(v10 + 32))(v0 + v19, v12, v9);
  v20 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  v28 = sub_22841C0F0;
  v29 = 0;
  sub_22841A0EC();
  sub_22855C92C();
  (*(v5 + 32))(v0 + v20, v7, v24);
  v21 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  v28 = sub_22841A8D0;
  v29 = 0;
  sub_22841A708(0);
  v22 = v25;
  sub_22855C92C();
  (*(v26 + 32))(v0 + v21, v22, v27);
  return v0;
}

uint64_t MockSharableModelStorage.fetch(matching:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-1] - v10;
  v12 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v9 + 16))(v11, v3 + v12, v8);
  sub_22855C94C();
  (*(v9 + 8))(v11, v8);
  v13 = v17[0];
  v16 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v17[0] = sub_22841B3C0;
  v17[1] = v14;
  v13(&v16, v17);
}

uint64_t MockSharableModelStorage.updateOrCreate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-1] - v10;
  v12 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  swift_beginAccess();
  (*(v9 + 16))(v11, v3 + v12, v8);
  sub_22855C94C();
  (*(v9 + 8))(v11, v8);
  v13 = v17[0];
  v16 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v17[0] = sub_22841B56C;
  v17[1] = v14;
  v13(&v16, v17);
}

uint64_t MockSharableModelStorage.delete(sharableModelIdentifiers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-1] - v10;
  v12 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  swift_beginAccess();
  (*(v9 + 16))(v11, v3 + v12, v8);
  sub_22855C94C();
  (*(v9 + 8))(v11, v8);
  v13 = v17[0];
  v16 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v17[0] = sub_22841C0F4;
  v17[1] = v14;
  v13(&v16, v17);
}

uint64_t MockSharableModelStorage.deleteAll(completion:)(uint64_t a1, uint64_t a2)
{
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  sub_22855C94C();
  (*(v7 + 8))(v9, v6);
  v11 = v15[0];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v15[0] = sub_22841C0F4;
  v15[1] = v12;
  v11(v15);
}

uint64_t MockSharableModelStorage.deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  v2 = MEMORY[0x277D11C80];
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, v2);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t MockSharableModelStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  v2 = MEMORY[0x277D11C80];
  sub_2284193F4(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__updateOrCreateHandler;
  sub_2284193F4(0, &qword_27D83F350, sub_228419AA8, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteHandler;
  sub_2284193F4(0, &qword_27D83F370, sub_22841A0EC, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__deleteAllHandler;
  sub_2284193F4(0, &qword_27D83F388, sub_22841A708, v2);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockSharableModelStorage(uint64_t a1)
{
  result = qword_27D83F3A0;
  if (!qword_27D83F3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22841BD74(uint64_t a1)
{
  sub_2284193F4(319, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  if (v1 <= 0x3F)
  {
    sub_2284193F4(319, &qword_27D83F350, sub_228419AA8, MEMORY[0x277D11C80]);
    if (v2 <= 0x3F)
    {
      sub_2284193F4(319, &qword_27D83F370, sub_22841A0EC, MEMORY[0x277D11C80]);
      if (v3 <= 0x3F)
      {
        sub_2284193F4(319, &qword_27D83F388, sub_22841A708, MEMORY[0x277D11C80]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_22841BFA0(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v4[1] = *a1;
  return v2(sub_22841C034, v4);
}

uint64_t sub_22841BFF0(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *a1;
  v7[1] = *a2;
  return v4(v5, a3, v7);
}

uint64_t sub_22841C034(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_22841C06C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

double sub_22841C11C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_22841C128@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t static InputSignalSet.LookupKey.loggingPinnedContentStateChange.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for LoggingPinnedContentEmptyInputSignal(0);
  return sub_22855C61C();
}

uint64_t type metadata accessor for LoggingPinnedContentEmptyInputSignal(uint64_t a1)
{
  result = qword_27D83F3D0;
  if (!qword_27D83F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LoggingPinnedContentEmptyInputSignal.darwinNotificationName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t static LoggingPinnedContentEmptyInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

void sub_22841C360(int a1)
{
  v2 = v1;
  LODWORD(v26) = a1;
  v3 = sub_22855C85C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_22841D9D4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v9 = sub_22855BD2C();
  v26 = v6;
  v10 = v1[7];
  *(&v23 - 2) = MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v10 + 32));
  sub_22841DD5C((v10 + 16), v27);
  os_unfair_lock_unlock((v10 + 32));
  if (LOBYTE(v27[0]) == 1)
  {
    LODWORD(v11) = BYTE1(v27[0]);
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DE9DF8);
    v13 = sub_22855CA8C();
    v14 = sub_22855D6AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v11;
      v16 = v15;
      v23 = v15;
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v16 = 136446210;
      v17 = sub_22855E34C();
      v19 = sub_2283F8938(v17, v18, v27);

      v20 = v23;
      *(v23 + 4) = v19;
      v11 = v20;
      _os_log_impl(&dword_2283ED000, v13, v14, "[%{public}s] Quick log emptiness changed", v20, 0xCu);
      v21 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AABAD40](v21, -1, -1);
      v22 = v11;
      LOBYTE(v11) = v25;
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    sub_22855C84C();
    LOBYTE(v27[0]) = v11 ^ 1;
    sub_22855C57C();
    swift_getObjectType();
    v27[0] = v2;
    sub_22841DD98(&qword_27D83F3E0, type metadata accessor for LoggingPinnedContentEmptyInputSignal, &protocol conformance descriptor for LoggingPinnedContentEmptyInputSignal);
    sub_22855C78C();

    (*(v26 + 8))(v8, v5);
  }

  else
  {
  }
}

uint64_t sub_22841C8E0@<X0>(BOOL *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(sub_22855BC9C() + 16);

  *a1 = v5 == 0;
  if (v4 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v5 == 0) | v4;
  }

  *a2 = v7 & 1;
  a2[1] = v5 == 0;
  return result;
}

void sub_22841C960(uint64_t a1, char a2)
{
  v3 = v2;
  v33 = *v3;
  v34 = sub_22855CFBC();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855CFEC();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855D00C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = sub_22855BF2C();
  v18 = [v17 hk_isDatabaseAccessibilityError];

  if (v18)
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v19 = sub_22855CABC();
    __swift_project_value_buffer(v19, qword_280DE9DF8);
    v20 = sub_22855CA8C();
    v21 = sub_22855D68C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      v24 = sub_22855E34C();
      v26 = sub_2283F8938(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v20, v21, "[%{public}s] Database inaccessible, scheduling retry when unlocked", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v27 = swift_allocObject();
    swift_weakInit();

    sub_228506C84(sub_22841DDE0, v27);
  }

  else if (a2)
  {
    v32[1] = *(v3 + 104);
    sub_22855CFFC();
    MEMORY[0x22AAB90D0](v14, v3 + OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval);
    v33 = *(v11 + 8);
    v33(v14, v10);
    v28 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_22841DD78;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_0;
    v32[0] = _Block_copy(aBlock);

    sub_22855CFDC();
    v38 = MEMORY[0x277D84F90];
    sub_22841DD98(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v29 = MEMORY[0x277D85198];
    sub_2283FA2E8(0, &qword_280DED270, MEMORY[0x277D85198]);
    sub_2283F461C(&qword_280DED260, &qword_280DED270, v29);
    v30 = v34;
    sub_22855DA9C();
    v31 = v32[0];
    MEMORY[0x22AAB9840](v16, v9, v6, v32[0]);
    _Block_release(v31);
    (*(v37 + 8))(v6, v30);
    (*(v35 + 8))(v9, v36);
    v33(v16, v10);
  }
}

uint64_t sub_22841CF2C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22841C360(a2 & 1);
  }

  return result;
}

uint64_t sub_22841CF90(uint64_t a1, uint64_t a2)
{
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DE9DF8);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%{public}s] Pinned content did update notification received, refetching quick log promotion tile", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22841C360(1);
  }

  return result;
}

Swift::Void __swiftcall LoggingPinnedContentEmptyInputSignal.stopObservation()()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    sub_22855C49C();
  }

  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t LoggingPinnedContentEmptyInputSignal.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LoggingPinnedContentEmptyInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_22841D33C()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    sub_22855C49C();
  }

  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_22841D39C(uint64_t a1)
{
  v2 = sub_22841DD98(&qword_27D83F3E0, type metadata accessor for LoggingPinnedContentEmptyInputSignal, &protocol conformance descriptor for LoggingPinnedContentEmptyInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

void *sub_22841D408(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a1;
  v29 = a3;
  v27 = a2;
  v26 = sub_22855D81C();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v23 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22855D7BC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22855CFEC();
  MEMORY[0x28223BE20](v5 - 8);
  v25 = sub_22855CFAC();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D85188]);
  type metadata accessor for LoggingPinnedContentEmptyInputSignal(0);
  v9 = swift_allocObject();
  v10 = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v22[0] = "onErrorRetryInterval";
  v22[1] = v10;
  sub_22855CFDC();
  v30 = MEMORY[0x277D84F90];
  sub_22841DD98(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v11 = MEMORY[0x277D85230];
  sub_2283FA2E8(0, &qword_280DED250, MEMORY[0x277D85230]);
  sub_2283F461C(&qword_280DED240, &qword_280DED250, v11);
  sub_22855DA9C();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v26);
  v9[13] = sub_22855D84C();
  v12 = v27;
  v9[3] = v28;
  v9[4] = v12;
  v13 = v29;
  v9[2] = v29;
  v14 = v13;
  v9[5] = sub_22855BCEC();
  v9[6] = v15;
  v16 = sub_22855BCCC();
  v17 = objc_allocWithZone(v16);
  v18 = sub_22855BCBC();
  v19 = MEMORY[0x277D0FCF0];
  v9[11] = v16;
  v9[12] = v19;
  v9[8] = v18;
  sub_22841DBF0(0);
  v20 = swift_allocObject();
  *(v20 + 32) = 0;
  *(v20 + 16) = 2;
  *(v20 + 24) = 0;
  v9[7] = v20;
  (*(v6 + 32))(v9 + OBJC_IVAR____TtC14HealthPlatform36LoggingPinnedContentEmptyInputSignal_onErrorRetryInterval, v8, v25);
  return v9;
}

uint64_t _s14HealthPlatform36LoggingPinnedContentEmptyInputSignalC16beginObservation4from14configurationsy0A13Orchestration11ValueAnchorVySbGSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  v2 = *v0;
  sub_22855C4AC();
  v3 = v1[13];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  sub_22855D1DC();
  v6 = v3;

  sub_22855C47C();

  v7 = v1[7];
  os_unfair_lock_lock(v7 + 8);
  sub_22841DC58(&v7[4]);
  os_unfair_lock_unlock(v7 + 8);
  sub_22841C360(1);
}

void sub_22841D9D4()
{
  if (!qword_27D83F3C8)
  {
    v0 = sub_22855C58C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F3C8);
    }
  }
}

uint64_t sub_22841DA58(uint64_t a1)
{
  result = sub_22855CFAC();
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

uint64_t sub_22841DB34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_22841DB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_22841DBF0(uint64_t a1)
{
  if (!qword_27D83F3E8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F3E8);
    }
  }
}

uint64_t sub_22841DC58(uint64_t a1)
{

  *(a1 + 8) = v1;
  return result;
}

uint64_t sub_22841DC98(uint64_t a1)
{
  sub_22841DCF4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22841DCF4(uint64_t a1)
{
  if (!qword_280DED080)
  {
    sub_2283EF310(255, &qword_280DEEB30, 0x277D82BB8);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED080);
    }
  }
}

uint64_t sub_22841DD98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FeedItem.eligibleFeedKinds.getter()
{
  FeedItem.contentKind.getter(&v10);
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  v2 = v10;
  do
  {
    v5 = byte_283B7EB58[v0 + 32];
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (qword_280DEE748 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v7 = qword_280DEE760;
      }

      else if (v5 == 4)
      {
        v7 = &unk_283B7EAE0;
      }

      else
      {
        v7 = &unk_283B7EB30;
      }
    }

    else
    {
      if (v5 == 1)
      {
        v6 = &unk_283B7EAB8;
      }

      else
      {
        v6 = &unk_283B7EA90;
      }

      if (byte_283B7EB58[v0 + 32])
      {
        v7 = v6;
      }

      else
      {
        v7 = &unk_283B7EB08;
      }
    }

    v8 = sub_228425D94(v2, v7);

    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2284272E0(0, *(v1 + 16) + 1, 1);
      }

      v4 = *(v1 + 16);
      v3 = *(v1 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_2284272E0((v3 > 1), v4 + 1, 1);
      }

      *(v1 + 16) = v4 + 1;
      *(v1 + v4 + 32) = v5;
    }

    ++v0;
  }

  while (v0 != 6);
  return v1;
}

id sub_22841E04C(uint64_t a1, void **a2)
{
  v2 = *a2;
  ContentKind.rawValue.getter();
  v3 = sub_22855D17C();

  [v2 setContentKindRawValue_];

  return sub_22841E13C();
}

id FeedItem.contentKind.setter()
{
  ContentKind.rawValue.getter();
  v1 = sub_22855D17C();

  [v0 setContentKindRawValue_];

  return sub_22841E13C();
}

id sub_22841E13C()
{
  if (([v0 searchSectionHintRawValue] & 0x80000000) != 0 || (v1 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(objc_msgSend(v0, sel_searchSectionHintRawValue)), v1 == 13))
  {
    FeedItem.contentKind.getter(&v8);
    v2 = [v0 keywords];
    type metadata accessor for Keyword();
    sub_228428BB0(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
    v3 = sub_22855D51C();

    sub_22841F558(v3);
    v5 = v4;

    v6 = sub_228406280(v5);

    v1 = sub_228554E94(&v8, v6);
  }

  return [v0 setSearchSectionRawValue_];
}

id (*FeedItem.contentKind.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  FeedItem.contentKind.getter((a1 + 8));
  return sub_22841E2D0;
}

id sub_22841E2D0(void **a1)
{
  v1 = *a1;
  ContentKind.rawValue.getter();
  v2 = sub_22855D17C();

  [v1 setContentKindRawValue_];

  return sub_22841E13C();
}

unint64_t FeedItem.favoriteStatus.getter()
{
  swift_getObjectType();
  v1 = [v0 favoriteStatusRawValue];
  v2 = sub_22855D1AC();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (v6 = [v0 favoriteStatusRawValue], sub_22855D1AC(), v6, v7 = sub_22855DFBC(), , v7 >= 3))
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v8 = sub_22855CABC();
    __swift_project_value_buffer(v8, qword_280DEEC98);
    v9 = v0;
    v10 = sub_22855CA8C();
    v11 = sub_22855D69C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136446723;
      v14 = sub_22855E34C();
      v16 = sub_2283F8938(v14, v15, &v28);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = [v9 favoriteStatusRawValue];
      v18 = sub_22855D1AC();
      v20 = v19;

      v21 = sub_2283F8938(v18, v20, &v28);

      *(v12 + 14) = v21;
      *(v12 + 22) = 2081;
      v22 = [v9 description];
      v23 = sub_22855D1AC();
      v25 = v24;

      v26 = sub_2283F8938(v23, v25, &v28);

      *(v12 + 24) = v26;
      _os_log_impl(&dword_2283ED000, v10, v11, "%{public}s Unexpected favorite status %{public}s for feed item %{private}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    return 2;
  }

  return v7;
}

void sub_22841E610(_BYTE *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();

  [v2 setFavoriteStatusRawValue_];
}

void FeedItem.favoriteStatus.setter(unsigned __int8 a1)
{
  v2 = sub_22855D17C();

  [v1 setFavoriteStatusRawValue_];
}

void (*FeedItem.favoriteStatus.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = FeedItem.favoriteStatus.getter();
  return sub_22841E7E8;
}

void sub_22841E7E8(void **a1)
{
  v1 = *a1;
  v2 = sub_22855D17C();

  [v1 setFavoriteStatusRawValue_];
}

uint64_t sub_22841E8BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([*a1 searchSectionRawValue]);
  if (result == 13)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id (*FeedItem.searchSection.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v2 searchSectionRawValue]);
  if (v4 == 13)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v4;
    return sub_22841EA28;
  }

  return result;
}

uint64_t FeedItem.searchSectionHint.getter()
{
  if (([v0 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    return 13;
  }

  v1 = [v0 searchSectionHintRawValue];

  return _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0(v1);
}

id FeedItem.searchSectionHint.setter(unsigned __int8 a1)
{
  if (a1 == 13)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = a1;
  }

  [v1 setSearchSectionHintRawValue_];

  return sub_22841E13C();
}

id (*FeedItem.searchSectionHint.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  if (([v2 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    v4 = 13;
  }

  else
  {
    v4 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v2 searchSectionHintRawValue]);
  }

  *(a1 + 8) = v4;
  return sub_22841EB5C;
}

id sub_22841EB5C(uint64_t a1)
{
  if (*(a1 + 8) == 13)
  {
    v1 = 0xFFFFFFFFLL;
  }

  else
  {
    v1 = *(a1 + 8);
  }

  [*a1 setSearchSectionHintRawValue_];
  return sub_22841E13C();
}

uint64_t FeedItem.associatedKeywords.getter()
{
  v1 = [v0 keywords];
  type metadata accessor for Keyword();
  sub_228428BB0(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
  v2 = sub_22855D51C();

  sub_22841F558(v2);
  v4 = v3;

  v5 = sub_228406280(v4);

  return v5;
}

unint64_t *FeedItem.associatedHKTypes.getter()
{
  v1 = [v0 dataTypes];
  type metadata accessor for DataType();
  sub_228428BB0(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
  v2 = sub_22855D51C();

  sub_22841F19C(v2);
  v4 = v3;

  v5 = sub_228429F58(v4, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8, sub_228481E58);

  return v5;
}

uint64_t sub_22841ED68@<X0>(id *a1@<X0>, unint64_t **a2@<X8>)
{
  v3 = [*a1 dataTypes];
  type metadata accessor for DataType();
  sub_228428BB0(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
  v4 = sub_22855D51C();

  sub_22841F19C(v4);
  v6 = v5;

  v7 = sub_228429F58(v6, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8, sub_228481E58);

  *a2 = v7;
  return result;
}

void sub_22841EE68(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_228428C28(v2, v5);

    sub_228429950(v6, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

    type metadata accessor for DataType();
    sub_228428BB0(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
    v7 = sub_22855D50C();

    [v3 setDataTypes_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedHKTypes.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_228428C28(a1, v4);

    sub_228429950(v5, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

    type metadata accessor for DataType();
    sub_228428BB0(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
    v6 = sub_22855D50C();

    [v1 setDataTypes_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void sub_22841F19C(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    type metadata accessor for DataType();
    sub_228428BB0(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
    sub_22855D56C();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_22855DB8C() || (type metadata accessor for DataType(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_228407958(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [objc_opt_self() dataTypeWithCode_];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x22AAB9400]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22855D3EC();
      }

      sub_22855D43C();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_22841F43C(uint64_t a1)
{
  result = MEMORY[0x22AAB95B0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_228406318(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22841F558(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_22855DAEC();
    }

    else
    {
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_22845F430(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_22855D1AC();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2284272C0((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_22855DB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_22842C2B0(0);
          v6 = sub_22855D54C();
          sub_22855DBBC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_228416CB8(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_228416CB8(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_228416CB8(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          v2 = v33;
          if (v5 == v33)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_22841F8B0(uint64_t a1)
{
  v3 = sub_22855C33C();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22855DB4C();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v47 = MEMORY[0x277D84F90];
  sub_228427310(0, v7 & ~(v7 >> 63), 0);
  v8 = v47;
  if (v41)
  {
    result = sub_22855DAEC();
  }

  else
  {
    result = sub_22855DAAC();
    v10 = *(a1 + 36);
  }

  v44 = result;
  v45 = v10;
  v46 = v41 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v36 = v7;
    v37 = v40 + 32;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v12 = a1;
    }

    v34 = a1 + 56;
    v35 = v12;
    v32 = v1;
    v33 = a1 + 64;
    v38 = a1;
    while (v11 < v7)
    {
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_37;
      }

      v15 = v44;
      v16 = v46;
      v42 = v45;
      sub_22845F674(v44, v45, v46, a1);
      v18 = v17;
      v19 = [v17 identifier];
      sub_22855D1AC();

      sub_22855C31C();
      v47 = v8;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_228427310((v20 > 1), v21 + 1, 1);
        v8 = v47;
      }

      *(v8 + 16) = v21 + 1;
      result = (*(v40 + 32))(v8 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v21, v6, v39);
      if (v41)
      {
        a1 = v38;
        if (!v16)
        {
          goto LABEL_42;
        }

        if (sub_22855DB0C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v36;
        sub_22842C174(0);
        v13 = sub_22855D54C();
        sub_22855DBBC();
        result = v13(v43, 0);
        if (v11 == v7)
        {
LABEL_34:
          sub_228416CB8(v44, v45, v46);
          return v8;
        }
      }

      else
      {
        a1 = v38;
        if (v16)
        {
          goto LABEL_43;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v22 = 1 << *(v38 + 32);
        if (v15 >= v22)
        {
          goto LABEL_38;
        }

        v23 = v15 >> 6;
        v24 = *(v34 + 8 * (v15 >> 6));
        if (((v24 >> v15) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v38 + 36) != v42)
        {
          goto LABEL_40;
        }

        v25 = v24 & (-2 << (v15 & 0x3F));
        if (v25)
        {
          v22 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = v23 << 6;
          v27 = v23 + 1;
          v28 = (v33 + 8 * v23);
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              result = sub_228416CB8(v15, v42, 0);
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_33;
            }
          }

          result = sub_228416CB8(v15, v42, 0);
        }

LABEL_33:
        v31 = *(a1 + 36);
        v44 = v22;
        v45 = v31;
        v46 = 0;
        v7 = v36;
        if (v11 == v36)
        {
          goto LABEL_34;
        }
      }
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
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_22841FCB4(uint64_t a1)
{
  v3 = type metadata accessor for UserProfile(0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_22855DB4C();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v39 = v5;
  v48 = MEMORY[0x277D84F90];
  sub_228427360(0, v6 & ~(v6 >> 63), 0);
  v7 = v48;
  if (v42)
  {
    result = sub_22855DAEC();
  }

  else
  {
    result = sub_22855DAAC();
    v9 = *(a1 + 36);
  }

  v45 = result;
  v46 = v9;
  v47 = v42 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v11 = a1;
    }

    v36 = a1 + 56;
    v37 = v11;
    v34[1] = v1;
    v35 = a1 + 64;
    v38 = v6;
    while (v10 < v6)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_37;
      }

      v14 = v45;
      v15 = v47;
      v43 = v46;
      v16 = a1;
      sub_22845F898(v45, v46, v47, a1);
      v18 = v17;
      v19 = Profile.hkProfileIdentifier.getter();
      v20 = [v19 identifier];
      v21 = v39;
      sub_22855C1BC();

      *(v21 + *(v41 + 20)) = v19;
      v48 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_228427360((v22 > 1), v23 + 1, 1);
        v21 = v39;
        v7 = v48;
      }

      *(v7 + 16) = v23 + 1;
      result = sub_22842C078(v21, v7 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v23, type metadata accessor for UserProfile);
      if (v42)
      {
        if (!v15)
        {
          goto LABEL_42;
        }

        a1 = v16;
        if (sub_22855DB0C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v38;
        sub_22842C0E0(0);
        v12 = sub_22855D54C();
        sub_22855DBBC();
        result = v12(v44, 0);
        if (v10 == v6)
        {
LABEL_34:
          sub_228416CB8(v45, v46, v47);
          return v7;
        }
      }

      else
      {
        if (v15)
        {
          goto LABEL_43;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        a1 = v16;
        v24 = 1 << *(v16 + 32);
        if (v14 >= v24)
        {
          goto LABEL_38;
        }

        v25 = v14 >> 6;
        v26 = *(v36 + 8 * (v14 >> 6));
        if (((v26 >> v14) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v16 + 36) != v43)
        {
          goto LABEL_40;
        }

        v27 = v26 & (-2 << (v14 & 0x3F));
        if (v27)
        {
          v24 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v25 << 6;
          v29 = v25 + 1;
          v30 = (v35 + 8 * v25);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_228416CB8(v14, v43, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_33;
            }
          }

          result = sub_228416CB8(v14, v43, 0);
        }

LABEL_33:
        v33 = *(v16 + 36);
        v45 = v24;
        v46 = v33;
        v47 = 0;
        v6 = v38;
        if (v10 == v38)
        {
          goto LABEL_34;
        }
      }
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
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_2284200C4(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2284273B0(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_22855DAEC();
    }

    else
    {
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_22845F958(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_22855D1AC();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2284273B0((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_22855DB0C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_22842BEC4(0);
          v6 = sub_22855D54C();
          sub_22855DBBC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_228416CB8(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_228416CB8(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_228416CB8(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          v2 = v33;
          if (v5 == v33)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void (*FeedItem.associatedHKTypes.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[1] = v2;
  v6 = [v2 dataTypes];
  v5[2] = type metadata accessor for DataType();
  v5[3] = sub_228428BB0(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
  v7 = sub_22855D51C();

  sub_22841F19C(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_228429F58(v9, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8, sub_228481E58);

  *v5 = v10;
  return sub_22842057C;
}

void sub_22842057C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v10 = [(*a1)[1] managedObjectContext];
    if (v10)
    {
      v11 = v2[1];
      v12 = v10;
      v13 = sub_228428C28(v3, v12);

      sub_228429950(v13, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

      v14 = sub_22855D50C();

      [v11 setDataTypes_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = [v4 managedObjectContext];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v2[1];
  v7 = v5;
  v8 = sub_228428C28(v3, v7);

  sub_228429950(v8, type metadata accessor for DataType, &qword_280DED538, type metadata accessor for DataType, sub_2284820F0);

  v9 = sub_22855D50C();

  [v6 setDataTypes_];

LABEL_6:

  free(v2);
}

uint64_t FeedItem.associatedMeasureIdentifiers.getter()
{
  v1 = [v0 measureIdentifiers];
  type metadata accessor for MeasureIdentifierManagedObject();
  sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
  v2 = sub_22855D51C();

  v3 = sub_22841F8B0(v2);

  v4 = sub_2284291F0(v3);

  return v4;
}

uint64_t sub_2284208B8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 measureIdentifiers];
  type metadata accessor for MeasureIdentifierManagedObject();
  sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
  v4 = sub_22855D51C();

  v5 = sub_22841F8B0(v4);

  v6 = sub_2284291F0(v5);

  *a2 = v6;
  return result;
}

void sub_22842098C(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22842A0C4(v2, v5);

    sub_228429950(v6, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

    type metadata accessor for MeasureIdentifierManagedObject();
    sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
    v7 = sub_22855D50C();

    [v3 setMeasureIdentifiers_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedMeasureIdentifiers.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22842A0C4(a1, v4);

    sub_228429950(v5, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

    type metadata accessor for MeasureIdentifierManagedObject();
    sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
    v6 = sub_22855D50C();

    [v1 setMeasureIdentifiers_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedMeasureIdentifiers.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[1] = v2;
  v6 = [v2 measureIdentifiers];
  v5[2] = type metadata accessor for MeasureIdentifierManagedObject();
  v5[3] = sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
  v7 = sub_22855D51C();

  v8 = sub_22841F8B0(v7);
  v5[4] = 0;

  v9 = sub_2284291F0(v8);

  *v5 = v9;
  return sub_228420DF4;
}

void sub_228420DF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v10 = [(*a1)[1] managedObjectContext];
    if (v10)
    {
      v11 = v2[1];
      v12 = v10;
      v13 = sub_22842A0C4(v3, v12);

      sub_228429950(v13, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

      v14 = sub_22855D50C();

      [v11 setMeasureIdentifiers_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = [v4 managedObjectContext];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v2[1];
  v7 = v5;
  v8 = sub_22842A0C4(v3, v7);

  sub_228429950(v8, type metadata accessor for MeasureIdentifierManagedObject, qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, sub_228482674);

  v9 = sub_22855D50C();

  [v6 setMeasureIdentifiers_];

LABEL_6:

  free(v2);
}

uint64_t sub_228421060@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 keywords];
  type metadata accessor for Keyword();
  sub_228428BB0(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
  v4 = sub_22855D51C();

  sub_22841F558(v4);
  v6 = v5;

  v7 = sub_228406280(v6);

  *a2 = v7;
  return result;
}

void FeedItem.associatedKeywords.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v6 = v3;
    v4 = sub_22842A4E8(a1, v6);

    sub_228429950(v4, type metadata accessor for Keyword, qword_280DED548, type metadata accessor for Keyword, sub_228482918);

    type metadata accessor for Keyword();
    sub_228428BB0(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
    v5 = sub_22855D50C();

    [v1 setKeywords_];

    sub_22841E13C();
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedKeywords.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[1] = v2;
  v6 = [v2 keywords];
  v5[2] = type metadata accessor for Keyword();
  v5[3] = sub_228428BB0(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
  v7 = sub_22855D51C();

  sub_22841F558(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_228406280(v9);

  *v5 = v10;
  return sub_228421438;
}

void sub_228421438(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v10 = [(*a1)[1] managedObjectContext];
    if (v10)
    {
      v11 = v2[1];
      v12 = v10;
      v13 = sub_22842A4E8(v3, v12);

      sub_228429950(v13, type metadata accessor for Keyword, qword_280DED548, type metadata accessor for Keyword, sub_228482918);

      v14 = sub_22855D50C();

      [v11 setKeywords_];

      sub_22841E13C();
      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = [v4 managedObjectContext];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v2[1];
  v7 = v5;
  v8 = sub_22842A4E8(v3, v7);

  sub_228429950(v8, type metadata accessor for Keyword, qword_280DED548, type metadata accessor for Keyword, sub_228482918);

  v9 = sub_22855D50C();

  [v6 setKeywords_];

  sub_22841E13C();

LABEL_6:

  free(v2);
}

uint64_t FeedItem.associatedProfiles.getter()
{
  v1 = [v0 profiles];
  type metadata accessor for Profile();
  sub_228428BB0(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
  v2 = sub_22855D51C();

  v3 = sub_22841FCB4(v2);

  v4 = sub_22842941C(v3);

  return v4;
}

uint64_t sub_228421784@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 profiles];
  type metadata accessor for Profile();
  sub_228428BB0(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
  v4 = sub_22855D51C();

  v5 = sub_22841FCB4(v4);

  v6 = sub_22842941C(v5);

  *a2 = v6;
  return result;
}

void sub_228421858(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22842A950(v2, v5);

    sub_228429950(v6, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

    type metadata accessor for Profile();
    sub_228428BB0(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
    v7 = sub_22855D50C();

    [v3 setProfiles_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedProfiles.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22842A950(a1, v4);

    sub_228429950(v5, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

    type metadata accessor for Profile();
    sub_228428BB0(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
    v6 = sub_22855D50C();

    [v1 setProfiles_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedProfiles.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[1] = v2;
  v6 = [v2 profiles];
  v5[2] = type metadata accessor for Profile();
  v5[3] = sub_228428BB0(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
  v7 = sub_22855D51C();

  v8 = sub_22841FCB4(v7);
  v5[4] = 0;

  v9 = sub_22842941C(v8);

  *v5 = v9;
  return sub_228421CC0;
}

void sub_228421CC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v10 = [(*a1)[1] managedObjectContext];
    if (v10)
    {
      v11 = v2[1];
      v12 = v10;
      v13 = sub_22842A950(v3, v12);

      sub_228429950(v13, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

      v14 = sub_22855D50C();

      [v11 setProfiles_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = [v4 managedObjectContext];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v2[1];
  v7 = v5;
  v8 = sub_22842A950(v3, v7);

  sub_228429950(v8, type metadata accessor for Profile, &qword_280DED540, type metadata accessor for Profile, sub_228482BBC);

  v9 = sub_22855D50C();

  [v6 setProfiles_];

LABEL_6:

  free(v2);
}

uint64_t FeedItem.associatedSharableModelReferences.getter()
{
  v1 = [v0 sharableModelReferences];
  type metadata accessor for SharableModelReference();
  sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
  v2 = sub_22855D51C();

  sub_2284200C4(v2);
  v4 = v3;

  v5 = sub_228429AB8(v4);

  return v5;
}