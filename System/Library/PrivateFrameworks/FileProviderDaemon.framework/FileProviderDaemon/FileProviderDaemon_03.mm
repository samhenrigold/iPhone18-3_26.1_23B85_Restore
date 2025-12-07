void sub_1CF00C970(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = [objc_opt_self() defaultManager];
  v4 = [v28 URLsForDirectory:14 inDomains:1];
  v5 = sub_1CF9E5A58();
  v6 = sub_1CF9E6D48();

  if (*v6->tree)
  {
    (*(*(v5 - 8) + 16))(a2, v6 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v6, v7, v8, v9, v10, v11, v12, v13;
    sub_1CF9E5938();
    sub_1CF9E7948();
    0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
    MEMORY[0x1D3868CC0](*(a1 + 32), *(a1 + 40));
    MEMORY[0x1D3868CC0](0x7473696C702ELL, 0xE600000000000000);
    sub_1CF9E5938();
    0xEB000000002D746ELL, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF00CC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CF00CCE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  sub_1CEFCCBDC(a1 + *a3, &v14 - v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1CF9E5C48();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

id sub_1CF00CE50(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_1CEFE42D4(*v3, *(v3 + 8));
    v7 = sub_1CF9E5B48();
    sub_1CEFE48D8(v6, v4);
    v5 = v7;
  }

  return v5;
}

id sub_1CF00D1A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3 + 8);
  if (v3)
  {

    v4 = sub_1CF9E6888();
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1CF00D644(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1CF00D95C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E5268();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CF9E5D98();
  v46 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v40 - v10;
  v47 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1078, &qword_1CFA080B0);
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for LocalContainerSnapshot(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1CF00E0A8();
  v23 = v55;
  sub_1CF9E8298();
  if (!v23)
  {
    v24 = v53;
    v41 = v21;
    v42 = v19;
    v55 = v15;
    v43 = v12;
    v26 = v51;
    v25 = v52;
    v27 = v50;
    v61 = 0;
    if (sub_1CF9E7D78())
    {
      sub_1CF9E51B8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00CC8C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v28 = v48;
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      (*(v49 + 8))(v24, v28);
      swift_willThrow();
      (*(v27 + 8))(v18, v16);
    }

    else
    {
      v60 = 1;
      sub_1CF00CC8C(&qword_1EDEAA310, type metadata accessor for LocalDomain, &unk_1CFA085B8);
      sub_1CF9E7D88();
      v59 = 2;
      sub_1CF00CC8C(&qword_1EDEAECB8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
      sub_1CF9E7D88();
      v30 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1080, &qword_1CFA080B8);
      v58 = 3;
      sub_1CF00E98C(&qword_1EDEA37D8, &unk_1EDEA7A80, &unk_1CFA07FD0, MEMORY[0x1E69E6330]);
      sub_1CF9E7D88();
      v54 = v18;
      v31 = v57;
      v32 = v55;
      v33 = v43;
      sub_1CEFFD374(v55, v43, type metadata accessor for LocalDomain);
      v34 = v26;
      v35 = v46;
      (*(v46 + 16))(v45, v34, v25);
      v53 = v31;
      if (!*(v31 + 2))
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 168);
      }

      v36 = v42;
      v37 = *(v42 + 20);
      v48 = *(v42 + 24);
      v49 = v37;
      (*(v35 + 8))(v34, v25);
      sub_1CF0005D0(v32, type metadata accessor for LocalDomain);
      (*(v30 + 8))(v54, v16);
      v38 = v41;
      sub_1CF0008F4(v33, v41, type metadata accessor for LocalDomain);
      (*(v35 + 32))(v38 + *(v36 + 28), v45, v25);
      *(v38 + *(v36 + 32)) = v53;
      v39 = v48;
      *(v38 + v49) = 1;
      *(v38 + v39) = 1;
      sub_1CF0008F4(v38, v44, type metadata accessor for LocalContainerSnapshot);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

unint64_t sub_1CF00E0A8()
{
  result = qword_1EDEA5510[0];
  if (!qword_1EDEA5510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5510);
  }

  return result;
}

uint64_t sub_1CF00E0FC()
{
  v1 = 118;
  v2 = 30323;
  if (*v0 != 2)
  {
    v2 = 99;
  }

  if (*v0)
  {
    v1 = 100;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for DocumentContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1CF00E1E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E5268();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1200, &qword_1CFA085E8);
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CF00E7B8();
  v18 = v40;
  sub_1CF9E8298();
  if (v18)
  {
    goto LABEL_4;
  }

  v19 = v38;
  v40 = v14;
  v20 = v8;
  v21 = v37;
  v45 = 0;
  if (sub_1CF9E7D78())
  {
    sub_1CF9E51B8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E824(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v22 = v35;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v36 + 8))(v19, v22);
    swift_willThrow();
    (*(v21 + 8))(v13, v11);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v41);
    return;
  }

  v44 = 1;
  *(v16 + 2) = sub_1CF9E7D48();
  *(v16 + 3) = v23;
  v43 = 2;
  v38 = sub_1CF9E7D48();
  v39 = v16;
  *(v16 + 4) = v38;
  *(v16 + 5) = v24;
  v36 = v24;
  v42 = 3;
  sub_1CF00E824(&unk_1EDEAB400, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1CF9E7D88();
  v35 = v11;
  v25 = v40;
  v26 = *(v40 + 32);
  (*(v33 + 32))(&v39[v26], v10, v20);
  if (v38 == 0x6C75616665645F5FLL && v36 == 0xEB000000005F5F74)
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_1CF9E8048();
  }

  v28 = v34;
  v16[*(v25 + 36)] = v27 & 1;
  v29 = sub_1CEFFBB54(&v16[v26]);
  v31 = v30;
  (*(v21 + 8))(v13, v35);
  *v16 = v31;
  *(v16 + 2) = v29;
  sub_1CF000F50(v16, v28, type metadata accessor for LocalDomain);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_1CF000CD0(v16, type metadata accessor for LocalDomain);
}

unint64_t sub_1CF00E7B8()
{
  result = qword_1EDEAA328;
  if (!qword_1EDEAA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA328);
  }

  return result;
}

uint64_t sub_1CF00E824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00E86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00E8B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00E8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00E944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00E98C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C1080, &qword_1CFA080B8);
    sub_1CF00CC8C(a2, type metadata accessor for LocalContainer, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF00EA28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  v103 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v91 - v5;
  v6 = sub_1CF9E5A58();
  v101 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v91 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10C0, &unk_1CFA080D0);
  v102 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00F0FC();
  v15 = v104;
  sub_1CF9E8298();
  if (v15)
  {
    v25 = a1;
  }

  else
  {
    v96 = v8;
    v97 = v6;
    v104 = v11;
    v16 = v102;
    LOBYTE(v105) = 0;
    v17 = sub_1CF9E7D48();
    v18 = v12;
    v20 = v19;
    v95 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    v107 = 1;
    sub_1CF00F168(&qword_1EDEA3818, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1CF9E7D88();
    v21 = v106;
    v93 = v105;
    v94 = v20;
    LOBYTE(v105) = 2;
    sub_1CF00CC8C(&unk_1EDEAB400, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v22 = v18;
    v23 = v14;
    v24 = v97;
    sub_1CF9E7D88();
    LOBYTE(v105) = 3;
    sub_1CF00CC8C(&qword_1EDEAA310, type metadata accessor for LocalDomain, &unk_1CFA085B8);
    v27 = v100;
    sub_1CF9E7D88();
    v92 = v23;
    v103 = v22;
    v28 = v94;
    v29 = sub_1CF9E6888();
    v28, v30, v31, v32, v33, v34, v35, v36;
    (*(v101 + 16))(v96, v104, v24);
    v37 = v99;
    sub_1CEFFD374(v27, v99, type metadata accessor for LocalDomain);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v39 = v38;
    v40 = sub_1CF9E6AE8();
    v39, v41, v42, v43, v44, v45, v46, v47;
    v95 = v21;
    v91 = a1;
    if (v40)
    {
      v48 = v29;

      v49 = v101;
      v50 = v93;
    }

    else
    {
      v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v53 = v52;
      v48 = v29;

      v55 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v61 = v54;
      v50 = v93;
      if (v51 == v55 && v53 == v54)
      {
        v53, v54, v55, v56, v57, v58, v59, v60;
        v61, v62, v63, v64, v65, v66, v67, v68;
        v49 = v101;
      }

      else
      {
        v69 = sub_1CF9E8048();
        v53, v70, v71, v72, v73, v74, v75, v76;
        v61, v77, v78, v79, v80, v81, v82, v83;
        v49 = v101;
        if ((v69 & 1) == 0)
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
        }
      }
    }

    v84 = v96;
    if ((sub_1CF9E5848() & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
    }

    v85 = v98;
    *v98 = v48;
    v85[1] = v50;
    v85[2] = v95;
    v86 = type metadata accessor for LocalContainer(0);
    v87 = *(v86 + 24);
    v88 = v86;
    v101 = v86;
    sub_1CEFFD374(v37, v85 + v87, type metadata accessor for LocalDomain);
    sub_1CEFFBA1C(v85 + *(v88 + 28));
    sub_1CF0005D0(v37, type metadata accessor for LocalDomain);
    v89 = *(v49 + 8);
    v90 = v97;
    v89(v84, v97);
    sub_1CF0005D0(v100, type metadata accessor for LocalDomain);
    v89(v104, v90);
    (*(v16 + 8))(v92, v103);
    *(v85 + *(v101 + 32)) = 1;
    v25 = v91;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

unint64_t sub_1CF00F0FC()
{
  result = qword_1EDEA7AA8[0];
  if (!qword_1EDEA7AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7AA8);
  }

  return result;
}

uint64_t sub_1CF00F168(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF00F1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00F23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00F2A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF00F304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF00F364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LocalFileEnumerator(uint64_t a1)
{
  result = qword_1EDEAB368;
  if (!qword_1EDEAB368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CF00F410(void *a1, uint64_t a2, uint64_t a3)
{
  v137 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v133 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v119 - v11;
  v12 = sub_1CF9E7388();
  v135 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E7318();
  v128 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v119 - v17;
  v126 = sub_1CF9E6448();
  v18 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v119 - v22;
  v24 = MEMORY[0x1E69E7CC0];
  v132 = a3;
  v129 = v8;
  v130 = a1;
  v119 = v7;
  v136 = v12;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CF9E7818())
  {
    sub_1CF6F4684(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CD0];
  }

  v26 = v131;
  *&v131[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumerators] = v25;
  v124 = OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue;
  v123 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v122 = "on.LocalChangesObserverContext";
  sub_1CF9E63F8();
  v140 = v24;
  sub_1CF00FE88(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v27 = v127;
  sub_1CF9E77B8();
  v28 = v126;
  (*(v18 + 16))(v20, v23, v126);
  v29 = v128;
  (*(v128 + 16))(v125, v27, v14);
  (*(v135 + 104))(v134, *MEMORY[0x1E69E8098], v136);
  v30 = v26;
  v31 = sub_1CF9E73B8();
  (*(v29 + 8))(v27, v14);
  (*(v18 + 8))(v23, v28);
  *&v26[v124] = v31;
  v32 = v137;
  if (*(v137 + 16))
  {
    v142 = v137;
    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;
    v36 = v130;
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v44 = v33;
    v45 = v37;
    if (v44 == v38 && v35 == v37)
    {
      v35, v37, v38, v39, v40, v41, v42, v43;
      v45, v46, v47, v48, v49, v50, v51, v52;
      v53 = v129;
      v54 = v132;
    }

    else
    {
      v55 = sub_1CF9E8048();
      v35, v56, v57, v58, v59, v60, v61, v62;
      v45, v63, v64, v65, v66, v67, v68, v69;
      v53 = v129;
      v54 = v132;
      if ((v55 & 1) == 0)
      {
        v79 = v119;
        sub_1CF00BE78(v132, v119, type metadata accessor for LocalDomain);
        type metadata accessor for FSChangesNotifier(0);
        swift_allocObject();
        v80 = v36;

        v81 = sub_1CF56356C(v80, v32, v79);
        *&v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier] = v81;
        if (v81)
        {
          goto LABEL_19;
        }

        v140 = 0;
        v141 = 0xE000000000000000;
        sub_1CF9E7948();
        v28 = 0xD000000000000011;
        MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA512D0);
        if (!*v32->tree)
        {
          goto LABEL_25;
        }

        v82 = v133;
        v83 = v32 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
        v84 = v138;
        (*(v133 + 16))(v138, v83, v53);
        sub_1CF9E5A18();
        v86 = v85;
        (*(v82 + 8))(v84, v53);
        v87 = sub_1CF9E6888();
        v86, v88, v89, v90, v91, v92, v93, v94;
        v95 = [v87 fp_prettyPath];

        v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v98 = v97;

        MEMORY[0x1D3868CC0](v96, v98);
        v98, v99, v100, v101, v102, v103, v104, v105;
        MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA512F0);
        v32 = v140;
        v28 = v141;
        if (qword_1EDEA3408 != -1)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }
    }

    *&v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier] = 0;
    v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore] = 1;
    v70 = *v32->tree;
    v71 = MEMORY[0x1E69E7CC0];
    if (v70)
    {
      v140 = MEMORY[0x1E69E7CC0];
      sub_1CF000F0C(0, v70, 0);
      v71 = v140;
      v72 = *(v133 + 16);
      v135 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v136 = v72;
      v32 = (v32 + v135);
      v134 = *(v133 + 72);
      v73 = (v133 + 8);
      v137 = v133 + 16;
      v74 = (v133 + 32);
      v28 = v120;
      do
      {
        v75 = v138;
        v136(v138, v32, v53);
        sub_1CF9E5958();
        (*v73)(v75, v53);
        v140 = v71;
        v77 = *v71->tree;
        v76 = *v71->tester;
        if (v77 >= v76 >> 1)
        {
          sub_1CF000F0C((v76 > 1), v77 + 1, 1);
          v71 = v140;
        }

        *v71->tree = v77 + 1;
        v78 = v134;
        (*v74)(v71 + v135 + v77 * v134, v28, v53);
        v32 = &v78[v32];
        --v70;
      }

      while (v70);
      v30 = v131;
      v54 = v132;
      v36 = v130;
    }

    sub_1CF000FB8(v71);
    while (1)
    {
      *&v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID] = v36;
      v116 = v142;
      if (*(v142 + 16))
      {
        break;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      swift_once();
LABEL_18:
      v106 = qword_1EDEBB5A0;
      v107 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_1CF9FA450;
      *(v108 + 56) = MEMORY[0x1E69E6158];
      *(v108 + 64) = sub_1CEFD51C4();
      *(v108 + 32) = v32;
      *(v108 + 40) = v28;
      sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v106, v107, v108);
      v108, v109, v110, v111, v112, v113, v114, v115;
LABEL_19:
      v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore] = 0;
    }

    (*(v133 + 16))(&v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_itemURL], v142 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v53);
    *&v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls] = v116;
    sub_1CF00BE78(v54, &v30[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain], type metadata accessor for LocalDomain);
    v139.receiver = v30;
    v139.super_class = ObjectType;
    v117 = objc_msgSendSuper2(&v139, sel_init);
    sub_1CF00F304(v54, type metadata accessor for LocalDomain);
    return v117;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF00FE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00FED0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1CF00FF8C(void *a1)
{
  v1 = a1;
  v2 = sub_1CEFCE64C();

  sub_1CF9E5A58();
  v3 = sub_1CF9E6D28();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

void sub_1CF01001C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v51 = a6;
  v49 = a5;
  v8 = a4;
  v48 = sub_1CF9E63A8();
  v54 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  if (!a1)
  {
    v17 = fpfs_current_log();
  }

  v18 = a1;
  v50 = fpfs_adopt_log();
  v19 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v57 = v20;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v21 = sub_1CF9E7988();
  v22 = v8;
  v24 = v23;
  MEMORY[0x1D3868CC0](v21);
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = v57;
  sub_1CF9E6978();
  v32, v33, v34, v35, v36, v37, v38, v39;
  v40 = __fp_log_fork();

  *(v19 + 16) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v17;
  *(v41 + 24) = v19;
  *(v41 + 32) = v7;
  *(v41 + 40) = a2;
  *(v41 + 48) = a3;
  *(v41 + 56) = v22;
  v42 = v51;
  *(v41 + 64) = v49;
  *(v41 + 72) = v42;
  v60 = sub_1CF010500;
  v61 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1CEFCA444;
  v59 = &block_descriptor_18;
  v43 = _Block_copy(&aBlock);
  v44 = v17;

  v7;

  sub_1CF9E63F8();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1CF010454(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  v45 = v48;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v16, v13, v43);
  _Block_release(v43);
  (*(v54 + 8))(v13, v45);
  (*(v52 + 8))(v16, v53);

  v46 = v50;
  v47 = fpfs_adopt_log();
}

uint64_t sub_1CF0103FC()
{

  return swift_deallocObject();
}

uint64_t sub_1CF010454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CF01049C()
{
  result = qword_1EDEAEDB0;
  if (!qword_1EDEAEDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDB0);
  }

  return result;
}

void sub_1CF01052C(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v70 = a4;
  v71 = a1;
  LODWORD(v73) = a3;
  v72 = a2;
  v12 = sub_1CF9E63A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6448();
  v15 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  v18 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong unableToStartup])
    {
      v20 = sub_1CF8403B4();
      aBlock = v20;
      LOBYTE(v79) = 1;
      a7(&aBlock);

      return;
    }
  }

  v67 = v15;
  v68 = v13;
  v69 = v12;
  if ((a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] & 1) == 0)
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v66[0] = [v21 serialQueue];

      v82 = nullsub_1;
      v83 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1CEFCA444;
      v81 = &block_descriptor_5544;
      v23 = _Block_copy(&aBlock);
      v24 = v74;
      sub_1CF9E63F8();
      v77 = MEMORY[0x1E69E7CC0];
      sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v25 = v75;
      v26 = v69;
      sub_1CF9E77B8();
      v27 = v66[0];
      MEMORY[0x1D3869630](0, v24, v25, v23);
      _Block_release(v23);

      (*(v68 + 8))(v25, v26);
      (*(v67 + 8))(v24, v76);
    }
  }

  v66[0] = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup];
  v28 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log];
  v29 = *&a6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v30 = swift_allocObject();
  v30[2] = a6;
  v30[3] = sub_1CF7968B0;
  v66[1] = v18;
  v31 = v70;
  v30[4] = v18;
  v30[5] = v31;
  v30[6] = a5;
  v32 = a6;

  v33 = v28;
  v70 = fpfs_adopt_log();
  v34 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v79 = v35;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v36 = v71;
  v37 = v72;
  v38 = v73;
  v39 = sub_1CF9E7988();
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49 = v79;
  sub_1CF9E6978();
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = __fp_log_fork();

  *(v34 + 16) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = v28;
  *(v58 + 24) = v34;
  *(v58 + 32) = v29;
  *(v58 + 40) = v36;
  *(v58 + 48) = v37;
  *(v58 + 56) = v38;
  *(v58 + 64) = sub_1CF902D8C;
  *(v58 + 72) = v30;
  v82 = sub_1CF2B9F54;
  v83 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_1CEFCA444;
  v81 = &block_descriptor_5556;
  v59 = _Block_copy(&aBlock);
  v73 = v33;

  v60 = v29;

  v61 = v74;
  sub_1CF9E63F8();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v62 = v75;
  v63 = v69;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v59);
  (*(v68 + 8))(v62, v63);
  (*(v67 + 8))(v61, v76);

  v64 = v70;
  v65 = fpfs_adopt_log();
}

double sub_1CF010C2C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1CF8B19C0(a1, v6, v7, v1 + v4, v8, v10, v11);
}

