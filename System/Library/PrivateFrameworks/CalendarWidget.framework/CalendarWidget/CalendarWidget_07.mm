uint64_t sub_1E482C854@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_1E487753C();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E482BFAC(v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E487847C();
  v8 = v7;
  v10 = v9;
  type metadata accessor for PlatterEventTimeText(0);
  v11 = sub_1E48783FC();
  v13 = v12;
  v15 = v14;
  sub_1E477A3C8(v6, v8, v10 & 1);

  v16 = sub_1E487842C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v39[1] = v21;
  sub_1E477A3C8(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v46 = v16;
  v47 = v18;
  v20 &= 1u;
  v48 = v20;
  v49 = v22;
  v50 = KeyPath;
  v51 = 1;
  v52 = 0;
  v24 = type metadata accessor for Event(0);
  v25 = v24[5];
  v26 = v24[6];
  LOBYTE(v13) = *(v1 + v24[12]);
  v27 = v40;
  sub_1E482BDBC(v40);
  v28 = sub_1E4870800(v1 + v25, v1 + v26, v13);
  v30 = v29;
  v31 = (*(v41 + 8))(v27, v42);
  v44 = v28;
  v45 = v30;
  sub_1E477A374(v31, v32, v33);
  v34 = sub_1E487848C();
  v36 = v35;
  LOBYTE(v26) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487856C();
  sub_1E477A3C8(v34, v36, v26 & 1);

  sub_1E477A3C8(v16, v18, v20);
}

uint64_t sub_1E482CB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E482CBC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E482CC08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  sub_1E4878A3C();
  v9 = (*(v3 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E69857F0])
  {
    type metadata accessor for FakeEvents();
    v10 = sub_1E4806FA8();
LABEL_9:
    v11 = v10;
    sub_1E4806788(a1);
    v12 = type metadata accessor for CalendarEventsTimelineEntry(0);
    result = sub_1E4806788(a1 + v12[5]);
    *(a1 + v12[6]) = v11;
    *(a1 + v12[7]) = 0;
    return result;
  }

  if (v9 == *MEMORY[0x1E69857F8])
  {
    type metadata accessor for FakeEvents();
    v10 = sub_1E480774C();
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x1E69857E0])
  {
    type metadata accessor for FakeEvents();
    v10 = sub_1E4808A90();
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x1E6985810])
  {
    type metadata accessor for FakeEvents();
    v10 = sub_1E480AA84();
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1E4878F9C();

  v15 = 0xD00000000000001BLL;
  v16 = 0x80000001E48A64A0;
  sub_1E4878A3C();
  sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
  v14 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v14);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

id sub_1E482CEF0(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v62 = a1;
  v65 = a4;
  v66 = a3;
  v5 = sub_1E4878A1C();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalendarEventsTimelineEntry(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487894C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487732C();
  v63 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - v16;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v19 = result;
    sub_1E48772FC();

    v20 = [objc_opt_self() shared];
    v57 = [v20 stopTimeDemoModeActive];

    sub_1E4878A3C();
    v21 = sub_1E4830F08(v12);
    v55 = v21;
    v53 = *(v10 + 8);
    v53(v12, v9);
    v22 = sub_1E4878DEC();
    v68 = v17;
    v54 = v22;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E487AC40;
    sub_1E4831220(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v67 = v13;
    v24 = sub_1E48790CC();
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1E478B950(v24, v25, v28);
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v30 = MEMORY[0x1E69E65A8];
    *(v23 + 96) = MEMORY[0x1E69E6530];
    *(v23 + 104) = v30;
    *(v23 + 64) = v29;
    *(v23 + 72) = v21;
    sub_1E4878A3C();
    sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v31 = sub_1E48790CC();
    v33 = v32;
    v34 = v53;
    v53(v12, v9);
    *(v23 + 136) = v27;
    *(v23 + 144) = v29;
    v35 = v29;
    *(v23 + 112) = v31;
    *(v23 + 120) = v33;
    sub_1E478E80C();
    v36 = sub_1E4878E4C();
    v37 = v68;
    sub_1E4877AAC(v54, &dword_1E475C000, v36, "Snapshot entry requested for up next widget with start date: %{public}@, daysInEntry: %d, family: %{public}@", 108, 2, v23);

    sub_1E4878A3C();
    v38 = v58;
    sub_1E4878A2C();
    swift_getKeyPath();
    v39 = MEMORY[0x1E69190B0]();

    (*(v59 + 8))(v38, v60);
    sub_1E482D56C(v12, v39, v61, v70);

    v34(v12, v9);
    v40 = v71;
    v41 = v72;
    __swift_project_boxed_opaque_existential_0(v70, v71);
    v69[3] = type metadata accessor for EKUICalendarsIntent();
    v69[4] = &off_1F5E7C9D8;
    v69[0] = v62;
    v42 = *(v41 + 8);
    v43 = v62;
    v44 = v64;
    v42(v37, v55, v69, v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v45 = v63;
    if (v57)
    {
      v46 = v52;
      sub_1E487731C();
      (*(v45 + 40))(v44, v46, v67);
    }

    v47 = sub_1E4878DBC();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1E487A7E0;
    v49 = CalendarEventsTimelineEntry.description.getter();
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = v35;
    *(v48 + 32) = v49;
    *(v48 + 40) = v50;
    v51 = sub_1E4878E4C();
    sub_1E4877AAC(v47, &dword_1E475C000, v51, "Calling current entry completion for up next widget with entry: %{public}@", 74, 2, v48);

    v66(v44);
    (*(v45 + 8))(v37, v67);
    return sub_1E4831268(v44, type metadata accessor for CalendarEventsTimelineEntry);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E482D56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v40 = a2;
  v7 = sub_1E4877CCC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - v12;
  v14 = sub_1E487894C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69857F0] || v18 == *MEMORY[0x1E69857F8])
  {
    a4[3] = type metadata accessor for ListTimeline();
    a4[4] = &off_1F5E7C178;
    *a4 = a3;
  }

  else if (v18 == *MEMORY[0x1E69857E0] || v18 == *MEMORY[0x1E6985810])
  {
    v39[0] = a4;
    if (v40)
    {
      v22 = 0;
      v23 = *(v40 + 16);
      v39[1] = v8 + 16;
      do
      {
        v24 = v23 != v22;
        if (v23 == v22)
        {
          break;
        }

        (*(v8 + 16))(v13, v40 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22++, v7);
        sub_1E4877CBC();
        sub_1E4831220(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
        v25 = sub_1E4878EAC();
        v26 = *(v8 + 8);
        v26(v11, v7);
        v26(v13, v7);
      }

      while ((v25 & 1) == 0);
    }

    else
    {
      v24 = 0;
    }

    v27 = type metadata accessor for EventKitDataSource();
    v28 = swift_allocObject();
    v29 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
    if (!v29)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
    }

    *(v28 + 16) = v29;
    v43 = v27;
    v44 = &off_1F5E7D4F8;
    v41 = v28;
    v30 = type metadata accessor for SpatialTimeline();
    v31 = swift_allocObject();
    v32 = __swift_mutable_project_boxed_opaque_existential_1(&v41, v27);
    MEMORY[0x1EEE9AC00](v32);
    v34 = (v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = *v34;
    *(v31 + 40) = v27;
    *(v31 + 48) = &off_1F5E7D4F8;
    *(v31 + 16) = v36;
    *(v31 + 64) = MEMORY[0x1E69E7CC0];
    *(v31 + 56) = v24;
    result = __swift_destroy_boxed_opaque_existential_1(&v41);
    v37 = v39[0];
    *(v39[0] + 24) = v30;
    v37[4] = &off_1F5E7CD28;
    *v37 = v31;
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1E4878F9C();

    v41 = 0xD00000000000001BLL;
    v42 = 0x80000001E48A64A0;
    sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v38 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v38);

    MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

id sub_1E482DAA8(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v94 = a4;
  v95 = a3;
  v92 = a2;
  v91 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC8, &unk_1E487BF70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v74 - v7;
  v89 = sub_1E4878A1C();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487894C();
  v87 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E48789CC();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v96 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v74 - v17;
  v100 = sub_1E487732C();
  v93 = *(v100 - 8);
  v19 = MEMORY[0x1EEE9AC00](v100);
  v75 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - v21;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v24 = result;
    v101 = v22;
    sub_1E48772FC();

    v25 = [objc_opt_self() shared];
    v26 = [v25 stopTimeDemoModeActive];

    sub_1E48789AC();
    v81 = v26;
    v86 = v5;
    v85 = v6;
    v84 = v8;
    v83 = v18;
    v82 = v10;
    if (v26)
    {
      v27 = v18;
      v28 = v96;
      sub_1E48789BC();
      v29 = v97;
      v30 = v27;
      v31 = v27;
      v32 = v98;
      (*(v97 + 8))(v30, v98);
      (*(v29 + 32))(v31, v28, v32);
      v33 = 1;
    }

    else
    {
      v33 = 20;
    }

    v99 = v33;
    sub_1E4878A3C();
    v34 = sub_1E4830F08(v13);
    v78 = v34;
    v76 = *(v87 + 8);
    v76(v13, v11);
    v77 = sub_1E4878DEC();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E487BC70;
    sub_1E4831220(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v36 = sub_1E48790CC();
    v38 = v37;
    v39 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1E478B950(v36, v37, v40);
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v42 = MEMORY[0x1E69E6530];
    v43 = MEMORY[0x1E69E65A8];
    *(v35 + 96) = MEMORY[0x1E69E6530];
    *(v35 + 104) = v43;
    v44 = v99;
    *(v35 + 64) = v41;
    *(v35 + 72) = v44;
    *(v35 + 136) = v42;
    *(v35 + 144) = v43;
    *(v35 + 112) = v34;
    sub_1E4878A3C();
    sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
    v45 = sub_1E48790CC();
    v47 = v46;
    v48 = v76;
    v76(v13, v11);
    *(v35 + 176) = v39;
    *(v35 + 184) = v41;
    v87 = v41;
    *(v35 + 152) = v45;
    *(v35 + 160) = v47;
    v79 = sub_1E478E80C();
    v49 = sub_1E4878E4C();
    sub_1E4877AAC(v77, &dword_1E475C000, v49, "Timeline entries requested for up next widget with start date: %{public}@, limit: %d, daysPerEntry: %d, family: %{public}@", 122, 2, v35);

    sub_1E4878A3C();
    v50 = v82;
    sub_1E4878A2C();
    swift_getKeyPath();
    v51 = MEMORY[0x1E69190B0]();

    (*(v88 + 8))(v50, v89);
    sub_1E482D56C(v13, v51, v90, &v103);

    v48(v13, v11);
    v52 = v104;
    v53 = v105;
    __swift_project_boxed_opaque_existential_0(&v103, v104);
    v102[3] = type metadata accessor for EKUICalendarsIntent();
    v102[4] = &off_1F5E7C9D8;
    v102[0] = v91;
    v54 = v91;
    sub_1E4878A3C();
    v55 = (*(v53 + 16))(v101, v99, v78, v102, v13, v52, v53);
    v48(v13, v11);
    __swift_destroy_boxed_opaque_existential_1(v102);
    __swift_destroy_boxed_opaque_existential_1(&v103);
    if (v81)
    {
      v56 = v75;
      v57 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v57);
      *(&v74 - 2) = v56;
      v58 = sub_1E48566E0(sub_1E483112C, (&v74 - 4), v55);

      v59 = v93;
      v60 = v100;
      (*(v93 + 8))(v56, v100);
      v55 = v58;
      v61 = v86;
      v62 = v84;
    }

    else
    {
      v61 = v86;
      v62 = v84;
      v60 = v100;
      v59 = v93;
    }

    v63 = sub_1E4878DEC();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1E487A7F0;
    v65 = *(v55 + 16);
    *(v64 + 56) = MEMORY[0x1E69E6530];
    *(v64 + 64) = MEMORY[0x1E69E65A8];
    *(v64 + 32) = v65;
    type metadata accessor for CalendarEventsTimelineEntry(0);

    v66 = sub_1E4878E9C();
    v68 = v67;

    v69 = v87;
    *(v64 + 96) = MEMORY[0x1E69E6158];
    *(v64 + 104) = v69;
    *(v64 + 72) = v66;
    *(v64 + 80) = v68;
    v70 = sub_1E4878E4C();
    sub_1E4877AAC(v63, &dword_1E475C000, v70, "Calling timeline entries completion for up next widget with %d entries: (first 3) %{public}@", 92, 2, v64);

    v71 = v97;
    v72 = v83;
    v73 = v98;
    (*(v97 + 16))(v96, v83, v98);
    sub_1E4831220(qword_1EE2B45D0, type metadata accessor for CalendarEventsTimelineEntry, &protocol conformance descriptor for CalendarEventsTimelineEntry);
    sub_1E4878A5C();
    v95(v62);
    (*(v85 + 8))(v62, v61);
    (*(v71 + 8))(v72, v73);
    return (*(v59 + 8))(v101, v60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CalendarUpNextWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D570, &qword_1E4881DA0);
  v46 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v45 - v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D578, &qword_1E4881DA8);
  v47 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v5 = v45 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D580, &qword_1E4881DB0);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D588, &unk_1E4881DB8);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = v45 - v8;
  v9 = type metadata accessor for EventKitDataSource();
  v10 = swift_allocObject();
  v11 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  }

  type metadata accessor for EKUICalendarsIntent();
  *(v10 + 16) = v11;
  v61 = v9;
  v62 = &off_1F5E7D4F8;
  v58 = v10;
  type metadata accessor for ListTimeline();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(&v58, v9);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v12[5] = v9;
  v12[6] = &off_1F5E7D4F8;
  v12[2] = v17;
  v18 = MEMORY[0x1E69E7CC0];
  v12[7] = MEMORY[0x1E69E7CC0];
  v12[8] = v18;
  __swift_destroy_boxed_opaque_existential_1(&v58);
  v58 = v12;
  type metadata accessor for CalendarUpNextWidget.WidgetView(0);
  v44 = sub_1E4831220(qword_1EE2B4290, type metadata accessor for CalendarUpNextWidget.WidgetView, &unk_1E4881F00);
  sub_1E482EE3C(v44, v19, v20);
  sub_1E487898C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v45[1] = qword_1EE2BAF40;
  v58 = sub_1E48771EC();
  v59 = v21;
  v22 = sub_1E4773680(&qword_1EE2B0E58, &qword_1ECF7D570, &qword_1E4881DA0, MEMORY[0x1E69859E0]);
  v25 = sub_1E477A374(v22, v23, v24);
  v26 = MEMORY[0x1E69E6158];
  v27 = v25;
  v45[0] = v25;
  sub_1E487800C();

  (*(v46 + 8))(v3, v1);
  v58 = v1;
  v59 = v26;
  v60 = v22;
  v61 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v48;
  v30 = v50;
  sub_1E487801C();
  (*(v47 + 8))(v5, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v31 = sub_1E487894C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E487BC70;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v35 + v34, *MEMORY[0x1E69857F0], v31);
  v37(v36 + v33, *MEMORY[0x1E69857F8], v31);
  v37(v36 + 2 * v33, *MEMORY[0x1E69857E0], v31);
  v37(v36 + 3 * v33, *MEMORY[0x1E6985810], v31);
  v58 = v30;
  v59 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v40 = v51;
  v39 = v52;
  sub_1E4877FFC();

  (*(v49 + 8))(v29, v39);
  v58 = sub_1E48771EC();
  v59 = v41;
  v56 = v39;
  v57 = v38;
  swift_getOpaqueTypeConformance2();
  v42 = v54;
  sub_1E4877FEC();

  return (*(v53 + 8))(v40, v42);
}

