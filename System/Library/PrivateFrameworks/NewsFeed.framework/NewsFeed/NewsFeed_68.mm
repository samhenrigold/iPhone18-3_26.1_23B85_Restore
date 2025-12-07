uint64_t sub_1D61658F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1D6166814;
  }

  else
  {
    v4 = sub_1D6165A08;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6165A08()
{
  v103 = v0;
  v1 = v0[46];
  v2 = v0[36];
  v3 = v0[32];
  v82 = v0[31];
  v83 = v0[49];
  v87 = v0[24];
  v89 = v0[28];
  v93 = v0[23];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v91 = v0[19];
  *&v99 = v0[45];
  v7 = *(v6 + 32);

  v7(&v99, v1, v5, v6);

  v9 = sub_1D62076A8(v8);

  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v96 = 7;
  v10 = sub_1D725891C();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  v11(v82, 1, 1, v10);
  v0[11] = *(v83 + qword_1EDFFCF40);
  v12 = swift_task_alloc();
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v9;
  type metadata accessor for FeedCursorGroup(255, v4, v93, v13);
  v14 = sub_1D72627FC();

  swift_getWitnessTable();
  v94 = v14;
  v86 = sub_1D726242C();

  (*(*(v87 - 8) + 56))(v89, 1, 1);
  v15 = type metadata accessor for FeedContext(0);
  result = (*(*(v15 - 8) + 56))(v91, 1, 1, v15);
  v17 = *(v83 + *(*v83 + 240));
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 48;
    v21 = -v18;
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = (v20 + 24 * v19++);
      while (1)
      {
        if ((v19 - 1) >= *(v17 + 16))
        {
          __break(1u);
          return result;
        }

        v24 = *v23;
        v25 = *(v23 - 1);
        *&v99 = *(v23 - 2);
        *(&v99 + 1) = v25;
        v100 = v24;

        sub_1D5C07390(v25);
        sub_1D614D57C(v9, &v97);

        sub_1D5C08648(v25);
        v26 = v97;
        if (v97)
        {
          break;
        }

        result = sub_1D5FC4EA8(0, *(&v97 + 1));
        v23 += 3;
        ++v19;
        if (v21 + v19 == 1)
        {
          goto LABEL_16;
        }
      }

      v27 = *(&v97 + 1);
      v28 = v98;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D5C073A0(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_1D5C073A0((v29 > 1), v30 + 1, 1, v22);
        v31 = v27;
        v22 = result;
      }

      else
      {
        v31 = v27;
      }

      *(v22 + 16) = v30 + 1;
      v32 = (v22 + 24 * v30);
      v32[4] = v26;
      v32[5] = v31;
      v32[6] = v28;
      v20 = v17 + 48;
    }

    while (v21 + v19);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v33 = v0[36];
  v88 = v0[34];
  v90 = v0[33];
  v34 = v0[32];
  v81 = v0[31];
  v35 = v0[28];
  v36 = v0[26];
  v84 = v0[25];
  v37 = v0[19];
  v92 = v0[17];

  FeedJournal.init(entries:)(v22, &v97);
  v99 = v97;
  v100 = v98;
  v101 = 0;
  v102 = 256;
  v38 = v34;
  v39 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v33, 0, &v96, v34, v81, 0, 0, 0, 0, v86, 0, 0, 1, 0, 1, 0, 1, 0, 0, v35, v37, &v99, &v101, 0, 0, 0);
  v0[51] = v39;

  sub_1D5C086A4(v99, *(&v99 + 1), v100);
  v40 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v37, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v36 + 8))(v35, v84);
  v41 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v81, &qword_1EDF45B00, MEMORY[0x1E6969530], v40, sub_1D5B6BFD8);
  sub_1D5B88AA0(v38, &qword_1EDF45B00, v41, v40, sub_1D5B6BFD8);
  (*(v88 + 8))(v33, v90);
  v42 = qword_1EDFFCF40;
  v0[12] = *&v39[qword_1EDFFCF40];
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v33) = sub_1D7262CCC();
  v44 = *(v92 + 48);
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  if (v33)
  {
    v45 = swift_allocObject();
    v46 = v45;
    *(v45 + 16) = xmmword_1D7270C10;
    v47 = v39[32];
    if (v47 <= 2)
    {
      if (v39[32])
      {
        if (v47 == 1)
        {
          v49 = 0xE400000000000000;
          v48 = 1852138867;
        }

        else
        {
          v49 = 0xE600000000000000;
          v48 = 0x6E657A6F7266;
        }
      }

      else
      {
        v49 = 0xE600000000000000;
        v48 = 0x657669746361;
      }
    }

    else if (v39[32] > 4u)
    {
      v49 = 0xE800000000000000;
      if (v47 == 5)
      {
        v56 = 0x6C6F6F706572;
      }

      else
      {
        v56 = 0x646E61707865;
      }

      v48 = v56 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else if (v47 == 3)
    {
      v48 = 0x656546664F646E65;
      v49 = 0xE900000000000064;
    }

    else
    {
      v49 = 0xE600000000000000;
      v48 = 0x646568636163;
    }

    v58 = v0[45];
    v59 = MEMORY[0x1E69E6158];
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v60 = sub_1D5B7E2C0();
    v46[8] = v60;
    v46[4] = v48;
    v46[5] = v49;
    v62 = *(v39 + 2);
    v61 = *(v39 + 3);
    v46[12] = v59;
    v46[13] = v60;
    v46[9] = v62;
    v46[10] = v61;

    v63 = sub_1D7262EDC();
    sub_1D725C30C("Service converted end of feed to process the next chained %{public}@ cursor %{public}@", 86, 2, &dword_1D5B42000, v44, v63, v46);

    v0[14] = v58;
    v64 = sub_1D726275C();
    v0[52] = v64;
    v65 = swift_task_alloc();
    v0[53] = v65;
    *v65 = v0;
    v65[1] = sub_1D61665A4;
    v66 = *(v0 + 16);

    return sub_1D6160F2C(v0 + 14, v39, v64, v66);
  }

  else
  {
    v50 = swift_allocObject();
    v51 = v50;
    *(v50 + 16) = xmmword_1D7279970;
    v52 = v39[32];
    v53 = v44;
    if (v52 <= 2)
    {
      if (v39[32])
      {
        if (v52 == 1)
        {
          v55 = 0xE400000000000000;
          v54 = 1852138867;
        }

        else
        {
          v55 = 0xE600000000000000;
          v54 = 0x6E657A6F7266;
        }
      }

      else
      {
        v55 = 0xE600000000000000;
        v54 = 0x657669746361;
      }
    }

    else if (v39[32] > 4u)
    {
      v55 = 0xE800000000000000;
      if (v52 == 5)
      {
        v57 = 0x6C6F6F706572;
      }

      else
      {
        v57 = 0x646E61707865;
      }

      v54 = v57 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else if (v52 == 3)
    {
      v54 = 0x656546664F646E65;
      v55 = 0xE900000000000064;
    }

    else
    {
      v55 = 0xE600000000000000;
      v54 = 0x646568636163;
    }

    v67 = v0[37];
    v68 = MEMORY[0x1E69E6158];
    *(v50 + 56) = MEMORY[0x1E69E6158];
    v69 = sub_1D5B7E2C0();
    v51[8] = v69;
    v51[4] = v54;
    v51[5] = v55;
    v71 = *(v39 + 2);
    v70 = *(v39 + 3);
    v51[12] = v68;
    v51[13] = v69;
    v51[9] = v71;
    v51[10] = v70;

    v85 = *(v0 + 10);
    v72 = sub_1D726279C();
    v73 = MEMORY[0x1E69E65A8];
    v51[17] = MEMORY[0x1E69E6530];
    v51[18] = v73;
    v51[14] = v72;
    v74 = sub_1D7262EDC();
    sub_1D725C30C("Service converted end of feed to next groups for chained %{public}@ cursor %{public}@ with emitted %ld groups", 109, 2, &dword_1D5B42000, v53, v74, v51);

    v75 = swift_allocObject();
    v0[13] = *&v39[v42];
    v76 = swift_task_alloc();
    v76[1] = vextq_s8(v85, v85, 8uLL);

    v78 = sub_1D5B874E4(sub_1D617CC94, v76, v94, v67, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v77);

    *(v75 + 16) = v78;
    FeedCursorContainer.init(cursor:)();
    *(v75 + 24) = v79;

    v95 = sub_1D5D0E228(v75 | 0x2000000000000000);

    v80 = v0[1];

    return v80(v95);
  }
}

uint64_t sub_1D61665A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = sub_1D6166A78;
  }

  else
  {

    *(v4 + 440) = a1;
    v5 = sub_1D61666D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D61666D4()
{

  v3 = *(v0 + 440);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_1D6166814(__n128 a1)
{
  v2 = v1[50];
  v3 = *(v1[17] + 48);
  v4 = sub_1D7262EBC();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v1[8] = 0;
  *(v5 + 16) = xmmword_1D7273AE0;
  v1[9] = 0xE000000000000000;
  v1[10] = v2;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v6 = v1[8];
  v7 = v1[9];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D5B7E2C0();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1D725C30C("Service failed to await next cursor, dropping chain and converting to end of feed, error=%{public}@", 99, 2, &dword_1D5B42000, v3, v4, v5);

  sub_1D6F72F24();

  v11 = swift_allocObject();
  FeedCursorContainer.init(cursor:)();
  *(v11 + 16) = v8;

  v9 = v1[1];

  return v9(v11 | 0x8000000000000000);
}

uint64_t sub_1D6166A78()
{

  v1 = v0[54];
  v2 = *(v0[17] + 48);
  v3 = sub_1D7262EBC();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v0[8] = 0;
  *(v4 + 16) = xmmword_1D7273AE0;
  v0[9] = 0xE000000000000000;
  v0[10] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v5 = v0[8];
  v6 = v0[9];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D5B7E2C0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1D725C30C("Service failed to await next cursor, dropping chain and converting to end of feed, error=%{public}@", 99, 2, &dword_1D5B42000, v2, v3, v4);

  sub_1D6F72F24();

  v10 = swift_allocObject();
  FeedCursorContainer.init(cursor:)();
  *(v10 + 16) = v7;

  v8 = v0[1];

  return v8(v10 | 0x8000000000000000);
}

double sub_1D6166CF8@<D0>(void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D725AA4C();
  sub_1D614D9A8(v4, v5, a3);

  return result;
}

uint64_t sub_1D6166E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for FeedCursorGroup(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = FeedCursorGroup.identifier.getter(v7);
  v10 = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (v8 == sub_1D725AA4C() && v10 == v11)
  {

    v14 = 0;
  }

  else
  {
    v13 = sub_1D72646CC();

    v14 = v13 ^ 1;
  }

  return v14 & 1;
}

double sub_1D6167000@<D0>(uint64_t a1@<X2>, void *a4@<X8>)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1D725AA4C();
  sub_1D614DEB0(v6, v7, a1 + *(*a1 + 232), a4);

  return result;
}

uint64_t sub_1D616716C@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FeedCursorGroup(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  return sub_1D6C12480(a2, v10, x8_0);
}

uint64_t sub_1D6167220@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for FeedCursorGroup(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8) + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  return (*(*(v10 - 8) + 16))(a4, a1 + v9, v10);
}

uint64_t sub_1D6167360(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  *(v5 + 616) = v4;
  *(v5 + 608) = a4;
  *(v5 + 600) = a3;
  *(v5 + 592) = a2;
  *(v5 + 584) = a1;
  v6 = *a2;
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v5 + 624) = swift_task_alloc();
  v8 = *(v6 + 88);
  *(v5 + 632) = v8;
  v9 = *(v6 + 80);
  *(v5 + 640) = v9;
  *(v5 + 648) = swift_getAssociatedTypeWitness();
  v10 = sub_1D726393C();
  *(v5 + 656) = v10;
  *(v5 + 664) = *(v10 - 8);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();
  *(v5 + 688) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v7);
  *(v5 + 696) = swift_task_alloc();
  *(v5 + 704) = swift_task_alloc();
  *(v5 + 712) = swift_task_alloc();
  *(v5 + 720) = swift_task_alloc();
  v11 = sub_1D726393C();
  *(v5 + 728) = v11;
  *(v5 + 736) = *(v11 - 8);
  *(v5 + 744) = swift_task_alloc();
  *(v5 + 752) = swift_task_alloc();
  v12 = sub_1D725891C();
  *(v5 + 760) = v12;
  *(v5 + 768) = *(v12 - 8);
  *(v5 + 776) = swift_task_alloc();
  *(v5 + 784) = *(v9 - 8);
  *(v5 + 792) = swift_task_alloc();
  v14 = type metadata accessor for FeedCursorGroup(0, v9, v8, v13);
  *(v5 + 800) = v14;
  *(v5 + 808) = *(v14 - 8);
  *(v5 + 816) = swift_task_alloc();
  *(v5 + 824) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 832) = AssociatedTypeWitness;
  *(v5 + 840) = *(AssociatedTypeWitness - 8);
  *(v5 + 848) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v5 + 856) = v16;
  v17 = swift_task_alloc();
  *(v5 + 864) = v17;
  *v17 = v5;
  v17[1] = sub_1D61677F4;

  return sub_1D5C47A60(v16);
}

uint64_t sub_1D61677F4()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_1D616861C;
  }

  else
  {
    v2 = sub_1D6167908;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6167908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = v4;
  v114 = *(v4 + 856);
  v5 = *(v4 + 848);
  v6 = *(v4 + 840);
  v7 = *(v4 + 832);
  v118 = *(v4 + 816);
  v99 = *(v4 + 800);
  v101 = *(v4 + 808);
  v90 = *(v4 + 792);
  v115 = *(v4 + 784);
  v91 = *(v4 + 776);
  v94 = *(v4 + 768);
  v95 = *(v4 + 760);
  v92 = *(v4 + 752);
  v93 = *(v4 + 720);
  v97 = *(v4 + 712);
  v104 = *(v4 + 664);
  v106 = *(v4 + 656);
  v109 = *(v4 + 680);
  v121 = *(v4 + 648);
  v8 = *(v4 + 640);
  v9 = *(v4 + 632);
  v89 = v9;
  v10 = *(v4 + 608);
  v11 = *(v4 + 600);
  *(v4 + 568) = *(v11 + qword_1EDFFCF38);
  type metadata accessor for FeedDatabaseGroup(255, v8, v9, a4);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7262CDC();
  v12 = *(v4 + 464);
  *(v4 + 480) = *(v4 + 448);
  *(v4 + 496) = v12;
  sub_1D7263AFC();
  swift_getWitnessTable();
  v112 = sub_1D726281C();
  v88 = *(v6 + 16);
  v13 = v88(v5, v114, v7);
  v14 = sub_1D5D0D80C(v13);
  v16 = v15;
  (*(v115 + 16))(v90, v11 + *(*v11 + 256), v8);
  sub_1D6F76D68(v8);
  FeedCursorGroup.init(createdDate:group:configIdentifier:serviceConfig:)(v91, v5, v14, v16, v90, v8, v89, v118);
  *(v4 + 288) = v7;
  *(v4 + 296) = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 264));
  v18 = v88(boxed_opaque_existential_1, v114, v7);
  v19 = sub_1D5D0D80C(v18);
  v21 = v20;
  v22 = (CACurrentMediaTime() - v10) * 1000.0;
  sub_1D5BEE1B8(0, &qword_1EDF02300, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7273AE0;
  sub_1D5B68374(v4 + 264, v4 + 304);
  v24 = sub_1D725AA4C();
  v26 = v25;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  sub_1D5B68374(v4 + 304, v4 + 144);
  *(v4 + 184) = 0x3FF0000000000000;
  *(v4 + 208) = 1;
  sub_1D5B68374(v4 + 304, v4 + 344);
  v27 = swift_allocObject();
  sub_1D5B63F14((v4 + 344), v27 + 16);
  *(v4 + 16) = v24;
  *(v4 + 24) = v26;
  *(v4 + 32) = v19;
  *(v4 + 40) = v21;
  *(v4 + 88) = MEMORY[0x1E69E7CC0];
  *(v4 + 96) = 0;
  *(v4 + 104) = 1;
  *(v4 + 112) = 0;
  *(v4 + 120) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 1;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 216) = 0;
  *(v4 + 240) = v22;
  *(v4 + 248) = sub_1D617CD44;
  *(v4 + 256) = v27;
  __swift_destroy_boxed_opaque_existential_1((v4 + 304));
  v28 = *(v4 + 224);
  *(v23 + 224) = *(v4 + 208);
  *(v23 + 240) = v28;
  *(v23 + 256) = *(v4 + 240);
  *(v23 + 272) = *(v4 + 256);
  v29 = *(v4 + 160);
  *(v23 + 160) = *(v4 + 144);
  *(v23 + 176) = v29;
  v30 = *(v4 + 192);
  *(v23 + 192) = *(v4 + 176);
  *(v23 + 208) = v30;
  v31 = *(v4 + 96);
  *(v23 + 96) = *(v4 + 80);
  *(v23 + 112) = v31;
  v32 = *(v4 + 128);
  *(v23 + 128) = *(v4 + 112);
  *(v23 + 144) = v32;
  v33 = *(v4 + 32);
  *(v23 + 32) = *(v4 + 16);
  *(v23 + 48) = v33;
  v34 = *(v4 + 64);
  *(v23 + 64) = *(v4 + 48);
  *(v23 + 80) = v34;
  __swift_destroy_boxed_opaque_existential_1((v4 + 264));
  (*(v115 + 56))(v92, 1, 1, v8);
  v124 = 7;
  v35 = *(v94 + 56);
  v35(v93, 1, 1, v95);
  v35(v97, 1, 1, v95);
  sub_1D72644CC();
  swift_allocObject();
  v36 = sub_1D726270C();
  (*(v101 + 16))(v37, v118, v99);
  sub_1D5BFCB60(v36, v99);
  v119 = sub_1D726274C();

  v38 = *(*v11 + 224);
  swift_beginAccess();
  (*(v104 + 16))(v109, v11 + v38, v106);
  v39 = *(v121 - 8);
  if ((*(v39 + 48))(v109, 1) == 1)
  {
    v40 = (v4 + 656);
    v41 = *(v4 + 664);
    v42 = 1;
    v116 = v41;
  }

  else
  {
    v40 = (v4 + 648);
    (*(*(v4 + 824) + 40))(*(v4 + 856), *(v4 + 648));
    v42 = 0;
    v116 = *(v4 + 664);
    v41 = v39;
  }

  v43 = *v40;
  v107 = *(v4 + 736);
  v122 = *(v4 + 728);
  v98 = *(v4 + 720);
  v100 = *(v4 + 752);
  v96 = *(v4 + 712);
  v44 = *(v4 + 688);
  v102 = *(v4 + 656);
  v45 = *(v4 + 648);
  v46 = *(v4 + 640);
  v47 = *(v4 + 632);
  v48 = *(v4 + 624);
  v110 = *(v4 + 616);
  v49 = *(v4 + 600);
  (*(v41 + 8))(*(v4 + 680), v43);
  (*(v39 + 56))(v44, v42, 1, v45);
  v50 = type metadata accessor for FeedContext(0);
  (*(*(v50 - 8) + 56))(v48, 1, 1, v50);
  v51 = (v49 + *(*v49 + 240));
  v52 = v51[1];
  v53 = v51[2];
  v127 = *v51;
  v128 = v52;
  v129 = v53;
  *&v130 = v23;
  *(&v130 + 1) = 1;
  v131 = v22;

  sub_1D5C0C3EC(&v127, &v130, v46, v47, &v125);

  sub_1D5C08648(1uLL);
  v130 = v125;
  v131 = *&v126;
  v127 = 0;
  LOWORD(v128) = 256;
  v54 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v100, 0, &v124, v98, v96, 0, 0, 0, 0, v119, v112, 0, 1, 0, 1, 0, 1, 0, 0, v44, v48, &v130, &v127, 0, 0, 0);

  sub_1D5C086A4(v130, *(&v130 + 1), *&v131);
  v55 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v48, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v116 + 8))(v44, v102);
  v56 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v96, &qword_1EDF45B00, MEMORY[0x1E6969530], v55, sub_1D5B6BFD8);
  sub_1D5B88AA0(v98, &qword_1EDF45B00, v56, v55, sub_1D5B6BFD8);
  v57 = (*(v107 + 8))(v100, v122);
  v120 = v54;
  LOBYTE(v44) = FeedCursor.reachedEnd.getter(v57, v58, v59, v60);
  v117 = *(v110 + 48);
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v61 = *(v4 + 840);
  v62 = *(v4 + 832);
  v63 = *(v4 + 808);
  v111 = *(v4 + 800);
  v113 = *(v4 + 816);
  v64 = *(v4 + 640);
  v123 = *(v4 + 632);
  v108 = *(v4 + 856);
  if (v44)
  {
    v65 = *(v4 + 584);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1D7273AE0;
    v67 = sub_1D72644BC();
    v69 = v68;
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = sub_1D5B7E2C0();
    *(v66 + 32) = v67;
    *(v66 + 40) = v69;
    v70 = sub_1D7262EDC();
    sub_1D725C30C("Service database groups emitted another group and we reached the end of the feed, group=%{public}@", 98, 2, &dword_1D5B42000, v117, v70, v66);

    (*(v63 + 8))(v113, v111);
    type metadata accessor for FeedCursor(255, v64, v123, v71);
    v72 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v61 + 32))(v65, v108, v62);
    *(v65 + v72) = v120;
    type metadata accessor for FeedServiceFetchResult.Internal(0, v64, v123, v73);
  }

  else
  {
    v103 = *(v4 + 640);
    v74 = *(v4 + 600);
    v105 = *(v4 + 584);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1D7270C10;
    v76 = sub_1D72644BC();
    v78 = v77;
    *(v75 + 56) = MEMORY[0x1E69E6158];
    v79 = sub_1D5B7E2C0();
    *(v75 + 64) = v79;
    *(v75 + 32) = v76;
    *(v75 + 40) = v78;
    *(v4 + 576) = v74;
    type metadata accessor for FeedCursor(0, v103, v123, v80);
    swift_getWitnessTable();
    v81 = sub_1D725B0BC();
    *(v75 + 96) = MEMORY[0x1E69E6158];
    *(v75 + 104) = v79;
    *(v75 + 72) = v81;
    *(v75 + 80) = v82;
    v83 = sub_1D7262EDC();
    sub_1D725C30C("Service database groups emitted another group, group=%{public}@, cursor=%@", 74, 2, &dword_1D5B42000, v117, v83, v75);

    (*(v63 + 8))(v113, v111);
    v84 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v61 + 32))(v105, v108, v62);
    *(v105 + v84) = v120;
    type metadata accessor for FeedServiceFetchResult.Internal(0, v103, v123, v85);
  }

  swift_storeEnumTagMultiPayload();

  v86 = *(v4 + 8);

  return v86();
}

uint64_t sub_1D616861C()
{
  v61 = v0;
  v1 = *(v0 + 872);
  v52 = v1;
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 744);
  v50 = *(v0 + 736);
  v51 = *(v0 + 728);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v46 = v6;
  v44 = *(v0 + 672);
  v47 = *(v0 + 664);
  v48 = *(v0 + 656);
  v42 = *(v0 + 648);
  v8 = *(v0 + 640);
  v40 = *(v0 + 632);
  v45 = *(v0 + 624);
  v49 = *(v0 + 616);
  v9 = *(v0 + 608);
  v39 = *(v0 + 600);
  v10 = *(v0 + 592);

  v11 = v1;
  v12 = CACurrentMediaTime();
  sub_1D614D414(v10, v1, &v59, (v12 - v9) * 1000.0);
  v13 = *(&v59 + 1);
  v43 = v59;
  v14 = v60;
  (*(v2 + 56))(v5, 1, 1, v8);
  v53 = 7;
  v15 = *(v3 + 56);
  v15(v6, 1, 1, v4);
  v15(v7, 1, 1, v4);
  *(v0 + 552) = *(v39 + qword_1EDFFCF38);
  type metadata accessor for FeedDatabaseGroup(255, v8, v40, v16);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7262CDC();
  v17 = *(v0 + 400);
  *(v0 + 416) = *(v0 + 384);
  *(v0 + 432) = v17;
  sub_1D7263AFC();
  swift_getWitnessTable();
  v41 = sub_1D726281C();
  (*(*(v42 - 8) + 56))(v44, 1, 1);
  v18 = type metadata accessor for FeedContext(0);
  (*(*(v18 - 8) + 56))(v45, 1, 1, v18);
  v19 = (v39 + *(*v39 + 240));
  v20 = v19[1];
  v21 = v19[2];
  v56 = *v19;
  v57 = v20;
  v58 = v21;
  *&v59 = v43;
  *(&v59 + 1) = v13;
  v60 = v14;

  sub_1D5C0C3EC(&v56, &v59, v8, v40, &v54);

  sub_1D5C08648(v13);
  v59 = v54;
  v60 = v55;
  v56 = 0;
  LOWORD(v57) = 256;
  v22 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v5, 0, &v53, v46, v7, 0, 0, 0, 0, 0, v41, 0, 1, 0, 1, 0, 1, 0, 0, v44, v45, &v59, &v56, 0, 0, 0);
  *(v0 + 880) = v22;

  sub_1D5C086A4(v59, *(&v59 + 1), v60);
  v23 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v45, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v47 + 8))(v44, v48);
  v24 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v7, &qword_1EDF45B00, MEMORY[0x1E6969530], v23, sub_1D5B6BFD8);
  sub_1D5B88AA0(v46, &qword_1EDF45B00, v24, v23, sub_1D5B6BFD8);
  (*(v50 + 8))(v5, v51);
  v25 = *(v49 + 48);
  v26 = sub_1D7262EBC();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7270C10;
  v28 = FeedDatabaseGroup.identifier.getter(v27);
  v30 = v29;
  v31 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v32 = sub_1D5B7E2C0();
  *(v27 + 64) = v32;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  *(v0 + 536) = 0;
  *(v0 + 544) = 0xE000000000000000;
  *(v0 + 560) = v52;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v33 = *(v0 + 536);
  v34 = *(v0 + 544);
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  *(v27 + 72) = v33;
  *(v27 + 80) = v34;
  sub_1D725C30C("Service database group failed to decode; will advance the cursor and try again, group=%{public}@, error=%{public}@", 114, 2, &dword_1D5B42000, v25, v26, v27);

  v35 = swift_task_alloc();
  *(v0 + 888) = v35;
  *v35 = v0;
  v35[1] = sub_1D6168C80;
  v36 = *(v0 + 608);
  v37 = *(v0 + 584);

  return sub_1D6163FF4(v37, v22, v36);
}