void sub_1CF010CE0(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v195 = a4;
  v196 = a3;
  v192 = a2;
  v200 = a1;
  v197 = a5;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v183 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v179 = v152 - v6;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v184 = v7;
  v185 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v152[12] = v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v152[7] = v152 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v152[11] = v152 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v152[6] = v152 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v152[10] = v152 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v152[5] = v152 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v152[9] = v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v152[3] = v152 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v169 = v152 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v163 = v152 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v173 = v152 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v164 = v152 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v165 = v152 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v166 = v152 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v152[8] = v152 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v152[2] = v152 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v168 = v152 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v159 = v152 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v170 = v152 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v160 = v152 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v161 = v152 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v162 = v152 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v152[4] = v152 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v152[1] = v152 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v167 = v152 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v154 = v152 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v155 = v152 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v156 = v152 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v157 = v152 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v158 = v152 - v67;
  v186 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v186);
  v153 = v152 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v182 = v152 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v172 = v152 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v171 = v152 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v181 = v152 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v178 = v152 - v78;
  v194 = sub_1CF9E5A58();
  v189 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v190 = v152 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v174 = v152 - v81;
  v82 = sub_1CF9E6118();
  v187 = *(v82 - 8);
  v188 = v82;
  MEMORY[0x1EEE9AC00](v82);
  v191 = v152 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v177 = v152 - v85;
  v86 = type metadata accessor for VFSItem(0);
  v198 = *(v86 - 8);
  v199 = v86;
  MEMORY[0x1EEE9AC00](v86);
  v180 = v152 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = v152 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v91 - 8);
  v93 = (v152 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v94);
  v96 = v152 - v95;
  v97 = sub_1CF9E64A8();
  v98 = *v97[-1].tester;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v101 = (v152 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = v5;
  v102 = *(v5 + 16);
  v103 = v102[8];
  *v101 = v103;
  (*(v98 + 104))(v101, *MEMORY[0x1E69E8018], v97, v99);
  v104 = v103;
  v105 = sub_1CF9E64D8();
  (*(v98 + 8))(v101, v97);
  if (v105)
  {
    v193 = v102;
    type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();

    sub_1CF264F9C(v196, v195, 2129920, v96);

    sub_1CEFCCBDC(v96, v93, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v106 = v198;
    v107 = v199;
    if ((*(v198 + 48))(v93, 1, v199) == 1)
    {
      sub_1CEFCCC44(v96, &unk_1EC4BEC00, &unk_1CF9FCB60);
      sub_1CEFCCC44(v93, &unk_1EC4BEC00, &unk_1CF9FCB60);
      (*(v106 + 56))(v197, 1, 1, v107);
    }

    else
    {
      sub_1CEFE4E00(v93, v90, type metadata accessor for VFSItem);
      v108 = v197;
      v109 = v193;
      if ((v192 & 1) == 0)
      {
        goto LABEL_11;
      }

      v110 = objc_sync_enter(v193);
      if (v110)
      {
        MEMORY[0x1EEE9AC00](v110);
        v150 = v109;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v149, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v111 = v109[qword_1EDEADAA8];
      v112 = objc_sync_exit(v109);
      if (v112)
      {
        MEMORY[0x1EEE9AC00](v112);
        v150 = v109;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v149, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      if ((v111 & 1) != 0 && (v90[8] != 2 || *v90 >= 2uLL) && v90[*(v199 + 28) + *(v186 + 72)] != 1)
      {
        MEMORY[0x1EEE9AC00](v112);
        v150 = v175;
        v151 = v90;
        sub_1CF928EDC("vfsItemFromURL(_:skipResetingItems:pkgItemsLookupPolicy:options:)", 65, 2, sub_1CF796578, &v149, v108);
        sub_1CEFCCC44(v96, &unk_1EC4BEC00, &unk_1CF9FCB60);
      }

      else
      {
LABEL_11:
        sub_1CEFCCC44(v96, &unk_1EC4BEC00, &unk_1CF9FCB60);
        sub_1CEFE505C(v90, v108, type metadata accessor for VFSItem);
        (*(v106 + 56))(v108, 0, 1, v199);
      }

      sub_1CF007CB8(v90, type metadata accessor for VFSItem);
    }
  }

  else
  {
    __break(1u);

    v97, v113, v114, v115, v116, v117, v118, v119;
    sub_1CF19BF48(&v217);
    sub_1CF007CB8(v182, type metadata accessor for ItemMetadata);
    sub_1CF007CB8(v178, type metadata accessor for ItemMetadata);
    v120 = v153;
    v102[1], v121, v122, v123, v124, v125, v126, v127;
    *v102 = 0;
    v102[1] = 0;
    v128 = v187;
    *(v96 + 32) = v189;
    *(v96 + 40) = v128;
    v129 = (v96 + v93[9]);
    *v129 = v191;
    *(v129 + 2) = 0;
    *(v129 + 2) = 0;
    v129[24] = 0;
    sub_1CEFE505C(v120, v96 + v93[7], type metadata accessor for ItemMetadata);
    v130 = v190;
    sub_1CEFCCC44(&v190[v96], &unk_1EC4BED30, &unk_1CFA00710);
    sub_1CEFE55D0(v179, &v130[v96], &unk_1EC4BE310, qword_1CF9FCBE0);
    v188(&v130[v96], 0, 1, v176);
    LODWORD(v130) = *(v194 + 16);

    *(v96 + v93[13]) = v130;
    v131 = (v96 + v93[14]);
    *v131 = 0;
    v131[4] = 1;
    v132 = (v96 + v93[11]);
    *v132 = 0;
    v132[4] = 1;
    v133 = (v96 + v93[8]);
    v134 = *(v90 + 13);
    *(v133 + 12) = *(v90 + 12);
    *(v133 + 13) = v134;
    *(v133 + 14) = *(v90 + 14);
    *(v133 + 30) = v216;
    v135 = *(v90 + 9);
    *(v133 + 8) = *(v90 + 8);
    *(v133 + 9) = v135;
    v136 = *(v90 + 11);
    *(v133 + 10) = *(v90 + 10);
    *(v133 + 11) = v136;
    v137 = *(v90 + 5);
    *(v133 + 4) = *(v90 + 4);
    *(v133 + 5) = v137;
    v138 = *(v90 + 7);
    *(v133 + 6) = *(v90 + 6);
    *(v133 + 7) = v138;
    v139 = *(v90 + 1);
    *v133 = *v90;
    *(v133 + 1) = v139;
    v140 = *(v90 + 3);
    *(v133 + 2) = *(v90 + 2);
    *(v133 + 3) = v140;
    *(v96 + v93[10]) = 0;
    sub_1CF007CB8(v120, type metadata accessor for ItemMetadata);
    v141 = v197;
    sub_1CEFE4E00(v96, v197, type metadata accessor for VFSItem);
    (*(v198 + 56))(v141, 0, 1, v93);
    v142 = *(v90 + 27);
    v212 = *(v90 + 26);
    v213 = v142;
    v143 = *(v90 + 29);
    v214 = *(v90 + 28);
    v215 = v143;
    v144 = *(v90 + 23);
    v208 = *(v90 + 22);
    v209 = v144;
    v145 = *(v90 + 25);
    v210 = *(v90 + 24);
    v211 = v145;
    v146 = *(v90 + 19);
    v204 = *(v90 + 18);
    v205 = v146;
    v147 = *(v90 + 21);
    v206 = *(v90 + 20);
    v207 = v147;
    v148 = *(v90 + 17);
    v202 = *(v90 + 16);
    v201[0] = 0;
    v201[1] = v193;
    v201[2] = v195;
    v203 = v148;
    sub_1CF07574C(v201);
  }
}

void sub_1CF013B54(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, v9);
  swift_unknownObjectRelease();
}

void sub_1CF013BE8(void *a1, uint64_t a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v102 - v5;
  v7 = type metadata accessor for FSChangeToken(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5B88();
  sub_1CF01426C(v11, v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CF4EC1A4(v6);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDEBB5A0;
    v14 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1CF9FA450;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1CEFD51C4();
    *(v15 + 32) = 0xD000000000000035;
    *(v15 + 40) = 0x80000001CFA500D0;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v13, v14, v15);
    v15, v16, v17, v18, v19, v20, v21, v22;
    v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v24 = sub_1CF9E6888();
    v25 = [v23 initWithDomain:v24 code:-1002 userInfo:0];

    v26 = v25;
    v27 = sub_1CF9E57E8();

    [a1 finishEnumeratingWithError_];
  }

  else
  {
    v107 = a1;
    sub_1CF00F1D4(v6, v10, type metadata accessor for FSChangeToken);
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_1CF9E7948();
    v109, v28, v29, v30, v31, v32, v33, v34;
    v108 = 0xD000000000000017;
    v109 = 0x80000001CFA50110;
    v35 = [v2 description];
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
    v46 = NSFileProviderItemIdentifier.description.getter(*&v2[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID]);
    v48 = v47;
    MEMORY[0x1D3868CC0](v46);
    v48, v49, v50, v51, v52, v53, v54, v55;
    MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
    sub_1CF015C10();
    v57 = v56;
    MEMORY[0x1D3868CC0]();
    v57, v58, v59, v60, v61, v62, v63, v64;
    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v103 = v108;
    v105 = v2;
    v65 = v109;
    v66 = sub_1CEFFCE80();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v67 = qword_1EDEBB5A0;
    v68 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1CF9FA440;
    v108 = v66;
    v70 = sub_1CEFFD0A8();
    v104 = v66;
    v106 = v70;
    v71 = sub_1CF9E7718();
    v73 = v72;
    v74 = MEMORY[0x1E69E6158];
    *(v69 + 56) = MEMORY[0x1E69E6158];
    v75 = sub_1CEFD51C4();
    *(v69 + 32) = v71;
    *(v69 + 40) = v73;
    *(v69 + 96) = v74;
    *(v69 + 104) = v75;
    v76 = v103;
    *(v69 + 64) = v75;
    *(v69 + 72) = v76;
    *(v69 + 80) = v65;

    sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v67, v68, v69);
    v69, v77, v78, v79, v80, v81, v82, v83;
    sub_1CF016130(v105, v107, v10);
    v65, v84, v85, v86, v87, v88, v89, v90;
    v91 = sub_1CF9E7298();
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1CF9FA450;
    v108 = v104;
    v93 = sub_1CF9E7718();
    *(v92 + 56) = MEMORY[0x1E69E6158];
    *(v92 + 64) = v75;
    *(v92 + 32) = v93;
    *(v92 + 40) = v94;
    sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v67, v91, v92);
    v92, v95, v96, v97, v98, v99, v100, v101;
    sub_1CF00F2A4(v10, type metadata accessor for FSChangeToken);
  }
}