uint64_t sub_1E482ECEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E48311B8(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for CalendarUpNextWidget.WidgetView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CalendarUpNextWidget.WidgetView(uint64_t a1)
{
  result = qword_1EE2B4280;
  if (!qword_1EE2B4280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E482EE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B2148[0];
  if (!qword_1EE2B2148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B2148);
  }

  return result;
}

uint64_t sub_1E482EE90@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CalendarUpNextWidget.WidgetView(0);
  sub_1E4773850(v1 + *(v10 + 20), v9, &qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487894C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E482F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a1;
  v144 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5C0, &qword_1E4881F90);
  MEMORY[0x1EEE9AC00](v128);
  v121 = &v119 - v2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5D8, &qword_1E4882008);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v119 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5B0, &qword_1E4881F78);
  MEMORY[0x1EEE9AC00](v141);
  v129 = &v119 - v4;
  v124 = sub_1E48782AC();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5B8, &unk_1E4881F80);
  MEMORY[0x1EEE9AC00](v125);
  v120 = &v119 - v6;
  v132 = type metadata accessor for MediumListContentView(0);
  MEMORY[0x1EEE9AC00](v132);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5E0, &qword_1E4882010);
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v119 - v9;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5E8, &qword_1E4882018);
  MEMORY[0x1EEE9AC00](v134);
  v136 = &v119 - v10;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5F0, &qword_1E4882020);
  MEMORY[0x1EEE9AC00](v130);
  v12 = &v119 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5A8, &qword_1E4881F70);
  MEMORY[0x1EEE9AC00](v135);
  v131 = &v119 - v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5A0, &qword_1E4881F68);
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v119 - v14;
  v15 = type metadata accessor for SmallListContentView(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E487894C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v119 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D598, &qword_1E4881F60);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v138 = &v119 - v26;
  sub_1E4878D2C();
  v137 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = v133;
  sub_1E482EE90(v24);
  v28 = (*(v19 + 88))(v24, v18);
  if (v28 == *MEMORY[0x1E69857F0])
  {
    v29 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v30 = *(v29 + 20);
    v31 = sub_1E487732C();
    (*(*(v31 - 8) + 16))(v17, v27 + v30, v31);
    v32 = *(v27 + *(v29 + 24));
    *&v17[v15[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v17[v15[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v34 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    *&v17[v15[5]] = v32;
    v17[v15[6]] = 1;
    v17[v15[7]] = 2;
    v17[v15[8]] = 0;
    v36 = &v17[v15[11]];
    *v36 = KeyPath;
    v36[8] = 0;
    v37 = &v17[v15[12]];
    *v37 = v34;
    v37[8] = 0;
    v38 = &v17[v15[13]];
    *v38 = v35;
    v38[8] = 0;
    sub_1E48311B8(v17, v12, type metadata accessor for SmallListContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E4831220(qword_1EE2B2840, type metadata accessor for SmallListContentView, &unk_1E4880AD8);
    sub_1E4831220(qword_1EE2B26E0, type metadata accessor for MediumListContentView, &unk_1E48815C0);

    v39 = v131;
    sub_1E487803C();
    sub_1E4773850(v39, v136, &qword_1ECF7D5A8, &qword_1E4881F70);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v40 = v140;
    sub_1E487803C();
    sub_1E47738B8(v39, &qword_1ECF7D5A8, &qword_1E4881F70);
    sub_1E4773850(v40, v143, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v41 = v138;
    sub_1E487803C();
    sub_1E47738B8(v40, &qword_1ECF7D5A0, &qword_1E4881F68);
    v42 = v17;
    v43 = type metadata accessor for SmallListContentView;
LABEL_7:
    sub_1E4831268(v42, v43);
LABEL_13:
    sub_1E4830E98(v41, v144);
  }

  if (v28 == *MEMORY[0x1E69857F8])
  {
    v44 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v45 = *(v44 + 20);
    v46 = sub_1E487732C();
    (*(*(v46 - 8) + 16))(v8, v27 + v45, v46);
    v47 = *(v27 + *(v44 + 24));
    v48 = swift_getKeyPath();
    v49 = v132;
    *&v8[*(v132 + 28)] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    v50 = swift_getKeyPath();
    *&v8[v49[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v51 = swift_getKeyPath();
    *&v8[v49[5]] = v47;
    v52 = &v8[v49[6]];
    v145 = MEMORY[0x1E69E7CC0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D440, &qword_1E48815B8);
    sub_1E48787FC();
    v53 = v147;
    *v52 = v146;
    v52[1] = v53;
    v54 = &v8[v49[8]];
    *v54 = v50;
    v54[8] = 0;
    v55 = &v8[v49[10]];
    *v55 = v51;
    v55[8] = 0;
    sub_1E48311B8(v8, v12, type metadata accessor for MediumListContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E4831220(qword_1EE2B2840, type metadata accessor for SmallListContentView, &unk_1E4880AD8);
    sub_1E4831220(qword_1EE2B26E0, type metadata accessor for MediumListContentView, &unk_1E48815C0);
    v56 = v131;
    sub_1E487803C();
    sub_1E4773850(v56, v136, &qword_1ECF7D5A8, &qword_1E4881F70);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v57 = v140;
    sub_1E487803C();
    sub_1E47738B8(v56, &qword_1ECF7D5A8, &qword_1E4881F70);
    sub_1E4773850(v57, v143, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v41 = v138;
    sub_1E487803C();
    sub_1E47738B8(v57, &qword_1ECF7D5A0, &qword_1E4881F68);
    v42 = v8;
    v43 = type metadata accessor for MediumListContentView;
    goto LABEL_7;
  }

  if (v28 == *MEMORY[0x1E69857E0])
  {
    v58 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v59 = *(v58 + 20);
    v60 = sub_1E487732C();
    v61 = v120;
    (*(*(v60 - 8) + 16))(v120, v27 + v59, v60);
    v62 = *(v27 + *(v58 + 24));
    v63 = swift_getKeyPath();
    v64 = type metadata accessor for LargeSpatialContentView(0);
    *(v61 + v64[6]) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    v65 = swift_getKeyPath();
    v66 = swift_getKeyPath();
    *(v61 + v64[5]) = v62;
    v67 = v61 + v64[7];
    *v67 = v65;
    *(v67 + 8) = 0;
    v68 = v61 + v64[8];
    *v68 = v66;
    *(v68 + 8) = 0;

    sub_1E48782EC();
    v69 = *MEMORY[0x1E6980EA0];
    v70 = v123;
    v71 = *(v123 + 104);
    v72 = v122;
    v73 = v124;
    v71(v122, v69, v124);
    sub_1E48782CC();

    v74 = *(v70 + 8);
    v74(v72, v73);
    v75 = sub_1E48781FC();

    sub_1E48782EC();
    v71(v72, v69, v73);
    v76 = sub_1E48782CC();

    v74(v72, v73);
    type metadata accessor for ViewMetrics(0);
    v77 = swift_allocObject();
    sub_1E487758C();
    *(v77 + 16) = xmmword_1E487BC80;
    *(v77 + 32) = xmmword_1E487BC90;
    __asm { FMOV            V0.2D, #3.0 }

    *(v77 + 48) = _Q0;
    *(v77 + 64) = xmmword_1E4881300;
    *(v77 + 112) = 0x3FF0000000000000;
    *(v77 + 120) = 1;
    *(v77 + 128) = v75;
    *(v77 + 136) = v76;
    *(v77 + 144) = 1;
    *(v77 + 146) = 1;
    *(v77 + 80) = xmmword_1E487BCC0;
    *(v77 + 96) = _Q0;
    v83 = swift_getKeyPath();
    v84 = (v61 + *(v125 + 36));
    *v84 = v83;
    v84[1] = v77;
    v85 = &unk_1E4881F80;
    sub_1E4773850(v61, v127, &qword_1ECF7D5B8, &unk_1E4881F80);
    swift_storeEnumTagMultiPayload();
    sub_1E4830CA4();
    sub_1E4830D8C();
    v86 = v129;
    sub_1E487803C();
    sub_1E4773850(v86, v136, &qword_1ECF7D5B0, &qword_1E4881F78);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v87 = v140;
    sub_1E487803C();
    sub_1E47738B8(v86, &qword_1ECF7D5B0, &qword_1E4881F78);
    sub_1E4773850(v87, v143, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v41 = v138;
    sub_1E487803C();
    sub_1E47738B8(v87, &qword_1ECF7D5A0, &qword_1E4881F68);
    v88 = v61;
    v89 = &qword_1ECF7D5B8;
LABEL_12:
    sub_1E47738B8(v88, v89, v85);
    goto LABEL_13;
  }

  if (v28 == *MEMORY[0x1E6985810])
  {
    v90 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v91 = *(v90 + 20);
    v92 = sub_1E487732C();
    v93 = v27 + v91;
    v94 = v27;
    v95 = v121;
    (*(*(v92 - 8) + 16))(v121, v93, v92);
    v96 = *(v94 + *(v90 + 24));
    v97 = swift_getKeyPath();
    v98 = type metadata accessor for ExtraLargeSpatialContentView(0);
    *(v95 + v98[6]) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    v99 = swift_getKeyPath();
    v100 = swift_getKeyPath();
    *(v95 + v98[5]) = v96;
    v101 = v95 + v98[7];
    *v101 = v99;
    *(v101 + 8) = 0;
    v102 = v95 + v98[8];
    *v102 = v100;
    *(v102 + 8) = 0;

    sub_1E48782EC();
    v103 = *MEMORY[0x1E6980EA0];
    v104 = v123;
    v105 = *(v123 + 104);
    v106 = v122;
    v107 = v124;
    v105(v122, v103, v124);
    sub_1E48782CC();

    v108 = *(v104 + 8);
    v108(v106, v107);
    v109 = sub_1E48781FC();

    sub_1E48782EC();
    v105(v106, v103, v107);
    v110 = sub_1E48782CC();

    v108(v106, v107);
    type metadata accessor for ViewMetrics(0);
    v111 = swift_allocObject();
    sub_1E487758C();
    *(v111 + 16) = xmmword_1E487BC80;
    *(v111 + 32) = xmmword_1E487BC90;
    __asm { FMOV            V0.2D, #3.0 }

    *(v111 + 48) = _Q0;
    *(v111 + 64) = xmmword_1E4881300;
    *(v111 + 112) = 0x3FF0000000000000;
    *(v111 + 120) = 1;
    *(v111 + 128) = v109;
    *(v111 + 136) = v110;
    *(v111 + 144) = 1;
    *(v111 + 146) = 1;
    *(v111 + 80) = xmmword_1E487BCC0;
    *(v111 + 96) = _Q0;
    v113 = swift_getKeyPath();
    v114 = (v95 + *(v128 + 36));
    *v114 = v113;
    v114[1] = v111;
    v85 = &qword_1E4881F90;
    sub_1E4773850(v95, v127, &qword_1ECF7D5C0, &qword_1E4881F90);
    swift_storeEnumTagMultiPayload();
    sub_1E4830CA4();
    sub_1E4830D8C();
    v115 = v129;
    sub_1E487803C();
    sub_1E4773850(v115, v136, &qword_1ECF7D5B0, &qword_1E4881F78);
    swift_storeEnumTagMultiPayload();
    sub_1E4830B2C();
    sub_1E4830C18();
    v116 = v140;
    sub_1E487803C();
    sub_1E47738B8(v115, &qword_1ECF7D5B0, &qword_1E4881F78);
    sub_1E4773850(v116, v143, &qword_1ECF7D5A0, &qword_1E4881F68);
    swift_storeEnumTagMultiPayload();
    sub_1E4830AA0();
    v41 = v138;
    sub_1E487803C();
    sub_1E47738B8(v116, &qword_1ECF7D5A0, &qword_1E4881F68);
    v88 = v95;
    v89 = &qword_1ECF7D5C0;
    goto LABEL_12;
  }

  v146 = 0;
  v147 = 0xE000000000000000;
  sub_1E4878F9C();

  v146 = 0xD00000000000001BLL;
  v147 = 0x80000001E48A64A0;
  sub_1E482EE90(v22);
  sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
  v118 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v118);

  (*(v19 + 8))(v22, v18);
  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E4830584@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

uint64_t sub_1E4830614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v17 = sub_1E48780DC();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D590, &unk_1E4881F50);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1E482F098(v2, &v15 - v7);
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E4830990();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
  v9 = v16;
  sub_1E487859C();
  (*(v3 + 8))(v5, v17);
  sub_1E47738B8(v8, &qword_1ECF7D590, &unk_1E4881F50);
  KeyPath = swift_getKeyPath();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5C8, &unk_1E4881FC8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80);
  sub_1E4877A7C();
  *v11 = KeyPath;
  v12 = swift_getKeyPath();
  LOBYTE(v11) = *(v18 + *(type metadata accessor for CalendarEventsTimelineEntry(0) + 28));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5D0, &qword_1E4882000);
  v14 = v9 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = v11;
  return result;
}

unint64_t sub_1E4830990()
{
  result = qword_1EE2B1038;
  if (!qword_1EE2B1038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D590, &unk_1E4881F50);
    sub_1E4830A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1038);
  }

  return result;
}

unint64_t sub_1E4830A14()
{
  result = qword_1EE2B1120;
  if (!qword_1EE2B1120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D598, &qword_1E4881F60);
    sub_1E4830AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1120);
  }

  return result;
}

unint64_t sub_1E4830AA0()
{
  result = qword_1EE2B1160;
  if (!qword_1EE2B1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5A0, &qword_1E4881F68);
    sub_1E4830B2C();
    sub_1E4830C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1160);
  }

  return result;
}

unint64_t sub_1E4830B2C()
{
  result = qword_1EE2B1240;
  if (!qword_1EE2B1240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5A8, &qword_1E4881F70);
    sub_1E4831220(qword_1EE2B2840, type metadata accessor for SmallListContentView, &unk_1E4880AD8);
    sub_1E4831220(qword_1EE2B26E0, type metadata accessor for MediumListContentView, &unk_1E48815C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1240);
  }

  return result;
}

unint64_t sub_1E4830C18()
{
  result = qword_1EE2B1210;
  if (!qword_1EE2B1210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5B0, &qword_1E4881F78);
    sub_1E4830CA4();
    sub_1E4830D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1210);
  }

  return result;
}

unint64_t sub_1E4830CA4()
{
  result = qword_1EE2B15F0;
  if (!qword_1EE2B15F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5B8, &unk_1E4881F80);
    sub_1E4831220(qword_1EE2B2480, type metadata accessor for LargeSpatialContentView, &unk_1E487FDC8);
    sub_1E4773680(&qword_1EE2B10C8, &qword_1ECF7BEE0, &unk_1E487BFC0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15F0);
  }

  return result;
}

unint64_t sub_1E4830D8C()
{
  result = qword_1EE2B15E8;
  if (!qword_1EE2B15E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5C0, &qword_1E4881F90);
    sub_1E4831220(qword_1EE2B1F40, type metadata accessor for ExtraLargeSpatialContentView, &unk_1E487B570);
    sub_1E4773680(&qword_1EE2B10C8, &qword_1ECF7BEE0, &unk_1E487BFC0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15E8);
  }

  return result;
}

uint64_t sub_1E4830E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D598, &qword_1E4881F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4830F08(uint64_t a1)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69857F0])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x1E69857F8] || v6 == *MEMORY[0x1E69857E0] || v6 == *MEMORY[0x1E6985810])
  {
    return 8;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1E4878F9C();

  v11 = 0xD00000000000001BLL;
  v12 = 0x80000001E48A64A0;
  sub_1E4831220(&qword_1EE2B4700, MEMORY[0x1E6985840], MEMORY[0x1E6985858]);
  v10 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v10);

  MEMORY[0x1E69192D0](0xD000000000000013, 0x80000001E48A9BF0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E483112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E48311B8(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  v5 = sub_1E487732C();
  return (*(*(v5 - 8) + 24))(a2, v4, v5);
}

uint64_t sub_1E48311B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4831220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4831268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E48312C8()
{
  result = qword_1EE2B13D8;
  if (!qword_1EE2B13D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5D0, &qword_1E4882000);
    sub_1E4831380();
    sub_1E4773680(&qword_1EE2B10B0, &qword_1ECF7BED8, &unk_1E4882140, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13D8);
  }

  return result;
}

unint64_t sub_1E4831380()
{
  result = qword_1EE2B1530;
  if (!qword_1EE2B1530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D5C8, &unk_1E4881FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D590, &unk_1E4881F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E4830990();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1530);
  }

  return result;
}

uint64_t type metadata accessor for ConflictColorBarView(uint64_t a1)
{
  result = qword_1EE2B2B48;
  if (!qword_1EE2B2B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4831548(uint64_t a1)
{
  sub_1E483163C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
  if (v1 <= 0x3F)
  {
    sub_1E483163C(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E483163C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E48316BC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1E4832160(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1E48318A4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ConflictColorBarView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1E4831EB4(v1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1E4831F18(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1E487889C();
  sub_1E4877BCC();
  v8 = v18[2];
  v9 = v20;
  v10 = v22;
  v11 = v23;
  v25 = v19;
  v24 = v21;
  LOBYTE(v5) = sub_1E487819C();
  sub_1E4877B0C();
  v12 = v25;
  v13 = v24;
  *a1 = sub_1E4831F7C;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v12;
  *(a1 + 32) = v9;
  *(a1 + 40) = v13;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v5;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = 0;
}

uint64_t sub_1E4831A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a1;
  v5 = sub_1E4877B3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4878D2C();
  v20[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877FAC();
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D5F8, &unk_1E48821C0);
  v9 = type metadata accessor for ConflictColorBarView(0);
  v10 = *(a2 + *(v9 + 20));
  sub_1E48316BC(v8);
  v11 = sub_1E486B590(v10, 3, v8);
  (*(v6 + 8))(v8, v5);
  *&v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D600, &unk_1E48821D0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8, MEMORY[0x1E69E6338]);
  sub_1E4831FFC();
  sub_1E4832108();
  sub_1E487886C();

  sub_1E4877BEC();
  sub_1E487889C();
  sub_1E4877BCC();
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D610, &qword_1E48821E0) + 36));
  v13 = v22;
  *v12 = v21;
  v12[1] = v13;
  v12[2] = v23;
  v14 = *(a2 + *(v9 + 24));
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D618, &qword_1E48821E8) + 36));
  v16 = *(sub_1E4877CDC() + 20);
  v17 = *MEMORY[0x1E697F470];
  v18 = sub_1E4877F7C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);

  *v15 = v14;
  *(v15 + 1) = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D620, &qword_1E48821F0);
  *&v15[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1E4831DFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  KeyPath = swift_getKeyPath();

  *a2 = KeyPath;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E4831EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConflictColorBarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4831F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConflictColorBarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4831F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ConflictColorBarView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4831A44(a1, v6, a2);
}

unint64_t sub_1E4831FFC()
{
  result = qword_1ECF7D608;
  if (!qword_1ECF7D608)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D600, &unk_1E48821D0);
    sub_1E48320B4(v1, v2, v3);
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D608);
  }

  return result;
}

unint64_t sub_1E48320B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B0EA8;
  if (!qword_1EE2B0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0EA8);
  }

  return result;
}

unint64_t sub_1E4832108()
{
  result = qword_1EE2B4080;
  if (!qword_1EE2B4080)
  {
    type metadata accessor for ColorBarView.Styling(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4080);
  }

  return result;
}

uint64_t sub_1E4832160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E48321D0()
{
  result = qword_1ECF7D628;
  if (!qword_1ECF7D628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D630, &qword_1E4882228);
    sub_1E483225C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D628);
  }

  return result;
}