uint64_t sub_1D6168C80()
{
  *(*v1 + 896) = v0;

  if (v0)
  {
    v2 = sub_1D6168EE0;
  }

  else
  {
    v2 = sub_1D6168D94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6168D94()
{
  v1 = *(v0 + 872);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6168EE0()
{
  v1 = *(v0 + 872);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6169034(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  *(v6 + 544) = v5;
  *(v6 + 536) = a5;
  *(v6 + 528) = a3;
  *(v6 + 520) = a1;
  v9 = *a3;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v6 + 552) = swift_task_alloc();
  v11 = *(v9 + 88);
  *(v6 + 560) = v11;
  v12 = *(v9 + 80);
  *(v6 + 568) = v12;
  *(v6 + 576) = swift_getAssociatedTypeWitness();
  v13 = sub_1D726393C();
  *(v6 + 584) = v13;
  *(v6 + 592) = *(v13 - 8);
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v10);
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  v14 = sub_1D726393C();
  *(v6 + 720) = v14;
  *(v6 + 728) = *(v14 - 8);
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  v15 = sub_1D725891C();
  *(v6 + 768) = v15;
  *(v6 + 776) = *(v15 - 8);
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = *(v12 - 8);
  *(v6 + 800) = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *(v6 + 808) = swift_task_alloc();
  v17 = type metadata accessor for FeedCursorGroup(0, v12, v11, v16);
  *(v6 + 816) = v17;
  *(v6 + 824) = *(v17 - 8);
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 864) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v6 + 872) = AssociatedConformanceWitness;
  v21 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  *(v6 + 880) = v21;
  *(v6 + 888) = *(v21 - 8);
  *(v6 + 896) = swift_task_alloc();
  v23 = type metadata accessor for FeedScoredResult(0, v12, v11, v22);
  *(v6 + 904) = v23;
  *(v6 + 912) = *(v23 - 8);
  *(v6 + 920) = swift_task_alloc();
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  *(v6 + 944) = swift_task_alloc();
  *(v6 + 952) = *(AssociatedTypeWitness - 8);
  *(v6 + 960) = swift_task_alloc();
  *(v6 + 968) = swift_task_alloc();
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = swift_task_alloc();
  v25 = type metadata accessor for FeedChosenEmitterResult(0, v12, v11, v24);
  *(v6 + 992) = v25;
  *(v6 + 1000) = *(v25 - 8);
  v26 = swift_task_alloc();
  *(v6 + 1008) = v26;
  v27 = swift_task_alloc();
  *(v6 + 1016) = v27;
  *v27 = v6;
  v27[1] = sub_1D61697D8;

  return sub_1D6174AD8(v26, a2, a3, a4, a5);
}

uint64_t sub_1D61697D8()
{
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v2 = sub_1D616E224;
  }

  else
  {
    v2 = sub_1D61698EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D61698EC()
{
  v584 = v0;
  v1 = *(v0 + 944);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v538 = (*(v0 + 912) + 16);
  v555 = *v538;
  (*v538)(v1, *(v0 + 1008), v2);
  v8 = *(v2 + 44);
  (*(v4 + 16))(v3, v1 + v8, v5);
  v10 = type metadata accessor for FeedGroupEmitTaskResult(0, v6, v7, v9);
  v564 = *(*(v10 - 8) + 8);
  v564(v1 + v8, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v514 = v10;
        v13 = *(v0 + 896);
        v15 = *v13;
        v14 = v13[1];
LABEL_48:
        v355 = *(v0 + 1008);
        v512 = *(v0 + 928);
        v356 = *(v0 + 904);
        v442 = *(v0 + 792);
        v357 = *(v0 + 776);
        v483 = *(v0 + 768);
        v458 = *(v0 + 736);
        v470 = *(v0 + 664);
        v498 = *(v0 + 656);
        v449 = *(v0 + 568);
        v358 = *(v0 + 528);
        v359 = *(*(v0 + 544) + 48);
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v360 = swift_allocObject();
        *(v360 + 16) = xmmword_1D7273AE0;
        *(v360 + 56) = MEMORY[0x1E69E6158];
        *(v360 + 64) = sub_1D5B7E2C0();
        *(v360 + 32) = v15;
        *(v360 + 40) = v14;
        v361 = sub_1D7262EDC();
        sub_1D725C30C("Service unable to create group from slotted emitters, increment to next slot, reason=%{public}@", 95, 2, &dword_1D5B42000, v359, v361, v360);

        *(v0 + 488) = *(v358 + qword_1EDFFCF30);
        v555(v512, v355, v356);
        v362 = v512 + *(v2 + 44);

        v564(v362, v514);
        v363 = sub_1D5C0BA9C();
        v365 = v364;

        sub_1D607E0F0(v363, v365, (v0 + 120));

        sub_1D5B88AA0(v0 + 120, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
        (*(v442 + 56))(v458, 1, 1, v449);
        LOBYTE(v575) = 7;
        v366 = *(v357 + 56);
        v366(v470, 1, 1, v483);
        v366(v498, 1, 1, v483);
        v367 = *(v358 + qword_1EDFFCF08);
        v555(v512, v355, v356);
        v368 = v512 + *(v2 + 44);
        v369 = *(v368 + *(v514 + 36));

        v564(v368, v514);
        v574 = sub_1D61753F0(v367, v369);

        v370 = *(v358 + qword_1EDFFCEF8);
        v563 = (v370 + 1);
        if (!__OFADD__(v370, 1))
        {
          v371 = *(v0 + 1008);
          v372 = *(v0 + 992);
          v545 = *(v0 + 728);
          v554 = *(v0 + 720);
          v499 = *(v0 + 664);
          v513 = *(v0 + 736);
          v373 = *(v0 + 600);
          v525 = *(v0 + 592);
          v537 = *(v0 + 584);
          v374 = *(v0 + 568);
          v375 = *(v0 + 560);
          v376 = *(v0 + 552);
          v377 = *(v0 + 528);
          v471 = *(v0 + 488);
          v484 = *(v0 + 656);
          v459 = *(v371 + *(v372 + 44));
          (*(*(*(v0 + 576) - 8) + 56))(v373, 1, 1);
          v378 = type metadata accessor for FeedContext(0);
          (*(*(v378 - 8) + 56))(v376, 1, 1, v378);
          v379 = (v377 + *(*v377 + 240));
          v380 = v379[1];
          v381 = v379[2];
          v579 = *v379;
          v580 = v380;
          v581 = v381;
          v382 = (v371 + *(v372 + 36));
          v383 = v382[1];
          v384 = v382[2];
          *&v582 = *v382;
          *(&v582 + 1) = v383;
          v583 = v384;

          sub_1D5C07390(v383);
          sub_1D5C0C3EC(&v579, &v582, v374, v375, &v577);
          v385 = *(&v582 + 1);

          sub_1D5C08648(v385);

          v582 = v577;
          v583 = v578;
          v579 = 0;
          LOWORD(v580) = 256;
          v68 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v513, 0, &v575, v499, v484, 0, v574, 0, 0, 0, 0, v563, 0, 0, 1, 0, 1, v471, v459, v373, v376, &v582, &v579, 0, 0, 0);
          *(v0 + 1032) = v68;

          sub_1D5C086A4(v582, *(&v582 + 1), v583);
          v386 = MEMORY[0x1E69E6720];
          sub_1D5B88AA0(v376, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
          (*(v525 + 8))(v373, v537);
          v387 = MEMORY[0x1E6969530];
          sub_1D5B88AA0(v484, &qword_1EDF45B00, MEMORY[0x1E6969530], v386, sub_1D5B6BFD8);
          sub_1D5B88AA0(v499, &qword_1EDF45B00, v387, v386, sub_1D5B6BFD8);
          (*(v545 + 8))(v513, v554);
          v71 = swift_task_alloc();
          *(v0 + 1040) = v71;
          *v71 = v0;
          v72 = sub_1D616D3CC;
          goto LABEL_50;
        }

        __break(1u);
        goto LABEL_54;
      }

      v80 = *(v0 + 896);
      v81 = *(v0 + 792);
      v82 = *(v0 + 776);
      v83 = *(v0 + 768);
      v84 = *(v0 + 736);
      v547 = *(v0 + 664);
      v557 = *(v0 + 656);
      v85 = *(v0 + 568);
      v566 = *(v0 + 528);
      v86 = *v80;
      v87 = v80[1];
      v88 = *(*(v0 + 544) + 48);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1D7273AE0;
      *(v89 + 56) = MEMORY[0x1E69E6158];
      *(v89 + 64) = sub_1D5B7E2C0();
      *(v89 + 32) = v86;
      *(v89 + 40) = v87;
      v90 = sub_1D7262EDC();
      sub_1D725C30C("Service skipped group from slotted emitters, increment to next slot, reason=%{public}@", 86, 2, &dword_1D5B42000, v88, v90, v89);

      (*(v81 + 56))(v84, 1, 1, v85);
      LOBYTE(v575) = 7;
      v91 = *(v82 + 56);
      v91(v547, 1, 1, v83);
      v91(v557, 1, 1, v83);
      v92 = *(v566 + qword_1EDFFCEF8);
      v567 = (v92 + 1);
      if (__OFADD__(v92, 1))
      {
LABEL_55:
        __break(1u);
        return;
      }

      v93 = *(v0 + 1008);
      v94 = *(v0 + 992);
      v548 = *(v0 + 728);
      v558 = *(v0 + 720);
      v503 = *(v0 + 664);
      v517 = *(v0 + 736);
      v488 = *(v0 + 656);
      v95 = *(v0 + 600);
      v529 = *(v0 + 592);
      v540 = *(v0 + 584);
      v96 = *(v0 + 568);
      v97 = *(v0 + 560);
      v98 = *(v0 + 552);
      v99 = *(v0 + 528);
      v474 = *(v99 + qword_1EDFFCF08);
      (*(*(*(v0 + 576) - 8) + 56))(v95, 1, 1);
      v100 = type metadata accessor for FeedContext(0);
      (*(*(v100 - 8) + 56))(v98, 1, 1, v100);
      v101 = (v99 + *(*v99 + 240));
      v102 = v101[1];
      v103 = v101[2];
      v579 = *v101;
      v580 = v102;
      v581 = v103;
      v104 = (v93 + *(v94 + 36));
      v105 = v104[1];
      v106 = v104[2];
      *&v582 = *v104;
      *(&v582 + 1) = v105;
      v583 = v106;

      sub_1D5C07390(v105);
      sub_1D5C0C3EC(&v579, &v582, v96, v97, &v577);
      v107 = *(&v582 + 1);

      sub_1D5C08648(v107);

      v582 = v577;
      v583 = v578;
      v579 = 0;
      LOWORD(v580) = 256;
      v68 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v517, 0, &v575, v503, v488, 0, v474, 0, 0, 0, 0, v567, 0, 0, 1, 0, 1, 0, 0, v95, v98, &v582, &v579, 0, 0, 0);
      *(v0 + 1056) = v68;
      sub_1D5C086A4(v582, *(&v582 + 1), v583);
      v108 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v98, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      (*(v529 + 8))(v95, v540);
      v109 = MEMORY[0x1E6969530];
      sub_1D5B88AA0(v488, &qword_1EDF45B00, MEMORY[0x1E6969530], v108, sub_1D5B6BFD8);
      sub_1D5B88AA0(v503, &qword_1EDF45B00, v109, v108, sub_1D5B6BFD8);
      (*(v548 + 8))(v517, v558);
      v71 = swift_task_alloc();
      *(v0 + 1064) = v71;
      *v71 = v0;
      v72 = sub_1D616D768;
LABEL_50:
      v71[1] = v72;
      v388 = *(v0 + 536);
      v389 = *(v0 + 520);

      sub_1D6163FF4(v389, v68, v388);
      return;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v460 = *(v0 + 928);
      v472 = *(v0 + 904);
      v486 = *(v0 + 1008);
      v33 = *(v0 + 896);
      v34 = *(v0 + 792);
      v35 = *(v0 + 776);
      v515 = v10;
      v36 = *(v0 + 768);
      v444 = *(v0 + 664);
      v450 = *(v0 + 656);
      v37 = *(v0 + 568);
      v428 = *(v0 + 736);
      v435 = v37;
      v501 = *(v0 + 560);
      v527 = v2;
      v38 = *(v0 + 528);
      v39 = *v33;
      v40 = v33[1];
      v41 = *(*(v0 + 544) + 48);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1D7273AE0;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1D5B7E2C0();
      *(v42 + 32) = v39;
      *(v42 + 40) = v40;
      v43 = sub_1D7262EDC();
      sub_1D725C30C("Service will retry skipped group from slotted emitters, increment to next slot, reason=%{public}@", 97, 2, &dword_1D5B42000, v41, v43, v42);

      (*(v34 + 56))(v428, 1, 1, v37);
      LOBYTE(v575) = 7;
      v44 = *(v35 + 56);
      v44(v444, 1, 1, v36);
      v44(v450, 1, 1, v36);
      v451 = *(v38 + qword_1EDFFCF08);
      sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      swift_allocObject();
      v45 = sub_1D726270C();
      v47 = v46;
      v555(v460, v486, v472);
      v48 = v460 + *(v527 + 44);
      v49 = *(v48 + *(v515 + 36));

      v564(v48, v515);
      *v47 = v49;
      v51 = type metadata accessor for FeedGroupEmitter(0, v435, v501, v50);
      sub_1D5BFCB60(v45, v51);
      v565 = sub_1D726274C();

      v52 = *(v38 + qword_1EDFFCEF8);
      v556 = (v52 + 1);
      if (__OFADD__(v52, 1))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v53 = *(v0 + 1008);
      v54 = *(v0 + 992);
      v539 = *(v0 + 728);
      v546 = *(v0 + 720);
      v487 = *(v0 + 664);
      v502 = *(v0 + 736);
      v473 = *(v0 + 656);
      v55 = *(v0 + 600);
      v516 = *(v0 + 592);
      v528 = *(v0 + 584);
      v56 = *(v0 + 568);
      v57 = *(v0 + 560);
      v58 = *(v0 + 552);
      v59 = *(v0 + 528);
      (*(*(*(v0 + 576) - 8) + 56))(v55, 1, 1);
      v60 = type metadata accessor for FeedContext(0);
      (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
      v61 = (v59 + *(*v59 + 240));
      v62 = v61[1];
      v63 = v61[2];
      v579 = *v61;
      v580 = v62;
      v581 = v63;
      v64 = (v53 + *(v54 + 36));
      v65 = v64[1];
      v66 = v64[2];
      *&v582 = *v64;
      *(&v582 + 1) = v65;
      v583 = v66;

      sub_1D5C07390(v65);
      sub_1D5C0C3EC(&v579, &v582, v56, v57, &v577);
      v67 = *(&v582 + 1);

      sub_1D5C08648(v67);

      v582 = v577;
      v583 = v578;
      v579 = 0;
      LOWORD(v580) = 256;
      v68 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v502, 0, &v575, v487, v473, 0, v451, v565, 0, 0, 0, v556, 0, 0, 1, 0, 1, 0, 0, v55, v58, &v582, &v579, 0, 0, 0);
      *(v0 + 1080) = v68;

      sub_1D5C086A4(v582, *(&v582 + 1), v583);
      v69 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v58, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      (*(v516 + 8))(v55, v528);
      v70 = MEMORY[0x1E6969530];
      sub_1D5B88AA0(v473, &qword_1EDF45B00, MEMORY[0x1E6969530], v69, sub_1D5B6BFD8);
      sub_1D5B88AA0(v487, &qword_1EDF45B00, v70, v69, sub_1D5B6BFD8);
      (*(v539 + 8))(v502, v546);
      v71 = swift_task_alloc();
      *(v0 + 1088) = v71;
      *v71 = v0;
      v72 = sub_1D616DB04;
      goto LABEL_50;
    }

    v110 = *(v0 + 896);
    v111 = *(v0 + 864);
    type metadata accessor for FeedGroupEmitterEmbeddedOutput(255, v111, *(v0 + 872), v12);
    sub_1D5B49474(255, qword_1EDF37D80, &protocol descriptor for FeedCursorEmbeddable);
    v112 = *(swift_getTupleTypeMetadata2() + 48);
    v113 = swift_getEnumCaseMultiPayload();
    if (v113)
    {
      v514 = v10;
      if (v113 != 1)
      {
        v15 = *v110;
        v14 = v110[1];
        __swift_destroy_boxed_opaque_existential_1((v110 + v112));
        goto LABEL_48;
      }

      v79 = v2;
      (*(*(v0 + 952) + 32))(*(v0 + 976), v110, v111);
      __swift_destroy_boxed_opaque_existential_1((v110 + v112));
      goto LABEL_19;
    }

    v269 = *(v0 + 984);
    v270 = *(v0 + 952);
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v271 = (v110 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v270 + 32))(v269, v110, v111);
    v272 = v271[1];
    *(v0 + 88) = *v271;
    *(v0 + 104) = v272;
    __swift_destroy_boxed_opaque_existential_1((v110 + v112));
