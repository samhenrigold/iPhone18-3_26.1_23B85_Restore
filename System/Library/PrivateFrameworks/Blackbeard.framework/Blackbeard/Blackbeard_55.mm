void *sub_1E650E9BC(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABB0, &qword_1E6608CA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v39 = sub_1E65E00B8();
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E65DFFB8();
  v9 = *(v40 - 8);
  v10 = MEMORY[0x1EEE9AC00](v40);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = sub_1E65DAE38();
  if (v18 == sub_1E65DAE38())
  {
    goto LABEL_12;
  }

  v34 = v5;
  v35 = v12;
  v36 = a1;
  v38 = a1[2];
  if (!v38)
  {
LABEL_11:
    a1 = v36;
LABEL_12:

    return a1;
  }

  v19 = 0;
  v20 = v36 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v21 = *(v9 + 72);
  v22 = (v6 + 32);
  v37 = 0x80000001E6618C50;
  v23 = (v6 + 8);
  while (1)
  {
    v25 = MEMORY[0x1E699D618];
    sub_1E5E1DE44(v20, v17, MEMORY[0x1E699D618]);
    sub_1E5E1DE44(v17, v15, v25);
    if (swift_getEnumCaseMultiPayload() < 5)
    {
      v24 = MEMORY[0x1E699D618];
      sub_1E651D43C(v17, MEMORY[0x1E699D618]);
      sub_1E651D43C(v15, v24);
      goto LABEL_5;
    }

    (*v22)(v8, v15, v39);
    if (sub_1E65E0078() == 0xD000000000000016 && v37 == v26)
    {
      break;
    }

    v27 = sub_1E65E6C18();

    (*v23)(v8, v39);
    sub_1E651D43C(v17, MEMORY[0x1E699D618]);
    if (v27)
    {
      goto LABEL_15;
    }

LABEL_5:
    ++v19;
    v20 += v21;
    if (v38 == v19)
    {
      goto LABEL_11;
    }
  }

  (*v23)(v8, v39);
  sub_1E651D43C(v17, MEMORY[0x1E699D618]);
LABEL_15:
  v29 = v35;
  sub_1E65E01C8();
  result = swift_storeEnumTagMultiPayload();
  v30 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  a1 = v36;
  v31 = v34;
  if (v38 < v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_1E5E1DE44(v29, v34, MEMORY[0x1E699D618]);
  v32 = a1[2];
  if (v32 < v30)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = a1;
  if (!isUniquelyReferenced_nonNull_native || v32 >= a1[3] >> 1)
  {
    a1 = sub_1E64F6BC8(isUniquelyReferenced_nonNull_native, v32 + 1, 1, a1);
    v41 = a1;
  }

  sub_1E651B3B0(v19 + 1, v19 + 1, 1, v31, MEMORY[0x1E699D618], MEMORY[0x1E699D618], &qword_1ED07ABB0, &qword_1E6608CA0);
  sub_1E651D43C(v29, MEMORY[0x1E699D618]);
  return a1;
}

uint64_t sub_1E650EE94(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E650EF68, v3, v2);
}

uint64_t sub_1E650EF68()
{
  v1 = *(v0 + 32);

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v1, &qword_1ED072828, &qword_1E65EBE20);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E650F00C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C0, &qword_1E65EBA50);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650F0AC, 0, 0);
}

uint64_t sub_1E650F0AC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E650F1C8;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E650F1C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E650F2E0, 0, 0);
}

uint64_t sub_1E650F2E0()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A0, &qword_1E65EBF20);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4470, &qword_1ED0728A0, &qword_1E65EBF20, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4748, &qword_1ED0726C0, &qword_1E65EBA50, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E650F41C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E650F43C, 0, 0);
}

uint64_t sub_1E650F43C()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = AppStateService.makeAppDidEnterBackgroundStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE47FC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E650F5C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E650F5E4, 0, 0);
}

uint64_t sub_1E650F5E4()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4740, &qword_1ED075D10, &qword_1E65F37A0, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE36AC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E650F76C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650F80C, 0, 0);
}

uint64_t sub_1E650F80C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E650F928;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E650F928()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E650FA58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E650FA58()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072898, &qword_1E65EBF10);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44B8, &qword_1ED072898, &qword_1E65EBF10, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47A0, &qword_1ED0721A0, &qword_1E65EA978, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E650FB94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E650FC34, 0, 0);
}

uint64_t sub_1E650FC34()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E650FD50;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E650FD50()
{

  return MEMORY[0x1EEE6DFA0](sub_1E650FE68, 0, 0);
}

uint64_t sub_1E650FE68()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABA0, &qword_1E6608C78);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44C0, &qword_1ED07ABA0, &qword_1E6608C78, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47A8, &qword_1ED0721B8, &qword_1E65EA990, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E650FFA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E650FFC4, 0, 0);
}

uint64_t sub_1E650FFC4()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE36AC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E651014C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65101EC, 0, 0);
}

uint64_t sub_1E65101EC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6510308;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E6510308()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6510420, 0, 0);
}

uint64_t sub_1E6510420()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB98, &qword_1E6608C68);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4478, &qword_1ED07AB98, &qword_1E6608C68, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4750, &qword_1ED072B08, &qword_1E65EC510, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E651055C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E651057C, 0, 0);
}

uint64_t sub_1E651057C()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.makeTrainerTipJournalsUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4740, &qword_1ED075D10, &qword_1E65F37A0, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6138840;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E6510704(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6510724, 0, 0);
}

uint64_t sub_1E6510724()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = HealthDataService.makeWheelchairStatusUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE36AC;

  return v7(boxed_opaque_existential_1);
}