uint64_t type metadata accessor for FSChangeToken(uint64_t a1)
{
  result = qword_1EDEA84D8;
  if (!qword_1EDEA84D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF01426C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CF9E53C8();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for FSChangeToken(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  v17 = *(v16 + 36);
  v18 = sub_1CF9E5D98();
  (*(*(v18 - 8) + 56))(&v15[v17], 1, 1, v18);
  if (a2 >> 60 == 15)
  {
    sub_1CF0156A8(&v15[v17]);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  else
  {
    v22 = v17;
    v23 = a3;
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CEFE42D4(a1, a2);
    sub_1CF9E5678();
    sub_1CF0149C0(&qword_1EDEA84E8, type metadata accessor for FSChangeToken, &unk_1CFA0A9D4);
    sub_1CF9E5668();

    sub_1CEFE48D8(a1, a2);
    sub_1CEFE48D8(a1, a2);
    sub_1CF0156A8(&v15[v22]);
    sub_1CF015710(v12, v15);
    v19 = v23;
    sub_1CF015774(v15, v23);
    (*(v10 + 56))(v19, 0, 1, v9);
    return sub_1CF0157D8(v15);
  }
}

uint64_t sub_1CF0149C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF014A20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v76[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E5268();
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1CF9E5A58();
  v66 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v14 = sub_1CF9E5D98();
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1748, &qword_1CFA0AA00);
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1CF0152C8();
  v21 = v74;
  sub_1CF9E8298();
  if (!v21)
  {
    v74 = v16;
    v60 = v10;
    v61 = v13;
    v22 = v71;
    v23 = v70;
    LOBYTE(v76[0]) = 0;
    v24 = sub_1CF9E7D78();
    v25 = v17;
    if (v24)
    {
      if (v24 == 2)
      {
        LOBYTE(v76[0]) = 1;
        sub_1CF0149C0(&qword_1EDEAECB8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        sub_1CF9E7D88();
        LOBYTE(v76[0]) = 2;
        v26 = v23;
        v49 = sub_1CF9E7DE8();
        LOBYTE(v76[0]) = 3;
        v50 = sub_1CF9E7DE8();
        v75 = 4;
        sub_1CF015474();
        sub_1CF9E7D88();
        v51 = LOBYTE(v76[0]);
        LOBYTE(v76[0]) = 5;
        v52 = sub_1CF9E7DE8();
        LODWORD(v71) = v51;
        v72 = v52;
        LOBYTE(v76[0]) = 6;
        sub_1CF01559C(&qword_1EDEAB388, &qword_1EDEAECB8, MEMORY[0x1E69695D0], MEMORY[0x1E69E7C88]);
        v53 = v61;
        sub_1CF9E7D88();
        (*(v26 + 8))(v19, v25);
        v54 = v64;
        v55 = v62;
        (v64)[4](v62, v74, v14);
        v56 = v53;
        v57 = v60;
        sub_1CF015638(v56, v60);
        v58 = type metadata accessor for FSChangeToken(0);
        v59 = v58[9];
        (v54[7])(v55 + v59, 1, 1, v14);
        *(v55 + v58[5]) = v49;
        *(v55 + v58[6]) = v50;
        *(v55 + v58[7]) = v71;
        *(v55 + v58[8]) = v72;
        sub_1CEFFFEB8(v57, v55 + v59);
        return __swift_destroy_boxed_opaque_existential_1(v73);
      }
    }

    else
    {
      v74 = v17;
      v27 = [objc_opt_self() defaultManager];
      v28 = [v27 URLsForDirectory:14 inDomains:1];
      v29 = v22;
      v30 = sub_1CF9E6D48();

      if (!*v30->tree)
      {
        __break(1u);
      }

      v32 = v65;
      v31 = v66;
      (*(v66 + 16))(v65, v30 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v29);
      v30, v33, v34, v35, v36, v37, v38, v39;
      sub_1CF9E5938();
      v40 = sub_1CF9E5928();
      v76[0] = 0;
      v64 = v27;
      v41 = [v27 removeItemAtURL:v40 error:v76];

      if (v41)
      {
        v42 = *(v31 + 8);
        v43 = v76[0];
        v42(v32, v29);
      }

      else
      {
        v44 = v76[0];
        v45 = sub_1CF9E57F8();

        swift_willThrow();
        (*(v31 + 8))(v32, v29);
      }

      v25 = v74;
    }

    sub_1CF9E51B8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF0149C0(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v47 = v67;
    v46 = v68;
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v69 + 8))(v47, v46);
    swift_willThrow();
    (*(v23 + 8))(v19, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

unint64_t sub_1CF0152C8()
{
  result = qword_1EDEA8508;
  if (!qword_1EDEA8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8508);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ErrorDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1CF015474()
{
  result = qword_1EDEA6C58;
  if (!qword_1EDEA6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6C58);
  }

  return result;
}

unint64_t sub_1CF015528()
{
  result = qword_1EDEA6C60;
  if (!qword_1EDEA6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6C60);
  }

  return result;
}

void *sub_1CF01557C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1CF01559C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CF0149C0(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF015638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF0156A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF015710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FSChangeToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF015774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FSChangeToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF0157D8(uint64_t a1)
{
  v2 = type metadata accessor for FSChangeToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF015848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CF9E5D98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CF015988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5D98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CF015B18()
{
  swift_getObjectType();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FF0, qword_1CFA07EE0);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

void sub_1CF015C10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v119 - v3;
  v5 = sub_1CF9E5D98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = 0;
  v125 = 0xE000000000000000;
  v9 = type metadata accessor for FSChangeToken(0);
  v10 = *(v0 + v9[8]);
  if (v10)
  {
    v123[0] = 0x3A66666F20;
    v123[1] = 0xE500000000000000;
    v121 = v10;
    v11 = sub_1CF9E7F98();
    v13 = v12;
    MEMORY[0x1D3868CC0](v11);
    v13, v14, v15, v16, v17, v18, v19, v20;
    v21 = v123[1];
    MEMORY[0x1D3868CC0](v123[0], v123[1]);
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  sub_1CF0160C0(v0 + v9[9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CF0156A8(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    strcpy(v123, " containers:");
    BYTE5(v123[1]) = 0;
    HIWORD(v123[1]) = -5120;
    v29 = sub_1CF9E5D18();
    v31 = v30;
    v121 = v29;
    v122 = v30;
    v119 = 45;
    v120 = 0xE100000000000000;
    sub_1CEFE4E68();
    v32 = sub_1CF9E7638();
    v31, v33, v34, v35, v36, v37, v38, v39;
    if (!*v32->tree)
    {
      goto LABEL_10;
    }

    isa = v32[1].super.isa;
    v41 = *v32[1]._anon_8;

    v32, v42, v43, v44, v45, v46, v47, v48;
    MEMORY[0x1D3868CC0](isa, v41);
    v41, v49, v50, v51, v52, v53, v54, v55;
    v56 = v123[1];
    MEMORY[0x1D3868CC0](v123[0], v123[1]);
    v56, v57, v58, v59, v60, v61, v62, v63;
    (*(v6 + 8))(v8, v5);
  }

  v123[0] = 0;
  v123[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0x65676E6168435346, 0xED00006E656B6F54);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v121 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1758, &qword_1CFA0AA10);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A76656420, 0xE500000000000000);
  v64 = sub_1CF9E5D18();
  v66 = v65;
  v121 = v64;
  v122 = v65;
  v119 = 45;
  v120 = 0xE100000000000000;
  sub_1CEFE4E68();
  v67 = sub_1CF9E7638();
  v66, v68, v69, v70, v71, v72, v73, v74;
  if (*v67->tree)
  {
    v75 = v67[1].super.isa;
    v76 = *v67[1]._anon_8;

    v67, v77, v78, v79, v80, v81, v82, v83;
    MEMORY[0x1D3868CC0](v75, v76);
    v76, v84, v85, v86, v87, v88, v89, v90;
    MEMORY[0x1D3868CC0](0x7361426874617020, 0xEB000000003A6465);
    v121 = *(v1 + v9[5]);
    v91 = sub_1CF9E7F98();
    v93 = v92;
    MEMORY[0x1D3868CC0](v91);
    v93, v94, v95, v96, v97, v98, v99, v100;
    MEMORY[0x1D3868CC0](0x65736142636F640ALL, 0xEA00000000003A64);
    v121 = *(v1 + v9[6]);
    v101 = sub_1CF9E7F98();
    v103 = v102;
    MEMORY[0x1D3868CC0](v101);
    v103, v104, v105, v106, v107, v108, v109, v110;
    v111 = v125;
    MEMORY[0x1D3868CC0](v124, v125);
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v111, v112, v113, v114, v115, v116, v117, v118;
    return;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t sub_1CF0160C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CF016130(uint64_t a1, int *a2, uint64_t a3)
{
  v78 = a3;
  v6 = type metadata accessor for FSChangeToken(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for LocalContainer(0);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1CF9E5A58();
  v83 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v68 - v14;
  v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v17 = a1;
  v18 = sub_1CF9E6888();
  v19 = [v16 initWithSuiteName_];

  if (v19 && (v20 = sub_1CF9E6888(), v21 = [v19 BOOLForKey_], v19, v20, (v21 & 1) != 0) || (v22 = v17 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot, swift_beginAccess(), v23 = sub_1CF016934(a2), swift_endAccess(), (v23 & 1) == 0))
  {
LABEL_14:
    v61 = *(v17 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
    sub_1CF00BE10(v78, v8, type metadata accessor for FSChangeToken);
    v62 = v61;
    v63 = sub_1CF018EB8();
    v64 = v8;
    v66 = v65;
    v67 = sub_1CF9E5B48();
    sub_1CEFE4714(v63, v66);
    sub_1CF00F2A4(v64, type metadata accessor for FSChangeToken);
    sub_1CF019840(a2, v67);

    return;
  }

  v72 = v8;
  v73 = v3;
  v24 = v17;
  v71 = type metadata accessor for LocalContainerSnapshot(0);
  v25 = v71[7];
  v26 = sub_1CF9E5D98();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15, v22 + v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  sub_1CEFFFEB8(v15, v78 + *(v6 + 36));
  v28 = OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator;
  v74 = v24;
  v29 = *(v24 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
  v30 = *&v29[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue];
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF4EC25C;
  *(v32 + 24) = v31;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_20;
  v33 = _Block_copy(aBlock);
  v34 = v29;

  dispatch_sync(v30, v33);
  _Block_release(v33);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    v70 = v28;
    v35 = *(v22 + v71[8]);
    v36 = *v35->tree;
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v71 = a2;
      aBlock[0] = MEMORY[0x1E69E7CC0];

      sub_1CF000F0C(0, v36, 0);
      v37 = aBlock[0];
      v38 = *(v79 + 80);
      v69 = v35;
      v39 = v35 + ((v38 + 32) & ~v38);
      v79 = *(v79 + 72);
      v40 = (v83 + 16);
      v41 = v75;
      v42 = v76;
      do
      {
        v43 = v80;
        sub_1CF00BE10(v39, v80, type metadata accessor for LocalContainer);
        (*v40)(v42, v43 + *(v81 + 28), v41);
        sub_1CF00F2A4(v43, type metadata accessor for LocalContainer);
        aBlock[0] = v37;
        v45 = *(v37 + 16);
        v44 = *(v37 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1CF000F0C((v44 > 1), v45 + 1, 1);
          v37 = aBlock[0];
        }

        *(v37 + 16) = v45 + 1;
        (*(v83 + 32))(v37 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v45, v42, v41);
        v39 += v79;
        --v36;
      }

      while (v36);
      v69, v46, v47, v48, v49, v50, v51, v52;
      a2 = v71;
    }

    v53 = v74;
    v54 = *(v74 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID);
    v55 = v77;
    sub_1CF00BE10(v74 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_domain, v77, type metadata accessor for LocalDomain);
    v56 = objc_allocWithZone(type metadata accessor for LocalFileEnumerator(0));
    v57 = sub_1CF00F410(v54, v37, v55);
    v58 = *(v53 + v70);
    *(v53 + v70) = v57;
    v59 = v57;

    v60 = *&v59[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier];
    if (v60)
    {
      *(*(v60 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06F90;
      swift_unknownObjectWeakAssign();
      sub_1CF01C124();
    }

    v8 = v72;
    v17 = v74;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1CF0168E8()
{

  return swift_deallocObject();
}

uint64_t sub_1CF016934(void *a1)
{
  v318 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8);
  v309 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v311 = &v299 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v319 = &v299 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v345 = &v299 - v6;
  v7 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v344 = (&v299 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v343 = &v299 - v10;
  v342 = sub_1CF9E5A58();
  v324 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342);
  v346 = &v299 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v341 = &v299 - v13;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  MEMORY[0x1EEE9AC00](v323);
  v322 = &v299 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v314 = &v299 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v337 = &v299 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v333 = &v299 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v328 = (&v299 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v299 - v24;
  v338 = type metadata accessor for LocalContainer(0);
  v321 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338);
  v340 = &v299 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v347 = (&v299 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v339 = (&v299 - v30);
  v332 = type metadata accessor for LocalContainerSnapshot(0);
  v307 = *(v332 - 8);
  v31 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v332);
  v308 = &v299 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v299 - v33;
  v35 = sub_1CF9E5D98();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v299 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for LocalContainerMonitor(0);
  v40 = v39;
  if (qword_1EDEA56B8 != -1)
  {
    v39 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v39);
  v41 = v331;
  *(&v299 - 2) = v40;
  *(&v299 - 1) = v41;
  sub_1CF9E7398();
  v348 = 0;
  v42 = v352;
  v43 = *(v332 + 28);
  v44 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
  swift_beginAccess();
  (*(v36 + 16))(v38, &v42[v44], v35);
  LOBYTE(v44) = sub_1CF9E5D48();
  v326 = v36;
  v45 = *(v36 + 8);
  v313 = v36 + 8;
  v312 = v45;
  v45(v38, v35);
  if (v44)
  {

    return 0;
  }

  v47 = v38;
  v301 = v31;
  v306 = v42;
  sub_1CEFFF6AC(v34);
  v350 = 0;
  v351 = 0xE000000000000000;
  sub_1CF9E7948();
  v351, v48, v49, v50, v51, v52, v53, v54;
  v350 = 0xD000000000000020;
  v351 = 0x80000001CFA50400;
  sub_1CF00CC8C(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v55 = sub_1CF9E7F98();
  v57 = v56;
  MEMORY[0x1D3868CC0](v55);
  v57, v58, v59, v60, v61, v62, v63, v64;
  MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
  v65 = v332;
  v66 = *(v332 + 28);
  v330 = v34;
  v304 = v66;
  v329 = v35;
  v67 = sub_1CF9E7F98();
  v69 = v68;
  MEMORY[0x1D3868CC0](v67);
  v69, v70, v71, v72, v73, v74, v75, v76;
  v77 = v350;
  v78 = v351;
  v79 = v65;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v80 = qword_1EDEBB5A0;
  v81 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1CF9FA450;
  *(v82 + 56) = MEMORY[0x1E69E6158];
  *(v82 + 64) = sub_1CEFD51C4();
  *(v82 + 32) = v77;
  *(v82 + 40) = v78;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v80, v81, v82);
  v82, v83, v84, v85, v86, v87, v88, v89;
  v90 = MEMORY[0x1E69E7CC0];
  v350 = MEMORY[0x1E69E7CC0];
  v91 = *(v79 + 32);
  v92 = *(v331 + v91);
  v93 = *v92->tree;
  v305 = v43;
  v303 = v91;
  v302 = v92;
  if (v93)
  {
    v94 = v92 + ((*(v321 + 80) + 32) & ~*(v321 + 80));
    v95 = *MEMORY[0x1E6967258];
    v335 = (v321 + 48);
    v327 = (v326 + 48);
    v299 = (v326 + 32);
    v316 = (v324 + 16);
    v315 = (v324 + 8);
    v334 = MEMORY[0x1E69E7CC0];
    v96 = *(v321 + 72);
    v325 = v25;
    v97 = v339;
    v300 = v47;
    v336 = v95;
    v320 = v96;
    while (1)
    {
      sub_1CEFFD374(v94, v97, type metadata accessor for LocalContainer);
      v105 = *v97;
      v106 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v108 = v107;
      v109 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v117 = v110;
      if (v106 == v109 && v108 == v110)
      {
        v108, v110, v111, v112, v113, v114, v115, v116;
        v117, v98, v99, v100, v101, v102, v103, v104;
      }

      else
      {
        v119 = sub_1CF9E8048();
        v108, v120, v121, v122, v123, v124, v125, v126;
        v117, v127, v128, v129, v130, v131, v132, v133;
        if ((v119 & 1) == 0)
        {
          MEMORY[0x1EEE9AC00](v134);
          *(&v299 - 2) = v97;
          v135 = v348;
          sub_1CF0183F0(sub_1CF0185BC, v136, v25);
          v348 = v135;
          v137 = (*v335)(v25, 1, v338);
          v138 = v337;
          if (v137 == 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4C1110, &qword_1CFA08100);
            v139 = v105;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v97 = v339;
              v144 = v334;
            }

            else
            {
              v144 = sub_1CF1F72E0(0, (*v334->tree + 1), 1, v334, v140, v141, v142, v143);
              v97 = v339;
            }

            v146 = *v144->tree;
            v145 = *v144->tester;
            if (v146 >= v145 >> 1)
            {
              v144 = sub_1CF1F72E0((v145 > 1), (v146 + 1), 1, v144, v140, v141, v142, v143);
            }

            *v144->tree = v146 + 1;
            v334 = v144;
            *(&v144[1].super.isa + v146) = v139;
            goto LABEL_11;
          }

          sub_1CF0008F4(v25, v347, type metadata accessor for LocalContainer);
          v147 = v328;
          sub_1CF01866C(v328);
          isa = v327->super.isa;
          v149 = v329;
          v150 = (v327->super.isa)(v147, 1, v329);
          sub_1CEFCCC44(v147, &unk_1EC4BEDE0, qword_1CF9FA390);
          if (v150 == 1)
          {
            goto LABEL_30;
          }

          v151 = v333;
          sub_1CF01866C(v333);
          sub_1CF01866C(v138);
          v152 = v138;
          v153 = *(v323 + 48);
          v154 = v151;
          v155 = v322;
          sub_1CEFCCBDC(v154, v322, &unk_1EC4BEDE0, qword_1CF9FA390);
          v317 = v153;
          v156 = v155 + v153;
          v157 = v152;
          sub_1CEFCCBDC(v152, v156, &unk_1EC4BEDE0, qword_1CF9FA390);
          if ((isa)(v155, 1, v149) == 1)
          {
            sub_1CEFCCC44(v152, &unk_1EC4BEDE0, qword_1CF9FA390);
            sub_1CEFCCC44(v333, &unk_1EC4BEDE0, qword_1CF9FA390);
            v158 = (isa)(v155 + v317, 1, v149);
            v25 = v325;
            if (v158 == 1)
            {
              sub_1CEFCCC44(v155, &unk_1EC4BEDE0, qword_1CF9FA390);
              goto LABEL_40;
            }

LABEL_29:
            sub_1CEFCCC44(v155, &qword_1EC4C1108, &qword_1CFA18060);
            goto LABEL_30;
          }

          v159 = v314;
          sub_1CEFCCBDC(v155, v314, &unk_1EC4BEDE0, qword_1CF9FA390);
          if ((isa)(v155 + v317, 1, v149) == 1)
          {
            sub_1CEFCCC44(v157, &unk_1EC4BEDE0, qword_1CF9FA390);
            sub_1CEFCCC44(v333, &unk_1EC4BEDE0, qword_1CF9FA390);
            v312(v159, v149);
            goto LABEL_29;
          }

          v184 = v300;
          (*v299)(v300, v155 + v317, v149);
          sub_1CF00CC8C(&qword_1EDEAECC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          LODWORD(v317) = sub_1CF9E6868();
          v185 = v159;
          v186 = v312;
          v312(v184, v149);
          sub_1CEFCCC44(v157, &unk_1EC4BEDE0, qword_1CF9FA390);
          sub_1CEFCCC44(v333, &unk_1EC4BEDE0, qword_1CF9FA390);
          v186(v185, v149);
          sub_1CEFCCC44(v155, &unk_1EC4BEDE0, qword_1CF9FA390);
          v25 = v325;
          if (v317)
          {
LABEL_40:
            sub_1CF0005D0(v347, type metadata accessor for LocalContainer);
          }

          else
          {
LABEL_30:
            v160 = v338;
            v161 = *v316;
            v162 = v347;
            v163 = v341;
            v164 = v342;
            (*v316)(v341, v347 + *(v338 + 28), v342);
            v165 = v162 + *(v160 + 24);
            v166 = v343;
            sub_1CEFFD374(v165, v343, type metadata accessor for LocalDomain);
            v161(v346, v163, v164);
            v167 = v344;
            sub_1CEFFD374(v166, v344, type metadata accessor for LocalDomain);
            v168 = type metadata accessor for VFSItem(0);
            v169 = v345;
            (*(*(v168 - 8) + 56))(v345, 1, 1, v168);
            v170 = objc_allocWithZone(type metadata accessor for LocalItem(0));
            v171 = sub_1CF001704(v346, v167, v169);
            sub_1CF0005D0(v166, type metadata accessor for LocalDomain);
            (*v315)(v163, v164);
            if (v171)
            {
              v172 = v105;
              v173 = v334;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v96 = v320;
              if (isUniquelyReferenced_nonNull_native)
              {
                v25 = v325;
                v179 = v347;
                v180 = v173;
              }

              else
              {
                v180 = sub_1CF1F72E0(0, (*v173->tree + 1), 1, v173, v175, v176, v177, v178);
                v25 = v325;
                v179 = v347;
              }

              v182 = *v180->tree;
              v181 = *v180->tester;
              if (v182 >= v181 >> 1)
              {
                v180 = sub_1CF1F72E0((v181 > 1), (v182 + 1), 1, v180, v175, v176, v177, v178);
              }

              *v180->tree = v182 + 1;
              v334 = v180;
              *(&v180[1].super.isa + v182) = v172;
              v183 = v171;
              MEMORY[0x1D3868FA0]();
              if (*((v350 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v350 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1CF9E6D88();
              }

              sub_1CF9E6DE8();

              sub_1CF0005D0(v179, type metadata accessor for LocalContainer);
              v97 = v339;
              goto LABEL_11;
            }

            sub_1CF0005D0(v347, type metadata accessor for LocalContainer);
            v25 = v325;
          }

          v97 = v339;
          v96 = v320;
        }
      }

LABEL_11:
      sub_1CF0005D0(v97, type metadata accessor for LocalContainer);
      v94 += v96;
      if (!--v93)
      {
        v91 = *(v332 + 32);
        v90 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }
    }
  }

  v334 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v187 = *&v330[v91];
  swift_bridgeObjectRetain_n();
  v188 = sub_1CF018774(v187, v331);
  v187, v189, v190, v191, v192, v193, v194, v195;
  v349 = v90;
  v203 = *v188->tree;
  v204 = v329;
  if (v203)
  {
    v328 = v187;
    v205 = *(v338 + 28);
    v338 = *(v338 + 24);
    v339 = v205;
    v206 = (*(v321 + 80) + 32) & ~*(v321 + 80);
    v327 = v188;
    v207 = v188 + v206;
    v337 = *(v321 + 72);
    v335 = (v324 + 8);
    v336 = (v324 + 16);
    v333 = MEMORY[0x1E69E7CC0];
    v208 = v346;
    do
    {
      v347 = type metadata accessor for LocalContainer;
      v348 = v203;
      v216 = v340;
      sub_1CEFFD374(v207, v340, type metadata accessor for LocalContainer);
      v217 = *v336;
      v219 = v341;
      v218 = v342;
      (*v336)(v341, v339 + v216, v342);
      v220 = v343;
      sub_1CEFFD374(v216 + v338, v343, type metadata accessor for LocalDomain);
      v217(v208, v219, v218);
      v221 = v344;
      sub_1CEFFD374(v220, v344, type metadata accessor for LocalDomain);
      v222 = type metadata accessor for VFSItem(0);
      v223 = v345;
      (*(*(v222 - 8) + 56))(v345, 1, 1, v222);
      v224 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v225 = sub_1CF001704(v208, v221, v223);
      sub_1CF0005D0(v220, type metadata accessor for LocalDomain);
      (*v335)(v219, v218);
      v226 = sub_1CF0005D0(v216, v347);
      if (v225)
      {
        MEMORY[0x1D3868FA0](v226);
        if (*((v349 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v349 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v333 = v349;
      }

      v207 += v337;
      v203 = v348 - 1;
    }

    while (v348 != 1);
    v327, v209, v210, v211, v212, v213, v214, v215;
    v204 = v329;
    v227 = v334;
    v187 = v328;
    v228 = v333;
  }

  else
  {
    v188, v196, v197, v198, v199, v200, v201, v202;
    v228 = MEMORY[0x1E69E7CC0];
    v227 = v334;
  }

  sub_1CF018CFC(v228);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v334 = v227;
  v229 = sub_1CF9E6D28();
  v230 = v318;
  [v318 didDeleteItemsWithIdentifiers_];

  v231 = v350;
  v232 = v331;
  if (v350 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v233 = sub_1CF9E7B78();
    v231, v292, v293, v294, v295, v296, v297, v298;
  }

  else
  {

    sub_1CF9E8068();
    v233 = v231;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  v234 = sub_1CF9E6D28();
  v233, v235, v236, v237, v238, v239, v240, v241;
  [v230 didUpdateItems_];

  v242 = v330;
  (*(v326 + 24))(v232 + v305, &v330[v304], v204);
  v302, v243, v244, v245, v246, v247, v248, v249;
  *(v232 + v303) = v187;
  if (v231 >> 62)
  {
    v257 = sub_1CF9E7818();
  }

  else
  {
    v257 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v258 = v332;
  v259 = v319;
  if (v257 <= 0)
  {
    v260 = *v334->tree;
    v231, v250, v251, v252, v253, v254, v255, v256;
    if (!v260)
    {
      sub_1CF0005D0(v242, type metadata accessor for LocalContainerSnapshot);
      v334, v285, v286, v287, v288, v289, v290, v291;

      return 0;
    }
  }

  else
  {
    v231, v250, v251, v252, v253, v254, v255, v256;
  }

  v261 = v306;
  if (*(v232 + *(v258 + 20)) == 1)
  {
    if (*(v232 + *(v258 + 24)))
    {
      sub_1CEFFD374(v232, v259, type metadata accessor for LocalContainerSnapshot);
      v262 = 0;
    }

    else
    {
      v262 = 1;
    }

    v271 = v307 + 56;
    (*(v307 + 56))(v259, v262, 1, v258);
    v272 = v311;
    sub_1CEFCCBDC(v259, v311, &unk_1EC4C10F8, &qword_1CFA080F8);
    v273 = v308;
    sub_1CEFFD374(v242, v308, type metadata accessor for LocalContainerSnapshot);
    v274 = (*(v309 + 80) + 16) & ~*(v309 + 80);
    v275 = (v310 + *(v271 + 24) + v274) & ~*(v271 + 24);
    v276 = swift_allocObject();
    sub_1CF4F1080(v272, v276 + v274);
    sub_1CF0008F4(v273, v276 + v275, type metadata accessor for LocalContainerSnapshot);
    v277 = v334;
    sub_1CF4EDEA8(v334, sub_1CF4F10F0, v276);

    sub_1CEFCCC44(v259, &unk_1EC4C10F8, &qword_1CFA080F8);
    sub_1CF0005D0(v242, type metadata accessor for LocalContainerSnapshot);
    v270 = v277;
  }

  else
  {
    if (!*(v232 + *(v258 + 24)))
    {
      sub_1CF0005D0(v242, type metadata accessor for LocalContainerSnapshot);
      v334, v278, v279, v280, v281, v282, v283, v284;

      return 1;
    }

    sub_1CF4EC9F0();

    sub_1CF0005D0(v242, type metadata accessor for LocalContainerSnapshot);
    v270 = v334;
  }

  v270, v263, v264, v265, v266, v267, v268, v269;
  return 1;
}

uint64_t sub_1CF01819C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for LocalContainerSnapshot(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    *(v7 + 24), v8, v9, v10, v11, v12, v13, v14;
    *(v7 + 40), v15, v16, v17, v18, v19, v20, v21;
    v22 = *(type metadata accessor for LocalDomain(0) + 32);
    v23 = sub_1CF9E5A58();
    (*(*(v23 - 8) + 8))(v7 + v22, v23);
    v24 = *(v4 + 28);
    v25 = sub_1CF9E5D98();
    (*(*(v25 - 8) + 8))(v7 + v24, v25);
    *(v7 + *(v4 + 32)), v26, v27, v28, v29, v30, v31, v32;
  }

  v33 = v0 + ((v2 + v3 + v6) & ~v6);
  *(v33 + 24), v8, v9, v10, v11, v12, v13, v14;
  *(v33 + 40), v34, v35, v36, v37, v38, v39, v40;
  v41 = *(type metadata accessor for LocalDomain(0) + 32);
  v42 = sub_1CF9E5A58();
  (*(*(v42 - 8) + 8))(v33 + v41, v42);
  v43 = *(v4 + 28);
  v44 = sub_1CF9E5D98();
  (*(*(v44 - 8) + 8))(v33 + v43, v44);
  *(v33 + *(v4 + 32)), v45, v46, v47, v48, v49, v50, v51;

  return swift_deallocObject();
}

uint64_t sub_1CF0183F0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocalContainer(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1CEFFD374(v12, v10, type metadata accessor for LocalContainer);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1CF0005D0(v10, type metadata accessor for LocalContainer);
      }

      if (v14)
      {
        break;
      }

      sub_1CF0005D0(v10, type metadata accessor for LocalContainer);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1CF0008F4(v10, v18, type metadata accessor for LocalContainer);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1CF0185DC(void *a1, uint64_t *a2)
{
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1CF9E8048();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

void sub_1CF01866C(uint64_t a1@<X8>)
{
  type metadata accessor for LocalContainer(0);
  v2 = sub_1CF9E5898();
  v3 = v2;
  if (*v2->tree >= 9uLL && (v2[5].super.isa == 0x746E656D75636F44 ? (v13 = *v2[5]._anon_8 == 0xE900000000000073) : (v13 = 0), v13 || (sub_1CF9E8048() & 1) != 0))
  {
    v14 = *v3[4].tester;

    v3, v15, v16, v17, v18, v19, v20, v21;
    sub_1CF9E5D08();
    v12 = v14;
  }

  else
  {
    v4 = sub_1CF9E5D98();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
    v12 = v3;
  }

  v12, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1CF018774(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v82 = type metadata accessor for LocalContainer(0);
  MEMORY[0x1EEE9AC00](v82);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v74 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v74 - v10;
  v77 = *(a1 + 16);
  if (v77)
  {
    v12 = 0;
    v13 = *(v9 + 72);
    v79 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v76 = a1 + v79;
    v14 = MEMORY[0x1E69E7CC0];
    v75 = v4;
    while (1)
    {
      v80 = v14;
      sub_1CEFFD374(v76 + v13 * v12, v11, type metadata accessor for LocalContainer);
      v15 = *(v78 + *(type metadata accessor for LocalContainerSnapshot(0) + 32));
      v16 = *v15->tree;
      v81 = v15;

      if (v16)
      {
        break;
      }

LABEL_34:
      v81, v17, v18, v19, v20, v21, v22, v23;
      v69 = v75;
      sub_1CF0008F4(v11, v75, type metadata accessor for LocalContainer);
      v14 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF680DD0(0, *(v14 + 16) + 1, 1);
        v14 = v83;
      }

      v72 = *(v14 + 16);
      v71 = *(v14 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_1CF680DD0((v71 > 1), v72 + 1, 1);
        v14 = v83;
      }

      *(v14 + 16) = v72 + 1;
      sub_1CF0008F4(v69, v14 + v79 + v72 * v13, type metadata accessor for LocalContainer);
LABEL_39:
      if (++v12 == v77)
      {
        return v14;
      }
    }

    v24 = v81 + v79;
    while (1)
    {
      sub_1CEFFD374(v24, v7, type metadata accessor for LocalContainer);
      v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;
      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v29;
      if (v25 == v28 && v27 == v29)
      {
        v27, v29, v30, v31, v32, v33, v34, v35;
        v36, v53, v54, v55, v56, v57, v58, v59;
      }

      else
      {
        v38 = sub_1CF9E8048();
        v27, v39, v40, v41, v42, v43, v44, v45;
        v36, v46, v47, v48, v49, v50, v51, v52;
        if ((v38 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v60 = *(v7 + 2);
      v61 = *(v11 + 2);
      if (v60)
      {
        if (!v61 || (*(v7 + 1) != *(v11 + 1) || v60 != v61) && (sub_1CF9E8048() & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v61)
      {
        goto LABEL_32;
      }

      v62 = *(v82 + 24);
      v63 = &v7[v62];
      v64 = &v11[v62];
      if (*&v7[v62] != *&v11[v62] || *(v63 + 2) != *(v64 + 2) || (*(v63 + 2) != *(v64 + 2) || *(v63 + 3) != *(v64 + 3)) && (sub_1CF9E8048() & 1) == 0 || (*(v63 + 4) != *(v64 + 4) || *(v63 + 5) != *(v64 + 5)) && (sub_1CF9E8048() & 1) == 0 || (v65 = type metadata accessor for LocalDomain(0), (sub_1CF9E59A8() & 1) == 0) || v63[*(v65 + 36)] != v64[*(v65 + 36)] || (sub_1CF9E59A8() & 1) == 0)
      {
LABEL_32:
        sub_1CF0005D0(v7, type metadata accessor for LocalContainer);
        goto LABEL_33;
      }

      v66 = *(v82 + 32);
      v67 = v7[v66];
      v68 = v11[v66];
      sub_1CF0005D0(v7, type metadata accessor for LocalContainer);
      if (v67 == v68)
      {
        v81, v17, v18, v19, v20, v21, v22, v23;
        sub_1CF0005D0(v11, type metadata accessor for LocalContainer);
        v14 = v80;
        goto LABEL_39;
      }

LABEL_33:
      v24 += v13;
      if (!--v16)
      {
        goto LABEL_34;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1CF018C04(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1CF9E7818();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = sub_1CF9E7818();
  v7 = __OFADD__(v22, v5);
  v8 = v22 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1CF1F9400(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  v11 = a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v13 = v12;
  v11, v14, v12, v15, v16, v17, v18, v19;
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v20 = *(v10 + 16);
  v7 = __OFADD__(v20, v13);
  v21 = v20 + v13;
  if (!v7)
  {
    *(v10 + 16) = v21;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CF018D14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CF9E7818();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CF9E7818();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CEFCCCEC(&qword_1EC4BE7F0, &qword_1EC4BE7E8, &qword_1CF9FE6B8, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7E8, &qword_1CF9FE6B8);
            v9 = sub_1CF8E376C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LocalItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF018EB8()
{
  v0 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1CF9E56C8();
  swift_allocObject();
  sub_1CF9E56B8();
  type metadata accessor for FSChangeToken(0);
  sub_1CF0149C0(&qword_1EDEA84F0, type metadata accessor for FSChangeToken, &unk_1CFA0A9AC);
  v2 = sub_1CF9E56A8();

  return v2;
}

uint64_t sub_1CF019470(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1750, &qword_1CFA0AA08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF0152C8();
  sub_1CF9E82A8();
  v11[15] = 0;
  sub_1CF9E7EE8();
  if (!v2)
  {
    v11[14] = 1;
    sub_1CF9E5D98();
    sub_1CF0149C0(&qword_1EDEAECC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1CF9E7F08();
    v9 = type metadata accessor for FSChangeToken(0);
    v11[13] = 2;
    sub_1CF9E7F68();
    v11[12] = 3;
    sub_1CF9E7F68();
    v11[11] = *(v3 + *(v9 + 28));
    v11[10] = 4;
    sub_1CF019790();
    sub_1CF9E7F08();
    v11[9] = 5;
    sub_1CF9E7F68();
    v11[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CF01559C(&unk_1EDEAB390, &qword_1EDEAECC8, MEMORY[0x1E69695B0], MEMORY[0x1E69E7C70]);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CF019790()
{
  result = qword_1EDEA6C68[0];
  if (!qword_1EDEA6C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA6C68);
  }

  return result;
}

void sub_1CF019840(void *a1, uint64_t a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v102 - v5;
  v7 = type metadata accessor for FSChangeToken(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5B88();
  sub_1CF01426C(v11, v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4C0FE0, qword_1CFA07EC0);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDEBB5A0;
    v14 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1CF9FA450;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1CEFD51C4();
    *(v15 + 32) = 0xD000000000000035;
    *(v15 + 40) = 0x80000001CFA500D0;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v13, v14, v15);
    v15, v16, v17, v18, v19, v20, v21, v22;
    v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v24 = sub_1CF9E6888();
    v25 = [v23 initWithDomain:v24 code:-1002 userInfo:0];

    v26 = v25;
    v27 = sub_1CF9E57E8();

    [a1 finishEnumeratingWithError_];
  }

  else
  {
    v107 = a1;
    sub_1CF00F23C(v6, v10, type metadata accessor for FSChangeToken);
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_1CF9E7948();
    v109, v28, v29, v30, v31, v32, v33, v34;
    v108 = 0xD000000000000017;
    v109 = 0x80000001CFA50110;
    v35 = [v2 description];
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
    v46 = NSFileProviderItemIdentifier.description.getter(*&v2[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID]);
    v48 = v47;
    MEMORY[0x1D3868CC0](v46);
    v48, v49, v50, v51, v52, v53, v54, v55;
    MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
    sub_1CF015C10();
    v57 = v56;
    MEMORY[0x1D3868CC0]();
    v57, v58, v59, v60, v61, v62, v63, v64;
    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v103 = v108;
    v105 = v2;
    v65 = v109;
    v66 = sub_1CEFFCE80();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v67 = qword_1EDEBB5A0;
    v68 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1CF9FA440;
    v108 = v66;
    v70 = sub_1CEFFD0A8();
    v104 = v66;
    v106 = v70;
    v71 = sub_1CF9E7718();
    v73 = v72;
    v74 = MEMORY[0x1E69E6158];
    *(v69 + 56) = MEMORY[0x1E69E6158];
    v75 = sub_1CEFD51C4();
    *(v69 + 32) = v71;
    *(v69 + 40) = v73;
    *(v69 + 96) = v74;
    *(v69 + 104) = v75;
    v76 = v103;
    *(v69 + 64) = v75;
    *(v69 + 72) = v76;
    *(v69 + 80) = v65;

    sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v67, v68, v69);
    v69, v77, v78, v79, v80, v81, v82, v83;
    sub_1CF019FE8(v105, v107, v10);
    v65, v84, v85, v86, v87, v88, v89, v90;
    v91 = sub_1CF9E7298();
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1CF9FA450;
    v108 = v104;
    v93 = sub_1CF9E7718();
    *(v92 + 56) = MEMORY[0x1E69E6158];
    *(v92 + 64) = v75;
    *(v92 + 32) = v93;
    *(v92 + 40) = v94;
    sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v67, v91, v92);
    v92, v95, v96, v97, v98, v99, v100, v101;
    sub_1CF00F304(v10, type metadata accessor for FSChangeToken);
  }
}

uint64_t sub_1CF019EF0()
{
  swift_getObjectType();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1270, &qword_1CFA08830);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

void sub_1CF019FE8(_BYTE *a1, char *a2, uint64_t a3)
{
  v118 = a3;
  v119 = a2;
  v4 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v117 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FSChangeToken(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v115 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v114 - v9;
  v11 = sub_1CF9E5D98();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader(0);
  v15 = &a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain];
  v16 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8];
  sub_1CF01A820(v16, v10);
  v17 = v11;
  v18 = v12;
  if ((*(v12 + 48))(v10, 1, v17) == 1)
  {
    sub_1CEFCCC44(v10, &unk_1EC4BEDE0, qword_1CF9FA390);
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_1CF9E7948();
    v122, v19, v20, v21, v22, v23, v24, v25;
    v121 = 0xD00000000000001ALL;
    v122 = 0x80000001CFA51050;
    v123 = v16;
    v26 = sub_1CF9E7F98();
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    v36 = v121;
    v37 = v122;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v38 = qword_1EDEBB5A0;
    v39 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1CF9FA450;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1CEFD51C4();
    *(v40 + 32) = v36;
    *(v40 + 40) = v37;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v38, v39, v40);
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v49 = sub_1CF9E6888();
    v50 = [v48 initWithDomain:v49 code:-1005 userInfo:0];

    v51 = v50;
    v52 = sub_1CF9E57E8();

    [v119 finishEnumeratingWithError_];
  }

  else
  {
    (*(v12 + 32))(v14, v10, v17);
    v53 = v118;
    v54 = sub_1CF9E5D48();
    v116 = v17;
    if (v54)
    {
      v55 = a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore];
      v56 = type metadata accessor for LocalChangesObserverContext();
      v57 = objc_allocWithZone(v56);
      swift_unknownObjectWeakInit();
      *&v57[OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer] = v119;
      *&v57[OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_localFileEnumerator] = a1;
      v57[OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_shouldUpdateFileIDInGenstore] = v55;
      v120.receiver = v57;
      v120.super_class = v56;
      swift_unknownObjectRetain();
      v58 = a1;
      v59 = objc_msgSendSuper2(&v120, sel_init);
      v60 = v115;
      sub_1CF00BE78(v53, v115, type metadata accessor for FSChangeToken);
      v61 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID];
      v62 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls];
      v119 = v14;
      v63 = v117;
      sub_1CF00BE78(v15, v117, type metadata accessor for LocalDomain);
      v64 = objc_allocWithZone(type metadata accessor for FSChangesEnumerator(0));
      v118 = v18;
      v65 = v64;
      v66 = v61;

      v67 = v59;
      v68 = sub_1CF01AD30(v60, v66, v62, v67, v63, v65);

      v69 = swift_unknownObjectWeakAssign();
      MEMORY[0x1EEE9AC00](v69);
      *(&v114 - 2) = v58;
      *(&v114 - 1) = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1268, &unk_1CFA08820);
      sub_1CF9E7398();

      sub_1CF01BA64();
      (*(v118 + 8))(v119, v116);
    }

    else
    {
      v121 = 0;
      v122 = 0xE000000000000000;
      sub_1CF9E7948();
      v122, v70, v71, v72, v73, v74, v75, v76;
      v121 = 0xD000000000000015;
      v122 = 0x80000001CFA51070;
      sub_1CF00FE88(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v77 = sub_1CF9E7F98();
      v79 = v78;
      MEMORY[0x1D3868CC0](v77);
      v79, v80, v81, v82, v83, v84, v85, v86;
      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
      v87 = sub_1CF9E7F98();
      v89 = v88;
      MEMORY[0x1D3868CC0](v87);
      v89, v90, v91, v92, v93, v94, v95, v96;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v97 = v121;
      v98 = v122;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v99 = qword_1EDEBB5A0;
      v100 = sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1CF9FA450;
      *(v101 + 56) = MEMORY[0x1E69E6158];
      *(v101 + 64) = sub_1CEFD51C4();
      *(v101 + 32) = v97;
      *(v101 + 40) = v98;
      sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v99, v100, v101);
      v101, v102, v103, v104, v105, v106, v107, v108;
      v109 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v110 = sub_1CF9E6888();
      v111 = [v109 initWithDomain:v110 code:-1002 userInfo:0];

      v112 = v111;
      v113 = sub_1CF9E57E8();

      [v119 finishEnumeratingWithError_];
      (*(v12 + 8))(v14, v116);
    }
  }
}

uint64_t sub_1CF01A820@<X0>(dev_t a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - v5;
  v7 = FSEventsCopyUUIDForDevice(a1);
  if (!v7)
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1CF9E7948();
    v72, v23, v24, v25, v26, v27, v28, v29;
    v71 = 0xD000000000000023;
    v72 = 0x80000001CFA52C30;
    LODWORD(v70) = a1;
    v30 = sub_1CF9E7F98();
    v32 = v31;
    MEMORY[0x1D3868CC0](v30);
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = v71;
    v41 = v72;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v42 = qword_1EDEBB5A0;
    v43 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CF9FA450;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1CEFD51C4();
    *(v44 + 32) = v40;
    *(v44 + 40) = v41;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v42, v43, v44);
    v52 = v44;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = CFUUIDCreateString(0, v7);
  if (!v9)
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA52C60);
    v70 = v8;
    type metadata accessor for CFUUID(0);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](0x76656420726F6620, 0xEC00000020656369);
    LODWORD(v70) = a1;
    v53 = sub_1CF9E7F98();
    v55 = v54;
    MEMORY[0x1D3868CC0](v53);
    v55, v56, v57, v58, v59, v60, v61, v62;
    v63 = v71;
    v64 = v72;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v65 = qword_1EDEBB5A0;
    v66 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1CF9FA450;
    *(v67 + 56) = MEMORY[0x1E69E6158];
    *(v67 + 64) = sub_1CEFD51C4();
    *(v67 + 32) = v63;
    *(v67 + 40) = v64;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v65, v66, v67);

    v52 = v67;
LABEL_11:
    v52, v45, v46, v47, v48, v49, v50, v51;
    v68 = sub_1CF9E5D98();
    return (*(*(v68 - 8) + 56))(a2, 1, 1, v68);
  }

  v10 = v9;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  sub_1CF9E5D08();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = sub_1CF9E5D98();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v6, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v21 + 32))(a2, v6, v20);
    return (*(v21 + 56))(a2, 0, 1, v20);
  }

  return result;
}

uint64_t type metadata accessor for FSEventReader(uint64_t a1)
{
  result = qword_1EDEA8438;
  if (!qword_1EDEA8438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FSChangesEnumerator(uint64_t a1)
{
  result = qword_1EDEA6018;
  if (!qword_1EDEA6018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CF01AD30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v73 = sub_1CF9E7318();
  MEMORY[0x1EEE9AC00](v73);
  v72 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1CF9E7388();
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v70 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges] = 0;
  *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp] = 0;
  *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source] = 0;
  v74 = a3;
  if (*(a3 + 16))
  {
    v19 = &a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken];
    sub_1CF00BE78(a1, &a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken], type metadata accessor for FSChangeToken);
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID] = a2;
    sub_1CF00BE78(a5, &a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain], type metadata accessor for LocalDomain);
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer] = a4;
    v20 = a2;
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_startupFSEventID] = FSEventsGetCurrentEventId();
    v21 = type metadata accessor for FSChangeToken(0);
    v67 = v19[*(v21 + 28)];
    v22 = 20;
    if (v67)
    {
      v22 = 24;
    }

    v23 = *(v21 + v22);
    v77 = a1;
    v66 = *(a1 + v23);
    sub_1CF00BE78(a5, v18, type metadata accessor for LocalDomain);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1CF9E7948();
    v80, v24, v25, v26, v27, v28, v29, v30;
    v79 = 0xD000000000000014;
    v80 = 0x80000001CFA51100;
    v31 = NSFileProviderItemIdentifier.description.getter(v20);
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v41 = v79;
    v42 = v80;
    v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v44 = sub_1CF9E6888();
    v45 = [v43 initWithSuiteName_];

    v76 = a5;
    v69 = v18;
    if (v45 && (v46 = sub_1CF9E6888(), v47 = [v45 BOOLForKey_], v45, v46, v47))
    {
      v48 = 0.1;
    }

    else
    {
      v48 = 0.5;
    }

    type metadata accessor for FSEventReader(0);
    v49 = swift_allocObject();
    v49[2] = 0;
    *(v49 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v62[1] = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1CF9E7948();
    v80, v50, v51, v52, v53, v54, v55, v56;
    v79 = 0xD00000000000001ELL;
    v80 = 0x80000001CFA51120;
    v63 = v42;
    v64 = v41;
    MEMORY[0x1D3868CC0](v41, v42);
    (*(v65 + 104))(v70, *MEMORY[0x1E69E8098], v68);
    sub_1CF9E63F8();
    v79 = MEMORY[0x1E69E7CC0];
    sub_1CF00FE88(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
    sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
    sub_1CF9E77B8();
    v49[3] = sub_1CF9E73B8();
    v49[6] = v74;
    sub_1CF00F23C(v69, v49 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
    v57 = v66;
    v49[4] = v66;
    v49[5] = v57;
    *(v49 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = v67;
    *(v49 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v48;
    *(v49 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 1;
    v58 = (v49 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
    v59 = v63;
    *v58 = v64;
    v58[1] = v59;
    *&a6[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader] = v49;
    v78.receiver = a6;
    v78.super_class = ObjectType;
    v60 = objc_msgSendSuper2(&v78, sel_init);
    sub_1CF00F304(v76, type metadata accessor for LocalDomain);
    sub_1CF00F304(v77, type metadata accessor for FSChangeToken);
    return v60;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF01B414@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  LOBYTE(a2) = sub_1CF01B4A0(a3 + 1, a2);
  result = swift_endAccess();
  *a3 = a2 & 1;
  return result;
}

uint64_t sub_1CF01B4A0(uint64_t *a1, void *a2)
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

    v9 = sub_1CF9E7828();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      type metadata accessor for FSChangesEnumerator(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = sub_1CF9E7818();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_1CF4768B4(v7, result + 1);
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_1CF6EC52C(v27 + 1, &qword_1EC4C06F8, &qword_1CFA05B08);
    }

    v25 = v8;
    sub_1CF485A90();
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  type metadata accessor for FSChangesEnumerator(0);
  v18 = sub_1CF9E7558();
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_1CF01B6C8(v25, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = sub_1CF9E7568();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

void sub_1CF01B6C8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6EC52C(v6 + 1, &qword_1EC4C06F8, &qword_1CFA05B08);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CF6EF948(&qword_1EC4C06F8, &qword_1CFA05B08);
      goto LABEL_12;
    }

    sub_1CF01B858(v6 + 1, &qword_1EC4C06F8, &qword_1CFA05B08);
  }

  v8 = *v3;
  v9 = sub_1CF9E7558();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for FSChangesEnumerator(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1CF9E7568();

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
  sub_1CF9E80F8();
  __break(1u);
}

uint64_t sub_1CF01B858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1CF9E78E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1CF9E7558();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1CF01BA64()
{
  v1 = sub_1CF9E6388();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v53 = (v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v49 = (v39 - v4);
  v50 = sub_1CF9E6498();
  v54 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v39 - v7;
  v8 = sub_1CF9E63A8();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6448();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v41 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E73D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_sync_enter(v0);
  v16 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader;
  *(*&v0[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader] + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06C30;
  swift_unknownObjectWeakAssign();

  sub_1CF01C124();

  v39[1] = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v17 = *&v0[v16];
  v40 = v0;
  v18 = *(v17 + 24);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CF01C474(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v20 = sub_1CF9E73E8();

  (*(v13 + 8))(v15, v12);
  ObjectType = swift_getObjectType();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1CF562728;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_29;
  v23 = _Block_copy(aBlock);

  v24 = v41;
  sub_1CF01C504(ObjectType);
  v25 = v42;
  sub_1CEFD5A30();
  sub_1CF9E7408();
  _Block_release(v23);
  (*(v45 + 8))(v25, v46);
  (*(v43 + 8))(v24, v44);

  v26 = v47;
  sub_1CF9E6478();
  v27 = v49;
  *v49 = 2;
  v29 = v51;
  v28 = v52;
  (*(v51 + 104))(v27, *MEMORY[0x1E69E7F48], v52);
  v30 = v48;
  MEMORY[0x1D3868740](v26, v27);
  v31 = *(v29 + 8);
  v32 = v28;
  v31(v27, v28);
  v33 = *(v54 + 8);
  v54 += 8;
  v34 = v26;
  v35 = v50;
  v33(v34, v50);
  sub_1CEFD5B64(v27);
  v36 = v53;
  sub_1CEFD5BD8(v53);
  MEMORY[0x1D3869770](v30, v27, v36, ObjectType);
  v31(v36, v32);
  v31(v27, v32);
  v33(v30, v35);
  sub_1CF9E7428();
  v37 = v40;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source] = v20;
  swift_unknownObjectRelease();
  return objc_sync_exit(v37);
}

uint64_t sub_1CF01C0EC()
{
  MEMORY[0x1D386CEF0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1CF01C144(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6448();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a1;
  v17 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1CF01C38C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v12, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

unint64_t sub_1CF01C38C()
{
  result = qword_1EDEAEDF0;
  if (!qword_1EDEAEDF0)
  {
    sub_1CF9E63A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDF0);
  }

  return result;
}

uint64_t sub_1CF01C3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF01C42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF01C474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF01C4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CF01C510(uint64_t a1)
{
  v130 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v119 - v6;
  if (*(a1 + 16))
  {
    return;
  }

  v125 = v5;
  v127 = 0x676E697472617473;
  v128 = 0xE900000000000020;
  v8 = sub_1CF01CD68();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  v25 = v128;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
  {
    v26 = v127;
    v27 = MEMORY[0x1E69E6158];
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDEBB5A0;
    v29 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1CF9FA450;
    *(v30 + 56) = v27;
    *(v30 + 64) = sub_1CEFD51C4();
    *(v30 + 32) = v26;
    *(v30 + 40) = v25;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v28, v29, v30);
    v25 = v30;
  }

  v25, v18, v19, v20, v21, v22, v23, v24;
  context.version = 0;
  context.info = a1;
  context.retain = sub_1CF01D120;
  context.release = sub_1CF02B8DC;
  context.copyDescription = 0;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) != 1)
  {
    v41 = *(a1 + 48);
    v42 = *(v41 + 16);
    if (v42)
    {
      v124 = v2;
      v127 = MEMORY[0x1E69E7CC0];
      v120 = a1;

      sub_1CEFE95CC(0, v42, 0);
      v43 = v127;
      v45 = *(v3 + 16);
      v44 = v3 + 16;
      v123 = v45;
      v46 = v41 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
      v122 = *(v44 + 56);
      do
      {
        v47 = v125;
        v48 = v124;
        v123(v125, v46, v124);
        v49 = sub_1CF9E5A18();
        v51 = v50;
        (*(v44 - 8))(v47, v48);
        v127 = v43;
        v53 = *v43->tree;
        v52 = *v43->tester;
        if (v53 >= v52 >> 1)
        {
          sub_1CEFE95CC((v52 > 1), v53 + 1, 1);
          v43 = v127;
        }

        *v43->tree = v53 + 1;
        v54 = v43 + 16 * v53;
        *(v54 + 4) = v49;
        *(v54 + 5) = v51;
        v46 += v122;
        --v42;
      }

      while (v42);
      a1 = v120;
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    v55 = sub_1CF9E6D28();
    v43, v56, v57, v58, v59, v60, v61, v62;
    v65 = FSEventStreamCreate(0, sub_1CF0264E0, &context, v55, *(a1 + 40), *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency), 0x51u);

    if (v65)
    {
      *(a1 + 16) = v65;
LABEL_18:
      FSEventStreamSetDispatchQueue(v65, *(a1 + 24));
      FSEventStreamStart(v65);
      return;
    }

    __break(1u);
LABEL_30:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 51);
  }

  v31 = NSHomeDirectory();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;

  sub_1CF9E58C8();
  v33, v34, v35, v36, v37, v38, v39, v40;
  if ((sub_1CF9E5848() & 1) == 0)
  {
    goto LABEL_30;
  }

  type metadata accessor for stat(0);
  sub_1CF9E59B8();
  v63 = v127;
  v64 = sub_1CF9E6D28();
  v65 = FSEventStreamCreateRelativeToDevice(0, sub_1CF0264E0, &context, v63, v64, *(a1 + 40), *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency), 0x51u);

  v66 = *(v3 + 8);
  v66(v7, v2);
  *(a1 + 16) = v65;
  if (v65)
  {
    goto LABEL_18;
  }

  v127 = 0;
  v128 = 0xE000000000000000;
  sub_1CF9E7948();
  v128, v67, v68, v69, v70, v71, v72, v73;
  v127 = 0xD000000000000020;
  v128 = 0x80000001CFA52A50;
  v74 = *(a1 + 48);
  v75 = *(v74 + 16);
  v76 = MEMORY[0x1E69E7CC0];
  if (v75)
  {
    v123 = v66;
    v124 = v3 + 8;
    v120 = a1;
    v126 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v75, 0);
    v76 = v126;
    v78 = *(v3 + 16);
    v77 = v3 + 16;
    v122 = v78;
    v79 = v74 + ((*(v77 + 64) + 32) & ~*(v77 + 64));
    v121 = *(v77 + 56);
    do
    {
      v80 = v125;
      v81 = v77;
      v122(v125, v79, v2);
      v82 = sub_1CF9E5928();
      v83 = [v82 fp_shortDescription];

      v84 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v86 = v85;

      (v123)(v80, v2);
      v126 = v76;
      v88 = *v76->tree;
      v87 = *v76->tester;
      if (v88 >= v87 >> 1)
      {
        sub_1CEFE95CC((v87 > 1), v88 + 1, 1);
        v76 = v126;
      }

      *v76->tree = v88 + 1;
      v89 = v76 + 16 * v88;
      *(v89 + 4) = v84;
      *(v89 + 5) = v86;
      v79 += v121;
      --v75;
      v77 = v81;
    }

    while (v75);
  }

  v90 = MEMORY[0x1E69E6158];
  v91 = MEMORY[0x1D3868FE0](v76, MEMORY[0x1E69E6158]);
  v93 = v92;
  v76, v92, v94, v95, v96, v97, v98, v99;
  MEMORY[0x1D3868CC0](v91, v93);
  v93, v100, v101, v102, v103, v104, v105, v106;
  v107 = v127;
  v108 = v128;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v109 = qword_1EDEBB5A0;
  v110 = sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1CF9FA450;
  *(v111 + 56) = v90;
  *(v111 + 64) = sub_1CEFD51C4();
  *(v111 + 32) = v107;
  *(v111 + 40) = v108;
  sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v109, v110, v111);

  v111, v112, v113, v114, v115, v116, v117, v118;
}

uint64_t sub_1CF01CD68()
{
  v1 = v0;
  v70 = sub_1CF9E5A58();
  v2 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v4 = sub_1CF9E82E8();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  isa = v0;
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A747261747320, 0xE700000000000000);
  isa = v0[1].super.isa;
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
  isa = *v0[1]._anon_8;
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0x3A65646F6D20, 0xE600000000000000);
  LOBYTE(isa) = *(&v0->super.isa + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A736C727520, 0xE600000000000000);
  v34 = *v0[1].tree;
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v66 = v0;
    isa = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v35, 0);
    v36 = isa;
    v38 = *(v2 + 16);
    v37 = v2 + 16;
    v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v67 = *(v37 + 56);
    v68 = v38;
    v40 = (v37 - 8);
    do
    {
      v41 = v69;
      v42 = v70;
      v68(v69, v39, v70);
      v43 = sub_1CF9E5A18();
      v45 = v44;
      (*v40)(v41, v42);
      isa = v36;
      v47 = *v36->tree;
      v46 = *v36->tester;
      if (v47 >= v46 >> 1)
      {
        sub_1CEFE95CC((v46 > 1), v47 + 1, 1);
        v36 = isa;
      }

      *v36->tree = v47 + 1;
      v48 = v36 + 16 * v47;
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      v39 += v67;
      --v35;
    }

    while (v35);
    v1 = v66;
  }

  v49 = MEMORY[0x1D3868FE0](v36, MEMORY[0x1E69E6158]);
  v51 = v50;
  v36, v50, v52, v53, v54, v55, v56, v57;
  MEMORY[0x1D3868CC0](v49, v51);
  v51, v58, v59, v60, v61, v62, v63, v64;
  MEMORY[0x1D3868CC0](0x3A72656E776F20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(&v1->super.isa + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription), *&v1->_anon_8[OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription]);
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return v72;
}

uint64_t sub_1CF01D120(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

id sub_1CF01D1A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v9[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v9[1] = v5;
  v6 = type metadata accessor for ReconciliationID(0, v9);
  (*(*(v6 - 8) + 16))(&v1[v4], a1, v6);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1CF01D288()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for ReconciliationID(0, v4);
  return sub_1CF01D5C4(v2);
}

uint64_t sub_1CF01D314(void *a1)
{
  v1 = a1;
  v2 = sub_1CF01D288();

  return v2;
}

uint64_t sub_1CF01D348(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v16, v3);
    MEMORY[0x1D386A470](1);
    sub_1CF9E6758();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    MEMORY[0x1D386A470](0);
    sub_1CF9E6758();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1CF01D5C4(void *a1)
{
  sub_1CF9E81D8();
  sub_1CF01D348(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF01D60C()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1D386A470](1);
      return MEMORY[0x1D386A4A0](v1);
    }

    else
    {
      if (v1)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      return MEMORY[0x1D386A470](v3);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    return sub_1CF9E8208();
  }
}

uint64_t sub_1CF01D680(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v6[0] = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v6[1] = v3;
  v4 = type metadata accessor for ReconciliationID(0, v6);
  return (*(*(v4 - 8) + 8))(&a1[v2], v4);
}

uint64_t sub_1CF01D738(void *a1)
{
  v1 = a1[3];
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v13, v1);
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x28726568746F2ELL, 0xE700000000000000);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v15 = v17;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x286E69616D2ELL, 0xE600000000000000);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v15 = v17;
    (*(v7 + 8))(v9, v6);
  }

  return v15;
}

uint64_t _s18FileProviderDaemon9VFSItemIDO11descriptionSSvg_0()
{
  if (!*(v0 + 8))
  {
    v12 = 0x284449636F64;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v12 = 0x284449656C6966;
LABEL_5:
    v1 = sub_1CF9E7F98();
    v3 = v2;
    MEMORY[0x1D3868CC0](v1);
    v3, v4, v5, v6, v7, v8, v9, v10;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v12;
  }

  if (*v0)
  {
    return 0x6873617274;
  }

  else
  {
    return 1953460082;
  }
}

uint64_t sub_1CF01DAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t (*)()), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a4;
  v44 = a3;
  v41 = a2;
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v37 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v40 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = a8;
  v19 = swift_getAssociatedConformanceWitness();
  v45[0] = v15;
  v45[1] = AssociatedTypeWitness;
  v45[2] = AssociatedConformanceWitness;
  v45[3] = v19;
  v20 = type metadata accessor for ReconciliationID(0, v45);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  (*(v24 + 16))(&v37 - v22, v39, v20, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v38;
    v26 = (*(v38 + 32))(v14, v23, AssociatedTypeWitness);
    v27 = MEMORY[0x1EEE9AC00](v26);
    *(&v37 - 6) = a5;
    *(&v37 - 5) = a6;
    v28 = v41;
    v29 = v42;
    *(&v37 - 4) = v40;
    *(&v37 - 3) = v29;
    *(&v37 - 2) = v14;
    *(&v37 - 1) = v28;
    v30 = (v44)(1, sub_1CF06E0F8, v27);
    (*(v25 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v31 = v37;
    v32 = (*(v37 + 32))(v17, v23, v15);
    v33 = MEMORY[0x1EEE9AC00](v32);
    *(&v37 - 6) = a5;
    *(&v37 - 5) = a6;
    v34 = v41;
    v35 = v42;
    *(&v37 - 4) = v40;
    *(&v37 - 3) = v35;
    *(&v37 - 2) = v17;
    *(&v37 - 1) = v34;
    v30 = (v44)(0, sub_1CF01DF6C, v33);
    (*(v31 + 8))(v17, v15);
  }

  return v30;
}

uint64_t sub_1CF01DEB0(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);
  0xE200000000000000, v7, v8, v9, v10, v11, v12, v13;
  v14 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v15 = a2(v14);
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  return a4;
}

uint64_t sub_1CF01DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  return v7(a2, v8, v6);
}

void sub_1CF01E03C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = sub_1CF01E0C4(a3, *(a4 + 8));
  sub_1CF01E3FC(v10, a1, v7, a3, a4, a5);
  v10, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1CF01E0C4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  v5 = sub_1CF9E82E8();
  v7 = v6;
  swift_beginAccess();
  v15 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {
    v7, v8, v9, v10, v11, v12, v13, v14;
    goto LABEL_9;
  }

  v16 = sub_1CEFE4328(v5, v7);
  v18 = v17;
  v7, v17, v19, v20, v21, v22, v23, v24;
  if ((v18 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    (*(a2 + 40))(a1, a2);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v25 = sub_1CF9E6E88();
    v26 = sub_1CF9E82E8();
    v28 = v27;
    v33 = sub_1CF9E6E58();
    *&v32 = v25;
    swift_beginAccess();

    sub_1CF1C8750(&v32, v26, v28);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v15[7] + 32 * v16, v30);
  sub_1CEFE9EB8(v30, &v32);
  swift_endAccess();
  sub_1CEFE9EB8(&v32, v30);
  swift_getAssociatedTypeWitness();
  sub_1CF9E6E58();
  swift_dynamicCast();
  v25 = v31;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v25;
}

void sub_1CF01E3FC(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a3;
  v43 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v41 = v17;
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v51 = &v40 - v20;
  v47 = a2;
  v21 = [a2 columns];
  v52 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = *(AssociatedConformanceWitness + 16);
  v22 = 0;
  v58 = MEMORY[0x1D38688F0](v21, AssociatedTypeWitness, MEMORY[0x1E69E7CA0] + 8);
  v53 = a5;
  v54 = (v12 + 16);
  v46 = a5 + 24;
  v48 = (v12 + 8);
  v49 = (v12 + 32);
  while (1)
  {
    if (v22 == sub_1CF9E6DF8())
    {
      v28 = v58;
      *&v57[0] = v58;
      v29 = *(v53 + 32);
      v30 = type metadata accessor for SQLCodableDictionaryWrapper(0, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
      WitnessTable = swift_getWitnessTable();
      v29(v57, v30, WitnessTable);
      v39 = v28;
LABEL_15:
      v39, v32, v33, v34, v35, v36, v37, v38;
      return;
    }

    v24 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v24)
    {
      v25 = *(v12 + 16);
      v26 = v51;
      v25(v51, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, AssociatedTypeWitness);
    }

    else
    {
      v27 = sub_1CF9E7998();
      v26 = v51;
      if (v41 != 8)
      {
        goto LABEL_18;
      }

      *&v57[0] = v27;
      v25 = *v54;
      (*v54)(v51, v57, AssociatedTypeWitness);
      swift_unknownObjectRelease();
    }

    (*v49)(v16, v26, AssociatedTypeWitness);
    if (__OFADD__(v50, v22))
    {
      break;
    }

    (*(v53 + 24))(&v55, v16, v47, (v50 + v22));
    if (v6)
    {
      (*v48)(v16, AssociatedTypeWitness);
      v39 = v58;
      goto LABEL_15;
    }

    if (v56)
    {
      sub_1CEFE9EB8(&v55, v57);
      v25(v45, v16, AssociatedTypeWitness);
      sub_1CEFD1104(v57, &v55);
      sub_1CF9E6708();
      sub_1CF9E6738();
      __swift_destroy_boxed_opaque_existential_1(v57);
      (*v48)(v16, AssociatedTypeWitness);
    }

    else
    {
      (*v48)(v16, AssociatedTypeWitness);
      sub_1CEFCCC44(&v55, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

    if (++v22 == 0x80000000)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1CF01E8A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a8@<X8>)
{
  v10 = a1;
  v12 = sub_1CF9E79E8();
  *&v15 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v10 >> 4) & 3;
  if (v18 <= 1)
  {
    if (v18)
    {
      v20 = v10 & 0xCF;
      v19 = a8;
    }

    else
    {
      v19 = a8;
      v20 = v10;
    }

    sub_1CF01EE6C(v20, a2, a3, v19);
    return;
  }

  if (v18 == 2)
  {
    if (v10)
    {
      *(a8 + 24) = &type metadata for NSecTimestamp;
      v21 = [a2 longAtIndex_];
    }

    else
    {
      *(a8 + 24) = &type metadata for JobSchedulingPriority;
      v21 = [a2 unsignedLongAtIndex_];
    }

    goto LABEL_23;
  }

  if (v10 > 0x32u)
  {
    if (v10 <= 0x34u)
    {
      if (v10 != 51)
      {
        v22 = [a2 BOOLAtIndex_];
        *(a8 + 24) = MEMORY[0x1E69E6370];
        *a8 = v22;
        return;
      }

      goto LABEL_21;
    }

    if (v10 != 53)
    {
LABEL_21:
      v21 = [a2 longAtIndex_];
      v28 = MEMORY[0x1E69E6530];
      goto LABEL_22;
    }

    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v21 = [a2 longAtIndex_];
      v28 = &type metadata for PolicyContentStatus;
LABEL_22:
      *(a8 + 24) = v28;
LABEL_23:
      *a8 = v21;
      return;
    }

LABEL_37:
    *a8 = 0u;
    *(a8 + 16) = 0u;
    return;
  }

  if (v10 == 48)
  {
    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v29 = v41;
      sub_1CEFEC210(a3, &v42);
      if (v29)
      {
        return;
      }

      v30 = v42;
      if (v42 != 4)
      {
        *(a8 + 24) = &type metadata for FileItemKind;
        *a8 = v30;
        return;
      }
    }

    *a8 = 0u;
    *(a8 + 16) = 0u;
    return;
  }

  if (v10 != 49)
  {
    if ([a2 isNullAtIndex_])
    {
      *(a8 + 24) = &type metadata for SyncPausedStatus;
      *a8 = 0;
      return;
    }

    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v21 = [a2 longAtIndex_];
      v28 = &type metadata for SyncPausedStatus;
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  v37 = v14;
  v38 = v13;
  v40 = [a2 isNullAtIndex_];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  if (v40)
  {
    v42 = v24;
    v43 = v23;
    v44 = AssociatedConformanceWitness;
    v45 = v26;
    type metadata accessor for ReconciliationID(0, &v42);
    v27 = sub_1CF9E65E8();
    *(a8 + 24) = sub_1CF9E6E58();
    *a8 = v27;
  }

  else
  {
    v42 = v24;
    v43 = v23;
    v44 = AssociatedConformanceWitness;
    v45 = v26;
    v31 = type metadata accessor for ReconciliationID(255, &v42);
    v32 = sub_1CF9E6E58();
    *(a8 + 24) = v32;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v33 = v41;
    sub_1CF4C1368(v32, a3);
    if (v33)
    {
      __swift_deallocate_boxed_opaque_existential_0(a8);
      v42 = v33;
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {

        sub_1CF9E7FA8();
        swift_allocObject();
        v35 = sub_1CF9E6D68();
        sub_1CF4C1368(v31, a3);
        *(a8 + 24) = v32;
        *a8 = v35;
        (*(v37 + 8))(v17, v38);
      }
    }
  }
}

void sub_1CF01EE6C(unsigned __int8 a1@<W0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a6@<X8>)
{
  v116 = a3;
  v114 = a6;
  v115 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v109 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v109 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v109 - v12;
  v113 = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v22 = &v109 - v21;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      if (a1 <= 0xC2u)
      {
        if (a1 == 192)
        {
          v70 = v115;
          v71 = v116;
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v72 = [v70 unsignedIntAtIndex_];
            v73 = v114;
            *(v114 + 24) = MEMORY[0x1E69E7668];
            *v73 = v72;
            return;
          }

          goto LABEL_62;
        }

        v52 = v116;
        v53 = v115;
        if (a1 == 193)
        {
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v54 = [v53 longLongAtIndex_];
            v55 = v114;
            *(v114 + 24) = MEMORY[0x1E69E7360];
            *v55 = v54;
            return;
          }

          goto LABEL_62;
        }

        v74 = v19;
        v75 = v18;
        v76 = v113;
        v77 = *(swift_getAssociatedConformanceWitness() + 8);
        v78 = v53;
        v79 = v117;
        Optional<A>.init(rs:at:)(v78, v52, v76, v77, v16);
        if (v79)
        {
          return;
        }

        v80 = *(v76 - 8);
        if ((*(v80 + 48))(v16, 1, v76) != 1)
        {
          v101 = v114;
          *(v114 + 24) = v76;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
          (*(v80 + 32))(boxed_opaque_existential_0, v16, v76);
          return;
        }

        (*(v74 + 8))(v16, v75);
      }

      else if (a1 > 0xC4u)
      {
        if (a1 != 197)
        {
          v86 = v115;
          v87 = v116;
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v88 = [v86 integerAtIndex_];
            if (v88)
            {
              v89 = [objc_opt_self() domainVersionWithVersion_];
              v90 = sub_1CF1E7FC0();
              v91 = v114;
              *(v114 + 24) = v90;
              *v91 = v89;
              return;
            }
          }

          goto LABEL_62;
        }

        v58 = AssociatedTypeWitness;
        v59 = *(swift_getAssociatedConformanceWitness() + 8);
        v60 = v115;
        v61 = v117;
        Optional<A>.init(rs:at:)(v60, v116, v58, v59, v9);
        if (v61)
        {
          return;
        }

        v62 = *(v58 - 8);
        if ((*(v62 + 48))(v9, 1, v58) != 1)
        {
          v103 = v114;
          *(v114 + 24) = v58;
          v104 = __swift_allocate_boxed_opaque_existential_0(v103);
          (*(v62 + 32))(v104, v9, v58);
          return;
        }

        (*(v110 + 8))(v9, v111);
      }

      else
      {
        if (a1 == 195)
        {
          v27 = v115;
          v28 = v116;
          if (([v115 isNullAtIndex_] & 1) == 0)
          {
            v29 = [v27 stringAtIndex_];
            v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v32 = v31;

            v33 = v114;
            *(v114 + 24) = &type metadata for Filename;
            *v33 = v30;
            v33[1] = v32;
            return;
          }

LABEL_62:
          v92 = v114;
          *v114 = 0u;
          *(v92 + 16) = 0u;
          return;
        }

        v81 = *(swift_getAssociatedConformanceWitness() + 8);
        v82 = v115;
        v83 = v117;
        Optional<A>.init(rs:at:)(v82, v116, v10, v81, v13);
        if (v83)
        {
          return;
        }

        v84 = *(v10 - 8);
        if ((*(v84 + 48))(v13, 1, v10) != 1)
        {
          v105 = v114;
          *(v114 + 24) = v10;
          v106 = __swift_allocate_boxed_opaque_existential_0(v105);
          (*(v84 + 32))(v106, v13, v10);
          return;
        }

        (*(v109 + 8))(v13, v11);
      }

LABEL_58:
      v85 = v114;
      *v114 = 0u;
      *(v85 + 16) = 0u;
      return;
    }

    v39 = v116;
    v40 = v115;
    if (a1 > 0x83u)
    {
      if (a1 > 0x85u)
      {
        v50 = v114;
        if (a1 == 134)
        {
          v66 = [v115 BOOLAtIndex_];
          v67 = MEMORY[0x1E69E6370];
          goto LABEL_47;
        }

        if (([v115 isNullAtIndex_] & 1) == 0)
        {
          v100 = [v40 longLongAtIndex_];
          if ((v100 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            *(v50 + 24) = MEMORY[0x1E69E76D8];
            *v50 = v100;
          }

          return;
        }
      }

      else
      {
        v49 = v117;
        v50 = v114;
        if (a1 == 132)
        {
          *(v114 + 24) = &type metadata for ContentStatus;
          v51 = sub_1CEFEBAE8(v39);
          if (v49)
          {
            __swift_deallocate_boxed_opaque_existential_0(v50);
          }

          else
          {
            *v50 = v51;
          }

          return;
        }

        if (([v115 isNullAtIndex_] & 1) == 0)
        {
          v66 = sub_1CF1E0758(v39);
          if (v49)
          {
            return;
          }

          v67 = &type metadata for DiskImportStatus;
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (a1 <= 0x81u)
      {
        if (a1 == 128)
        {
          v41 = v19;
          v42 = v18;
          v43 = v113;
          v44 = *(swift_getAssociatedConformanceWitness() + 8);
          v45 = v40;
          v46 = v117;
          Optional<A>.init(rs:at:)(v45, v39, v43, v44, v22);
          if (v46)
          {
            return;
          }

          v47 = *(v43 - 8);
          if ((*(v47 + 48))(v22, 1, v43) != 1)
          {
            v107 = v114;
            *(v114 + 24) = v43;
            v108 = __swift_allocate_boxed_opaque_existential_0(v107);
            (*(v47 + 32))(v108, v22, v43);
            return;
          }

          (*(v41 + 8))(v22, v42);
          goto LABEL_58;
        }

        v63 = &type metadata for DeletionStatus;
LABEL_64:
        v93 = v114;
        *(v114 + 24) = v63;
        *v93 = [v40 longAtIndex_];
        return;
      }

      if (a1 == 130)
      {
        v63 = &type metadata for Fields;
        goto LABEL_64;
      }

      v94 = [v115 isNullAtIndex_];
      v95 = v117;
      v50 = v114;
      if ((v94 & 1) == 0)
      {
        v66 = sub_1CEFEBAE8(v39);
        if (v95)
        {
          return;
        }

        v67 = &type metadata for MaterializationStatus;
LABEL_47:
        *(v50 + 24) = v67;
        *v50 = v66;
        return;
      }
    }

    *v50 = 0u;
    *(v50 + 16) = 0u;
    return;
  }

  if (a1 >> 6)
  {
    v34 = a1 & 0x3F;
    v35 = v117;
    v37 = v114;
    v36 = v115;
    v38 = v116;
    if (v34)
    {
      if (v34 == 1)
      {
        *(v114 + 24) = &type metadata for JobWaitCondition;
        *v37 = [v36 longAtIndex_];
      }

      else
      {
        v57 = v116;
        if ([v115 isNullAtIndex_])
        {
          *v37 = 0u;
          *(v37 + 16) = 0u;
        }

        else
        {
          v68 = sub_1CF1DFFC4(v57);
          if (!v35)
          {
            v69 = v68;
            *(v37 + 24) = type metadata accessor for Continuation();
            *v37 = v69;
          }
        }
      }
    }

    else
    {
      v56 = [v115 longAtIndex_];
      *(v37 + 24) = MEMORY[0x1E69E6530];
      *v37 = v56;
    }

    return;
  }

  v23 = v115;
  v24 = v116;
  v25 = [v115 isNullAtIndex_];
  v26 = v114;
  if (v25)
  {
LABEL_4:
    *v26 = 0u;
    *(v26 + 16) = 0u;
    return;
  }

  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      v64 = [v23 longLongAtIndex_];
      v65 = MEMORY[0x1E69E7360];
    }

    else
    {
      if ([v23 isNullAtIndex_])
      {
        goto LABEL_4;
      }

      v64 = [v23 unsignedIntegerAtIndex_];
      v65 = MEMORY[0x1E69E6810];
    }

    goto LABEL_78;
  }

  if (!a1)
  {
    v64 = [v23 unsignedLongLongAtIndex_];
    v65 = MEMORY[0x1E69E76D8];
LABEL_78:
    *(v26 + 24) = v65;
    *v26 = v64;
    return;
  }

  if (a1 == 1)
  {
    if ([v23 isNullAtIndex_])
    {
      goto LABEL_4;
    }

    v48 = [v23 unsignedIntAtIndex_];
    *(v26 + 24) = MEMORY[0x1E69E7668];
    *v26 = v48;
  }

  else
  {
    if ([v23 isNullAtIndex_])
    {
      goto LABEL_4;
    }

    v96 = [v23 dataAtIndex_];
    v97 = sub_1CF9E5B88();
    v99 = v98;

    *(v26 + 24) = MEMORY[0x1E6969080];
    *v26 = v97;
    *(v26 + 8) = v99;
  }
}

uint64_t Optional<A>.init(rs:at:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1CF9E75D8();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v17 - v14;
  if ([a1 isNullAtIndex_])
  {

    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  else
  {
    result = (*(a4 + 16))(a1, a2, a3, a4);
    if (!v5)
    {
      (*(*(a3 - 8) + 56))(v15, 0, 1, a3);
      return (*(v12 + 32))(a5, v15, v11);
    }
  }

  return result;
}

void sub_1CF01FC0C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CEFE9AC4([a1 longAtIndex_], &v7);

  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 8) = v6;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFSItemID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1CF01FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1CF9E81D8();
  a4(v8, v6);
  return sub_1CF9E8228();
}