unint64_t sub_1E483225C()
{
  result = qword_1ECF7D638;
  if (!qword_1ECF7D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D640, &qword_1E4882230);
    sub_1E4773680(&qword_1ECF7D648, &qword_1ECF7D650, qword_1E4882238, MEMORY[0x1E697E370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D638);
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

uint64_t sub_1E4832328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4832370(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_1E48323DC@<D0>(__int16 a1@<W0>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1E4877F6C();
  if ((a1 & 0x100) != 0)
  {
    LOBYTE(v29) = 0;
    sub_1E4832800(a1 & 1, v20);
    *&v37[7] = v20[0];
    *&v37[23] = v20[1];
    *&v37[39] = v21[0];
    *&v37[48] = *(v21 + 9);
    v22[0] = v7;
    v22[1] = 0;
    v23[0] = v29;
    *&v23[1] = *v37;
    *&v23[17] = *&v37[16];
    *&v23[33] = *&v37[32];
    *&v23[49] = *(v21 + 9);
    v26[0] = v7;
    v26[1] = *v23;
    v26[3] = *&v23[32];
    v26[4] = *&v23[48];
    v26[2] = *&v23[16];
    v24[0] = v7;
    v24[1] = *v23;
    v24[3] = *&v23[32];
    v24[4] = *&v23[48];
    v24[2] = *&v23[16];
    *&v19[23] = *v23;
    v27 = BYTE8(v21[1]);
    v25 = BYTE8(v21[1]);
    *&v19[7] = v7;
    v19[87] = BYTE8(v21[1]);
    *&v19[71] = *&v23[48];
    *&v19[55] = *&v23[32];
    *&v19[39] = *&v23[16];
    sub_1E4773850(v22, v37, &qword_1ECF7D690, &qword_1E48822F8);
    sub_1E4773850(v24, v37, &qword_1ECF7D690, &qword_1E48822F8);
    sub_1E47738B8(v26, &qword_1ECF7D690, &qword_1E48822F8);
    *v37 = a4;
    *&v37[41] = *&v19[32];
    *&v37[57] = *&v19[48];
    *v38 = *&v19[64];
    *&v37[9] = *v19;
    v28 = 0;
    v37[8] = 0;
    *&v38[16] = *&v19[80];
    *&v37[25] = *&v19[16];
    *&v38[31] = 0;
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D660, &qword_1E48822E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D668, &qword_1E48822E8);
    sub_1E4773680(&qword_1ECF7D670, &qword_1ECF7D660, &qword_1E48822E0, MEMORY[0x1E6981F50]);
    sub_1E4832D7C();
    sub_1E487803C();
    sub_1E47738B8(v22, &qword_1ECF7D690, &qword_1E48822F8);
  }

  else
  {
    sub_1E4832A00(a1 & 1, v37);
    v8 = *v37;
    v9 = v37[16];
    v10 = *&v37[24];
    v11 = *&v37[32];
    v12 = v37[40];
    LOBYTE(v24[0]) = 0;
    LOBYTE(v22[0]) = v37[16];
    LOBYTE(v20[0]) = v37[40];
    v13 = sub_1E487814C();
    LOBYTE(v26[0]) = 1;
    *v37 = v7;
    v37[16] = 0;
    *&v37[24] = v8;
    v37[40] = v9;
    *&v37[48] = v10;
    *&v37[56] = v11;
    v37[64] = v12;
    v37[72] = v13;
    *&v38[7] = a4;
    *&v38[15] = xmmword_1E487BFD0;
    *&v38[31] = 0;
    v39 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D660, &qword_1E48822E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D668, &qword_1E48822E8);
    sub_1E4773680(&qword_1ECF7D670, &qword_1ECF7D660, &qword_1E48822E0, MEMORY[0x1E6981F50]);
    sub_1E4832D7C();
    sub_1E487803C();
  }

  *&v38[23] = v35;
  v14 = v36;
  *v37 = v29;
  *&v37[16] = v30;
  *&v37[32] = v31;
  *&v37[48] = v32;
  v15 = v34;
  *(a3 + 64) = v33;
  *(a3 + 80) = v15;
  *(a3 + 96) = *&v38[23];
  *(a3 + 112) = v14;
  v16 = *&v37[16];
  *a3 = *v37;
  *(a3 + 16) = v16;
  result = *&v37[32];
  v18 = *&v37[48];
  *(a3 + 32) = *&v37[32];
  *(a3 + 48) = v18;
  return result;
}

void sub_1E4832800(char a1@<W0>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E486E640((a1 & 1) == 0, 1);
  if (*(v5 + 16))
  {

    sub_1E477A374(v6, v7, v8);
    v9 = sub_1E487848C();
    v11 = v10;
    v13 = v12;
    sub_1E48786FC();
    v14 = sub_1E48783FC();
    v16 = v15;
    v18 = v17;

    sub_1E477A3C8(v9, v11, v13 & 1);

    v19 = sub_1E487842C();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1E477A3C8(v14, v16, v18 & 1);

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = v19;
    *(a3 + 24) = v21;
    *(a3 + 32) = v23 & 1;
    *(a3 + 40) = v25;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    sub_1E478B8E0(v19, v21, v23 & 1);

    sub_1E477A3C8(v19, v21, v23 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E4832A00(char a1@<W0>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E486E640((a1 & 1) == 0, 1);
  if (*(v5 + 16))
  {

    sub_1E477A374(v6, v7, v8);
    v9 = sub_1E487848C();
    v11 = v10;
    v13 = v12;
    sub_1E48786FC();
    v14 = sub_1E48783FC();
    v16 = v15;
    v18 = v17;

    sub_1E477A3C8(v9, v11, v13 & 1);

    v19 = sub_1E487842C();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1E477A3C8(v14, v16, v18 & 1);

    *a3 = v19;
    *(a3 + 8) = v21;
    *(a3 + 16) = v23 & 1;
    *(a3 + 24) = v25;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    sub_1E478B8E0(v19, v21, v23 & 1);

    sub_1E477A3C8(v19, v21, v23 & 1);
  }

  else
  {
    __break(1u);
  }
}

double sub_1E4832BEC@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = v2[1];
  v7 = sub_1E4877FBC();
  v24 = 0;
  if (v5)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_1E48323DC(v8 | v4, &v15, v6);
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v33[0] = v15;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v33[6] = v21;
  v34 = v22;
  sub_1E4773850(&v25, &v14, &qword_1ECF7D658, &qword_1E48822D8);
  sub_1E47738B8(v33, &qword_1ECF7D658, &qword_1E48822D8);
  *(&v23[4] + 7) = v29;
  *(&v23[5] + 7) = v30;
  *(&v23[6] + 7) = v31;
  *(&v23[7] + 7) = v32;
  *(v23 + 7) = v25;
  *(&v23[1] + 7) = v26;
  *(&v23[2] + 7) = v27;
  *(&v23[3] + 7) = v28;
  v9 = v23[5];
  *(a2 + 81) = v23[4];
  *(a2 + 97) = v9;
  *(a2 + 113) = v23[6];
  *(a2 + 122) = *(&v23[6] + 9);
  v10 = v23[1];
  *(a2 + 17) = v23[0];
  *(a2 + 33) = v10;
  result = *&v23[2];
  v12 = v23[3];
  *(a2 + 49) = v23[2];
  v13 = v24;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 65) = v12;
  return result;
}

unint64_t sub_1E4832D7C()
{
  result = qword_1ECF7D678;
  if (!qword_1ECF7D678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D668, &qword_1E48822E8);
    sub_1E4773680(&qword_1ECF7D680, &qword_1ECF7D688, &qword_1E48822F0, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D678);
  }

  return result;
}

uint64_t type metadata accessor for WideReminderView(uint64_t a1)
{
  result = qword_1EE2B3670;
  if (!qword_1EE2B3670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4832EA8(uint64_t a1)
{
  type metadata accessor for Event(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CellDisplayContext(319);
    if (v2 <= 0x3F)
    {
      sub_1E4833030(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
      if (v3 <= 0x3F)
      {
        sub_1E4833030(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v4 <= 0x3F)
        {
          sub_1E4833030(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v5 <= 0x3F)
          {
            sub_1E4833030(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
            if (v6 <= 0x3F)
            {
              sub_1E4833030(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E4833030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E48330A0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideReminderView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E48332A8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideReminderView(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E48334B0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideReminderView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E48336B8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideReminderView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E4833808@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideReminderView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4833A10()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideReminderView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 128);

  return v10;
}

uint64_t sub_1E4833B74()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideReminderView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 136);

  return v10;
}

void sub_1E4833CD8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v55 - v5;
  v7 = sub_1E487757C();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487753C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v55 - v15);
  v17 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v58 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WideReminderView(0);
  sub_1E483786C(v2 + *(v22 + 20), v21, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = a1;
    v23 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E48330A0(v16);
    v24 = sub_1E487748C();
    v25 = *(v11 + 8);
    v25(v16, v10);
    [v23 setCalendar_];

    sub_1E48330A0(v16);
    sub_1E487750C();
    v25(v16, v10);
    v26 = sub_1E487756C();
    (*(v56 + 8))(v9, v57);
    [v23 setTimeZone_];

    sub_1E48330A0(v14);
    sub_1E48774EC();
    v25(v14, v10);
    v27 = sub_1E487744C();
    v28 = *(v27 - 8);
    v29 = 0;
    if ((*(v28 + 48))(v6, 1, v27) != 1)
    {
      v29 = sub_1E48773DC();
      (*(v28 + 8))(v6, v27);
    }

    [v23 setLocale_];

    type metadata accessor for Event(0);
    v35 = sub_1E4878B9C();
    [v23 setLocalizedDateFormatFromTemplate_];

    v36 = sub_1E48772BC();
    v37 = [v23 stringFromDate_];

    sub_1E4878BDC();
    sub_1E48771FC();
    sub_1E48771AC();
    sub_1E48336B8();

    v38 = sub_1E48781CC();

    aBlock[0] = v38;
    sub_1E47C4180(v39, v40, v41);
    sub_1E48771BC();
  }

  else
  {
    v56 = v11;
    v57 = v10;
    v30 = sub_1E487732C();
    (*(*(v30 - 8) + 8))(v21, v30);
    if (*(v2 + *(type metadata accessor for Event(0) + 48)) == 1)
    {
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      sub_1E48771FC();
      sub_1E48771AC();
      sub_1E48336B8();

      v31 = sub_1E48781CC();

      aBlock[0] = v31;
      sub_1E47C4180(v32, v33, v34);
      sub_1E48771BC();
    }

    else
    {
      sub_1E48330A0(v16);
      sub_1E48336B8();

      v42 = sub_1E48781CC();

      v43 = objc_opt_self();
      v44 = sub_1E48772BC();
      v45 = sub_1E487748C();
      v46 = [v43 timeAttributedTextWithDate:v44 calendar:v45 font:0 options:16];

      v47 = [v46 string];
      sub_1E4878BDC();

      sub_1E48771FC();
      v48 = sub_1E48771AC();
      aBlock[0] = v42;
      sub_1E47C4180(v48, v49, v50);

      sub_1E48771BC();
      v58 = *MEMORY[0x1E6993360];
      v51 = [v46 length];
      v52 = swift_allocObject();
      *(v52 + 16) = a1;
      *(v52 + 24) = v42;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_1E47C41D4;
      *(v53 + 24) = v52;
      aBlock[4] = sub_1E48378D4;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E48373C0;
      aBlock[3] = &block_descriptor_3;
      v54 = _Block_copy(aBlock);

      [v46 enumerateAttribute:v58 inRange:0 options:v51 usingBlock:{0, v54}];

      _Block_release(v54);

      (*(v56 + 8))(v16, v57);
      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if (v46)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1E4834648@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v35 - v3;
  v4 = sub_1E487725C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4877CCC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = v1;
  sub_1E48332A8((&v35 - v14));
  sub_1E4877CAC();
  sub_1E47C42C4(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v17 = sub_1E4878EAC();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v15, v9);
  if (v17)
  {
    return (*(v5 + 56))(v38, 1, 1, v4);
  }

  v20 = v5;
  v21 = v38;
  v22 = type metadata accessor for WideReminderView(0);
  sub_1E483786C(v16 + *(v22 + 20), v8, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = v16;
  if (EnumCaseMultiPayload)
  {
    v25 = v37;
    if (EnumCaseMultiPayload != 1)
    {
      v33 = type metadata accessor for Event(0);
      sub_1E4773850(v24 + *(v33 + 44), v21, &unk_1ECF7B688, &qword_1E487C160);
      v34 = sub_1E487732C();
      return (*(*(v34 - 8) + 8))(v8, v34);
    }

    v26 = *v8;
  }

  else
  {
    v26 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C408, &qword_1E487DDD0) + 48)];
    v27 = sub_1E487732C();
    (*(*(v27 - 8) + 8))(v8, v27);
    v25 = v37;
  }

  v28 = type metadata accessor for Event(0);
  sub_1E4773850(v24 + *(v28 + 44), v25, &unk_1ECF7B688, &qword_1E487C160);
  v29 = v20;
  v30 = v4;
  if ((*(v20 + 48))(v25, 1, v4) == 1)
  {
    sub_1E47738B8(v25, &unk_1ECF7B688, &qword_1E487C160);
  }

  else
  {
    v31 = *(v20 + 32);
    v32 = v35;
    v31(v35, v25, v30);
    if (v26)
    {
      v31(v21, v32, v30);
      return (*(v29 + 56))(v21, 0, 1, v30);
    }

    (*(v29 + 8))(v32, v30);
  }

  return (*(v29 + 56))(v21, 1, 1, v30);
}

uint64_t sub_1E4834B0C()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E487893C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  sub_1E4833808((&v17 - v10));
  sub_1E487892C();
  v12 = sub_1E48788FC();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if ((v12 & 1) == 0)
  {
    sub_1E4833808(v11);
    sub_1E487890C();
    v14 = sub_1E48788FC();
    v13(v9, v5);
    v13(v11, v5);
    if ((v14 & 1) == 0)
    {
      return sub_1E48786EC();
    }
  }

  sub_1E48334B0(v4);
  sub_1E476F0D0(v0, v4);
  v15 = sub_1E48785FC();
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_1E4834D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D708, &qword_1E48824E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1E4877B3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4878D2C();
  v34 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for Event(0);
  sub_1E4878BDC();
  v13 = sub_1E487874C();
  v14 = sub_1E4833A10();
  KeyPath = swift_getKeyPath();
  v27 = KeyPath;
  sub_1E48334B0(v12);
  v33 = sub_1E4770A7C(a1, v12);
  (*(v10 + 8))(v12, v9);
  v32 = swift_getKeyPath();
  sub_1E48336B8();

  sub_1E487889C();
  sub_1E4877BCC();
  v30 = v41;
  v31 = v39;
  v28 = v44;
  v29 = v43;
  v38 = 1;
  v37 = v40;
  v36 = v42;
  *v8 = sub_1E4877FBC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D710, &qword_1E4882548);
  sub_1E4835120(a1, &v8[*(v16 + 44)]);
  v17 = v38;
  v18 = v37;
  v19 = v8;
  v20 = v36;
  v21 = v35;
  sub_1E4773850(v19, v35, &qword_1ECF7D708, &qword_1E48824E0);
  *a2 = v13;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v14;
  v22 = v33;
  *(a2 + 24) = v32;
  *(a2 + 32) = v22;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  v23 = v30;
  *(a2 + 56) = v31;
  *(a2 + 64) = v18;
  *(a2 + 72) = v23;
  *(a2 + 80) = v20;
  v24 = v28;
  *(a2 + 88) = v29;
  *(a2 + 96) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D718, &qword_1E4882550);
  sub_1E4773850(v21, a2 + *(v25 + 64), &qword_1ECF7D708, &qword_1E48824E0);

  sub_1E47738B8(v19, &qword_1ECF7D708, &qword_1E48824E0);
  sub_1E47738B8(v21, &qword_1ECF7D708, &qword_1E48824E0);
}

uint64_t sub_1E4835120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D720, &qword_1E4882558);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v28 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D728, &qword_1E4882560);
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D730, &qword_1E4882568);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D738, &qword_1E4882570);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  sub_1E4878D2C();
  v30 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v19 = sub_1E4877F6C();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D740, &qword_1E4882578);
  sub_1E4835588(a1, &v19[*(v20 + 44)]);
  if (*(a1 + *(type metadata accessor for Event(0) + 48)))
  {
    v21 = 1;
    v22 = v29;
  }

  else
  {
    v23 = *(sub_1E48336B8() + 96);

    *v4 = sub_1E4877F6C();
    *(v4 + 1) = v23;
    v4[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D748, &qword_1E4882580);
    sub_1E4835DD8(a1, &v4[*(v24 + 44)]);
    sub_1E4773680(&qword_1ECF7D750, &qword_1ECF7D720, &qword_1E4882558, MEMORY[0x1E6981800]);
    sub_1E48784AC();
    sub_1E47738B8(v4, &qword_1ECF7D720, &qword_1E4882558);
    v22 = v29;
    (*(v5 + 32))(v13, v7, v29);
    v21 = 0;
  }

  (*(v5 + 56))(v13, v21, 1, v22);
  sub_1E4773850(v19, v17, &qword_1ECF7D738, &qword_1E4882570);
  sub_1E4773850(v13, v11, &qword_1ECF7D730, &qword_1E4882568);
  v25 = v31;
  sub_1E4773850(v17, v31, &qword_1ECF7D738, &qword_1E4882570);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D758, &qword_1E4882588);
  sub_1E4773850(v11, v25 + *(v26 + 48), &qword_1ECF7D730, &qword_1E4882568);
  sub_1E47738B8(v13, &qword_1ECF7D730, &qword_1E4882568);
  sub_1E47738B8(v19, &qword_1ECF7D738, &qword_1E4882570);
  sub_1E47738B8(v11, &qword_1ECF7D730, &qword_1E4882568);
  sub_1E47738B8(v17, &qword_1ECF7D738, &qword_1E4882570);
}

uint64_t sub_1E4835588@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C680, &qword_1E4882590);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v63 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D760, &qword_1E4882598);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v64 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D778, &unk_1E4882618);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v63 - v10;
  v69 = sub_1E4877B3C();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v72 = *(v73 - 8);
  v12 = MEMORY[0x1EEE9AC00](v73);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v63 - v14;
  sub_1E4878D2C();
  v70 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v87 = sub_1E47CC708();
  *(&v87 + 1) = v15;
  sub_1E477A374(v87, v15, v16);
  v17 = sub_1E487848C();
  v19 = v18;
  v21 = v20;
  sub_1E4833A10();
  v22 = sub_1E487842C();
  v24 = v23;
  v26 = v25;

  sub_1E477A3C8(v17, v19, v21 & 1);

  v27 = v67;
  sub_1E48334B0(v67);
  sub_1E476EA20(a1, v27);
  (*(v68 + 8))(v27, v69);
  v28 = sub_1E48783FC();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_1E477A3C8(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  *&v87 = v28;
  *(&v87 + 1) = v30;
  LOBYTE(v88) = v32 & 1;
  *(&v88 + 1) = v34;
  *&v89 = KeyPath;
  *(&v89 + 1) = 1;
  LOBYTE(v90) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v28, v30, v32 & 1);

  if (*(a1 + *(type metadata accessor for Event(0) + 48)) == 1)
  {
    sub_1E4833CD8(v63);
    v36 = sub_1E487847C();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = swift_getKeyPath();
    v44 = sub_1E4834B0C();
    v45 = swift_getKeyPath();
    v86 = v40 & 1;
    v85 = 0;
    *&v80 = v36;
    *(&v80 + 1) = v38;
    LOBYTE(v81) = v40 & 1;
    *(&v81 + 1) = v42;
    *&v82 = v43;
    *(&v82 + 1) = 1;
    LOBYTE(v83) = 0;
    *(&v83 + 1) = v45;
    v84 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
    sub_1E479A240();
    v46 = v65;
    sub_1E487852C();
    v89 = v82;
    v90 = v83;
    v91 = v84;
    v87 = v80;
    v88 = v81;
    sub_1E47738B8(&v87, &qword_1ECF7C000, &unk_1E48825D0);
    sub_1E48377B0();
    v47 = v64;
    sub_1E48784AC();
    sub_1E47738B8(v46, &qword_1ECF7C680, &qword_1E4882590);
    v48 = v74;
    v49 = v76;
    v50 = v47;
    v51 = v75;
    (*(v74 + 32))(v76, v50, v75);
    (*(v48 + 56))(v49, 0, 1, v51);
  }

  else
  {
    v49 = v76;
    (*(v74 + 56))(v76, 1, 1, v75);
  }

  v52 = v72;
  v53 = *(v72 + 16);
  v54 = v71;
  v55 = v79;
  v56 = v73;
  v53(v71, v79, v73);
  v57 = v77;
  sub_1E4773850(v49, v77, &qword_1ECF7D778, &unk_1E4882618);
  v58 = v78;
  v53(v78, v54, v56);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D780, &unk_1E4882628);
  v60 = &v58[*(v59 + 48)];
  *v60 = 0;
  v60[8] = 1;
  sub_1E4773850(v57, &v58[*(v59 + 64)], &qword_1ECF7D778, &unk_1E4882618);
  sub_1E47738B8(v49, &qword_1ECF7D778, &unk_1E4882618);
  v61 = *(v52 + 8);
  v61(v55, v56);
  sub_1E47738B8(v57, &qword_1ECF7D778, &unk_1E4882618);
  v61(v54, v56);
}

uint64_t sub_1E4835DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_1E487719C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C680, &qword_1E4882590);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v62 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D760, &qword_1E4882598);
  v72 = *(v73 - 8);
  v7 = MEMORY[0x1EEE9AC00](v73);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v62 - v9;
  v10 = sub_1E4877B3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v62 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - v20;
  sub_1E4878D2C();
  v67 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *(sub_1E48336B8() + 146);

  v65 = v21;
  if (v22 == 1)
  {
    v62 = sub_1E487876C();
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36);
    v63 = v14;
    v24 = v21;
    v25 = (v16 + v23);
    v26 = v11;
    v27 = v10;
    v28 = v5;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v30 = *MEMORY[0x1E69816D0];
    v31 = sub_1E487877C();
    v32 = v25 + v29;
    v5 = v28;
    v10 = v27;
    v11 = v26;
    (*(*(v31 - 8) + 104))(v32, v30, v31);
    *v25 = swift_getKeyPath();
    *v16 = v62;
    v33 = sub_1E4833B74();
    KeyPath = swift_getKeyPath();
    v35 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v35 = KeyPath;
    v35[1] = v33;
    sub_1E48334B0(v13);
    sub_1E476F0D0(a1, v13);
    v36 = sub_1E48785FC();
    (*(v11 + 8))(v13, v10);
    v37 = swift_getKeyPath();
    v38 = v63;
    v39 = (v16 + *(v63 + 36));
    *v39 = v37;
    v39[1] = v36;
    sub_1E47811C4(v16, v24);
    (*(v64 + 56))(v24, 0, 1, v38);
  }

  else
  {
    (*(v64 + 56))(v21, 1, 1, v14);
  }

  sub_1E4833CD8(v5);
  v40 = sub_1E487847C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = swift_getKeyPath();
  sub_1E48334B0(v13);
  sub_1E476F0D0(a1, v13);
  v48 = sub_1E48785FC();
  (*(v11 + 8))(v13, v10);
  v49 = swift_getKeyPath();
  v81 = v44 & 1;
  v80 = 0;
  *&v75 = v40;
  *(&v75 + 1) = v42;
  LOBYTE(v76) = v44 & 1;
  *(&v76 + 1) = v46;
  *&v77 = v47;
  *(&v77 + 1) = 1;
  LOBYTE(v78) = 0;
  *(&v78 + 1) = v49;
  v79 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
  sub_1E479A240();
  v50 = v68;
  sub_1E487852C();
  v82[2] = v77;
  v82[3] = v78;
  v83 = v79;
  v82[0] = v75;
  v82[1] = v76;
  sub_1E47738B8(v82, &qword_1ECF7C000, &unk_1E48825D0);
  sub_1E48377B0();
  v51 = v70;
  sub_1E48784AC();
  sub_1E47738B8(v50, &qword_1ECF7C680, &qword_1E4882590);
  v52 = v65;
  v53 = v66;
  sub_1E4773850(v65, v66, &qword_1ECF7B9D0, &qword_1E487AC00);
  v54 = v72;
  v55 = *(v72 + 16);
  v56 = v71;
  v57 = v73;
  v55(v71, v51, v73);
  v58 = v74;
  sub_1E4773850(v53, v74, &qword_1ECF7B9D0, &qword_1E487AC00);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D770, &qword_1E48825E0);
  v55((v58 + *(v59 + 48)), v56, v57);
  v60 = *(v54 + 8);
  v60(v51, v57);
  sub_1E47738B8(v52, &qword_1ECF7B9D0, &qword_1E487AC00);
  v60(v56, v57);
  sub_1E47738B8(v53, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E48365B4@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6A8, &qword_1E4882388);
  MEMORY[0x1EEE9AC00](v67);
  v3 = &v65 - v2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6B0, &qword_1E4882390);
  MEMORY[0x1EEE9AC00](v70);
  v68 = (&v65 - v4);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6B8, &qword_1E4882398);
  MEMORY[0x1EEE9AC00](v69);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6C0, &unk_1E48823A0);
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v65 - v10;
  v12 = sub_1E487725C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  sub_1E4834648(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v19 = v1;
    v65 = v6;
    v66 = v7;
    sub_1E47738B8(v11, &unk_1ECF7B688, &qword_1E487C160);
    *v3 = sub_1E4877FBC();
    *(v3 + 1) = 0;
    v3[16] = 0;
    sub_1E4878D2C();
    sub_1E4878D1C();
    sub_1E4878D0C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v20 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6C8, &qword_1E48823B0) + 44)];
    *v20 = sub_1E4877F5C();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D0, &qword_1E48823B8);
    sub_1E4834D3C(v1, &v20[*(v21 + 44)]);
    sub_1E48336B8();

    v22 = sub_1E487814C();
    sub_1E4877B0C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D8, &qword_1E48823C0) + 36)];
    *v31 = v22;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    v32 = sub_1E487818C();
    sub_1E48336B8();

    sub_1E4877B0C();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E0, &qword_1E48823C8) + 36)];
    *v41 = v32;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v42 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E8, &qword_1E48823D0) + 36)];
    sub_1E483786C(v19, v42, type metadata accessor for Event);
    v43 = type metadata accessor for Event(0);
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    KeyPath = swift_getKeyPath();
    v45 = swift_getKeyPath();
    v46 = type metadata accessor for EventBackgroundView(0);
    *(v42 + v46[8]) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *(v42 + v46[9]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v42 + v46[10]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v47 = swift_getKeyPath();
    *(v42 + v46[5]) = 3;
    *(v42 + v46[6]) = 1;
    v48 = v42 + v46[7];
    *v48 = KeyPath;
    *(v48 + 8) = 0;
    v49 = v42 + v46[11];
    *v49 = v47;
    *(v49 + 8) = 0;
    v50 = sub_1E487889C();
    v52 = v51;

    v53 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
    *v53 = v50;
    v53[1] = v52;
    v72 = sub_1E47CC9E8(*(v19 + *(v43 + 56)));
    v73 = v54;
    sub_1E477A374(v72, v54, v55);
    v56 = sub_1E487848C();
    v58 = v57;
    LOBYTE(KeyPath) = v59;
    sub_1E4773680(&qword_1ECF7D6F0, &qword_1ECF7D6A8, &qword_1E4882388, MEMORY[0x1E6981868]);
    v60 = v68;
    sub_1E487857C();
    sub_1E477A3C8(v56, v58, KeyPath & 1);

    sub_1E47738B8(v3, &qword_1ECF7D6A8, &qword_1E4882388);
    sub_1E4773850(v60, v65, &qword_1ECF7D6B0, &qword_1E4882390);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7D6F8, &qword_1ECF7D6C0, &unk_1E48823A0, MEMORY[0x1E697CD08]);
    sub_1E48374C0();
    sub_1E487803C();
    return sub_1E47738B8(v60, &qword_1ECF7D6B0, &qword_1E4882390);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v62 = (*(v13 + 16))(v16, v18, v12);
    v68 = &v65;
    MEMORY[0x1EEE9AC00](v62);
    *(&v65 - 2) = v1;
    sub_1E48374C0();
    v63 = v65;
    sub_1E487831C();
    v64 = v66;
    (*(v66 + 16))(v6, v63, v7);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7D6F8, &qword_1ECF7D6C0, &unk_1E48823A0, MEMORY[0x1E697CD08]);
    sub_1E487803C();
    (*(v64 + 8))(v63, v7);
    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_1E4836EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6A8, &qword_1E4882388);
  MEMORY[0x1EEE9AC00](v48);
  v4 = &v47 - v3;
  sub_1E4878D2C();
  v47 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v4 = sub_1E4877FBC();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6C8, &qword_1E48823B0) + 44)];
  *v5 = sub_1E4877F5C();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D0, &qword_1E48823B8);
  sub_1E4834D3C(a1, &v5[*(v6 + 44)]);
  sub_1E48336B8();

  v7 = sub_1E487814C();
  sub_1E4877B0C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6D8, &qword_1E48823C0) + 36)];
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  v17 = sub_1E487818C();
  sub_1E48336B8();

  sub_1E4877B0C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E0, &qword_1E48823C8) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D6E8, &qword_1E48823D0) + 36)];
  sub_1E483786C(a1, v27, type metadata accessor for Event);
  v28 = type metadata accessor for Event(0);
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v31 = type metadata accessor for EventBackgroundView(0);
  *(v27 + v31[8]) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *(v27 + v31[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *(v27 + v31[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v32 = swift_getKeyPath();
  *(v27 + v31[5]) = 3;
  *(v27 + v31[6]) = 1;
  v33 = v27 + v31[7];
  *v33 = KeyPath;
  *(v33 + 8) = 0;
  v34 = v27 + v31[11];
  *v34 = v32;
  *(v34 + 8) = 0;
  v35 = sub_1E487889C();
  v37 = v36;

  v38 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v38 = v35;
  v38[1] = v37;
  v50 = sub_1E47CC9E8(*(a1 + *(v28 + 56)));
  v51 = v39;
  sub_1E477A374(v50, v39, v40);
  v41 = sub_1E487848C();
  v43 = v42;
  v45 = v44;
  sub_1E4773680(&qword_1ECF7D6F0, &qword_1ECF7D6A8, &qword_1E4882388, MEMORY[0x1E6981868]);
  sub_1E487857C();
  sub_1E477A3C8(v41, v43, v45 & 1);

  sub_1E47738B8(v4, &qword_1ECF7D6A8, &qword_1E4882388);
}

uint64_t sub_1E48373C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1E479B278(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1E47738B8(v13, &qword_1ECF7C1B8, &unk_1E487C760);
}

unint64_t sub_1E48374C0()
{
  result = qword_1ECF7D700;
  if (!qword_1ECF7D700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D6B0, &qword_1E4882390);
    sub_1E4773680(&qword_1ECF7D6F0, &qword_1ECF7D6A8, &qword_1E4882388, MEMORY[0x1E6981868]);
    sub_1E47C42C4(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D700);
  }

  return result;
}

uint64_t sub_1E48375D4(uint64_t a1)
{
  v2 = sub_1E487877C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877D2C();
}

uint64_t sub_1E483769C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877E4C();
  *a1 = result;
  return result;
}

uint64_t sub_1E48376F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877DBC();
  *a1 = result;
  return result;
}