LABEL_34:
    v273 = *(v0 + 1008);
    v274 = *(v0 + 936);
    v275 = *(v0 + 904);
    v276 = *(*(v0 + 528) + qword_1EDFFCF30);
    v575 = v276;
    v555(v274, v273, v275);
    v534 = v2;
    v277 = v274 + *(v2 + 44);

    v522 = v10;
    v564(v277, v10);
    v278 = sub_1D5C0BA9C();
    v280 = v279;

    v281 = *(v0 + 104);
    *(v0 + 312) = *(v0 + 88);
    *(v0 + 328) = v281;
    if (*(v0 + 336))
    {
      sub_1D5B7C390((v0 + 312), (v0 + 376));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v582 = v276;
      sub_1D5BAFB24((v0 + 376), v278, v280, isUniquelyReferenced_nonNull_native);

      v575 = v276;
    }

    else
    {
      v283 = MEMORY[0x1E69E7CA0];
      v284 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v0 + 312, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      sub_1D607E0F0(v278, v280, (v0 + 344));

      sub_1D5B88AA0(v0 + 344, &qword_1EDF43B70, v283 + 8, v284, sub_1D5BEE1B8);
    }

    v285 = *(v0 + 1008);
    v509 = *(v0 + 992);
    v286 = *(v0 + 928);
    v287 = *(v0 + 904);
    v288 = *(v0 + 824);
    v400 = *(v0 + 808);
    v403 = *(v0 + 968);
    v406 = *(v0 + 800);
    v289 = *(v0 + 792);
    v290 = *(v0 + 784);
    v291 = *(v0 + 776);
    v426 = *(v0 + 768);
    v413 = *(v0 + 848);
    v417 = *(v0 + 760);
    v421 = *(v0 + 712);
    v433 = *(v0 + 704);
    v440 = *(v0 + 816);
    v467 = *(v0 + 640);
    v447 = *(v0 + 592);
    v455 = *(v0 + 584);
    v495 = *(v0 + 576);
    v292 = *(v0 + 568);
    v409 = *(v0 + 560);
    v293 = *(v0 + 528);
    (*(*(v0 + 952) + 16))();
    v555(v286, v285, v287);
    v294 = v286 + *(v534 + 44);

    v564(v294, v522);
    sub_1D5C0354C();

    (*(v289 + 16))(v406, v293 + *(*v293 + 256), v292);
    sub_1D725890C();
    FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v290, v403, v400, v406, v292, v409, v413);
    (*(v289 + 56))(v417, 1, 1, v292);
    v576 = 7;
    v295 = *(v291 + 56);
    v295(v421, 1, 1, v426);
    v295(v433, 1, 1, v426);
    v296 = *(v293 + qword_1EDFFCF08);
    sub_1D72644CC();
    swift_allocObject();
    v297 = sub_1D726270C();
    (*(v288 + 16))(v298, v413, v440);
    sub_1D5BFCB60(v297, v440);
    v299 = sub_1D726274C();

    v300 = *(v285 + *(v509 + 44));
    v301 = *(*v293 + 224);
    swift_beginAccess();
    (*(v447 + 16))(v467, v293 + v301, v455);
    v302 = *(v495 - 8);
    v572 = v296;
    v552 = v299;
    v481 = v300;
    if ((*(v302 + 48))(v467, 1) == 1)
    {
      v303 = (v0 + 584);
      v304 = *(v0 + 592);
      v305 = 1;
      v535 = v304;
    }

    else
    {
      v303 = (v0 + 576);
      (*(*(v0 + 856) + 40))(*(v0 + 984), *(v0 + 576));
      v305 = 0;
      v535 = *(v0 + 592);
      v304 = v302;
    }

    v306 = *v303;
    v307 = *(v0 + 1008);
    v308 = *(v0 + 992);
    v456 = *(v0 + 760);
    v496 = *(v0 + 728);
    v523 = *(v0 + 720);
    v441 = *(v0 + 704);
    v448 = *(v0 + 712);
    v309 = *(v0 + 648);
    v434 = v309;
    v468 = *(v0 + 584);
    v310 = *(v0 + 576);
    v311 = *(v0 + 568);
    v427 = *(v0 + 560);
    v312 = *(v0 + 552);
    v510 = *(v0 + 544);
    v313 = *(v0 + 528);
    (*(v304 + 8))(*(v0 + 640), v306);
    (*(v302 + 56))(v309, v305, 1, v310);
    v314 = type metadata accessor for FeedContext(0);
    (*(*(v314 - 8) + 56))(v312, 1, 1, v314);
    v315 = (v313 + *(*v313 + 240));
    v316 = v315[1];
    v317 = v315[2];
    v579 = *v315;
    v580 = v316;
    v581 = v317;
    v318 = (v307 + *(v308 + 36));
    v319 = v318[1];
    v320 = v318[2];
    *&v582 = *v318;
    *(&v582 + 1) = v319;
    v583 = v320;

    sub_1D5C07390(v319);
    sub_1D5C0C3EC(&v579, &v582, v311, v427, &v577);
    v321 = *(&v582 + 1);

    sub_1D5C08648(v321);

    v582 = v577;
    v583 = v578;
    v579 = 0;
    LOWORD(v580) = 256;
    v322 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v456, 0, &v576, v448, v441, 0, v572, 0, 0, v552, 0, 0, 1, 0, 1, 0, 1, v575, v481, v434, v312, &v582, &v579, 0, 0, 0);

    sub_1D5C086A4(v582, *(&v582 + 1), v583);
    v323 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v312, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v535 + 8))(v434, v468);
    v324 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v441, &qword_1EDF45B00, MEMORY[0x1E6969530], v323, sub_1D5B6BFD8);
    sub_1D5B88AA0(v448, &qword_1EDF45B00, v324, v323, sub_1D5B6BFD8);
    v325 = (*(v496 + 8))(v456, v523);
    v544 = v322;
    LOBYTE(v312) = FeedCursor.reachedEnd.getter(v325, v326, v327, v328);
    v511 = *(v510 + 48);
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v329 = *(v0 + 1000);
    v524 = *(v0 + 992);
    v536 = *(v0 + 1008);
    v330 = *(v0 + 952);
    v331 = *(v0 + 864);
    v332 = *(v0 + 824);
    v482 = *(v0 + 816);
    v497 = *(v0 + 848);
    v553 = *(v0 + 568);
    v573 = *(v0 + 560);
    v469 = *(v0 + 984);
    if (v312)
    {
      v333 = *(v0 + 520);
      v334 = swift_allocObject();
      *(v334 + 16) = xmmword_1D7273AE0;
      v335 = sub_1D72644BC();
      v337 = v336;
      *(v334 + 56) = MEMORY[0x1E69E6158];
      *(v334 + 64) = sub_1D5B7E2C0();
      *(v334 + 32) = v335;
      *(v334 + 40) = v337;
      v338 = sub_1D7262EDC();
      sub_1D725C30C("Service slotted emitters emitted the another group and we reached the end of the feed, group=%{public}@", 103, 2, &dword_1D5B42000, v511, v338, v334);

      (*(v332 + 8))(v497, v482);
      (*(v329 + 8))(v536, v524);
      type metadata accessor for FeedCursor(255, v553, v573, v339);
      v340 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v330 + 32))(v333, v469, v331);
      *(v333 + v340) = v544;
    }

    else
    {
      v342 = *(v0 + 528);
      v457 = *(v0 + 520);
      v343 = swift_allocObject();
      *(v343 + 16) = xmmword_1D7270C10;
      v562 = v331;
      v344 = v330;
      v345 = sub_1D72644BC();
      v347 = v346;
      *(v343 + 56) = MEMORY[0x1E69E6158];
      v348 = sub_1D5B7E2C0();
      *(v343 + 64) = v348;
      *(v343 + 32) = v345;
      *(v343 + 40) = v347;
      *(v0 + 512) = v342;
      type metadata accessor for FeedCursor(0, v553, v573, v349);
      swift_getWitnessTable();
      v350 = sub_1D725B0BC();
      *(v343 + 96) = MEMORY[0x1E69E6158];
      *(v343 + 104) = v348;
      *(v343 + 72) = v350;
      *(v343 + 80) = v351;
      v352 = sub_1D7262EDC();
      sub_1D725C30C("Service slotted emitters emitted another group, group=%{public}@, cursor=%@", 75, 2, &dword_1D5B42000, v511, v352, v343);

      (*(v332 + 8))(v497, v482);
      (*(v329 + 8))(v536, v524);
      v353 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v344 + 32))(v457, v469, v562);
      *(v457 + v353) = v544;
    }

    type metadata accessor for FeedServiceFetchResult.Internal(0, v553, v573, v341);
    goto LABEL_44;
  }

  if (!EnumCaseMultiPayload)
  {
    v73 = *(v0 + 984);
    v74 = *(v0 + 952);
    v75 = *(v0 + 896);
    v76 = *(v0 + 864);
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v77 = (v75 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v74 + 32))(v73, v75, v76);
    v78 = v77[1];
    *(v0 + 88) = *v77;
    *(v0 + 104) = v78;
    goto LABEL_34;
  }

  v514 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v485 = *(v0 + 1008);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = *(v0 + 920);
    v19 = v10;
    v20 = *(v0 + 904);
    v21 = *(v0 + 896);
    v526 = v2;
    v22 = *(v0 + 864);
    v23 = *(v0 + 528);
    v500 = MEMORY[0x1E69E6720];
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v24 = (v21 + *(swift_getTupleTypeMetadata2() + 48));
    v443 = *(v17 + 32);
    v443(v16, v21, v22);
    v25 = v24[1];
    *(v0 + 184) = *v24;
    *(v0 + 200) = v25;
    v26 = *(v23 + qword_1EDFFCF30);
    v27 = MEMORY[0x1E69E7CA0];
    v575 = v26;
    v555(v18, v485, v20);
    v28 = v18 + *(v526 + 44);

    v564(v28, v19);
    v29 = sub_1D5C0BA9C();
    v31 = v30;

    sub_1D617D174(v0 + 184, v0 + 216, &qword_1EDF43B70, v27 + 8, v500, sub_1D5BEE1B8);
    if (*(v0 + 240))
    {
      sub_1D5B7C390((v0 + 216), (v0 + 280));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v582 = v26;
      sub_1D5BAFB24((v0 + 280), v29, v31, v32);

      v575 = v26;
    }

    else
    {
      v191 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v0 + 216, &qword_1EDF43B70, v27 + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      sub_1D607E0F0(v29, v31, (v0 + 248));

      sub_1D5B88AA0(v0 + 248, &qword_1EDF43B70, v27 + 8, v191, sub_1D5BEE1B8);
    }

    v192 = *(v0 + 1008);
    v465 = v192;
    v431 = *(v0 + 992);
    v393 = *(v0 + 968);
    v193 = *(v0 + 928);
    v194 = *(v0 + 904);
    v397 = v194;
    v506 = *(v0 + 840);
    v405 = *(v0 + 816);
    v408 = *(v0 + 824);
    v391 = *(v0 + 808);
    v195 = *(v0 + 800);
    v196 = *(v0 + 792);
    v197 = *(v0 + 784);
    v198 = *(v0 + 776);
    v395 = *(v0 + 752);
    v399 = *(v0 + 696);
    v402 = *(v0 + 768);
    v438 = *(v0 + 688);
    v411 = *(v0 + 592);
    v415 = *(v0 + 584);
    v419 = *(v0 + 624);
    v424 = *(v0 + 576);
    v478 = *(v0 + 568);
    v492 = *(v0 + 560);
    v199 = *(v0 + 528);
    (*(*(v0 + 952) + 16))();
    v555(v193, v192, v194);
    v200 = v193 + *(v526 + 44);

    v564(v200, v514);
    sub_1D5C0354C();

    (*(v196 + 16))(v195, v199 + *(*v199 + 256), v478);
    sub_1D725890C();
    FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v197, v393, v391, v195, v478, v492, v506);
    (*(v196 + 56))(v395, 1, 1, v478);
    v576 = 7;
    v201 = *(v198 + 56);
    v201(v399, 1, 1, v402);
    v201(v438, 1, 1, v402);
    v202 = *(v199 + qword_1EDFFCF08);
    v555(v193, v465, v397);
    v203 = v193 + *(v526 + 44);
    v204 = *(v203 + *(v514 + 36));

    v564(v203, v514);
    v439 = sub_1D61753F0(v202, v204);

    sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    swift_allocObject();
    v205 = sub_1D726270C();
    v207 = v206;
    v555(v193, v465, v397);
    v208 = v193 + *(v526 + 44);
    v209 = *(v208 + *(v514 + 36));

    v564(v208, v514);
    *v207 = v209;
    v211 = type metadata accessor for FeedGroupEmitter(0, v478, v492, v210);
    sub_1D5BFCB60(v205, v211);
    v560 = sub_1D726274C();

    sub_1D72644CC();
    swift_allocObject();
    v212 = sub_1D726270C();
    (*(v408 + 16))(v213, v506, v405);
    sub_1D5BFCB60(v212, v405);
    v542 = sub_1D726274C();

    v466 = *(v465 + *(v431 + 44));
    v214 = *(*v199 + 224);
    swift_beginAccess();
    (*(v411 + 16))(v419, v199 + v214, v415);
    v215 = *(v424 - 8);
    if ((*(v215 + 48))(v419, 1) == 1)
    {
      v216 = (v0 + 584);
      v217 = *(v0 + 592);
      v218 = 1;
      v520 = v217;
    }

    else
    {
      v216 = (v0 + 576);
      (*(*(v0 + 856) + 40))(*(v0 + 960), *(v0 + 576));
      v218 = 0;
      v520 = *(v0 + 592);
      v217 = v215;
    }

    v219 = *(v0 + 1008);
    v220 = *(v0 + 992);
    v570 = *(v0 + 752);
    v479 = *(v0 + 728);
    v507 = *(v0 + 720);
    v420 = *(v0 + 688);
    v425 = *(v0 + 696);
    v221 = *(v0 + 632);
    v432 = *(v0 + 584);
    v222 = *(v0 + 576);
    v412 = *(v0 + 560);
    v416 = *(v0 + 568);
    v223 = *(v0 + 552);
    v493 = *(v0 + 544);
    v224 = *(v0 + 528);
    (*(v217 + 8))(*(v0 + 624), *v216);
    (*(v215 + 56))(v221, v218, 1, v222);
    v225 = type metadata accessor for FeedContext(0);
    (*(*(v225 - 8) + 56))(v223, 1, 1, v225);
    v226 = (v224 + *(*v224 + 240));
    v227 = v226[1];
    v228 = v226[2];
    v579 = *v226;
    v580 = v227;
    v581 = v228;
    v229 = (v219 + *(v220 + 36));
    v230 = v229[1];
    v231 = v229[2];
    *&v582 = *v229;
    *(&v582 + 1) = v230;
    v583 = v231;

    sub_1D5C07390(v230);
    sub_1D5C0C3EC(&v579, &v582, v416, v412, &v577);
    v232 = *(&v582 + 1);

    sub_1D5C08648(v232);

    v582 = v577;
    v583 = v578;
    v579 = 0;
    LOWORD(v580) = 256;
    v233 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v570, 0, &v576, v425, v420, 0, v439, v560, 0, v542, 0, 0, 1, 0, 1, 0, 1, v575, v466, v221, v223, &v582, &v579, 0, 0, 0);

    sub_1D5C086A4(v582, *(&v582 + 1), v583);
    v234 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v223, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v520 + 8))(v221, v432);
    v235 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v420, &qword_1EDF45B00, MEMORY[0x1E6969530], v234, sub_1D5B6BFD8);
    sub_1D5B88AA0(v425, &qword_1EDF45B00, v235, v234, sub_1D5B6BFD8);
    v236 = (*(v479 + 8))(v570, v507);
    v561 = v233;
    LOBYTE(v232) = FeedCursor.reachedEnd.getter(v236, v237, v238, v239);
    v521 = *(v493 + 48);
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v240 = *(v0 + 1000);
    v533 = *(v0 + 992);
    v543 = *(v0 + 1008);
    v241 = *(v0 + 960);
    v242 = *(v0 + 864);
    v243 = *(v0 + 824);
    v494 = *(v0 + 816);
    v508 = *(v0 + 840);
    v244 = *(v0 + 568);
    v571 = *(v0 + 560);
    if (v232)
    {
      v245 = *(v0 + 520);
      v246 = *(v0 + 960);
      v247 = swift_allocObject();
      *(v247 + 16) = xmmword_1D7273AE0;
      v248 = sub_1D72644BC();
      v250 = v249;
      *(v247 + 56) = MEMORY[0x1E69E6158];
      *(v247 + 64) = sub_1D5B7E2C0();
      *(v247 + 32) = v248;
      *(v247 + 40) = v250;
      v251 = sub_1D7262EDC();
      sub_1D725C30C("Service slotted emitters emitted a pool group and we reached the end of the feed, group=%{public}@", 98, 2, &dword_1D5B42000, v521, v251, v247);

      (*(v243 + 8))(v508, v494);
      sub_1D5B88AA0(v0 + 184, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      (*(v240 + 8))(v543, v533);
      type metadata accessor for FeedCursor(255, v244, v571, v252);
      v253 = *(swift_getTupleTypeMetadata2() + 48);
      v443(v245, v246, v242);
      *(v245 + v253) = v561;
      type metadata accessor for FeedServiceFetchResult.Internal(0, v244, v571, v254);
      goto LABEL_44;
    }

    v255 = *(v0 + 528);
    v480 = *(v0 + 520);
    v256 = swift_allocObject();
    *(v256 + 16) = xmmword_1D7270C10;
    v257 = sub_1D72644BC();
    v551 = v241;
    v259 = v258;
    *(v256 + 56) = MEMORY[0x1E69E6158];
    v260 = sub_1D5B7E2C0();
    v261 = v244;
    v262 = v260;
    *(v256 + 64) = v260;
    *(v256 + 32) = v257;
    *(v256 + 40) = v259;
    *(v0 + 504) = v255;
    v263 = v261;
    v183 = v571;
    type metadata accessor for FeedCursor(0, v261, v571, v264);
    swift_getWitnessTable();
    v265 = sub_1D725B0BC();
    *(v256 + 96) = MEMORY[0x1E69E6158];
    *(v256 + 104) = v262;
    *(v256 + 72) = v265;
    *(v256 + 80) = v266;
    v267 = sub_1D7262EDC();
    sub_1D725C30C("Service slotted emitters emitted another pool group, group=%{public}@, cursor=%@", 80, 2, &dword_1D5B42000, v521, v267, v256);

    (*(v243 + 8))(v508, v494);
    sub_1D5B88AA0(v0 + 184, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
    (*(v240 + 8))(v543, v533);
    v268 = *(swift_getTupleTypeMetadata2() + 48);
    v443(v480, v551, v242);
    *(v480 + v268) = v561;
    v190 = v263;
LABEL_32:
    type metadata accessor for FeedServiceFetchResult.Internal(0, v190, v183, v189);
    goto LABEL_44;
  }

  v79 = v2;
  (*(*(v0 + 952) + 32))(*(v0 + 976), *(v0 + 896), *(v0 + 864));
LABEL_19:
  v114 = *(v0 + 1008);
  v394 = v114;
  v475 = *(v0 + 992);
  v392 = *(v0 + 968);
  v115 = *(v0 + 928);
  v116 = *(v0 + 904);
  v530 = *(v0 + 832);
  v422 = *(v0 + 816);
  v429 = *(v0 + 824);
  v390 = *(v0 + 808);
  v396 = *(v0 + 800);
  v117 = *(v0 + 792);
  v118 = *(v0 + 784);
  v410 = *(v0 + 776);
  v414 = *(v0 + 768);
  v401 = v117;
  v404 = *(v0 + 744);
  v407 = *(v0 + 680);
  v418 = *(v0 + 672);
  v436 = *(v0 + 592);
  v445 = *(v0 + 584);
  v452 = *(v0 + 608);
  v461 = *(v0 + 576);
  v489 = *(v0 + 568);
  v398 = *(v0 + 560);
  v119 = *(v0 + 528);
  (*(*(v0 + 952) + 16))();
  v555(v115, v114, v116);
  v120 = v115 + *(v79 + 44);

  v564(v120, v514);
  sub_1D5C0354C();

  (*(v117 + 16))(v396, v119 + *(*v119 + 256), v489);
  sub_1D725890C();
  FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v118, v392, v390, v396, v489, v398, v530);
  v575 = *(v119 + qword_1EDFFCF30);
  v555(v115, v114, v116);
  v121 = v79;
  v122 = v115 + *(v79 + 44);

  v564(v122, v514);
  v123 = sub_1D5C0BA9C();
  v125 = v124;

  sub_1D607E0F0(v123, v125, (v0 + 152));

  sub_1D5B88AA0(v0 + 152, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
  (*(v401 + 56))(v404, 1, 1, v489);
  v576 = 7;
  v126 = *(v410 + 56);
  v126(v407, 1, 1, v414);
  v126(v418, 1, 1, v414);
  v127 = *(v119 + qword_1EDFFCF08);
  v555(v115, v394, v116);
  v128 = v115 + *(v121 + 44);
  v129 = *(v128 + *(v514 + 36));

  v564(v128, v514);
  v130 = sub_1D61753F0(v127, v129);

  sub_1D72644CC();
  swift_allocObject();
  v131 = sub_1D726270C();
  (*(v429 + 16))(v132, v530, v422);
  sub_1D5BFCB60(v131, v422);
  v133 = sub_1D726274C();

  v134 = *(v394 + *(v475 + 44));
  v135 = *(*v119 + 224);
  swift_beginAccess();
  (*(v436 + 16))(v452, v119 + v135, v445);
  v136 = *(v461 - 8);
  v568 = v130;
  v549 = v133;
  v476 = v134;
  if ((*(v136 + 48))(v452, 1) == 1)
  {
    v137 = (v0 + 584);
    v138 = *(v0 + 592);
    v139 = 1;
    v531 = v138;
  }

  else
  {
    v137 = (v0 + 576);
    (*(*(v0 + 856) + 40))(*(v0 + 976), *(v0 + 576));
    v139 = 0;
    v531 = *(v0 + 592);
    v138 = v136;
  }

  v140 = *(v0 + 1008);
  v141 = *(v0 + 992);
  v453 = *(v0 + 744);
  v490 = *(v0 + 728);
  v518 = *(v0 + 720);
  v437 = *(v0 + 672);
  v446 = *(v0 + 680);
  v142 = *(v0 + 616);
  v462 = *(v0 + 584);
  v143 = *(v0 + 576);
  v423 = *(v0 + 560);
  v430 = *(v0 + 568);
  v144 = *(v0 + 552);
  v504 = *(v0 + 544);
  v145 = *(v0 + 528);
  (*(v138 + 8))(*(v0 + 608), *v137);
  (*(v136 + 56))(v142, v139, 1, v143);
  v146 = type metadata accessor for FeedContext(0);
  (*(*(v146 - 8) + 56))(v144, 1, 1, v146);
  v147 = (v145 + *(*v145 + 240));
  v148 = v147[1];
  v149 = v147[2];
  v579 = *v147;
  v580 = v148;
  v581 = v149;
  v150 = (v140 + *(v141 + 36));
  v151 = v150[1];
  v152 = v150[2];
  *&v582 = *v150;
  *(&v582 + 1) = v151;
  v583 = v152;

  sub_1D5C07390(v151);
  sub_1D5C0C3EC(&v579, &v582, v430, v423, &v577);
  v153 = *(&v582 + 1);

  sub_1D5C08648(v153);

  v582 = v577;
  v583 = v578;
  v579 = 0;
  LOWORD(v580) = 256;
  v154 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v453, 0, &v576, v446, v437, 0, v568, 0, 0, v549, 0, 0, 1, 0, 1, 0, 1, v575, v476, v142, v144, &v582, &v579, 0, 0, 0);

  sub_1D5C086A4(v582, *(&v582 + 1), v583);
  v155 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v144, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v531 + 8))(v142, v462);
  v156 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v437, &qword_1EDF45B00, MEMORY[0x1E6969530], v155, sub_1D5B6BFD8);
  sub_1D5B88AA0(v446, &qword_1EDF45B00, v156, v155, sub_1D5B6BFD8);
  v157 = (*(v490 + 8))(v453, v518);
  v569 = v154;
  LOBYTE(v142) = FeedCursor.reachedEnd.getter(v157, v158, v159, v160);
  v519 = *(v504 + 48);
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v161 = *(v0 + 1000);
  v532 = *(v0 + 992);
  v541 = *(v0 + 1008);
  v162 = *(v0 + 952);
  v163 = *(v0 + 864);
  v164 = *(v0 + 824);
  v491 = *(v0 + 816);
  v505 = *(v0 + 832);
  v165 = *(v0 + 568);
  v550 = *(v0 + 560);
  v477 = *(v0 + 976);
  if ((v142 & 1) == 0)
  {
    v174 = *(v0 + 528);
    v464 = *(v0 + 520);
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_1D7270C10;
    v559 = v163;
    v176 = v162;
    v177 = sub_1D72644BC();
    v179 = v178;
    *(v175 + 56) = MEMORY[0x1E69E6158];
    v180 = sub_1D5B7E2C0();
    v181 = v165;
    v454 = v165;
    v182 = v180;
    *(v175 + 64) = v180;
    *(v175 + 32) = v177;
    *(v175 + 40) = v179;
    *(v0 + 496) = v174;
    v183 = v550;
    type metadata accessor for FeedCursor(0, v181, v550, v184);
    swift_getWitnessTable();
    v185 = sub_1D725B0BC();
    *(v175 + 96) = MEMORY[0x1E69E6158];
    *(v175 + 104) = v182;
    *(v175 + 72) = v185;
    *(v175 + 80) = v186;
    v187 = sub_1D7262EDC();
    sub_1D725C30C("Service slotted emitters emitted another group, group=%{public}@, cursor=%@", 75, 2, &dword_1D5B42000, v519, v187, v175);

    (*(v164 + 8))(v505, v491);
    (*(v161 + 8))(v541, v532);
    v188 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v176 + 32))(v464, v477, v559);
    *(v464 + v188) = v569;
    v190 = v454;
    goto LABEL_32;
  }

  v463 = *(v0 + 520);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_1D7273AE0;
  v167 = sub_1D72644BC();
  v169 = v168;
  *(v166 + 56) = MEMORY[0x1E69E6158];
  *(v166 + 64) = sub_1D5B7E2C0();
  *(v166 + 32) = v167;
  *(v166 + 40) = v169;
  v170 = sub_1D7262EDC();
  sub_1D725C30C("Service slotted emitters emitted the last group and we reached the end of the feed, group=%{public}@", 100, 2, &dword_1D5B42000, v519, v170, v166);

  (*(v164 + 8))(v505, v491);
  (*(v161 + 8))(v541, v532);
  type metadata accessor for FeedCursor(255, v165, v550, v171);
  v172 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v162 + 32))(v463, v477, v163);
  *(v463 + v172) = v569;
  type metadata accessor for FeedServiceFetchResult.Internal(0, v165, v550, v173);
LABEL_44:
  swift_storeEnumTagMultiPayload();

  v354 = *(v0 + 8);

  v354();
}

uint64_t sub_1D616D3CC()
{
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v2 = sub_1D616FD04;
  }

  else
  {
    v2 = sub_1D616D4E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616D4E0()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D616D768()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v2 = sub_1D616EAFC;
  }

  else
  {
    v2 = sub_1D616D87C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616D87C()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D616DB04()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_1D616F400;
  }

  else
  {
    v2 = sub_1D616DC18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616DC18()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D616DEA0()
{
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v2 = sub_1D6170608;
  }

  else
  {
    v2 = sub_1D616DFB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616DFB4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D616E224()
{
  v68 = v0;
  v1 = *(v0 + 1024);
  *(v0 + 1104) = v1;
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  *(v0 + 480) = v1;
  v4 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v2, v3, v5);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  if (v8 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v8);
LABEL_17:
    swift_willThrow();

    v19 = *(v0 + 8);

    v19();
    return;
  }

  v58 = *(v0 + 32);
  v59 = *(v0 + 16);
  v9 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter(0, *(v0 + 568), *(v0 + 560), v6);

  if (sub_1D726279C())
  {
    v10 = 0;
    do
    {
      v11 = sub_1D726277C();
      sub_1D726271C();
      if (v11)
      {

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D7263DBC();
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }
      }

      v13 = sub_1D5C0BA9C();
      v15 = sub_1D5B69D90(v13, v14);
      v17 = v16;

      if (v17)
      {
        *&v66 = v9;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v9 = v66;
        }

        sub_1D5B7C390((*(v9 + 56) + 32 * v15), (v0 + 56));
        sub_1D67135D8(v15, v9, v18);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v10;
    }

    while (v12 != sub_1D726279C());
  }

  v20 = *(v0 + 792);
  v21 = *(v0 + 776);
  v22 = *(v0 + 768);
  v23 = *(v0 + 736);
  v24 = *(v0 + 664);
  v25 = *(v0 + 568);
  v54 = *(v0 + 656);
  v56 = *(v0 + 560);
  v26 = *(v0 + 528);

  (*(v20 + 56))(v23, 1, 1, v25);
  v60 = 7;
  v27 = *(v21 + 56);
  v27(v24, 1, 1, v22);
  v27(v54, 1, 1, v22);
  v28 = sub_1D61754E8(*(v26 + qword_1EDFFCF08), v7, v25, v56);

  v29 = *(v26 + qword_1EDFFCEF8);
  v30 = __OFADD__(v29, 1);
  v31 = (v29 + 1);
  if (v30)
  {
    goto LABEL_25;
  }

  v48 = v31;
  v55 = *(v0 + 728);
  v57 = *(v0 + 720);
  v50 = *(v0 + 664);
  v51 = *(v0 + 736);
  v49 = *(v0 + 656);
  v46 = *(v0 + 600);
  v52 = *(v0 + 592);
  v53 = *(v0 + 584);
  v32 = *(v0 + 568);
  v33 = *(v0 + 560);
  v34 = *(v0 + 552);
  v47 = v28;
  v35 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v36 = type metadata accessor for FeedContext(0);
  (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  v37 = (v35 + *(*v35 + 240));
  v38 = v37[1];
  v39 = v37[2];
  v63 = *v37;
  v64 = v38;
  v65 = v39;
  v66 = v59;
  v67 = v58;

  sub_1D5C0C3EC(&v63, &v66, v32, v33, &v61);

  sub_1D5C08648(*(&v59 + 1));
  v66 = v61;
  v67 = v62;
  v63 = 0;
  LOWORD(v64) = 256;
  v40 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v51, 0, &v60, v50, v49, 0, v47, 0, 0, 0, 0, v48, 0, 0, 1, 0, 1, v9, 0, v46, v34, &v66, &v63, 0, 0, 0);
  *(v0 + 1112) = v40;

  sub_1D5C086A4(v66, *(&v66 + 1), v67);
  v41 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v34, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v52 + 8))(v46, v53);
  v42 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v49, &qword_1EDF45B00, MEMORY[0x1E6969530], v41, sub_1D5B6BFD8);
  sub_1D5B88AA0(v50, &qword_1EDF45B00, v42, v41, sub_1D5B6BFD8);
  (*(v55 + 8))(v51, v57);
  v43 = swift_task_alloc();
  *(v0 + 1120) = v43;
  *v43 = v0;
  v43[1] = sub_1D616DEA0;
  v44 = *(v0 + 536);
  v45 = *(v0 + 520);

  sub_1D6163FF4(v45, v40, v44);
}

void sub_1D616EAFC()
{
  v71 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1072);
  *(v0 + 1104) = v4;
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  *(v0 + 480) = v4;
  v7 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v5, v6, v8);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  if (v11 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v11);
LABEL_17:
    swift_willThrow();

    v22 = *(v0 + 8);

    v22();
    return;
  }

  v61 = *(v0 + 32);
  v62 = *(v0 + 16);
  v12 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter(0, *(v0 + 568), *(v0 + 560), v9);

  if (sub_1D726279C())
  {
    v13 = 0;
    do
    {
      v14 = sub_1D726277C();
      sub_1D726271C();
      if (v14)
      {

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D7263DBC();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }
      }

      v16 = sub_1D5C0BA9C();
      v18 = sub_1D5B69D90(v16, v17);
      v20 = v19;

      if (v20)
      {
        *&v69 = v12;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v12 = v69;
        }

        sub_1D5B7C390((*(v12 + 56) + 32 * v18), (v0 + 56));
        sub_1D67135D8(v18, v12, v21);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v13;
    }

    while (v15 != sub_1D726279C());
  }

  v23 = *(v0 + 792);
  v24 = *(v0 + 776);
  v25 = *(v0 + 768);
  v26 = *(v0 + 736);
  v27 = *(v0 + 664);
  v28 = *(v0 + 568);
  v57 = *(v0 + 656);
  v59 = *(v0 + 560);
  v29 = *(v0 + 528);

  (*(v23 + 56))(v26, 1, 1, v28);
  v63 = 7;
  v30 = *(v24 + 56);
  v30(v27, 1, 1, v25);
  v30(v57, 1, 1, v25);
  v31 = sub_1D61754E8(*(v29 + qword_1EDFFCF08), v10, v28, v59);

  v32 = *(v29 + qword_1EDFFCEF8);
  v33 = __OFADD__(v32, 1);
  v34 = (v32 + 1);
  if (v33)
  {
    goto LABEL_25;
  }

  v51 = v34;
  v58 = *(v0 + 728);
  v60 = *(v0 + 720);
  v53 = *(v0 + 664);
  v54 = *(v0 + 736);
  v52 = *(v0 + 656);
  v49 = *(v0 + 600);
  v55 = *(v0 + 592);
  v56 = *(v0 + 584);
  v35 = *(v0 + 568);
  v36 = *(v0 + 560);
  v37 = *(v0 + 552);
  v50 = v31;
  v38 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v39 = type metadata accessor for FeedContext(0);
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = (v38 + *(*v38 + 240));
  v41 = v40[1];
  v42 = v40[2];
  v66 = *v40;
  v67 = v41;
  v68 = v42;
  v69 = v62;
  v70 = v61;

  sub_1D5C0C3EC(&v66, &v69, v35, v36, &v64);

  sub_1D5C08648(*(&v62 + 1));
  v69 = v64;
  v70 = v65;
  v66 = 0;
  LOWORD(v67) = 256;
  v43 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v54, 0, &v63, v53, v52, 0, v50, 0, 0, 0, 0, v51, 0, 0, 1, 0, 1, v12, 0, v49, v37, &v69, &v66, 0, 0, 0);
  *(v0 + 1112) = v43;

  sub_1D5C086A4(v69, *(&v69 + 1), v70);
  v44 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v37, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v55 + 8))(v49, v56);
  v45 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v52, &qword_1EDF45B00, MEMORY[0x1E6969530], v44, sub_1D5B6BFD8);
  sub_1D5B88AA0(v53, &qword_1EDF45B00, v45, v44, sub_1D5B6BFD8);
  (*(v58 + 8))(v54, v60);
  v46 = swift_task_alloc();
  *(v0 + 1120) = v46;
  *v46 = v0;
  v46[1] = sub_1D616DEA0;
  v47 = *(v0 + 536);
  v48 = *(v0 + 520);

  sub_1D6163FF4(v48, v43, v47);
}

void sub_1D616F400()
{
  v71 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1096);
  *(v0 + 1104) = v4;
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  *(v0 + 480) = v4;
  v7 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v5, v6, v8);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  if (v11 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v11);