void *sub_1E65108AC(void *a1, uint64_t a2)
{
  v176 = a1;
  v145 = sub_1E65E0128();
  v165 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1E65DFC88();
  v166 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1E65DFDA8();
  v167 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v150 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1E65DF978();
  v139 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1E65DFF38();
  v138 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for BrowseItemContext(0);
  v8 = MEMORY[0x1EEE9AC00](v153);
  v163 = (&v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v164 = &v138 - v10;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  MEMORY[0x1EEE9AC00](v169);
  v170 = (&v138 - v11);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v156 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v13 = &v138 - v12;
  v172 = type metadata accessor for ItemContext(0);
  v180 = *(v172 - 8);
  v14 = MEMORY[0x1EEE9AC00](v172);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v138 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v138 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v138 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v138 - v27);
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v181;
  if (v182)
  {
    return sub_1E5FED3F8(v181, v182);
  }

  v171 = v28;
  v162 = v26;
  v155 = v25;
  v154 = v24;
  v174 = v22;
  v152 = v19;
  v140 = v16;
  v151 = a2;
  v30 = MEMORY[0x1E69E7CC0];
  v161 = v181[2];
  if (!v161)
  {
    v54 = v170;
    v35 = v165;
    v55 = v166;
    v52 = v167;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v175 = v30;
    v179 = v30[2];
    if (!v179)
    {
      v178 = MEMORY[0x1E69E7CC0];
LABEL_116:

      v137 = sub_1E600A878(v178);

      *v54 = v137;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v54, &qword_1ED072828, &qword_1E65EBE20);
    }

    v59 = 0;
    v177 = v35 + 4;
    v60 = v176 + 7;
    v173 = (v35 + 1);
    v171 = (v55 + 4);
    v168 = v55 + 1;
    v167 = v52 + 4;
    v166 = (v52 + 1);
    v165 = (v139 + 32);
    v162 = (v139 + 8);
    v161 = (v138 + 32);
    v160 = (v138 + 8);
    v178 = MEMORY[0x1E69E7CC0];
    v61 = v152;
    while (1)
    {
      if (v59 >= v175[2])
      {
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v62 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v63 = *(v180 + 72);
      v64 = v174;
      sub_1E5E1DE44(v175 + v62 + v63 * v59, v174, type metadata accessor for ItemContext);
      sub_1E5E1DE44(v64, v61, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_1E651D43C(v61, type metadata accessor for ItemContext);
LABEL_31:
      result = sub_1E651D43C(v174, type metadata accessor for ItemContext);
LABEL_32:
      if (++v59 == v179)
      {
        goto LABEL_116;
      }
    }

    v65 = v164;
    sub_1E5E1EB40(v61, v164, type metadata accessor for BrowseItemContext);
    sub_1E5E1DE44(v65, v163, type metadata accessor for BrowseItemContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        v67 = v176;
        if (EnumCaseMultiPayload == 1)
        {
          v68 = v163[1];
          if (v176[2])
          {
            v69 = *v163;
            v70 = v176;
            sub_1E65E6D28();
            sub_1E65E5D78();
            v71 = sub_1E65E6D78();
            v72 = -1 << *(v70 + 32);
            v73 = v71 & ~v72;
            if ((*(v60 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
            {
              v74 = ~v72;
              while (1)
              {
                v75 = (v176[6] + 16 * v73);
                v76 = *v75 == v69 && v75[1] == v68;
                if (v76 || (sub_1E65E6C18() & 1) != 0)
                {
                  break;
                }

                v73 = (v73 + 1) & v74;
                if (((*(v60 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_110;
            }
          }

LABEL_50:
        }

        else
        {
          (*v165)(v148, v163, v149);
          v99 = sub_1E65DF8C8();
          v101 = v100;
          if (v67[2])
          {
            v102 = v99;
            v103 = v176;
            sub_1E65E6D28();
            sub_1E65E5D78();
            v104 = sub_1E65E6D78();
            v105 = -1 << *(v103 + 32);
            v106 = v104 & ~v105;
            if ((*(v60 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106))
            {
              v107 = ~v105;
              while (1)
              {
                v108 = (v176[6] + 16 * v106);
                v109 = *v108 == v102 && v108[1] == v101;
                if (v109 || (sub_1E65E6C18() & 1) != 0)
                {
                  break;
                }

                v106 = (v106 + 1) & v107;
                if (((*(v60 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
                {
                  goto LABEL_81;
                }
              }

              (*v162)(v148, v149);
              goto LABEL_110;
            }
          }

LABEL_81:

          (*v162)(v148, v149);
        }
      }

      else
      {
        (*v161)(v146, v163, v147);
        v88 = sub_1E65DFEF8();
        v90 = v89;
        if (v176[2])
        {
          v91 = v88;
          v92 = v176;
          sub_1E65E6D28();
          sub_1E65E5D78();
          v93 = sub_1E65E6D78();
          v94 = -1 << *(v92 + 32);
          v95 = v93 & ~v94;
          if ((*(v60 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
          {
            v96 = ~v94;
            while (1)
            {
              v97 = (v176[6] + 16 * v95);
              v98 = *v97 == v91 && v97[1] == v90;
              if (v98 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v95 = (v95 + 1) & v96;
              if (((*(v60 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            (*v160)(v146, v147);
            goto LABEL_110;
          }
        }

LABEL_71:

        (*v160)(v146, v147);
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*v171)(v142, v163, v143);
        v77 = sub_1E65DFC48();
        v79 = v78;
        if (v176[2])
        {
          v80 = v77;
          v81 = v176;
          sub_1E65E6D28();
          sub_1E65E5D78();
          v82 = sub_1E65E6D78();
          v83 = -1 << *(v81 + 32);
          v84 = v82 & ~v83;
          if ((*(v60 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
          {
            v85 = ~v83;
            while (1)
            {
              v86 = (v176[6] + 16 * v84);
              v87 = *v86 == v80 && v86[1] == v79;
              if (v87 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v84 = (v84 + 1) & v85;
              if (((*(v60 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
              {
                goto LABEL_61;
              }
            }

            (*v168)(v142, v143);
            goto LABEL_110;
          }
        }

LABEL_61:

        (*v168)(v142, v143);
      }

      else
      {
        (*v177)(v144, v163, v145);
        v121 = sub_1E65E00E8();
        v123 = v122;
        if (v176[2])
        {
          v124 = v121;
          v125 = v176;
          sub_1E65E6D28();
          sub_1E65E5D78();
          v126 = sub_1E65E6D78();
          v127 = -1 << *(v125 + 32);
          v128 = v126 & ~v127;
          if ((*(v60 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128))
          {
            v129 = ~v127;
            while (1)
            {
              v130 = (v176[6] + 16 * v128);
              v131 = *v130 == v124 && v130[1] == v123;
              if (v131 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v128 = (v128 + 1) & v129;
              if (((*(v60 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
              {
                goto LABEL_101;
              }
            }

            (*v173)(v144, v145);
            goto LABEL_110;
          }
        }

LABEL_101:

        (*v173)(v144, v145);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1E651D43C(v164, type metadata accessor for BrowseItemContext);
LABEL_103:
        v61 = v152;
        goto LABEL_31;
      }

      (*v167)(v150, v163, v141);
      v110 = sub_1E65DFD78();
      v112 = v111;
      if (v176[2])
      {
        v113 = v110;
        v114 = v176;
        sub_1E65E6D28();
        sub_1E65E5D78();
        v115 = sub_1E65E6D78();
        v116 = -1 << *(v114 + 32);
        v117 = v115 & ~v116;
        if ((*(v60 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117))
        {
          v118 = ~v116;
          while (1)
          {
            v119 = (v176[6] + 16 * v117);
            v120 = *v119 == v113 && v119[1] == v112;
            if (v120 || (sub_1E65E6C18() & 1) != 0)
            {
              break;
            }

            v117 = (v117 + 1) & v118;
            if (((*(v60 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          (*v166)(v150, v141);
LABEL_110:
          sub_1E651D43C(v164, type metadata accessor for BrowseItemContext);
          sub_1E5E1EB40(v174, v140, type metadata accessor for ItemContext);
          v132 = v178;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134 = v132;
          v183 = v132;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E601BFA8(0, *(v132 + 16) + 1, 1);
            v134 = v183;
          }

          v136 = *(v134 + 16);
          v135 = *(v134 + 24);
          if (v136 >= v135 >> 1)
          {
            sub_1E601BFA8((v135 > 1), v136 + 1, 1);
            v134 = v183;
          }

          *(v134 + 16) = v136 + 1;
          v178 = v134;
          result = sub_1E5E1EB40(v140, v134 + v62 + v136 * v63, type metadata accessor for ItemContext);
          v54 = v170;
          v61 = v152;
          goto LABEL_32;
        }
      }

LABEL_91:

      (*v166)(v150, v141);
    }

    sub_1E651D43C(v164, type metadata accessor for BrowseItemContext);
    v54 = v170;
    goto LABEL_103;
  }

  v31 = 0;
  v32 = v162;
  v160 = (v181 + ((*(v32 + 80) + 32) & ~*(v32 + 80)));
  v159 = (v162 + 2);
  v177 = (v156 + 8);
  v178 = v156 + 16;
  v158 = (v162 + 1);
  v33 = v155;
  v157 = v181;
  while (1)
  {
    if (v31 >= result[2])
    {
      goto LABEL_118;
    }

    v36 = v32[9];
    v173 = v31;
    v37 = v171;
    (v32[2])(v171, v160 + v36 * v31, v33);
    v38 = sub_1E65E0518();
    swift_getKeyPath();
    v39 = *(v38 + 16);
    if (v39)
    {
      v175 = v30;
      v181 = MEMORY[0x1E69E7CC0];
      sub_1E601BFA8(0, v39, 0);
      v40 = v181;
      v41 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v168 = v38;
      v42 = v38 + v41;
      v43 = *(v156 + 72);
      v44 = *(v156 + 16);
      v45 = v154;
      do
      {
        v46 = v179;
        v44(v13, v42, v179);
        swift_getAtKeyPath();
        (*v177)(v13, v46);
        v181 = v40;
        v48 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1E601BFA8((v47 > 1), v48 + 1, 1);
          v40 = v181;
        }

        *(v40 + 16) = v48 + 1;
        sub_1E5E1EB40(v45, v40 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v48, type metadata accessor for ItemContext);
        v42 += v43;
        --v39;
      }

      while (v39);
      v33 = v155;
      (*v158)(v171, v155);

      v30 = v175;
    }

    else
    {

      result = (*v158)(v37, v33);
      v40 = MEMORY[0x1E69E7CC0];
    }

    v49 = *(v40 + 16);
    v50 = v30[2];
    v51 = v50 + v49;
    v52 = v167;
    if (__OFADD__(v50, v49))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v51 > v30[3] >> 1)
    {
      if (v50 <= v51)
      {
        v53 = v50 + v49;
      }

      else
      {
        v53 = v50;
      }

      result = sub_1E64F6184(result, v53, 1, v30);
      v30 = result;
    }

    v54 = v170;
    v55 = v166;
    if (*(v40 + 16))
    {
      if ((v30[3] >> 1) - v30[2] < v49)
      {
        goto LABEL_121;
      }

      swift_arrayInitWithCopy();

      v32 = v162;
      result = v157;
      v34 = v173;
      if (v49)
      {
        v56 = v30[2];
        v57 = __OFADD__(v56, v49);
        v58 = v56 + v49;
        if (v57)
        {
          goto LABEL_122;
        }

        v30[2] = v58;
      }
    }

    else
    {

      v32 = v162;
      result = v157;
      v34 = v173;
      if (v49)
      {
        goto LABEL_120;
      }
    }

    v31 = (v34 + 1);
    v35 = v165;
    if (v31 == v161)
    {
      goto LABEL_28;
    }
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  return result;
}

uint64_t sub_1E6511D4C(uint64_t a1)
{
  v1[12] = a1;
  v1[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[14] = swift_task_alloc();
  sub_1E65E6058();
  v1[15] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[16] = v3;
  v1[17] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E6511E20, v3, v2);
}

uint64_t sub_1E6511E20()
{
  sub_1E65E0638();
  sub_1E65E0628();
  sub_1E65E0618();

  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  type metadata accessor for ActionButtonDescriptor(0);
  type metadata accessor for ArtworkDescriptor(0);
  type metadata accessor for ContextMenu(0);
  type metadata accessor for ItemContext(0);
  type metadata accessor for ItemMetrics(0);
  type metadata accessor for ViewDescriptor(0);
  sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  sub_1E65E0608();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1E651214C;

  return MEMORY[0x1EEE05DC0](v1, v2);
}

uint64_t sub_1E651214C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1E651226C, v3, v2);
}

uint64_t sub_1E651226C()
{
  v1 = v0[14];

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v1, &qword_1ED072828, &qword_1E65EBE20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E6512318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArtworkDescriptor(0);
  v16 = (v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v11, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a2, v8, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  v20 = *MEMORY[0x1E699DC58];
  v21 = sub_1E65DC488();
  (*(*(v21 - 8) + 104))(&v14[v19], v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v22 = v39;
  v23 = sub_1E65DAE38();
  v24 = sub_1E65DAE38();
  v25 = sub_1E65E4B48();
  v26 = 4.0;
  if (v25)
  {
    v26 = 8.0;
  }

  v27 = 16.0;
  if (v25)
  {
    v27 = 18.0;
  }

  if (v23 == v24)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  if (v23 == v24)
  {
    v29 = 12.0;
  }

  else
  {
    v29 = 8.0;
  }

  sub_1E5E1EB40(v14, v18, type metadata accessor for ArtworkContent);
  *(v18 + v16[7]) = MEMORY[0x1E69E7CD0];
  v30 = (v18 + v16[8]);
  *v30 = 0.0;
  v30[1] = v28;
  v30[2] = v28;
  v30[3] = v29;
  *(v18 + v16[9]) = 1;
  v31 = (v18 + v16[10]);
  *v31 = 0;
  v31[1] = 0;
  v32 = v40;
  sub_1E64D2DD0(v18, v22, v40);
  v33 = sub_1E65E4B98();
  v35 = v34;
  v36 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v18, v22, v36);
  sub_1E651D43C(v18, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v38 = (v36 + *(result + 36));
  *v38 = v33;
  v38[1] = v35;
  return result;
}

uint64_t sub_1E65126B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1E6512318(a1, a2, v8, a3);
}

uint64_t sub_1E6512740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a2;
  v98 = a5;
  v8 = sub_1E65E3C48();
  v83 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v82[1] = v9;
  v95 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for AppComposer(0);
  v10 = *(v88 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v88);
  v99 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v82 - v13;
  v104 = sub_1E65D76F8();
  *&v105 = *(v104 - 8);
  v15 = MEMORY[0x1EEE9AC00](v104);
  v102 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v103 = v82 - v17;
  sub_1E65D76E8();
  if (qword_1EE2D4F08 != -1)
  {
    swift_once();
  }

  v82[0] = __swift_project_value_buffer(v8, qword_1EE2D4F10);
  sub_1E5E1DE44(a1, v14, type metadata accessor for AppComposer);
  sub_1E5DF650C(a3, &v115);
  v97 = v14;
  v18 = *a4;
  v85 = a3;
  v19 = a4[3];
  v90 = a1;
  v20 = a4[5];
  v100 = a4[7];
  v101 = a4[9];
  v21 = *(v10 + 80);
  v86 = ~v21;
  v89 = v8;
  v22 = (v21 + 16) & ~v21;
  v23 = v11 + 7;
  v24 = (v23 + v22) & 0xFFFFFFFFFFFFFFF8;
  v87 = v21 | 7;
  v25 = swift_allocObject();
  sub_1E5E1EB40(v97, v25 + v22, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v115, v25 + v24);
  v97 = v25;
  v26 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 3);
  v26[2] = *(a4 + 2);
  v26[3] = v27;
  v26[4] = *(a4 + 4);
  v28 = *(a4 + 1);
  *v26 = *a4;
  v26[1] = v28;
  v92 = v18;
  swift_unknownObjectRetain();
  v93 = v19;

  v94 = v20;
  v29 = v90;

  v84 = sub_1E65E4418();
  v30 = v105;
  if (*(v29 + *(v88 + 20) + 8) >= 3u)
  {
    v53 = v99;
    sub_1E5E1DE44(v29, v99, type metadata accessor for AppComposer);
    sub_1E5DF650C(v85, &v113);
    (*(v30 + 16))(v102, v103, v104);
    v54 = (v21 + 17) & v86;
    v55 = v30;
    v56 = (v23 + v54) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 87) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + *(v55 + 80) + 16) & ~*(v55 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v84;
    sub_1E5E1EB40(v53, v61 + v54, type metadata accessor for AppComposer);
    *(v61 + v56) = v96;
    sub_1E5DF599C(&v113, v61 + v57);
    v62 = (v61 + v58);
    v63 = *(a4 + 3);
    v62[2] = *(a4 + 2);
    v62[3] = v63;
    v62[4] = *(a4 + 4);
    v64 = *(a4 + 1);
    *v62 = *a4;
    v62[1] = v64;
    v65 = (v61 + v59);
    v66 = v97;
    *v65 = sub_1E651365C;
    v65[1] = v66;
    v67 = v104;
    (*(v55 + 32))(v61 + v60, v102, v104);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B0, &qword_1E65EBC30);
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727B8, &qword_1E65EBC38);
    v69 = sub_1E65E0AA8();
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727C0, &qword_1E65EBC40);
    v71 = sub_1E5FED46C(&qword_1ED0727C8, &qword_1ED0727C0, &qword_1E65EBC40, MEMORY[0x1E697BE60]);
    *&v110 = v70;
    *(&v110 + 1) = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = sub_1E651D5E4(&qword_1EE2D6550, MEMORY[0x1E699DB08], MEMORY[0x1E699DB00]);
    *&v110 = v68;
    *(&v110 + 1) = v69;
    v111 = OpaqueTypeConformance2;
    v112 = v73;
    swift_getOpaqueTypeConformance2();
    *&v113 = sub_1E65E3E28();
    *(&v113 + 1) = v74;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    v76 = sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0, MEMORY[0x1E697C268]);
    sub_1E5FEE4C8();

    v113 = v110;
    sub_1E5FEE4C8();
    v106 = v108;
    v107 = v109;

    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    v78 = sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8, MEMORY[0x1E697E378]);
    sub_1E62DFB74(&v106, v77, v75, v78, v76);

    (*(v105 + 8))(v103, v67);
  }

  else
  {
    sub_1E5E1DE44(v29, v99, type metadata accessor for AppComposer);
    sub_1E5DF650C(v85, &v113);
    (*(v30 + 16))(v102, v103, v104);
    v31 = v83;
    (*(v83 + 16))(v95, v82[0], v89);
    v32 = v30;
    v33 = (v21 + 18) & v86;
    v34 = (v23 + v33) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 87) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + *(v32 + 80) + 16) & ~*(v32 + 80);
    v39 = (v91 + *(v31 + 80) + v38) & ~*(v31 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v84;
    *(v40 + 17) = 1;
    sub_1E5E1EB40(v99, v40 + v33, type metadata accessor for AppComposer);
    *(v40 + v34) = v96;
    sub_1E5DF599C(&v113, v40 + v35);
    v41 = (v40 + v36);
    v42 = *(a4 + 3);
    v41[2] = *(a4 + 2);
    v41[3] = v42;
    v41[4] = *(a4 + 4);
    v43 = *(a4 + 1);
    *v41 = *a4;
    v41[1] = v43;
    v44 = (v40 + v37);
    v45 = v97;
    *v44 = sub_1E651365C;
    v44[1] = v45;
    v46 = v104;
    (*(v105 + 32))(v40 + v38, v102, v104);
    (*(v31 + 32))(v40 + v39, v95, v89);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727D0, &qword_1E65EBC48);
    v47 = MEMORY[0x1E697C268];
    sub_1E5FED46C(&qword_1ED0727D8, &qword_1ED0727D0, &qword_1E65EBC48, MEMORY[0x1E697C268]);
    *&v113 = sub_1E65E3D68();
    *(&v113 + 1) = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    v50 = sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8, MEMORY[0x1E697E378]);
    sub_1E5FEE4C8();

    v113 = v110;
    sub_1E5FEE4C8();
    v106 = v108;
    v107 = v109;

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    v52 = sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0, v47);
    sub_1E62DFC6C(&v106, v49, v51, v50, v52);

    (*(v105 + 8))(v103, v46);
  }

  v105 = v113;
  v110 = v113;
  LOBYTE(v111) = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
  sub_1E5FEAB1C();
  sub_1E5FEE4C8();
  sub_1E5FEBB58(v105, *(&v105 + 1));
  v79 = v113;
  sub_1E5FEE4C8();
  sub_1E5FEBB58(v79, *(&v79 + 1));
  v80 = v115;
  v113 = v115;
  v114 = v116;
  sub_1E5FEE4C8();
  return sub_1E5FEBB58(v80, *(&v80 + 1));
}

uint64_t sub_1E6513428@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E6512740(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), (v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E65134DC(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E651365C(char *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E65134DC(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E6513714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v52 = a2;
  v6 = sub_1E65DFDA8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v47 = (&v44 - v11);
  v12 = type metadata accessor for RouteDestination(0);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = sub_1E65DF978();
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BrowseItemContext(0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v44 - v28;
  sub_1E5E1DE44(a1, v23, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5E1EB40(v23, v29, type metadata accessor for BrowseItemContext);
    sub_1E5E1DE44(v29, v27, type metadata accessor for BrowseItemContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload >= 2)
      {
        v36 = v45;
        v35 = v46;
        (*(v45 + 32))(v20, v27, v46);
        v37 = type metadata accessor for AppComposer(0);
        v38 = v47;
        sub_1E64472A8(*(v52 + *(v37 + 36)), *(v52 + *(v37 + 36) + 8), v47);
        (*(v53 + 56))(v38, 0, 1, v54);
        sub_1E5E1EB40(v38, v17, type metadata accessor for RouteDestination);
        sub_1E6513E20(v17, v44, a4);
        sub_1E651D43C(v17, type metadata accessor for RouteDestination);
        (*(v36 + 8))(v20, v35);
        return sub_1E651D43C(v29, type metadata accessor for BrowseItemContext);
      }
    }

    else if ((EnumCaseMultiPayload - 5) >= 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v27 = v29;
LABEL_9:
        v31 = type metadata accessor for BrowseItemContext;
        v32 = v27;
        goto LABEL_10;
      }

      v39 = v49;
      v40 = v50;
      v41 = v51;
      (*(v50 + 32))(v49, v27, v51);
      v42 = type metadata accessor for AppComposer(0);
      v43 = v48;
      sub_1E6447980(*(v52 + *(v42 + 36)), *(v52 + *(v42 + 36) + 8), v48);
      (*(v53 + 56))(v43, 0, 1, v54);
      sub_1E5E1EB40(v43, v15, type metadata accessor for RouteDestination);
      sub_1E6513E20(v15, v44, a4);
      sub_1E651D43C(v15, type metadata accessor for RouteDestination);
      (*(v40 + 8))(v39, v41);
      return sub_1E651D43C(v29, type metadata accessor for BrowseItemContext);
    }

    sub_1E651D43C(v29, type metadata accessor for BrowseItemContext);
    goto LABEL_9;
  }

  v31 = type metadata accessor for ItemContext;
  v32 = v23;
LABEL_10:
  sub_1E651D43C(v32, v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  return (*(*(v33 - 8) + 56))(a4, 1, 1, v33);
}

uint64_t sub_1E6513E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = type metadata accessor for RouteDestination(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = type metadata accessor for CanvasTaskIdentifier(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
  v14 = v13[12];
  v15 = v13[16];
  v28 = v13[20];
  v29 = v14;
  v16 = (a3 + v13[24]);
  sub_1E5E1DE44(a1, v12, type metadata accessor for RouteDestination);
  sub_1E5E1DE44(v12, v10, type metadata accessor for CanvasTaskIdentifier);
  sub_1E651D5E4(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier, &unk_1E65F55A8);
  sub_1E65E6848();
  sub_1E651D43C(v12, type metadata accessor for CanvasTaskIdentifier);
  v17 = *MEMORY[0x1E6999B50];
  v18 = sub_1E65E4EB8();
  (*(*(v18 - 8) + 104))(a3 + v15, v17, v18);
  v19 = *MEMORY[0x1E6999B48];
  v20 = sub_1E65E4EA8();
  (*(*(v20 - 8) + 104))(a3 + v28, v19, v20);
  sub_1E5E1DE44(a1, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RouteDestination);
  sub_1E5DF650C(v31, v32);
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  sub_1E5E1EB40(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for RouteDestination);
  sub_1E5DF599C(v32, v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = &unk_1E6608DB0;
  v16[1] = v22;
  sub_1E65E6068();
  v23 = *MEMORY[0x1E6999AD8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  v25 = *(v24 - 8);
  (*(v25 + 104))(a3, v23, v24);
  return (*(v25 + 56))(a3, 0, 1, v24);
}

uint64_t sub_1E65141DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1E65E3B68();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1E65D7848();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for AppComposer(0);
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v4[15] = *(v8 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABD8, &qword_1E6608D78);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_1E65DFAE8();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v11 = sub_1E65DFA08();
  v4[27] = v11;
  v4[28] = *(v11 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = sub_1E65DFAC8();
  v4[31] = swift_task_alloc();
  sub_1E65DFA58();
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6514530, 0, 0);
}

uint64_t sub_1E6514530()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = v0[2];
  if (!*(v1 + 16) || (v2 = sub_1E6215038(v0[5], v0[6]), (v3 & 1) == 0))
  {

LABEL_14:
    sub_1E65DE348();
    v38 = sub_1E65E3B48();
    v39 = sub_1E65E6338();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1E5DE9000, v38, v39, "Fetch Lazy Canvas Section Descriptors failed as state is not fetched", v40, 2u);
      MEMORY[0x1E694F1C0](v40, -1, -1);
    }

    v42 = v0[8];
    v41 = v0[9];
    v43 = v0[7];

    (*(v42 + 8))(v41, v43);
    v44 = sub_1E65DF9B8();
    sub_1E651D5E4(&qword_1EE2D6608, MEMORY[0x1E699D440], MEMORY[0x1E699D448]);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x1E699D438], v44);
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }

  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  (*(v5 + 16))(v4, *(v1 + 56) + *(v5 + 72) * v2, v6);

  sub_1E65DF9C8();
  (*(v5 + 8))(v4, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E651D43C(v0[31], MEMORY[0x1E699D4C0]);
    goto LABEL_14;
  }

  v7 = v0[31];
  v8 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218);

  sub_1E5E1EB40(v7, v8, MEMORY[0x1E699D488]);
  v9 = sub_1E65DFA48();
  v10 = sub_1E65DAE38();
  v11 = sub_1E65DAE38();
  v12 = v0[26];
  if (v10 == v11)
  {
    (*(v0[24] + 104))(v0[26], *MEMORY[0x1E699D4C8], v0[23]);
    v13 = *(v9 + 16);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_23:
    v52 = v0[32];

    sub_1E651D43C(v52, MEMORY[0x1E699D488]);
    v70 = MEMORY[0x1E69E7CC0];
LABEL_24:
    (*(v0[24] + 8))(v0[26], v0[23]);

    v53 = v0[1];

    return v53(v70);
  }

  v49 = v0[24];
  v48 = v0[25];
  v50 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v51 = MEMORY[0x1E699D4D0];
  if (*(v0 + 264) >= 2u)
  {
    v51 = MEMORY[0x1E699D4D8];
  }

  (*(v49 + 104))(v48, *v51, v50);
  (*(v49 + 32))(v12, v48, v50);
  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = v0[21];
  v58 = v0[14];
  v59 = v0[17];
  v15 = v0[11];
  v71 = MEMORY[0x1E69E7CC0];
  sub_1E601C670(0, v13, 0);
  v16 = v71;
  v63 = *(v9 + 16);
  v17 = sub_1E65DFFB8();
  v18 = 0;
  v20 = *(v17 - 8);
  result = v17 - 8;
  v56 = v9 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v57 = v20;
  v60 = v14;
  v61 = v13;
  v55 = (v15 + 8);
  v62 = v9;
  v54 = v0;
  while (v63 != v18)
  {
    if (v18 >= *(v9 + 16))
    {
      goto LABEL_28;
    }

    v21 = *(v59 + 48);
    v65 = v0[26];
    v66 = v0[22];
    v23 = v0[18];
    v22 = v0[19];
    v24 = v0[16];
    v64 = v0[12];
    v67 = v0[10];
    v69 = v16;
    v26 = v0[3];
    v25 = v0[4];
    sub_1E5E1DE44(v56 + *(v57 + 72) * v18, v22 + v21, MEMORY[0x1E699D618]);
    v68 = v23;
    *v23 = v18;
    v27 = (v23 + *(v59 + 48));
    sub_1E5E1EB40(v22 + v21, v27, MEMORY[0x1E699D618]);
    v28 = swift_task_alloc();
    *(v28 + 16) = v25;
    v29 = swift_task_alloc();
    *(v29 + 16) = v25;
    sub_1E5E1DE44(v25, v24, type metadata accessor for AppComposer);
    v30 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v31 = swift_allocObject();
    sub_1E5E1EB40(v24, v31 + v30, type metadata accessor for AppComposer);
    v32 = swift_task_alloc();
    *(v32 + 16) = v26;
    *(v32 + 24) = v25;
    v33 = swift_task_alloc();
    *(v33 + 16) = v26;
    *(v33 + 24) = v25;
    swift_getKeyPath();
    sub_1E65E4EC8();
    v16 = v69;

    sub_1E64634BC(sub_1E651D280, v28, sub_1E651D288, v29, sub_1E651D290, v31, sub_1E651D328, v32, v66, sub_1E651D330, v33, v65, v64, v18, v27);
    (*v55)(v64, v67);

    sub_1E5DFE50C(v68, &qword_1ED07ABD8, &qword_1E6608D78);
    v35 = *(v69 + 16);
    v34 = *(v69 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1E601C670((v34 > 1), v35 + 1, 1);
      v16 = v69;
    }

    v0 = v54;
    v36 = v54[22];
    v37 = v54[20];
    ++v18;
    *(v16 + 16) = v35 + 1;
    result = (*(v60 + 32))(v16 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v35, v36, v37);
    v9 = v62;
    if (v61 == v18)
    {
      v70 = v16;
      v47 = v54[32];

      sub_1E651D43C(v47, MEMORY[0x1E699D488]);
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E6514E34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AppComposer(0) + 20) + 8) > 1u || (v3 = sub_1E65E0158(), v3 == 2) || (v4 = v3, v5 = sub_1E65E0168(), v5 == 36))
  {
    v6 = type metadata accessor for ActionButtonDescriptor(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    v12 = v5;
    v13 = type metadata accessor for ActionButtonDescriptor(0);
    v14 = a2 + *(v13 + 20);
    v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
    sub_1E65E0178();
    v16 = sub_1E65E0138();
    v18 = v17;
    type metadata accessor for GalleryDescriptor(0);
    sub_1E65E0178();
    *v15 = v16;
    *(v15 + 8) = v18;
    *(v15 + 16) = v4 & 1;
    *(v15 + 17) = v12;
    type metadata accessor for ActionButtonDescriptor.Kind(0);
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v7 = *(*(v13 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v13;
  }

  return v7(v9, v10, 1, v8);
}

int *sub_1E6514FC4@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64FC0F0(v5);
  type metadata accessor for AppComposer(0);
  v6 = sub_1E65DAE38();
  v7 = sub_1E65DAE38();
  v8 = sub_1E65E4B48();
  v9 = 4.0;
  if (v8)
  {
    v9 = 8.0;
  }

  v10 = 16.0;
  if (v8)
  {
    v10 = 18.0;
  }

  if (v6 == v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v7)
  {
    v12 = 12.0;
  }

  else
  {
    v12 = 8.0;
  }

  sub_1E5E1EB40(v5, a2, type metadata accessor for ArtworkContent);
  result = type metadata accessor for ArtworkDescriptor(0);
  *(a2 + result[5]) = MEMORY[0x1E69E7CD0];
  v14 = a2 + result[6];
  *v14 = 0;
  *(v14 + 8) = v11;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(a2 + result[7]) = 1;
  v15 = (a2 + result[8]);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t sub_1E6515108@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v12 = type metadata accessor for AppComposer(0);
  sub_1E6501834(v11, a1, a2, *(a3 + *(v12 + 20) + 8), a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E6515244@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  sub_1E65E0708();
  type metadata accessor for AppComposer(0);
  return sub_1E6093784(v6, a1, a3);
}

uint64_t sub_1E65152E0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v5 = sub_1E65E0678();
  type metadata accessor for AppComposer(0);
  return sub_1E60930E0(v7, v5, 0, 0, 0, 0, a1, a3);
}

uint64_t sub_1E651538C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60);
  v2[12] = swift_task_alloc();
  v3 = sub_1E65E1458();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_1E65D9CC8();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v7 = sub_1E65DFDA8();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for ItemContext(0);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = type metadata accessor for BrowseItemContext(0);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6515790, 0, 0);
}

uint64_t sub_1E6515790()
{
  v148 = v0;
  v147 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = (8 * v4);

  v7 = v1;
  if (v3 > 0xD)
  {
    goto LABEL_86;
  }

  do
  {
    v131 = &v130;
    v132 = v4;
    v8 = *(v0 + 328);
    v9 = *(v0 + 232);
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v134 = &v130 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v134, v5);
    v141 = 0;
    v10 = 0;
    v12 = v7 + 56;
    v11 = *(v7 + 56);
    v133 = v1;
    v13 = 1 << *(v1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v4 = v14 & v11;
    v15 = (v13 + 63) >> 6;
    v143 = v8 + 16;
    v144 = v8;
    v145 = (v8 + 8);
    v135 = (v9 + 8);
    v136 = (v9 + 32);
    v137 = v7;
    while (v4)
    {
      v18 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v5 = *(v0 + 344);
      v22 = *(v0 + 320);
      v1 = *(v0 + 272);
      v23 = *(v7 + 48);
      v24 = *(v144 + 72);
      v142 = v21;
      (*(v144 + 16))(v5, v23 + v24 * v21, v22);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v16 = *(v0 + 272);
        v17 = type metadata accessor for ItemContext;
        goto LABEL_6;
      }

      v25 = *(v0 + 304);
      v26 = *(v0 + 312);
      v1 = *(v0 + 280);
      sub_1E5E1EB40(*(v0 + 272), v26, type metadata accessor for BrowseItemContext);
      sub_1E5E1DE44(v26, v25, type metadata accessor for BrowseItemContext);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        (*v136)(*(v0 + 248), *(v0 + 304), *(v0 + 224));
        sub_1E65DFD68();
        v1 = sub_1E65DFFA8();
        v28 = v27;
        v29 = sub_1E65DFFA8();
        v31 = *(v0 + 344);
        v32 = *(v0 + 312);
        v139 = *(v0 + 320);
        v140 = v31;
        v138 = v32;
        v5 = *(v0 + 248);
        v33 = *(v0 + 224);
        if (v1 == v29 && v28 == v30)
        {

          (*v135)(v5, v33);
          sub_1E651D43C(v138, type metadata accessor for BrowseItemContext);
          (*v145)(v140, v139);
          v7 = v137;
LABEL_22:
          *&v134[(v142 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v142;
          v34 = __OFADD__(v141++, 1);
          if (v34)
          {
            __break(1u);
LABEL_25:
            v35 = sub_1E608A040(v134, v132, v141, *(v0 + 80));
            v1 = v133;
            goto LABEL_26;
          }
        }

        else
        {
          v1 = sub_1E65E6C18();

          (*v135)(v5, v33);
          sub_1E651D43C(v138, type metadata accessor for BrowseItemContext);
          (*v145)(v140, v139);
          v7 = v137;
          if (v1)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v5 = *(v0 + 304);
        sub_1E651D43C(*(v0 + 312), type metadata accessor for BrowseItemContext);
        v16 = v5;
        v17 = type metadata accessor for BrowseItemContext;
LABEL_6:
        sub_1E651D43C(v16, v17);
        (*v145)(*(v0 + 344), *(v0 + 320));
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_25;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v4 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v7 = *(v0 + 80);
  }

  while ((isStackAllocationSafe & 1) != 0);
  v129 = swift_slowAlloc();
  v5 = sub_1E651B53C(v129, v4, v7, sub_1E6517A28);
  MEMORY[0x1E694F1C0](v129, -1, -1);
  v131 = 0;
  v35 = v5;
LABEL_26:
  v139 = v0 + 48;
  *(v0 + 352) = v35;
  v36 = *(v0 + 328);
  v37 = *(v0 + 80);
  v38 = v37 + 56;
  v39 = *(v0 + 232);
  v40 = -1;
  v41 = -1 << *(v1 + 32);
  if (-v41 < 64)
  {
    v40 = ~(-1 << -v41);
  }

  v4 = v40 & *(v37 + 7);
  v42 = (63 - v41) >> 6;
  v143 = *(v0 + 328);
  v144 = v36 + 16;
  v43 = *(v0 + 208);
  v141 = (v39 + 32);
  v142 = v36 + 8;
  v140 = (v39 + 8);
  v138 = v43;
  v137 = v43 + 32;
  v145 = v37;

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          *(v0 + 360) = v45;
          if (v4)
          {
            goto LABEL_35;
          }

          do
          {
            v46 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_85;
            }

            if (v46 >= v42)
            {

              v82 = MEMORY[0x1E69E7CC0];
              v83 = sub_1E6428C6C(MEMORY[0x1E69E7CC0]);
              *(v0 + 48) = v83;
              v84 = v45[32];
              *(v0 + 456) = v84;
              v85 = -1;
              v86 = -1 << v84;
              v87 = *(v45 + 8);
              if (-v86 < 64)
              {
                v85 = ~(-1 << -v86);
              }

              *(v0 + 368) = v83;
              v88 = v85 & v87;
              if (v88)
              {
                v89 = 0;
                v90 = *(v0 + 360);
LABEL_67:
                *(v0 + 376) = v88;
                *(v0 + 384) = v89;
                v93 = __clz(__rbit64(v88)) | (v89 << 6);
                v94 = *(*(v90 + 48) + v93);
                *(v0 + 457) = v94;
                v95 = *(*(v90 + 56) + 8 * v93);
                *(v0 + 392) = v95;
                type metadata accessor for AppComposer(0);
                type metadata accessor for AppEnvironment(0);

                v96 = CatalogService.fetchRemoteCatalogLockups.getter();
                *(v0 + 400) = v97;
                v98 = sub_1E634BE4C(v94);
                v145 = (v96 + *v96);
                v99 = swift_task_alloc();
                *(v0 + 408) = v99;
                *v99 = v0;
                v99[1] = sub_1E65167C8;
                v100 = v145;

                return v100(v98, v95);
              }

              else
              {
                v91 = 0;
                v92 = ((63 - v86) >> 6) - 1;
                v90 = *(v0 + 360);
                while (v92 != v91)
                {
                  v89 = v91 + 1;
                  v88 = *(v90 + 8 * v91++ + 72);
                  if (v88)
                  {
                    goto LABEL_67;
                  }
                }

                v103 = *(v0 + 184);
                v102 = *(v0 + 192);
                v105 = *(v0 + 168);
                v104 = *(v0 + 176);
                v106 = *(v0 + 160);

                swift_getKeyPath();
                sub_1E65E4EC8();

                sub_1E65E4C98();
                (*(v103 + 8))(v102, v104);
                sub_1E5FAB460(v105, v106, &qword_1ED072910, &qword_1E65EC030);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload > 2)
                {
                  v111 = 0;
                  v108 = v139;
                }

                else
                {
                  v108 = v139;
                  if (EnumCaseMultiPayload)
                  {
                    if (EnumCaseMultiPayload == 1)
                    {
                      v109 = *(v0 + 160);
                      v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
                      v111 = *v109;
                      v112 = sub_1E65D76A8();
                      (*(*(v112 - 8) + 8))(&v109[v110], v112);
                    }

                    else
                    {
                      sub_1E5DFE50C(*(v0 + 160), &qword_1ED072910, &qword_1E65EC030);
                      v111 = 0;
                    }
                  }

                  else
                  {
                    v111 = **(v0 + 160);
                  }
                }

                v113 = *(v0 + 352);
                v114 = *(v0 + 80);
                v115 = *(v0 + 88);
                v116 = swift_task_alloc();
                v116[2] = v108;
                v116[3] = v111;
                v116[4] = v115;
                *(v0 + 432) = sub_1E6402E7C(sub_1E651D244, v116, v114);

                if (*(v113 + 16))
                {
                  v117 = swift_task_alloc();
                  *(v0 + 440) = v117;
                  *v117 = v0;
                  v117[1] = sub_1E65172DC;
                  v118 = *(v0 + 96);

                  return sub_1E6518F28(v118);
                }

                else
                {

                  v119 = *(v0 + 432);
                  v121 = *(v0 + 240);
                  v120 = *(v0 + 248);
                  v136 = *(v0 + 264);
                  v137 = v120;
                  v122 = *(v0 + 216);
                  v138 = v121;
                  v139 = v122;
                  v124 = *(v0 + 160);
                  v123 = *(v0 + 168);
                  v140 = *(v0 + 192);
                  v141 = v123;
                  v125 = *(v0 + 144);
                  v142 = v124;
                  v143 = v125;
                  v126 = *(v0 + 96);
                  v144 = *(v0 + 120);
                  v145 = v126;
                  v146 = v82;
                  sub_1E5FAA3C8(v119);
                  v127 = sub_1E600A848(v146);

                  v128 = *(v0 + 8);

                  return v128(v127);
                }
              }
            }

            v4 = *&v38[8 * v46];
            ++v44;
          }

          while (!v4);
          v44 = v46;
LABEL_35:
          v1 = *(v0 + 320);
          v47 = __clz(__rbit64(v4));
          v4 &= v4 - 1;
          (*(v143 + 16))(*(v0 + 336), *(v145 + 6) + *(v143 + 72) * (v47 | (v44 << 6)), v1);
          sub_1E65E04E8();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v5 = *(v0 + 264);
            (*v142)(*(v0 + 336), *(v0 + 320));
            sub_1E651D43C(v5, type metadata accessor for ItemContext);
            continue;
          }

          break;
        }

        v49 = *(v0 + 288);
        v48 = *(v0 + 296);
        sub_1E5E1EB40(*(v0 + 264), v48, type metadata accessor for BrowseItemContext);
        sub_1E5E1DE44(v48, v49, type metadata accessor for BrowseItemContext);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          v5 = *(v0 + 336);
          v1 = *(v0 + 320);
          v54 = *(v0 + 288);
          sub_1E651D43C(*(v0 + 296), type metadata accessor for BrowseItemContext);
          (*v142)(v5, v1);
          sub_1E651D43C(v54, type metadata accessor for BrowseItemContext);
          continue;
        }

        break;
      }

      (*v141)(*(v0 + 240), *(v0 + 288), *(v0 + 224));
      sub_1E65DFD68();
      v50 = sub_1E65DFFA8();
      v52 = v51;
      if (v50 == sub_1E65DFFA8() && v52 == v53)
      {

        goto LABEL_42;
      }

      v55 = sub_1E65E6C18();

      if (v55)
      {
LABEL_42:
        v5 = *(v0 + 336);
        v1 = *(v0 + 320);
        v56 = *(v0 + 296);
        (*v140)(*(v0 + 240), *(v0 + 224));
        sub_1E651D43C(v56, type metadata accessor for BrowseItemContext);
        (*v142)(v5, v1);
        continue;
      }

      break;
    }

    LODWORD(v136) = sub_1E65DFD58();
    v135 = sub_1E65DFD78();
    sub_1E65DFD68();
    sub_1E65DFD88();
    sub_1E65D9C88();
    v57 = v45;
    v58 = v136;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v57;
    v1 = sub_1E6417674(v58);
    v61 = v57[2];
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      __break(1u);
LABEL_92:
      __break(1u);
    }

    v64 = v60;
    if (v57[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v60)
        {
LABEL_52:
          v70 = v57[7];
          v71 = *(v70 + 8 * v1);
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *(v70 + 8 * v1) = v71;
          if (v72)
          {
            v73 = v70;
          }

          else
          {
            v71 = sub_1E64F610C(0, v71[2] + 1, 1, v71);
            v73 = v70;
            *(v70 + 8 * v1) = v71;
          }

          v75 = v71[2];
          v74 = v71[3];
          v135 = v57;
          v136 = (v75 + 1);
          if (v75 >= v74 >> 1)
          {
            *(v73 + 8 * v1) = sub_1E64F610C((v74 > 1), v136, 1, v71);
          }

          v76 = *(v0 + 336);
          v77 = *(v0 + 320);
          v5 = *(v0 + 296);
          v78 = *(v0 + 240);
          v79 = *(v0 + 224);
          v134 = *(v0 + 216);
          v80 = *(v0 + 200);
          v132 = v77;
          v133 = v80;
          (*v140)(v78, v79);
          sub_1E651D43C(v5, type metadata accessor for BrowseItemContext);
          (*v142)(v76, v132);
          v81 = *(v73 + 8 * v1);
          *(v81 + 16) = v136;
          (*(v138 + 32))(v81 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v75, v134, v133);
          v45 = v135;
          continue;
        }
      }

      else
      {
        sub_1E64263F0();
        v57 = v146;
        if (v64)
        {
          goto LABEL_52;
        }
      }

LABEL_50:
      v57[(v1 >> 6) + 8] |= 1 << v1;
      *(v57[6] + v1) = v58;
      *(v57[7] + 8 * v1) = MEMORY[0x1E69E7CC0];
      v68 = v57[2];
      v34 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v34)
      {
        goto LABEL_92;
      }

      v57[2] = v69;
      goto LABEL_52;
    }

    break;
  }

  sub_1E641E744(v63, isUniquelyReferenced_nonNull_native);
  v65 = v146;
  v66 = sub_1E6417674(v58);
  if ((v64 & 1) == (v67 & 1))
  {
    v1 = v66;
    v57 = v65;
    if (v64)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  return sub_1E65E6C68();
}

uint64_t sub_1E65167C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {

    v4 = sub_1E65176C4;
  }

  else
  {

    v4 = sub_1E651696C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E651696C()
{
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 56) = MEMORY[0x1E69E7CC0];
    sub_1E601BF24(0, v2, 0);
    v3 = *(v0 + 56);
    v77 = sub_1E65D8258();
    v4 = *(v77 - 8);
    v76 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v75 = *(v4 + 72);
    do
    {
      v79 = v2;
      v6 = *(v0 + 144);
      v76(&v6[*(*(v0 + 128) + 48)], v5, v77);
      v78 = sub_1E65DFB58();
      v8 = v7;
      v9 = sub_1E65D8078();
      v11 = v10;
      v12 = sub_1E65D81B8();
      v14 = v3;
      if (v13)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      *(v0 + 16) = v9;
      *(v0 + 24) = v11;

      v17 = v15;
      v3 = v14;
      MEMORY[0x1E694D7C0](v17, v16);

      v18 = *(v0 + 24);
      *(v0 + 32) = *(v0 + 16);
      *(v0 + 40) = v18;

      MEMORY[0x1E694D7C0](v78, v8);

      v19 = *(v0 + 40);
      *v6 = *(v0 + 32);
      *(v6 + 1) = v19;
      *(v0 + 56) = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601BF24((v20 > 1), v21 + 1, 1);
        v3 = *(v0 + 56);
      }

      v23 = *(v0 + 136);
      v22 = *(v0 + 144);
      *(v3 + 16) = v21 + 1;
      sub_1E5FAB460(v22, v3 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_1ED072088, &qword_1E65EA770);
      v5 += v75;
      v2 = v79 - 1;
    }

    while (v79 != 1);

    if (*(v3 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
      v24 = sub_1E65E6A28();
      goto LABEL_16;
    }
  }

  v24 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v25 = *(v0 + 424);
  *(v0 + 64) = v24;

  sub_1E64346A8(v26, 1, (v0 + 64));
  if (v25)
  {

    return swift_unexpectedError();
  }

  v28 = *(v0 + 457);

  v29 = *(v0 + 64);
  v30 = *(v0 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v30;
  v32 = sub_1E6417674(v28);
  v34 = *(v30 + 16);
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v28) = v33;
  if (*(v30 + 24) >= v37)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

LABEL_30:
    v41 = v32;
    sub_1E64263DC();
    v32 = v41;
    v40 = *(v0 + 72);
    if (v28)
    {
      goto LABEL_28;
    }

LABEL_31:
    v42 = *(v0 + 457);
    v40[(v32 >> 6) + 8] |= 1 << v32;
    *(v40[6] + v32) = v42;
    *(v40[7] + 8 * v32) = v29;
    v43 = v40[2];
    v36 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v36)
    {
      goto LABEL_57;
    }

    v40[2] = v44;
    goto LABEL_33;
  }

  v38 = *(v0 + 457);
  sub_1E641E71C(v37, isUniquelyReferenced_nonNull_native);
  v32 = sub_1E6417674(v38);
  if ((v28 & 1) != (v39 & 1))
  {

    return sub_1E65E6C68();
  }

LABEL_27:
  v40 = *(v0 + 72);
  if ((v28 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  *(v40[7] + 8 * v32) = v29;

LABEL_33:
  *(v0 + 48) = v40;
  v46 = *(v0 + 376);
  v45 = *(v0 + 384);
  *(v0 + 368) = v40;
  v47 = (v46 - 1) & v46;
  if (v47)
  {
    v48 = *(v0 + 360);
    goto LABEL_39;
  }

  do
  {
    v49 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
    }

    v48 = *(v0 + 360);
    if (v49 >= (((1 << *(v0 + 456)) + 63) >> 6))
    {
      v58 = *(v0 + 184);
      v57 = *(v0 + 192);
      v60 = *(v0 + 168);
      v59 = *(v0 + 176);
      v61 = *(v0 + 160);

      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E4C98();
      (*(v58 + 8))(v57, v59);
      sub_1E5FAB460(v60, v61, &qword_1ED072910, &qword_1E65EC030);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v65 = **(v0 + 160);
          goto LABEL_49;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v63 = *(v0 + 160);
          v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
          v65 = *v63;
          v66 = sub_1E65D76A8();
          (*(*(v66 - 8) + 8))(&v63[v64], v66);
          goto LABEL_49;
        }

        sub_1E5DFE50C(*(v0 + 160), &qword_1ED072910, &qword_1E65EC030);
      }

      v65 = 0;
LABEL_49:
      v67 = *(v0 + 352);
      v68 = *(v0 + 80);
      v69 = *(v0 + 88);
      v70 = swift_task_alloc();
      v70[2] = v0 + 48;
      v70[3] = v65;
      v70[4] = v69;
      *(v0 + 432) = sub_1E6402E7C(sub_1E651D244, v70, v68);

      if (*(v67 + 16))
      {
        v71 = swift_task_alloc();
        *(v0 + 440) = v71;
        *v71 = v0;
        v71[1] = sub_1E65172DC;
        v72 = *(v0 + 96);

        return sub_1E6518F28(v72);
      }

      else
      {

        v81 = MEMORY[0x1E69E7CC0];
        sub_1E5FAA3C8(*(v0 + 432));
        v74 = sub_1E600A848(v81);

        v73 = *(v0 + 8);

        return v73(v74);
      }
    }

    v47 = *(v48 + 8 * v49 + 64);
    ++v45;
  }

  while (!v47);
  v45 = v49;
LABEL_39:
  *(v0 + 376) = v47;
  *(v0 + 384) = v45;
  v50 = __clz(__rbit64(v47)) | (v45 << 6);
  v51 = *(*(v48 + 48) + v50);
  *(v0 + 457) = v51;
  v52 = *(*(v48 + 56) + 8 * v50);
  *(v0 + 392) = v52;
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);

  v53 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 400) = v54;
  v55 = sub_1E634BE4C(v51);
  v80 = (v53 + *v53);
  v56 = swift_task_alloc();
  *(v0 + 408) = v56;
  *v56 = v0;
  v56[1] = sub_1E65167C8;

  return v80(v55, v52);
}

uint64_t sub_1E65172DC()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_1E6517844;
  }

  else
  {
    v2 = sub_1E6517438;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6517438()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1E5DFE50C(v0[12], &qword_1ED075868, &qword_1E65F1E60);
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = v0[44];
    v6 = v0[15];
    v7 = v0[11];
    (*(v2 + 32))(v6, v3, v1);
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v4 = sub_1E6402E7C(sub_1E651D264, v8, v5);

    (*(v2 + 8))(v6, v1);
  }

  sub_1E5FAA3C8(v0[54]);
  v9 = sub_1E600A848(v4);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1E65176C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6517844()
{
  (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
  sub_1E5DFE50C(v0[12], &qword_1ED075868, &qword_1E65F1E60);
  v4 = MEMORY[0x1E69E7CC0];
  sub_1E5FAA3C8(v0[54]);
  v3 = sub_1E600A848(v4);

  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_1E6517A28()
{
  v0 = sub_1E65DFDA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseItemContext(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04E8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = type metadata accessor for ItemContext;
    v20 = v6;
LABEL_10:
    sub_1E651D43C(v20, v19);
    v18 = 0;
    return v18 & 1;
  }

  sub_1E5E1EB40(v6, v12, type metadata accessor for BrowseItemContext);
  sub_1E5E1DE44(v12, v10, type metadata accessor for BrowseItemContext);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1E651D43C(v12, type metadata accessor for BrowseItemContext);
    v20 = v10;
    v19 = type metadata accessor for BrowseItemContext;
    goto LABEL_10;
  }

  (*(v1 + 32))(v3, v10, v0);
  sub_1E65DFD68();
  v13 = sub_1E65DFFA8();
  v15 = v14;
  if (v13 == sub_1E65DFFA8() && v15 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1E65E6C18();
  }

  (*(v1 + 8))(v3, v0);
  sub_1E651D43C(v12, type metadata accessor for BrowseItemContext);
  return v18 & 1;
}

uint64_t sub_1E6517D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a4;
  v136 = a3;
  v140 = a2;
  v144 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v123 = &v107[-v7];
  v125 = sub_1E65D72D8();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v122 = &v107[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v126 = &v107[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v135 = &v107[-v12];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v107[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v134 = &v107[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v111 = &v107[-v17];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v19 = &v107[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v112 = &v107[-v21];
  v22 = sub_1E65D9AC8();
  v129 = *(v22 - 8);
  v130 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v107[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_1E65D7848();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v128 = &v107[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D0, &qword_1E65F1FD8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v127 = &v107[-v26];
  v121 = sub_1E65DF978();
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v133 = &v107[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1E65D8258();
  v137 = *(v28 - 8);
  v138 = v28;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v107[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v139 = &v107[-v32];
  v33 = sub_1E65DFDA8();
  v34 = *(v33 - 8);
  v141 = v33;
  v142 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v143 = &v107[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for ItemContext(0);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v131 = &v107[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v107[-v39];
  v41 = type metadata accessor for BrowseItemContext(0);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v107[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v107[-v45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v120 = a1;
  sub_1E65E04E8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v70 = type metadata accessor for ItemContext;
    v71 = v40;
LABEL_17:
    sub_1E651D43C(v71, v70);
    v72 = 1;
    v73 = v144;
    goto LABEL_18;
  }

  sub_1E5E1EB40(v40, v46, type metadata accessor for BrowseItemContext);
  sub_1E5E1DE44(v46, v44, type metadata accessor for BrowseItemContext);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1E651D43C(v46, type metadata accessor for BrowseItemContext);
    v71 = v44;
    v70 = type metadata accessor for BrowseItemContext;
    goto LABEL_17;
  }

  v47 = v142;
  v48 = v143;
  v49 = v44;
  v50 = v141;
  (*(v142 + 32))(v143, v49, v141);
  v51 = sub_1E65DFD58();
  v52 = *v140;
  if (!*(*v140 + 16))
  {
    goto LABEL_15;
  }

  v53 = sub_1E6417674(v51);
  if ((v54 & 1) == 0)
  {
    goto LABEL_15;
  }

  v55 = *(*(v52 + 56) + 8 * v53);

  v56 = sub_1E65DFD38();
  if (!*(v55 + 16))
  {

LABEL_14:
    v47 = v142;
    v48 = v143;
LABEL_15:
    (*(v47 + 8))(v48, v50);
LABEL_16:
    v70 = type metadata accessor for BrowseItemContext;
    v71 = v46;
    goto LABEL_17;
  }

  v58 = sub_1E6215038(v56, v57);
  v60 = v59;

  if ((v60 & 1) == 0)
  {

    v50 = v141;
    goto LABEL_14;
  }

  v61 = v137;
  v62 = *(v55 + 56) + *(v137 + 72) * v58;
  v63 = v138;
  (*(v137 + 16))(v31, v62, v138);

  v64 = v139;
  (*(v61 + 32))(v139, v31, v63);
  if (v136)
  {
    v65 = sub_1E65D80B8();
    v67 = v66;
    v147 = v65;
    v148 = v66;
    v69 = v68 & 1;
    v149 = v68 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v65, v67, v69);
    if (v145 == 3)
    {
      v64 = v139;
    }

    else
    {
      v76 = sub_1E637CE70(v145, v136);
      v64 = v139;
      if ((v76 & 1) == 0)
      {
LABEL_21:
        (*(v137 + 8))(v64, v138);
        (*(v142 + 8))(v143, v141);
        goto LABEL_16;
      }
    }
  }

  v77 = sub_1E65D80C8();
  v79 = v78;
  v147 = v77;
  v148 = v78;
  v81 = v80 & 1;
  v149 = v80 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7F98();
  sub_1E5F87058(v77, v79, v81);
  v82 = MEMORY[0x1E69479A0](v145, v146);
  if (v82 == 9)
  {
    goto LABEL_21;
  }

  LODWORD(v140) = v82;
  v83 = v142;
  v84 = v127;
  v85 = v141;
  (*(v142 + 16))(v127, v143, v141);
  (*(v83 + 56))(v84, 0, 1, v85);
  v108 = sub_1E65DFD58();
  v86 = *v132;
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  v136 = v86;
  sub_1E65E4EC8();

  v87 = v111;
  v88 = v110;
  sub_1E65E4C98();
  v89 = v112;
  sub_1E60EEE88(v112);
  sub_1E5DFE50C(v87, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v109 + 8))(v19, v88);
  v91 = v129;
  v90 = v130;
  v92 = *(v129 + 48);
  if (v92(v89, 1, v130) == 1)
  {
    v93 = v114;
    MEMORY[0x1E6941490]();
    if (v92(v89, 1, v90) != 1)
    {
      sub_1E5DFE50C(v89, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    v93 = v114;
    (*(v91 + 32))(v114, v89, v90);
  }

  v94 = v132 + *(type metadata accessor for AppComposer(0) + 20);
  v95 = type metadata accessor for AppEnvironment(0);
  v96 = v127;
  v97 = v128;
  sub_1E6126760(v127, v108, v140, v128, &v94[*(v95 + 136)], v133);
  (*(v129 + 8))(v93, v130);
  (*(v113 + 8))(v97, v115);
  sub_1E5DFE50C(v96, &qword_1ED0758D0, &qword_1E65F1FD8);
  sub_1E65E04E8();
  swift_getKeyPath();
  v98 = v116;
  sub_1E65E4EC8();

  v99 = sub_1E65DFD28();
  sub_1E6501834(v98, v99, v100, v94[8], v134);

  (*(v117 + 8))(v98, v118);
  sub_1E62E2980(v135);
  v101 = v123;
  sub_1E65DF938();
  v102 = v124;
  v103 = *(v124 + 48);
  v104 = v125;
  if (v103(v101, 1, v125) == 1)
  {
    v105 = v122;
    sub_1E65D7228();
    v106 = v105;
    if (v103(v101, 1, v104) != 1)
    {
      sub_1E5DFE50C(v101, &qword_1ED072D90, &qword_1E66040F0);
    }
  }

  else
  {
    v106 = v122;
    (*(v102 + 32))(v122, v101, v104);
  }

  sub_1E622BB88(v106, v126);
  (*(v102 + 8))(v106, v104);
  v140 = type metadata accessor for ActionButtonDescriptor(0);
  v136 = type metadata accessor for ArtworkDescriptor(0);
  v132 = type metadata accessor for ContextMenu(0);
  v130 = type metadata accessor for ItemMetrics(0);
  v129 = type metadata accessor for ViewDescriptor(0);
  v128 = sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v73 = v144;
  sub_1E65E0488();
  (*(v119 + 8))(v133, v121);
  (*(v137 + 8))(v139, v138);
  (*(v142 + 8))(v143, v141);
  sub_1E651D43C(v46, type metadata accessor for BrowseItemContext);
  v72 = 0;
LABEL_18:
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v74 - 8) + 56))(v73, v72, 1, v74);
}

uint64_t sub_1E6518F28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65E13D8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65E1248();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1E65E1518();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65190A0, 0, 0);
}

uint64_t sub_1E65190A0()
{
  sub_1E65E14F8();
  *(v0 + 144) = *(type metadata accessor for AppComposer(0) + 20);
  type metadata accessor for AppEnvironment(0);
  v1 = MarketingService.fetchMarketingItem.getter();
  *(v0 + 104) = v2;
  sub_1E65E1508();
  v3 = sub_1E65E1268();
  v5 = v4;
  *(v0 + 112) = v4;
  v8 = (v1 + *v1);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_1E651920C;

  return (v8)(v3, v5, 0, 0);
}

uint64_t sub_1E651920C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_1E651950C;
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = sub_1E6519380;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6519380()
{
  v1 = v0[17];
  v2 = v0[9];
  v11 = v0[10];
  v12 = v0[12];
  v3 = v0[8];
  v9 = v0[7];
  v10 = v0[11];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  sub_1E65E1238();
  (*(v5 + 104))(v4, *MEMORY[0x1E699E7F8], v6);
  sub_1E65E13C8();
  (*(v5 + 8))(v4, v6);
  swift_getObjectType();
  sub_1E65E1348();

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v9);
  (*(v10 + 8))(v12, v11);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E651950C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E65195A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v33 = a1;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = v32 - v8;
  v34 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v34);
  v40 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v38 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v32 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABC8, &qword_1E6608D48);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v36 = *(v21 - 8);
  v37 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v32 - v22);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v24 = type metadata accessor for AppComposer(0);
  sub_1E6257A90(v23, *(a2 + *(v24 + 20) + 8), v20);
  sub_1E5DFD1CC(v20, v18, &qword_1ED07ABC8, &qword_1E6608D48);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1E5DFE50C(v20, &qword_1ED07ABC8, &qword_1E6608D48);
    (*(v36 + 8))(v23, v37);
    sub_1E5DFE50C(v18, &qword_1ED07ABC8, &qword_1E6608D48);
    v25 = 1;
    v26 = v43;
  }

  else
  {
    v27 = v39;
    sub_1E5FAB460(v18, v39, &qword_1ED072610, &qword_1E65EB930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
    sub_1E65E04E8();
    sub_1E5DFD1CC(v27, v38, &qword_1ED072610, &qword_1E65EB930);
    v28 = type metadata accessor for ContextMenu(0);
    (*(*(v28 - 8) + 56))(v41, 1, 1, v28);
    v29 = type metadata accessor for ItemMetrics(0);
    (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
    v35 = type metadata accessor for ActionButtonDescriptor(0);
    v33 = type metadata accessor for ArtworkDescriptor(0);
    v32[2] = type metadata accessor for ViewDescriptor(0);
    v32[1] = sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    v32[0] = sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v26 = v43;
    sub_1E65E0488();
    sub_1E5DFE50C(v39, &qword_1ED072610, &qword_1E65EB930);
    sub_1E5DFE50C(v20, &qword_1ED07ABC8, &qword_1E6608D48);
    (*(v36 + 8))(v23, v37);
    v25 = 0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v30 - 8) + 56))(v26, v25, 1, v30);
}

uint64_t sub_1E6519D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65DFAC8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DFA08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(type metadata accessor for AppState(0) + 96) + 8);
  if (*(v13 + 16) && (v14 = sub_1E6215038(a2, a3), (v15 & 1) != 0))
  {
    (*(v10 + 16))(v12, *(v13 + 56) + *(v10 + 72) * v14, v9);
    sub_1E65DF9C8();
    (*(v10 + 8))(v12, v9);
    v16 = sub_1E65DFAB8();
    sub_1E651D43C(v8, MEMORY[0x1E699D4C0]);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1E6519EB0(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA880;

  return v4();
}

uint64_t sub_1E6519F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v71 = a2;
  v73 = a4;
  v65 = sub_1E65DFAC8();
  v5 = MEMORY[0x1EEE9AC00](v65);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v60 - v7;
  v8 = sub_1E65DFA08();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB90, &qword_1E6608B68);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v60 - v13;
  v75 = sub_1E65DFB08();
  v14 = *(v75 - 8);
  v15 = MEMORY[0x1EEE9AC00](v75);
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v60 - v25;
  v27 = sub_1E65D7848();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v77 = a1;
  sub_1E65E4C98();
  sub_1E5E1F544(v26);
  sub_1E5DFE50C(v23, &qword_1ED071F78, &unk_1E65EA3F0);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    sub_1E65D77C8();
    if (v31(v26, 1, v27) != 1)
    {
      sub_1E5DFE50C(v26, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
  }

  v68 = v30;
  v32 = *(v77 + *(v74 + 96) + 8);
  sub_1E6143704(v19);
  v33 = sub_1E65DFAF8();
  v35 = v34;
  v67 = *(v14 + 8);
  v67(v19, v75);
  if (*(v32 + 16))
  {
    v36 = sub_1E6215038(v33, v35);
    v38 = v37;

    v39 = v76;
    if (v38)
    {
      v41 = v63;
      v40 = v64;
      v42 = *(v32 + 56) + *(v63 + 72) * v36;
      v43 = v60;
      (*(v63 + 16))(v60, v42, v64);
      v44 = v66;
      sub_1E65DF9D8();
      (*(v41 + 8))(v43, v40);
      v45 = v75;
      (*(v14 + 56))(v44, 0, 1, v75);
      (*(v14 + 32))(v39, v44, v45);
      goto LABEL_11;
    }
  }

  else
  {

    v39 = v76;
  }

  v46 = v66;
  v45 = v75;
  (*(v14 + 56))(v66, 1, 1, v75);
  sub_1E6143704(v39);
  if ((*(v14 + 48))(v46, 1, v45) != 1)
  {
    sub_1E5DFE50C(v46, &qword_1ED07AB90, &qword_1E6608B68);
  }

LABEL_11:
  type metadata accessor for AppComposer(0);
  LODWORD(v75) = sub_1E65DAE08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  sub_1E65E2358();
  sub_1E63969B4();
  v47 = v69;
  sub_1E6143704(v69);
  v48 = sub_1E65DFAF8();
  v50 = v49;
  v67(v47, v45);
  if (!*(v32 + 16))
  {

    goto LABEL_15;
  }

  v51 = sub_1E6215038(v48, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return sub_1E65DF9E8();
  }

  v54 = *(v32 + 56);
  v56 = v63;
  v55 = v64;
  v57 = v61;
  (*(v63 + 16))(v61, v54 + *(v63 + 72) * v51, v64);
  v58 = v62;
  sub_1E65DF9C8();
  (*(v56 + 8))(v57, v55);
  sub_1E5E1EB40(v58, v72, MEMORY[0x1E699D4C0]);
  return sub_1E65DF9E8();
}

uint64_t sub_1E651A730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079378, &qword_1E66014E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v41 = sub_1E65DFB08();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65DFC18();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DFAC8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E0218();
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  sub_1E65DF9C8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = MEMORY[0x1E699D4C0];
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218);

  sub_1E65DFA58();
  if (swift_getEnumCaseMultiPayload())
  {
    v19 = MEMORY[0x1E699D488];
LABEL_5:
    sub_1E651D43C(v15, v19);
    goto LABEL_6;
  }

  v26 = *(v39 + 32);
  v36 = v16;
  v26(v18, v15, v16);
  sub_1E65E01F8();
  v38 = sub_1E65DFBC8();
  v35 = v27;
  v28 = v40 + 8;
  v29 = *(v40 + 8);
  v29(v12, v10);
  sub_1E65E01F8();
  v30 = sub_1E65DFC08();
  v40 = v28;
  v37 = v29;
  v29(v12, v10);
  v31 = v35;
  v32 = sub_1E637D220(0, v30);

  if (v32)
  {
    type metadata accessor for AppState(0);

    sub_1E60F225C(&v45, v38, v31);
  }

  sub_1E65E01F8();
  v33 = sub_1E65DFC08();
  v37(v12, v10);
  v34 = sub_1E637D220(1, v33);

  if (v34)
  {
    type metadata accessor for AppState(0);
    sub_1E60F225C(&v45, v38, v31);

    (*(v39 + 8))(v18, v36);
  }

  else
  {
    (*(v39 + 8))(v18, v36);
  }

LABEL_6:
  sub_1E6143704(v9);
  v20 = sub_1E65DFAF8();
  v22 = v21;
  (*(v7 + 8))(v9, v41);
  v23 = sub_1E65DFA08();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v6, v43, v23);
  (*(v24 + 56))(v6, 0, 1, v23);
  type metadata accessor for AppState(0);
  sub_1E64097CC(v6, v20, v22);
  sub_1E65DF9F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  return sub_1E65E2368();
}

uint64_t sub_1E651ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1E65DFA08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DFA18();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5E1DE44(a1, v14, MEMORY[0x1E699D470]);
  (*(v9 + 16))(v11, a3, v8);
  v19 = a5[3];
  v29[0] = *a5;
  v29[1] = v19;
  v20 = a5[7];
  v29[2] = a5[5];
  v29[3] = v20;
  v29[4] = a5[9];
  v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v22 = (v13 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1E5E1EB40(v14, v24 + v21, MEMORY[0x1E699D470]);
  (*(v9 + 32))(v24 + v22, v11, v8);
  v25 = (v24 + v23);
  v26 = *(a5 + 3);
  v25[2] = *(a5 + 2);
  v25[3] = v26;
  v25[4] = *(a5 + 4);
  v27 = *(a5 + 1);
  *v25 = *a5;
  v25[1] = v27;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v17, &unk_1E6608B60, v24);
}

uint64_t sub_1E651AFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[6] = type metadata accessor for RouteResource(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651B078, 0, 0);
}

uint64_t sub_1E651B078()
{
  sub_1E5E1DE44(*(v0 + 32), *(v0 + 56), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 23)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
    v4 = *(v3 + 48);
    sub_1E61B73EC(*(v1 + *(v3 + 64)), *(v1 + *(v3 + 64) + 8));
    v5 = sub_1E65E5528();
    (*(*(v5 - 8) + 8))(v1 + v4, v5);
    v6 = sub_1E65E57D8();
    (*(*(v6 - 8) + 8))(v1, v6);
    v7 = v2[3];
    v8 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    *(v0 + 16) = 2;
    *(v0 + 24) = -64;
    *(v0 + 26) = 0;
    v17 = (*(v8 + 72) + **(v8 + 72));
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_1E6253728;
    v10 = *(v0 + 32);

    return v17(v10, v0 + 16, 1, v0 + 26, v7, v8);
  }

  else
  {
    v12 = *(v0 + 40);
    sub_1E651D43C(*(v0 + 56), type metadata accessor for RouteResource);
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1E600F5B0((v0 + 25));
    v15 = swift_task_alloc();
    *(v0 + 64) = v15;
    *v15 = v0;
    v15[1] = sub_1E62535EC;
    v16 = *(v0 + 32);

    return RoutingContext.appendDestination(_:priority:)(v16, (v0 + 25), v13, v14);
  }
}

unint64_t sub_1E651B3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1E5DFE50C(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_1E5DFE50C(a4, v31, v32);
  }

  result = sub_1E5E1DE44(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_1E5DFE50C(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1E651B53C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E6065840(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E651B5CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  result = sub_1E64FF820(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
  *a9 = result;
  a9[1] = v14;
  return result;
}

uint64_t sub_1E651B60C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 18) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 87) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1E65D76F8() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1E65E3C48() - 8);
  result = sub_1E64FF820(a1, *(v2 + 16), *(v2 + 17), v2 + v6, *(v2 + v7), v2 + v8, (v2 + v9), *(v2 + v10), *(v2 + v10 + 8), v2 + v12, v2 + ((v13 + *(v14 + 80) + v12) & ~*(v14 + 80)));
  *a2 = result;
  a2[1] = v16;
  return result;
}

uint64_t sub_1E651B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 18) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 87) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = (*(v10 + 80) + v9 + 16) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1E65E3D38() - 8);
  v14 = (v12 + *(v13 + 80) + v11) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(sub_1E65E3C48() - 8);
  return sub_1E64FFE4C(a1, *(v2 + 16), *(v2 + 17), v2 + v5, *(v2 + v6), v2 + v7, v2 + v8, *(v2 + v9), a2, *(v2 + v9 + 8), v2 + v11, v2 + v14, v2 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)));
}