uint64_t sub_1E483774C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4877EEC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1E48377B0()
{
  result = qword_1ECF7D768;
  if (!qword_1ECF7D768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C680, &qword_1E4882590);
    sub_1E479A240();
    sub_1E47C42C4(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D768);
  }

  return result;
}

uint64_t sub_1E483786C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4837914()
{
  result = qword_1ECF7D788;
  if (!qword_1ECF7D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D790, &qword_1E4882638);
    sub_1E4773680(&qword_1ECF7D6F8, &qword_1ECF7D6C0, &unk_1E48823A0, MEMORY[0x1E697CD08]);
    sub_1E48374C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D788);
  }

  return result;
}

void sub_1E4837A14(uint64_t a1)
{
  sub_1E477D33C();
  if (v1 <= 0x3F)
  {
    sub_1E483AC4C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v2 <= 0x3F)
    {
      sub_1E483AC4C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4837B1C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialGridView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4837D24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D818, &qword_1E48827B8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD38, &qword_1E48827C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D820, &qword_1E48827C8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D828, &qword_1E48827D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  sub_1E4878D2C();
  v43 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for SpatialGridView(0) + 28)) == 1)
  {
    v21 = *a1;
    v39 = a1[1];
    v40 = v21;
    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v24 = type metadata accessor for TimelineHoursView(0);
    v41 = v11;
    v42 = a1;
    v25 = v24;
    *&v14[*(v24 + 28)] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v14[*(v25 + 32)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v26 = v39;
    *v14 = v40;
    *(v14 + 1) = v26;
    *(v14 + 2) = KeyPath;
    v14[24] = 0;
    v27 = *(v25 + 36);
    v28 = sub_1E487821C();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    sub_1E487828C();
    sub_1E47738B8(v10, &qword_1ECF7BD38, &qword_1E48827C0);
    v29 = sub_1E48781FC();

    *&v14[v27] = v29;
    a1 = v42;
    v30 = sub_1E487889C();
    v31 = v41;
    v32 = &v14[*(v41 + 36)];
    *v32 = sub_1E4838244;
    v32[1] = 0;
    v32[2] = v30;
    v32[3] = v33;
    sub_1E483AFC0(v14, v20);
    (*(v12 + 56))(v20, 0, 1, v31);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  *v7 = sub_1E4877FAC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D830, &qword_1E48827D8);
  sub_1E4838300(a1);
  sub_1E4773850(v20, v18, &qword_1ECF7D828, &qword_1E48827D0);
  v34 = v45;
  sub_1E4773850(v7, v45, &qword_1ECF7D818, &qword_1E48827B8);
  v35 = v44;
  sub_1E4773850(v18, v44, &qword_1ECF7D828, &qword_1E48827D0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D838, &qword_1E48827E0);
  sub_1E4773850(v34, v35 + *(v36 + 48), &qword_1ECF7D818, &qword_1E48827B8);
  sub_1E47738B8(v7, &qword_1ECF7D818, &qword_1E48827B8);
  sub_1E47738B8(v20, &qword_1ECF7D828, &qword_1E48827D0);
  sub_1E47738B8(v34, &qword_1ECF7D818, &qword_1E48827B8);
  sub_1E47738B8(v18, &qword_1ECF7D828, &qword_1E48827D0);
}

uint64_t sub_1E4838244@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1E487867C();
  sub_1E4877BEC();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4838300(void *a1)
{
  v2 = type metadata accessor for SpatialGridView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  if (v6 < *a1)
  {
    __break(1u);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = v6;
    swift_getKeyPath();
    sub_1E483B030(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SpatialGridView);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_1E483B098(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SpatialGridView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7C0, &qword_1E48826F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D840, &qword_1E4882880);
    sub_1E483AA04();
    sub_1E4773680(&qword_1EE2B0E70, &qword_1ECF7D840, &qword_1E4882880, MEMORY[0x1E6981F50]);
    sub_1E487885C();
  }

  return result;
}

uint64_t sub_1E4838544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E487884C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-v11];
  v13 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E487883C();
  v14 = *(a2 + 8);
  v15 = v13 != v14;
  v16 = v13 == v14;
  v17 = *(v7 + 16);
  v17(v10, v12, v6);
  v23 = v16;
  v17(a3, v10, v6);
  v18 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D848, &qword_1E4882888) + 48)];
  v19 = v23;
  *v18 = 0;
  v18[8] = v15;
  v18[9] = v19;
  v20 = *(v7 + 8);
  v20(v12, v6);
  v20(v10, v6);
}

uint64_t sub_1E483873C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E487805C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E487867C();
  v16[0] = 0xD00000000000001DLL;
  v16[1] = 0x80000001E48A7CC0;
  sub_1E487808C();
  sub_1E4877BFC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  return result;
}

uint64_t sub_1E48388F8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7E0, &qword_1E4882780);
  MEMORY[0x1EEE9AC00](v48);
  v3 = &v38 - v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7E8, &qword_1E4882788);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v38 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7F0, &qword_1E4882790);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7F8, &qword_1E4882798);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v38 - v6;
  v7 = sub_1E4877CCC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = sub_1E487725C();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v38 = &v38 - v21;
  v22 = v1;
  sub_1E4837B1C(v13);
  sub_1E4877CAC();
  sub_1E483AD88(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v23 = sub_1E4878EAC();
  v24 = *(v8 + 8);
  v24(v11, v7);
  v24(v13, v7);
  if (v23)
  {
    *v3 = sub_1E4877F6C();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D810, &qword_1E48827B0);
    sub_1E4837D24(v22, &v3[*(v25 + 44)]);
    v26 = sub_1E487889C();
    v27 = v47;
    v28 = &v3[*(v48 + 36)];
    *v28 = sub_1E483873C;
    v28[1] = 0;
    v28[2] = v26;
    v28[3] = v29;
    sub_1E4773850(v3, v27, &qword_1ECF7D7E0, &qword_1E4882780);
    swift_storeEnumTagMultiPayload();
    sub_1E483AED8();
    sub_1E483ADF4();
    sub_1E487803C();
    return sub_1E47738B8(v3, &qword_1ECF7D7E0, &qword_1E4882780);
  }

  else
  {
    type metadata accessor for SpatialGridView(0);
    sub_1E4877A6C();
    v32 = v38;
    v31 = v39;
    v33 = v40;
    (*(v39 + 32))(v38, v20, v40);
    v34 = (*(v31 + 16))(v17, v32, v33);
    MEMORY[0x1EEE9AC00](v34);
    *(&v38 - 2) = v22;
    sub_1E483ADF4();
    v35 = v41;
    sub_1E487831C();
    sub_1E4773680(&qword_1EE2B1098, &qword_1ECF7D7F0, &qword_1E4882790, MEMORY[0x1E697CD08]);
    v37 = v43;
    v36 = v44;
    sub_1E487852C();
    (*(v42 + 8))(v35, v36);
    sub_1E4773850(v37, v47, &qword_1ECF7D7F8, &qword_1E4882798);
    swift_storeEnumTagMultiPayload();
    sub_1E483AED8();
    sub_1E487803C();
    sub_1E47738B8(v37, &qword_1ECF7D7F8, &qword_1E4882798);
    return (*(v31 + 8))(v32, v33);
  }
}

uint64_t sub_1E4838F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_1E4877F6C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D810, &qword_1E48827B0);
  sub_1E4837D24(a1, a2 + *(v4 + 44));
  v5 = sub_1E487889C();
  v7 = v6;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7E0, &qword_1E4882780);
  v9 = (a2 + *(result + 36));
  *v9 = sub_1E483873C;
  v9[1] = 0;
  v9[2] = v5;
  v9[3] = v7;
  return result;
}

double sub_1E4839024()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  v7 = sub_1E4878DDC();
  v8 = sub_1E48780FC();
  sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_1E4839170@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TimelineHoursView(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4839378@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TimelineHoursView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4839584(void (*a1)(char *, uint64_t))
{
  v88 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v82 = &v70 - v2;
  v3 = sub_1E487757C();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487753C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v78 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v86 = (&v70 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v70 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v87 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - v16;
  v18 = sub_1E487732C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v81 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v70 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v70 - v27;
  v89 = sub_1E48770FC();
  v93 = *(v89 - 8);
  v29 = MEMORY[0x1EEE9AC00](v89);
  v85 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v70 - v31;
  (*(v6 + 56))(v28, 1, 1, v5);
  (*(v91 + 56))(v25, 1, 1, v92);
  sub_1E48770EC();
  sub_1E4839170(v12);
  v76 = v32;
  sub_1E48774AC();
  v33 = *(v6 + 8);
  v74 = v12;
  v75 = v33;
  v79 = v6 + 8;
  v80 = v5;
  v33(v12, v5);
  v83 = *(v19 + 48);
  result = v83(v17, 1, v18);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v73 = v19;
  v35 = *(v19 + 32);
  v84 = v18;
  v72 = v19 + 32;
  v71 = v35;
  v35(v90, v17, v18);
  v36 = v86;
  sub_1E4839170(v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v37 = sub_1E487751C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1E487BC70;
  v42 = v41 + v40;
  v43 = *(v38 + 104);
  v43(v42, *MEMORY[0x1E6969A50], v37);
  v43(v42 + v39, *MEMORY[0x1E6969A68], v37);
  v43(v42 + 2 * v39, *MEMORY[0x1E6969A78], v37);
  v43(v42 + 3 * v39, *MEMORY[0x1E6969A48], v37);
  sub_1E486B81C(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v44 = v85;
  sub_1E487747C();

  v45 = v44;
  if (v88 == 24)
  {
    sub_1E48770BC();
    result = sub_1E487708C();
    v46 = v87;
    if (v47)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v48 = __OFADD__(result++, 1);
    v49 = v84;
    if (!v48)
    {
      sub_1E487709C();
      goto LABEL_7;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1E48770BC();
  v49 = v84;
  v46 = v87;
LABEL_7:
  sub_1E48774AC();
  result = v83(v46, 1, v49);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v50 = *(v93 + 8);
  v93 += 8;
  v88 = v50;
  v50(v45, v89);
  v51 = v36;
  v52 = v80;
  v53 = v75;
  v75(v51, v80);
  v54 = v81;
  v71(v81, v46, v49);
  v55 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v56 = v74;
  sub_1E4839170(v74);
  v57 = sub_1E487748C();
  v53(v56, v52);
  [v55 setCalendar_];

  sub_1E4839170(v56);
  v58 = v77;
  sub_1E487750C();
  v53(v56, v52);
  v59 = sub_1E487756C();
  (*(v91 + 8))(v58, v92);
  [v55 setTimeZone_];

  v60 = v78;
  sub_1E4839170(v78);
  v61 = v82;
  sub_1E48774EC();
  v53(v60, v52);
  v62 = sub_1E487744C();
  v63 = *(v62 - 8);
  v64 = 0;
  if ((*(v63 + 48))(v61, 1, v62) != 1)
  {
    v64 = sub_1E48773DC();
    (*(v63 + 8))(v61, v62);
  }

  [v55 setLocale_];

  v65 = sub_1E4878B9C();
  [v55 setLocalizedDateFormatFromTemplate_];

  v66 = sub_1E48772BC();
  v67 = [v55 stringFromDate_];

  v68 = sub_1E4878BDC();
  v69 = *(v73 + 8);
  v69(v54, v49);
  v69(v90, v49);
  v88(v76, v89);
  return v68;
}

uint64_t sub_1E483A020@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7A8, &qword_1E48826B8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  sub_1E4878D2C();
  v21 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_1E4877FCC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7B0, &qword_1E48826C0);
  sub_1E483A260(a1);
  sub_1E487889C();
  sub_1E4877BCC();
  v19 = v28;
  v20 = v26;
  v9 = v30;
  v10 = v31;
  v25 = 1;
  v24 = v27;
  v23 = v29;
  sub_1E4773850(v8, v6, &qword_1ECF7D7A8, &qword_1E48826B8);
  v11 = v25;
  v12 = v24;
  v13 = v23;
  v14 = v22;
  sub_1E4773850(v6, v22, &qword_1ECF7D7A8, &qword_1E48826B8);
  v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7B8, &unk_1E48826C8) + 48);
  *v15 = 0;
  *(v15 + 8) = v11;
  v16 = v19;
  *(v15 + 16) = v20;
  *(v15 + 24) = v12;
  *(v15 + 32) = v16;
  *(v15 + 40) = v13;
  *(v15 + 48) = v9;
  *(v15 + 56) = v10;
  sub_1E47738B8(v8, &qword_1ECF7D7A8, &qword_1E48826B8);
  sub_1E47738B8(v6, &qword_1ECF7D7A8, &qword_1E48826B8);
}

uint64_t sub_1E483A260(void *a1)
{
  v2 = type metadata accessor for TimelineHoursView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  if (v6 < *a1)
  {
    __break(1u);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = v6;
    swift_getKeyPath();
    sub_1E483B030(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineHoursView);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_1E483B098(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TimelineHoursView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7C0, &qword_1E48826F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7C8, &qword_1E48826F8);
    sub_1E483AA04();
    sub_1E4773680(&qword_1EE2B0E90, &qword_1ECF7D7C8, &qword_1E48826F8, MEMORY[0x1E6981F50]);
    sub_1E487885C();
  }

  return result;
}

uint64_t sub_1E483A4A4@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_1E4877CCC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = *a1;
  sub_1E4878D2C();
  v52 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4839378(v11);
  sub_1E4877CAC();
  sub_1E483AD88(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v13 = sub_1E4878EAC();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  v51 = v12;
  if (v13)
  {
    v16 = 0xE200000000000000;
    v17 = 12336;
  }

  else
  {
    v17 = sub_1E4839584(v12);
  }

  v63 = v17;
  v64 = v16;
  sub_1E477A374(v17, v16, v15);
  v18 = sub_1E487848C();
  v20 = v19;
  v22 = v21;
  type metadata accessor for TimelineHoursView(0);
  v23 = sub_1E487842C();
  v25 = v24;
  v26 = a2;
  v28 = v27;
  sub_1E477A3C8(v18, v20, v22 & 1);

  sub_1E48786FC();
  v29 = sub_1E48783FC();
  v31 = v30;
  v33 = v32;
  v50 = v34;

  sub_1E477A3C8(v23, v25, v28 & 1);

  sub_1E4839024();
  sub_1E487889C();
  sub_1E4877BCC();
  v72 = v33 & 1;
  v35 = *(v26 + 8);
  v36 = v51 == v35;
  v37 = v51 != v35;
  v38 = v36;
  *&v58 = v29;
  *(&v58 + 1) = v31;
  v39 = v31;
  LOBYTE(v59) = v33 & 1;
  *(&v59 + 1) = *v71;
  DWORD1(v59) = *&v71[3];
  v40 = v50;
  *(&v59 + 1) = v50;
  v41 = v57;
  v43 = v56;
  v42 = v57;
  v61 = v56;
  v62 = v57;
  v44 = v53;
  *(v53 + 48) = v56;
  *(v44 + 64) = v41;
  v45 = v55;
  v46 = v55;
  v60 = v55;
  v54[87] = v38;
  v47 = v59;
  *v44 = v58;
  *(v44 + 16) = v47;
  *(v44 + 32) = v45;
  *(v44 + 80) = 0;
  *(v44 + 88) = v37;
  *(v44 + 89) = v38;
  v63 = v29;
  v64 = v39;
  v65 = v33 & 1;
  *&v66[3] = *&v71[3];
  *v66 = *v71;
  v67 = v40;
  v69 = v43;
  v70 = v42;
  v68 = v46;
  sub_1E4773850(&v58, v54, &qword_1ECF7D7D0, &unk_1E4882700);
  sub_1E47738B8(&v63, &qword_1ECF7D7D0, &unk_1E4882700);
}

uint64_t sub_1E483A874()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D798, &qword_1E48826A8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  *v3 = sub_1E4877F6C();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D7A0, &qword_1E48826B0);
  sub_1E483A020(v0, &v3[*(v4 + 44)]);
  sub_1E4773680(&qword_1EE2B0F90, &qword_1ECF7D798, &qword_1E48826A8, MEMORY[0x1E6981800]);
  sub_1E487852C();
  return sub_1E47738B8(v3, &qword_1ECF7D798, &qword_1E48826A8);
}

uint64_t sub_1E483A984@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimelineHoursView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E483A4A4(a1, v6, a2);
}

unint64_t sub_1E483AA04()
{
  result = qword_1EE2B0E28;
  if (!qword_1EE2B0E28)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7C0, &qword_1E48826F0);
    sub_1E483AA90(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0E28);
  }

  return result;
}

unint64_t sub_1E483AA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B0E30;
  if (!qword_1EE2B0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0E30);
  }

  return result;
}

void sub_1E483AB2C(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E483AC4C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v2 <= 0x3F)
    {
      sub_1E483AC4C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v3 <= 0x3F)
      {
        sub_1E483AC4C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E483AC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E483ACA0()
{
  result = qword_1EE2B14B0;
  if (!qword_1EE2B14B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7D8, qword_1E4882728);
    sub_1E4773680(&qword_1EE2B0F90, &qword_1ECF7D798, &qword_1E48826A8, MEMORY[0x1E6981800]);
    sub_1E483AD88(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14B0);
  }

  return result;
}

uint64_t sub_1E483AD88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E483ADF4()
{
  result = qword_1EE2B1498;
  if (!qword_1EE2B1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7E0, &qword_1E4882780);
    sub_1E4773680(&qword_1EE2B0FF0, &qword_1ECF7D800, &qword_1E48827A0, MEMORY[0x1E6981800]);
    sub_1E4773680(&qword_1EE2B1290, &qword_1ECF7D808, &qword_1E48827A8, MEMORY[0x1E697EC10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1498);
  }

  return result;
}

unint64_t sub_1E483AED8()
{
  result = qword_1EE2B1570;
  if (!qword_1EE2B1570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D7F8, &qword_1E4882798);
    sub_1E4773680(&qword_1EE2B1098, &qword_1ECF7D7F0, &qword_1E4882790, MEMORY[0x1E697CD08]);
    sub_1E483AD88(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1570);
  }

  return result;
}

uint64_t sub_1E483AFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D820, &qword_1E48827C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E483B030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E483B098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E483B100@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for SpatialGridView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4838544(a1, v6, a2);
}

unint64_t sub_1E483B180()
{
  result = qword_1EE2B1208;
  if (!qword_1EE2B1208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D850, &unk_1E4882890);
    sub_1E483AED8();
    sub_1E483ADF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1208);
  }

  return result;
}

uint64_t type metadata accessor for SpatialReminderView(uint64_t a1)
{
  result = qword_1EE2B2BF8;
  if (!qword_1EE2B2BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E483B280(uint64_t a1)
{
  type metadata accessor for SpatialEventViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E47BD3A0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v2 <= 0x3F)
    {
      sub_1E477D33C();
      if (v3 <= 0x3F)
      {
        sub_1E47BD3A0(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
        if (v4 <= 0x3F)
        {
          sub_1E47BD3A0(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
          if (v5 <= 0x3F)
          {
            sub_1E47BD3A0(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
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

uint64_t sub_1E483B404()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48782DC();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA0], v0);
  sub_1E48782CC();

  (*(v1 + 8))(v3, v0);
  v4 = sub_1E48781FC();

  qword_1ECF7EAB0 = v4;
  return result;
}

double sub_1E483B528()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialReminderView(0) + 36));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  v8 = sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v10[1];
}

uint64_t sub_1E483B684@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialReminderView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E483B88C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SpatialReminderView(0);
  sub_1E4773850(v1 + *(v10 + 44), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E483BA94()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialReminderView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

double sub_1E483BBE4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SpatialReminderView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 48);

  return v10 + v10 + 2.0;
}

void sub_1E483BD50()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate);
  v2 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v3 = *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *v0 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame;
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v10 = *v6;
    v9 = *(v6 + 8);
    r2 = vmulq_n_f64(vcvtq_f64_s64(*(v0 + 8)), *(v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect + 24) / v5);
    v16.origin.x = *v6;
    v16.origin.y = v9;
    v16.size.width = v8;
    v16.size.height = v7;
    v20.size.width = CGRectGetWidth(v16);
    *&v20.size.height = *&vsubq_f64(vdupq_laneq_s64(r2, 1), r2);
    v20.origin.y = r2.f64[0];
    v17.origin.x = v10;
    v17.origin.y = v9;
    v17.size.width = v8;
    v17.size.height = v7;
    v20.origin.x = v10;
    v18 = CGRectIntersection(v17, v20);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    CGRectGetWidth(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    CGRectGetHeight(v19);
    sub_1E483B528();
  }
}