LABEL_17:
    swift_willThrow();

    v22 = *(v0 + 8);

    v22();
    return;
  }

  v61 = *(v0 + 32);
  v62 = *(v0 + 16);
  v12 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter(0, *(v0 + 568), *(v0 + 560), v9);

  if (sub_1D726279C())
  {
    v13 = 0;
    do
    {
      v14 = sub_1D726277C();
      sub_1D726271C();
      if (v14)
      {

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D7263DBC();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }
      }

      v16 = sub_1D5C0BA9C();
      v18 = sub_1D5B69D90(v16, v17);
      v20 = v19;

      if (v20)
      {
        *&v69 = v12;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v12 = v69;
        }

        sub_1D5B7C390((*(v12 + 56) + 32 * v18), (v0 + 56));
        sub_1D67135D8(v18, v12, v21);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v13;
    }

    while (v15 != sub_1D726279C());
  }

  v23 = *(v0 + 792);
  v24 = *(v0 + 776);
  v25 = *(v0 + 768);
  v26 = *(v0 + 736);
  v27 = *(v0 + 664);
  v28 = *(v0 + 568);
  v57 = *(v0 + 656);
  v59 = *(v0 + 560);
  v29 = *(v0 + 528);

  (*(v23 + 56))(v26, 1, 1, v28);
  v63 = 7;
  v30 = *(v24 + 56);
  v30(v27, 1, 1, v25);
  v30(v57, 1, 1, v25);
  v31 = sub_1D61754E8(*(v29 + qword_1EDFFCF08), v10, v28, v59);

  v32 = *(v29 + qword_1EDFFCEF8);
  v33 = __OFADD__(v32, 1);
  v34 = (v32 + 1);
  if (v33)
  {
    goto LABEL_25;
  }

  v51 = v34;
  v58 = *(v0 + 728);
  v60 = *(v0 + 720);
  v53 = *(v0 + 664);
  v54 = *(v0 + 736);
  v52 = *(v0 + 656);
  v49 = *(v0 + 600);
  v55 = *(v0 + 592);
  v56 = *(v0 + 584);
  v35 = *(v0 + 568);
  v36 = *(v0 + 560);
  v37 = *(v0 + 552);
  v50 = v31;
  v38 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v39 = type metadata accessor for FeedContext(0);
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = (v38 + *(*v38 + 240));
  v41 = v40[1];
  v42 = v40[2];
  v66 = *v40;
  v67 = v41;
  v68 = v42;
  v69 = v62;
  v70 = v61;

  sub_1D5C0C3EC(&v66, &v69, v35, v36, &v64);

  sub_1D5C08648(*(&v62 + 1));
  v69 = v64;
  v70 = v65;
  v66 = 0;
  LOWORD(v67) = 256;
  v43 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v54, 0, &v63, v53, v52, 0, v50, 0, 0, 0, 0, v51, 0, 0, 1, 0, 1, v12, 0, v49, v37, &v69, &v66, 0, 0, 0);
  *(v0 + 1112) = v43;

  sub_1D5C086A4(v69, *(&v69 + 1), v70);
  v44 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v37, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v55 + 8))(v49, v56);
  v45 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v52, &qword_1EDF45B00, MEMORY[0x1E6969530], v44, sub_1D5B6BFD8);
  sub_1D5B88AA0(v53, &qword_1EDF45B00, v45, v44, sub_1D5B6BFD8);
  (*(v58 + 8))(v54, v60);
  v46 = swift_task_alloc();
  *(v0 + 1120) = v46;
  *v46 = v0;
  v46[1] = sub_1D616DEA0;
  v47 = *(v0 + 536);
  v48 = *(v0 + 520);

  sub_1D6163FF4(v48, v43, v47);
}

void sub_1D616FD04()
{
  v71 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1048);
  *(v0 + 1104) = v4;
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  *(v0 + 480) = v4;
  v7 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v5, v6, v8);
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  if (v11 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v11);
LABEL_17:
    swift_willThrow();

    v22 = *(v0 + 8);

    v22();
    return;
  }

  v61 = *(v0 + 32);
  v62 = *(v0 + 16);
  v12 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter(0, *(v0 + 568), *(v0 + 560), v9);

  if (sub_1D726279C())
  {
    v13 = 0;
    do
    {
      v14 = sub_1D726277C();
      sub_1D726271C();
      if (v14)
      {

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D7263DBC();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }
      }

      v16 = sub_1D5C0BA9C();
      v18 = sub_1D5B69D90(v16, v17);
      v20 = v19;

      if (v20)
      {
        *&v69 = v12;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v12 = v69;
        }

        sub_1D5B7C390((*(v12 + 56) + 32 * v18), (v0 + 56));
        sub_1D67135D8(v18, v12, v21);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v13;
    }

    while (v15 != sub_1D726279C());
  }

  v23 = *(v0 + 792);
  v24 = *(v0 + 776);
  v25 = *(v0 + 768);
  v26 = *(v0 + 736);
  v27 = *(v0 + 664);
  v28 = *(v0 + 568);
  v57 = *(v0 + 656);
  v59 = *(v0 + 560);
  v29 = *(v0 + 528);

  (*(v23 + 56))(v26, 1, 1, v28);
  v63 = 7;
  v30 = *(v24 + 56);
  v30(v27, 1, 1, v25);
  v30(v57, 1, 1, v25);
  v31 = sub_1D61754E8(*(v29 + qword_1EDFFCF08), v10, v28, v59);

  v32 = *(v29 + qword_1EDFFCEF8);
  v33 = __OFADD__(v32, 1);
  v34 = (v32 + 1);
  if (v33)
  {
    goto LABEL_25;
  }

  v51 = v34;
  v58 = *(v0 + 728);
  v60 = *(v0 + 720);
  v53 = *(v0 + 664);
  v54 = *(v0 + 736);
  v52 = *(v0 + 656);
  v49 = *(v0 + 600);
  v55 = *(v0 + 592);
  v56 = *(v0 + 584);
  v35 = *(v0 + 568);
  v36 = *(v0 + 560);
  v37 = *(v0 + 552);
  v50 = v31;
  v38 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v39 = type metadata accessor for FeedContext(0);
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = (v38 + *(*v38 + 240));
  v41 = v40[1];
  v42 = v40[2];
  v66 = *v40;
  v67 = v41;
  v68 = v42;
  v69 = v62;
  v70 = v61;

  sub_1D5C0C3EC(&v66, &v69, v35, v36, &v64);

  sub_1D5C08648(*(&v62 + 1));
  v69 = v64;
  v70 = v65;
  v66 = 0;
  LOWORD(v67) = 256;
  v43 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v54, 0, &v63, v53, v52, 0, v50, 0, 0, 0, 0, v51, 0, 0, 1, 0, 1, v12, 0, v49, v37, &v69, &v66, 0, 0, 0);
  *(v0 + 1112) = v43;

  sub_1D5C086A4(v69, *(&v69 + 1), v70);
  v44 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v37, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v55 + 8))(v49, v56);
  v45 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v52, &qword_1EDF45B00, MEMORY[0x1E6969530], v44, sub_1D5B6BFD8);
  sub_1D5B88AA0(v53, &qword_1EDF45B00, v45, v44, sub_1D5B6BFD8);
  (*(v58 + 8))(v54, v60);
  v46 = swift_task_alloc();
  *(v0 + 1120) = v46;
  *v46 = v0;
  v46[1] = sub_1D616DEA0;
  v47 = *(v0 + 536);
  v48 = *(v0 + 520);

  sub_1D6163FF4(v48, v43, v47);
}

uint64_t sub_1D6170608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6170884(uint64_t a1, uint64_t *a2, double a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 496) = v5;
  *(v6 + 488) = a3;
  *(v6 + 472) = a1;
  *(v6 + 480) = a2;
  v7 = *v5;
  *(v6 + 504) = *v5;
  v8 = *a2;
  v9 = *(*a2 + 80);
  *(v6 + 512) = v9;
  v10 = *(v8 + 88);
  *(v6 + 520) = v10;
  v11 = type metadata accessor for FeedChosenEmitterResult(255, v9, v10, a5);
  *(v6 + 528) = v11;
  v12 = sub_1D726393C();
  *(v6 + 536) = v12;
  *(v6 + 544) = *(v12 - 8);
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  v13 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v6 + 584) = swift_task_alloc();
  *(v6 + 592) = swift_getAssociatedTypeWitness();
  v14 = sub_1D726393C();
  *(v6 + 600) = v14;
  *(v6 + 608) = *(v14 - 8);
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v13);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  *(v6 + 728) = swift_task_alloc();
  v15 = sub_1D726393C();
  *(v6 + 736) = v15;
  *(v6 + 744) = *(v15 - 8);
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  v16 = sub_1D725891C();
  *(v6 + 784) = v16;
  *(v6 + 792) = *(v16 - 8);
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = *(v9 - 8);
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = *(v7 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *(v6 + 832) = swift_task_alloc();
  v18 = type metadata accessor for FeedCursorGroup(0, v9, v10, v17);
  *(v6 + 840) = v18;
  *(v6 + 848) = *(v18 - 8);
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 888) = AssociatedTypeWitness;
  *(v6 + 896) = *(AssociatedTypeWitness - 8);
  *(v6 + 904) = swift_task_alloc();
  *(v6 + 912) = swift_task_alloc();
  *(v6 + 920) = swift_task_alloc();
  *(v6 + 928) = swift_task_alloc();
  v21 = type metadata accessor for FeedScoredResult(0, v9, v10, v20);
  *(v6 + 936) = v21;
  *(v6 + 944) = *(v21 - 8);
  *(v6 + 952) = swift_task_alloc();
  *(v6 + 960) = swift_task_alloc();
  *(v6 + 968) = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v6 + 976) = AssociatedConformanceWitness;
  v24 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
  *(v6 + 984) = v24;
  *(v6 + 992) = *(v24 - 8);
  *(v6 + 1000) = swift_task_alloc();
  *(v6 + 1008) = swift_task_alloc();
  *(v6 + 1016) = *(v11 - 8);
  *(v6 + 1024) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6171094, 0, 0);
}

uint64_t sub_1D6171094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 65);
  v6 = *(v4 + 64);
  v7 = *(v4 + 60);
  v8 = *(*(v4 + 62) + 48);
  *(v4 + 129) = v8;
  v9 = *(v7 + qword_1EDFFCF48);
  *(v4 + 130) = v9;
  *(v4 + 48) = v9;
  *(v4 + 131) = type metadata accessor for FeedGroupEmitter(255, v6, v5, a4);
  *(v4 + 132) = sub_1D72627FC();
  *(v4 + 133) = swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v10 = *(v4 + 103);
    v11 = *(v4 + 63);
    v12 = *(v4 + 60);
    (*(*(v4 + 127) + 56))(*(v4 + 69), 1, 1, *(v4 + 66));
    v13 = sub_1D726275C();
    *(v4 + 148) = v13;
    v14 = *(v12 + qword_1EDFFCF30);
    v15 = sub_1D61756CC(*(v11 + 80), v10);
    *(v4 + 149) = v15;
    v16 = swift_task_alloc();
    *(v4 + 150) = v16;
    *v16 = v4;
    v16[1] = sub_1D6171A9C;
    v17 = *(v4 + 69);
    v18 = v4[61];
    v19 = *(v4 + 59);
    v20 = *(v4 + 60);

    return sub_1D6175760(v19, v17, 0, v13, v14, v15, v20, v8, v18);
  }

  else
  {
    v22 = swift_task_alloc();
    *(v4 + 134) = v22;
    *v22 = v4;
    v22[1] = sub_1D5C03D00;
    v23 = *(v4 + 128);
    v24 = v4[61];
    v25 = *(v4 + 60);

    return sub_1D6174AD8(v23, v9, v25, 0, v24);
  }
}

uint64_t sub_1D61712D8()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  (*(v2[68] + 8))(v2[72], v2[67]);

  if (v0)
  {
    v3 = sub_1D6173F4C;
  }

  else
  {
    v3 = sub_1D617145C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D617145C()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[66];
  (*(v0[124] + 8))(v0[126], v0[123]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6171730()
{
  v2 = *v1;
  *(*v1 + 1144) = v0;

  (*(v2[68] + 8))(v2[71], v2[67]);

  if (v0)
  {
    v3 = sub_1D6172D9C;
  }

  else
  {
    v3 = sub_1D617145C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D61718F4()
{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  (*(v2[68] + 8))(v2[70], v2[67]);

  if (v0)
  {
    v3 = sub_1D6173674;
  }

  else
  {
    v3 = sub_1D617145C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D6171A9C()
{
  v2 = *v1;
  v3 = *v1;
  v2[151] = v0;

  (*(v2[68] + 8))(v2[69], v2[67]);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6171EA8, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1D6171EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6172148()
{
  *(*v1 + 1240) = v0;

  if (v0)
  {
    v2 = sub_1D6174824;
  }

  else
  {
    v2 = sub_1D617225C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D617225C()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6172504()
{
  v68 = v0;
  v1 = *(v0 + 1080);
  *(v0 + 1216) = v1;
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  *(v0 + 392) = v1;
  v4 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v3, v2, v5);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    if (v6 == 1)
    {
      v41 = *(v0 + 32);
      v42 = *(v0 + 16);
      v7 = *(v0 + 1056);
      v43 = *(v0 + 1064);
      v8 = *(v0 + 824);
      v9 = *(v0 + 808);
      v10 = *(v0 + 792);
      v50 = *(v0 + 680);
      v52 = *(v0 + 784);
      v54 = *(v0 + 672);
      v56 = *(v0 + 1040);
      v11 = *(v0 + 504);
      v46 = *(v0 + 512);
      v48 = *(v0 + 752);
      v58 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v12 = swift_task_alloc();
      v13 = *(v11 + 80);
      *v12 = v13;
      v12[1] = v8;
      KeyPath = swift_getKeyPath();

      v15 = swift_task_alloc();
      v15[2] = v13;
      v15[3] = v8;
      v15[4] = KeyPath;
      v17 = sub_1D5B874E4(sub_1D617D1E8, v15, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v43, MEMORY[0x1E69E7410], v16);

      v18 = sub_1D5B86020(v17);

      (*(v9 + 56))(v48, 1, 1, v46);
      v60 = 7;
      v19 = *(v10 + 56);
      v19(v50, 1, 1, v52);
      v19(v54, 1, 1, v52);
      *(v0 + 408) = v56;
      v20 = swift_task_alloc();
      v20[2] = v13;
      v20[3] = v8;
      v20[4] = v18;

      swift_getWitnessTable();
      v21 = sub_1D7263E7C();

      v23 = *(v58 + qword_1EDFFCEF8);
      if (__OFADD__(v23, 1))
      {
        __break(1u);
      }

      else
      {
        v44 = (v23 + 1);
        v45 = v21;
        v57 = *(v0 + 744);
        v59 = *(v0 + 736);
        v49 = *(v0 + 680);
        v51 = *(v0 + 752);
        v47 = *(v0 + 672);
        v24 = *(v0 + 616);
        v53 = *(v0 + 608);
        v55 = *(v0 + 600);
        v25 = *(v0 + 584);
        v26 = *(v0 + 520);
        v27 = *(v0 + 512);
        v28 = *(v0 + 480);
        v40 = *(v28 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v24, 1, 1);
        v29 = type metadata accessor for FeedContext(0);
        (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
        v30 = (v28 + *(*v28 + 240));
        v31 = v30[1];
        v32 = v30[2];
        v63 = *v30;
        v64 = v31;
        v65 = v32;
        v66 = v42;
        v67 = v41;

        sub_1D5C0C3EC(&v63, &v66, v27, v26, &v61);

        sub_1D5C08648(*(&v42 + 1));
        v66 = v61;
        v67 = v62;
        v63 = 0;
        LOWORD(v64) = 256;
        v33 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v51, 0, &v60, v49, v47, v45, v40, 0, 0, 0, 0, v44, 0, 0, 1, 0, 1, 0, 0, v24, v25, &v66, &v63, 0, 0, 0);
        *(v0 + 1224) = v33;

        sub_1D5C086A4(v66, *(&v66 + 1), v67);
        v34 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v25, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v53 + 8))(v24, v55);
        v35 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v47, &qword_1EDF45B00, MEMORY[0x1E6969530], v34, sub_1D5B6BFD8);
        sub_1D5B88AA0(v49, &qword_1EDF45B00, v35, v34, sub_1D5B6BFD8);
        (*(v57 + 8))(v51, v59);
        v36 = swift_task_alloc();
        *(v0 + 1232) = v36;
        *v36 = v0;
        v36[1] = sub_1D6172148;
        v37 = *(v0 + 488);
        v38 = *(v0 + 472);

        return sub_1D6163FF4(v38, v33, v37);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v6);
  }

  swift_willThrow();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1D6172D9C()
{
  v71 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 528);
  (*(*(v0 + 992) + 8))(*(v0 + 1008), *(v0 + 984));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1144);
  *(v0 + 1216) = v4;
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  *(v0 + 392) = v4;
  v7 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v6, v5, v8);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 48);
    if (v9 == 1)
    {
      v44 = *(v0 + 32);
      v45 = *(v0 + 16);
      v10 = *(v0 + 1056);
      v46 = *(v0 + 1064);
      v11 = *(v0 + 824);
      v12 = *(v0 + 808);
      v13 = *(v0 + 792);
      v53 = *(v0 + 680);
      v55 = *(v0 + 784);
      v57 = *(v0 + 672);
      v59 = *(v0 + 1040);
      v14 = *(v0 + 504);
      v49 = *(v0 + 512);
      v51 = *(v0 + 752);
      v61 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v15 = swift_task_alloc();
      v16 = *(v14 + 80);
      *v15 = v16;
      v15[1] = v11;
      KeyPath = swift_getKeyPath();

      v18 = swift_task_alloc();
      v18[2] = v16;
      v18[3] = v11;
      v18[4] = KeyPath;
      v20 = sub_1D5B874E4(sub_1D617D1E8, v18, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v19);

      v21 = sub_1D5B86020(v20);

      (*(v12 + 56))(v51, 1, 1, v49);
      v63 = 7;
      v22 = *(v13 + 56);
      v22(v53, 1, 1, v55);
      v22(v57, 1, 1, v55);
      *(v0 + 408) = v59;
      v23 = swift_task_alloc();
      v23[2] = v16;
      v23[3] = v11;
      v23[4] = v21;

      swift_getWitnessTable();
      v24 = sub_1D7263E7C();

      v26 = *(v61 + qword_1EDFFCEF8);
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        v47 = (v26 + 1);
        v48 = v24;
        v60 = *(v0 + 744);
        v62 = *(v0 + 736);
        v52 = *(v0 + 680);
        v54 = *(v0 + 752);
        v50 = *(v0 + 672);
        v27 = *(v0 + 616);
        v56 = *(v0 + 608);
        v58 = *(v0 + 600);
        v28 = *(v0 + 584);
        v29 = *(v0 + 520);
        v30 = *(v0 + 512);
        v31 = *(v0 + 480);
        v43 = *(v31 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v27, 1, 1);
        v32 = type metadata accessor for FeedContext(0);
        (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
        v33 = (v31 + *(*v31 + 240));
        v34 = v33[1];
        v35 = v33[2];
        v66 = *v33;
        v67 = v34;
        v68 = v35;
        v69 = v45;
        v70 = v44;

        sub_1D5C0C3EC(&v66, &v69, v30, v29, &v64);

        sub_1D5C08648(*(&v45 + 1));
        v69 = v64;
        v70 = v65;
        v66 = 0;
        LOWORD(v67) = 256;
        v36 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v54, 0, &v63, v52, v50, v48, v43, 0, 0, 0, 0, v47, 0, 0, 1, 0, 1, 0, 0, v27, v28, &v69, &v66, 0, 0, 0);
        *(v0 + 1224) = v36;

        sub_1D5C086A4(v69, *(&v69 + 1), v70);
        v37 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v28, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v56 + 8))(v27, v58);
        v38 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v50, &qword_1EDF45B00, MEMORY[0x1E6969530], v37, sub_1D5B6BFD8);
        sub_1D5B88AA0(v52, &qword_1EDF45B00, v38, v37, sub_1D5B6BFD8);
        (*(v60 + 8))(v54, v62);
        v39 = swift_task_alloc();
        *(v0 + 1232) = v39;
        *v39 = v0;
        v39[1] = sub_1D6172148;
        v40 = *(v0 + 488);
        v41 = *(v0 + 472);

        return sub_1D6163FF4(v41, v36, v40);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v9);
  }

  swift_willThrow();

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1D6173674()
{
  v71 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 528);
  (*(*(v0 + 992) + 8))(*(v0 + 1008), *(v0 + 984));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1176);
  *(v0 + 1216) = v4;
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  *(v0 + 392) = v4;
  v7 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v6, v5, v8);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 48);
    if (v9 == 1)
    {
      v44 = *(v0 + 32);
      v45 = *(v0 + 16);
      v10 = *(v0 + 1056);
      v46 = *(v0 + 1064);
      v11 = *(v0 + 824);
      v12 = *(v0 + 808);
      v13 = *(v0 + 792);
      v53 = *(v0 + 680);
      v55 = *(v0 + 784);
      v57 = *(v0 + 672);
      v59 = *(v0 + 1040);
      v14 = *(v0 + 504);
      v49 = *(v0 + 512);
      v51 = *(v0 + 752);
      v61 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v15 = swift_task_alloc();
      v16 = *(v14 + 80);
      *v15 = v16;
      v15[1] = v11;
      KeyPath = swift_getKeyPath();

      v18 = swift_task_alloc();
      v18[2] = v16;
      v18[3] = v11;
      v18[4] = KeyPath;
      v20 = sub_1D5B874E4(sub_1D617D1E8, v18, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v19);

      v21 = sub_1D5B86020(v20);

      (*(v12 + 56))(v51, 1, 1, v49);
      v63 = 7;
      v22 = *(v13 + 56);
      v22(v53, 1, 1, v55);
      v22(v57, 1, 1, v55);
      *(v0 + 408) = v59;
      v23 = swift_task_alloc();
      v23[2] = v16;
      v23[3] = v11;
      v23[4] = v21;

      swift_getWitnessTable();
      v24 = sub_1D7263E7C();

      v26 = *(v61 + qword_1EDFFCEF8);
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        v47 = (v26 + 1);
        v48 = v24;
        v60 = *(v0 + 744);
        v62 = *(v0 + 736);
        v52 = *(v0 + 680);
        v54 = *(v0 + 752);
        v50 = *(v0 + 672);
        v27 = *(v0 + 616);
        v56 = *(v0 + 608);
        v58 = *(v0 + 600);
        v28 = *(v0 + 584);
        v29 = *(v0 + 520);
        v30 = *(v0 + 512);
        v31 = *(v0 + 480);
        v43 = *(v31 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v27, 1, 1);
        v32 = type metadata accessor for FeedContext(0);
        (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
        v33 = (v31 + *(*v31 + 240));
        v34 = v33[1];
        v35 = v33[2];
        v66 = *v33;
        v67 = v34;
        v68 = v35;
        v69 = v45;
        v70 = v44;

        sub_1D5C0C3EC(&v66, &v69, v30, v29, &v64);

        sub_1D5C08648(*(&v45 + 1));
        v69 = v64;
        v70 = v65;
        v66 = 0;
        LOWORD(v67) = 256;
        v36 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v54, 0, &v63, v52, v50, v48, v43, 0, 0, 0, 0, v47, 0, 0, 1, 0, 1, 0, 0, v27, v28, &v69, &v66, 0, 0, 0);
        *(v0 + 1224) = v36;

        sub_1D5C086A4(v69, *(&v69 + 1), v70);
        v37 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v28, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v56 + 8))(v27, v58);
        v38 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v50, &qword_1EDF45B00, MEMORY[0x1E6969530], v37, sub_1D5B6BFD8);
        sub_1D5B88AA0(v52, &qword_1EDF45B00, v38, v37, sub_1D5B6BFD8);
        (*(v60 + 8))(v54, v62);
        v39 = swift_task_alloc();
        *(v0 + 1232) = v39;
        *v39 = v0;
        v39[1] = sub_1D6172148;
        v40 = *(v0 + 488);
        v41 = *(v0 + 472);

        return sub_1D6163FF4(v41, v36, v40);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v9);
  }

  swift_willThrow();

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1D6173F4C()
{
  v71 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 528);
  (*(*(v0 + 992) + 8))(*(v0 + 1008), *(v0 + 984));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1104);
  *(v0 + 1216) = v4;
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  *(v0 + 392) = v4;
  v7 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, v6, v5, v8);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 48);
    if (v9 == 1)
    {
      v44 = *(v0 + 32);
      v45 = *(v0 + 16);
      v10 = *(v0 + 1056);
      v46 = *(v0 + 1064);
      v11 = *(v0 + 824);
      v12 = *(v0 + 808);
      v13 = *(v0 + 792);
      v53 = *(v0 + 680);
      v55 = *(v0 + 784);
      v57 = *(v0 + 672);
      v59 = *(v0 + 1040);
      v14 = *(v0 + 504);
      v49 = *(v0 + 512);
      v51 = *(v0 + 752);
      v61 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v15 = swift_task_alloc();
      v16 = *(v14 + 80);
      *v15 = v16;
      v15[1] = v11;
      KeyPath = swift_getKeyPath();

      v18 = swift_task_alloc();
      v18[2] = v16;
      v18[3] = v11;
      v18[4] = KeyPath;
      v20 = sub_1D5B874E4(sub_1D617D1E8, v18, v10, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v19);

      v21 = sub_1D5B86020(v20);

      (*(v12 + 56))(v51, 1, 1, v49);
      v63 = 7;
      v22 = *(v13 + 56);
      v22(v53, 1, 1, v55);
      v22(v57, 1, 1, v55);
      *(v0 + 408) = v59;
      v23 = swift_task_alloc();
      v23[2] = v16;
      v23[3] = v11;
      v23[4] = v21;

      swift_getWitnessTable();
      v24 = sub_1D7263E7C();

      v26 = *(v61 + qword_1EDFFCEF8);
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        v47 = (v26 + 1);
        v48 = v24;
        v60 = *(v0 + 744);
        v62 = *(v0 + 736);
        v52 = *(v0 + 680);
        v54 = *(v0 + 752);
        v50 = *(v0 + 672);
        v27 = *(v0 + 616);
        v56 = *(v0 + 608);
        v58 = *(v0 + 600);
        v28 = *(v0 + 584);
        v29 = *(v0 + 520);
        v30 = *(v0 + 512);
        v31 = *(v0 + 480);
        v43 = *(v31 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v27, 1, 1);
        v32 = type metadata accessor for FeedContext(0);
        (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
        v33 = (v31 + *(*v31 + 240));
        v34 = v33[1];
        v35 = v33[2];
        v66 = *v33;
        v67 = v34;
        v68 = v35;
        v69 = v45;
        v70 = v44;

        sub_1D5C0C3EC(&v66, &v69, v30, v29, &v64);

        sub_1D5C08648(*(&v45 + 1));
        v69 = v64;
        v70 = v65;
        v66 = 0;
        LOWORD(v67) = 256;
        v36 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v54, 0, &v63, v52, v50, v48, v43, 0, 0, 0, 0, v47, 0, 0, 1, 0, 1, 0, 0, v27, v28, &v69, &v66, 0, 0, 0);
        *(v0 + 1224) = v36;

        sub_1D5C086A4(v69, *(&v69 + 1), v70);
        v37 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v28, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v56 + 8))(v27, v58);
        v38 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v50, &qword_1EDF45B00, MEMORY[0x1E6969530], v37, sub_1D5B6BFD8);
        sub_1D5B88AA0(v52, &qword_1EDF45B00, v38, v37, sub_1D5B6BFD8);
        (*(v60 + 8))(v54, v62);
        v39 = swift_task_alloc();
        *(v0 + 1232) = v39;
        *v39 = v0;
        v39[1] = sub_1D6172148;
        v40 = *(v0 + 488);
        v41 = *(v0 + 472);

        return sub_1D6163FF4(v41, v36, v40);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v9);
  }

  swift_willThrow();

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1D6174824()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6174AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  *(v6 + 176) = v5;
  *(v6 + 168) = a5;
  *(v6 + 152) = a3;
  *(v6 + 160) = a4;
  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  v7 = *v5;
  v8 = *a3;
  *(v6 + 184) = *(*v5 + 88);
  *(v6 + 192) = *(v7 + 80);
  v9 = *(v8 + 80);
  *(v6 + 200) = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v6 + 208) = AssociatedConformanceWitness;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 216) = AssociatedTypeWitness;
  v12 = swift_getAssociatedConformanceWitness();
  *(v6 + 224) = v12;
  v14 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, v12, v13);
  *(v6 + 232) = v14;
  *(v6 + 240) = *(v14 - 8);
  *(v6 + 248) = swift_task_alloc();
  v16 = type metadata accessor for FeedGroupEmitterCachedOutput(255, AssociatedTypeWitness, v12, v15);
  *(v6 + 256) = v16;
  v17 = sub_1D726393C();
  *(v6 + 264) = v17;
  *(v6 + 272) = *(v17 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = *(v16 - 8);
  *(v6 + 312) = swift_task_alloc();
  v19 = type metadata accessor for FeedScoredResult(255, v9, AssociatedConformanceWitness, v18);
  *(v6 + 320) = v19;
  v20 = sub_1D726393C();
  *(v6 + 328) = v20;
  *(v6 + 336) = *(v20 - 8);
  *(v6 + 344) = swift_task_alloc();
  v21 = *(v19 - 8);
  *(v6 + 352) = v21;
  *(v6 + 360) = *(v21 + 64);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6174E98, 0, 0);
}