unint64_t sub_1E651B990()
{
  result = qword_1ED07AB50;
  if (!qword_1ED07AB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AB48, &qword_1E6608998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AB58, &qword_1E66089A0);
    sub_1E5FED46C(&qword_1ED07AB60, &qword_1ED07AB58, &qword_1E66089A0, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    sub_1E651D5E4(&qword_1EE2D4C38, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB50);
  }

  return result;
}

unint64_t sub_1E651BAF4()
{
  result = qword_1ED07AB78;
  if (!qword_1ED07AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AB70, &qword_1E66089B0);
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB78);
  }

  return result;
}

uint64_t sub_1E651BBAC(uint64_t a1)
{
  v3 = *(sub_1E65E3E08() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E6125488(a1, v4);
}

uint64_t sub_1E651BC90(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E651BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(type metadata accessor for AppComposer(0) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E650B9FC(a1, a2, a3, a4, a5, v5 + v13);
}

uint64_t sub_1E651BE30(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5FEE4D4;

  return sub_1E650C6C4(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E651BF20(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5FE99E8;

  return sub_1E650D5F4(a1, a2, v2 + v7);
}

uint64_t sub_1E651C000()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E650EE94(v0);
}

uint64_t sub_1E651C090(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F00C(a1, v1 + v5);
}

uint64_t sub_1E651C16C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F41C(a1, v1 + v5);
}

uint64_t sub_1E651C248(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F5C4(a1, v1 + v5);
}

uint64_t sub_1E651C324(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650F76C(a1, v1 + v5);
}

uint64_t sub_1E651C400(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650FB94(a1, v1 + v5);
}

uint64_t sub_1E651C4DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E650FFA4(a1, v1 + v5);
}

uint64_t sub_1E651C5B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615DCA4(a1, v1 + v5);
}