uint64_t sub_1CF01FD9C(uint64_t a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = (a1 >> 4) & 3;
  if (v8 <= 1)
  {
    if (v8)
    {
      if ((a2 & 0x30) == 0x10)
      {
        LOBYTE(a1) = a1 & 0xCF;
        a2 = (a2 & 0xFFFFFFCF);
LABEL_24:

        return sub_1CF020028(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else if ((a2 & 0x30) == 0)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v8 != 2)
  {
    if (a1 <= 0x32u)
    {
      if (a1 == 48)
      {
        if (a2 != 48)
        {
          return 0;
        }
      }

      else if (a1 == 49)
      {
        if (a2 != 49)
        {
          return 0;
        }
      }

      else if (a2 != 50)
      {
        return 0;
      }
    }

    else if (a1 > 0x34u)
    {
      if (a1 == 53)
      {
        if (a2 != 53)
        {
          return 0;
        }
      }

      else if (a2 != 54)
      {
        return 0;
      }
    }

    else if (a1 == 51)
    {
      if (a2 != 51)
      {
        return 0;
      }
    }

    else if (a2 != 52)
    {
      return 0;
    }

    return 1;
  }

  if ((a2 & 0x30) != 0x20)
  {
    return 0;
  }

  v9 = (a1 & 1) == 0;
  if (a1)
  {
    v10 = 0x6D617473656D6974;
  }

  else
  {
    v10 = 0x797469726F697270;
  }

  if (v9)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE900000000000070;
  }

  if (a2)
  {
    v12 = 0x6D617473656D6974;
  }

  else
  {
    v12 = 0x797469726F697270;
  }

  if (a2)
  {
    v13 = 0xE900000000000070;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
    v11, a2, v12, a4, a5, a6, a7, a8;
    v13, v14, v15, v16, v17, v18, v19, v20;
    return 1;
  }

  else
  {
    v22 = sub_1CF9E8048();
    v11, v23, v24, v25, v26, v27, v28, v29;
    v13, v30, v31, v32, v33, v34, v35, v36;
    return v22 & 1;
  }
}

void sub_1CF01FF64(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [a1 dataAtIndex_];
  v6 = sub_1CF9E5B88();
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
}

uint64_t sub_1CF01FFD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF020028(unsigned __int8 a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      if (a1 <= 0xC2u)
      {
        if (a1 == 192)
        {
          if (a2 != 192)
          {
            return 0;
          }
        }

        else if (a1 == 193)
        {
          if (a2 != 193)
          {
            return 0;
          }
        }

        else if (a2 != 194)
        {
          return 0;
        }
      }

      else if (a1 > 0xC4u)
      {
        if (a1 == 197)
        {
          if (a2 != 197)
          {
            return 0;
          }
        }

        else if (a2 != 198)
        {
          return 0;
        }
      }

      else if (a1 == 195)
      {
        if (a2 != 195)
        {
          return 0;
        }
      }

      else if (a2 != 196)
      {
        return 0;
      }
    }

    else if (a1 > 0x83u)
    {
      if (a1 > 0x85u)
      {
        if (a1 == 134)
        {
          if (a2 != 134)
          {
            return 0;
          }
        }

        else if (a2 != 135)
        {
          return 0;
        }
      }

      else if (a1 == 132)
      {
        if (a2 != 132)
        {
          return 0;
        }
      }

      else if (a2 != 133)
      {
        return 0;
      }
    }

    else if (a1 > 0x81u)
    {
      if (a1 == 130)
      {
        if (a2 != 130)
        {
          return 0;
        }
      }

      else if (a2 != 131)
      {
        return 0;
      }
    }

    else if (a1 == 128)
    {
      if (a2 != 128)
      {
        return 0;
      }
    }

    else if (a2 != 129)
    {
      return 0;
    }

    return 1;
  }

  if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      v14 = 0xD000000000000010;
      v15 = a1 & 0x3F;
      if ((a1 & 0x3F) != 0)
      {
        if (v15 == 1)
        {
          v16 = 0xD000000000000010;
        }

        else
        {
          v16 = 0xD000000000000012;
        }

        if (v15 == 1)
        {
          v13 = 0x80000001CFA2C3F0;
        }

        else
        {
          v13 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        v16 = 0x6574617473;
      }

      v17 = 0x80000001CFA2C410;
      if ((a2 & 0x3F) == 1)
      {
        v17 = 0x80000001CFA2C3F0;
      }

      else
      {
        v14 = 0xD000000000000012;
      }

      if ((a2 & 0x3F) != 0)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0x6574617473;
      }

      if ((a2 & 0x3F) != 0)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v16 != v18)
      {
        goto LABEL_102;
      }

      goto LABEL_100;
    }

    return 0;
  }

  if (a2 > 0x3Fu)
  {
    return 0;
  }

  v8 = 0x64695F656C6966;
  v9 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v13 = 0xE800000000000000;
      v12 = 0x6E6F697461636F6CLL;
    }

    else
    {
      if (a1 == 4)
      {
        v12 = 0x6874676E656CLL;
      }

      else
      {
        v12 = 0x7367616C66;
      }

      if (v9 == 4)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }
    }
  }

  else
  {
    v10 = 0x6E756F635F6E6567;
    v11 = 0xE900000000000074;
    if (a1 != 1)
    {
      v10 = 0x6E6F635F74736574;
      v11 = 0xEC000000746E6574;
    }

    if (a1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x64695F656C6966;
    }

    if (v9)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE700000000000000;
    }
  }

  v21 = 0xE700000000000000;
  v22 = 0xE800000000000000;
  v23 = 0x6E6F697461636F6CLL;
  v24 = 0xE600000000000000;
  v25 = 0x6874676E656CLL;
  if (a2 != 4)
  {
    v25 = 0x7367616C66;
    v24 = 0xE500000000000000;
  }

  if (a2 != 3)
  {
    v23 = v25;
    v22 = v24;
  }

  v26 = 0x6E756F635F6E6567;
  v27 = 0xE900000000000074;
  if (a2 != 1)
  {
    v26 = 0x6E6F635F74736574;
    v27 = 0xEC000000746E6574;
  }

  if (a2)
  {
    v8 = v26;
    v21 = v27;
  }

  if (a2 <= 2u)
  {
    v18 = v8;
  }

  else
  {
    v18 = v23;
  }

  if (a2 <= 2u)
  {
    v19 = v21;
  }

  else
  {
    v19 = v22;
  }

  if (v12 != v18)
  {
    goto LABEL_102;
  }