uint64_t sub_1E483BEE8@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_1E487732C();
  v78 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v68 = &v66 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - v12;
  v72 = type metadata accessor for EventBackgroundView(0);
  MEMORY[0x1EEE9AC00](v72);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D898, &qword_1E4882950);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D890, &qword_1E4882948);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v66 - v20;
  *v19 = sub_1E4877F6C();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8A8, &qword_1E4882960);
  sub_1E483C620(v1, &v19[*(v21 + 44)]);
  v22 = sub_1E487817C();
  sub_1E483BA94();

  sub_1E4877B0C();
  v23 = *(v17 + 44);
  v71 = v19;
  v24 = &v19[v23];
  *v24 = v22;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = *v1;
  v30 = *v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v30, v13);
  v31 = type metadata accessor for Event(0);
  v32 = *(*(v31 - 8) + 56);
  v70 = v13;
  v32(v13, 0, 1, v31);
  v33 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v77 = v31;
  sub_1E48772AC();
  v66 = sub_1E483E240(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1E4878ADC())
  {
    (*(v78 + 32))(v76, v9, v2);
  }

  else
  {
    v34 = v78;
    (*(v78 + 8))(v9, v2);
    (*(v34 + 16))(v76, v29 + v33, v2);
  }

  v35 = v68;
  sub_1E48772AC();
  v36 = v76;
  v37 = sub_1E48772EC();
  v38 = v78;
  v67 = v30;
  v39 = *(v78 + 8);
  v39(v35, v2);
  v39(v36, v2);
  v40 = v29 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v41 = v30 + *(v77 + 24);
  if (sub_1E4878ACC())
  {
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  v43 = v69;
  (*(v38 + 16))(v69, v42, v2);
  v44 = sub_1E48772EC();
  v39(v43, v2);
  if (v44)
  {
    v45 = v37 & 1 | 2;
  }

  else
  {
    v45 = v37 & 1;
  }

  KeyPath = swift_getKeyPath();
  v47 = swift_getKeyPath();
  v48 = v72;
  *&v15[*(v72 + 32)] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v15[v48[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v15[v48[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v49 = swift_getKeyPath();
  sub_1E477372C(v70, v15, &qword_1ECF7B950, &unk_1E487AE90);
  *&v15[v48[5]] = v45;
  v15[v48[6]] = 1;
  v50 = &v15[v48[7]];
  *v50 = KeyPath;
  v50[8] = 0;
  v51 = &v15[v48[11]];
  *v51 = v49;
  v51[8] = 0;
  v52 = sub_1E487889C();
  v54 = v53;
  v55 = v74;
  v56 = &v74[*(v73 + 36)];
  sub_1E47C411C(v15, v56);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v57 = v52;
  v57[1] = v54;
  sub_1E477372C(v71, v55, &qword_1ECF7D898, &qword_1E4882950);
  v79 = sub_1E47CC9E8(*(v67 + *(v77 + 56)));
  v80 = v58;
  sub_1E477A374(v79, v58, v59);
  v60 = sub_1E487848C();
  v62 = v61;
  v64 = v63;
  sub_1E483E0C8();
  sub_1E487857C();
  sub_1E477A3C8(v60, v62, v64 & 1);

  return sub_1E47738B8(v55, &qword_1ECF7D890, &qword_1E4882948);
}

uint64_t sub_1E483C620@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8B0, &qword_1E4882A68);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8B8, &qword_1E4882A70);
  sub_1E483C7DC(a1, &v9[*(v10 + 44)]);
  sub_1E4773850(v9, v7, &qword_1ECF7D8B0, &qword_1E4882A68);
  sub_1E4773850(v7, a2, &qword_1ECF7D8B0, &qword_1E4882A68);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8C0, &qword_1E4882A78) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_1E47738B8(v9, &qword_1ECF7D8B0, &qword_1E4882A68);
  sub_1E47738B8(v7, &qword_1ECF7D8B0, &qword_1E4882A68);
}

uint64_t sub_1E483C7DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8C8, &qword_1E4882A80);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8D0, &qword_1E4882A88);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_1E4877FBC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8D8, &qword_1E4882A90);
  sub_1E483CB70(a1, &v5[*(v15 + 44)]);
  v16 = sub_1E487819C();
  sub_1E483BA94();

  sub_1E4877B0C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8E0, &qword_1E4882A98) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_1E487818C();
  sub_1E483BA94();

  sub_1E4877B0C();
  v27 = &v5[*(v3 + 36)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_1E483BD50();
  CGRectGetHeight(v42);
  sub_1E487889C();
  sub_1E4877BCC();
  sub_1E477372C(v5, v12, &qword_1ECF7D8C8, &qword_1E4882A80);
  v32 = &v12[*(v6 + 36)];
  v33 = v40;
  *v32 = v39;
  *(v32 + 1) = v33;
  *(v32 + 2) = v41;
  sub_1E477372C(v12, v14, &qword_1ECF7D8D0, &qword_1E4882A88);
  sub_1E4773850(v14, v9, &qword_1ECF7D8D0, &qword_1E4882A88);
  v34 = v38;
  sub_1E4773850(v9, v38, &qword_1ECF7D8D0, &qword_1E4882A88);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8E8, &qword_1E4882AA0) + 48);
  *v35 = 0;
  *(v35 + 8) = 0;
  sub_1E47738B8(v14, &qword_1ECF7D8D0, &qword_1E4882A88);
  sub_1E47738B8(v9, &qword_1ECF7D8D0, &qword_1E4882A88);
}

uint64_t sub_1E483CB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8F0, &qword_1E4882AA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D8F8, &qword_1E4882AB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 24);
  v15 = v14 + sub_1E483BBE4();
  v16 = *(*a1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight);
  sub_1E483BD50();
  Height = CGRectGetHeight(v25);
  if (Height >= v16)
  {
    Height = v16;
  }

  v19 = v15 > Height;
  v18 = vabdd_f64(Height, v15);
  v19 = v19 && v18 > 1.0;
  if (v19)
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  else
  {
    v20 = *(sub_1E483BA94() + 72);

    *v7 = sub_1E4877F6C();
    *(v7 + 1) = v20;
    v7[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D908, &unk_1E4882AC0);
    sub_1E483CE64(a1, &v7[*(v21 + 44)]);
    sub_1E477372C(v7, v13, &qword_1ECF7D8F0, &qword_1E4882AA8);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  sub_1E4773850(v13, v11, &qword_1ECF7D8F8, &qword_1E4882AB0);
  sub_1E4773850(v11, a2, &qword_1ECF7D8F8, &qword_1E4882AB0);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D900, &qword_1E4882AB8) + 48);
  *v22 = 0;
  *(v22 + 8) = 0;
  sub_1E47738B8(v13, &qword_1ECF7D8F8, &qword_1E4882AB0);
  sub_1E47738B8(v11, &qword_1ECF7D8F8, &qword_1E4882AB0);
}

uint64_t sub_1E483CE64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = type metadata accessor for NarrowEventTitleText(0);
  MEMORY[0x1EEE9AC00](v62);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D260, &qword_1E48804D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v52 - v8;
  v9 = sub_1E4877B3C();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Event(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v52 - v17);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  MEMORY[0x1EEE9AC00](v53);
  v20 = &v52 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v21 = MEMORY[0x1EEE9AC00](v54);
  v61 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v59 = &v52 - v26;
  sub_1E4878D2C();
  v60 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = *a1;
  v52 = a1;
  v28 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  sub_1E47707EC(v27 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event, v15);
  sub_1E4878BDC();
  sub_1E47E340C(v15, type metadata accessor for Event);
  v29 = sub_1E487874C();
  v30 = (v18 + *(v16 + 36));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v32 = *MEMORY[0x1E69816D8];
  v33 = sub_1E487877C();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v18 = v29;
  if (qword_1ECF7B670 != -1)
  {
    swift_once();
  }

  v34 = qword_1ECF7EAB0;
  KeyPath = swift_getKeyPath();
  sub_1E477372C(v18, v20, &qword_1ECF7B910, &unk_1E487E050);
  v36 = &v20[*(v53 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = v55;
  sub_1E47707EC(v27 + v28, v55);

  v38 = v56;
  sub_1E483B88C(v56);
  v39 = sub_1E4770A7C(v37, v38);
  (*(v57 + 8))(v38, v58);
  sub_1E47E340C(v37, type metadata accessor for Event);
  v40 = swift_getKeyPath();
  sub_1E477372C(v20, v25, &qword_1ECF7B918, &unk_1E487AA60);
  v41 = &v25[*(v54 + 36)];
  *v41 = v40;
  v41[1] = v39;
  v42 = v59;
  sub_1E477372C(v25, v59, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E47707EC(v27 + v28, v4);
  v43 = swift_getKeyPath();
  v44 = v62;
  *&v4[*(v62 + 32)] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v4[v44[5]] = v34;
  v45 = &v4[v44[6]];
  *v45 = 0;
  v45[8] = 1;
  *&v4[v44[7]] = 0;
  sub_1E483E240(&qword_1EE2B2A10, type metadata accessor for NarrowEventTitleText, &unk_1E487B0D8);

  v46 = v63;
  sub_1E48785BC();
  sub_1E47E340C(v4, type metadata accessor for NarrowEventTitleText);
  v47 = v61;
  sub_1E4773850(v42, v61, &qword_1ECF7B920, &unk_1E487DCF0);
  v48 = v64;
  sub_1E4773850(v46, v64, &qword_1ECF7D260, &qword_1E48804D0);
  v49 = v65;
  sub_1E4773850(v47, v65, &qword_1ECF7B920, &unk_1E487DCF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D910, qword_1E4882B60);
  sub_1E4773850(v48, v49 + *(v50 + 48), &qword_1ECF7D260, &qword_1E48804D0);
  sub_1E47738B8(v46, &qword_1ECF7D260, &qword_1E48804D0);
  sub_1E47738B8(v42, &qword_1ECF7B920, &unk_1E487DCF0);
  sub_1E47738B8(v48, &qword_1ECF7D260, &qword_1E48804D0);
  sub_1E47738B8(v47, &qword_1ECF7B920, &unk_1E487DCF0);
}

uint64_t sub_1E483D5EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D858, &qword_1E4882908);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D860, &qword_1E4882910);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  sub_1E483D864(v1, v5);
  sub_1E483BD50();
  CGRectGetWidth(v26);
  sub_1E483BD50();
  CGRectGetMaxX(v27);
  v10 = *v1;
  v11 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate;
  CGRectGetMaxX(*(*(*v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect));
  sub_1E483BD50();
  CGRectGetHeight(v28);
  sub_1E487887C();
  sub_1E4877BCC();
  sub_1E477372C(v5, v9, &qword_1ECF7D858, &qword_1E4882908);
  v12 = &v9[*(v7 + 44)];
  v13 = v25[1];
  *v12 = v25[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v25[2];
  sub_1E483BD50();
  v15 = v14;
  sub_1E483BD50();
  Width = CGRectGetWidth(v29);
  sub_1E483BD50();
  MaxX = CGRectGetMaxX(v30);
  if (MaxX == CGRectGetMaxX(*(*(v10 + v11) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect)))
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 2.0;
  }

  v19 = v15 + (Width - v18) * 0.5;
  sub_1E483BD50();
  v21 = v20;
  sub_1E483BD50();
  v22 = v21 + CGRectGetHeight(v31) * 0.5;
  sub_1E477372C(v9, a1, &qword_1ECF7D860, &qword_1E4882910);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D868, &qword_1E4882918);
  v24 = (a1 + *(result + 36));
  *v24 = v19;
  v24[1] = v22;
  return result;
}

uint64_t sub_1E483D864@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D870, &qword_1E4882920);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v38 - v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D878, &qword_1E4882928);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v38 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D880, &unk_1E4882930);
  v41 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v40 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_1E487725C();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - v11;
  v12 = sub_1E4877CCC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D888, &qword_1E4882940);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v38 - v20;
  sub_1E4878D2C();
  v45 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = v47;
  sub_1E483B684(v18);
  sub_1E4877CAC();
  sub_1E483E240(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v23 = sub_1E4878EAC();
  v24 = *(v13 + 8);
  v24(v16, v12);
  v25 = v22;
  v24(v18, v12);
  if ((v23 & 1) == 0)
  {
    v26 = *v22;
    v27 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v28 = type metadata accessor for Event(0);
    sub_1E4773850(v26 + *(v28 + 44) + v27, v7, &unk_1ECF7B688, &qword_1E487C160);
    v30 = v42;
    v29 = v43;
    if ((*(v42 + 48))(v7, 1, v43) != 1)
    {
      v32 = v39;
      (*(v30 + 32))(v39, v7, v29);
      v33 = (*(v30 + 16))(v38, v32, v29);
      MEMORY[0x1EEE9AC00](v33);
      *(&v38 - 2) = v25;
      sub_1E483E00C();
      v34 = v40;
      sub_1E487831C();
      v35 = v41;
      v36 = v49;
      (*(v41 + 16))(v46, v34, v49);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B1080, &qword_1ECF7D880, &unk_1E4882930, MEMORY[0x1E697CD08]);
      sub_1E487803C();
      (*(v35 + 8))(v34, v36);
      (*(v30 + 8))(v32, v29);
      goto LABEL_8;
    }

    sub_1E47738B8(v7, &unk_1ECF7B688, &qword_1E487C160);
  }

  v31 = v44;
  sub_1E483BEE8(v44);
  sub_1E4773850(v31, v46, &qword_1ECF7D870, &qword_1E4882920);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B1080, &qword_1ECF7D880, &unk_1E4882930, MEMORY[0x1E697CD08]);
  sub_1E483E00C();
  sub_1E487803C();
  sub_1E47738B8(v31, &qword_1ECF7D870, &qword_1E4882920);
LABEL_8:
  sub_1E477372C(v21, v51, &qword_1ECF7D888, &qword_1E4882940);
}

uint64_t sub_1E483DF58@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E483BEE8(a1);
}

unint64_t sub_1E483E00C()
{
  result = qword_1EE2B12F8;
  if (!qword_1EE2B12F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D870, &qword_1E4882920);
    sub_1E483E0C8();
    sub_1E483E240(&qword_1EE2B10A8, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12F8);
  }

  return result;
}

unint64_t sub_1E483E0C8()
{
  result = qword_1EE2B1380;
  if (!qword_1EE2B1380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D890, &qword_1E4882948);
    sub_1E483E180();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1380);
  }

  return result;
}

unint64_t sub_1E483E180()
{
  result = qword_1EE2B14A0;
  if (!qword_1EE2B14A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D898, &qword_1E4882950);
    sub_1E4773680(&qword_1EE2B0F80, &qword_1ECF7D8A0, &qword_1E4882958, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14A0);
  }

  return result;
}

uint64_t sub_1E483E240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E483E288()
{
  result = qword_1EE2B13C8;
  if (!qword_1EE2B13C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D868, &qword_1E4882918);
    sub_1E483E314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13C8);
  }

  return result;
}

unint64_t sub_1E483E314()
{
  result = qword_1EE2B1500;
  if (!qword_1EE2B1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D860, &qword_1E4882910);
    sub_1E483E3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1500);
  }

  return result;
}

unint64_t sub_1E483E3A0()
{
  result = qword_1EE2B1050;
  if (!qword_1EE2B1050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D858, &qword_1E4882908);
    sub_1E483E424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1050);
  }

  return result;
}

unint64_t sub_1E483E424()
{
  result = qword_1EE2B11B0;
  if (!qword_1EE2B11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D888, &qword_1E4882940);
    sub_1E4773680(&qword_1EE2B1080, &qword_1ECF7D880, &unk_1E4882930, MEMORY[0x1E697CD08]);
    sub_1E483E00C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11B0);
  }

  return result;
}