uint64_t sub_1E651C694(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651014C(a1, v1 + v5);
}

uint64_t sub_1E651C770(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651055C(a1, v1 + v5);
}

uint64_t sub_1E651C84C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6510704(a1, v1 + v5);
}

uint64_t sub_1E651C928()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63E6790(v0);
}

uint64_t sub_1E651C9C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA78C;

  return sub_1E6511D4C(v0);
}

uint64_t sub_1E651CA50()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6519EB0(v2);
}

uint64_t sub_1E651CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BrowsePage(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E6519F98(a1, v2 + v6, v9, a2);
}

uint64_t sub_1E651CBE0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BrowsePage(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E651A730(a1, a2, v6);
}

uint64_t sub_1E651CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E651ACC8(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1E651CD14(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65DFA18() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65DFA08() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E617F570(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E651CE98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E650DB98(a1, v4);
}

uint64_t sub_1E651CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E6513714(a1, v2 + v6, v7, a2);
}

uint64_t sub_1E651D04C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FEE4D4;

  return sub_1E65141DC(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E651D164(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E651538C(a1, v1 + v5);
}

uint64_t sub_1E651D290@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1E6515108(a1, a2, v8, a3);
}

uint64_t sub_1E651D338(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E651AFE4(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1E651D43C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E651D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TaskScheduler.ScheduledTask(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E651D5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1E651D668()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  v13 = [v25 calendar];
  if (v13)
  {
    v14 = v13;
    sub_1E65D78A8();

    v15 = sub_1E65D7908();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  else
  {
    v15 = sub_1E65D7908();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_1E651DED4(v10, v12);
  sub_1E65D7908();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v12, 1, v15))
  {
    sub_1E651DF44(v12, v7);
    if (v17(v7, 1, v15) == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_1E65D7888();
      (*(v16 + 8))(v7, v15);
    }

    v23 = v25;
    [v25 setCalendar_];

    sub_1E651DFB4(v12);
  }

  else
  {
    v19 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
    swift_beginAccess();
    v20 = sub_1E65D7848();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v3, v0 + v19, v20);
    (*(v21 + 56))(v3, 0, 1, v20);
    sub_1E65D78D8();
    v22 = 0;
    if (v17(v12, 1, v15) != 1)
    {
      v22 = sub_1E65D7888();
      (*(v16 + 8))(v12, v15);
    }

    v23 = v25;
    [v25 setCalendar_];
  }

  return v23;
}

uint64_t sub_1E651DA28()
{
  v1 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
  v2 = sub_1E65D7848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t static LocalizationService.simulator()@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D77A8();
  type metadata accessor for SimulatorLocalizationService(0);
  v6 = swift_allocObject();
  sub_1E65D77A8();
  (*(v3 + 8))(v5, v2);
  *a1 = sub_1E651DCE0;
  a1[1] = v6;
  a1[2] = sub_1E651DCE8;
  a1[3] = v6;
  a1[4] = sub_1E651DE34;
  a1[5] = v6;
  return swift_retain_n();
}

uint64_t type metadata accessor for SimulatorLocalizationService(uint64_t a1)
{
  result = qword_1ED07ABF8;
  if (!qword_1ED07ABF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E651DC4C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
  swift_beginAccess();
  v5 = sub_1E65D7848();
  (*(*(v5 - 8) + 24))(a2 + v4, a1, v5);
  return swift_endAccess();
}

id sub_1E651DCEC(uint64_t a1)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v7 = OBJC_IVAR____TtC26FitnessLocalizationService28SimulatorLocalizationService_currentLocale;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v7, v2);
  v8 = sub_1E65D7798();
  (*(v3 + 8))(v5, v2);
  [v6 setLocale_];

  return v6;
}

uint64_t sub_1E651DE44(uint64_t a1)
{
  result = sub_1E65D7848();
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

uint64_t sub_1E651DED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E651DF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E651DFB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E651E01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D7828();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
  swift_beginAccess();
  v9 = sub_1E65D7848();
  (*(*(v9 - 8) + 24))(a2 + v8, a1, v9);
  swift_endAccess();
  sub_1E65D7838();
  sub_1E65D7808();
  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer), *(a2 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer + 24));
  sub_1E65DB568();
}