LABEL_100:
  if (v13 == v19)
  {
    v13, a2, v18, a4, a5, a6, a7, a8;
    v19, v28, v29, v30, v31, v32, v33, v34;
    return 1;
  }

LABEL_102:
  v35 = sub_1CF9E8048();
  v13, v36, v37, v38, v39, v40, v41, v42;
  v19, v43, v44, v45, v46, v47, v48, v49;
  return v35 & 1;
}

uint64_t sub_1CF02043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v93 = a1;
  v77 = a8;
  v98 = &_s9SQLFieldsON_1;
  v99 = a4;
  v78 = sub_1CF020F5C();
  v100 = v78;
  v101 = a7;
  v14 = a7;
  v94 = a7;
  v81 = type metadata accessor for SQLCodableAccessorWrapper(0, &v98);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v71 - v15;
  v84 = a6;
  v85 = a3;
  v17 = type metadata accessor for ItemReconciliationHalf(0, a3, a6, v16);
  v82 = *(v17 - 8);
  v83 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v71 - v18;
  v19 = sub_1CF020FE0();
  v98 = &type metadata for ItemReconciliationHalfSQLFields;
  v99 = a4;
  v100 = v19;
  v101 = v14;
  v20 = type metadata accessor for SQLCodableAccessorWrapper(0, &v98);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - v24;
  v26 = a5;
  v28 = type metadata accessor for ItemReconciliationHalf(0, a2, a5, v27);
  v88 = *(v28 - 8);
  v89 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v71 - v32;
  v90 = a4;
  v34 = a4;
  v35 = v19;
  sub_1CF021034(sub_1CEFED334, 0, v34, &type metadata for ItemReconciliationHalfSQLFields, v94, v19, v25);
  v36 = v26;
  WitnessTable = swift_getWitnessTable();
  v92 = v20;
  v38 = v91;
  v39 = sub_1CF021160(a2, v20, v36, WitnessTable, v33);
  if (v38)
  {
    return (*(v21 + 8))(v25, v92, v39);
  }

  v41 = v87;
  v75 = v35;
  v76 = v30;
  v73 = a2;
  v74 = v36;
  v91 = v33;
  v42 = *(v21 + 8);
  v42(v25, v92, v39);
  LOBYTE(v97) = 50;
  sub_1CF0230B4(&v97, &type metadata for SyncPausedStatus, v90, &type metadata for SyncPausedStatus, v94);
  v72 = v42;
  v71 = v21 + 8;
  v43 = v88;
  v44 = v89;
  v45 = v91;
  *&v91[*(v89 + 76)] = v98;
  (*(v43 + 16))(v76, v45, v44);
  sub_1CF021034(sub_1CEFF0598, 0, v90, &type metadata for ItemReconciliationHalfSQLFields, v94, v75, v41);
  v46 = sub_1CF021160(v85, v92, v84, WitnessTable, v86);
  v72(v41, v92, v46);
  LOBYTE(v98) = 48;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE998, &qword_1CF9FEF18);
  v48 = v90;
  v49 = v94;
  sub_1CF0230AC(v90, v47);
  sub_1CF0230B4(&v98, v47, v48, v47, v49);
  v103[0] = v103[1];
  LOBYTE(v96) = 49;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = swift_getAssociatedConformanceWitness();
  v98 = AssociatedTypeWitness;
  v99 = v51;
  v100 = AssociatedConformanceWitness;
  v101 = v53;
  type metadata accessor for ReconciliationID(255, &v98);
  v54 = sub_1CF9E6E58();
  sub_1CF0230B4(&v96, v54, v90, v54, v94);
  v55 = v91;
  v56 = v97;
  v57 = v79;
  sub_1CF021034(sub_1CF023FE0, 0, v90, &_s9SQLFieldsON_1, v94, v78, v79);
  v58 = v81;
  v59 = swift_getWitnessTable();
  v60 = sub_1CF023F08(v57, v58, v59);
  v92 = v61;
  v87 = v60;
  (*(v80 + 8))(v57, v58);
  LOBYTE(v96) = 51;
  v62 = MEMORY[0x1E69E6530];
  v63 = v90;
  v64 = v94;
  sub_1CF0230AC(v90, MEMORY[0x1E69E6530]);
  sub_1CF0230B4(&v96, v62, v63, v62, v64);
  v65 = v98;
  LOBYTE(v95) = 54;
  sub_1CF0230B4(&v95, MEMORY[0x1E69E6530], v90, MEMORY[0x1E69E6530], v94);
  v81 = v96;
  LOBYTE(v95) = 52;
  v66 = MEMORY[0x1E69E6370];
  v67 = v90;
  v68 = v94;
  sub_1CF0230AC(v90, MEMORY[0x1E69E6370]);
  sub_1CF0230B4(&v95, v66, v67, v66, v68);
  LOBYTE(v49) = v102[1];
  v102[0] = 53;
  v69 = v90;
  v70 = v94;
  sub_1CF0230AC(v90, &type metadata for PolicyContentStatus);
  sub_1CF0230B4(v102, &type metadata for PolicyContentStatus, v69, &type metadata for PolicyContentStatus, v70);
  (*(v88 + 8))(v55, v89);
  return sub_1CF023FF0(v76, v86, v103, v56, v87, v92, v65, v81, v77, v49, v95, v73, v85, v74, v84);
}