uint64_t type metadata accessor for NarrowTextHeaderView(uint64_t a1)
{
  result = qword_1EE2B4A70;
  if (!qword_1EE2B4A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E483E550(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    sub_1E47F5B1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E483E61C@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowTextHeaderView(0);
  sub_1E482CB38(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E483E80C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v34 - v3;
  v34 = sub_1E487757C();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - v12);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E483E61C(v13);
  v15 = sub_1E487748C();
  v16 = *(v8 + 8);
  v16(v13, v7);
  [v14 setCalendar_];

  sub_1E483E61C(v13);
  sub_1E487750C();
  v16(v13, v7);
  v17 = sub_1E487756C();
  (*(v4 + 8))(v6, v34);
  [v14 setTimeZone_];

  sub_1E483E61C(v11);
  v18 = v35;
  sub_1E48774EC();
  v16(v11, v7);
  v19 = v18;
  v20 = sub_1E487744C();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v22 = sub_1E48773DC();
    (*(v21 + 8))(v19, v20);
  }

  [v14 setLocale_];

  v23 = sub_1E4878B9C();
  [v14 setLocalizedDateFormatFromTemplate_];

  type metadata accessor for NarrowTextHeaderView(0);
  v24 = sub_1E48772BC();
  v25 = [v14 stringFromDate_];

  v26 = sub_1E4878BDC();
  v28 = v27;

  v38 = v26;
  v39 = v28;
  sub_1E477A374(v29, v30, v31);
  v32 = sub_1E4878E8C();

  return v32;
}

uint64_t sub_1E483EBFC()
{
  v1 = type metadata accessor for NarrowTextHeaderView(0);
  v2 = v1;
  if (*(v0 + *(v1 + 24)))
  {
    v3 = *(v1 + 40);
LABEL_8:
    v8 = (v0 + v3);
    v9 = *v8;
    v10 = v8[1];

    return sub_1E483E80C(v9, v10);
  }

  if ((sub_1E4871B7C() & 1) == 0)
  {
    v3 = *(v2 + 32);
    goto LABEL_8;
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v11 = sub_1E48771EC();
  sub_1E477A374(v11, v4, v5);
  v6 = sub_1E4878E8C();

  return v6;
}

uint64_t sub_1E483ED40@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v44 = sub_1E48780BC();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F0, &qword_1E4880018);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v36 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v36 - v4;
  v37 = v1;
  v49 = sub_1E483EBFC();
  v50 = v5;
  v41 = sub_1E477A374(v49, v5, v6);
  v7 = sub_1E487848C();
  v9 = v8;
  v11 = v10;
  sub_1E48786FC();
  v12 = sub_1E48783FC();
  v14 = v13;
  v16 = v15;

  sub_1E477A3C8(v7, v9, v11 & 1);

  v38 = type metadata accessor for NarrowTextHeaderView(0);
  v17 = sub_1E487842C();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_1E477A3C8(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v49 = v17;
  v50 = v19;
  v51 = v9 & 1;
  v52 = v22;
  v53 = KeyPath;
  v54 = 1;
  v55 = 0;
  v24 = v40;
  sub_1E487809C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  v26 = sub_1E477A490();
  v27 = v39;
  sub_1E48785AC();
  (*(v42 + 8))(v24, v44);
  sub_1E477A3C8(v17, v19, v9 & 1);

  v49 = sub_1E483E80C(*(v37 + *(v38 + 36)), *(v37 + *(v38 + 36) + 8));
  v50 = v28;
  v29 = sub_1E487848C();
  v31 = v30;
  LOBYTE(v22) = v32;
  v49 = v25;
  v50 = v26;
  swift_getOpaqueTypeConformance2();
  v33 = v43;
  v34 = v45;
  sub_1E487856C();
  sub_1E477A3C8(v29, v31, v22 & 1);

  (*(v47 + 8))(v27, v34);
  sub_1E4877C7C();
  return sub_1E476C4B8(v33);
}

uint64_t sub_1E483F168(uint64_t a1, uint64_t a2)
{
  v248 = a2;
  v3 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  v255 = *(v3 - 8);
  v256 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v224 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v223 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v220 - v8;
  v246 = sub_1E487751C();
  v249 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v245 = &v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for Event(0);
  v229 = *(v262 - 8);
  v11 = MEMORY[0x1EEE9AC00](v262);
  v231 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v228 = &v220 - v13;
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v225 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v227 = &v220 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v220 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v238 = &v220 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v226 = &v220 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v254 = &v220 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v230 = &v220 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v261 = &v220 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v253 = &v220 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v220 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v236 = &v220 - v38;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D918, &qword_1E4882C18);
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v220 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v222 = &v220 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v235 = &v220 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v244 = &v220 - v45;
  v259 = type metadata accessor for DayEvents(0);
  v46 = *(v259 - 8);
  v47 = MEMORY[0x1EEE9AC00](v259);
  v221 = &v220 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v251 = &v220 - v49;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D920, &qword_1E4882C28);
  v241 = *(v258 - 8);
  v50 = MEMORY[0x1EEE9AC00](v258);
  v237 = &v220 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v257 = (&v220 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v220 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v58 = (&v220 - v57);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D928, &unk_1E4882C30);
  v60 = MEMORY[0x1EEE9AC00](v59 - 8);
  v240 = (&v220 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v220 - v63;
  v65 = *(a1 + 16);
  v263 = v14;
  v260 = v65;
  v243 = v62;
  v252 = v15;
  v250 = v37;
  v247 = &v220 - v63;
  v242 = v46;
  v232 = v9;
  v239 = v22;
  if (v65)
  {
    v66 = 0;
    v67 = v62 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v68 = *(v46 + 72);
    while (1)
    {
      v69 = v258;
      v70 = *(v258 + 48);
      *v58 = v66;
      sub_1E479B13C(v67, v58 + v70, type metadata accessor for DayEvents);
      sub_1E48426E0(v58, v56);
      v71 = v257;
      sub_1E4773850(v56, v257, &qword_1ECF7D920, &qword_1E4882C28);
      v72 = v71 + *(v69 + 48);
      v73 = *(v72 + *(v259 + 20));

      sub_1E4842750(v72, type metadata accessor for DayEvents);
      v74 = *(v73 + 16);

      if (v74)
      {
        break;
      }

      ++v66;
      sub_1E47738B8(v56, &qword_1ECF7D920, &qword_1E4882C28);
      v67 += v68;
      v65 = v260;
      if (v260 == v66)
      {
        v75 = 1;
        v64 = v247;
        v46 = v242;
        goto LABEL_8;
      }
    }

    v64 = v247;
    sub_1E48426E0(v56, v247);
    v75 = 0;
    v46 = v242;
    v65 = v260;
  }

  else
  {
    v75 = 1;
  }

LABEL_8:
  v76 = v241;
  v77 = v258;
  (*(v241 + 56))(v64, v75, 1, v258);
  v78 = v240;
  sub_1E4773850(v64, v240, &qword_1ECF7D928, &unk_1E4882C30);
  if ((*(v76 + 48))(v78, 1, v77) == 1)
  {
    sub_1E47738B8(v78, &qword_1ECF7D928, &unk_1E4882C30);
    if (v65)
    {
      v265 = MEMORY[0x1E69E7CC0];
      sub_1E4858124(0, v260, 0);
      v79 = v260;
      v80 = v265;
      v81 = v243 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v82 = *(v46 + 72);
      v83 = v224;
      do
      {
        sub_1E479B13C(v81, v83, type metadata accessor for DayEvents);
        v84 = v256;
        *(v83 + v256[5]) = 9;
        *(v83 + v84[6]) = 16;
        *(v83 + v84[7]) = MEMORY[0x1E69E7CC0];
        *(v83 + v84[8]) = 1;
        v265 = v80;
        v86 = *(v80 + 16);
        v85 = *(v80 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_1E4858124((v85 > 1), v86 + 1, 1);
          v80 = v265;
        }

        *(v80 + 16) = v86 + 1;
        sub_1E4844C2C(v83, v80 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v86, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
        v81 += v82;
        --v79;
      }

      while (v79);
      sub_1E47738B8(v247, &qword_1ECF7D928, &unk_1E4882C30);
    }

    else
    {
      sub_1E47738B8(v64, &qword_1ECF7D928, &unk_1E4882C30);
      return MEMORY[0x1E69E7CC0];
    }

    return v80;
  }

  v87 = v237;
  sub_1E48426E0(v78, v237);
  v88 = v257;
  sub_1E4773850(v87, v257, &qword_1ECF7D920, &qword_1E4882C28);
  v89 = v251;
  sub_1E4844C2C(v88 + *(v77 + 48), v251, type metadata accessor for DayEvents);
  sub_1E4773850(v87, v88, &qword_1ECF7D920, &qword_1E4882C28);
  v224 = *v88;
  sub_1E4842750(v88 + *(v77 + 48), type metadata accessor for DayEvents);
  v90 = v244;
  sub_1E479B13C(v89, v244, type metadata accessor for DayEvents);
  v91 = *(v46 + 56);
  v92 = 1;
  v91(v90, 0, 1, v259);
  v93 = v235;
  if (v65)
  {
    sub_1E479B13C(v243 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * (v65 - 1), v235, type metadata accessor for DayEvents);
    v92 = 0;
  }

  v94 = v259;
  v91(v93, v92, 1, v259);
  v95 = *(v233 + 48);
  v96 = v244;
  v97 = v234;
  sub_1E4773850(v244, v234, &qword_1ECF7C380, &qword_1E4882C20);
  v98 = v94;
  sub_1E4773850(v93, &v97[v95], &qword_1ECF7C380, &qword_1E4882C20);
  v99 = *(v46 + 48);
  if (v99(v97, 1, v94) == 1)
  {
    sub_1E47738B8(v93, &qword_1ECF7C380, &qword_1E4882C20);
    v98 = v259;
    sub_1E47738B8(v96, &qword_1ECF7C380, &qword_1E4882C20);
    v100 = v99(&v97[v95], 1, v98);
    v101 = v263;
    v102 = v252;
    if (v100 == 1)
    {
      result = sub_1E47738B8(v97, &qword_1ECF7C380, &qword_1E4882C20);
      LODWORD(v244) = 1;
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  v104 = v222;
  sub_1E4773850(v97, v222, &qword_1ECF7C380, &qword_1E4882C20);
  if (v99(&v97[v95], 1, v94) == 1)
  {
    sub_1E47738B8(v235, &qword_1ECF7C380, &qword_1E4882C20);
    v98 = v259;
    sub_1E47738B8(v244, &qword_1ECF7C380, &qword_1E4882C20);
    sub_1E4842750(v104, type metadata accessor for DayEvents);
    v102 = v252;
    v101 = v263;
LABEL_23:
    result = sub_1E47738B8(v97, &qword_1ECF7D918, &qword_1E4882C18);
    LODWORD(v244) = 0;
    goto LABEL_33;
  }

  v105 = v221;
  sub_1E4844C2C(&v97[v95], v221, type metadata accessor for DayEvents);
  v106 = sub_1E48772EC();
  v107 = v104;
  v108 = v244;
  v101 = v263;
  if (v106)
  {
    v109 = sub_1E47F35E8(*(v104 + v98[5]), *(v105 + v98[5]));
    v102 = v252;
    if (v109)
    {
      v110 = sub_1E47F35E8(*(v107 + v98[6]), *(v105 + v98[6]));
      sub_1E47738B8(v235, &qword_1ECF7C380, &qword_1E4882C20);
      sub_1E47738B8(v108, &qword_1ECF7C380, &qword_1E4882C20);
      if (v110)
      {
        LODWORD(v244) = *(v107 + v98[7]) ^ *(v105 + v98[7]) ^ 1;
      }

      else
      {
        LODWORD(v244) = 0;
      }

      v101 = v263;
    }

    else
    {
      sub_1E47738B8(v235, &qword_1ECF7C380, &qword_1E4882C20);
      v98 = v259;
      sub_1E47738B8(v108, &qword_1ECF7C380, &qword_1E4882C20);
      LODWORD(v244) = 0;
    }
  }

  else
  {
    sub_1E47738B8(v235, &qword_1ECF7C380, &qword_1E4882C20);
    v98 = v259;
    sub_1E47738B8(v108, &qword_1ECF7C380, &qword_1E4882C20);
    LODWORD(v244) = 0;
    v102 = v252;
  }

  sub_1E4842750(v105, type metadata accessor for DayEvents);
  sub_1E4842750(v107, type metadata accessor for DayEvents);
  result = sub_1E47738B8(v97, &qword_1ECF7C380, &qword_1E4882C20);
LABEL_33:
  v111 = *(v251 + v98[5]);
  if (!*(v111 + 16))
  {
    goto LABEL_126;
  }

  v112 = v229;
  v113 = v111 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
  v114 = v228;
  sub_1E479B13C(v113, v228, type metadata accessor for Event);
  v115 = v262;
  v116 = v253;
  sub_1E48772AC();
  sub_1E4842750(v114, type metadata accessor for Event);
  v117 = *(v115 + 24);
  v259 = *(v102 + 16);
  (v259)(v261, v113 + v117, v101);
  v118 = *(v111 + 16);
  v119 = v231;
  if (v118)
  {
    v120 = *(v112 + 72);
    v121 = (v252 + 8);
    do
    {
      sub_1E479B13C(v113, v119, type metadata accessor for Event);
      v122 = v254;
      sub_1E48772AC();
      if (sub_1E48772DC())
      {
        v123 = v263;
        (*v121)(v116, v263);
        (v259)(v116, v122, v123);
      }

      v124 = *(v262 + 24);
      v125 = sub_1E48772CC();
      v126 = v122;
      v127 = v119;
      v128 = *v121;
      (*v121)(v126, v263);
      if (v125)
      {
        v129 = v261;
        v130 = v263;
        v128(v261, v263);
        v131 = v129;
        v116 = v253;
        (v259)(v131, v127 + v124, v130);
      }

      sub_1E4842750(v127, type metadata accessor for Event);
      v113 += v120;
      --v118;
      v119 = v127;
    }

    while (v118);
  }

  v132 = v252;
  v134 = (v252 + 32);
  v133 = *(v252 + 32);
  v135 = v236;
  v136 = v263;
  v133(v236, v116, v263);
  v258 = v133;
  v256 = v134;
  v133(v250, v261, v136);
  v137 = sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v138 = v251;
  v253 = v137;
  if (sub_1E4878ADC())
  {
    v139 = v135;
  }

  else
  {
    v139 = v138;
  }

  v140 = v230;
  (v259)(v230, v139, v136);
  v141 = *(v132 + 40);
  v241 = v132 + 40;
  v240 = v141;
  (v141)(v135, v140, v136);
  v142 = v249;
  v143 = v249 + 104;
  v144 = *(v249 + 104);
  v145 = v245;
  LODWORD(v254) = *MEMORY[0x1E6969A58];
  v146 = v246;
  v144(v245);
  v147 = sub_1E487752C();
  v149 = *(v142 + 8);
  v148 = v142 + 8;
  v262 = v149;
  v149(v145, v146);
  sub_1E487745C();
  v150 = *MEMORY[0x1E6969A48];
  v255 = v143;
  v257 = v144;
  (v144)(v145, v150, v146);
  v151 = v146;
  v152 = v252;
  v153 = v232;
  sub_1E48774BC();
  (v262)(v145, v151);
  v154 = *(v152 + 48);
  v155 = v136;
  v235 = v152 + 48;
  v234 = v154;
  result = (v154)(v153, 1, v136);
  if (result == 1)
  {
    goto LABEL_141;
  }

  v156 = *(v152 + 8);
  v252 = v152 + 8;
  v261 = v156;
  (v156)(v239, v136);
  v157 = v136;
  v158 = v258;
  (v258)(v238, v153, v157);
  v159 = v227;
  (v259)(v227, v250, v155);
  (v257)(v145, *MEMORY[0x1E6969A88], v151);
  v160 = sub_1E487752C();
  v249 = v148;
  (v262)(v145, v151);
  v161 = v155;
  if (v160)
  {
    v162 = v245;
    v163 = v246;
    (v257)(v245, v254, v246);
    v164 = v223;
    sub_1E48774BC();
    (v262)(v162, v163);
    result = (v234)(v164, 1, v161);
    if (result == 1)
    {
      goto LABEL_142;
    }

    (v261)(v159, v161);
    v158(v159, v164, v161);
  }

  v165 = v238;
  if (sub_1E4878ACC())
  {
    (v261)(v159, v161);
    v166 = v225;
    (v259)(v225, v165, v161);
    v167 = v246;
    v168 = v245;
    (v258)(v159, v166, v161);
  }

  else
  {
    v169 = v225;
    v170 = v258;
    (v258)(v225, v159, v161);
    v167 = v246;
    v168 = v245;
    v170(v159, v169, v161);
  }

  (v257)(v168, v254, v167);
  v171 = sub_1E487752C();
  (v262)(v168, v167);
  if (v171)
  {
    (v261)(v165, v161);
  }

  else
  {
    v172 = sub_1E48772EC();
    (v261)(v165, v161);
    if (v172)
    {
      v171 = 24;
    }

    else
    {
      v171 = 0;
    }
  }

  v173 = v240;
  v174 = v250;
  v175 = v226;
  (v258)(v226, v159, v161);
  result = v173(v174, v175, v161);
  if (__OFSUB__(v171, v147))
  {
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
    goto LABEL_133;
  }

  if ((v171 - v147 > 7) | v244 & 1)
  {
    v176 = v147;
    v177 = v243;
    v178 = v248;
    goto LABEL_78;
  }

  v179 = (v224 + 1);
  v177 = v243;
  v178 = v248;
  if (__OFADD__(v224, 1))
  {
    goto LABEL_132;
  }

  if (v260 < v179)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v179 < 0)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v180 = (2 * v260) | 1;
  v181 = (*(v242 + 80) + 32) & ~*(v242 + 80);
  while (1)
  {
    v176 = v147;
    MEMORY[0x1EEE9AC00](result);
    *(&v220 - 2) = v178;
    *(&v220 - 1) = v147;
    v182 = sub_1E4844968(sub_1E4844BCC, (&v220 - 4), v177 + v181, v179, v180);
    v183 = *(v182 + 2);
    if (!v183)
    {
      break;
    }

    v147 = *(v182 + 4);
    v184 = v183 - 1;
    if (v183 == 1)
    {
      goto LABEL_74;
    }

    if (v183 > 4)
    {
      v185 = v184 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v186 = vdupq_n_s64(v147);
      v187 = (v182 + 56);
      v188 = v184 & 0xFFFFFFFFFFFFFFFCLL;
      v189 = v186;
      do
      {
        v186 = vbslq_s8(vcgtq_s64(v186, v187[-1]), v186, v187[-1]);
        v189 = vbslq_s8(vcgtq_s64(v189, *v187), v189, *v187);
        v187 += 2;
        v188 -= 4;
      }

      while (v188);
      v190 = vbslq_s8(vcgtq_s64(v186, v189), v186, v189);
      v191 = vextq_s8(v190, v190, 8uLL).u64[0];
      v147 = vbsl_s8(vcgtd_s64(v190.i64[0], v191), *v190.i8, v191);
      if (v184 == (v184 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_74;
      }
    }

    else
    {
      v185 = 1;
    }

    v192 = v183 - v185;
    v193 = &v182[8 * v185 + 32];
    do
    {
      v195 = *v193++;
      v194 = v195;
      if (v147 <= v195)
      {
        v147 = v194;
      }

      --v192;
    }

    while (v192);
LABEL_74:

    if (__OFSUB__(v171, v147))
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v171 - v147 >= 8)
    {
      goto LABEL_78;
    }
  }

LABEL_78:
  if (__OFSUB__(v171, v176))
  {
    goto LABEL_128;
  }

  if ((v171 - v176 > 7) | v244 & 1)
  {
    v196 = v171;
    goto LABEL_100;
  }

  v197 = (v224 + 1);
  if (__OFADD__(v224, 1))
  {
    goto LABEL_135;
  }

  if (v260 < v197)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v197 < 0)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v198 = (2 * v260) | 1;
  v199 = (*(v242 + 80) + 32) & ~*(v242 + 80);
  while (1)
  {
    v196 = v171;
    MEMORY[0x1EEE9AC00](result);
    *(&v220 - 2) = v178;
    *(&v220 - 1) = v171;
    v200 = sub_1E4844968(sub_1E4844BE8, (&v220 - 4), v177 + v199, v197, v198);
    v201 = *(v200 + 2);
    if (!v201)
    {
      break;
    }

    v171 = *(v200 + 4);
    v202 = v201 - 1;
    if (v201 != 1)
    {
      if (v201 <= 4)
      {
        v203 = 1;
LABEL_92:
        v210 = v201 - v203;
        v211 = &v200[8 * v203 + 32];
        do
        {
          v213 = *v211;
          v211 += 8;
          v212 = v213;
          if (v213 < v171)
          {
            v171 = v212;
          }

          --v210;
        }

        while (v210);
        goto LABEL_96;
      }

      v203 = v202 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v204 = vdupq_n_s64(v171);
      v205 = (v200 + 56);
      v206 = v202 & 0xFFFFFFFFFFFFFFFCLL;
      v207 = v204;
      do
      {
        v204 = vbslq_s8(vcgtq_s64(v204, v205[-1]), v205[-1], v204);
        v207 = vbslq_s8(vcgtq_s64(v207, *v205), *v205, v207);
        v205 += 2;
        v206 -= 4;
      }

      while (v206);
      v208 = vbslq_s8(vcgtq_s64(v207, v204), v204, v207);
      v209 = vextq_s8(v208, v208, 8uLL).u64[0];
      v171 = vbsl_s8(vcgtd_s64(v209, v208.i64[0]), *v208.i8, v209);
      if (v202 != (v202 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_92;
      }
    }

LABEL_96:

    if (__OFSUB__(v171, v176))
    {
      goto LABEL_125;
    }

    if (v171 - v176 >= 8)
    {
      goto LABEL_100;
    }
  }

LABEL_100:
  v214 = v196 - v176;
  v215 = __OFSUB__(v196, v176);
  if (__OFSUB__(v196, v176))
  {
    goto LABEL_129;
  }

  if (v214 > 3)
  {
    v216 = v263;
    goto LABEL_113;
  }

  v216 = v263;
  if (__OFADD__(v176, 4))
  {
    goto LABEL_138;
  }

  if (v176 + 4 >= 24)
  {
    v196 = 24;
  }

  else
  {
    v196 = v176 + 4;
  }

  v214 = v196 - v176;
  v215 = __OFSUB__(v196, v176);
LABEL_113:
  if (v215)
  {
    goto LABEL_130;
  }

  if (v214 > 3)
  {
    goto LABEL_119;
  }

  v176 = v196 - 4;
  if (__OFSUB__(v196, 4))
  {
    goto LABEL_139;
  }

  v214 = 4;
  v215 = __OFSUB__(v196, v176);
LABEL_119:
  v265 = v176;
  if (v215)
  {
    goto LABEL_131;
  }

  if (v214 < 8 || (v196 = v176 + 7, !__OFADD__(v176, 7)))
  {
    v264 = v196;
    MEMORY[0x1EEE9AC00](result);
    v217 = v236;
    *(&v220 - 6) = v236;
    *(&v220 - 5) = &v265;
    v218 = v250;
    *(&v220 - 4) = v178;
    *(&v220 - 3) = v218;
    *(&v220 - 2) = &v264;
    v80 = sub_1E48564E4(sub_1E4844C04, (&v220 - 8), v177);
    sub_1E47738B8(v237, &qword_1ECF7D920, &qword_1E4882C28);
    sub_1E47738B8(v247, &qword_1ECF7D928, &unk_1E4882C30);
    sub_1E4842750(v251, type metadata accessor for DayEvents);
    v219 = v261;
    (v261)(v218, v216);
    v219(v217, v216);
    return v80;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1E4840D3C(uint64_t a1)
{
  v2 = v1;
  sub_1E487732C();
  sub_1E4844DF0(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4878AAC();
  v4 = type metadata accessor for DayEvents(0);
  sub_1E47F3784(a1, *(v2 + *(v4 + 20)));
  sub_1E47F3784(a1, *(v2 + *(v4 + 24)));
  sub_1E487916C();
  v5 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  MEMORY[0x1E6919800](*(v2 + v5[5]));
  MEMORY[0x1E6919800](*(v2 + v5[6]));
  sub_1E47F3784(a1, *(v2 + v5[7]));
  return MEMORY[0x1E6919800](*(v2 + v5[8]));
}

uint64_t sub_1E4840E34()
{
  v1 = v0;
  sub_1E487914C();
  sub_1E487732C();
  sub_1E4844DF0(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4878AAC();
  v2 = type metadata accessor for DayEvents(0);
  sub_1E47F3784(v5, *(v1 + *(v2 + 20)));
  sub_1E47F3784(v5, *(v1 + *(v2 + 24)));
  sub_1E487916C();
  v3 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  MEMORY[0x1E6919800](*(v1 + v3[5]));
  MEMORY[0x1E6919800](*(v1 + v3[6]));
  sub_1E47F3784(v5, *(v1 + v3[7]));
  MEMORY[0x1E6919800](*(v1 + v3[8]));
  return sub_1E487917C();
}

uint64_t sub_1E4840F58(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1E487914C();
  sub_1E487732C();
  sub_1E4844DF0(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4878AAC();
  v5 = type metadata accessor for DayEvents(0);
  sub_1E47F3784(v7, *(v4 + *(v5 + 20)));
  sub_1E47F3784(v7, *(v4 + *(v5 + 24)));
  sub_1E487916C();
  MEMORY[0x1E6919800](*(v4 + a2[5]));
  MEMORY[0x1E6919800](*(v4 + a2[6]));
  sub_1E47F3784(v7, *(v4 + a2[7]));
  MEMORY[0x1E6919800](*(v4 + a2[8]));
  return sub_1E487917C();
}

void sub_1E484106C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v95 = a6;
  v74 = a5;
  v98 = a4;
  v94 = a2;
  v100 = a1;
  v76 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v69 - v11;
  v93 = sub_1E48770FC();
  v99 = *(v93 - 8);
  v12 = MEMORY[0x1EEE9AC00](v93);
  v89 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - v14;
  v16 = sub_1E487732C();
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v73 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v69 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v69 - v24;
  v75 = a3;
  v92 = *a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v26 = sub_1E487751C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = *(v27 + 80);
  v30 = (v29 + 32) & ~v29;
  v84 = v30 + 4 * v28;
  v85 = v29;
  v87 = v25;
  v31 = swift_allocObject();
  v82 = xmmword_1E487BC70;
  *(v31 + 16) = xmmword_1E487BC70;
  v86 = v30;
  v32 = v31 + v30;
  v33 = *(v27 + 104);
  v83 = *MEMORY[0x1E6969A50];
  v33(v32);
  v81 = *MEMORY[0x1E6969A68];
  v33(v32 + v28);
  v79 = *MEMORY[0x1E6969A78];
  v33(v32 + 2 * v28);
  v80 = 2 * v28;
  v34 = *MEMORY[0x1E6969A48];
  v78 = 3 * v28;
  v77 = v34;
  v33(v32 + 3 * v28);
  sub_1E486B81C(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E487747C();

  if (v92 == 24)
  {
    sub_1E48770BC();
    v35 = sub_1E487708C();
    if (v36)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v37 = v91;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_1E487709C();
  }

  else
  {
    sub_1E48770BC();
    v37 = v91;
  }

  v71 = v23;
  sub_1E48774AC();
  v38 = v37;
  v40 = v96;
  v39 = v97;
  v91 = *(v96 + 48);
  v92 = v96 + 48;
  if ((v91)(v38, 1, v97) == 1)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v41 = *(v99 + 8);
  v99 += 8;
  v70 = v41;
  v41(v15, v93);
  v42 = v88;
  v69 = *(v40 + 32);
  v69(v88, v38, v39);
  v88 = *(v40 + 40);
  (v88)(v94, v42, v39);
  v43 = *v95;
  v44 = swift_allocObject();
  *(v44 + 16) = v82;
  v45 = v44 + v86;
  (v33)(v44 + v86, v83, v26);
  (v33)(v45 + v28, v81, v26);
  (v33)(v45 + v80, v79, v26);
  (v33)(v45 + v78, v77, v26);
  sub_1E486B81C(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v89;
  v47 = v100;
  sub_1E487747C();

  if (v43 != 24)
  {
    sub_1E48770BC();
    v49 = v90;
LABEL_12:
    sub_1E48774AC();
    v51 = v97;
    if ((v91)(v49, 1, v97) != 1)
    {
      v70(v46, v93);
      v52 = v71;
      v69(v71, v49, v51);
      v53 = v74;
      (v88)(v74, v52, v51);
      v54 = type metadata accessor for DayEvents(0);
      v55 = *(v47 + v54[5]);
      v56 = v96;
      v57 = *(v96 + 16);
      v58 = v72;
      v57(v72, v94, v51);
      v59 = v73;
      v57(v73, v53, v51);
      v60 = sub_1E4842890(v55, v58, v59);
      v99 = v61;
      v62 = *(v56 + 8);
      v62(v59, v51);
      v62(v58, v51);
      v63 = v76;
      v64 = v100;
      v57(v76, v100, v51);
      v65 = *(v64 + v54[6]);
      *&v63[v54[5]] = v60;
      *&v63[v54[6]] = v65;
      v63[v54[7]] = 0;
      v66 = *v75;
      v67 = *v95;
      v68 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
      *&v63[v68[5]] = v66;
      *&v63[v68[6]] = v67;
      *&v63[v68[7]] = v99;
      v63[v68[8]] = 1;

      return;
    }

    goto LABEL_17;
  }

  sub_1E48770BC();
  v48 = sub_1E487708C();
  v49 = v90;
  if ((v50 & 1) == 0)
  {
    if (!__OFADD__(v48, 1))
    {
      sub_1E487709C();
      goto LABEL_12;
    }

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1E48418E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E487745C();
  v12 = *(a1 + *(type metadata accessor for DayEvents(0) + 20));
  v31 = a2;
  v32 = v11;
  v33 = a3;
  v13 = sub_1E4841D88(sub_1E4844CB4, v30, v12);
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = *(v13 + 32);
  v16 = v14 - 1;
  if (v14 != 1)
  {
    if (v14 >= 5)
    {
      v17 = v16 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v18 = vdupq_n_s64(v15);
      v19 = (v13 + 56);
      v20 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      v21 = v18;
      do
      {
        v18 = vbslq_s8(vcgtq_s64(v18, v19[-1]), v18, v19[-1]);
        v21 = vbslq_s8(vcgtq_s64(v21, *v19), v21, *v19);
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      v22 = vbslq_s8(vcgtq_s64(v18, v21), v18, v21);
      v23 = vextq_s8(v22, v22, 8uLL).u64[0];
      v15 = vbsl_s8(vcgtd_s64(v22.i64[0], v23), *v22.i8, v23);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = 1;
    }

    v24 = v14 - v17;
    v25 = (v13 + 8 * v17 + 32);
    do
    {
      v27 = *v25++;
      v26 = v27;
      if (v15 <= v27)
      {
        v15 = v26;
      }

      --v24;
    }

    while (v24);
  }

LABEL_13:
  v28 = v14 == 0;

  *a4 = v15;
  *(a4 + 8) = v28;
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E4841AC8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22[1] = a2;
  v23 = a4;
  v24 = a5;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v13 = sub_1E487751C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, *MEMORY[0x1E6969A58], v13);
  type metadata accessor for Event(0);
  sub_1E48772AC();
  sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1E4878ADC())
  {
    (*(v7 + 8))(v10, v6);
    (*(v7 + 16))(v12, a3, v6);
  }

  else
  {
    (*(v7 + 32))(v12, v10, v6);
  }

  v17 = sub_1E487752C();
  (*(v7 + 8))(v12, v6);
  result = (*(v14 + 8))(v16, v13);
  v19 = v24;
  v20 = v17 >= v23;
  if (v17 < v23)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  *v24 = v21;
  *(v19 + 8) = v20;
  return result;
}

uint64_t sub_1E4841D88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for Event(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4860A30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v8;
      v18 = *(v8 + 16);
      result = sub_1E4860A30((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v8 = result;
    }

    *(v8 + 16) = v16;
    *(v8 + 8 * v14 + 32) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_1E4841F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + *(type metadata accessor for DayEvents(0) + 20));
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = a3;
  v9 = sub_1E4841D88(sub_1E4844C94, v26, v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 >= 5)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v14 = vdupq_n_s64(v11);
      v15 = (v9 + 56);
      v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v14;
      do
      {
        v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v15[-1], v14);
        v17 = vbslq_s8(vcgtq_s64(v17, *v15), *v15, v17);
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      v18 = vbslq_s8(vcgtq_s64(v17, v14), v14, v17);
      v19 = vextq_s8(v18, v18, 8uLL).u64[0];
      v11 = vbsl_s8(vcgtd_s64(v19, v18.i64[0]), *v18.i8, v19);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 1;
    }

    v20 = v10 - v13;
    v21 = (v9 + 8 * v13 + 32);
    do
    {
      v23 = *v21++;
      v22 = v23;
      if (v23 < v11)
      {
        v11 = v22;
      }

      --v20;
    }

    while (v20);
  }

LABEL_13:
  v24 = v10 == 0;

  *a4 = v11;
  *(a4 + 8) = v24;
  return result;
}

uint64_t sub_1E484205C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v60 = a5;
  v59 = a4;
  v67 = a1;
  v6 = sub_1E487751C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v54 - v13;
  v15 = sub_1E487732C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v61 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v64 = v54 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v54 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v69 = v54 - v24;
  v63 = *(type metadata accessor for Event(0) + 24);
  sub_1E487745C();
  v25 = *MEMORY[0x1E6969A48];
  v26 = v7 + 104;
  v68 = *(v7 + 104);
  v68(v9, v25, v6);
  v72 = a2;
  sub_1E48774BC();
  v27 = *(v7 + 8);
  v65 = (v7 + 8);
  v62 = v27;
  v27(v9, v6);
  v55 = v16[6];
  v56 = v16 + 6;
  result = v55(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v70 = v16[1];
  v71 = v16 + 1;
  v70(v23, v15);
  v29 = v16 + 4;
  v66 = v16[4];
  v66(v69, v14, v15);
  v30 = v16[2];
  v54[2] = v16 + 2;
  v31 = v64;
  v32 = &v63[v67];
  v63 = v30;
  (v30)(v64, v32, v15);
  v33 = v6;
  v34 = v6;
  v35 = v68;
  v68(v9, *MEMORY[0x1E6969A88], v34);
  v36 = sub_1E487752C();
  v67 = v33;
  v37 = v62;
  v62(v9, v33);
  v38 = v35;
  v39 = v37;
  if (v36)
  {
    v54[1] = v29;
    v40 = v67;
    v38(v9, *MEMORY[0x1E6969A58], v67);
    v41 = v57;
    sub_1E48774BC();
    v39(v9, v40);
    result = v55(v41, 1, v15);
    if (result != 1)
    {
      v70(v31, v15);
      v66(v31, v41, v15);
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    return result;
  }

LABEL_5:
  v65 = v9;
  v58 = v26;
  sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v42 = v69;
  if (sub_1E4878ACC())
  {
    v70(v31, v15);
    v43 = v61;
    (v63)(v61, v42, v15);
    v44 = v67;
    v66(v31, v43, v15);
  }

  else
  {
    v45 = v61;
    v46 = v66;
    v66(v61, v31, v15);
    v44 = v67;
    v46(v31, v45, v15);
  }

  v47 = v65;
  v68(v65, *MEMORY[0x1E6969A58], v44);
  v48 = sub_1E487752C();
  v39(v47, v44);
  if (v48)
  {
    v49 = v70;
    v70(v42, v15);
  }

  else
  {
    v50 = sub_1E48772EC();
    v49 = v70;
    v70(v42, v15);
    if (v50)
    {
      v48 = 24;
    }

    else
    {
      v48 = 0;
    }
  }

  result = v49(v31, v15);
  v51 = v60;
  v52 = v48 <= v59;
  if (v48 > v59)
  {
    v53 = v48;
  }

  else
  {
    v53 = 0;
  }

  *v60 = v53;
  *(v51 + 8) = v52;
  return result;
}

uint64_t type metadata accessor for TimeScalingEngine.SpatialViewParameters(uint64_t a1)
{
  result = qword_1EE2B3478;
  if (!qword_1EE2B3478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48426E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D920, &qword_1E4882C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4842750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1E48427B0(uint64_t a1, uint64_t a2)
{
  if (sub_1E48772EC() & 1) != 0 && (v4 = type metadata accessor for DayEvents(0), (sub_1E47F35E8(*(a1 + v4[5]), *(a2 + v4[5]))) && (sub_1E47F35E8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && (v5 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0), *(a1 + v5[5]) == *(a2 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && (v6 = v5, (sub_1E47F35E8(*(a1 + v5[7]), *(a2 + v5[7]))))
  {
    return *(a1 + v6[8]) == *(a2 + v6[8]);
  }

  else
  {
    return 0;
  }
}

void *sub_1E4842890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v39 = a2;
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Event(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v33 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = a1 + v33;
    v18 = *(v13 + 72);
    v19 = (v5 + 8);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v18;
    v38 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E479B13C(v17, v15, type metadata accessor for Event);
      sub_1E48772AC();
      v21 = sub_1E48772EC();
      v22 = *v19;
      (*v19)(v7, v4);
      if (v21 & 1) != 0 && (sub_1E48772EC())
      {
        break;
      }

      sub_1E48772AC();
      v23 = sub_1E48772DC();
      v22(v7, v4);
      if (v23 & 1) != 0 && (sub_1E48772CC())
      {
        break;
      }

      sub_1E48772AC();
      sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v29 = sub_1E4878ADC();
      v22(v7, v4);
      if (v29)
      {
        sub_1E479B13C(v15, v32, type metadata accessor for Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1E4860A08(0, v35[2] + 1, 1, v35);
        }

        v25 = v35[2];
        v30 = v35[3];
        if (v25 >= v30 >> 1)
        {
          v35 = sub_1E4860A08((v30 > 1), v25 + 1, 1, v35);
        }

        sub_1E4842750(v15, type metadata accessor for Event);
        v26 = v35;
        v35[2] = v25 + 1;
        v27 = v32;
        v28 = v33;
        goto LABEL_20;
      }

      sub_1E4842750(v15, type metadata accessor for Event);
      v20 = v36;
LABEL_4:
      v17 += v20;
      if (!--v16)
      {
        return v38;
      }
    }

    sub_1E479B13C(v15, v34, type metadata accessor for Event);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1E4860A08(0, v38[2] + 1, 1, v38);
    }

    v25 = v38[2];
    v24 = v38[3];
    if (v25 >= v24 >> 1)
    {
      v38 = sub_1E4860A08((v24 > 1), v25 + 1, 1, v38);
    }

    sub_1E4842750(v15, type metadata accessor for Event);
    v26 = v38;
    v38[2] = v25 + 1;
    v28 = v33;
    v27 = v34;
LABEL_20:
    v20 = v36;
    sub_1E4844C2C(v27, v26 + v28 + v25 * v36, type metadata accessor for Event);
    goto LABEL_4;
  }

  v35 = MEMORY[0x1E69E7CC0];
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E4842D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v226 = sub_1E48770FC();
  v231 = *(v226 - 8);
  v6 = MEMORY[0x1EEE9AC00](v226);
  v207 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v209 = &v199 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v200 = &v199 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v202 = &v199 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v199 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v206 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v208 = &v199 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v199 = &v199 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v201 = &v199 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v204 = &v199 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v210 = &v199 - v28;
  MEMORY[0x1EEE9AC00](v27);
  *&v221 = &v199 - v29;
  v243 = type metadata accessor for Event(0);
  v246 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v242 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1E487732C();
  v244 = *(v239 - 8);
  v31 = MEMORY[0x1EEE9AC00](v239);
  v205 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v216 = &v199 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v211 = &v199 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v222 = &v199 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  *&v223 = &v199 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v217 = &v199 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v219 = &v199 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v230 = &v199 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v199 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v229 = &v199 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v199 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v199 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v245 = &v199 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v234 = &v199 - v60;
  v61 = sub_1E487751C();
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v199 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v62 + 104);
  v218 = *MEMORY[0x1E6969A58];
  v238 = v62 + 104;
  v224 = v65;
  v65(v64);
  v236 = a3;
  v237 = a1;
  v228 = sub_1E487752C();
  v215 = v62;
  v232 = *(v62 + 8);
  v233 = v62 + 8;
  v220 = v64;
  v235 = v61;
  v232(v64, v61);
  v213 = type metadata accessor for DayEvents(0);
  v66 = *(v213 + 20);
  v214 = a2;
  v67 = *(a2 + v66);
  v68 = *(v67 + 16);
  v212 = v67;
  v203 = v15;
  v225 = v49;
  if (v68)
  {
    v247 = MEMORY[0x1E69E7CC0];
    sub_1E48580E0(0, v68, 0);
    v69 = v247;
    v70 = v67 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
    v71 = *(v246 + 9);
    v72 = (v244 + 16);
    v240 = v244 + 32;
    v241 = v71;
    v73 = v239;
    do
    {
      v74 = v242;
      sub_1E479B13C(v70, v242, type metadata accessor for Event);
      v75 = v74 + *(v243 + 24);
      v76 = v72;
      v246 = *v72;
      v246(v54, v75, v73);
      sub_1E4842750(v74, type metadata accessor for Event);
      v247 = v69;
      v78 = *(v69 + 16);
      v77 = *(v69 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1E48580E0((v77 > 1), v78 + 1, 1);
        v69 = v247;
      }

      *(v69 + 16) = v78 + 1;
      (*(v244 + 32))(v69 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v78, v54, v73);
      v70 += v241;
      --v68;
      v72 = v76;
    }

    while (v68);
    v79 = v76 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v80 = v246;
  }

  else
  {
    v80 = *(v244 + 16);
    v79 = (v244 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v69 = MEMORY[0x1E69E7CC0];
    v73 = v239;
  }

  v81 = v245;
  v246 = v80;
  v80(v245, v237, v73);
  v82 = *(v69 + 16);
  v243 = v79;
  if (v82)
  {
    v83 = v69 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
    v84 = *(v244 + 72);
    v85 = (v244 + 8);
    v86 = (v244 + 32);
    v241 = (v244 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v242 = v84;
    v87 = v239;
    v88 = v230;
    do
    {
      v246(v57, v83, v87);
      sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v89 = sub_1E4878ADC();
      v90 = (v89 & 1) == 0;
      if (v89)
      {
        v91 = v81;
      }

      else
      {
        v91 = v57;
      }

      if (v90)
      {
        v92 = v245;
      }

      else
      {
        v92 = v57;
      }

      (*v85)(v91, v87);
      v93 = *v86;
      v94 = v92;
      v81 = v245;
      (*v86)(v88, v94, v87);
      v93(v81, v88, v87);
      v83 += v242;
      --v82;
    }

    while (v82);

    v79 = v243;
    v95 = v241;
  }

  else
  {

    v93 = *(v244 + 32);
    v95 = (v244 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  }

  v96 = v239;
  v93(v234, v81, v239);
  sub_1E487745C();
  v97 = v220;
  v227 = *MEMORY[0x1E6969A48];
  v98 = v235;
  v224(v220);
  v99 = v221;
  sub_1E48774BC();
  v232(v97, v98);
  v100 = *(v244 + 48);
  v240 = v244 + 48;
  v230 = v100;
  result = (v100)(v99, 1, v96);
  v102 = v246;
  v103 = v229;
  if (result == 1)
  {
    goto LABEL_108;
  }

  v104 = *(v244 + 8);
  v244 += 8;
  v242 = v104;
  v104(v225, v96);
  v241 = v95;
  v93(v103, v99, v96);
  v105 = v219;
  v102(v219, v234, v96);
  v106 = v224;
  (v224)(v97, *MEMORY[0x1E6969A88], v98);
  v107 = sub_1E487752C();
  v232(v97, v98);
  v245 = v93;
  v108 = v105;
  v109 = v218;
  if (v107)
  {
    v110 = v235;
    (v106)(v97, v218, v235);
    v111 = v210;
    sub_1E48774BC();
    v232(v97, v110);
    result = (v230)(v111, 1, v96);
    if (result == 1)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    (v242)(v108, v96);
    (v245)(v108, v111, v96);
  }

  sub_1E4844DF0(&qword_1EE2B5A00, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v112 = v229;
  if (sub_1E4878ACC())
  {
    (v242)(v108, v96);
    v113 = v217;
    v246(v217, v112, v96);
    (v245)(v108, v113, v96);
  }

  else
  {
    v114 = v217;
    v115 = v245;
    (v245)(v217, v108, v96);
    v115(v108, v114, v96);
  }

  v116 = v109;
  v117 = v235;
  (v106)(v97, v116, v235);
  v118 = sub_1E487752C();
  v232(v97, v117);
  if (v118)
  {
    v119 = v242;
    (v242)(v229, v96);
    v120 = v234;
    v119(v234, v96);
  }

  else
  {
    v121 = v229;
    v122 = sub_1E48772EC();
    v123 = v242;
    (v242)(v121, v96);
    v120 = v234;
    v123(v234, v96);
    if (v122)
    {
      v118 = 24;
    }

    else
    {
      v118 = 0;
    }
  }

  result = (v245)(v120, v108, v96);
  v124 = v228;
  v125 = v118 - v228;
  v126 = __OFSUB__(v118, v228);
  if (__OFSUB__(v118, v228))
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v125 < 4)
  {
    if (__OFADD__(v228, 4))
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v228 + 4 >= 24)
    {
      v118 = 24;
    }

    else
    {
      v118 = v228 + 4;
    }

    v125 = v118 - v228;
    v126 = __OFSUB__(v118, v228);
  }

  if (v126)
  {
    goto LABEL_96;
  }

  if (v125 <= 3)
  {
    v124 = v118 - 4;
    if (__OFSUB__(v118, 4))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v125 = 4;
    v126 = __OFSUB__(v118, v124);
  }

  if (v126)
  {
    goto LABEL_97;
  }

  if (v125 < 8)
  {
    v233 = v118;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
    v79 = *(v215 + 72);
    v118 = (*(v215 + 80) + 32) & ~*(v215 + 80);
    v232 = v127;
    v229 = (v118 + 4 * v79);
    v128 = swift_allocObject();
    v223 = xmmword_1E487BC70;
    *(v128 + 16) = xmmword_1E487BC70;
    LODWORD(v225) = *MEMORY[0x1E6969A50];
    v106((v128 + v118));
    LODWORD(v222) = *MEMORY[0x1E6969A68];
    v106((v128 + v118 + v79));
    LODWORD(v220) = *MEMORY[0x1E6969A78];
    v106((v128 + v118 + 2 * v79));
    *&v221 = 2 * v79;
    v219 = 3 * v79;
    (v106)(v128 + v118 + 3 * v79, v227, v117);
    sub_1E486B81C(v128);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v108 = v209;
    sub_1E487747C();

    v228 = v124;
    if (v124 == 24)
    {
      sub_1E48770BC();
      result = sub_1E487708C();
      v129 = v245;
      if (v130)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v131 = __OFADD__(result++, 1);
      v132 = v239;
      v133 = v208;
      if (v131)
      {
        goto LABEL_102;
      }

      sub_1E487709C();
LABEL_64:
      sub_1E48774AC();
      result = (v230)(v133, 1, v132);
      if (result == 1)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v134 = *(v231 + 8);
      v231 += 8;
      v134(v108, v226);
      v129(v216, v133, v132);
      v135 = swift_allocObject();
      *(v135 + 16) = v223;
      v136 = v235;
      (v106)(v135 + v118, v225, v235);
      (v106)(v135 + v118 + v79, v222, v136);
      (v106)(v135 + v118 + v221, v220, v136);
      (v106)(v135 + v118 + v219, v227, v136);
      sub_1E486B81C(v135);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v137 = v207;
      sub_1E487747C();

      if (v233 == 24)
      {
        sub_1E48770BC();
        result = sub_1E487708C();
        v138 = v246;
        v139 = v206;
        if (v140)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v131 = __OFADD__(result++, 1);
        v141 = v239;
        if (v131)
        {
          goto LABEL_103;
        }

        sub_1E487709C();
      }

      else
      {
        sub_1E48770BC();
        v141 = v239;
        v138 = v246;
        v139 = v206;
      }

      sub_1E48774AC();
      result = (v230)(v139, 1, v141);
      if (result != 1)
      {
        v134(v137, v226);
        v142 = v205;
        v129(v205, v139, v141);
        v143 = v216;
        v144 = sub_1E4842890(v212, v216, v142);
        v146 = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D930, &unk_1E4882C40);
        v147 = (type metadata accessor for TimeScalingEngine.SpatialViewParameters(0) - 8);
        v148 = (*(*v147 + 80) + 32) & ~*(*v147 + 80);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_1E487A7E0;
        v150 = v149 + v148;
        v151 = v214;
        v138(v150, v214, v239);
        v152 = v213;
        v153 = *(v151 + *(v213 + 24));
        *(v150 + *(v213 + 20)) = v144;
        v154 = v239;
        *(v150 + *(v152 + 24)) = v153;
        *(v150 + *(v152 + 28)) = 0;
        *(v150 + v147[7]) = v228;
        *(v150 + v147[8]) = v233;
        *(v150 + v147[9]) = v146;
        *(v150 + v147[10]) = 0;

        v155 = v142;
        v156 = v242;
LABEL_94:
        v156(v155, v154);
        v156(v143, v154);
        v156(v234, v154);
        return v149;
      }

      goto LABEL_111;
    }

LABEL_63:
    v129 = v245;
    sub_1E48770BC();
    v132 = v239;
    v133 = v208;
    goto LABEL_64;
  }

  if (v125 >= 0xE)
  {
    if (v125 == 14)
    {
      goto LABEL_73;
    }

    v118 = v124 + 14;
    if (!__OFADD__(v124, 14))
    {
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (v125)
  {
    if (v118 > 23)
    {
      v131 = __OFSUB__(v124--, 1);
      if (v131)
      {
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }
    }

    else
    {
      ++v118;
    }
  }

LABEL_73:
  if (__OFSUB__(v118, v124))
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (__OFADD__(v124, (v118 - v124) / 2))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v233 = v118;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v158 = *(v215 + 72);
  v159 = (*(v215 + 80) + 32) & ~*(v215 + 80);
  v232 = v157;
  v229 = (v159 + 4 * v158);
  v160 = swift_allocObject();
  v221 = xmmword_1E487BC70;
  *(v160 + 16) = xmmword_1E487BC70;
  v228 = v159;
  v161 = v160 + v159;
  LODWORD(v225) = *MEMORY[0x1E6969A50];
  v106(v161);
  LODWORD(v220) = *MEMORY[0x1E6969A68];
  v106((v161 + v158));
  v218 = *MEMORY[0x1E6969A78];
  v106((v161 + 2 * v158));
  v219 = 2 * v158;
  v217 = 3 * v158;
  (v106)(v161 + 3 * v158, v227, v117);
  sub_1E486B81C(v160);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v162 = v203;
  sub_1E487747C();

  v216 = v124 + (v118 - v124) / 2;
  if (v124 == 24)
  {
    sub_1E48770BC();
    result = sub_1E487708C();
    v163 = v204;
    if (v164)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v131 = __OFADD__(result++, 1);
    v165 = v239;
    v166 = v228;
    if (!v131)
    {
      sub_1E487709C();
      goto LABEL_80;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_1E48770BC();
  v165 = v239;
  v163 = v204;
  v166 = v228;
LABEL_80:
  v228 = v124;
  sub_1E48774AC();
  result = (v230)(v163, 1, v165);
  if (result == 1)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v167 = *(v231 + 8);
  v231 += 8;
  v167(v162, v226);
  (v245)(v223, v163, v165);
  v168 = swift_allocObject();
  *(v168 + 16) = v221;
  v169 = v235;
  (v106)(v168 + v166, v225, v235);
  (v106)(v168 + v166 + v158, v220, v169);
  (v106)(v168 + v166 + v219, v218, v169);
  (v106)(v168 + v166 + v217, v227, v169);
  sub_1E486B81C(v168);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v170 = v202;
  sub_1E487747C();

  if (v216 == 24)
  {
    sub_1E48770BC();
    result = sub_1E487708C();
    v171 = v201;
    if (v172)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v131 = __OFADD__(result++, 1);
    v173 = v239;
    if (!v131)
    {
      sub_1E487709C();
      goto LABEL_86;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_1E48770BC();
  v173 = v239;
  v171 = v201;
LABEL_86:
  sub_1E48774AC();
  result = (v230)(v171, 1, v173);
  if (result == 1)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v167(v170, v226);
  (v245)(v222, v171, v173);
  v174 = swift_allocObject();
  *(v174 + 16) = v221;
  v175 = v174 + v166;
  v176 = v174 + v166;
  v177 = v235;
  (v106)(v176, v225, v235);
  (v106)(v175 + v158, v220, v177);
  (v106)(v175 + v219, v218, v177);
  (v106)(v175 + v217, v227, v177);
  sub_1E486B81C(v174);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v178 = v200;
  sub_1E487747C();

  if (v233 != 24)
  {
    sub_1E48770BC();
    v180 = v239;
    v181 = v245;
LABEL_92:
    v182 = v199;
    sub_1E48774AC();
    result = (v230)(v182, 1, v180);
    if (result != 1)
    {
      v167(v178, v226);
      v183 = v211;
      v181(v211, v182, v180);
      v184 = v212;
      v185 = v222;
      v186 = sub_1E4842890(v212, v223, v222);

      v241 = sub_1E4842890(v184, v185, v183);
      v245 = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D930, &unk_1E4882C40);
      v188 = (type metadata accessor for TimeScalingEngine.SpatialViewParameters(0) - 8);
      v189 = *v188;
      v240 = *(*v188 + 72);
      v190 = (*(v189 + 80) + 32) & ~*(v189 + 80);
      v149 = swift_allocObject();
      *(v149 + 16) = xmmword_1E487A7F0;
      v191 = v149 + v190;
      v192 = v214;
      v193 = v246;
      v246(v191, v214, v239);
      v194 = v213;
      v195 = *(v192 + *(v213 + 24));
      *(v191 + *(v213 + 20)) = v186;
      *(v191 + v194[6]) = v195;
      *(v191 + v194[7]) = 0;
      *(v191 + v188[7]) = v228;
      v196 = v216;
      *(v191 + v188[8]) = v216;
      v197 = MEMORY[0x1E69E7CC0];
      *(v191 + v188[9]) = MEMORY[0x1E69E7CC0];
      *(v191 + v188[10]) = 0;
      v198 = v191 + v240;
      v193(v198, v192, v239);
      *(v198 + v194[5]) = v241;
      *(v198 + v194[6]) = v197;
      *(v198 + v194[7]) = 0;
      *(v198 + v188[7]) = v196;
      *(v198 + v188[8]) = v233;
      *(v198 + v188[9]) = v245;
      *(v198 + v188[10]) = 2;
      v154 = v239;

      v156 = v242;
      (v242)(v211, v154);
      v155 = v222;
      v143 = v223;
      goto LABEL_94;
    }

    goto LABEL_114;
  }

  sub_1E48770BC();
  result = sub_1E487708C();
  if ((v179 & 1) == 0)
  {
    v131 = __OFADD__(result++, 1);
    v180 = v239;
    v181 = v245;
    if (!v131)
    {
      sub_1E487709C();
      goto LABEL_92;
    }

    goto LABEL_106;
  }

LABEL_119:
  __break(1u);
  return result;
}

char *sub_1E4844968(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v31 = a3;
  v9 = type metadata accessor for DayEvents(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27 = v13 - 1;
  result = MEMORY[0x1E69E7CC0];
  v15 = a4;
  do
  {
    v28 = result;
    v16 = v15;
    while (1)
    {
      if (v15 < a4 || v16 >= v13)
      {
        __break(1u);
        return result;
      }

      sub_1E479B13C(v31 + *(v10 + 72) * v16, v12, type metadata accessor for DayEvents);
      a1(&v29, v12);
      if (v5)
      {
        sub_1E4842750(v12, type metadata accessor for DayEvents);
        v24 = v28;

        return v24;
      }

      result = sub_1E4842750(v12, type metadata accessor for DayEvents);
      if ((v30 & 1) == 0)
      {
        break;
      }

      if (v13 == ++v16)
      {
        return v28;
      }
    }

    v17 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1E4860A30(0, *(v28 + 2) + 1, 1, v28);
    }

    v19 = *(v28 + 2);
    v18 = *(v28 + 3);
    v20 = v19 + 1;
    v26 = v17;
    if (v19 >= v18 >> 1)
    {
      v25 = v19 + 1;
      v22 = v19;
      v23 = sub_1E4860A30((v18 > 1), v19 + 1, 1, v28);
      v19 = v22;
      v20 = v25;
      v28 = v23;
    }

    v15 = v16 + 1;
    v21 = v28;
    *(v28 + 2) = v20;
    *&v21[8 * v19 + 32] = v26;
    result = v21;
  }

  while (v27 != v16);
  return result;
}

uint64_t sub_1E4844C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E4844D0C(uint64_t a1)
{
  type metadata accessor for DayEvents(319);
  if (v1 <= 0x3F)
  {
    sub_1E47F2E50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4844DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4844E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E478E700(a1, a2, a3);
  sub_1E4877F2C();
  return v4;
}

uint64_t sub_1E4844EF0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E4845034(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E4878F0C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1E4878F0C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1E48478C8(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E4847B04(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E4845124()
{
  v0 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v0, qword_1EE2BAEC8);
  v1 = __swift_project_value_buffer(v0, qword_1EE2BAEC8);
  if (qword_1EE2B16E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2BAD00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1E48451EC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v185 = a3;
  v186 = a4;
  v172 = a5;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D940, &qword_1E4882DA8);
  v7 = MEMORY[0x1EEE9AC00](v166);
  v162 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v167 = &v161 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v165 = &v161 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v168 = &v161 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v175 = &v161 - v15;
  v176 = sub_1E48779FC();
  v179 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v183 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v188 = &v161 - v18;
  v187 = type metadata accessor for Event(0);
  v177 = *(v187 - 8);
  v19 = MEMORY[0x1EEE9AC00](v187);
  v169 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v184 = &v161 - v21;
  v192 = sub_1E487732C();
  v22 = *(v192 - 8);
  v23 = MEMORY[0x1EEE9AC00](v192);
  v161 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v189 = &v161 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v191 = &v161 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v190 = (&v161 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v193 = &v161 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v182 = (&v161 - v33);
  v34 = sub_1E487757C();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E487753C();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 16);
  sub_1E4877A7C();
  sub_1E487750C();
  (*(v39 + 8))(v41, v38);
  v43 = sub_1E487756C();
  (*(v35 + 8))(v37, v34);
  [v42 setTimeZone_];

  v181 = a2;
  v173 = v42;
  v44 = sub_1E4848A7C(a2, v42);
  v45 = v44;
  v46 = v44 >> 62;
  if (v44 >> 62)
  {
    goto LABEL_66;
  }

  v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v48 = v193;
  if (!v47)
  {

    if (qword_1EE2B3298 == -1)
    {
LABEL_10:
      v59 = sub_1E4877ADC();
      __swift_project_value_buffer(v59, qword_1EE2BAEC8);
      v60 = sub_1E4877ABC();
      v61 = sub_1E4878DEC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1E475C000, v60, v61, "No calendars are selected.  Will not refresh from the EventKit store.", v62, 2u);
        MEMORY[0x1E6919FE0](v62, -1, -1);
      }

      v63 = MEMORY[0x1E69E7CC0];
      v64 = v172;
      goto LABEL_63;
    }

LABEL_69:
    swift_once();
    goto LABEL_10;
  }

  if (qword_1EE2B3298 != -1)
  {
    swift_once();
  }

  v49 = sub_1E4877ADC();
  v50 = __swift_project_value_buffer(v49, qword_1EE2BAEC8);
  v51 = *(v22 + 16);
  v52 = v182;
  v53 = v192;
  (v51)(v182, v185, v192);
  v196 = v22 + 16;
  v194 = v51;
  (v51)(v48, v186, v53);

  v171 = v50;
  v54 = sub_1E4877ABC();
  v55 = sub_1E4878DEC();
  v56 = os_log_type_enabled(v54, v55);
  v180 = v45;
  v170 = v22;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v195[0] = v163;
    *v57 = 134218498;
    v178 = v54;
    LODWORD(v164) = v55;
    if (v46)
    {
      v58 = sub_1E4878F0C();
    }

    else
    {
      v58 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v182;
    *(v57 + 4) = v58;

    *(v57 + 12) = 2082;
    sub_1E484948C(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v67 = v192;
    v68 = sub_1E48790CC();
    v70 = v69;
    v71 = *(v170 + 8);
    v71(v66, v67);
    v72 = sub_1E47A0DEC(v68, v70, v195);

    *(v57 + 14) = v72;
    *(v57 + 22) = 2082;
    v73 = v193;
    v74 = sub_1E48790CC();
    v76 = v75;
    v193 = v71;
    v71(v73, v67);
    v77 = sub_1E47A0DEC(v74, v76, v195);

    *(v57 + 24) = v77;
    v78 = v178;
    _os_log_impl(&dword_1E475C000, v178, v164, "Fetching events in [%ld] calendars, from %{public}s to %{public}s", v57, 0x20u);
    v79 = v163;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v79, -1, -1);
    MEMORY[0x1E6919FE0](v57, -1, -1);
  }

  else
  {

    v65 = *(v22 + 8);
    v65(v48, v53);
    v193 = v65;
    v65(v52, v53);
  }

  v80 = sub_1E48772BC();
  v81 = sub_1E48772BC();
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v82 = sub_1E4878C9C();
  v83 = v173;
  v84 = [v173 predicateForEventsWithStartDate:v80 endDate:v81 calendars:v82];

  v85 = v174;
  if (v84)
  {
    v86 = [v83 eventsMatchingPredicate_];
    sub_1E48493B4(0, &qword_1EE2B46C0, 0x1E6966A08);
    v87 = sub_1E4878CAC();

    v88 = sub_1E4877ABC();
    v89 = sub_1E4878DEC();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134217984;
      if (v87 >> 62)
      {
        v91 = sub_1E4878F0C();
      }

      else
      {
        v91 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v90 + 4) = v91;

      _os_log_impl(&dword_1E475C000, v88, v89, "Fetched [%ld] events from the EventKit store", v90, 0xCu);
      MEMORY[0x1E6919FE0](v90, -1, -1);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v92);
    *(&v161 - 2) = v181;

    sub_1E4856338(sub_1E48493FC, (&v161 - 4), v87);
    v93 = v85;

    v195[0] = sub_1E4847A70(v164);
    sub_1E4846CD8(v195);
    v83 = v85;
    v22 = v176;
    if (!v93)
    {

      v94 = v195[0];
      v95 = v188;
      if (v195[0] < 0 || (v195[0] & 0x4000000000000000) != 0)
      {
        v45 = sub_1E4878F0C();
      }

      else
      {
        v45 = *(v195[0] + 16);
      }

      v163 = v84;
      v174 = 0;
      if (v45)
      {
        v96 = 0;
        v186 = v94 & 0xC000000000000001;
        v97 = v179 + 6;
        v181 = (v179 + 2);
        v182 = (v179 + 4);
        v180 = (v179 + 1);
        v179 = (v177 + 48);
        v178 = (v177 + 56);
        v185 = MEMORY[0x1E69E7CC0];
        v46 = v175;
        while (1)
        {
          if (v186)
          {
            v98 = MEMORY[0x1E6919650](v96, v94);
            v99 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v96 >= *(v94 + 16))
            {
              goto LABEL_65;
            }

            v98 = *(v94 + 8 * v96 + 32);
            v99 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              v47 = sub_1E4878F0C();
              goto LABEL_3;
            }
          }

          v100 = v98;
          sub_1E4877A0C();
          if ((*v97)(v46, 1, v22) == 1)
          {

            sub_1E47738B8(v46, &qword_1ECF7C210, &unk_1E4882DB0);
            (v178->isa)(v95, 1, 1, v187);
          }

          else
          {
            v101 = v183;
            (*v182)(v183, v46, v22);
            v195[3] = v22;
            v195[4] = sub_1E484948C(&qword_1EE2B4618, MEMORY[0x1E6993278], MEMORY[0x1E6993270]);
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v195);
            (*v181)(boxed_opaque_existential_0, v101, v22);
            sub_1E47CCD88(v195, v188);

            v103 = v101;
            v95 = v188;
            (*v180)(v103, v22);
            if ((*v179)(v95, 1, v187) != 1)
            {
              sub_1E4770850(v95, v184);
              v104 = v185;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v104 = sub_1E4860A08(0, v104[2] + 1, 1, v104);
              }

              v106 = v104[2];
              v105 = v104[3];
              if (v106 >= v105 >> 1)
              {
                v104 = sub_1E4860A08((v105 > 1), v106 + 1, 1, v104);
              }

              v104[2] = v106 + 1;
              v107 = (*(v177 + 80) + 32) & ~*(v177 + 80);
              v185 = v104;
              sub_1E4770850(v184, v104 + v107 + *(v177 + 72) * v106);
              v46 = v175;
              v22 = v176;
              goto LABEL_30;
            }
          }

          sub_1E47738B8(v95, &qword_1ECF7B950, &unk_1E487AE90);
LABEL_30:
          ++v96;
          if (v99 == v45)
          {
            goto LABEL_45;
          }
        }
      }

      v185 = MEMORY[0x1E69E7CC0];
LABEL_45:

      v108 = v185;
      swift_bridgeObjectRetain_n();
      v109 = v164;

      v110 = sub_1E4877ABC();
      v111 = sub_1E4878DEC();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 134218240;
        v113 = v189;
        if (v109 >> 62)
        {
          v114 = sub_1E4878F0C();
        }

        else
        {
          v114 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v112 + 4) = v114;

        *(v112 + 12) = 2048;
        v108 = v185;
        *(v112 + 14) = *(v185 + 16);

        _os_log_impl(&dword_1E475C000, v110, v111, "Filtered down to [%ld] events, converted to [%ld] Events", v112, 0x16u);
        MEMORY[0x1E6919FE0](v112, -1, -1);

        v64 = v172;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v64 = v172;
        v113 = v189;
      }

      v115 = *(v108 + 16);

      v63 = v108;
      v116 = v192;
      v117 = v169;
      if (!v115)
      {

LABEL_63:
        result = [v173 reset];
        *v64 = v63;
        return result;
      }

      v118 = *(v108 + 16);
      if (v118)
      {
        v119 = v177;
        v120 = v63 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
        v121 = v187;
        v122 = v194;
        (v194)(v190, v120 + *(v187 + 20), v192);
        v122(v191, v120 + *(v121 + 24), v116);
        v123 = *(v119 + 72);
        do
        {
          sub_1E47707EC(v120, v117);
          (v194)(v113, v117 + *(v121 + 20), v116);
          if (sub_1E48772DC())
          {
            v124 = v190;
            (v193)(v190, v116);
            (v194)(v124, v113, v116);
          }

          v125 = *(v121 + 24);
          v126 = sub_1E48772CC();
          v127 = v113;
          v128 = v117;
          v129 = v126;
          (v193)(v127, v116);
          if (v129)
          {
            v131 = v191;
            v130 = v192;
            (v193)(v191, v192);
            (v194)(v131, v128 + v125, v130);
          }

          sub_1E47710AC(v128);
          v120 += v123;
          --v118;
          v116 = v192;
          v117 = v128;
          v113 = v189;
        }

        while (v118);
        v132 = v166;
        v133 = *(v166 + 48);
        v134 = *(v170 + 32);
        v135 = v168;
        v134(v168, v190, v192);
        v134(v135 + v133, v191, v116);
        v136 = v165;
        sub_1E484941C(v135, v165);
        v137 = v167;
        sub_1E484941C(v135, v167);
        v138 = sub_1E4877ABC();
        LODWORD(v196) = sub_1E4878DEC();
        if (os_log_type_enabled(v138, v196))
        {
          v139 = swift_slowAlloc();
          v194 = v139;
          v191 = swift_slowAlloc();
          v195[0] = v191;
          *v139 = 136446466;
          v140 = v136;
          v141 = v162;
          sub_1E484941C(v140, v162);
          v190 = v138;
          v142 = *(v132 + 48);
          v143 = v161;
          v134(v161, v141, v116);
          v144 = v193;
          (v193)(v141 + v142, v116);
          v189 = sub_1E484948C(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v145 = sub_1E48790CC();
          v147 = v146;
          v144(v143, v116);
          sub_1E47738B8(v165, &qword_1ECF7D940, &qword_1E4882DA8);
          v148 = sub_1E47A0DEC(v145, v147, v195);

          v149 = v194;
          *(v194 + 1) = v148;
          *(v149 + 6) = 2082;
          v150 = v134;
          v151 = v167;
          sub_1E484941C(v167, v141);
          v150(v143, v141 + *(v166 + 48), v116);
          v144(v141, v116);
          v152 = sub_1E48790CC();
          v154 = v153;
          v144(v143, v116);
          sub_1E47738B8(v151, &qword_1ECF7D940, &qword_1E4882DA8);
          v155 = sub_1E47A0DEC(v152, v154, v195);

          v156 = v194;
          *(v194 + 14) = v155;
          v157 = v190;
          _os_log_impl(&dword_1E475C000, v190, v196, "Converted events first start time: %{public}s, last end time: %{public}s", v156, 0x16u);
          v158 = v191;
          swift_arrayDestroy();
          v159 = v158;
          v64 = v172;
          MEMORY[0x1E6919FE0](v159, -1, -1);
          MEMORY[0x1E6919FE0](v156, -1, -1);

          sub_1E47738B8(v168, &qword_1ECF7D940, &qword_1E4882DA8);
        }

        else
        {

          sub_1E47738B8(v137, &qword_1ECF7D940, &qword_1E4882DA8);
          sub_1E47738B8(v136, &qword_1ECF7D940, &qword_1E4882DA8);
          sub_1E47738B8(v135, &qword_1ECF7D940, &qword_1E4882DA8);
          v64 = v172;
        }

        v63 = v185;
        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_69;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E484679C(void **a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1E48779FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v11);
  v13 = (*(v12 + 24))(v11, v12);
  if (!v13)
  {
    v16 = v10;
LABEL_6:
    v31 = 0;
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 BOOLValue];

  if (!v15)
  {
    v16 = v10;
    goto LABEL_6;
  }

  v16 = v10;
  v31 = [v10 isAllDay];
LABEL_7:
  v18 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v18);
  v19 = (*(v17 + 32))(v18, v17);
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v19 &selRef_setTimeStyle_];

  if (!v21)
  {
    goto LABEL_12;
  }

  if ([v16 isIntegrationEvent])
  {
    v21 = [v16 completed];
  }

  else
  {
LABEL_11:
    v21 = 0;
  }

LABEL_12:
  v22 = v16;
  sub_1E4877A0C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E47738B8(v6, &qword_1ECF7C210, &unk_1E4882DB0);
    v23 = 0;
  }

  else
  {
    v24 = v30;
    (*(v8 + 32))(v30, v6, v7);
    v25 = sub_1E4847F30(v24);
    (*(v8 + 8))(v24, v7);
    v23 = v25;
  }

  result = [objc_opt_self() sharedPreferences];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = [result showDeclinedAndCancelledEventsInWidgets];

  if (v28)
  {
    v29 = 0;
    result = 0;
    if ((v31 | v21))
    {
      return result;
    }

    return !v29;
  }

  if (v23 != 3)
  {
    v29 = v23 == 4;
    if (((v31 | v21) & 1) == 0)
    {
      return !v29;
    }

    return 0;
  }

  if ((v31 | v21))
  {
    return 0;
  }

  v29 = 1;
  return !v29;
}

uint64_t sub_1E4846AF4()
{

  return swift_deallocClassInstance();
}

void *sub_1E4846B50(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v4 = *(sub_1E487732C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E4846C50(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D958, &qword_1E4882DC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1E4846CD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E48478B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E4846D54(v6);
  return sub_1E4878FEC();
}

char *sub_1E4846D54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E48790BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E48493B4(0, &qword_1EE2B46C0, 0x1E6966A08);
        v6 = sub_1E4878CDC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1E4846F24(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E4846E68(0, v2, 1, a1);
  }

  return result;
}

char *sub_1E4846E68(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compareStartDateWithEvent_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E4846F24(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 compareStartDateWithEvent_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 compareStartDateWithEvent_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
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
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = v8 + v81;
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 compareStartDateWithEvent_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E484779C(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_1E484779C((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
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
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_1E48474C8((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1E4847788(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_1E48476FC(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_1E4847788(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_1E48474C8((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1E4847788(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_1E48476FC(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1E48474C8(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 compareStartDateWithEvent_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 compareStartDateWithEvent_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1E48476FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E4847788(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1E484779C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D960, &qword_1E4882DD0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}