uint64_t sub_1D6174E98()
{
  v60 = v0;
  v55 = *(v0 + 208);
  v56 = *(v0 + 200);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v53 = v2;
  v54 = v1;
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v51 = v4;
  v52 = v5;
  v6 = *(v0 + 144);
  v49 = v6;
  *(v0 + 400) = CACurrentMediaTime();
  v7 = FeedGroupSlots.absoluteDescription<A>(cursor:)(v4, v5);
  v9 = v8;
  *(v0 + 408) = v7;
  *(v0 + 416) = v8;
  v10 = v7;
  v50 = v7;
  v57 = *(v3 + 48);
  *(v0 + 424) = v57;
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  *(v0 + 432) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D5B7E2C0();
  *(v0 + 440) = v13;
  *(v12 + 64) = v13;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v0 + 48) = v6;
  v14 = swift_task_alloc();
  *(v14 + 16) = v1;
  *(v14 + 24) = v2;
  *(v0 + 448) = type metadata accessor for FeedGroupEmitter(255, v56, v55, v15);
  v16 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v17 = MEMORY[0x1E69E6158];
  v19 = sub_1D5B874E4(sub_1D617CD6C, v14, v16, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  v20 = MEMORY[0x1DA6F9D20](v19, v17);
  v22 = v21;

  *(v12 + 96) = v17;
  *(v12 + 104) = v13;
  *(v12 + 72) = v20;
  *(v12 + 80) = v22;
  v23 = sub_1D7262EDC();
  sub_1D725C30C("Emit Task [%{public}@] START service starting emit tasks for emitters: %{public}@", 81, 2, &dword_1D5B42000, v57, v23, v12);

  type metadata accessor for FeedGroupEmitTaskGap(0, v56, v55, v24);
  v25 = *(v3 + 40);
  v26 = *(v3 + 48);
  v27 = *(v3 + 56);
  v28 = *(v3 + 64);
  v58[0] = *(v3 + 32);
  v58[1] = v25;
  v58[2] = v26;
  v58[3] = v27;
  v59 = v28;

  v29 = v26;
  v30 = v27;

  v31 = sub_1D5FE6010(v58, v51);
  *(v0 + 456) = v31;
  v32 = sub_1D726279C();
  LOBYTE(v27) = sub_1D6F73578(v32, v33, v34, v35);
  *(v0 + 56) = v49;
  v36 = swift_task_alloc();
  *(v36 + 16) = v51;
  *(v36 + 24) = v31;
  *(v36 + 32) = v27 & 1;
  *(v36 + 40) = v52;
  *(v36 + 48) = v3;
  *(v36 + 56) = v50;
  *(v36 + 64) = v9;
  v38 = type metadata accessor for FeedGroupEmitTask(0, v56, v55, v37);
  *(v0 + 464) = v38;
  v40 = sub_1D5B874E4(sub_1D617CDA8, v36, v16, v38, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v39);
  *(v0 + 472) = v40;
  *(v0 + 480) = 0;

  v42 = type metadata accessor for FeedGroupEmitTaskGroupResult(0, v56, v55, v41);
  *(v0 + 488) = type metadata accessor for FeedGroupEmitTaskResult(255, v56, v55, v43);
  v44 = sub_1D7261E1C();
  v45 = swift_task_alloc();
  *(v0 + 496) = v45;
  v45[2] = v54;
  v45[3] = v53;
  v45[4] = v40;
  v45[5] = v31;
  v45[6] = v57;
  v45[7] = v50;
  v45[8] = v9;
  v46 = swift_task_alloc();
  *(v0 + 504) = v46;
  *v46 = v0;
  v46[1] = sub_1D61752D8;
  v62 = v44;

  return MEMORY[0x1EEE6DBF8](v0 + 64, v42, v44, 0, 0, &unk_1D72A6910, v45, v42);
}

uint64_t sub_1D61752D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5BC184C, 0, 0);
}

uint64_t sub_1D61753F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  swift_allocObject();
  v5 = sub_1D726270C();
  *v6 = a2;
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  v10 = type metadata accessor for FeedGroupEmitter(0, v7, v8, v9);
  v11 = sub_1D5BFCB60(v5, v10);

  v12 = sub_1D61754E8(a1, v11, v7, v8);

  return v12;
}

uint64_t sub_1D61754E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for FeedGroupEmitter(255, a3, a4, v7);
  v8 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1D5B874E4(sub_1D617DAC4, KeyPath, v8, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  sub_1D5B86020(v11);

  v12 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v13 = sub_1D726275C();
  sub_1D6F78E04(v13, v12, v8, MEMORY[0x1E69E6540]);

  sub_1D7261E1C();
  swift_getWitnessTable();
  sub_1D726248C();

  return a2;
}

uint64_t sub_1D61756CC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitter(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);

  return sub_1D726275C();
}

uint64_t sub_1D6175760(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9)
{
  *(v9 + 208) = a9;
  *(v9 + 192) = a8;
  *(v9 + 200) = v16;
  *(v9 + 176) = a6;
  *(v9 + 184) = a7;
  *(v9 + 160) = a4;
  *(v9 + 168) = a5;
  *(v9 + 344) = a3;
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  v10 = *a7;
  *(v9 + 216) = *v16;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = *(v10 + 88);
  *(v9 + 240) = *(v10 + 80);
  *(v9 + 248) = swift_getAssociatedTypeWitness();
  v12 = sub_1D726393C();
  *(v9 + 256) = v12;
  *(v9 + 264) = *(v12 - 8);
  *(v9 + 272) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v11);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  v13 = sub_1D726393C();
  *(v9 + 296) = v13;
  *(v9 + 304) = *(v13 - 8);
  *(v9 + 312) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D61759DC, 0, 0);
}

void sub_1D61759DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = v4;
  v6 = *(v4 + 232);
  v5 = *(v4 + 240);
  v7 = *(v4 + 344);
  v8 = FeedCursor.nextSlotIndex.getter(a1, a2, a3, a4);
  type metadata accessor for FeedGroupEmitter(255, v5, v6, v9);
  v10 = sub_1D72627FC();
  nullsub_1();
  v104 = v4;
  *(v4 + 128) = v11;
  *(swift_task_alloc() + 16) = v8;
  v99 = v10;
  sub_1D7261DCC();

  swift_getWitnessTable();
  v101 = v4 + 128;
  v12 = sub_1D72624DC();

  if ((v7 & 1) == 0 && (v12 & 1) == 0)
  {
    v13 = v4;
    v15 = *(v4 + 192);
    v14 = *(v4 + 200);
    v16 = sub_1D7262EDC();
    sub_1D725C30C("Service has no active or slotted emitters remaining, will end the feed", 70, 2, &dword_1D5B42000, v15, v16, MEMORY[0x1E69E7CC0]);
    sub_1D617CCB4(v14 + 120, v4 + 56);
    if (*(v4 + 80))
    {
      sub_1D5B63F14((v4 + 56), v4 + 16);
      v17 = *(v4 + 40);
      v18 = *(v4 + 48);
      __swift_project_boxed_opaque_existential_1((v4 + 16), v17);
      if (FeedOfflineProviding.isOffline.getter(v17, v18))
      {
        FeedCursor.feedMode.getter(&v112);
        if (v112 == 1)
        {
        }

        else
        {
          v46 = sub_1D72646CC();

          if ((v46 & 1) == 0)
          {
            type metadata accessor for FeedServiceError(0, *(v4 + 240), *(v4 + 232), v47);
            swift_getWitnessTable();
            swift_allocError();
            *v79 = 2;
            *(v79 + 8) = 0;
            *(v79 + 16) = 0;
            *(v79 + 24) = 0;
            *(v79 + 32) = 6;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1((v4 + 16));

            v78 = *(v4 + 8);
            goto LABEL_33;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1((v4 + 16));
    }

    else
    {
      sub_1D617D2E4(v4 + 56, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding);
    }

    v48 = sub_1D7261CFC();
    v108 = v48;
    if (sub_1D726279C())
    {
      v49 = 0;
      v50 = (v101 - 32);
      v107 = v104[21];
      v51 = v104[20] + 32;
      while (1)
      {
        v52 = sub_1D726277C();
        sub_1D726271C();
        if (v52)
        {
          v53 = *(v51 + 8 * v49);

          v54 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v53 = sub_1D7263DBC();
          v54 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return;
          }
        }

        if (sub_1D6B6AEFC())
        {
          *(v101 + 8) = v53;
          sub_1D72627BC();
        }

        else
        {
          v55 = sub_1D5C0BA9C();
          v56 = v107;
          v58 = sub_1D5B69D90(v55, v57);
          v60 = v59;

          if (v60)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v112 = v107;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D5C06BE0();
              v56 = v112;
            }

            sub_1D5B7C390((*(v56 + 56) + 32 * v58), v50);
            v107 = v56;
            sub_1D67135D8(v58, v56, v62);
          }

          else
          {

            *v50 = 0u;
            *(v101 - 16) = 0u;
          }

          sub_1D5B88AA0(v50, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
          v13 = v104;
        }

        ++v49;
        if (v54 == sub_1D726279C())
        {
          v88 = v108;
          goto LABEL_32;
        }
      }
    }

    v107 = v104[21];
    v88 = v48;
LABEL_32:
    v86 = v13[39];
    v98 = v13[38];
    v63 = v13[36];
    v105 = v13[37];
    v65 = v13[34];
    v64 = v13[35];
    v89 = v13[33];
    v66 = v13[31];
    v92 = v13[32];
    v94 = v13[30];
    v103 = v13[29];
    v67 = v13[27];
    v84 = v13[23];
    v87 = v13[22];
    v82 = v13[28];
    v83 = v13[19];
    v96 = v13[18];
    (*(*(v94 - 8) + 56))();
    v109 = 7;
    v68 = sub_1D725891C();
    v69 = *(*(v68 - 8) + 56);
    v69(v63, 1, 1, v68);
    v69(v64, 1, 1, v68);
    v85 = sub_1D726275C();
    v70 = MEMORY[0x1E69E6530];
    swift_getTupleTypeMetadata2();
    v71 = sub_1D726275C();
    v72 = sub_1D6F78E04(v71, v70, v99, MEMORY[0x1E69E6540]);

    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
    v73 = type metadata accessor for FeedContext(0);
    (*(*(v73 - 8) + 56))(v82, 1, 1, v73);
    sub_1D6176980(v83, v84, *(v67 + 88), &v110);
    v112 = v110;
    v113 = v111;
    v114 = 0;
    v115 = 256;
    v74 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v86, 0, &v109, v63, v64, v85, v72, v87, v88, 0, 0, 0, 1, 0, 1, 0, 1, v107, 0, v65, v82, &v112, &v114, 0, 0, 0);

    sub_1D5C086A4(v112, *(&v112 + 1), v113);
    v75 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v82, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v89 + 8))(v65, v92);
    v76 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v64, &qword_1EDF45B00, MEMORY[0x1E6969530], v75, sub_1D5B6BFD8);
    sub_1D5B88AA0(v63, &qword_1EDF45B00, v76, v75, sub_1D5B6BFD8);
    (*(v98 + 8))(v86, v105);
    *v96 = v74;
    type metadata accessor for FeedServiceFetchResult.Internal(0, v94, v103, v77);
    swift_storeEnumTagMultiPayload();

    v78 = v13[1];
LABEL_33:

    v78();
    return;
  }

  v19 = *(v4 + 312);
  v21 = *(v4 + 280);
  v20 = *(v4 + 288);
  v22 = *(v4 + 240);
  v23 = *(v4 + 184);
  v24 = *(v4 + 344);
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7270C10;
  v26 = MEMORY[0x1E69E6370];
  v27 = MEMORY[0x1E69E63A8];
  *(v25 + 56) = MEMORY[0x1E69E6370];
  *(v25 + 64) = v27;
  *(v25 + 32) = v12 & 1;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  *(v25 + 72) = v24;
  sub_1D7262EDC();
  sub_1D725C30C("Found no emitter for this slot, skipping slot, moreSlottedEmitters=%d, waitingForEndOfFeed=%d", v80, v81);

  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  LOBYTE(v108) = 7;
  v28 = sub_1D725891C();
  v29 = *(*(v28 - 8) + 56);
  v29(v20, 1, 1, v28);
  v29(v21, 1, 1, v28);
  v30 = *(v23 + qword_1EDFFCEF8);
  v31 = (v30 + 1);
  if (__OFADD__(v30, 1))
  {
    goto LABEL_38;
  }

  v106 = *(v4 + 296);
  v93 = *(v4 + 288);
  v32 = *(v4 + 272);
  v95 = *(v4 + 280);
  v97 = *(v4 + 312);
  v33 = *(v4 + 264);
  v100 = *(v4 + 256);
  v102 = *(v4 + 304);
  v34 = *(v4 + 216);
  v35 = *(v4 + 224);
  v36 = *(v4 + 176);
  v37 = *(v4 + 184);
  v38 = *(v4 + 168);
  v90 = *(v4 + 160);
  v39 = *(v4 + 152);
  (*(*(*(v4 + 248) - 8) + 56))(v32, 1, 1);
  v40 = type metadata accessor for FeedContext(0);
  (*(*(v40 - 8) + 56))(v35, 1, 1, v40);
  sub_1D6176980(v39, v37, *(v34 + 88), &v110);
  v112 = v110;
  v113 = v111;
  v114 = 0;
  v115 = 256;
  v91 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v97, 0, &v108, v93, v95, v90, 0, v36, 0, 0, 0, v31, 0, 0, 1, 0, 1, v38, 0, v32, v35, &v112, &v114, 0, 0, 0);
  *(v4 + 320) = v91;
  sub_1D5C086A4(v112, *(&v112 + 1), v113);
  v41 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v35, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v33 + 8))(v32, v100);
  v42 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v95, &qword_1EDF45B00, MEMORY[0x1E6969530], v41, sub_1D5B6BFD8);
  sub_1D5B88AA0(v93, &qword_1EDF45B00, v42, v41, sub_1D5B6BFD8);
  (*(v102 + 8))(v97, v106);
  v43 = swift_task_alloc();
  *(v4 + 328) = v43;
  *v43 = v4;
  v43[1] = sub_1D6176724;
  v44 = *(v4 + 208);
  v45 = *(v4 + 144);

  sub_1D6163FF4(v45, v91, v44);
}

uint64_t sub_1D6176724()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1D61768D8;
  }

  else
  {
    v2 = sub_1D6176838;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6176838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61768D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6176980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v33 = a4;
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 88);
  v8 = type metadata accessor for FeedChosenEmitterResult(255, v6, v7, a3);
  v9 = sub_1D726393C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - v12;
  v14 = *(v8 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v32 - v18;
  (*(v10 + 16))(v13, a1, v9, v17);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v20 = (a2 + *(*a2 + 240));
    v32 = *v20;
    v21 = *(v20 + 2);

    v23 = v32;
  }

  else
  {
    (*(v14 + 32))(v19, v13, v8);
    v24 = (a2 + *(*a2 + 240));
    v25 = v24[1];
    v26 = v24[2];
    v37[0] = *v24;
    v37[1] = v25;
    v37[2] = v26;
    v27 = &v19[*(v8 + 36)];
    v28 = v27[1];
    v29 = v27[2];
    v34 = *v27;
    v35 = v28;
    v36 = v29;

    sub_1D5C07390(v28);
    sub_1D5C0C3EC(v37, &v34, v6, v7, &v38);
    v30 = v35;

    sub_1D5C08648(v30);

    result = (*(v14 + 8))(v19, v8);
    v23 = v38;
    v21 = v39;
  }

  v31 = v33;
  *v33 = v23;
  *(v31 + 2) = v21;
  return result;
}

uint64_t sub_1D6176C8C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v64 = a3;
  v65 = a4;
  v63 = a2;
  v67 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FeedGroupEmitTaskResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v70 = &v62[-v13];
  swift_getAssociatedTypeWitness();
  v66 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for FeedGroupEmitterOutput(0, v14, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v62[-v20];
  v22 = *(v14 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v62[-v26];
  v28 = *(v18 + 16);
  v71 = a1;
  v28(v21, a1, v17, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v45 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v46 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v22 + 32))(v27, v21, v14);
      sub_1D5B88AA0(&v21[v46], &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, v45, sub_1D5BEE1B8);
      v47 = v63;
      v31 = v15;
      v44 = v66;
      v48 = v67;
LABEL_13:
      v49 = sub_1D6177438(v27, v47 & 1, v6);
      v50 = *(v31 + 8);
      v51 = (*(v50 + 48))(v14, v50);
      v52 = (*(v50 + 64))(v14, v50);
      (*(v22 + 8))(v27, v14);
      v53 = v70;
      (*(v68 + 16))(v70, v71, v69);
      v40 = v48;
      v36 = v49;
      v38 = v51;
      v37 = v52;
      v41 = v53;
LABEL_14:
      v42 = AssociatedTypeWitness;
      v39 = v44;
      return sub_1D61777AC(v41, v42, v39, v35, v40, v36, v38, v37);
    }

    v31 = v15;
    if (EnumCaseMultiPayload == 1)
    {
      v32 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v33 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v22 + 32))(v27, v21, v14);
      sub_1D5B88AA0(&v21[v33], &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, v32, sub_1D5BEE1B8);
    }

    else
    {
      (*(v22 + 32))(v27, v21, v14);
    }

    goto LABEL_11;
  }

  if ((EnumCaseMultiPayload - 4) >= 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v18 + 8))(v21, v17);
      v44 = v66;
      v43 = v67;
    }

    else
    {
      v31 = v15;
      v55 = type metadata accessor for FeedGroupEmitterEmbeddedOutput(255, v14, v15, v30);
      sub_1D5B49474(255, qword_1EDF37D80, &protocol descriptor for FeedCursorEmbeddable);
      v56 = *(swift_getTupleTypeMetadata2() + 48);
      v57 = swift_getEnumCaseMultiPayload();
      if (!v57)
      {
        v58 = MEMORY[0x1E69E6720];
        sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        v59 = v56;
        v60 = *(swift_getTupleTypeMetadata2() + 48);
        (*(v22 + 32))(v27, v21, v14);
        sub_1D5B88AA0(&v21[v60], &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, v58, sub_1D5BEE1B8);
        __swift_destroy_boxed_opaque_existential_1(&v21[v59]);
LABEL_11:
        v44 = v66;
        v48 = v67;
LABEL_12:
        v47 = v63;
        goto LABEL_13;
      }

      v44 = v66;
      if (v57 == 1)
      {
        (*(v22 + 32))(v27, v21, v14);
        __swift_destroy_boxed_opaque_existential_1(&v21[v56]);
        v48 = v67;
        goto LABEL_12;
      }

      (*(*(v55 - 8) + 8))(v21, v55);
      __swift_destroy_boxed_opaque_existential_1(&v21[v56]);
      v43 = v67;
    }

    v61 = v70;
    (*(v68 + 16))(v70, v71, v69);
    v36 = -300000.0;
    v37 = -1.79769313e308;
    v38 = 1.0;
    v40 = v43;
    v41 = v61;
    goto LABEL_14;
  }

  (*(v18 + 8))(v21, v17);
  v34 = v70;
  (*(v68 + 16))(v70, v71, v69);
  v36 = -200000.0;
  v37 = -1.79769313e308;
  v38 = 1.0;
  v39 = v66;
  v40 = v67;
  v41 = v34;
  v42 = AssociatedTypeWitness;
  return sub_1D61777AC(v41, v42, v39, v35, v40, v36, v38, v37);
}

double sub_1D6177438(uint64_t a1, char a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = AssociatedConformanceWitness;
  if ((a2 & 1) != 0 || (v8 = *(AssociatedConformanceWitness + 8), v9 = *(v8 + 64), v10 = swift_checkMetadataState(), v11 = 1.0, v9(v10, v8) > 0.0))
  {
    v12 = *(v7 + 8);
    v13 = *(v12 + 56);
    v14 = swift_checkMetadataState();
    v15 = v13(v14, v12);
    v16 = v15 * (*(v12 + 48))(v14, v12);
    v17 = a3[12];
    v18 = a3[13];
    __swift_project_boxed_opaque_existential_1(a3 + 9, v17);
    (*(v7 + 96))(&v21, v14, v7);
    FeedPersonalizationServiceType.score<A>(group:context:)(a1, &v21, v17, v14, v18, v12);
    return v16 + v19;
  }

  return v11;
}

uint64_t sub_1D61777AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  *a5 = a6;
  a5[1] = a7;
  a5[2] = a8;
  v12 = *(type metadata accessor for FeedScoredResult(0, a2, a3, a4) + 44);
  v14 = type metadata accessor for FeedGroupEmitTaskResult(0, a2, a3, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v12, a1, v14);
}

void sub_1D617784C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v40 = a8;
  v41 = a7;
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v42 = a9;
  v11 = *(*a2 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v34 = type metadata accessor for FeedGroupEmitterCachedOutput(255, AssociatedTypeWitness, v14, v15);
  v16 = sub_1D726393C();
  v38 = *(v16 - 8);
  v39 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  v20 = *a1;
  v21 = sub_1D5C0BA9C();
  v22 = v35;
  v37 = sub_1D6F73704(v21, v23, v35, v36, v37);

  type metadata accessor for FeedGroupEmitTask(0, v11, AssociatedConformanceWitness, v24);
  v25 = *(a6 + 40);
  v27 = *(a6 + 48);
  v26 = *(a6 + 56);
  v28 = *(a6 + 64);
  v45[0] = *(a6 + 32);
  v45[1] = v25;
  v45[2] = v27;
  v45[3] = v26;
  v46 = v28;

  v29 = v27;
  v30 = v26;

  v43 = sub_1D5C0BA9C();
  v44 = v31;
  sub_1D7261E3C();

  v32 = v40;

  v33 = sub_1D5EAE7D8(v45, v20, v37, v19, v22, v41, v32);

  (*(v38 + 8))(v19, v39);

  *v42 = v33;
}