id sub_1E651E1A4()
{
  v0 = sub_1E651E33C();

  return v0;
}

id sub_1E651E1D0(uint64_t a1)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_numberFormatter);
  [v10 setNumberStyle_];
  v6 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  v7 = sub_1E65D7798();
  (*(v3 + 8))(v5, v2);
  [v10 setLocale_];

  v8 = v10;

  return v8;
}

id sub_1E651E33C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v25 = *(v0 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_dateComponentsFormatter);
  v13 = [v25 calendar];
  if (v13)
  {
    v14 = v13;
    sub_1E65D78A8();

    v15 = sub_1E65D7908();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  else
  {
    v15 = sub_1E65D7908();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_1E651DED4(v10, v12);
  sub_1E65D7908();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v12, 1, v15))
  {
    sub_1E651DF44(v12, v7);
    if (v17(v7, 1, v15) == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_1E65D7888();
      (*(v16 + 8))(v7, v15);
    }

    v23 = v25;
    [v25 setCalendar_];

    sub_1E651DFB4(v12);
  }

  else
  {
    v19 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
    swift_beginAccess();
    v20 = sub_1E65D7848();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v3, v0 + v19, v20);
    (*(v21 + 56))(v3, 0, 1, v20);
    sub_1E65D78D8();
    v22 = 0;
    if (v17(v12, 1, v15) != 1)
    {
      v22 = sub_1E65D7888();
      (*(v16 + 8))(v12, v15);
    }

    v23 = v25;
    [v25 setCalendar_];
  }

  return v23;
}