unint64_t sub_1CF020F5C()
{
  result = qword_1EDEAD438;
  if (!qword_1EDEAD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD438);
  }

  return result;
}

unint64_t sub_1CF020FE0()
{
  result = qword_1EDEABF18;
  if (!qword_1EDEABF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF18);
  }

  return result;
}

uint64_t sub_1CF021034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = a4;
  v21[1] = a3;
  v21[2] = a6;
  v21[3] = a5;
  v19 = (a7 + *(type metadata accessor for SQLCodableAccessorWrapper(0, v21) + 52));
  *v19 = a1;
  v19[1] = a2;
}

double sub_1CF021160@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v151 = a5;
  *&v203 = &_s9SQLFieldsON_0;
  *(&v203 + 1) = a2;
  v152 = sub_1CF022A90();
  *&v204 = v152;
  *(&v204 + 1) = a4;
  v155 = type metadata accessor for SQLCodableAccessorWrapper(0, &v203);
  v153 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v145[-v9];
  v10 = sub_1CF022AE4();
  *&v203 = &_s9SQLFieldsON_2;
  *(&v203 + 1) = a2;
  v195 = a2;
  v160 = v10;
  *&v204 = v10;
  *(&v204 + 1) = a4;
  v11 = type metadata accessor for SQLCodableAccessorWrapper(0, &v203);
  v162 = *(v11 - 8);
  v163 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v161 = &v145[-v12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v176 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v167 = &v145[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v145[-v16];
  v17 = swift_getAssociatedTypeWitness();
  v185 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v172 = &v145[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v145[-v20];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v203 = v17;
  *(&v203 + 1) = AssociatedTypeWitness;
  v164 = v22;
  v165 = AssociatedConformanceWitness;
  *&v204 = AssociatedConformanceWitness;
  *(&v204 + 1) = v22;
  v175 = type metadata accessor for FileItemVersion(255, &v203);
  v180 = sub_1CF9E75D8();
  v177 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v156 = &v145[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v145[-v25];
  v26 = swift_getAssociatedTypeWitness();
  v149 = a1;
  v150 = a3;
  v159 = swift_getAssociatedConformanceWitness();
  v189 = type metadata accessor for ItemStateVersion(0, v26, v159, v27);
  MEMORY[0x1EEE9AC00](v189);
  v158 = &v145[-v28];
  v173 = sub_1CF9E75D8();
  v170 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v168 = &v145[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v182 = &v145[-v31];
  v174 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v169 = &v145[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v190 = &v145[-v35];
  v192 = AssociatedTypeWitness;
  v186 = sub_1CF9E75D8();
  v183 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v37 = &v145[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v179 = &v145[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v157 = &v145[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v184 = &v145[-v43];
  v44 = sub_1CF9E75D8();
  v191 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v188 = &v145[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v145[-v47];
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v145[-v50];
  MEMORY[0x1EEE9AC00](v52);
  v193 = &v145[-v53];
  v187 = v17;
  if (!swift_dynamicCastMetatype())
  {
    LOBYTE(v203) = -60;
    v58 = v194;
    sub_1CF0230B4(&v203, v44, v195, v44, a4);
    if (v58)
    {
      return result;
    }

    v148 = v37;
    v181 = a4;
    v194 = 0;
    v57 = v191;
    (*(v191 + 32))(v193, v48, v44);
LABEL_7:
    v59 = swift_dynamicCastMetatype();
    v60 = v188;
    v61 = v190;
    if (v59)
    {
      v62 = v44;
      LOBYTE(v203) = -62;
      v64 = v181;
      v63 = v182;
      v65 = v194;
      (*(v181 + 32))(v26, &v203, v26, v195, v181);
      v194 = v65;
      if (v65)
      {
        (*(v57 + 8))(v193, v62);
        return result;
      }

      v181 = v64;
      v82 = v174;
      if ((*(v174 + 48))(v63, 1, v26) == 1)
      {
        (*(v170 + 8))(v63, v173);
        v83 = v176;
        (*(v176 + 56))(v184, 1, 1, v192);
        v44 = v62;
      }

      else
      {
        v179 = v62;
        (*(v82 + 32))(v61, v63, v26);
        v84 = v169;
        (*(v82 + 16))(v169, v61, v26);
        LOBYTE(v198) = -61;
        v85 = v195;
        v86 = v181;
        sub_1CF0230AC(v195, &type metadata for Filename);
        v87 = v194;
        sub_1CF0230B4(&v198, &type metadata for Filename, v85, &type metadata for Filename, v86);
        v194 = v87;
        if (v87)
        {
          v88 = *(v82 + 8);
          v88(v84, v26);
          v88(v190, v26);
          (*(v57 + 8))(v193, v179);
          return result;
        }

        (*(v82 + 8))(v190, v26);
        v198 = v203;
        ItemStateVersion.init(parentID:filename:)(v84, &v198, v26, v159, v158);
        v89 = v157;
        v90 = v192;
        v91 = swift_dynamicCast();
        v83 = v176;
        (*(v176 + 56))(v89, v91 ^ 1u, 1, v90);
        (*(v183 + 32))(v184, v89, v186);
        v44 = v179;
        v60 = v188;
      }
    }

    else
    {
      LOBYTE(v203) = -59;
      v78 = v179;
      v79 = v186;
      v80 = v194;
      v81 = v181;
      sub_1CF0230B4(&v203, v186, v195, v186, v181);
      v194 = v80;
      if (v80)
      {
        goto LABEL_14;
      }

      v181 = v81;
      (*(v183 + 32))(v184, v78, v79);
      v83 = v176;
    }

    (*(v57 + 16))(v60, v193, v44);
    v92 = v185;
    v93 = v60;
    v94 = v60;
    v95 = v57;
    v96 = v187;
    if ((*(v185 + 48))(v93, 1, v187) == 1)
    {
      (*(v95 + 8))(v94, v44);
      v97 = 1;
      v98 = v180;
      v99 = v178;
      v57 = v95;
    }

    else
    {
      v179 = v44;
      v100 = v96;
      v101 = v171;
      v190 = *(v92 + 32);
      (v190)(v171, v94, v100);
      v102 = v183;
      v103 = v148;
      v104 = v186;
      (*(v183 + 16))(v148, v184, v186);
      if ((*(v83 + 48))(v103, 1, v192) == 1)
      {
        (*(v92 + 8))(v101, v187);
        (*(v102 + 8))(v103, v104);
        v97 = 1;
        v44 = v179;
        v98 = v180;
        v99 = v178;
      }

      else
      {
        v105 = *(v83 + 32);
        v106 = v166;
        v107 = v103;
        v108 = v101;
        v109 = v192;
        v105(v166, v107, v192);
        v110 = v108;
        v111 = v187;
        (v190)(v172, v110, v187);
        v112 = v167;
        v105(v167, v106, v109);
        v99 = v178;
        sub_1CF023878(v172, 0, v112, 0, 0, 0, v111, v109, v178, v165, v164);
        v97 = 0;
        v44 = v179;
        v98 = v180;
      }

      v57 = v191;
    }

    (*(*(v175 - 8) + 56))(v99, v97, 1);
    v210 = 0;
    v113 = v194;
    (*(v181 + 32))(&v207, MEMORY[0x1E69E76D8], &v210, MEMORY[0x1E69E76D8], v195);
    v114 = v177;
    if (v113)
    {
      (*(v177 + 8))(v99, v98);
      (*(v183 + 8))(v184, v186);
      (*(v57 + 8))(v193, v44);
      return result;
    }

    v194 = 0;
    v115 = v183;
    if (v208)
    {
      v203 = 0uLL;
      *&v204 = 0;
      *(&v204 + 1) = 0xB000000000000000;
      v205 = 0u;
      v206 = 0u;
      goto LABEL_34;
    }

    v116 = v161;
    sub_1CF021034(sub_1CEFED334, 0, v195, &_s9SQLFieldsON_2, v181, v160, v161);
    v117 = v163;
    WitnessTable = swift_getWitnessTable();
    v119 = v194;
    sub_1CF3570D4(v117, WitnessTable, &v198);
    v194 = v119;
    if (!v119)
    {
      (*(v162 + 8))(v116, v117);
      v203 = v198;
      v204 = v199;
      v205 = v200;
      v206 = v201;
      v115 = v183;
LABEL_34:
      LOBYTE(v198) = 0x80;
      v120 = v195;
      v121 = v173;
      v122 = v181;
      sub_1CF0230AC(v195, v173);
      v123 = v194;
      sub_1CF0230B4(&v198, v121, v120, v121, v122);
      if (v123)
      {
        sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);
        (*(v114 + 8))(v99, v180);
        (*(v115 + 8))(v184, v186);
        (*(v191 + 8))(v193, v44);
      }

      else
      {
        LOBYTE(v198) = -127;
        v124 = v195;
        sub_1CF0230AC(v195, &type metadata for DeletionStatus);
        sub_1CF0230B4(&v198, &type metadata for DeletionStatus, v124, &type metadata for DeletionStatus, v122);
        v179 = v44;
        v125 = v202[2];
        LOBYTE(v198) = -126;
        v126 = v195;
        sub_1CF0230AC(v195, &type metadata for Fields);
        sub_1CF0230B4(&v198, &type metadata for Fields, v126, &type metadata for Fields, v122);
        v127 = v122;
        v202[0] = v202[1];
        LOBYTE(v198) = -125;
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B0, &unk_1CFA03A00);
        v129 = v195;
        sub_1CF0230AC(v195, v128);
        sub_1CF0230B4(&v198, v128, v129, v128, v122);
        v194 = v125;
        LODWORD(v192) = v209[4];
        (*(v114 + 16))(v156, v178, v180);
        LOBYTE(v198) = -124;
        v130 = v195;
        sub_1CF0230AC(v195, &type metadata for ContentStatus);
        sub_1CF0230B4(&v198, &type metadata for ContentStatus, v130, &type metadata for ContentStatus, v122);
        LOBYTE(v128) = v209[3];
        LOBYTE(v198) = -123;
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
        v132 = v195;
        sub_1CF0230AC(v195, v131);
        sub_1CF0230B4(&v198, v131, v132, v131, v127);
        LOBYTE(v125) = v209[2];
        LOBYTE(v198) = -122;
        v133 = MEMORY[0x1E69E6370];
        v134 = v195;
        sub_1CF0230AC(v195, MEMORY[0x1E69E6370]);
        sub_1CF0230B4(&v198, v133, v134, v133, v127);
        LOBYTE(v127) = v209[1];
        v135 = v154;
        sub_1CF021034(sub_1CEFEF01C, 0, v195, &_s9SQLFieldsON_0, v181, v152, v154);
        v136 = v155;
        v137 = swift_getWitnessTable();
        v138 = sub_1CF023980(v135, v136, v137);
        v189 = v139;
        v190 = v138;
        LODWORD(v188) = v140;
        (*(v153 + 8))(v154, v155);
        v198 = v203;
        v199 = v204;
        v200 = v205;
        v201 = v206;
        v209[0] = -58;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v142 = v195;
        v143 = v181;
        sub_1CF0230AC(v195, v141);
        sub_1CF023C28(&v203, v196);
        sub_1CF0230B4(v209, v141, v142, v141, v143);
        sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);
        v144 = v197;
        (*(v177 + 8))(v178, v180);
        (*(v183 + 8))(v184, v186);
        (*(v191 + 8))(v193, v179);
        return sub_1CF023C98(v168, v194, v202, v192, v156, v128, v125, v127, v151, v190, v189, v188, &v198, v144, 0, v149, v150);
      }

      return result;
    }

    (*(v162 + 8))(v116, v117);
    (*(v114 + 8))(v99, v98);
    (*(v183 + 8))(v184, v186);
LABEL_14:
    (*(v57 + 8))(v193, v44);
    return result;
  }

  v54 = v44;
  LOBYTE(v198) = -121;
  v55 = v194;
  (*(a4 + 32))(&v203, MEMORY[0x1E69E76D8], &v198, MEMORY[0x1E69E76D8], v195, a4);
  if (v55)
  {
    return result;
  }

  v181 = a4;
  v194 = 0;
  if (BYTE8(v203))
  {
    v148 = v37;
    (*(v185 + 56))(v193, 1, 1, v187);
    v57 = v191;
    goto LABEL_7;
  }

  v147 = v203;
  LOBYTE(v203) = -64;
  v66 = MEMORY[0x1E69E7668];
  v67 = v195;
  v68 = v181;
  sub_1CF0230AC(v195, MEMORY[0x1E69E7668]);
  v69 = v194;
  sub_1CF0230B4(&v203, v66, v67, v66, v68);
  if (!v69)
  {
    v70 = v147;
    v146 = v198;
    v196[0] = -63;
    v194 = 0;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
    sub_1CF0230AC(v67, v71);
    v72 = v194;
    sub_1CF0230B4(v196, v71, v67, v71, v181);
    if (!v72)
    {
      v148 = v37;
      v194 = 0;
      v73 = v203;
      v74 = BYTE8(v203);
      *&v203 = v70;
      DWORD2(v203) = v146;
      *&v204 = v73;
      BYTE8(v204) = v74;
      v75 = v187;
      v76 = swift_dynamicCast();
      (*(v185 + 56))(v51, v76 ^ 1u, 1, v75);
      v77 = v51;
      v57 = v191;
      v44 = v54;
      (*(v191 + 32))(v193, v77, v54);
      goto LABEL_7;
    }
  }

  return result;
}

unint64_t sub_1CF022A90()
{
  result = qword_1EDEAD418;
  if (!qword_1EDEAD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD418);
  }

  return result;
}

unint64_t sub_1CF022AE4()
{
  result = qword_1EDEADD08;
  if (!qword_1EDEADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD08);
  }

  return result;
}

uint64_t sub_1CF022B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16 = a1;
  v17 = a4;
  v8 = *(a3 + 40);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  (*(v5 + *(a3 + 52)))(a2, v12);
  (*(v8 + 32))(v16, v14, v17, v9, v8);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1CF022D10@<X0>(uint64_t a1@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - v12;
  v40[0] = a5;
  v40[1] = a1;
  sub_1CF9E6728();
  if (v43)
  {
    sub_1CEFE9EB8(&v42, v44);
    sub_1CEFD1104(v44, &v42);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
      v14 = *(a4 - 8);
      v15 = *(v14 + 56);
      v15(v13, 0, 1, a4);
      (*(v14 + 32))(a6, v13, a4);
      return (v15)(a6, 0, 1, a4);
    }

    else
    {
      (*(*(a4 - 8) + 56))(v13, 1, 1, a4);
      (*(v11 + 8))(v13, v10);
      sub_1CF24CD3C();
      swift_allocError();
      v18 = v17;
      sub_1CEFD1104(v44, v17);
      *&v42 = 0;
      *(&v42 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      v41 = v42;
      MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA362A0);
      v19 = sub_1CF9E82E8();
      v21 = v20;
      MEMORY[0x1D3868CC0](v19);
      v21, v22, v23, v24, v25, v26, v27, v28;
      MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
      sub_1CEFD1104(v44, &v42);
      v29 = sub_1CF9E6948();
      v31 = v30;
      MEMORY[0x1D3868CC0](v29);
      v31, v32, v33, v34, v35, v36, v37, v38;
      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      sub_1CF9E7FE8();
      v39 = *(&v41 + 1);
      *(v18 + 32) = v41;
      *(v18 + 40) = v39;
      *(v18 + 48) = 4;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  else
  {
    sub_1CEFCCC44(&v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }
}

uint64_t sub_1CF0230F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16 = a1;
  v17 = a4;
  v8 = *(a3 + 40);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  (*(v5 + *(a3 + 52)))(a2, v12);
  (*(v8 + 24))(v16, v14, v17, v9, v8);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1CF023298@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = sub_1CF9E75D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v40 - v13;
  v40[2] = a5;
  v40[3] = a1;
  v45[5] = a3;
  sub_1CF9E6728();
  sub_1CEFF95C8(v45, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v15 = *(a4 - 8);
    (*(v15 + 56))(v14, 0, 1, a4);
    return (*(v15 + 32))(a6, v14, a4);
  }

  else
  {
    (*(*(a4 - 8) + 56))(v14, 1, 1, a4);
    (*(v12 + 8))(v14, v11);
    sub_1CF24CD3C();
    swift_allocError();
    v18 = v17;
    sub_1CEFF95C8(v45, v17);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1CF9E7948();
    v41 = v43;
    v42 = v44;
    MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA362A0);
    v19 = sub_1CF9E82E8();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFF95C8(v45, &v43);
    v29 = sub_1CF9E6948();
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    sub_1CF9E7FE8();
    v39 = v42;
    *(v18 + 32) = v41;
    *(v18 + 40) = v39;
    *(v18 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF0235E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t ItemStateVersion.init(parentID:filename:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for ItemStateVersion(0, a3, a4, v10);
  v12 = (a5 + *(result + 36));
  *v12 = v8;
  v12[1] = v9;
  return result;
}

_DWORD *sub_1CF0236A0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1CF023858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF023878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  v19 = type metadata accessor for FileItemVersion(0, v22);
  *(a9 + v19[13]) = a2;
  result = (*(*(a8 - 8) + 32))(a9 + v19[14], a3, a8);
  *(a9 + v19[15]) = a4;
  v21 = (a9 + v19[16]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

uint64_t sub_1CF023980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v14) = 0;
  sub_1CF0230B4(&v14, MEMORY[0x1E69E6530], a2, MEMORY[0x1E69E6530], a3);
  if (!v3)
  {
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:
          sub_1CF1DA62C();
          return swift_allocError();
        case 4:
          return 1;
        case 5:
          return 0;
      }
    }

    else
    {
      switch(v15)
      {
        case 0:
          LOBYTE(v13) = 1;
          sub_1CF0230AC(a2, &type metadata for JobWaitCondition);
          sub_1CF0230B4(&v13, &type metadata for JobWaitCondition, a2, &type metadata for JobWaitCondition, a3);
          v4 = v14;
          v12 = 2;
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
          sub_1CF0230AC(a2, v9);
          sub_1CF0230B4(&v12, v9, a2, v9, a3);
          return v4;
        case 1:
          LOBYTE(v13) = 2;
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
          sub_1CF0230AC(a2, v11);
          sub_1CF0230B4(&v13, v11, a2, v11, a3);
          return v14;
        case 2:
          LOBYTE(v13) = 2;
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
          sub_1CF0230AC(a2, v8);
          sub_1CF0230B4(&v13, v8, a2, v8, a3);
          return v14;
      }
    }

    sub_1CF1DA5D8();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1CF023C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF260, &unk_1CFA01B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1CF023C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = *a3;
  v23 = a13[1];
  v39 = *a13;
  v40 = v23;
  v24 = a13[3];
  v41 = a13[2];
  v42 = v24;
  swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E75D8();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v27 = type metadata accessor for ItemReconciliationHalf(0, a16, a17, v26);
  *(a9 + v27[9]) = a2;
  *(a9 + v27[10]) = v22;
  *(a9 + v27[11]) = a4;
  v28 = v27[12];
  v38[0] = swift_getAssociatedTypeWitness();
  v38[1] = swift_getAssociatedTypeWitness();
  v38[2] = swift_getAssociatedConformanceWitness();
  v38[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v38);
  v29 = sub_1CF9E75D8();
  (*(*(v29 - 8) + 32))(a9 + v28, a5, v29);
  *(a9 + v27[13]) = a6;
  *(a9 + v27[14]) = a7;
  *(a9 + v27[15]) = a8;
  v30 = a9 + v27[16];
  *v30 = a10;
  *(v30 + 8) = a11;
  *(v30 + 16) = a12;
  v31 = (a9 + v27[17]);
  v32 = v40;
  *v31 = v39;
  v31[1] = v32;
  result = *&v41;
  v34 = v42;
  v31[2] = v41;
  v31[3] = v34;
  *(a9 + v27[18]) = a14;
  *(a9 + v27[19]) = a15;
  return result;
}

uint64_t sub_1CF023F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v9[0]) = 0;
  sub_1CF0230AC(a2, &type metadata for JobSchedulingPriority);
  sub_1CF0230B4(v9, &type metadata for JobSchedulingPriority, a2, &type metadata for JobSchedulingPriority, a3);
  if (!v3)
  {
    v4 = v9[1];
    v8 = 1;
    sub_1CF0230AC(a2, &type metadata for NSecTimestamp);
    sub_1CF0230B4(&v8, &type metadata for NSecTimestamp, a2, &type metadata for NSecTimestamp, a3);
  }

  return v4;
}

uint64_t sub_1CF023FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = *a3;
  v21 = type metadata accessor for ItemReconciliationHalf(0, a12, a14, a4);
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v31[0] = a12;
  v31[1] = a13;
  v31[2] = a14;
  v31[3] = a15;
  v22 = type metadata accessor for ItemReconciliation(0, v31);
  v23 = v22[13];
  v25 = type metadata accessor for ItemReconciliationHalf(0, a13, a15, v24);
  result = (*(*(v25 - 8) + 32))(a9 + v23, a2, v25);
  *(a9 + v22[14]) = v20;
  *(a9 + v22[15]) = a4;
  v27 = (a9 + v22[16]);
  *v27 = a5;
  v27[1] = a6;
  *(a9 + v22[17]) = a7;
  *(a9 + v22[18]) = a8;
  *(a9 + v22[19]) = a10;
  *(a9 + v22[20]) = a11;
  return result;
}

uint64_t sub_1CF024178(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1CF0241C8(a1, a2);
  return v4;
}

uint64_t sub_1CF0241C8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 96);
  v9[0] = *(*v2 + 80);
  v9[1] = v6;
  v7 = type metadata accessor for ItemReconciliation(0, v9);
  (*(*(v7 - 8) + 32))(v2 + v5, a1, v7);
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

void sub_1CF0242A8(uint64_t a1)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  sub_1CF9E69C8();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1CF0242FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1CF9E7728();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1CF024374(v8);

  sub_1CF0248E0(v8);
  return v6 & 1;
}

uint64_t sub_1CF024374(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  sub_1CEFF95C8(a1, v8);
  if (!v9)
  {
    sub_1CF0248E0(v8);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v5 = sub_1CF024490(v1 + *((*v3 & *v1) + 0x70), v7 + *((*v7 & *v3) + 0x70), *(v4 + 80), *(v4 + 88));

  return v5 & 1;
}

uint64_t sub_1CF024490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = a2;
  v42 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = v9;
  v46[1] = v10;
  v43 = v10;
  v38 = v11;
  v39 = v12;
  v46[2] = v11;
  v46[3] = v12;
  v13 = type metadata accessor for ReconciliationID(0, v46);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v23 = &v36 - v22;
  v25 = *(v24 + 48);
  v26 = *(v14 + 16);
  v26(&v36 - v22, v44, v13, v21);
  (v26)(&v23[v25], v45, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v26)(v19, v23, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = v41;
      v33 = v36;
      (*(v41 + 32))(v36, &v23[v25], a3);
      v30 = sub_1CF9E6868();
      v34 = *(v32 + 8);
      v34(v33, a3);
      v34(v19, a3);
      goto LABEL_9;
    }

    (*(v41 + 8))(v19, a3);
    goto LABEL_7;
  }

  (v26)(v16, v23, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v42 + 8))(v16, v43);
LABEL_7:
    v30 = 0;
    v14 = v40;
    v13 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v28 = v42;
  v27 = v43;
  v29 = v37;
  (*(v42 + 32))(v37, &v23[v25], v43);
  v30 = sub_1CF9E6868();
  v31 = *(v28 + 8);
  v31(v29, v27);
  v31(v16, v27);
LABEL_9:
  (*(v14 + 8))(v23, v13);
  return v30 & 1;
}