uint64_t sub_1D6177B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v20;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v8[16] = a2;
  v8[17] = a3;
  v8[15] = a1;
  v9 = *(*a4 + 80);
  v8[24] = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8[25] = AssociatedConformanceWitness;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8[26] = swift_getAssociatedTypeWitness();
  v11 = sub_1D726393C();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v13 = type metadata accessor for FeedGroupEmitTaskResult(255, v9, AssociatedConformanceWitness, v12);
  v8[32] = v13;
  v14 = sub_1D726393C();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = *(v13 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v16 = type metadata accessor for FeedGroupEmitTaskGroupResult(255, v9, AssociatedConformanceWitness, v15);
  v8[42] = v16;
  v17 = sub_1D726393C();
  v8[43] = v17;
  v8[44] = *(v17 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = *(v16 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6177F34, 0, 0);
}

uint64_t sub_1D6177F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = v4;
  v5 = MEMORY[0x1E69E7CD0];
  *(v4 + 80) = MEMORY[0x1E69E7CD0];
  *(v4 + 88) = v5;
  *(v4 + 400) = type metadata accessor for FeedGroupEmitTask(0, *(v4 + 192), *(v4 + 200), a4);
  if (sub_1D726279C())
  {
    v6 = 0;
    v30 = *(v4 + 136) + 32;
    do
    {
      v11 = sub_1D726277C();
      sub_1D726271C();
      if (v11)
      {
        v12 = *(v30 + 8 * v6);

        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = sub_1D7263DBC();
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      v14 = sub_1D5C0BA9C();
      sub_1D5B860D0(&v34, v14, v15);

      sub_1D6B6AEAC();
      if (v33 == 1 && (*(v12 + 65) & 1) == 0)
      {
        v16 = sub_1D5C0BA9C();
        sub_1D5B860D0(&v34, v16, v17);
      }

      v7 = *(v4 + 392);
      v8 = sub_1D726294C();
      v31 = *(v4 + 176);
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = v31;
      *(v9 + 48) = v12;
      v10 = sub_1D72628EC();
      sub_1D6179CB0(v7, &unk_1D72A6920, v9, v10);
      sub_1D5B88AA0(v7, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      ++v6;
    }

    while (v13 != sub_1D726279C());
  }

  v18 = *(v4 + 392);
  v19 = *(v4 + 144);
  v20 = sub_1D726294C();
  *(v4 + 408) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v4 + 416) = v22;
  *(v4 + 424) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v32 = *(v4 + 176);
  v22(v18, 1, 1, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v32;
  *(v23 + 48) = v19;
  v24 = sub_1D72628EC();
  *(v4 + 432) = v24;

  sub_1D6179CB0(v18, &unk_1D72A6930, v23, v24);
  sub_1D5B88AA0(v18, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  v25 = sub_1D7261CEC();
  *(v4 + 96) = v25;
  *(v4 + 440) = v25;
  *(v4 + 448) = v25;
  *(v4 + 464) = 0;
  v26 = swift_task_alloc();
  *(v4 + 456) = v26;
  *v26 = v4;
  v26[1] = sub_1D6178390;
  v27 = *(v4 + 432);
  v28 = *(v4 + 360);

  return MEMORY[0x1EEE6D8A0](v28, 0, 0, v27);
}

uint64_t sub_1D6178390()
{

  return MEMORY[0x1EEE6DFA0](sub_1D617848C, 0, 0);
}

uint64_t sub_1D617848C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 448);
    v5 = *(v0 + 344);
    v6 = *(v0 + 352);
    v7 = *(v0 + 120);

    (*(v6 + 8))(v1, v5);
    *v7 = v4;
LABEL_3:
    sub_1D617A26C(*(v0 + 128), *(v0 + 176), *(v0 + 184));

    v8 = *(v0 + 8);

    return v8();
  }

  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  (*(v2 + 32))(v10, v1, v3);
  (*(v2 + 16))(v11, v10, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v228 = *(v0 + 448);
        v13 = *(v0 + 384);
        v14 = *(v0 + 368);
        v15 = *(v0 + 336);
        v17 = *(v0 + 160);
        v16 = *(v0 + 168);
        v18 = *(v0 + 152);
        v19 = *(v0 + 120);

        v20 = sub_1D7262EBC();
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1D7273AE0;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = sub_1D5B7E2C0();
        *(v21 + 32) = v17;
        *(v21 + 40) = v16;

        sub_1D725C30C("Emit task [%{public}@] cancelling due to next revision", 54, 2, &dword_1D5B42000, v18, v20, v21);

        (*(v14 + 8))(v13, v15);
        *v19 = v228;
        goto LABEL_3;
      }

      v67 = *(v0 + 384);
      v68 = *(v0 + 368);
      v69 = *(v0 + 336);
      v71 = *(v0 + 160);
      v70 = *(v0 + 168);
      v72 = *(v0 + 152);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1D7273AE0;
      *(v73 + 56) = MEMORY[0x1E69E6158];
      *(v73 + 64) = sub_1D5B7E2C0();
      *(v73 + 32) = v71;
      *(v73 + 40) = v70;

      v74 = sub_1D7262EDC();
      sub_1D725C30C("Emit task [%{public}@] deferring for gap on screen cancelled", 60, 2, &dword_1D5B42000, v72, v74, v73);

      (*(v68 + 8))(v67, v69);
      v76 = *(v0 + 440);
      v75 = *(v0 + 448);
      goto LABEL_71;
    }

    v43 = *(v0 + 160);
    v44 = *(v0 + 168);
    v45 = *(v0 + 152);
    v46 = sub_1D7262EBC();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7270C10;
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v217 = sub_1D5B7E2C0();
    *(v47 + 64) = v217;
    *(v47 + 32) = v43;
    *(v47 + 40) = v44;

    v48 = sub_1D7261DDC();
    v49 = MEMORY[0x1E69E65A8];
    *(v47 + 96) = MEMORY[0x1E69E6530];
    *(v47 + 104) = v49;
    *(v47 + 72) = v48;
    sub_1D725C30C("Emit task [%{public}@] gap on screen timeout occurred, checking %ld results for a group", 87, 2, &dword_1D5B42000, v45, v46, v47);

    nullsub_1();
    v51 = v50 + 64;
    v52 = -1;
    v53 = -1 << *(v50 + 32);
    if (-v53 < 64)
    {
      v52 = ~(-1 << -v53);
    }

    v54 = v52 & *(v50 + 64);
    v55 = (63 - v53) >> 6;
    v231 = v50;

    v60 = 0;
    if (v54)
    {
      while (1)
      {
        v61 = v60;
LABEL_23:
        v63 = *(v0 + 304);
        v62 = *(v0 + 312);
        v64 = *(v0 + 256);
        v65 = *(v0 + 232);
        v66 = *(v0 + 208);
        (*(v63 + 16))(v62, *(v231 + 56) + *(v63 + 72) * (__clz(__rbit64(v54)) | (v61 << 6)), v64);
        sub_1D71A8604(v65);
        (*(v63 + 8))(v62, v64);
        if ((*(*(v66 - 8) + 48))(v65, 1, v66) != 1)
        {
          break;
        }

        v54 &= v54 - 1;
        v56 = (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        v60 = v61;
        if (!v54)
        {
          goto LABEL_20;
        }
      }

      v215 = *(v0 + 440);
      v179 = *(v0 + 384);
      v180 = *(v0 + 368);
      v181 = *(v0 + 336);
      v182 = *(v0 + 160);
      v183 = *(v0 + 168);
      v184 = *(v0 + 152);
      v185 = *(v0 + 120);
      (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

      v186 = sub_1D7262EBC();
      v187 = swift_allocObject();
      *(v187 + 16) = xmmword_1D7273AE0;
      *(v187 + 56) = MEMORY[0x1E69E6158];
      *(v187 + 64) = v217;
      *(v187 + 32) = v182;
      *(v187 + 40) = v183;

      sub_1D725C30C("Emit task [%{public}@] gap on screen timeout found at least 1 group to resolve", 78, 2, &dword_1D5B42000, v184, v186, v187);

      (*(v180 + 8))(v179, v181);
      *v185 = v215;
      goto LABEL_3;
    }

LABEL_20:
    while (1)
    {
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v61 >= v55)
      {
        v88 = *(v0 + 384);
        v89 = *(v0 + 368);
        v90 = *(v0 + 336);
        v91 = *(v0 + 160);
        v92 = *(v0 + 168);
        v93 = *(v0 + 152);

        v94 = sub_1D7262EBC();
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_1D7273AE0;
        *(v95 + 56) = MEMORY[0x1E69E6158];
        *(v95 + 64) = v217;
        *(v95 + 32) = v91;
        *(v95 + 40) = v92;

        sub_1D725C30C("Emit task [%{public}@] gap on screen timeout does not have a group to emit, will wait for the next available group", 114, 2, &dword_1D5B42000, v93, v94, v95);

        (*(v89 + 8))(v88, v90);
        v76 = *(v0 + 440);
        v75 = *(v0 + 448);
        v96 = 1;
        goto LABEL_72;
      }

      v54 = *(v51 + 8 * v61);
      ++v60;
      if (v54)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = *(v0 + 464);
    v23 = *(v0 + 328);
    v24 = *(v0 + 296);
    v25 = *(v0 + 304);
    v26 = *(v0 + 256);
    (*(v25 + 32))(v23, *(v0 + 376), v26);
    v27 = sub_1D5C0BA9C();
    v29 = v28;
    v229 = *(v25 + 16);
    v229(v24, v23, v26);
    (*(v25 + 56))(v24, 0, 1, v26);
    *(v0 + 48) = v27;
    *(v0 + 56) = v29;
    v30 = MEMORY[0x1E69E6158];
    sub_1D7261E1C();
    sub_1D7261E4C();
    if (v22 == 1)
    {
      v31 = *(v0 + 248);
      v32 = *(v0 + 208);
      sub_1D71A8604(v31);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
      {
        v161 = *(v0 + 368);
        v214 = *(v0 + 336);
        v222 = *(v0 + 384);
        v162 = *(v0 + 304);
        v227 = *(v0 + 256);
        v234 = *(v0 + 328);
        v204 = *(v0 + 176);
        v209 = *(v0 + 184);
        v164 = *(v0 + 160);
        v163 = *(v0 + 168);
        v198 = *(v0 + 136);
        v201 = *(v0 + 144);
        v193 = *(v0 + 152);
        v195 = *(v0 + 120);
        (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));

        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_1D7279970;
        *(v165 + 56) = v30;
        v166 = sub_1D5B7E2C0();
        *(v165 + 64) = v166;
        *(v165 + 32) = v164;
        *(v165 + 40) = v163;

        v167 = sub_1D6B6AE5C();
        *(v165 + 96) = v30;
        *(v165 + 104) = v166;
        *(v165 + 72) = v167;
        *(v165 + 80) = v168;
        v169 = sub_1D5C0BA9C();
        *(v165 + 136) = v30;
        *(v165 + 144) = v166;
        *(v165 + 112) = v169;
        *(v165 + 120) = v170;
        v171 = sub_1D7262EDC();
        sub_1D725C30C("Emit task [%{public}@] resolving for fast emit with %{public}@ emitter identifier=%{public}@", 92, 2, &dword_1D5B42000, v193, v171, v165);

        *v195 = *(v0 + 96);

        sub_1D617A310(v198, v0 + 96, v193, v164, v163, v201, v204, v209);
        (*(v161 + 8))(v222, v214);
        (*(v162 + 8))(v234, v227);
        goto LABEL_76;
      }

      (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    }

    v33 = *(v0 + 96);
    nullsub_1();
    *(v0 + 112) = v34;
    sub_1D7261DCC();

    swift_getWitnessTable();
    v35 = sub_1D7262BBC();
    sub_1D6D0A744(v35, *(v0 + 80));
    if ((v36 & 1) == 0)
    {
      v97 = *(v0 + 88);
      sub_1D6D0A744(v35, v97);
      v99 = v98;

      if ((v99 & 1) == 0)
      {
LABEL_78:
        v172 = *(v0 + 384);
        v173 = v33;
        v174 = *(v0 + 368);
        v176 = *(v0 + 328);
        v175 = *(v0 + 336);
        v177 = *(v0 + 304);
        v178 = *(v0 + 256);
        sub_1D617A310(*(v0 + 136), v0 + 96, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144), *(v0 + 176), *(v0 + 184));
        (*(v174 + 8))(v172, v175);
        v76 = v173;
        (*(v177 + 8))(v176, v178);
        v96 = *(v0 + 464);
        v75 = v173;
LABEL_72:
        *(v0 + 440) = v76;
        *(v0 + 448) = v75;
        *(v0 + 464) = v96;
        v160 = swift_task_alloc();
        *(v0 + 456) = v160;
        *v160 = v0;
        v160[1] = sub_1D6178390;
        v59 = *(v0 + 432);
        v56 = *(v0 + 360);
        v57 = 0;
        v58 = 0;

        return MEMORY[0x1EEE6D8A0](v56, v57, v58, v59);
      }

      v100 = v97 + 56;
      v101 = -1;
      v102 = -1 << *(v97 + 32);
      if (-v102 < 64)
      {
        v101 = ~(-1 << -v102);
      }

      v103 = v101 & *(v97 + 56);
      v104 = (63 - v102) >> 6;

      v105 = 0;
      v194 = v33;
      v224 = v97;
      while (v103)
      {
LABEL_41:
        v109 = *(v0 + 304);
        v110 = *(v0 + 288);
        v111 = *(v0 + 256);
        v112 = (*(v97 + 48) + ((v105 << 10) | (16 * __clz(__rbit64(v103)))));
        v113 = v112[1];
        *(v0 + 64) = *v112;
        *(v0 + 72) = v113;

        sub_1D7261E3C();

        if ((*(v109 + 48))(v110, 1, v111))
        {
          v106 = *(v0 + 240);
          v107 = *(v0 + 208);
          (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
          (*(*(v107 - 8) + 56))(v106, 1, 1, v107);
        }

        else
        {
          v114 = *(v0 + 320);
          v115 = *(v0 + 304);
          v116 = *(v0 + 288);
          v117 = *(v0 + 272);
          v118 = *(v0 + 256);
          v206 = *(v0 + 264);
          v211 = *(v0 + 240);
          v218 = *(v0 + 208);
          v229(v114, v116, v118);
          (*(v117 + 8))(v116, v206);
          v33 = v194;
          sub_1D71A8604(v211);
          v119 = v118;
          v120 = *(v115 + 8);
          v120(v114, v119);
          if ((*(*(v218 - 8) + 48))(v211, 1) != 1)
          {
            v121 = *(v0 + 368);
            v207 = *(v0 + 336);
            v212 = *(v0 + 384);
            v233 = *(v0 + 328);
            v219 = *(v0 + 256);
            v122 = *(v0 + 240);
            v123 = *(v0 + 216);
            v124 = *(v0 + 224);
            v203 = *(v0 + 184);
            v197 = *(v0 + 176);
            v191 = *(v0 + 160);
            v192 = *(v0 + 168);
            v189 = *(v0 + 152);
            v190 = *(v0 + 144);
            v188 = *(v0 + 136);
            v125 = *(v0 + 120);

            (*(v124 + 8))(v122, v123);

            *v125 = v194;

            sub_1D617A310(v188, v0 + 96, v189, v191, v192, v190, v197, v203);
            (*(v121 + 8))(v212, v207);
            v120(v233, v219);
            goto LABEL_76;
          }
        }

        v103 &= v103 - 1;
        v56 = (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
        v97 = v224;
      }

      while (1)
      {
        v108 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          break;
        }

        if (v108 >= v104)
        {

          goto LABEL_78;
        }

        v103 = *(v100 + 8 * v108);
        ++v105;
        if (v103)
        {
          v105 = v108;
          goto LABEL_41;
        }
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v37 = *(v0 + 368);
    v210 = *(v0 + 336);
    v216 = *(v0 + 384);
    v38 = *(v0 + 304);
    v223 = *(v0 + 256);
    v230 = *(v0 + 328);
    v202 = *(v0 + 176);
    v205 = *(v0 + 184);
    v39 = *(v0 + 160);
    v40 = *(v0 + 152);
    v196 = *(v0 + 144);
    v199 = *(v0 + 168);
    v41 = *(v0 + 136);
    v42 = *(v0 + 120);

    *v42 = v33;

    sub_1D617A310(v41, v0 + 96, v40, v39, v199, v196, v202, v205);
    (*(v37 + 8))(v216, v210);
    (*(v38 + 8))(v230, v223);
LABEL_76:

    goto LABEL_3;
  }

  v77 = **(v0 + 376);
  v78 = *(v0 + 160);
  v79 = *(v0 + 168);
  v80 = *(v0 + 152);
  v232 = v77;
  if (v77)
  {
    v81 = v77;
    v82 = sub_1D7262EBC();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1D7270C10;
    v84 = MEMORY[0x1E69E6158];
    *(v83 + 56) = MEMORY[0x1E69E6158];
    v85 = sub_1D5B7E2C0();
    *(v83 + 64) = v85;
    *(v83 + 32) = v78;
    *(v83 + 40) = v79;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    *(v0 + 104) = v77;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);

    sub_1D7263F9C();
    v86 = *(v0 + 32);
    v87 = *(v0 + 40);
    *(v83 + 96) = v84;
    *(v83 + 104) = v85;
    *(v83 + 72) = v86;
    *(v83 + 80) = v87;
    sub_1D725C30C("Emit task [%{public}@] gap on screen with error=%{public}@", 58, 2, &dword_1D5B42000, v80, v82, v83);
  }

  else
  {
    v126 = sub_1D7262EBC();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_1D7273AE0;
    *(v127 + 56) = MEMORY[0x1E69E6158];
    *(v127 + 64) = sub_1D5B7E2C0();
    *(v127 + 32) = v78;
    *(v127 + 40) = v79;

    sub_1D725C30C("Emit task [%{public}@] gap on screen", 36, 2, &dword_1D5B42000, v80, v126, v127);
  }

  if (!sub_1D726279C())
  {
    v220 = (v0 + 440);
LABEL_70:
    v76 = *v220;
    v157 = *(v0 + 384);
    v158 = *(v0 + 368);
    v159 = *(v0 + 336);

    (*(v158 + 8))(v157, v159);
    v75 = *(v0 + 448);
LABEL_71:
    v96 = *(v0 + 464);
    goto LABEL_72;
  }

  v128 = 0;
  v213 = 0;
  v220 = (v0 + 448);
  v129 = 1;
  while (2)
  {
    v225 = v129;
    v130 = v128;
    while (1)
    {
      v131 = sub_1D726277C();
      sub_1D726271C();
      if (v131)
      {
        v132 = *(*(v0 + 136) + 8 * v130 + 32);

        v128 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        v56 = sub_1D7263DBC();
        v132 = v56;
        v128 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_81;
        }
      }

      v133 = *(v0 + 304);
      v134 = *(v0 + 280);
      v135 = *(v0 + 256);
      *(v0 + 16) = sub_1D5C0BA9C();
      *(v0 + 24) = v136;
      sub_1D7261E3C();

      v137 = (*(v133 + 48))(v134, 1, v135);
      v139 = *(v0 + 272);
      v138 = *(v0 + 280);
      v140 = *(v0 + 264);
      if (v137 == 1)
      {
        break;
      }

      (*(v139 + 8))(v138, v140);
LABEL_49:
      ++v130;
      if (v128 == sub_1D726279C())
      {
        if (v225)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }
    }

    (*(v139 + 8))(*(v0 + 280), *(v0 + 264));
    v141 = *(v132 + 24);
    v142 = *(v132 + 32);

    if (v142)
    {
      goto LABEL_49;
    }

    v143 = v213;
    if (v225)
    {
      v143 = 0;
    }

    if ((~*&v141 & 0x7FF0000000000000) == 0)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      break;
    }

    if (v141 <= -1.0)
    {
      goto LABEL_84;
    }

    if (v141 < 1.84467441e19)
    {
      if (v143 <= v141)
      {
        v143 = v141;
      }

      v213 = v143;
      v144 = sub_1D726279C();
      v129 = 0;
      if (v128 == v144)
      {
LABEL_68:
        v208 = *(v0 + 432);
        v146 = *(v0 + 408);
        v145 = *(v0 + 416);
        v147 = *(v0 + 392);
        v226 = *(v0 + 384);
        v148 = *(v0 + 368);
        v221 = *(v0 + 336);
        v149 = *(v0 + 160);
        v150 = *(v0 + 168);
        v151 = *(v0 + 152);
        v200 = *(v0 + 176);
        v152 = sub_1D7262E9C();
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1D7270C10;
        *(v153 + 56) = MEMORY[0x1E69E6158];
        v154 = sub_1D5B7E2C0();
        *(v153 + 32) = v149;
        *(v153 + 40) = v150;
        v155 = MEMORY[0x1E69E7738];
        *(v153 + 96) = MEMORY[0x1E69E76D8];
        *(v153 + 104) = v155;
        *(v153 + 64) = v154;
        *(v153 + 72) = v213;

        sub_1D725C30C("Emit task [%{public}@] gap on screen will schedule timeout for %ld seconds", 74, 2, &dword_1D5B42000, v151, v152, v153);

        sub_1D726291C();
        v145(v147, 0, 1, v146);
        v156 = swift_allocObject();
        *(v156 + 16) = 0;
        *(v156 + 24) = 0;
        *(v156 + 32) = v200;
        *(v156 + 48) = v213;
        sub_1D6179CB0(v147, &unk_1D72A6940, v156, v208);

        sub_1D5B88AA0(v147, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v148 + 8))(v226, v221);
        v76 = *(v0 + 448);
        v96 = *(v0 + 464);
        v75 = v76;
        goto LABEL_72;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return MEMORY[0x1EEE6D8A0](v56, v57, v58, v59);
}

uint64_t sub_1D6179A74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a1;
  v4[3] = *a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1D6179B3C;

  return sub_1D5EA8098(a1);
}

uint64_t sub_1D6179B3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6179C38, 0, 0);
}

uint64_t sub_1D6179C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedGroupEmitTaskGroupResult(0, *(*(v4 + 24) + 80), *(*(v4 + 24) + 88), a4);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 8);

  return v5();
}

double sub_1D6179CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E85F0];
  v11 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v25 - v14;
  sub_1D617D174(a1, v25 - v14, &qword_1EDF1ADB0, v10, v11, sub_1D5B6BFD8);
  v16 = sub_1D726294C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D5B88AA0(v15, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1D726285C();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D726293C();
    (*(v17 + 8))(v15, v16);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v5;
  v22 = swift_allocObject();
  v22[2] = *(a4 + 16);
  v22[3] = a2;
  v22[4] = a3;
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v26[0] = 0;
    v26[1] = 0;
    v23 = v26;
    v26[2] = v18;
    v26[3] = v20;
  }

  v25[1] = 1;
  v25[2] = v23;
  v25[3] = v21;
  swift_task_create();

  return result;
}

uint64_t sub_1D6179F44()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D617A0D4;
  }

  else
  {
    v2 = sub_1D617A058;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D617A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 72);
  **(v4 + 64) = 0;
  type metadata accessor for FeedGroupEmitTaskGroupResult(0, *(v5 + 80), *(v5 + 88), a4);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1D617A0D4()
{
  v1 = *(v0 + 88);
  *(v0 + 56) = v1;
  v2 = *(v0 + 72);
  v3 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for FeedServiceError(0, v4, v5, v6);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    if (v11 == 6)
    {
      if ((v12 = v9 | v8 | v10, v7 == 12) && !v12 || v7 == 13 && !v12)
      {

        type metadata accessor for FeedGroupEmitTaskGroupResult(0, v4, v5, v13);
        swift_storeEnumTagMultiPayload();

        goto LABEL_10;
      }
    }

    sub_1D5EAD330(v7, v8, v9, v10, v11);
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 64);

  *v15 = v14;
  type metadata accessor for FeedGroupEmitTaskGroupResult(0, v4, v5, v16);
  swift_storeEnumTagMultiPayload();
LABEL_10:
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D617A26C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for FeedGroupEmitTaskGroupResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);

  return MEMORY[0x1EEE6D8B8](v3, v7, v8, v9);
}

void sub_1D617A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for FeedGroupEmitTask(255, *(*a6 + 80), *(*a6 + 88), a4);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7263E7C();
  swift_getWitnessTable();
  v11 = sub_1D726241C();
  swift_getWitnessTable();
  v12 = sub_1D7262CCC();

  if (v12 & 1) == 0 && (v11)
  {
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7273AE0;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1D5B7E2C0();
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;

    v14 = sub_1D7262EDC();
    sub_1D725C30C("Emit task [%{public}@] all remaining emitters are deferring for gap on screen...", 80, 2, &dword_1D5B42000, a3, v14, v13);

    sub_1D5FE66F8(v15, v16, v17, v18);
  }
}

uint64_t sub_1D617A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1D7263F5C();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D617A618, 0, 0);
}

uint64_t sub_1D617A618(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1D726496C();
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  v5[1] = sub_1D617A6F8;

  return sub_1D6CDBFF8(v3, v4, 0, 0, 1);
}

uint64_t sub_1D617A6F8()
{
  v2 = *v1;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1D617DADC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1D617A890;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D617A890()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitTaskGroupResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  swift_storeEnumTagMultiPayload();

  v4 = *(v0 + 8);

  return v4();
}

void sub_1D617A970(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, char *a6@<X8>)
{
  v50 = a6;
  v47 = a3;
  v49 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v48 = type metadata accessor for FeedGroupEmitterOutput(0, v9, v10, v11);
  MEMORY[0x1EEE9AC00](v48, v12);
  v14 = (&v46 - v13);
  v16 = type metadata accessor for FeedGroupEmitTaskResult(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v17 = sub_1D726393C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v46 - v20;
  v22 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v46 - v25;
  v27 = *a1;
  v51 = sub_1D5C0BA9C();
  v52 = v28;
  sub_1D7261E3C();

  if ((*(v22 + 48))(v21, 1, v16) == 1)
  {
    (*(v18 + 8))(v21, v17);
    *v14 = 0xD00000000000002CLL;
    v14[1] = 0x80000001D73CC400;
    swift_storeEnumTagMultiPayload();
    v29 = *(v27 + 16);
    v51 = 0;
    LOBYTE(v52) = 1;
    v53 = 0;
    v54 = 1;
    v55 = 0;
    v56 = 1;
    sub_1D71A8414(v14, v29, MEMORY[0x1E69E7CC0], &v51, v50, 0.0);

    return;
  }

  v49 = v14;
  v30 = v50;
  v46 = v22;
  v31 = *(v22 + 32);
  v31(v26, v21, v16);
  if (sub_1D6EB5F68(v48))
  {
    v32 = v30;
    if (*v47)
    {
      v33 = v49;
      *v49 = 0xD00000000000004FLL;
      *(v33 + 8) = 0x80000001D73CC430;
      swift_storeEnumTagMultiPayload();
      v34 = *(v27 + 16);
      v35 = *&v26[v16[10]];
      v36 = &v26[v16[11]];
      v37 = *v36;
      v38 = v36[8];
      v39 = *(v36 + 2);
      v40 = v36[24];
      v41 = *(v36 + 4);
      v42 = v36[40];
      LOBYTE(v36) = v36[41];
      v51 = v37;
      LOBYTE(v52) = v38;
      v53 = v39;
      v54 = v40;
      v55 = v41;
      LOBYTE(v56) = v42;
      HIBYTE(v56) = v36;
      v43 = *&v26[v16[12]];
      v44 = *(v46 + 8);

      v44(v26, v16);
      sub_1D71A8414(v33, v34, v35, &v51, v32, v43);
      return;
    }

    *v47 = 1;
    v45 = v30;
  }

  else
  {
    v45 = v30;
  }

  v31(v45, v26, v16);
}

uint64_t sub_1D617AE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v25 - v11;
  (*(v8 + 16))(&v25 - v11, a1, v7, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      (*(v8 + 8))(v12, v7);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CA0];
      v16 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5B88AA0(&v12[*(TupleTypeMetadata2 + 48)], &qword_1EDF43B70, v15 + 8, v16, sub_1D5BEE1B8);
      (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 4 || EnumCaseMultiPayload == 5)
    {
      (*(v8 + 8))(v12, v7);
      return 0;
    }

    v19 = type metadata accessor for FeedGroupEmitterEmbeddedOutput(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
    sub_1D5B49474(255, qword_1EDF37D80, &protocol descriptor for FeedCursorEmbeddable);
    v20 = *(swift_getTupleTypeMetadata2() + 48);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21)
    {
      if (v21 != 1)
      {
        (*(*(v19 - 8) + 8))(v12, v19);
        __swift_destroy_boxed_opaque_existential_1(&v12[v20]);
        return 0;
      }

      (*(*(v19 - 8) + 8))(v12, v19);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CA0];
      v23 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v24 = swift_getTupleTypeMetadata2();
      sub_1D5B88AA0(&v12[*(v24 + 48)], &qword_1EDF43B70, v22 + 8, v23, sub_1D5BEE1B8);
      (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v12[v20]);
  }

  return 1;
}