uint64_t LocalizationService.updateLocale.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocalizationService.localizedDateComponentsFormatter.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LocalizationService.localizedNumberFormatter.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static HealthDataService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorHealthDataService();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = &unk_1E6608F28;
  a1[1] = v2;
  return result;
}

uint64_t sub_1E651E7F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651E8C0, a2, 0);
}

uint64_t sub_1E651E8C0()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E651E980(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E651E7F0(a1, v1);
}

uint64_t sub_1E651EA1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E651EA38, a2, 0);
}

uint64_t sub_1E651EA38()
{
  swift_getObjectType();
  sub_1E65DB658();
  sub_1E651EBA8();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E651EB0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E651EA1C(a1, v1);
}

unint64_t sub_1E651EBA8()
{
  result = qword_1EE2D6D50;
  if (!qword_1EE2D6D50)
  {
    sub_1E65DB658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6D50);
  }

  return result;
}

uint64_t HealthDataService.makeWheelchairStatusUpdatedStream.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchService.clearSearchHistory.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchService.fetchSearchLandingShelfTileDescriptors.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchService.fetchSearchResults.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchService.fetchSearchSuggestions.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SearchService.insertSearchHistory.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SearchService.makeIntentStream.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SearchService.publishSearchIntent.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t SearchService.querySearchHistory.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1E651EDD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1E651EE1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LiveSearchService.init(dependencies:)@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  *a2 = sub_1E65E1838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC18, &qword_1E66090E8);
  sub_1E65D7F18();
  sub_1E65D7F18();

  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1E651EF44()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 8), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC20, &qword_1E66091B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = *(v1 + 48);
  v5 = sub_1E6520688(inited);
  v0[8] = v5;
  swift_setDeallocating();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1E651F050;

  return MEMORY[0x1EEE34210](v5, v2, v3);
}

uint64_t sub_1E651F050()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E651F18C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E651F18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E651F1F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E651EF24(v0 + 16);
}

uint64_t sub_1E651F2A4()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E651F35C;

  return MEMORY[0x1EEE34220](v2, v3);
}

uint64_t sub_1E651F35C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E651F45C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FE99E8;

  return sub_1E651F284(v0 + 16);
}

uint64_t sub_1E651F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E651F514, 0, 0);
}

uint64_t sub_1E651F514()
{
  v1 = v0[4];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E6126414;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE34228](v5, v6, v2, v3);
}

uint64_t sub_1E651F5D4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651F4F0(a1, a2, v2 + 16);
}

uint64_t sub_1E651F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E651F6A4, 0, 0);
}

uint64_t sub_1E651F6A4()
{
  v1 = v0[5];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1E651F768;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE34218](v7, v5, v6, v2, v3);
}

uint64_t sub_1E651F768()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E651F85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFA78C;

  return sub_1E651F680(a1, a2, a3, v3 + 16);
}

uint64_t sub_1E651F910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1E65D76A8();
  v3[5] = swift_task_alloc();
  v4 = sub_1E65D8AB8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651FA00, 0, 0);
}

uint64_t sub_1E651FA00()
{
  v1 = v0[4];

  sub_1E65D7688();
  sub_1E65D8A98();
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E651FAF8;
  v5 = v0[8];

  return MEMORY[0x1EEE34208](v5, v2, v3);
}

uint64_t sub_1E651FAF8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E6211EC8;
  }

  else
  {
    v2 = sub_1E651FC0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E651FC0C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E651FC94(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E651F910(a1, a2, v2 + 16);
}

uint64_t sub_1E651FD3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC38, &qword_1E66091D0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E651FE08, 0, 0);
}

uint64_t sub_1E651FE08()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v0 + 56) = **(v0 + 24);
  *v1 = 1;
  (*(v2 + 104))();
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC40, &qword_1E66091D8);
  v3[4] = sub_1E5FED46C(&qword_1ED07AC48, &qword_1ED07AC40, &qword_1E66091D8, MEMORY[0x1E69E86A0]);
  *(v0 + 64) = __swift_allocate_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0, MEMORY[0x1E699F0F8]);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E651FF5C, v5, v4);
}

uint64_t sub_1E651FF5C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E17F8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E651FFF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E651FD3C(a1, v1 + 16);
}

uint64_t sub_1E652008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E65200B0, 0, 0);
}

uint64_t sub_1E65200B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 48);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0, MEMORY[0x1E699F0F8]);
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E652018C, v4, v3);
}

uint64_t sub_1E652018C()
{
  sub_1E6237A2C();
  sub_1E65E1828();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6520204(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652008C(a1, a2, v2 + 16);
}

uint64_t sub_1E65202CC()
{
  v1 = v0[7];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 8), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC20, &qword_1E66091B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = *(v1 + 48);
  v5 = sub_1E6520688(inited);
  v0[8] = v5;
  swift_setDeallocating();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1E65203D8;

  return MEMORY[0x1EEE34200](v5, v2, v3);
}

uint64_t sub_1E65203D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E651F18C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1E6520530()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65202AC(v0 + 16);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E65205E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1E6520628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6520688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC28, &unk_1E66091C0);
    v3 = sub_1E65E6888();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      sub_1E65E6D28();
      v11 = sub_1E65DAE38();
      MEMORY[0x1E694E740](v11);
      result = sub_1E65E6D78();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = sub_1E65DAE38();
        result = sub_1E65DAE38();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E65207C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E65D76A8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E65D8AB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;

  sub_1E65D7688();
  sub_1E65DAE28();
  sub_1E65D8A98();
  (*(v5 + 16))(v8, v13, v4);
  sub_1E6521998(v11, v8);
  v14 = *(v5 + 8);
  v14(v11, v4);
  return (v14)(v13, v4);
}

uint64_t static SearchService.simulator()@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC50, &unk_1E66091E0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  v3 = sub_1E65E1838();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v3;
  *a1 = &unk_1E66091F8;
  a1[1] = v4;
  a1[2] = &unk_1E6609208;
  a1[3] = v5;
  a1[4] = &unk_1E6609218;
  a1[5] = v6;
  a1[6] = &unk_1E6609228;
  a1[7] = v7;
  a1[8] = &unk_1E6609238;
  a1[9] = v8;
  a1[10] = &unk_1E6609248;
  a1[11] = v9;
  a1[12] = &unk_1E6609258;
  a1[13] = v10;
  a1[14] = &unk_1E6609268;
  a1[15] = v11;
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1E6520BE4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6520C68()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6520BC4(v2);
}

uint64_t sub_1E6520D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC70, &qword_1E66092C8);
  sub_1E65D9338();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E65EA670;
  sub_1E65D9318();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E6520E10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E6520D00();
}

uint64_t sub_1E6520EC8()
{
  sub_1E65D8708();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6520F2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6520EA8(a1);
}

uint64_t sub_1E6521000()
{
  sub_1E65DA028();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6521064(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6520FE0(a1);
}

uint64_t sub_1E6521128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652114C, 0, 0);
}

uint64_t sub_1E652114C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v1 + 6);
  sub_1E652197C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6521210(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6521128(a1, a2, v6);
}

uint64_t sub_1E65212C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC38, &qword_1E66091D0);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652138C, 0, 0);
}

uint64_t sub_1E652138C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  **(v0 + 48) = 1;
  (*(v1 + 104))();
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC40, &qword_1E66091D8);
  v2[4] = sub_1E5FED46C(&qword_1ED07AC48, &qword_1ED07AC40, &qword_1E66091D8, MEMORY[0x1E69E86A0]);
  *(v0 + 56) = __swift_allocate_boxed_opaque_existential_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0, MEMORY[0x1E699F0F8]);
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65214D8, v4, v3);
}

uint64_t sub_1E65214D8()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  sub_1E65E17F8();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652156C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E65212C0(a1, v5, v4);
}

uint64_t sub_1E6521618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a2;
  v4[6] = a4;
  v4[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652163C, 0, 0);
}

uint64_t sub_1E652163C()
{
  v1 = v0[5];
  v0[2] = v0[4];
  v0[3] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC10, &qword_1E66090E0);
  sub_1E5FED46C(&qword_1ED07AC30, &qword_1ED07AC10, &qword_1E66090E0, MEMORY[0x1E699F0F8]);
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6521710, v3, v2);
}