uint64_t sub_1CF0248E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CF02494C(void *a1, char a2, uint64_t (*a3)(void **), uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), void (*a7)(void *, void, uint64_t, uint64_t (*)(void), uint64_t), uint64_t (*a8)(void *, uint64_t))
{
  v22 = a1;
  v23 = a2 & 1;
  if ((a2 & 1) == 0)
  {
    return a3(&v22);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;

    a6(a1, 1);
    a7(a1, 0, v15, a3, a4);

    v16 = a1;
    v17 = 1;
  }

  else
  {
    v19 = a1;
    result = FPDomainUnavailableError();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = 1;
    a3(&v20);
    a8(a1, 1);
    v16 = v20;
    v17 = v21;
  }

  return a8(v16, v17);
}

void sub_1CF024B04(void *a1, char a2, uint64_t (*a3)(void *, void *))
{
  if (a2)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    v6 = a1;
    a3(0, a1);
    sub_1CF2F6594(a1);
    sub_1CF2F6594(a1);
  }

  else
  {
    a3(a1, 0);
  }
}

uint64_t sub_1CF024BB4(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v60 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v60);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  v16 = (v14 + 32);
  while (v15)
  {
    v17 = *v16++;
    --v15;
    if (v17 == a1)
    {
      goto LABEL_4;
    }
  }

  v58 = *MEMORY[0x1E696AA08];
  v57 = (v11 + 8);
  v56 = xmmword_1CF9FA450;
  if (*(a2 + 48))
  {
    goto LABEL_8;
  }

LABEL_7:
  if (a1 == *(a2 + 40))
  {
LABEL_4:
    v18 = 0;
    return v18 & 1;
  }