double sub_1D617B280@<D0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = a1 + *(type metadata accessor for FeedScoredResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8) + 44);
  *a4 = *(v9 + *(type metadata accessor for FeedGroupEmitTaskResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10) + 36));

  return result;
}

uint64_t FeedService.deinit()
{

  v1 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();
  sub_1D617D2E4(v0 + 120, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding);
  return v0;
}

uint64_t FeedService.__deallocating_deinit()
{
  FeedService.deinit();

  return swift_deallocClassInstance();
}

double sub_1D617B400(uint64_t a1)
{
  sub_1D617C808();

  return result;
}

uint64_t FeedServiceType.fetchAllGroups(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_1D725BDCC();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = sub_1D725B92C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1D72627FC();
  v10 = sub_1D725BA7C();

  return v10;
}

uint64_t sub_1D617B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_1D726275C();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = sub_1D617B760(&v10, v6, sub_1D5DF55B8, v7, a3, a4);

  return v8;
}

uint64_t sub_1D617B760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v27 = a3;
  v28 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = *v13;
  v29 = v15;
  v30 = v16;
  v31 = v7;
  v32 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  sub_1D725BDCC();
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a5);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a5;
  *(v21 + 3) = a6;
  v22 = v27;
  v23 = v28;
  *(v21 + 4) = a2;
  *(v21 + 5) = v22;
  *(v21 + 6) = v23;
  (*(v11 + 32))(&v21[v20], &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5);

  v24 = sub_1D725B92C();
  v25 = sub_1D725BA7C();

  return v25;
}

uint64_t sub_1D617B974(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v21 - v10;
  v12 = *a1;
  v13 = v12 >> 61;
  if ((v12 >> 61) <= 1)
  {
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else if (v13 != 2)
  {
    if (v13 != 3)
    {
      sub_1D72627FC();
      sub_1D725BC0C();
      v22 = sub_1D726275C();
      return sub_1D725BB0C();
    }

LABEL_6:
    v14 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D72627FC();
    sub_1D725BC0C();
    v22 = v14;

    return sub_1D725BB0C();
  }

  type metadata accessor for FeedCursorContainer(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v16 = swift_projectBox();
  v17 = *(v7 + 16);
  v17(v11, v16, v6);
  sub_1D72627FC();
  sub_1D725BC0C();
  sub_1D5D0DDD4(v6, v6);
  swift_allocObject();
  v18 = sub_1D726270C();
  v17(v19, v11, v6);
  v22 = sub_1D5BFCB60(v18, v6);
  v20 = sub_1D725BB0C();
  (*(v7 + 8))(v11, v6);
  return v20;
}

uint64_t FeedServiceType.fetchAll(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1D726275C();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = sub_1D617B760(&v9, v5, sub_1D5DF55B8, v6, a2, a3);

  return v7;
}

uint64_t sub_1D617BDCC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a5;
  v74 = a4;
  v75 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v76 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v23 = &v69 - v22;
  v24 = *a1;
  v25 = v24 >> 61;
  if ((v24 >> 61) <= 1)
  {
    v71 = a3;
    v28 = v74;
    if (v25)
    {
      v60 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v61 = sub_1D726274C();
      v62 = v28;
      v63 = v71;
      if (v71())
      {
        type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, v76, v64);
        sub_1D725BC0C();
        v65 = swift_allocObject();
        *(v65 + 16) = v61;
        *(v65 + 24) = v60;
        v77 = v65 | 0x2000000000000000;

        return sub_1D725BB0C();
      }

      else
      {
        swift_checkMetadataState();
        static FeedLocation.container(_:)(v60, &v77);
        v68 = sub_1D617B760(&v77, v61, v63, v62, a6, a7);

        return v68;
      }
    }

    v72 = v7;
    v29 = v21;
    type metadata accessor for FeedCursorContainer(255, AssociatedTypeWitness, v76, v20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v31 = swift_projectBox();
    v32 = *(v31 + *(TupleTypeMetadata2 + 48));
    v70 = v29;
    v33 = *(v29 + 16);
    v33(v23, v31, v14);
    sub_1D5D0DDD4(v14, v14);
    swift_allocObject();
    v69 = v32;

    v34 = sub_1D726270C();
    v33(v35, v23, v14);
    sub_1D5BFCB60(v34, v14);
    v36 = sub_1D726274C();

    v37 = v28;
    v38 = v71;
    if ((v71)(v36))
    {
      type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, v76, v39);
      sub_1D725BC0C();
      v40 = swift_allocObject();
      v41 = v69;
      *(v40 + 16) = v36;
      *(v40 + 24) = v41;
      v77 = v40 | 0x2000000000000000;
      v42 = sub_1D725BB0C();
    }

    else
    {
      static FeedLocation.container(_:)(v69, &v77);
      v42 = sub_1D617B760(&v77, v36, v38, v37, a6, a7);
    }

    (*(v70 + 8))(v23, v14);
    return v42;
  }

  if (v25 == 2)
  {
    v43 = v76;
    v44 = v21;
    type metadata accessor for FeedCursorContainer(255, AssociatedTypeWitness, v76, v20);
    v45 = swift_getTupleTypeMetadata2();
    v72 = v7;
    v46 = v45;
    v47 = swift_projectBox();
    v48 = *(v47 + *(v46 + 48));
    v49 = *(v44 + 16);
    v49(v17, v47, v14);
    type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, v43, v50);
    v76 = sub_1D725BC0C();
    v51 = swift_allocObject();
    sub_1D5D0DDD4(v14, v14);
    swift_allocObject();

    v52 = sub_1D726270C();
    v49(v53, v17, v14);
    sub_1D5BFCB60(v52, v14);
    v54 = sub_1D726274C();

    *(v51 + 16) = v54;
    *(v51 + 24) = v48;
    v77 = v51 | 0x6000000000000000;
    v42 = sub_1D725BB0C();
    (*(v44 + 8))(v17, v14);
    return v42;
  }

  if (v25 == 3)
  {
    v26 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, v76, v20);
    sub_1D725BC0C();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1D726274C();
    *(v27 + 24) = v26;
    v77 = v27 | 0x6000000000000000;
  }

  else
  {
    v55 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v56 = v75;
    v77 = v75;
    sub_1D72627FC();

    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      v59 = v57 | 0x8000000000000000;
    }

    else
    {
      v67 = swift_allocObject();
      *(v67 + 16) = v56;
      *(v67 + 24) = v55;
      v59 = v67 | 0x6000000000000000;
    }

    type metadata accessor for FeedServiceFetchResult(255, AssociatedTypeWitness, v76, v58);
    sub_1D725BC0C();
    v77 = v59;
  }

  return sub_1D725BB0C();
}

void sub_1D617C514(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FeedGroupEmitter(255, a4, a5, a4);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7263E7C();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
  }

  else
  {
    sub_1D7261E1C();
    sub_1D7261E4C();
  }
}

BOOL sub_1D617C650(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for FeedGroupEmitTaskResult(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v16 - v11;
  v16[0] = sub_1D5C0BA9C();
  v16[1] = v13;
  sub_1D7261E3C();

  v14 = (*(*(v7 - 8) + 48))(v12, 1, v7) == 1;
  (*(v9 + 8))(v12, v8);
  return v14;
}

uint64_t sub_1D617C808()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedServiceContextType.feedMode.getter(AssociatedTypeWitness, AssociatedConformanceWitness, &v5);
  v3 = 16;
  if (v5)
  {
    v3 = 24;
  }

  return *(v0 + v3);
}

uint64_t sub_1D617C9B4(uint64_t a1)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for FeedReplaceLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D5B64680;

  return sub_1D616069C(a1, v10, v1 + v9);
}

double sub_1D617CBE4()
{
  nullsub_1();

  return result;
}

uint64_t sub_1D617CCB4(uint64_t a1, uint64_t a2)
{
  sub_1D5B5DD74(0, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D617CD6C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D6B6AE5C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D617CDE0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D5B64680;

  return sub_1D6177B68(a1, a2, v7, v8, v9, v10, v11, v6);
}

uint64_t sub_1D617CF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6179A74(a1, v4, v5, v6);
}