uint64_t sub_1E6521710()
{
  sub_1E6237A2C();
  sub_1E65E1828();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6521784(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6521618(a1, a2, v7, v6);
}

uint64_t sub_1E6521854()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E65218D4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6521834(v2);
}

uint64_t sub_1E6521998(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65D8AB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E6521C50(&qword_1ED07AC58, MEMORY[0x1E69CB810]);
  v33 = a2;
  v11 = sub_1E65E5B38();
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
      sub_1E6521C50(&qword_1ED07AC60, MEMORY[0x1E69CB818]);
      v21 = sub_1E65E5B98();
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
    sub_1E6521FDC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E6521C50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E65D8AB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E6521C94(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1E65D8AB8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC68, &qword_1E66092C0);
  result = sub_1E65E6868();
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
      sub_1E6521C50(&qword_1ED07AC58, MEMORY[0x1E69CB810]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6521FDC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E65D8AB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E6521C94(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E6522258();
      goto LABEL_12;
    }

    sub_1E6522490(v10 + 1);
  }

  v12 = *v3;
  sub_1E6521C50(&qword_1ED07AC58, MEMORY[0x1E69CB810]);
  v13 = sub_1E65E5B38();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1E6521C50(&qword_1ED07AC60, MEMORY[0x1E69CB818]);
      v21 = sub_1E65E5B98();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E6522258()
{
  v1 = v0;
  v2 = sub_1E65D8AB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC68, &qword_1E66092C0);
  v6 = *v0;
  v7 = sub_1E65E6858();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1E6522490(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65D8AB8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC68, &qword_1E66092C0);
  v7 = sub_1E65E6868();
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
      sub_1E6521C50(&qword_1ED07AC58, MEMORY[0x1E69CB810]);
      result = sub_1E65E5B38();
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

uint64_t ArchivedSessionService.queryAllArchivedSessions.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArchivedSessionService.queryAllCompletedWorkoutIdentifiers.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArchivedSessionService.queryResumableSessions.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArchivedSessionService.makeSampleContentArchivedSessionsUpdatedStream.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ArchivedSessionService.requireArchivedSessions.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ArchivedSessionService.requireNoArchivedSessions.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ArchivedSessionService.requireSampleContentSessionsAllowed.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_1E6522918()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACD0, &qword_1E66094F0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65229E4, v0, 0);
}

uint64_t sub_1E65229E4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DD5D8();

  return MEMORY[0x1EEE6DFA0](sub_1E6522A78, 0, 0);
}

uint64_t sub_1E6522A78()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 25;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACD8, &qword_1E66094F8);
  *v3 = v0;
  v3[1] = sub_1E6522B9C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65277B0, v2, v4);
}

uint64_t sub_1E6522B9C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6522D30, 0, 0);
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];
    v7 = v2[2];

    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1E6522D30()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E628BB80, v1, 0);
}

uint64_t sub_1E6522DA8()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC98, &unk_1E66094A0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6522E74, v0, 0);
}

uint64_t sub_1E6522E74()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  sub_1E65DD5F8();

  return MEMORY[0x1EEE6DFA0](sub_1E6522F08, 0, 0);
}

uint64_t sub_1E6522F08()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 29;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  *v3 = v0;
  v3[1] = sub_1E652302C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65277E4, v2, v4);
}

uint64_t sub_1E652302C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65231C0, 0, 0);
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];
    v7 = v2[2];

    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1E65231C0()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E65277DC, v1, 0);
}

uint64_t sub_1E6523238(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACB8, &qword_1E66094D8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6523304, v1, 0);
}

uint64_t sub_1E6523304()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DD5E8();

  return MEMORY[0x1EEE6DFA0](sub_1E65233A0, 0, 0);
}

uint64_t sub_1E65233A0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 33;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACC0, &qword_1E66094E0);
  *v3 = v0;
  v3[1] = sub_1E65234C4;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6527784, v2, v4);
}

uint64_t sub_1E65234C4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6523658, 0, 0);
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v7 = v2[2];

    (*(v5 + 8))(v4, v6);

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1E6523658()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1E6233458, v1, 0);
}

uint64_t sub_1E65236D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65236F0, 0, 0);
}

uint64_t sub_1E65236F0()
{
  v1 = *(v0 + 16);
  *v1 = sub_1E65DDFA8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6523758(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6523778, 0, 0);
}

uint64_t sub_1E6523778()
{
  v1 = *(v0 + 16);
  *v1 = sub_1E65DE268();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65237E0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65238AC, v0, 0);
}

uint64_t sub_1E65238AC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1E65DD5C8();

  return MEMORY[0x1EEE6DFA0](sub_1E6523940, 0, 0);
}

uint64_t sub_1E6523940()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 45;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6523A50;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65276A8, v2, v4);
}

uint64_t sub_1E6523A50()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E6523C0C;
    v4 = 0;
  }

  else
  {
    v5 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_1E6523BA8;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6523BA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6523C0C()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E5FE45F0, v1, 0);
}

uint64_t sub_1E6523C84()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_1E65DA328();
  v1[8] = swift_task_alloc();
  v3 = sub_1E65D9728();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC98, &unk_1E66094A0);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6523E4C, v0, 0);
}

uint64_t sub_1E6523E4C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  sub_1E65DD5A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6523EE0, 0, 0);
}

uint64_t sub_1E6523EE0()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 49;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  *v3 = v0;
  v3[1] = sub_1E6524004;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65272D0, v2, v4);
}

uint64_t sub_1E6524004()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    v3 = sub_1E65245F4;
    v4 = 0;
  }

  else
  {
    v6 = v2[14];
    v5 = v2[15];
    v7 = v2[13];
    v8 = v2[4];
    v2[19] = v2[2];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E652417C;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E652417C()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v10 = v0[9];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACA0, &qword_1E66094B0);
  v6 = *(sub_1E65DA5E8() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E65EA670;
  *(v8 + v7) = v1;
  swift_storeEnumTagMultiPayload();
  sub_1E6527300(v8);
  swift_setDeallocating();
  sub_1E6527538(v8 + v7, MEMORY[0x1E69CCEF0]);
  swift_deallocClassInstance();
  sub_1E65D9718();
  (*(v4 + 16))(v2, v3, v10);
  sub_1E65DA318();
  __swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
  sub_1E65DD5B8();

  return MEMORY[0x1EEE6DFA0](sub_1E6524374, 0, 0);
}

uint64_t sub_1E6524374()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_1E6524480;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65277E0, v2, v4);
}

uint64_t sub_1E6524480()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {

    v3 = sub_1E6524910;
    v4 = 0;
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    v8 = v2[4];
    v7 = v2[5];
    v2[23] = v2[3];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E652470C;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E65245F4()
{
  v1 = v0[4];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return MEMORY[0x1EEE6DFA0](sub_1E6524670, v1, 0);
}

uint64_t sub_1E6524670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652470C()
{
  if (v0[23] < 1)
  {
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    sub_1E6527538(v0[8], MEMORY[0x1E69CCCA8]);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v1 = v0[12];
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[8];
    v5 = sub_1E65D9398();
    sub_1E6527598(&qword_1ED077F00, MEMORY[0x1E69CC0A0], MEMORY[0x1E69CC0A8]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69CC098], v5);
    swift_willThrow();
    sub_1E6527538(v4, MEMORY[0x1E69CCCA8]);
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6524910()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x1EEE6DFA0](sub_1E6524988, v1, 0);
}

uint64_t sub_1E6524988()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  sub_1E6527538(v0[8], MEMORY[0x1E69CCCA8]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6524A60(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6524B30, v2, 0);
}

uint64_t sub_1E6524B30()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 112), *(*(v0 + 40) + 136));
  sub_1E65DD598();

  return MEMORY[0x1EEE6DFA0](sub_1E6524BDC, 0, 0);
}

uint64_t sub_1E6524BDC()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "FitnessArchivedSessionService/LiveArchivedSessionService.swift";
  *(v2 + 24) = 62;
  *(v2 + 32) = 2;
  *(v2 + 40) = 60;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1E6524CF0;
  v4 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6526DE8, v2, v4);
}

uint64_t sub_1E6524CF0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    v3 = sub_1E6524F90;
    v4 = 0;
  }

  else
  {
    v6 = v2[7];
    v5 = v2[8];
    v8 = v2[5];
    v7 = v2[6];
    v2[12] = v2[2];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E6524E64;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6524E64()
{
  if (*(v0 + 96) >= 1)
  {
    v1 = sub_1E65DAAB8();
    sub_1E6527598(&qword_1ED07AC88, MEMORY[0x1E69CD110], MEMORY[0x1E69CD118]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CD108], v1);
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6524F90()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1E6525008, v1, 0);
}

uint64_t sub_1E6525008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652506C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6522918();
}

uint64_t sub_1E65250FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E652506C();
}

uint64_t sub_1E652518C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60C34A4;

  return sub_1E6522DA8();
}

uint64_t sub_1E652521C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E652518C();
}

uint64_t sub_1E65252AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E6523238(a1);
}

uint64_t sub_1E6525344(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FE99E8;

  return sub_1E65252AC(a1);
}

uint64_t sub_1E65253DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65253F8, a2, 0);
}

uint64_t sub_1E65253F8()
{
  swift_getObjectType();
  sub_1E65DDFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65254D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65253DC(a1, v1);
}

uint64_t sub_1E6525574(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6525590, a2, 0);
}

uint64_t sub_1E6525590()
{
  swift_getObjectType();
  sub_1E65DE278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6525670(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6525574(a1, v1);
}

uint64_t sub_1E652570C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65237E0();
}

uint64_t sub_1E652579C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652570C();
}

uint64_t sub_1E652582C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6523C84();
}

uint64_t sub_1E65258BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652582C();
}

uint64_t sub_1E652594C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6524A60(a1, a2);
}

uint64_t sub_1E65259F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652594C(a1, a2);
}

uint64_t sub_1E6525A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACE0, &qword_1E6609500);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACD0, &qword_1E66094F0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65277C8;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B18, v34);
}

uint64_t sub_1E6525E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACB0, &unk_1E66094C0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC98, &unk_1E66094A0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E5E20BB4;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E6526254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACC8, &qword_1E66094E8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACB8, &qword_1E66094D8);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E652779C;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E6526630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65276C0;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E6526A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC90, &unk_1E6609490);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65272A8;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B0C, v34);
}

uint64_t sub_1E6526E00(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v15 = sub_1E65E3B48();
  v16 = sub_1E65E6338();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[0] = a1;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_1E5DE9000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v24 = v20;
    a1 = v27[0];
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6527050(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v15 = sub_1E65E3B48();
  v16 = sub_1E65E6338();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_1E5DE9000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E694F1C0](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x1E694F1C0](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v31 = a1;
  if (v30)
  {
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC90, &unk_1E6609490);
    return sub_1E65E5FE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC90, &unk_1E6609490);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6527300(uint64_t a1)
{
  v2 = sub_1E65DA5E8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACA8, &qword_1E66094B8);
    v10 = sub_1E65E6888();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v25 = v9;
    v26 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (2)
    {
      sub_1E65275E0(v26 + v14 * v11, v8);
      sub_1E65E6D28();
      sub_1E65DA5D8();
      v15 = sub_1E65E6D78();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_1E65275E0(*(v10 + 48) + i * v14, v6);
        v19 = MEMORY[0x1E6941FD0](v6, v8);
        sub_1E6527538(v6, MEMORY[0x1E69CCEF0]);
        if (v19)
        {
          sub_1E6527538(v8, MEMORY[0x1E69CCEF0]);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_1E6527644(v8, *(v10 + 48) + i * v14);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v25)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E6527538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6527598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E65275E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA5E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6527644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA5E8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E65276E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1E65277E8()
{
  v2 = sub_1E65D9B08();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65278A4, v0, 0);
}

uint64_t sub_1E65278A4()
{
  v1 = sub_1E65E5F28();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v21 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v2, 0);
    v4 = v21;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v19 = *(v3 + 56);
    v20 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = v0[4];
      v9 = v0[2];
      v20(v8, v6, v9);
      v10 = sub_1E65D9AD8();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E601C0B8((v13 > 1), v14 + 1, 1);
      }

      *(v21 + 16) = v14 + 1;
      v15 = v21 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v19;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1E600AA08(v4);

  v17 = v0[1];

  return v17(v16);
}

uint64_t static ArchivedSessionService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorArchivedSessionService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E6609528;
  a1[1] = v2;
  a1[2] = &unk_1E6609538;
  a1[3] = v2;
  a1[4] = &unk_1E6609548;
  a1[5] = v2;
  a1[6] = &unk_1E6609558;
  a1[7] = v2;
  a1[8] = &unk_1E6609568;
  a1[9] = v2;
  a1[10] = &unk_1E6609578;
  a1[11] = v2;
  a1[12] = &unk_1E6609588;
  a1[13] = v2;
  a1[14] = &unk_1E6609598;
  a1[15] = v2;
  return swift_retain_n();
}

uint64_t sub_1E6527B90()
{
  sub_1E65D8768();
  sub_1E652840C(&qword_1ED07ACF8, MEMORY[0x1E69CB538], MEMORY[0x1E69CB548]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E6527C44()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E6527B74(v0);
}

uint64_t sub_1E6527CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E65277E8();
}

uint64_t sub_1E6527D64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6527CD4();
}

uint64_t sub_1E6527E0C()
{
  sub_1E65D8AD8();
  sub_1E652840C(&qword_1ED07ACF0, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E6527EC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E6527DF4(a1, v1);
}

uint64_t sub_1E6527F58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACE8, &unk_1E66095F0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6528028, a2, 0);
}

uint64_t sub_1E6528028()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652810C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6527F58(a1, v1);
}

uint64_t sub_1E65281A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6527F58(a1, v1);
}

uint64_t sub_1E6528244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65282D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6528364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E652840C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6528454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for SwappableWorkout(0);
  v10 = swift_task_alloc();
  v5[8] = v10;
  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = sub_1E65285B0;

  return sub_1E6531890(v10, a2, a3, a4);
}

uint64_t sub_1E65285B0()
{
  v2 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E6528B64;
  }

  else
  {
    v3 = sub_1E65286D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1E65286D8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 128), *(*(v0 + 24) + 152));
  sub_1E65DDA88();

  return MEMORY[0x1EEE6DFA0](sub_1E6528788, 0, 0);
}

uint64_t sub_1E6528788()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessWorkoutPlanService/LiveWorkoutPlanService.swift";
  *(v2 + 24) = 54;
  *(v2 + 32) = 2;
  *(v2 + 40) = 30;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_1E65D9658();
  *v3 = v0;
  v3[1] = sub_1E65288A0;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6530F3C, v2, v4);
}

uint64_t sub_1E65288A0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1E6528A74;
    v4 = 0;
  }

  else
  {
    v5 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_1E65289F8;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E65289F8()
{
  sub_1E6530F4C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6528A74()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E6528AEC, v1, 0);
}

uint64_t sub_1E6528AEC()
{
  sub_1E6530F4C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6528B64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6528BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D71A8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1E65D8EF8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1E65D7BC8();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1E65D96F8();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v4[19] = swift_task_alloc();
  v9 = sub_1E65D7908();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v10 = sub_1E65D76A8();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v11 = sub_1E65D76F8();
  v4[30] = v11;
  v4[31] = *(v11 - 8);
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  v4[33] = swift_task_alloc();
  v12 = sub_1E65D7EB8();
  v4[34] = v12;
  v4[35] = *(v12 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6528FF4, v3, 0);
}

uint64_t sub_1E6528FF4()
{
  v1 = v0[5];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1E65290B4;
  v5 = v0[33];

  return MEMORY[0x1EEE33FA8](v5, v2, v3);
}