LABEL_8:
  while (1)
  {
    0, v4, v5, v6, v7, v8, v9, v10;
    v20 = a2;
    v66 = a1;
    v67 = 0u;
    v68 = 0u;
    v61 = -1;
    v21 = fpfs_openfdbyhandle();
    if (v21 < 0)
    {
      break;
    }

    v29 = v21;
    0, v22, v23, v24, v25, v26, v27, v28;
    LOBYTE(v61) = 0;
    if ((fpfs_get_is_ignore_root() & 0x80000000) != 0)
    {
      v30 = MEMORY[0x1D38683F0]();
      v62 = 5;
      v63 = 0u;
      v64 = 0u;
      v65 = 19;
      v59 = v13;
      if (!v30 || (v31 = sub_1CF9E6138(), (v31 & 0x100000000) != 0))
      {
        sub_1CEFDB034();
        v36 = swift_allocError();
        sub_1CF19A730(&v62, v37);
      }

      else
      {
        LODWORD(v66) = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        inited = swift_initStackObject();
        *(inited + 16) = v56;
        *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(inited + 40) = v33;
        *(inited + 72) = &type metadata for VFSFileError;
        v34 = swift_allocObject();
        *(inited + 48) = v34;
        sub_1CF19A730(&v62, v34 + 16);
        sub_1CF4E04E8(inited);
        swift_setDeallocating();
        sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
        sub_1CF00BB78(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v35 = v60;
        sub_1CF9E57D8();
        v36 = sub_1CF9E53A8();
        (*v57)(v13, v35);
      }

      sub_1CF1969CC(&v62);
      swift_willThrow();
      v38 = v36;
      LODWORD(v62) = sub_1CF9E52B8();
      sub_1CF196978();
      v39 = sub_1CF9E5658();

      if ((v39 & 1) == 0)
      {
        v40 = v36;
        LODWORD(v62) = sub_1CF9E52C8();
        v41 = sub_1CF9E5658();

        if ((v41 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v13 = v59;
    }

    else if (v61 == 1)
    {
      close(v29);
      v18 = 1;
      return v18 & 1;
    }

    v66 = 0;
    if ((fpfs_fget_parent_id() & 0x80000000) != 0)
    {
      v48 = MEMORY[0x1D38683F0]();
      v62 = 4;
      v63 = 0u;
      v64 = 0u;
      v65 = 19;
      sub_1CF19BBE4(v48, &v62);
      sub_1CF1969CC(&v62);
      swift_willThrow();
LABEL_30:
      close(v29);
      return v18 & 1;
    }

    v42 = v66;
    close(v29);
    if (v42 == a1)
    {
      goto LABEL_4;
    }

    v43 = *(v14 + 16);
    v44 = (v14 + 32);
    a2 = v20;
    while (v43)
    {
      v45 = *v44++;
      --v43;
      if (v45 == v42)
      {
        goto LABEL_4;
      }
    }

    a1 = v42;
    if ((*(v20 + 48) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v46 = v61;
  v47 = MEMORY[0x1D38683F0]();
  if (v46 < 0)
  {
    LODWORD(v62) = 0;
    BYTE4(v62) = 1;
  }

  else
  {
    LODWORD(v62) = v61;
    BYTE4(v62) = 0;
  }

  v65 = 0;
  sub_1CF19BBE4(v47, &v62);
  sub_1CF1969CC(&v62);
  swift_willThrow();
  0, v49, v50, v51, v52, v53, v54, v55;
  return v18 & 1;
}

BOOL sub_1CF0250F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1 == *a2;
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  v7 = v4 == 1 && v2 == v3;
  v9 = v4 == 2 && v3 == 0;
  v11 = v4 == 2 && v3 == 1;
  if (v2)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (*(a1 + 8) == 1)
  {
    v12 = v7;
  }

  if (*(a1 + 8))
  {
    return v12;
  }

  else
  {
    return v5;
  }
}

unint64_t sub_1CF025150(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1CF9E6B58();
  }

  __break(1u);
  return result;
}

void VFSItemID.init(parsing:)(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v9 = a2;
  v11 = a1 == 1953460082 && a2 == 0xE400000000000000;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    v9, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
    v14 = 2;
LABEL_7:
    *a3 = v13;
    *(a3 + 8) = v14;
    return;
  }

  v15 = 0x6873617274;
  if (a1 == 0x6873617274 && v9 == 0xE500000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    v9, a2, v15, a5, a6, a7, a8, a9;
    v14 = 2;
    v13 = 1;
    goto LABEL_7;
  }

  if (sub_1CF4C4044(0x284449636F64, 0xE600000000000000, a1, v9))
  {
    if (sub_1CF9E69F8() >= 0x60000)
    {
      v16 = sub_1CF9E6B58();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v9, v17, v19, v21, v23, v24, v25, v26;
      v9 = v22;
      if ((v16 ^ v18) >= 0x4000)
      {
        v34 = sub_1CF4C5F04(v16, v18, v20, v22, 10);
        if ((v34 & 0x10000000000) != 0)
        {
          sub_1CF4C597C(v16, v18, v20, v22, 10);
        }

        v13 = v34;
        v9, v35, v36, v37, v38, v39, v40, v41;
        if ((v13 & 0x100000000) == 0)
        {
          v14 = 0;
          v13 = v13;
          goto LABEL_7;
        }

LABEL_26:
        v13 = 0;
        v14 = -1;
        goto LABEL_7;
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
    if ((sub_1CF4C4044(0x284449656C6966, 0xE700000000000000, a1, v9) & 1) == 0)
    {
      goto LABEL_25;
    }

    if (sub_1CF9E69F8() >= 0x70000)
    {
      v42 = sub_1CF9E6B58();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v9, v43, v45, v47, v49, v50, v51, v52;
      v9 = v48;
      if ((v42 ^ v44) >= 0x4000)
      {
        v53 = sub_1CF0254A0(v42, v44, v46, v48, 10);
        if ((v54 & 0x100) != 0)
        {
          sub_1CF4C53EC(v42, v44, v46, v48, 10);
          v13 = v62;
          v64 = v63;
          v9, v63, v65, v66, v67, v68, v69, v70;
          if (v64)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v13 = v53;
          v61 = v54;
          v9, v54, v55, v56, v57, v58, v59, v60;
          if (v61)
          {
            goto LABEL_26;
          }
        }

        v14 = 1;
        goto LABEL_7;
      }

LABEL_25:
      v9, v27, v28, v29, v30, v31, v32, v33;
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_1CF0254A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1CF9E79F8();
  }

  result = sub_1CF02556C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1CF02556C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1CF9E6AB8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1CF4C4DE8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1CF9E6AB8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1CF0259D8@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  if (*a2 - 1 < 2)
  {
    goto LABEL_4;
  }

  v6 = result;
  v8 = *(v3 + 208);
  v7 = *(v3 + 216);
  result = type metadata accessor for ItemMetadata(0);
  if (a2[*(result + 48)] & 1) != 0 || (a2[*(result + 44)])
  {
    goto LABEL_4;
  }

  v10 = sub_1CEFF8538(v8, v7, 0, v6, 0, 0);
  result = sub_1CEFF8538(v7, 0, 1, v6, 0, 0);
  if (v10 == 501)
  {
    v11 = result;
    result = fpfs_supports_indexAllRemoteItems();
    v10 = v11;
  }

  if (v10 == 1002)
  {
LABEL_11:
    v9 = 5;
    goto LABEL_5;
  }

  if (v10 != 500)
  {
    if (v10 != 3)
    {
      v9 = 4;
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_4:
  v9 = 0;
LABEL_5:
  *a3 = v9;
  return result;
}

uint64_t sub_1CF025AC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CF0264D8;

  return sub_1CF025B7C(a1, v4);
}

uint64_t sub_1CF025B7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CF0263E0;

  return v6(a1);
}

uint64_t sub_1CF025C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a5;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1CF0262EC;

  return sub_1CF025D5C(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1CF025D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a4;
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_1CF026140;

  return sub_1CF025E24(a4, a5, a6);
}

uint64_t sub_1CF025E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v5 = sub_1CF9E6118();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1CF025F04, 0, 0);
}

uint64_t sub_1CF025F04()
{
  v1 = v0[4];
  v2 = [v1 filename];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  v6 = [v1 providerID];
  if ([v6 fp_isiCloudDriveIdentifier])
  {
    if (v3 == 0x746E656D75636F44 && v5 == 0xE900000000000073)
    {
      v5, v7, 0x746E656D75636F44, v9, v10, v11, v12, v13;

LABEL_13:
      v26 = v0[4];
      v25 = v0[5];
      v27 = swift_task_alloc();
      v0[11] = v27;
      v27[2] = v26;
      v27[3] = v25;
      v27[4] = v0 + 2;
      v28 = swift_task_alloc();
      v0[12] = v28;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5028, &unk_1CFA181C8);
      *v28 = v0;
      v28[1] = sub_1CF8265B4;

      return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD000000000000033, 0x80000001CFA5DF10, sub_1CF8FE48C, v27, v29);
    }

    v15 = sub_1CF9E8048();
    v5, v16, v17, v18, v19, v20, v21, v22;

    if (v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_1CF026140(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1CF82719C;
  }

  else
  {
    v4 = sub_1CF026254;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CF026254()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    v1 = *(v0 + 16);
  }

  v2 = *(v0 + 24);
  v3 = v1;
  v2(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CF0262EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CF0263E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CF0264E4(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, char *a6)
{
  v237 = sub_1CF9E64A8();
  v13 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v15 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = v15;
  if (!a2)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:

    v213 = sub_1CF9E7298();
    v214 = swift_allocObject();
    *(v214 + 16) = v244;
    v250[0] = v228;
    v215 = sub_1CF9E7718();
    *(v214 + 56) = MEMORY[0x1E69E6158];
    *(v214 + 64) = a5;
    *(v214 + 32) = v215;
    *(v214 + 40) = v216;
    result = sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v230, v213, v214);
    __break(1u);
    return result;
  }

  v16 = a2[2];

  if (!v16 || v16 != a1)
  {
  }

  v18 = a4;
  v250[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1788, &qword_1CFA0AEE8);
  sub_1CF9E6D38();
  v15 = v250[0];
  v240 = v250[0];
  if (!v250[0])
  {
    goto LABEL_49;
  }

  v250[0] = 0;
  v250[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v250[1], v19, v20, v21, v22, v23, v24, v25;
  v250[0] = 0xD000000000000012;
  v250[1] = 0x80000001CFA52A80;
  v248 = a3;
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0x73746E65766520, 0xE700000000000000);
  v43 = v250[1];
  v44 = &unk_1CF9FA000;
  v45 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1;
  v220 = a3;
  if (v45)
  {
    v6 = a5;
    a3 = v250[0];
    if (qword_1EDEA3408 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_11;
  }

LABEL_12:
  v43, v36, v37, v38, v39, v40, v41, v42;
  if (a3 < 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    v56 = 0;
    v234 = 0;
    v225 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate;
    v238 = v240 + 1;
    v224 = (v13 + 13);
    v245 = *v240->tree;
    v223 = (v13 + 1);
    v222 = *MEMORY[0x1E69E8020];
    v243 = "fsevent: received ";
    v244 = v44[69];
    v217 = xmmword_1CF9FA440;
    v219 = a2;
    v221 = a6;
    v218 = a5;
    while (1)
    {
      v43 = objc_autoreleasePoolPush();
      v64 = MEMORY[0x1E69E7CC8];
      v44 = MEMORY[0x1E69E6158];
      if (v56 < v245)
      {
        if (v56 >= *v240->tree)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          swift_once();
LABEL_11:
          v46 = qword_1EDEBB5A0;
          v47 = sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v48 = swift_allocObject();
          *(v48 + 16) = v44[69];
          *(v48 + 56) = MEMORY[0x1E69E6158];
          *(v48 + 64) = sub_1CEFD51C4();
          *(v48 + 32) = a3;
          *(v48 + 40) = v43;
          sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v46, v47, v48);
          v43 = v48;
          a5 = v6;
          a3 = v220;
          goto LABEL_12;
        }

        v64 = *(&v238->super.isa + v56);
      }

      v246 = v43;
      v247 = v56 + 1;
      v248 = 1752457584;
      v249 = 0xE400000000000000;
      sub_1CF9E7898();
      if (!*v64->tree || (v72 = sub_1CF0271B0(v250), (v65 & 1) == 0))
      {
        v64, v65, v66, v67, v68, v69, v70, v71;
        sub_1CF027318(v250);
        v250[0] = 0;
        v250[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v250[1], v89, v90, v91, v92, v93, v94, v95;
        strcpy(v250, "ignore event ");
        HIWORD(v250[1]) = -4864;
        v248 = v56;
        v96 = sub_1CF9E7F98();
        v98 = v97;
        MEMORY[0x1D3868CC0](v96);
        v98, v99, v100, v101, v102, v103, v104, v105;
        MEMORY[0x1D3868CC0](0xD000000000000021, v243 | 0x8000000000000000);
        v13 = v250[0];
        v106 = v250[1];
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v107 = qword_1EDEBB5A0;
        v108 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v6 = swift_allocObject();
        *(v6 + 16) = v244;
        *(v6 + 56) = v44;
        *(v6 + 64) = sub_1CEFD51C4();
        *(v6 + 32) = v13;
        *(v6 + 40) = v106;
        sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v107, v108, v6);
        goto LABEL_16;
      }

      v73 = *(*v64[1].tester + 8 * v72);
      swift_unknownObjectRetain();
      sub_1CF027318(v250);
      v250[5] = v73;
      swift_dynamicCast();
      v6 = v249;
      v242 = v248;
      v248 = 0x4449656C6966;
      v249 = 0xE600000000000000;
      sub_1CF9E7898();
      if (!*v64->tree)
      {
        break;
      }

      sub_1CF0271B0(v250);
      if ((v74 & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRetain();
      sub_1CF027318(v250);
      v64, v81, v82, v83, v84, v85, v86, v87;
      objc_opt_self();
      v88 = swift_dynamicCastObjCClass();
      v44 = v88;
      if (!v88)
      {
        swift_unknownObjectRelease();
        v239 = 0;
        goto LABEL_30;
      }

      v235 = *(a5 + 4 * v56);
      a6 = *&a6[8 * v56];
      v239 = [v88 unsignedLongLongValue];
      v241 = 0;
LABEL_31:
      v109 = a2[3];
      v13 = v236;
      *v236 = v109;
      v110 = v237;
      (*v224)(v13, v222, v237);
      v111 = v109;
      v43 = sub_1CF9E64D8();
      (*v223)(v13, v110);
      v112 = v225;
      if ((v43 & 1) == 0)
      {
        goto LABEL_45;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v232 = Strong;
        v231 = *(v112 + 1);
        v250[0] = 0;
        v250[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v114 = v250[1];
        v115 = sub_1CF02736C();
        v117 = v116;
        v114, v116, v118, v119, v120, v121, v122, v123;
        v250[0] = v115;
        v250[1] = v117;
        MEMORY[0x1D3868CC0](0x746E657665736620, 0xEC00000028203A73);
        v248 = v247;
        v124 = sub_1CF9E7F98();
        v126 = v125;
        MEMORY[0x1D3868CC0](v124);
        v126, v127, v128, v129, v130, v131, v132, v133;
        MEMORY[0x1D3868CC0](47, 0xE100000000000000);
        v248 = a3;
        v134 = sub_1CF9E7F98();
        v136 = v135;
        MEMORY[0x1D3868CC0](v134);
        v136, v137, v138, v139, v140, v141, v142, v143;
        MEMORY[0x1D3868CC0](2236457, 0xE300000000000000);
        v144 = sub_1CF9E6888();
        v145 = [v144 fp_prettyPath];

        v146 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v148 = v147;

        MEMORY[0x1D3868CC0](v146, v148);
        v148, v149, v150, v151, v152, v153, v154, v155;
        MEMORY[0x1D3868CC0](0x4449656C69662022, 0xE90000000000003ALL);
        if (v241)
        {
          v156 = 0x6669636570736E75;
          v157 = 0xEB00000000646569;
        }

        else
        {
          v248 = v239;
          sub_1CEFFD0A8();
          v156 = sub_1CF9E7718();
          v157 = v158;
        }

        v227 = a6;
        v233 = v44;
        MEMORY[0x1D3868CC0](v156, v157);
        v157, v159, v160, v161, v162, v163, v164, v165;
        MEMORY[0x1D3868CC0](0x4449746E65766520, 0xE90000000000003ALL);
        v248 = a6;
        v166 = sub_1CF9E7F98();
        v168 = v167;
        MEMORY[0x1D3868CC0](v166);
        v168, v169, v170, v171, v172, v173, v174, v175;
        v230 = v250[0];
        v229 = v250[1];
        v176 = sub_1CEFFCE80();
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v177 = qword_1EDEBB5A0;
        v226 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v178 = swift_allocObject();
        *(v178 + 16) = v217;
        v250[0] = v176;
        sub_1CEFFD0A8();
        v228 = v176;
        v179 = sub_1CF9E7718();
        v181 = v180;
        v182 = MEMORY[0x1E69E6158];
        *(v178 + 56) = MEMORY[0x1E69E6158];
        a5 = sub_1CEFD51C4();
        *(v178 + 32) = v179;
        *(v178 + 40) = v181;
        *(v178 + 96) = v182;
        *(v178 + 104) = a5;
        v183 = v230;
        *(v178 + 64) = a5;
        *(v178 + 72) = v183;
        v184 = v229;
        *(v178 + 80) = v229;

        v230 = v177;
        sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v177, v226, v178);
        v178, v185, v186, v187, v188, v189, v190, v191;
        v192 = v219;
        v13 = v234;
        sub_1CF027534(v235, v219, v232, v231, v227, v242, v6, v239, v241);
        v15 = &v251;
        v234 = v13;
        if (v13)
        {
          goto LABEL_50;
        }

        v184, v193, v194, v195, v196, v197, v198, v199;
        v6, v200, v201, v202, v203, v204, v205, v206;
        v207 = sub_1CF9E7298();
        v6 = swift_allocObject();
        *(v6 + 16) = v244;
        v250[0] = v228;
        v208 = sub_1CF9E7718();
        *(v6 + 56) = MEMORY[0x1E69E6158];
        *(v6 + 64) = a5;
        *(v6 + 32) = v208;
        *(v6 + 40) = v209;
        sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v230, v207, v6);
        swift_unknownObjectRelease();

        a6 = v221;
        a5 = v218;
        a3 = v220;
        a2 = v192;
      }

      else
      {

        a6 = v221;
      }

LABEL_16:
      v6, v57, v58, v59, v60, v61, v62, v63;
      objc_autoreleasePoolPop(v246);
      v56 = v247;
      if (a3 == v247)
      {
        goto LABEL_41;
      }
    }

    v64, v74, v75, v76, v77, v78, v79, v80;
    sub_1CF027318(v250);
    v239 = 0;
    v44 = 0;
LABEL_30:
    v235 = *(a5 + 4 * v56);
    a6 = *&a6[8 * v56];
    v241 = 1;
    goto LABEL_31;
  }

LABEL_41:
  v240, v49, v50, v51, v52, v53, v54, v55;
  v210 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v211 = *(v210 + 1);
  ObjectType = swift_getObjectType();
  (*(v211 + 40))(a2, ObjectType, v211);

  return swift_unknownObjectRelease();
}

unint64_t sub_1CF0271B0(uint64_t a1)
{
  v2 = sub_1CF9E7878();

  return sub_1CF0271F4(a1, v2);
}

unint64_t sub_1CF0271F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CF0272BC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3869B10](v9, a1);
      sub_1CF027318(v9);
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

uint64_t sub_1CF02736C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v1 = sub_1CF9E82E8();
  v3 = v2;
  MEMORY[0x1D3868CC0](v1);
  v3, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
  v11 = sub_1CF9E7F98();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0x3A65646F6D20, 0xE600000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A72656E776F20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription), *(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription + 8));
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

void sub_1CF027534(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (*a6)(uint64_t a1), uint64_t (*a7)(uint64_t a1), void *a8, char a9)
{
  v585 = a8;
  v588 = a7;
  v592 = a6;
  v593 = a5;
  v595 = a3;
  v596 = a4;
  v604 = *MEMORY[0x1E69E9840];
  v575 = sub_1CF9E5868();
  v574 = *(v575 - 8);
  MEMORY[0x1EEE9AC00](v575);
  v573 = &v563 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v576 = &v563 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v579 = &v563 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v568 = (&v563 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v567 = &v563 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v584 = &v563 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v569 = &v563 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v572 = &v563 - v24;
  v589 = sub_1CF9E5A58();
  v591 = *(v589 - 8);
  MEMORY[0x1EEE9AC00](v589);
  v578 = &v563 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v583 = &v563 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v571 = &v563 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v563 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v590 = &v563 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v582 = &v563 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v570 = &v563 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v580 = &v563 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v563 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v581 = &v563 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v563 - v47;
  v49 = type metadata accessor for VFSItem(0);
  v586 = *(v49 - 8);
  v587 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v577 = &v563 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v563 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = (&v563 - v55);
  v57 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v59 = &v563 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = (&v563 - v61);
  MEMORY[0x1EEE9AC00](v63);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v563 - v67;
  if ((v65 & 8) != 0)
  {
    if (*(a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v81 = qword_1EDEBB5A0;
      v82 = sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1CF9FA450;
      *(v83 + 56) = MEMORY[0x1E69E6158];
      *(v83 + 64) = sub_1CEFD51C4();
      *(v83 + 32) = 0xD000000000000013;
      *(v83 + 40) = 0x80000001CFA52AD0;
      sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v81, v82, v83);
      v83, v84, v85, v86, v87, v88, v89, v90;
    }

    ObjectType = swift_getObjectType();
    (*(v596 + 32))(a2, ObjectType);
    return;
  }

  v594 = a2;
  if ((v65 & 6) != 0)
  {
    v69 = v594;
    if (*(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v70 = qword_1EDEBB5A0;
      v71 = sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1CF9FA450;
      *(v72 + 56) = MEMORY[0x1E69E6158];
      *(v72 + 64) = sub_1CEFD51C4();
      *(v72 + 32) = 0xD000000000000010;
      *(v72 + 40) = 0x80000001CFA52AF0;
      sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v70, v71, v72);
      v72, v73, v74, v75, v76, v77, v78, v79;
    }

    v80 = swift_getObjectType();
    (*(v596 + 32))(v69, v80);
    return;
  }

  v92 = v593;
  if (v594[5] < v593)
  {
    v594[5] = v593;
  }

  if ((v65 & 0x10) != 0)
  {
    v104 = v594;
    if (*(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v105 = qword_1EDEBB5A0;
      v106 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1CF9FA450;
      *(v107 + 56) = MEMORY[0x1E69E6158];
      *(v107 + 64) = sub_1CEFD51C4();
      *(v107 + 32) = 0xD000000000000017;
      *(v107 + 40) = 0x80000001CFA52B10;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v105, v106, v107);
      v107, v108, v109, v110, v111, v112, v113, v114;
    }

    v115 = swift_getObjectType();
    (*(v596 + 24))(v104, v115);
    return;
  }

  v93 = v594[4];
  if (v93 != -1 && v93 >= v92)
  {
    if (*(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) != 1)
    {
      return;
    }

    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v94 = qword_1EDEBB5A0;
    v95 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1CF9FA450;
    *(v96 + 56) = MEMORY[0x1E69E6158];
    *(v96 + 64) = sub_1CEFD51C4();
    *(v96 + 32) = 0xD00000000000001CLL;
    *(v96 + 40) = 0x80000001CFA52B30;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v94, v95, v96);
LABEL_44:
    v96, v97, v98, v99, v100, v101, v102, v103;
    return;
  }

  v593 = v66;
  v566 = v65;
  if (sub_1CF9E6AE8())
  {
    v598 = 0;
    v599 = 0;
    v597 = 0;
    v116 = sub_1CF9E6978();
    v117 = fsevents_docidpath_parse(v116 + 32, &v599, &v598, &v597);

    if (v117)
    {
      if (!HIDWORD(v599))
      {
        v602 = 1029990756;
        v603 = 0xE400000000000000;
        LODWORD(v600) = v599;
        v118 = sub_1CF9E7F98();
        v120 = v119;
        MEMORY[0x1D3868CC0](v118);
        v120, v121, v122, v123, v124, v125, v126, v127;
        v128 = v603;
        v129 = sub_1CF9E6888();
        v128, v130, v131, v132, v133, v134, v135, v136;
        v137 = v597;
        v138 = v594;
        v139 = v589;
        if (!v597)
        {
          v602 = 0x656C656420646964;
          v603 = 0xEB00000000206574;
          v301 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v303 = v302;
          MEMORY[0x1D3868CC0](v301);
          v303, v304, v305, v306, v307, v308, v309, v310;
          v318 = v603;
          if (*(v138 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
          {
            v319 = v129;
            v320 = v602;
            v48 = v584;
            if (qword_1EDEA3408 != -1)
            {
              swift_once();
            }

            v321 = qword_1EDEBB5A0;
            v322 = sub_1CF9E7298();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
            v323 = swift_allocObject();
            *(v323 + 16) = xmmword_1CF9FA450;
            *(v323 + 56) = MEMORY[0x1E69E6158];
            *(v323 + 64) = sub_1CEFD51C4();
            *(v323 + 32) = v320;
            *(v323 + 40) = v318;
            sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v321, v322, v323);
            v318 = v323;
            v129 = v319;
          }

          else
          {
            v48 = v584;
          }

          v318, v311, v312, v313, v314, v315, v316, v317;
          v353 = swift_getObjectType();
          (*(v591 + 56))(v48, 1, 1, v139);
          (*(v596 + 16))(v138, v129, v48, v353);
          goto LABEL_85;
        }

        v592 = v129;
        sub_1CEFFD3DC(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, v68, type metadata accessor for LocalDomain);
        type metadata accessor for VFSFileTree(0);
        v140 = sub_1CEFFEB98();
        sub_1CF7DD394(v137, v140, 0, 0, v48);

        if ((*(v586 + 48))(v48, 1, v587) == 1)
        {

          sub_1CF000690(v68, type metadata accessor for LocalDomain);
          v141 = &unk_1EC4BEC00;
          v142 = &unk_1CF9FCB60;
LABEL_86:
          sub_1CEFCCC44(v48, v141, v142);
          return;
        }

        sub_1CF5634F4(v48, v56);
        sub_1CEFFEB98();

        v330 = v572;
        sub_1CF25116C(v572);
        v331 = v591;
        v332 = (v591 + 48);
        v333 = *(v591 + 48);
        if (v333(v330, 1, v139) == 1)
        {

          sub_1CF000690(v56, type metadata accessor for VFSItem);
          sub_1CF000690(v68, type metadata accessor for LocalDomain);
          sub_1CEFCCC44(v330, &unk_1EC4BE310, qword_1CF9FCBE0);
          return;
        }

        v590 = v333;
        v585 = v332;
        v354 = v570;
        (*(v331 + 32))(v570, v330, v139);
        v355 = v582;
        (*(v331 + 16))(v582, v354, v139);
        v588 = type metadata accessor for LocalDomain;
        v356 = v593;
        sub_1CEFFD3DC(v68, v593, type metadata accessor for LocalDomain);
        v357 = v581;
        sub_1CEFFD3DC(v56, v581, type metadata accessor for VFSItem);
        (*(v586 + 56))(v357, 0, 1, v587);
        v358 = objc_allocWithZone(type metadata accessor for LocalItem(0));
        v359 = sub_1CF001704(v355, v356, v357);
        v360 = *(v591 + 8);
        v360(v354, v139);
        sub_1CF000690(v56, type metadata accessor for VFSItem);
        v361 = v359;
        sub_1CF000690(v68, v588);
        if (!v359)
        {
LABEL_103:

          return;
        }

        v362 = v360;
        v363 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
        swift_beginAccess();
        v364 = v569;
        sub_1CF33F8C8(v359 + v363, v569);
        if ((v590)(v364, 1, v139) == 1)
        {
          __break(1u);
        }

        else
        {
          v365 = sub_1CF7E208C(v594[6]);
          v366 = v364;
          v367 = v362;
          v362(v366, v139);
          v593 = v361;
          if (v365)
          {
            v368 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier;
            v369 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v371 = v370;
            v373 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v379 = v369;
            v380 = v372;
            if (v379 == v373 && v371 == v372)
            {
              v371, v372, v373, v374, v375, v376, v377, v378;
              v380, v381, v382, v383, v384, v385, v386, v387;
LABEL_109:
              v600 = 0x6E61686320646964;
              v601 = 0xEB00000000206567;
              v466 = [v593 description];
              v467 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v469 = v468;

              MEMORY[0x1D3868CC0](v467, v469);
              v469, v470, v471, v472, v473, v474, v475, v476;
              v484 = v601;
              v485 = v594;
              if (*(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
              {
                v486 = v600;
                v487 = v589;
                if (qword_1EDEA3408 != -1)
                {
                  swift_once();
                }

                v488 = qword_1EDEBB5A0;
                v489 = sub_1CF9E7298();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
                v490 = swift_allocObject();
                *(v490 + 16) = xmmword_1CF9FA450;
                *(v490 + 56) = MEMORY[0x1E69E6158];
                *(v490 + 64) = sub_1CEFD51C4();
                *(v490 + 32) = v486;
                *(v490 + 40) = v484;
                sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v488, v489, v490);
                v484 = v490;
              }

              else
              {
                v487 = v589;
              }

              v484, v477, v478, v479, v480, v481, v482, v483;
              v491 = swift_getObjectType();
              v492 = v584;
              (*(v591 + 56))(v584, 1, 1, v487);
              v493 = v485;
              v48 = v492;
              v494 = v593;
              (*(v596 + 8))(v493, v593, v566, v492, v491);

              v129 = v592;
LABEL_85:

              v141 = &unk_1EC4BE310;
              v142 = qword_1CF9FCBE0;
              goto LABEL_86;
            }

            v451 = sub_1CF9E8048();
            v371, v452, v453, v454, v455, v456, v457, v458;
            v380, v459, v460, v461, v462, v463, v464, v465;
            if (v451)
            {
              goto LABEL_109;
            }

            v600 = 0;
            v601 = 0xE000000000000000;
            sub_1CF9E7948();
            MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA52BD0);
            v529 = v593;
            v530 = v567;
            sub_1CF33F8C8(v593 + v363, v567);
            v531 = v589;
            if ((v590)(v530, 1, v589) != 1)
            {
              v532 = sub_1CF9E5A18();
              v534 = v533;
              v367(v530, v531);
              MEMORY[0x1D3868CC0](v532, v534);
              v534, v535, v536, v537, v538, v539, v540, v541;
              MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA52C10);
              v542 = *&v529[v368];
              v543 = NSFileProviderItemIdentifier.description.getter(v542);
              v545 = v544;
              MEMORY[0x1D3868CC0](v543);

              v545, v546, v547, v548, v549, v550, v551, v552;
              MEMORY[0x1D3868CC0](544437792, 0xE400000000000000);
              v553 = NSFileProviderItemIdentifier.description.getter(v592);
              v555 = v554;
              MEMORY[0x1D3868CC0](v553);
              v555, v556, v557, v558, v559, v560, v561, v562;
              v417 = 41;
              v418 = 0xE100000000000000;
              goto LABEL_98;
            }

LABEL_132:
            __break(1u);
            return;
          }

          v600 = 0;
          v601 = 0xE000000000000000;
          sub_1CF9E7948();
          v601, v399, v400, v401, v402, v403, v404, v405;
          v600 = 0xD000000000000014;
          v601 = 0x80000001CFA52BD0;
          v406 = v568;
          sub_1CF33F8C8(v361 + v363, v568);
          if ((v590)(v406, 1, v139) != 1)
          {
            v407 = sub_1CF9E5A18();
            v409 = v408;
            v367(v406, v139);
            MEMORY[0x1D3868CC0](v407, v409);
            v409, v410, v411, v412, v413, v414, v415, v416;
            v417 = 0xD000000000000016;
            v418 = 0x80000001CFA52BF0;
LABEL_98:
            MEMORY[0x1D3868CC0](v417, v418);
            v426 = v601;
            if (*(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
            {
              v427 = v600;
              if (qword_1EDEA3408 != -1)
              {
                swift_once();
              }

              v428 = qword_1EDEBB5A0;
              v429 = sub_1CF9E7298();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
              v430 = swift_allocObject();
              *(v430 + 16) = xmmword_1CF9FA450;
              *(v430 + 56) = MEMORY[0x1E69E6158];
              *(v430 + 64) = sub_1CEFD51C4();
              *(v430 + 32) = v427;
              *(v430 + 40) = v426;
              sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v428, v429, v430);
              v426 = v430;
            }

            v426, v419, v420, v421, v422, v423, v424, v425;

            goto LABEL_103;
          }
        }

        __break(1u);
        goto LABEL_132;
      }

      __break(1u);
    }

    else
    {
      v602 = 0;
      v603 = 0xE000000000000000;
      sub_1CF9E7948();
      v603, v179, v180, v181, v182, v183, v184, v185;
      v602 = 0xD000000000000019;
      v603 = 0x80000001CFA52BB0;
      v186 = sub_1CF9E6888();
      v187 = [v186 fp_prettyPath];

      v188 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v190 = v189;

      MEMORY[0x1D3868CC0](v188, v190);
      v190, v191, v192, v193, v194, v195, v196, v197;
      v68 = v602;
      v56 = v603;
      if (qword_1EDEA3408 == -1)
      {
LABEL_43:
        v198 = qword_1EDEBB5A0;
        v199 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_1CF9FA450;
        *(v96 + 56) = MEMORY[0x1E69E6158];
        *(v96 + 64) = sub_1CEFD51C4();
        *(v96 + 32) = v68;
        *(v96 + 40) = v56;
        sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v198, v199, v96);
        goto LABEL_44;
      }
    }

    swift_once();
    goto LABEL_43;
  }

  v143 = v590;
  sub_1CF9E58C8();
  if ((a9 & 1) == 0)
  {
    v569 = OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain;
    sub_1CEFFD3DC(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, v59, type metadata accessor for LocalDomain);
    v200 = type metadata accessor for VFSFileTree(0);
    v201 = sub_1CEFFEB98();
    v588 = v200;
    sub_1CF7DD394(v585, v201, 0, 0, v43);

    v202 = *(v586 + 48);
    v572 = (v586 + 48);
    v570 = v202;
    if ((v202)(v43, 1, v587) == 1)
    {
      sub_1CF000690(v59, type metadata accessor for LocalDomain);
      v203 = &unk_1EC4BEC00;
      v204 = &unk_1CF9FCB60;
      v205 = v43;
    }

    else
    {
      sub_1CF5634F4(v43, v53);
      sub_1CEFFEB98();

      v206 = v579;
      sub_1CF25116C(v579);
      v207 = v591;
      v208 = v589;
      if ((*(v591 + 48))(v206, 1, v589) != 1)
      {
        v334 = v571;
        (*(v207 + 32))(v571, v206, v208);
        v579 = *(v207 + 16);
        (v579)(v582, v334, v208);
        v592 = type metadata accessor for LocalDomain;
        v335 = v593;
        sub_1CEFFD3DC(v59, v593, type metadata accessor for LocalDomain);
        v336 = v581;
        sub_1CEFFD3DC(v53, v581, type metadata accessor for VFSItem);
        (*(v586 + 56))(v336, 0, 1, v587);
        v337 = objc_allocWithZone(type metadata accessor for LocalItem(0));
        v338 = v207;
        v150 = sub_1CF001704(v582, v335, v336);
        v339 = *(v338 + 8);
        v339(v334, v208);
        sub_1CF000690(v53, type metadata accessor for VFSItem);
        sub_1CF000690(v59, v592);
        if (v150)
        {
          v152 = v594;
          v146 = v589;
          v151 = v339;
          goto LABEL_37;
        }

LABEL_50:
        v602 = 1029990758;
        v603 = 0xE400000000000000;
        v600 = v585;
        v209 = sub_1CF9E7F98();
        v211 = v210;
        MEMORY[0x1D3868CC0](v209);
        v211, v212, v213, v214, v215, v216, v217, v218;
        v219 = v603;
        v220 = sub_1CF9E6888();
        v219, v221, v222, v223, v224, v225, v226, v227;
        v602 = 0x656C656420646964;
        v603 = 0xEB00000000206574;
        v592 = v220;
        v228 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v230 = v229;
        MEMORY[0x1D3868CC0](v228);
        v230, v231, v232, v233, v234, v235, v236, v237;
        v245 = v603;
        v246 = v594;
        v566 = *(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose);
        if (v566 == 1)
        {
          v247 = v602;
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          v248 = qword_1EDEBB5A0;
          v249 = sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v250 = swift_allocObject();
          *(v250 + 16) = xmmword_1CF9FA450;
          *(v250 + 56) = MEMORY[0x1E69E6158];
          *(v250 + 64) = sub_1CEFD51C4();
          *(v250 + 32) = v247;
          *(v250 + 40) = v245;
          sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v248, v249, v250);
          v245 = v250;
        }

        v245, v238, v239, v240, v241, v242, v243, v244;
        v251 = swift_getObjectType();
        v252 = v591;
        v253 = *(v591 + 16);
        v254 = v584;
        v255 = v589;
        v253(v584, v590, v589);
        v568 = *(v252 + 56);
        (v568)(v254, 0, 1, v255);
        v256 = *(v596 + 16);
        v567 = v251;
        v565 = v596 + 16;
        v564 = v256;
        (v256)(v246, v592, v254, v251);
        sub_1CEFCCC44(v254, &unk_1EC4BE310, qword_1CF9FCBE0);
        v257 = sub_1CEFFEB98();
        v258 = *MEMORY[0x1E6967578];
        v259 = *(MEMORY[0x1E6967578] + 8);
        LODWORD(v582) = *(MEMORY[0x1E6967578] + 16);
        LODWORD(v581) = *(MEMORY[0x1E6967578] + 17);
        LODWORD(v579) = *(MEMORY[0x1E6967578] + 18);
        v260 = swift_allocObject();
        v260[2] = v258;
        v261 = *(v257 + 32);
        LODWORD(v571) = *(v257 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v569 = v252 + 56;
        v262 = (*(v252 + 80) + 32) & ~*(v252 + 80);
        v263 = swift_allocObject();
        v563 = xmmword_1CF9FA450;
        *(v263 + 16) = xmmword_1CF9FA450;
        _Block_copy(v258);
        v593 = v260;

        sub_1CF9E58C8();
        v586 = v257;
        v253(v583, (v257 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v255);
        type metadata accessor for VFSLookupScope(0);
        v264 = swift_allocObject();
        *(v264 + 40) = 0;
        *(v264 + 48) = 1;
        *(v264 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
        *(v264 + 16) = v571;
        *(v264 + 32) = v261;
        v265 = *(v261 + 16);
        if (v265)
        {
          v265 = *(v261 + 32);
        }

        v266 = v580;
        *(v264 + 24) = v265;
        *(v264 + 40) = 0;
        *(v264 + 48) = 1;
        *(v264 + 56) = 0;
        v267 = v593;
        *(v264 + 64) = sub_1CF5634CC;
        *(v264 + 72) = v267;
        *(v264 + 80) = v259;
        *(v264 + 88) = v582;
        *(v264 + 89) = v581;
        *(v264 + 90) = v579;
        v268 = *(v263 + 16);

        v269 = v589;
        if (v268)
        {
          v253((v264 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL), (v263 + v262), v589);
        }

        else
        {
          (v568)(v584, 1, 1, v589);
          (*(v574 + 104))(v573, *MEMORY[0x1E6968F70], v575);
          sub_1CF9E5A38();
        }

        v324 = v594;

        *(v264 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v263;
        v325 = v591;
        v326 = *(v591 + 32);
        v326(v264 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v583, v269);
        *(v264 + 49) = 0;
        sub_1CF7DD394(v585, v264, 0, 0, v266);
        if ((v570)(v266, 1, v587) == 1)
        {
          (*(v325 + 8))(v590, v269);

          v327 = &unk_1EC4BEC00;
          v328 = &unk_1CF9FCB60;
LABEL_72:
          sub_1CEFCCC44(v266, v327, v328);
          return;
        }

        v329 = v577;
        sub_1CF5634F4(v266, v577);
        v266 = v576;
        sub_1CF25116C(v576);
        if ((*(v325 + 48))(v266, 1, v269) == 1)
        {

          sub_1CF000690(v329, type metadata accessor for VFSItem);
          (*(v325 + 8))(v590, v269);
          v327 = &unk_1EC4BE310;
          v328 = qword_1CF9FCBE0;
          goto LABEL_72;
        }

        v326(v578, v266, v269);
        v340 = sub_1CF9E5A18();
        v342 = v341;
        v602 = v340;
        v603 = v341;
        v600 = 0xD000000000000012;
        v601 = 0x80000001CFA52B90;
        sub_1CEFE4E68();
        v343 = MEMORY[0x1E69E6158];
        v344 = sub_1CF9E7698();
        v342, v345, v346, v347, v348, v349, v350, v351;
        if ((v344 & 1) == 0)
        {
          if ((sub_1CF0012A0() & 1) == 0 || (v388 = sub_1CF9E5A18(), v390 = v389, v602 = v388, v603 = v389, v600 = 0x2F706D742FLL, v601 = 0xE500000000000000, v391 = sub_1CF9E7698(), v390, v392, v393, v394, v395, v396, v397, v398, (v391 & 1) == 0))
          {

            goto LABEL_124;
          }
        }

        v352 = *v329;
        if (*(v329 + 8))
        {
          if (*(v329 + 8) != 1)
          {
            if (v352)
            {
              v450 = MEMORY[0x1E6967280];
            }

            else
            {
              v450 = MEMORY[0x1E6967258];
            }

            v442 = *v450;
            goto LABEL_117;
          }

          v602 = 1029990758;
          v603 = 0xE400000000000000;
          v600 = v352;
        }

        else
        {
          v602 = 1029990756;
          v603 = 0xE400000000000000;
          LODWORD(v600) = v352;
        }

        v431 = sub_1CF9E7F98();
        v433 = v432;
        MEMORY[0x1D3868CC0](v431);
        v433, v434, v435, v436, v437, v438, v439, v440;
        v441 = v603;
        v442 = sub_1CF9E6888();
        v441, v443, v444, v445, v446, v447, v448, v449;
LABEL_117:
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v496 = v495;
        v497 = sub_1CF9E6AE8();
        v496, v498, v499, v500, v501, v502, v503, v504;
        if (v497)
        {
          v602 = 0x656C656420646964;
          v603 = 0xEB00000000206574;
          v505 = NSFileProviderItemIdentifier.description.getter(v442);
          v507 = v506;
          MEMORY[0x1D3868CC0](v505);
          v507, v508, v509, v510, v511, v512, v513, v514;
          v522 = v603;
          if (v566)
          {
            v523 = v602;
            if (qword_1EDEA3408 != -1)
            {
              swift_once();
            }

            v524 = qword_1EDEBB5A0;
            v525 = sub_1CF9E7298();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
            v526 = swift_allocObject();
            *(v526 + 16) = v563;
            *(v526 + 56) = v343;
            *(v526 + 64) = sub_1CEFD51C4();
            *(v526 + 32) = v523;
            *(v526 + 40) = v522;
            sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v524, v525, v526);
            v522 = v526;
            v324 = v594;
            v269 = v589;
            v329 = v577;
          }

          v522, v515, v516, v517, v518, v519, v520, v521;
          v527 = v584;
          (v568)(v584, 1, 1, v269);
          v564(v324, v442, v527, v567, v596);

          sub_1CEFCCC44(v527, &unk_1EC4BE310, qword_1CF9FCBE0);
          goto LABEL_125;
        }

LABEL_124:

LABEL_125:
        v528 = *(v591 + 8);
        v528(v578, v269);
        sub_1CF000690(v329, type metadata accessor for VFSItem);
        v528(v590, v269);
        return;
      }

      sub_1CF000690(v53, type metadata accessor for VFSItem);
      sub_1CF000690(v59, type metadata accessor for LocalDomain);
      v203 = &unk_1EC4BE310;
      v204 = qword_1CF9FCBE0;
      v205 = v206;
    }

    sub_1CEFCCC44(v205, v203, v204);
    goto LABEL_50;
  }

  v144 = *(v591 + 16);
  v145 = v582;
  v146 = v589;
  (v144)(v582, v143, v589);
  v147 = v593;
  sub_1CEFFD3DC(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, v593, type metadata accessor for LocalDomain);
  v579 = v144;
  (v144)(v32, v145, v146);
  sub_1CEFFD3DC(v147, v62, type metadata accessor for LocalDomain);
  v148 = v581;
  (*(v586 + 56))(v581, 1, 1, v587);
  v149 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v150 = sub_1CF001704(v32, v62, v148);
  sub_1CF000690(v147, type metadata accessor for LocalDomain);
  v151 = *(v591 + 8);
  v151(v145, v146);
  if (v150)
  {
    v152 = v594;
LABEL_37:
    v153 = v150;
    v602 = 0x6E61686320646964;
    v603 = 0xEB00000000206567;
    v154 = [v153 description];
    v155 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v157 = v156;

    MEMORY[0x1D3868CC0](v155, v157);
    v157, v158, v159, v160, v161, v162, v163, v164;
    v172 = v603;
    v173 = v584;
    if (*(v152 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      v174 = v151;
      v175 = v602;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v176 = qword_1EDEBB5A0;
      v177 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_1CF9FA450;
      *(v178 + 56) = MEMORY[0x1E69E6158];
      *(v178 + 64) = sub_1CEFD51C4();
      *(v178 + 32) = v175;
      *(v178 + 40) = v172;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v176, v177, v178);
      v172 = v178;
      v270 = v590;
      v151 = v174;
      v152 = v594;
    }

    else
    {
      v270 = v590;
    }

    v172, v165, v166, v167, v168, v169, v170, v171;
    v271 = swift_getObjectType();
    v272 = v591;
    (v579)(v173, v270, v146);
    (*(v272 + 56))(v173, 0, 1, v146);
    (*(v596 + 8))(v152, v153, v566, v173, v271);

    sub_1CEFCCC44(v173, &unk_1EC4BE310, qword_1CF9FCBE0);
    v151(v270, v146);
    return;
  }

  v602 = 0;
  v603 = 0xE000000000000000;
  sub_1CF9E7948();
  v603, v273, v274, v275, v276, v277, v278, v279;
  v602 = 0xD000000000000015;
  v603 = 0x80000001CFA52B50;
  MEMORY[0x1D3868CC0](v592, v588);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA52B70);
  v287 = v603;
  if (*(v594 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
  {
    v288 = v602;
    v289 = v590;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v290 = qword_1EDEBB5A0;
    v291 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v292 = swift_allocObject();
    *(v292 + 16) = xmmword_1CF9FA450;
    *(v292 + 56) = MEMORY[0x1E69E6158];
    *(v292 + 64) = sub_1CEFD51C4();
    *(v292 + 32) = v288;
    *(v292 + 40) = v287;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v290, v291, v292);
    v292, v293, v294, v295, v296, v297, v298, v299;
    v300 = v289;
  }

  else
  {
    v603, v280, v281, v282, v283, v284, v285, v286;
    v300 = v590;
  }

  v151(v300, v146);
}