uint64_t objectdestroy_69Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D617D07C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D617A554(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1D617D174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D617D1E8(uint64_t *a1)
{

  swift_getAtKeyPath();
}

BOOL sub_1D617D260()
{
  v1 = *(v0 + 32);
  v2 = sub_1D5C0BA9C();
  LOBYTE(v1) = sub_1D5BE240C(v2, v3, v1);

  return (v1 & 1) == 0;
}

uint64_t sub_1D617D2E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B5DD74(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D617D354()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  return (*(v2 + 32))(&v4, v1);
}

uint64_t objectdestroy_40Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D617D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for FeedScoredResult(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    type metadata accessor for FeedGroupEmitter(255, v4, v5, v7);
    result = sub_1D72627FC();
    if (v9 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for FeedGroupEmitterCachedOutput(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
      result = sub_1D7261E1C();
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D617D5C0(int *a1, int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  if (v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 48 > v6)
  {
    v6 = (v6 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 | 7;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v11 = ((((((v7 + 31) & ~v8) + (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_9:
      v9 = *((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8) + v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

void sub_1D617D7E8(int *a1, int a2, int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  if (v8 <= ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v8 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  if ((v8 & 0xFFFFFFFFFFFFFFF8) + 48 > v8)
  {
    v8 = (v8 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v9 = *(v7 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = ((((((v9 + 31) & ~(v9 | 7)) + (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v13 = a3 - 2147483646;
    if (v11)
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = v14;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    v15 = a2 & 0x7FFFFFFF;
    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15 + 1;
    }

    if (v11)
    {
      bzero(a1, v11);
      *a1 = v15;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v12)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  v12 = 0;
  if (a2 < 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (v12 <= 1)
  {
    if (v12)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v12 == 2)
  {
    *(a1 + v11) = 0;
    goto LABEL_32;
  }

  *(a1 + v11) = 0;
  if (a2)
  {
LABEL_33:
    *((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + v8 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

uint64_t sub_1D617DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeedGroupEmitTaskResult(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id FeedBannerAdView.bannerView.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1D617DB50(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1D617DCE0(*a1);
  v5 = v4 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = v2;
  *(v5 + 8) = v3;
  v7 = v2;

  sub_1D617DD78();
}

void FeedBannerAdView.bannerView.setter(id a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView];
  swift_beginAccess();
  if (*v5)
  {
    v6 = [*v5 superview];
    if (v6)
    {
      v7 = v6;

      if (v7 == v2)
      {
        v8 = *v5;
        if (*v5 && v8 != a1)
        {
          [v8 removeFromSuperview];
        }
      }
    }
  }

  v10 = *v5;
  *v5 = a1;
  *(v5 + 1) = a2;
  v11 = a1;

  if (*v5)
  {
    v12 = *v5;
    v13 = [v12 superview];
    if (!v13 || (v14 = v13, v13, v14 != v2))
    {
      [v2 addSubview_];
    }
  }

  else
  {
    v12 = v11;
  }
}

void sub_1D617DCE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = [v4 superview];
    if (v5)
    {
      v6 = v5;

      if (v6 == v1)
      {
        v7 = *&v1[v3];
        if (v7)
        {
          v8 = v7 == a1;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          [v7 removeFromSuperview];
        }
      }
    }
  }
}

void sub_1D617DD78()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 superview];
    if (!v4 || (v5 = v4, v4, v5 != v0))
    {
      [v0 addSubview_];
    }
  }
}

void (*FeedBannerAdView.bannerView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1D617DEB0;
}

void sub_1D617DEB0(id **a1, char a2)
{
  v2 = *a1;
  v4 = *a1 + 3;
  v3 = *v4;
  v5 = (*a1)[4];
  v6 = (*a1)[6] + (*a1)[5];
  if (a2)
  {
    v7 = v3;
    sub_1D617DCE0(v3);
    v8 = *v6;
    *v6 = v3;
    *(v6 + 1) = v5;
    v9 = v7;

    if (*v6)
    {
      v10 = *v6;
      v11 = [v10 superview];
      if (!v11 || (v12 = v2[5], v13 = v11, v11, v13 != v12))
      {
        [v2[5] addSubview_];
      }
    }

    v14 = *v4;
  }

  else
  {
    sub_1D617DCE0((*a1)[3]);
    v15 = *v6;
    *v6 = v3;
    *(v6 + 1) = v5;
    v14 = v3;

    if (*v6)
    {
      v16 = *v6;
      v17 = [v16 superview];
      if (!v17 || (v18 = v2[5], v19 = v17, v17, v19 != v18))
      {
        [v2[5] addSubview_];
      }
    }
  }

  free(v2);
}

id FeedBannerAdView.debugView.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView];
  }

  else
  {
    sub_1D7260B2C();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v0 addSubview_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void FeedBannerAdView.debugView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView);
  *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView) = a1;
}

void (*FeedBannerAdView.debugView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = FeedBannerAdView.debugView.getter();
  return sub_1D617E100;
}

void sub_1D617E100(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView);
  *(v1 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView) = v2;
}

id FeedBannerAdView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FeedBannerAdView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id FeedBannerAdView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeedBannerAdView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id FeedBannerAdView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D617E470()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1D617E4F0()
{
  sub_1D5BBAF70(&qword_1EDF394C0, &protocol conformance descriptor for FeedBannerAdView);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t FormatProgressViewNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatProgressViewNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatProgressViewNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatProgressViewNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatProgressViewNodeStyle.progressColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatProgressViewNodeStyle.trackColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatProgressViewNodeStyle.__allocating_init(identifier:class:selectors:alpha:progressColor:trackColor:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char a9)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a7;
  v20 = *a8;
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = a9;
  return v17;
}

uint64_t FormatProgressViewNodeStyle.init(identifier:class:selectors:alpha:progressColor:trackColor:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, char a9)
{
  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  swift_beginAccess();
  *(v9 + 48) = a5;
  *(v9 + 56) = v15;
  *(v9 + 64) = v16;
  *(v9 + 72) = v17;
  *(v9 + 80) = a9;
  return v9;
}

uint64_t sub_1D617E8D4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v129 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v128 = a1;
  v9 = *(a1 + 48);
  v152 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (!__OFADD__(v10, *(v9 + 16)))
  {
    v136 = *(v9 + 16);
    v125 = v6;
    v127 = v4;
    sub_1D6180498(0);
    v126 = v5;

    v124 = v7;

    v138 = v9;

    sub_1D7261DAC();
    v151 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
    v145 = *(v8 + 16);
    v139 = v8;
    if (v145)
    {
      v11 = 0;
      v12 = (v8 + 72);
      while (1)
      {
        if (v11 >= *(v139 + 16))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v13 = *(v12 - 5);
        v14 = *(v12 - 4);
        v16 = *(v12 - 3);
        v15 = *(v12 - 2);
        v17 = *(v12 - 1);
        v147 = *v12;

        sub_1D5CFCFAC(v15);
        sub_1D5CFCFAC(v17);

        sub_1D5CFCFAC(v15);
        sub_1D5CFCFAC(v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = sub_1D6D8CB60();
        v21 = v152[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_84;
        }

        v25 = v20;
        if (v152[3] < v24)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_10;
        }

        v30 = v19;
        sub_1D6D8248C();
        v19 = v30;
        v27 = v152;
        if ((v25 & 1) == 0)
        {
LABEL_13:
          v27[(v19 >> 6) + 8] |= 1 << v19;
          v31 = (v27[6] + 16 * v19);
          *v31 = v13;
          v31[1] = v14;
          v32 = v27[7] + 48 * v19;
          *v32 = v13;
          *(v32 + 8) = v14;
          *(v32 + 16) = v16;
          *(v32 + 24) = v15;
          *(v32 + 32) = v17;
          *(v32 + 40) = v147;
          v33 = v27[2];
          v23 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v23)
          {
            goto LABEL_89;
          }

          v27[2] = v34;

          goto LABEL_15;
        }

LABEL_11:
        v28 = v27[7] + 48 * v19;
        v29 = *(v28 + 24);
        v141 = *(v28 + 32);
        *v28 = v13;
        *(v28 + 8) = v14;
        *(v28 + 16) = v16;
        *(v28 + 24) = v15;
        *(v28 + 32) = v17;
        *(v28 + 40) = v147;

        sub_1D5C84FF4(v29);
        sub_1D5C84FF4(v141);
LABEL_15:
        v152 = v27;

        sub_1D5C84FF4(v15);
        sub_1D5C84FF4(v17);
        v36 = *(v151 + 2);
        v35 = *(v151 + 3);
        if (v36 >= v35 >> 1)
        {
          v151 = sub_1D698F4BC((v35 > 1), v36 + 1, 1, v151);
        }

        ++v11;
        *(v151 + 2) = v36 + 1;
        v37 = &v151[16 * v36];
        *(v37 + 4) = v13;
        *(v37 + 5) = v14;
        v12 += 48;
        if (v145 == v11)
        {
          goto LABEL_18;
        }
      }

      sub_1D6D6DDF0(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D6D8CB60();
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_94;
      }

LABEL_10:
      v27 = v152;
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_18:
    v146 = sub_1D698F4BC(0, v136, 0, MEMORY[0x1E69E7CC0]);
    v38 = v138;
    v135 = *(v138 + 16);
    if (v135)
    {
      v39 = 0;
      v40 = (v138 + 72);
      do
      {
        if (v39 >= *(v38 + 16))
        {
          goto LABEL_85;
        }

        v45 = *(v40 - 5);
        v44 = *(v40 - 4);
        v47 = *(v40 - 3);
        v46 = *(v40 - 2);
        v48 = *(v40 - 1);
        v148 = *v40;
        v49 = v152[2];

        sub_1D5CFCFAC(v46);
        sub_1D5CFCFAC(v48);
        if (!v49 || (v50 = sub_1D6D8CB60(), (v51 & 1) == 0))
        {
          v143 = v39;

          v71 = v47;

          v72 = v46;
          sub_1D5CFCFAC(v46);
          v73 = v48;
          sub_1D5CFCFAC(v48);
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v75 = sub_1D6D8CB60();
          v77 = v152[2];
          v78 = (v76 & 1) == 0;
          v23 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v23)
          {
            goto LABEL_88;
          }

          v80 = v76;
          if (v152[3] >= v79)
          {
            if (v74)
            {
              goto LABEL_44;
            }

            v90 = v75;
            sub_1D6D8248C();
            v75 = v90;
            v82 = v152;
            if ((v80 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_45:
            v83 = v82[7] + 48 * v75;
            v84 = *(v83 + 24);
            v85 = *(v83 + 32);
            *v83 = v45;
            *(v83 + 8) = v44;
            *(v83 + 16) = v71;
            *(v83 + 24) = v72;
            *(v83 + 32) = v73;
            *(v83 + 40) = v148;

            sub_1D5C84FF4(v84);
            sub_1D5C84FF4(v85);
          }

          else
          {
            sub_1D6D6DDF0(v79, v74);
            v75 = sub_1D6D8CB60();
            if ((v80 & 1) != (v81 & 1))
            {
              goto LABEL_94;
            }

LABEL_44:
            v82 = v152;
            if (v80)
            {
              goto LABEL_45;
            }

LABEL_51:
            v82[(v75 >> 6) + 8] |= 1 << v75;
            v91 = (v82[6] + 16 * v75);
            *v91 = v45;
            v91[1] = v44;
            v92 = v82[7] + 48 * v75;
            *v92 = v45;
            *(v92 + 8) = v44;
            *(v92 + 16) = v71;
            *(v92 + 24) = v72;
            *(v92 + 32) = v73;
            *(v92 + 40) = v148;
            v93 = v82[2];
            v23 = __OFADD__(v93, 1);
            v94 = v93 + 1;
            if (v23)
            {
              goto LABEL_90;
            }

            v82[2] = v94;
          }

          v152 = v82;
          v95 = *(v146 + 2);
          v96 = *(v146 + 3);

          if (v95 >= v96 >> 1)
          {
            v146 = sub_1D698F4BC((v96 > 1), v95 + 1, 1, v146);
          }

          sub_1D5C84FF4(v72);
          sub_1D5C84FF4(v73);
          v39 = v143;
          *(v146 + 2) = v95 + 1;
          v97 = &v146[16 * v95];
          *(v97 + 4) = v45;
          *(v97 + 5) = v44;
          goto LABEL_22;
        }

        v52 = v152[7] + 48 * v50;
        v53 = *(v52 + 8);
        v142 = *v52;
        v54 = *(v52 + 24);
        v55 = *(v52 + 32);
        v56 = *(v52 + 40);
        v57 = *(v52 + 16);
        v137 = v54;
        if (!v57)
        {

          v54 = v137;
          v57 = v47;
        }

        v134 = v57;
        v58 = v54;
        if ((~v54 & 0xF000000000000007) == 0)
        {
          sub_1D5CFCFAC(v46);
          v58 = v46;
        }

        v133 = v58;
        v59 = v55;
        if ((~v55 & 0xF000000000000007) == 0)
        {
          sub_1D5CFCFAC(v48);
          v59 = v48;
        }

        v131 = v48;
        v132 = v59;
        v60 = v148;
        if (v56 != 2)
        {
          v60 = v56;
        }

        v149 = v60;

        sub_1D5CFCFAC(v137);
        sub_1D5CFCFAC(v55);

        sub_1D5CFCFAC(v137);
        v130 = v55;
        sub_1D5CFCFAC(v55);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v63 = sub_1D6D8CB60();
        v64 = v152[2];
        v65 = (v62 & 1) == 0;
        v66 = v64 + v65;
        if (__OFADD__(v64, v65))
        {
          goto LABEL_91;
        }

        v67 = v62;
        if (v152[3] >= v66)
        {
          if (v61)
          {
            v70 = v152;
            if ((v62 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            sub_1D6D8248C();
            v70 = v152;
            if ((v67 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          sub_1D6D6DDF0(v66, v61);
          v68 = sub_1D6D8CB60();
          if ((v67 & 1) != (v69 & 1))
          {
            goto LABEL_94;
          }

          v63 = v68;
          v70 = v152;
          if ((v67 & 1) == 0)
          {
LABEL_48:
            v70[(v63 >> 6) + 8] |= 1 << v63;
            v86 = (v70[6] + 16 * v63);
            *v86 = v142;
            v86[1] = v53;
            v87 = v70[7] + 48 * v63;
            *v87 = v142;
            *(v87 + 8) = v53;
            *(v87 + 16) = v134;
            *(v87 + 24) = v133;
            *(v87 + 32) = v132;
            *(v87 + 40) = v149;
            v88 = v70[2];
            v23 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v23)
            {
              goto LABEL_92;
            }

            v70[2] = v89;
            goto LABEL_21;
          }
        }

        v41 = v70[7] + 48 * v63;
        v42 = *(v41 + 24);
        v43 = *(v41 + 32);
        *v41 = v142;
        *(v41 + 8) = v53;
        *(v41 + 16) = v134;
        *(v41 + 24) = v133;
        *(v41 + 32) = v132;
        *(v41 + 40) = v149;

        sub_1D5C84FF4(v42);
        sub_1D5C84FF4(v43);

LABEL_21:

        sub_1D5C84FF4(v137);
        sub_1D5C84FF4(v130);

        sub_1D5C84FF4(v46);
        sub_1D5C84FF4(v131);
        v152 = v70;
LABEL_22:
        v38 = v138;
        ++v39;
        v40 += 48;
      }

      while (v135 != v39);
    }

    sub_1D6985DAC(v98);
    v99 = *(v146 + 2);
    if (!v99)
    {
      v102 = MEMORY[0x1E69E7CC0];
LABEL_74:

      v115 = v129;
      v116 = v129[7];
      if (!v116)
      {
        v116 = *(v128 + 56);

        v115 = v129;
      }

      v117 = v115[8];
      v118 = v117;
      if ((~v117 & 0xF000000000000007) == 0)
      {
        v118 = *(v128 + 64);
        sub_1D5CFCFAC(v118);
        v115 = v129;
      }

      v119 = v115[9];
      v120 = v119;
      if ((~v119 & 0xF000000000000007) == 0)
      {
        v120 = *(v128 + 72);
        sub_1D5CFCFAC(v120);
        v115 = v129;
      }

      v121 = *(v115 + 80);
      if (v121 == 2)
      {
        LOBYTE(v121) = *(v128 + 80);
      }

      v122 = swift_allocObject();
      swift_beginAccess();
      *(v122 + 16) = v127;
      *(v122 + 24) = v126;
      *(v122 + 32) = v125;
      *(v122 + 40) = v124;
      swift_beginAccess();
      *(v122 + 48) = v102;
      *(v122 + 56) = v116;
      *(v122 + 64) = v118;
      *(v122 + 72) = v120;
      *(v122 + 80) = v121;

      sub_1D5CFCFAC(v117);
      sub_1D5CFCFAC(v119);
      return v122;
    }

    v100 = 0;
    v101 = v146 + 40;
    v102 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v103 = &v101[16 * v100];
    v104 = v100;
    while (v104 < v99)
    {
      v100 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_87;
      }

      if (v152[2])
      {

        v105 = sub_1D6D8CB60();
        if (v106)
        {
          v107 = v152[7] + 48 * v105;
          v108 = *(v107 + 8);
          v144 = *v107;
          v109 = *(v107 + 16);
          v110 = *(v107 + 24);
          v111 = *(v107 + 32);
          v140 = *(v107 + 40);

          sub_1D5CFCFAC(v110);
          sub_1D5CFCFAC(v111);

          v150 = v101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_1D698ED38(0, *(v102 + 2) + 1, 1, v102);
          }

          v113 = *(v102 + 2);
          v112 = *(v102 + 3);
          if (v113 >= v112 >> 1)
          {
            v102 = sub_1D698ED38((v112 > 1), v113 + 1, 1, v102);
          }

          *(v102 + 2) = v113 + 1;
          v114 = &v102[48 * v113];
          *(v114 + 4) = v144;
          *(v114 + 5) = v108;
          *(v114 + 6) = v109;
          *(v114 + 7) = v110;
          *(v114 + 8) = v111;
          v114[72] = v140;
          v101 = v150;
          if (v100 != v99)
          {
            goto LABEL_60;
          }

          goto LABEL_74;
        }
      }

      ++v104;
      v103 += 16;
      if (v100 == v99)
      {
        goto LABEL_74;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  __break(1u);
LABEL_94:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D617F45C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D698ED38(0, v4, 0, MEMORY[0x1E69E7CC0]);
  v58 = sub_1D698EBC8(0, v4, 0, v5);
  v61 = *(v3 + 16);
  if (v61)
  {
    v7 = 0;
    v59 = v3;
    v60 = v3 + 32;
    v8 = v6;
    while (v7 < *(v3 + 16))
    {
      v9 = v60 + 48 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      v63 = *(v9 + 40);
      v66 = *(v9 + 16);
      v68 = v8;

      sub_1D5CFCFAC(v12);
      v65 = v13;
      sub_1D5CFCFAC(v13);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v62 = v10;
      v71[0] = v10;
      v71[1] = v11;

      v14 = sub_1D6844380(v71);

      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = 32;
        while (1)
        {
          if (v16 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v19 = *(v14 + v17 + 16);
          v18 = *(v14 + v17 + 32);
          v20 = *(v14 + v17);
          v73 = *(v14 + v17 + 48);
          v72[1] = v19;
          v72[2] = v18;
          v72[0] = v20;
          v21 = v19;
          sub_1D5E3B610(v72, v71);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v16;
          sub_1D5E3B66C(v72);
          v17 += 56;
          if (v15 == v16)
          {
            goto LABEL_3;
          }
        }

        sub_1D5E3B66C(v72);
        if (v21 <= 1)
        {
          v8 = v68;
          v26 = *(v68 + 2);
          v25 = *(v68 + 3);
          v3 = v59;
          if (v26 >= v25 >> 1)
          {
            v8 = sub_1D698ED38((v25 > 1), v26 + 1, 1, v68);
          }

          *(v8 + 2) = v26 + 1;
          v27 = &v8[48 * v26];
          *(v27 + 4) = v62;
          *(v27 + 5) = v11;
          *(v27 + 6) = v66;
          *(v27 + 7) = v12;
          *(v27 + 8) = v65;
          v27[72] = v63;
        }

        else
        {

          sub_1D5CFCFAC(v12);
          sub_1D5CFCFAC(v65);
          v3 = v59;
          v23 = v58[2];
          v22 = v58[3];
          if (v23 >= v22 >> 1)
          {
            v58 = sub_1D698EBC8((v22 > 1), v23 + 1, 1, v58);
          }

          sub_1D5C84FF4(v12);
          sub_1D5C84FF4(v65);
          v58[2] = v23 + 1;
          v24 = &v58[7 * v23];
          v24[4] = v62;
          v24[5] = v11;
          v24[6] = v66;
          v24[7] = v12;
          v24[8] = v65;
          *(v24 + 72) = v63;
          v24[10] = v21;
          v8 = v68;
        }
      }

      else
      {
LABEL_3:

        sub_1D5C84FF4(v12);
        sub_1D5C84FF4(v65);

        v8 = v68;
        v3 = v59;
      }

      if (++v7 == v61)
      {
        v6 = v8;
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:

    sub_1D61804FC(0);
    v28 = sub_1D72626AC();

    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (v28 + 72);
      do
      {
        v32 = *(v30 - 5);
        v31 = *(v30 - 4);
        v34 = *(v30 - 3);
        v33 = *(v30 - 2);
        v35 = *(v30 - 1);
        v69 = *v30;

        sub_1D5CFCFAC(v33);
        sub_1D5CFCFAC(v35);
        v37 = *(v6 + 2);
        v36 = *(v6 + 3);
        if (v37 >= v36 >> 1)
        {
          v6 = sub_1D698ED38((v36 > 1), v37 + 1, 1, v6);
        }

        v30 += 56;
        *(v6 + 2) = v37 + 1;
        v38 = &v6[48 * v37];
        *(v38 + 4) = v32;
        *(v38 + 5) = v31;
        *(v38 + 6) = v34;
        *(v38 + 7) = v33;
        *(v38 + 8) = v35;
        v38[72] = v69;
        --v29;
      }

      while (v29);
    }

    v39 = *(v6 + 2);
    v40 = v57;

    v64 = v39;
    if (!v39)
    {
LABEL_39:

      return;
    }

    v41 = 0;
    v42 = (v6 + 72);
    v70 = v6;
    while (v41 < *(v6 + 2))
    {
      v45 = *(v42 - 3);
      v44 = *(v42 - 2);
      v46 = *(v42 - 1);
      v67 = *v42;
      v47 = swift_allocObject();
      swift_beginAccess();
      v49 = v40[2];
      v48 = v40[3];
      swift_beginAccess();
      *(v47 + 16) = v49;
      *(v47 + 24) = v48;
      v50 = v40[5];
      *(v47 + 32) = v40[4];
      *(v47 + 40) = v50;
      swift_beginAccess();
      v51 = v40[6];
      swift_beginAccess();
      *(v47 + 48) = v51;
      v52 = v45;
      if (!v45)
      {
      }

      v53 = v40;
      *(v47 + 56) = v52;
      v54 = v44;
      if ((~v44 & 0xF000000000000007) == 0)
      {
        v54 = v53[8];
        sub_1D5CFCFAC(v54);
      }

      *(v47 + 64) = v54;
      v55 = v46;
      if ((~v46 & 0xF000000000000007) == 0)
      {
        v55 = v53[9];
        sub_1D5CFCFAC(v55);
      }

      *(v47 + 72) = v55;
      v56 = v67;
      if (v67 == 2)
      {
        v56 = *(v53 + 80);
      }

      ++v41;
      v43 = v56;

      sub_1D5CFCFAC(v44);
      sub_1D5CFCFAC(v46);

      *(v47 + 80) = v43;
      v42 += 48;
      v40 = v47;
      v6 = v70;
      if (v64 == v41)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D617FA90()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v11 = *(v0 + 16);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_beginAccess();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5CFCFAC(v6);
    sub_1D6E0CAE0(v12);

    v6 = v12[0];
  }

  v7 = *(v0 + 72);
  if ((~v7 & 0xF000000000000007) != 0)
  {

    sub_1D6E0CAE0(v12);

    v7 = v12[0];
  }

  v8 = *(v0 + 80);
  v9 = swift_allocObject();
  swift_beginAccess();
  *(v9 + 16) = v11;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  swift_beginAccess();
  *(v9 + 48) = v4;
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  *(v9 + 72) = v7;
  *(v9 + 80) = v8;
  return v9;
}

void *FormatProgressViewNodeStyle.deinit()
{

  sub_1D5C84FF4(*(v0 + 64));
  sub_1D5C84FF4(*(v0 + 72));
  return v0;
}

uint64_t FormatProgressViewNodeStyle.__deallocating_deinit()
{

  sub_1D5C84FF4(*(v0 + 64));
  sub_1D5C84FF4(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1D617FCF0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D666A204(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FormatProgressViewNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatProgressViewNodeStyle.Selector.progressColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatProgressViewNodeStyle.Selector.trackColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

BOOL _s8NewsFeed27FormatProgressViewNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1D633A310(v2, v7);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }
  }

  if ((~v4 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v4);
    sub_1D5CFCFAC(v6);
    if ((~v6 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v4);
      goto LABEL_17;
    }

LABEL_15:
    sub_1D5C84FF4(v4);
    v12 = v6;
LABEL_23:
    sub_1D5C84FF4(v12);
    return 0;
  }

  v17 = v4;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v4);
    sub_1D5CFCFAC(v6);
    sub_1D5CFCFAC(v4);

    goto LABEL_15;
  }

  v16 = v6;
  sub_1D5CFCFAC(v4);
  sub_1D5CFCFAC(v6);
  sub_1D5CFCFAC(v4);
  v13 = static FormatColor.== infix(_:_:)(&v17, &v16);

  sub_1D5C84FF4(v4);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if ((~v3 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v3);
    sub_1D5CFCFAC(v8);
    if ((~v8 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v3);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v17 = v3;
  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v3);
    sub_1D5CFCFAC(v8);
    sub_1D5CFCFAC(v3);

LABEL_22:
    sub_1D5C84FF4(v3);
    v12 = v8;
    goto LABEL_23;
  }

  v16 = v8;
  sub_1D5CFCFAC(v3);
  sub_1D5CFCFAC(v8);
  sub_1D5CFCFAC(v3);
  v15 = static FormatColor.== infix(_:_:)(&v17, &v16);

  sub_1D5C84FF4(v3);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  if (v5 != 2)
  {
    return v9 != 2 && ((v9 ^ v5) & 1) == 0;
  }

  return v9 == 2;
}

uint64_t sub_1D6180044(uint64_t a1)
{
  result = sub_1D61801A0(&qword_1EC884720, &protocol conformance descriptor for FormatProgressViewNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D61800AC(uint64_t a1)
{
  *(a1 + 16) = sub_1D61801A0(&qword_1EDF22150, &protocol conformance descriptor for FormatProgressViewNodeStyle);
  result = sub_1D61801A0(&unk_1EDF0AF40, &protocol conformance descriptor for FormatProgressViewNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6180114(void *a1)
{
  a1[1] = sub_1D61801A0(&qword_1EDF22150, &protocol conformance descriptor for FormatProgressViewNodeStyle);
  a1[2] = sub_1D61801A0(&unk_1EDF0AF40, &protocol conformance descriptor for FormatProgressViewNodeStyle);
  result = sub_1D61801A0(&qword_1EC884728, &protocol conformance descriptor for FormatProgressViewNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D61801A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatProgressViewNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61801E0(uint64_t a1)
{
  result = sub_1D6180208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6180208()
{
  result = qword_1EC884730;
  if (!qword_1EC884730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884730);
  }

  return result;
}

unint64_t sub_1D618025C(uint64_t a1)
{
  *(a1 + 8) = sub_1D618028C();
  result = sub_1D61802E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D618028C()
{
  result = qword_1EDF22158;
  if (!qword_1EDF22158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22158);
  }

  return result;
}

unint64_t sub_1D61802E0()
{
  result = qword_1EDF22160;
  if (!qword_1EDF22160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22160);
  }

  return result;
}

unint64_t sub_1D6180334(void *a1)
{
  a1[1] = sub_1D618028C();
  a1[2] = sub_1D61802E0();
  result = sub_1D618036C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D618036C()
{
  result = qword_1EC884738;
  if (!qword_1EC884738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884738);
  }

  return result;
}

uint64_t sub_1D61803F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D618043C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6180498(uint64_t a1)
{
  if (!qword_1EDF05820)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05820);
    }
  }
}

void sub_1D61804FC(uint64_t a1)
{
  if (!qword_1EDF0A968)
  {
    v2 = sub_1D6180558();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatProgressViewNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF0A968);
    }
  }
}

unint64_t sub_1D6180558()
{
  result = qword_1EDF0AF50;
  if (!qword_1EDF0AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AF50);
  }

  return result;
}

void *sub_1D61805AC(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v3);
  sub_1D5EA74B8(0);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v39 = *(*(v5 - 8) + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v38 = v6;
  v8 = (v7 + v6);
  if (a2)
  {
    v9 = *(a2 + 40);
    v37 = *(a2 + 32);

    v10 = sub_1D617FA90();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 64) = 0x7800000000000000;
    v12 = sub_1D601118C;
  }

  else
  {
    v12 = sub_1D70DD9D8;
    v11 = 0;
    v37 = 0;
    v9 = 0xE000000000000000;
  }

  v13 = type metadata accessor for FormatInspectionItem(0);
  v14 = (v8 + *(v13 + 24));
  *v14 = v12;
  v14[1] = v11;
  v15 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  *(v7 + v6) = v37;
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = v9;
  v16 = v8 + *(v13 + 28);
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = -1;
  v17 = *(*(v13 - 8) + 56);
  (v17)(v8, 0, 1, v13);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v7, v40);
  swift_setDeallocating();
  sub_1D6180C78(v8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v18 = swift_allocObject();
  *(inited + 32) = v18;
  *(v18 + 48) = v41;
  v19 = v40[1];
  *(v18 + 16) = v40[0];
  *(v18 + 32) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7279970;
  v21 = v20 + v6;
  v22 = sub_1D711F844(1701869908, 0xE400000000000000, 0x73736572676F7250, 0xED00007765695620, (v20 + v6));
  v17(v20 + v6, 0, 1, v13, v22);
  if (a2)
  {
    v23 = *(a2 + 56);

    v24 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v23, (v21 + v39));
    v17(v21 + v39, 0, 1, v13, v24);
    v25 = *(a2 + 80);
  }

  else
  {
    v26 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v21 + v39));
    v17(v21 + v39, 0, 1, v13, v26);
    v25 = 2;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v25, (v21 + 2 * v39));
  (v17)(v21 + 2 * v39, 0, 1, v13);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v20, v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v27 = swift_allocObject();
  *(inited + 72) = v27;
  *(v27 + 48) = v43;
  v28 = v42[1];
  *(v27 + 16) = v42[0];
  *(v27 + 32) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7270C10;
  v30 = (v29 + v38);
  if (a2)
  {
    v31 = *(a2 + 64);
    sub_1D5CFCFAC(v31);
    sub_1D711B4B4(0x73736572676F7250, 0xEE00726F6C6F4320, v31, v30);
    (v17)(v30, 0, 1, v13);
    v32 = *(a2 + 72);
    sub_1D5CFCFAC(v32);
  }

  else
  {
    v32 = 0xF000000000000007;
    sub_1D711B4B4(0x73736572676F7250, 0xEE00726F6C6F4320, 0xF000000000000007, v30);
    (v17)(v30, 0, 1, v13);
  }

  sub_1D711B4B4(0x6F43206B63617254, 0xEB00000000726F6CLL, v32, &v30[v39]);
  (v17)(&v30[v39], 0, 1, v13);
  sub_1D6795150(0x73736572676F7250, 0xE800000000000000, 0, 0, v29, v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v33 = swift_allocObject();
  *(inited + 112) = v33;
  *(v33 + 48) = v45;
  v34 = v44[1];
  *(v33 + 16) = v44[0];
  *(v33 + 32) = v34;
  v35 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v35;
}

uint64_t sub_1D6180C78(uint64_t a1)
{
  sub_1D5EA74B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TagMastheadViewBackgroundView(uint64_t a1)
{
  result = qword_1EDF3A2C0;
  if (!qword_1EDF3A2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D6180D74(double a1, double a2, double a3, double a4)
{
  v9 = qword_1EDF3A2E8;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v10 = qword_1EDF3A2D8;
  *&v4[v10] = [objc_allocWithZone(sub_1D725CD6C()) initWithFrame_];
  v11 = qword_1EDF3A2E0;
  *&v4[v11] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v12 = qword_1EDF3A2D0;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TagMastheadViewBackgroundView(0);
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[qword_1EDF3A2E8];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

void sub_1D6180F68(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for TagMastheadViewBackgroundView(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  [v1 gutterViewBoundsDidChange];
}

void sub_1D6180FD4()
{
  v1 = *(v0 + qword_1EDF3A2D0);
}

id sub_1D6181034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagMastheadViewBackgroundView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D618106C(uint64_t a1)
{
  v2 = *(a1 + qword_1EDF3A2D0);
}

void sub_1D61810E0(void *a1)
{
  v1 = a1;
  sub_1D72634AC();
  sub_1D72634AC();
  sub_1D72634AC();
  sub_1D72634AC();
}

void sub_1D618116C()
{
  v1 = qword_1EDF3A2E8;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v2 = qword_1EDF3A2D8;
  *(v0 + v2) = [objc_allocWithZone(sub_1D725CD6C()) initWithFrame_];
  v3 = qword_1EDF3A2E0;
  *(v0 + v3) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v4 = qword_1EDF3A2D0;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

NewsFeed::FormatShineSizer_optional __swiftcall FormatShineSizer.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatShineSizer.rawValue.getter()
{
  if (*v0)
  {
    return 0x7473756A64616E75;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1D618132C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473756A64616E75;
  }

  else
  {
    v3 = 1702521203;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x7473756A64616E75;
  }

  else
  {
    v5 = 1702521203;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D61813D4()
{
  result = qword_1EC884740;
  if (!qword_1EC884740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884740);
  }

  return result;
}

uint64_t sub_1D6181428()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61814A8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6181514(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6181590(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D61815F0(uint64_t *a1@<X8>)
{
  v2 = 1702521203;
  if (*v1)
  {
    v2 = 0x7473756A64616E75;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D618162C(uint64_t a1)
{
  *(a1 + 8) = sub_1D618165C();
  result = sub_1D61816B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D618165C()
{
  result = qword_1EC884748;
  if (!qword_1EC884748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884748);
  }

  return result;
}

unint64_t sub_1D61816B0()
{
  result = qword_1EC884750;
  if (!qword_1EC884750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884750);
  }

  return result;
}

unint64_t sub_1D6181704(uint64_t a1)
{
  result = sub_1D618172C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618172C()
{
  result = qword_1EC884758;
  if (!qword_1EC884758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884758);
  }

  return result;
}

unint64_t sub_1D6181780(void *a1)
{
  a1[1] = sub_1D61817B8();
  a1[2] = sub_1D618180C();
  result = sub_1D61813D4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61817B8()
{
  result = qword_1EC884760;
  if (!qword_1EC884760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884760);
  }

  return result;
}

unint64_t sub_1D618180C()
{
  result = qword_1EC884768;
  if (!qword_1EC884768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884768);
  }

  return result;
}

double FormatBorder.color.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

double FormatBorder.width.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t FormatBorder.init(edges:color:width:inset:lineCap:linePattern:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *a7 = result;
  *(a7 + 8) = v7;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 25) = v10;
  *(a7 + 32) = a6;
  return result;
}

NewsFeed::FormatBorderInset_optional __swiftcall FormatBorderInset.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatBorderInset.rawValue.getter()
{
  v1 = 0x656C6464696DLL;
  if (*v0 != 1)
  {
    v1 = 0x72657474756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6E69;
  }
}

uint64_t sub_1D6181B14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v3 = 0x72657474756FLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72656E6E69;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x656C6464696DLL;
  if (*a2 != 1)
  {
    v6 = 0x72657474756FLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72656E6E69;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6181C04()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6181C9C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6181D20(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6181DC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v4 = 0x72657474756FLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x72656E6E69;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t _s8NewsFeed12FormatBorderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  v11 = *(a2 + 32);
  if ((sub_1D5E22398(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v7;
  v27 = v2;

  v12 = static FormatColor.== infix(_:_:)(&v27, &v26);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v26 = v8;
  v27 = v3;

  v13 = static FormatFloat.== infix(_:_:)(&v27, &v26);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    v14 = 0xE600000000000000;
    if (v4 == 1)
    {
      v15 = 0x656C6464696DLL;
    }

    else
    {
      v15 = 0x72657474756FLL;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    v15 = 0x72656E6E69;
  }

  v16 = 0x656C6464696DLL;
  if (v9 != 1)
  {
    v16 = 0x72657474756FLL;
  }

  if (v9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x72656E6E69;
  }

  if (v9)
  {
    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  if (v15 == v17 && v14 == v18)
  {
  }

  else
  {
    v19 = sub_1D72646CC();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = 1953789282;
  if (!v5)
  {
    v21 = 0xE400000000000000;
    v22 = 1953789282;
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (v5 != 1)
  {
    v21 = 0xE600000000000000;
    v22 = 0x657261757173;
    if (v10)
    {
      goto LABEL_26;
    }

LABEL_29:
    v23 = 0xE400000000000000;
    goto LABEL_31;
  }

  v21 = 0xE500000000000000;
  v22 = 0x646E756F72;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (v10 == 1)
  {
    v23 = 0xE500000000000000;
    v20 = 0x646E756F72;
  }

  else
  {
    v23 = 0xE600000000000000;
    v20 = 0x657261757173;
  }

LABEL_31:
  if (v22 != v20 || v21 != v23)
  {
    v24 = sub_1D72646CC();

    if (v24)
    {
      goto LABEL_35;
    }

    return 0;
  }

LABEL_35:

  return sub_1D635A390(v6, v11);
}

unint64_t sub_1D6182160(uint64_t a1)
{
  result = sub_1D6182188();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6182188()
{
  result = qword_1EC884770;
  if (!qword_1EC884770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884770);
  }

  return result;
}

unint64_t sub_1D618221C()
{
  result = qword_1EDF125E0;
  if (!qword_1EDF125E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF125E0);
  }

  return result;
}

unint64_t sub_1D6182270()
{
  result = qword_1EC884778;
  if (!qword_1EC884778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884778);
  }

  return result;
}

unint64_t sub_1D61822C8()
{
  result = qword_1EC884780;
  if (!qword_1EC884780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884780);
  }

  return result;
}

unint64_t sub_1D618231C(uint64_t a1)
{
  *(a1 + 8) = sub_1D618234C();
  result = sub_1D61823A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D618234C()
{
  result = qword_1EC884788;
  if (!qword_1EC884788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884788);
  }

  return result;
}

unint64_t sub_1D61823A0()
{
  result = qword_1EDF2F8D8;
  if (!qword_1EDF2F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8D8);
  }

  return result;
}

unint64_t sub_1D61823F4(uint64_t a1)
{
  result = sub_1D618241C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D618241C()
{
  result = qword_1EC884790;
  if (!qword_1EC884790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884790);
  }

  return result;
}

uint64_t sub_1D61824B0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6182504()
{
  result = qword_1EDF2F8D0;
  if (!qword_1EDF2F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8D0);
  }

  return result;
}

unint64_t sub_1D6182558()
{
  result = qword_1EDF10CF0;
  if (!qword_1EDF10CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CF0);
  }

  return result;
}

void *sub_1D61825CC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v24 = a2[4];
  v25 = a2[3];
  v5 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v5);
  sub_1D5EA74B8(0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7284F00;
  v11 = (v10 + v9);
  if (v2)
  {
  }

  sub_1D7123F60(0x7365676445, 0xE500000000000000, v2, v11);
  v12 = type metadata accessor for FormatInspectionItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  if (v2)
  {

    sub_1D711B4B4(0x726F6C6F43, 0xE500000000000000, v3, &v11[v8]);
    v13(&v11[v8], 0, 1, v12);
  }

  else
  {
    v4 = 0xF000000000000007;
    sub_1D711B4B4(0x726F6C6F43, 0xE500000000000000, 0xF000000000000007, &v11[v8]);
    v13(&v11[v8], 0, 1, v12);
  }

  v14 = sub_1D7123FB0(0x6874646957, 0xE500000000000000, v4, &v11[2 * v8]);
  (v13)(&v11[2 * v8], 0, 1, v12, v14);
  if (v2)
  {
    v15 = v25;
  }

  else
  {
    v15 = 3;
  }

  v16 = 3 * v8;
  if (v2)
  {
    v17 = BYTE1(v25);
  }

  else
  {
    v17 = 3;
  }

  sub_1D7124218(0x7465736E49, 0xE500000000000000, v15, &v11[v16]);
  v13(&v11[v16], 0, 1, v12);
  sub_1D7124528(0x70614320656E694CLL, 0xE800000000000000, v17, &v11[4 * v8]);
  v13(&v11[4 * v8], 0, 1, v12);
  if (v2)
  {
    v2 = v24;
  }

  v18 = 5 * v8;
  v19 = sub_1D7124534(0x74615020656E694CLL, 0xEC0000006E726574, v2, &v11[v18]);
  (v13)(&v11[v18], 0, 1, v12, v19);
  sub_1D6795150(0x726564726F42, 0xE600000000000000, 0, 0, v10, v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v20 = swift_allocObject();
  *(inited + 32) = v20;
  *(v20 + 48) = v27;
  v21 = v26[1];
  *(v20 + 16) = v26[0];
  *(v20 + 32) = v21;
  v22 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5F10AA0(inited + 32);
  return v22;
}

uint64_t sub_1D61829F0()
{
  sub_1D5F5FB48(*(v0 + 24));
  v1 = OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_timestamp;
  v2 = sub_1D725891C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatLogEntry(uint64_t a1)
{
  result = qword_1EC8847B0;
  if (!qword_1EC8847B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6182B18(uint64_t a1)
{
  result = sub_1D725891C();
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

uint64_t sub_1D6182BCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_timestamp;
  v31 = sub_1D725891C();
  v10 = *(v31 - 8);
  (*(v10 + 16))(v4 + v9, a1, v31);
  v11 = (v4 + OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_message);
  *v11 = a2;
  v11[1] = a3;
  *(v4 + 24) = a4;
  v12 = sub_1D726210C();
  v13 = (v4 + OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_normalizedMessage);
  *v13 = v12;
  v13[1] = v14;
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DB970];

  sub_1D5F5F838(a4);
  v19 = v16;
  v20 = [v17 monospacedSystemFontOfSize:14.0 weight:v18];
  v21 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 40) = v20;
  v22 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 labelColor];
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 80) = v25;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v28 = sub_1D7261D2C();

  v29 = [v26 initWithString:v27 attributes:v28];

  (*(v10 + 8))(a1, v31);
  *(v4 + 16) = v29;
  return v4;
}

uint64_t static FormatSelectorValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1D7261FBC())
  {
    v9 = *(type metadata accessor for FormatSelectorValue(0, a3, a4, v8) + 36);
    v10 = *(a1 + v9);
    v20 = *(a2 + v9);
    v21 = v10;
    v12 = type metadata accessor for FormatSelectorValueSelector(255, a3, a4, v11);

    WitnessTable = swift_getWitnessTable();
    v14 = swift_getWitnessTable();
    v15 = type metadata accessor for FormatCodingEmptyArrayStrategy(0, v12, WitnessTable, v14);
    v16 = swift_getWitnessTable();
    sub_1D72627FC();
    swift_getWitnessTable();
    v17 = swift_getWitnessTable();
    v18 = static FormatCodingDefault<>.== infix(_:_:)(&v21, &v20, v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t FormatSelectorValue.selectors.getter(uint64_t a1)
{
  sub_1D61834A8(a1);
}

uint64_t sub_1D6183084@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for FormatSelectorValue(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = sub_1D61834A8(v5);
}

void sub_1D61830D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FormatSelectorValue(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  FormatSelectorValue.selectors.setter(v5, v4);
}

void FormatSelectorValue.selectors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t FormatSelectorValueSelector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static FormatSelectorValueSelector.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[1];
  v7 = *a1 == *a2 && a1[1] == v6;
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatSelectorValueSelector(0, a3, a4, v6);
  return sub_1D7261FBC() & 1;
}

void sub_1D6183294(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v18 = *a1;
  v20 = *a1;
  v21 = a1[1];

  MEMORY[0x1DA6F9910](46, 0xE100000000000000);

  MEMORY[0x1DA6F9910](v4, v3);

  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v20;
  a2[1] = v21;
  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];

    sub_1D6997AD0(0, v6, 0);
    v7 = v19;
    v8 = (v5 + 56);
    v9 = v21;
    v17 = v21;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;
      v22 = v9;

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA6F9910](46, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v12, v13);

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D6997AD0((v14 > 1), v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      v16 = (v19 + 48 * v15);
      v16[4] = v18;
      v16[5] = v22;
      v16[7] = MEMORY[0x1E69E6158];
      v16[8] = v10;
      v16[9] = v11;
      v8 += 4;
      --v6;
      v9 = v17;
    }

    while (v6);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  a2[4] = v7;
}