uint64_t sub_1E65290B4()
{
  v2 = *v1;

  v3 = *(v2 + 40);
  if (v0)
  {

    v4 = sub_1E6529E58;
  }

  else
  {
    v4 = sub_1E65291EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E65291EC()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[5];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v6 = v5[24];
  v7 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v6);
  sub_1E65D7DC8();
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_1E6529310;
  v9 = v0[32];
  v10 = v0[3];
  v11 = v0[4];

  return MEMORY[0x1EEE33FD0](v9, v10, v11, v6, v7);
}

uint64_t sub_1E6529310(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 248);
  v7 = *(*v2 + 240);
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_1E652A058;
  }

  else
  {
    v9 = sub_1E65294A0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1E65294A0(uint64_t a1)
{
  v90 = v1;
  v2 = v1[28];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[24];
  v7 = v1[21];
  v6 = v1[22];
  v8 = v1[20];
  sub_1E65D7858();
  sub_1E65D7688();
  sub_1E65D7868();
  v9 = *(v4 + 8);
  (v9)(v2, v3);
  v10 = *(v7 + 8);
  v10(v6, v8);
  v11 = *(v4 + 48);
  if (v11(v5, 1, v3) == 1)
  {
    v13 = v1[35];
    v12 = v1[36];
    v14 = v1[34];
    v15 = v1[24];

    sub_1E5DFE50C(v15, &qword_1ED0752D8, &qword_1E660CC30);
    v16 = sub_1E65D8B88();
    sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E69CB900], v16);
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    goto LABEL_9;
  }

  v84 = v11;
  v86 = v10;
  v88 = v9;
  v18 = v1[39];
  v19 = v1[40];
  v20 = v1[36];
  v21 = v1[29];
  v22 = v1[19];
  v23 = v1[15];
  v24 = v1[16];
  v82 = *(v1[26] + 32);
  v82(v21, v1[24], v1[25]);
  v25 = swift_task_alloc();
  *(v25 + 16) = v20;
  *(v25 + 24) = v21;
  sub_1E652A37C(sub_1E652E508, v18, v22);

  v26 = (*(v24 + 48))(v22, 1, v23);
  v27 = v1[39];
  if (v26 != 1)
  {
    v36 = v1[35];
    v35 = v1[36];
    v37 = v1[34];
    v38 = v1[29];
    v39 = v1[25];
    v40 = v1[19];

    goto LABEL_8;
  }

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v19;
    v30 = v1[16];
    v31 = sub_1E652F348(*(v27 + 16), 0);
    v32 = sub_1E6530C50(v89, &v31[(*(v30 + 80) + 32) & ~*(v30 + 80)], v28, v27);
    v33 = v89[0];
    v80 = v32;

    result = sub_1E5E24EE4(v33);
    if (v80 != v28)
    {
      __break(1u);
      return result;
    }

    v19 = v29;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v89[0] = v31;
  sub_1E652F2A0(v89);
  if (!v19)
  {

    v35 = v1[36];
    if (*(v89[0] + 16))
    {
      v44 = v1[22];
      v79 = v1[23];
      v81 = v1[25];
      v45 = v1[17];
      v46 = v1[18];
      v47 = v1[15];
      v48 = v1[16];
      v49 = v1[14];
      v67 = v1[13];
      v69 = v1[20];
      v71 = v1[12];
      v75 = v1[10];
      v76 = v1[9];
      v73 = v1[11];
      v74 = v1[8];
      v77 = v1[7];
      v78 = v1[6];
      (*(v48 + 16))(v45, v89[0] + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v47);

      (*(v48 + 32))(v46, v45, v47);
      sub_1E65D7E98();
      sub_1E65D7858();
      sub_1E65D7B88();
      v86(v44, v69);
      (*(v67 + 8))(v49, v71);
      sub_1E65D7858();
      sub_1E65D96B8();
      sub_1E65D8E98();
      (*(v75 + 8))(v73, v76);
      sub_1E65D78C8();
      (*(v77 + 8))(v74, v78);
      v86(v44, v69);
      if (v84(v79, 1, v81) != 1)
      {
        v59 = v1[35];
        v70 = v1[34];
        v72 = v1[36];
        v60 = v1[25];
        v66 = v1[23];
        v68 = v1[29];
        v61 = v1[18];
        v62 = v1[19];
        v63 = v1[16];
        v64 = v1[15];
        v65 = v1[2];
        v88();
        (*(v63 + 8))(v61, v64);
        sub_1E5DFE50C(v62, &unk_1ED077780, &unk_1E66097F0);
        v82(v65, v66, v60);
        (v88)(v68, v60);
        (*(v59 + 8))(v72, v70);

        v43 = v1[1];
        goto LABEL_10;
      }

      v50 = v1[35];
      v85 = v1[34];
      v87 = v1[36];
      v83 = v1[29];
      v51 = v1[27];
      v52 = v1[25];
      v54 = v1[18];
      v53 = v1[19];
      v56 = v1[15];
      v55 = v1[16];
      sub_1E5DFE50C(v1[23], &qword_1ED0752D8, &qword_1E660CC30);
      v57 = sub_1E65D8B88();
      sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
      swift_allocError();
      (*(*(v57 - 8) + 104))(v58, *MEMORY[0x1E69CB900], v57);
      swift_willThrow();
      (v88)(v51, v52);
      (*(v55 + 8))(v54, v56);
      sub_1E5DFE50C(v53, &unk_1ED077780, &unk_1E66097F0);
      (v88)(v83, v52);
      (*(v50 + 8))(v87, v85);
LABEL_9:

      v43 = v1[1];
LABEL_10:

      return v43();
    }

    v37 = v1[34];
    v36 = v1[35];
    v38 = v1[29];
    v39 = v1[25];
    v40 = v1[19];

LABEL_8:
    v41 = sub_1E65D8B88();
    sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x1E69CB8E0], v41);
    swift_willThrow();
    sub_1E5DFE50C(v40, &unk_1ED077780, &unk_1E66097F0);
    (v88)(v38, v39);
    (*(v36 + 8))(v35, v37);
    goto LABEL_9;
  }
}

uint64_t sub_1E6529E58()
{
  v1 = v0[33];
  (*(v0[35] + 56))(v1, 1, 1, v0[34]);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);
  v2 = sub_1E65D8B88();
  sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CB8F8], v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652A058()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E652A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E65D8EF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D76A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D96B8();
  sub_1E65D7E28();
  (*(v4 + 8))(v6, v3);
  sub_1E6530EF4(&qword_1ED073FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v11 = sub_1E65E5B88();
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t sub_1E652A37C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_1E65D96F8();
  v6 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E652A63C(uint64_t a1)
{
  v43 = sub_1E65DA598();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65D76F8();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x1E69E7CC0];
    v33 = a1;
    sub_1E6537D50(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_1E65E6748();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_1E65DA578();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E6537D50((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1E5F87098(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_1E5F87098(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E652AA00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652AA20, 0, 0);
}

uint64_t sub_1E652AA20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65DDF18();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652AABC()
{
  v1[2] = v0;
  v2 = sub_1E65D76F8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E65D7EB8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652ABD8, v0, 0);
}

uint64_t sub_1E652ABD8()
{
  v1 = v0[2];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1E652AC98;
  v5 = v0[8];

  return MEMORY[0x1EEE33FA8](v5, v2, v3);
}

uint64_t sub_1E652AC98()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1E652B028;
  }

  else
  {
    v4 = sub_1E652ADC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E652ADC4()
{
  v1 = v0[2];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  sub_1E65D7DC8();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1E652AEA0;
  v5 = v0[5];

  return MEMORY[0x1EEE33FD8](v5, v2, v3);
}

uint64_t sub_1E652AEA0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1E652B098;
  }

  else
  {
    v7 = sub_1E651FC0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E652B028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652B098()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E652B120(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1E65D7BC8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D9388();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  v3[11] = swift_task_alloc();
  v6 = sub_1E65D76F8();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652B2D4, v2, 0);
}

uint64_t sub_1E652B2D4()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + 168), *(v0[4] + 192));
  v1 = sub_1E65D8FB8();
  v0[15] = v1;
  v2 = sub_1E65D8FD8();
  v4 = v3;
  v0[16] = v3;
  sub_1E65D8F98();
  sub_1E65D8FC8();
  sub_1E65D8FE8();
  sub_1E65D8FF8();
  sub_1E65D9008();
  sub_1E65D8F88();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1E652B43C;
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];
  v10 = v0[2];

  return MEMORY[0x1EEE33FF0](v10, v1, v2, v4, v6, v7, v8, v9);
}

uint64_t sub_1E652B43C()
{
  v2 = *v1;
  v16 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v15 = *(*v1 + 96);
  v14 = *(*v1 + 88);
  v13 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v12 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v13, v12);
  sub_1E5DFE50C(v14, &qword_1ED072B58, &qword_1E65EC600);
  (*(v3 + 8))(v16, v15);
  if (v0)
  {
    v9 = *(v2 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1E652B748, v9, 0);
  }

  else
  {

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1E652B748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652B7D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1E65D7BC8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D9388();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  v3[11] = swift_task_alloc();
  v6 = sub_1E65D76F8();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652B988, v2, 0);
}

uint64_t sub_1E652B988()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + 168), *(v0[4] + 192));
  v1 = sub_1E65D8FB8();
  v0[15] = v1;
  v2 = sub_1E65D8FD8();
  v4 = v3;
  v0[16] = v3;
  sub_1E65D8F98();
  sub_1E65D8FC8();
  sub_1E65D8FE8();
  sub_1E65D8FF8();
  sub_1E65D9008();
  sub_1E65D8F88();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1E652BAF0;
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];
  v10 = v0[2];

  return MEMORY[0x1EEE34008](v10, v1, v2, v4, v6, v7, v8, v9);
}

uint64_t sub_1E652BAF0()
{
  v2 = *v1;
  v16 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v15 = *(*v1 + 96);
  v14 = *(*v1 + 88);
  v13 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v12 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v13, v12);
  sub_1E5DFE50C(v14, &qword_1ED072B58, &qword_1E65EC600);
  (*(v3 + 8))(v16, v15);
  if (v0)
  {
    v9 = *(v2 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1E653116C, v9, 0);
  }

  else
  {

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1E652BDFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652BE18, a2, 0);
}

uint64_t sub_1E652BE18()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E630DF80;
  v5 = v0[2];

  return MEMORY[0x1EEE33FA8](v5, v2, v3);
}

uint64_t sub_1E652BED8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652BDFC(a1, v1);
}

uint64_t sub_1E652BF94()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E651F35C;

  return MEMORY[0x1EEE34018](v2, v3);
}

uint64_t sub_1E652C04C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E652BF74(v0);
}

uint64_t sub_1E652C0DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652C0F8, a2, 0);
}

uint64_t sub_1E652C0F8()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E61A482C;
  v5 = v0[2];

  return MEMORY[0x1EEE33FE8](v5, v2, v3);
}

uint64_t sub_1E652C1B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E652C0DC(a1, v1);
}

uint64_t sub_1E652C270()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E652C328;

  return MEMORY[0x1EEE34018](v2, v3);
}

uint64_t sub_1E652C328(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 16);
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E652C478, v8, 0);
  }
}

uint64_t sub_1E652C478()
{
  v1 = v0[2];
  v2 = sub_1E652A63C(v0[5]);

  v3 = v1[24];
  v4 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v3);
  v5 = sub_1E600C8B4(v2);
  v0[6] = v5;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E652C56C;

  return MEMORY[0x1EEE33FE8](v5, v3, v4);
}

uint64_t sub_1E652C56C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1E652C6C4, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_1E652C6C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652C728()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E652C250(v0);
}

uint64_t sub_1E652C7D8()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E6531170;

  return MEMORY[0x1EEE34010](v2, v3);
}

uint64_t sub_1E652C890()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E652C7B8(v0);
}

uint64_t sub_1E652C920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652C944, a3, 0);
}

uint64_t sub_1E652C944()
{
  v1 = v0[4];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E6531168;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE33FC8](v5, v6, v2, v3);
}

uint64_t sub_1E652CA04(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652C920(a1, a2, v2);
}

uint64_t sub_1E652CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652CAD4, a4, 0);
}

uint64_t sub_1E652CAD4()
{
  v1 = v0[5];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1E652CB98;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE33FD0](v7, v5, v6, v2, v3);
}

uint64_t sub_1E652CB98(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E652CC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5FEE4D4;

  return sub_1E652CAB0(a1, a2, a3, v3);
}

uint64_t sub_1E652CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6528BD4(a1, a2, a3);
}

uint64_t sub_1E652CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E652CD48(a1, a2, a3);
}

uint64_t sub_1E652CEB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652CECC, a2, 0);
}

uint64_t sub_1E652CECC()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E6531164;
  v5 = v0[2];

  return MEMORY[0x1EEE33FB8](v5, v2, v3);
}

uint64_t sub_1E652CF8C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652CEB0(a1, v1);
}

uint64_t sub_1E652D028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6528454(a1, a2, a3, a4);
}

uint64_t sub_1E652D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E652D028(a1, a2, a3, a4);
}

uint64_t sub_1E652D1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v8 = sub_1E65D7EB8();
  v4[5] = v8;
  v4[6] = *(v8 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for SwappableWorkout(0);
  v9 = swift_task_alloc();
  v4[9] = v9;
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = sub_1E652D308;

  return sub_1E6531890(v9, a1, a2, a3);
}

uint64_t sub_1E652D308()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1E652D640;
  }

  else
  {
    v3 = sub_1E652D430;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1E652D430()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[4];
  v4 = v3[24];
  v5 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v4);
  v6 = *(v2 + 20);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1E652D50C;
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[2];
  v11 = v0[3];

  return MEMORY[0x1EEE34000](v9, v8, v1 + v6, v10, v11, v4, v5);
}

uint64_t sub_1E652D50C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = sub_1E652D72C;
  }

  else
  {
    v5 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v4 = sub_1E652D6B0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E652D640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652D6B0()
{
  sub_1E6530F4C(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652D72C()
{
  sub_1E6530F4C(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652D7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E652D1B0(a1, a2, a3, v3);
}

uint64_t sub_1E652D854(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652D870, a2, 0);
}

uint64_t sub_1E652D870()
{
  swift_getObjectType();
  sub_1E65DDFE8();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652D930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652D854(a1, v1);
}

uint64_t sub_1E652D9CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652D9E8, a2, 0);
}

uint64_t sub_1E652D9E8()
{
  swift_getObjectType();
  sub_1E65DDF18();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E652DAA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E652D9CC(a1, v1);
}

uint64_t sub_1E652DB3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652AABC();
}

uint64_t sub_1E652DBCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652DB3C();
}

uint64_t sub_1E652DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652DC80, a3, 0);
}

uint64_t sub_1E652DC80()
{
  v1 = v0[4];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E6126414;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE33FF8](v5, v6, v2, v3);
}

uint64_t sub_1E652DD40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652DC5C(a1, a2, v2);
}

uint64_t sub_1E652DE0C()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FEEF74;

  return MEMORY[0x1EEE33FC0](v2, v3);
}

uint64_t sub_1E652DEC4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E652DDEC(v0);
}

uint64_t sub_1E652DF54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652DF70, a2, 0);
}

uint64_t sub_1E652DF70()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E6531164;
  v5 = v0[2];

  return MEMORY[0x1EEE34020](v5, v2, v3);
}

uint64_t sub_1E652E030(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652DF54(a1, v1);
}

uint64_t sub_1E652E0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652E0EC, a3, 0);
}

uint64_t sub_1E652E0EC()
{
  v1 = v0[4];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E6531168;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE33FE0](v5, v6, v2, v3);
}

uint64_t sub_1E652E1AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652E0C8(a1, a2, v2);
}

uint64_t sub_1E652E258(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652B120(a1, a2);
}