void sub_1D61AB560(uint64_t a1)
{
  if (!qword_1EC884D60)
  {
    sub_1D61AB614(255, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
    sub_1D61AB7D0(&qword_1EC884D80, &qword_1EC884D68, sub_1D61AB678);
    v1 = sub_1D726197C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884D60);
    }
  }
}

void sub_1D61AB614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D61AB678(uint64_t a1)
{
  if (!qword_1EC884D70)
  {
    sub_1D61AB6E8(255);
    sub_1D5F258D0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884D70);
    }
  }
}

void sub_1D61AB6E8(uint64_t a1)
{
  if (!qword_1EC884D78)
  {
    sub_1D61AB770(255, &qword_1EC87E060, &type metadata for DebugFormatLayoutAXBadge);
    sub_1D61AB770(255, &qword_1EC87E040, MEMORY[0x1E6981748]);
    v1 = sub_1D726136C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884D78);
    }
  }
}

void sub_1D61AB770(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1D5DEF100(255);
    v4 = sub_1D726101C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D61AB7D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D61AB614(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D61AB834(uint64_t a1)
{
  if (!qword_1EC884D90)
  {
    sub_1D61AB8C0(255);
    sub_1D61AB9E4();
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884D90);
    }
  }
}

void sub_1D61AB8C0(uint64_t a1)
{
  if (!qword_1EC884D98)
  {
    sub_1D61AB614(255, &qword_1EDF049A8, sub_1D5E2B010, MEMORY[0x1E69E62F8]);
    sub_1D61AB970(&qword_1EC884DA0, MEMORY[0x1E69E6328]);
    v1 = sub_1D72640AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC884D98);
    }
  }
}

uint64_t sub_1D61AB970(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D61AB614(255, &qword_1EDF049A8, sub_1D5E2B010, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61AB9E4()
{
  result = qword_1EC884DA8;
  if (!qword_1EC884DA8)
  {
    sub_1D61AB8C0(255);
    sub_1D61AB970(&qword_1EC884DB0, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DA8);
  }

  return result;
}

unint64_t sub_1D61ABA78(__n128 a1)
{
  result = qword_1EC884DB8;
  if (!qword_1EC884DB8)
  {
    sub_1D61AB484(255, a1);
    sub_1D61ABEB4(&qword_1EC884DC0, sub_1D61AB4CC, &unk_1D731F2D0);
    sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DB8);
  }

  return result;
}

unint64_t sub_1D61ABB58()
{
  result = qword_1EC884DC8;
  if (!qword_1EC884DC8)
  {
    sub_1D61AB834(255);
    sub_1D61A9B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DC8);
  }

  return result;
}

void sub_1D61ABBE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D61ABC30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1D61ABBE0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D61ABCA0(uint64_t a1, uint64_t a2)
{
  sub_1D61AB614(0, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61ABD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72610CC();
  *a1 = result;
  return result;
}

unint64_t sub_1D61ABDA0()
{
  result = qword_1EC884DF0;
  if (!qword_1EC884DF0)
  {
    sub_1D61AB770(255, &qword_1EC87E060, &type metadata for DebugFormatLayoutAXBadge);
    sub_1D61ABE60();
    sub_1D61ABEB4(&qword_1EC884E00, sub_1D5DEF100, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DF0);
  }

  return result;
}

unint64_t sub_1D61ABE60()
{
  result = qword_1EC884DF8;
  if (!qword_1EC884DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DF8);
  }

  return result;
}

uint64_t sub_1D61ABEB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D61ABEFC()
{
  result = qword_1EC89AF40;
  if (!qword_1EC89AF40)
  {
    sub_1D61AB770(255, &qword_1EC87E040, MEMORY[0x1E6981748]);
    sub_1D61ABEB4(&qword_1EC884E00, sub_1D5DEF100, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF40);
  }

  return result;
}

double sub_1D61ABFBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

double sub_1D61AC010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D61AC074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D61AB614(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1D61AC0D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v6, *a1, a1[1]);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1D61AC12C(__n128 a1)
{
  result = qword_1EC884E08;
  if (!qword_1EC884E08)
  {
    sub_1D61AC220(255, &unk_1EC884E10, sub_1D61AB484, sub_1D61AB3F8, MEMORY[0x1E697F960]);
    sub_1D61ABA78(v2);
    sub_1D61ABEB4(&qword_1EC884DE8, sub_1D61AB3F8, MEMORY[0x1E697C158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E08);
  }

  return result;
}

void sub_1D61AC220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void *sub_1D61AC308(void *a1, uint64_t a2)
{
  v3 = v2;
  v118 = *MEMORY[0x1E69E9840];
  v101 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v106 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v105 = v91 - v11;
  v12 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *&v3[v12] = v13;
  v14 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  v15 = *(*(v14 - 8) + 56);
  v100 = v12;
  v15(&v3[v12], 0, 1, v14);
  v98 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v103 = v3;
  v99 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v108 = v16;
  inited = swift_initStackObject();
  v110 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v18 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = v110;
  *(v19 + 32) = 0x65726F6373;
  *(v19 + 40) = 0xE500000000000000;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v18);
  v20 = swift_initStackObject();
  *(v20 + 16) = v110;
  v21 = a1[6];
  *(v20 + 32) = a1[5];
  *(v20 + 40) = v21;

  v22 = v109;
  sub_1D61ACEC8(a2, v23);
  v102 = v22;
  if (v22)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
    swift_arrayDestroy();
  }

  else
  {
    v92 = v24;
    v93 = v20;
    v94 = v20 + 32;
    v95 = v19;
    v96 = v19 + 32;
    v109 = inited;
    v104 = inited + 32;

    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1D7274590;
    *(v25 + 32) = 0x6E6F6E6143636D75;
    v91[1] = v25 + 32;
    *(v25 + 40) = 0xEE0064496C616369;
    v26 = a1[6];
    v27 = MEMORY[0x1E69E6158];
    *(v25 + 48) = a1[5];
    *(v25 + 56) = v26;
    *(v25 + 72) = v27;
    *(v25 + 80) = 0x746E657665;
    *(v25 + 88) = 0xE500000000000000;
    sub_1D61B8E1C(0, &qword_1EDF05620, MEMORY[0x1E69E6720]);
    *(v25 + 120) = v28;
    if (a1[7])
    {
      ObjectType = swift_getObjectType();

      v30 = sub_1D61ADB2C(ObjectType);
    }

    else
    {

      v30 = 0;
    }

    v31 = MEMORY[0x1E69E7CA0];
    *(v25 + 96) = v30;
    *(v25 + 128) = 0xD000000000000010;
    *(v25 + 136) = 0x80000001D73CD450;
    v91[0] = v25;
    v97 = a1;
    v32 = a1[4];
    *&v110 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

    v35 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v33, v34);
    v36 = v32;
    v37 = v35;
    if (v32 >> 62)
    {
      v90 = sub_1D7263BFC();
      v36 = v32;
      v38 = v90;
    }

    else
    {
      v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v104;
    v40 = v109;
    if (v38)
    {
      if (v38 < 1)
      {
        __break(1u);
      }

      v41 = 0;
      v107 = v36 & 0xC000000000000001;
      v108 = v36;
      do
      {
        if (v107)
        {
          v53 = MEMORY[0x1DA6FB460](v41);
        }

        else
        {
          v53 = *(v36 + 8 * v41 + 32);
          swift_unknownObjectRetain();
        }

        v54 = swift_getObjectType();
        v55 = [v53 UMCCanonicalID];
        if (v55)
        {
          v42 = v55;
          v43 = sub_1D726207C();
          v45 = v44;

          v46 = type metadata accessor for SportsRoster(0);
          v47 = v105;
          (*(*(v46 - 8) + 56))(v105, 1, 1, v46);

          v48 = sub_1D61B051C(v47, v37, v54);

          sub_1D61B8FBC(v47, &qword_1EDF11F60, type metadata accessor for SportsRoster);
          v31 = MEMORY[0x1E69E7CA0];
          sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
          v115 = v49;
          *&v113 = v48;
          sub_1D5B7C390(&v113, v112);
          v50 = v110;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111 = v50;
          v52 = v43;
          v39 = v104;
          sub_1D5BAFB24(v112, v52, v45, isUniquelyReferenced_nonNull_native);

          swift_unknownObjectRelease();
          *&v110 = v111;
        }

        else
        {
          swift_unknownObjectRelease();
          v31 = MEMORY[0x1E69E7CA0];
        }

        ++v41;
        v36 = v108;
        v40 = v109;
      }

      while (v38 != v41);
    }

    sub_1D61B94CC(0, &qword_1EDF1B790, v31 + 8, MEMORY[0x1E69E5E28]);
    v57 = v56;
    v58 = v91[0];
    *(v91[0] + 144) = v110;
    v58[21] = v56;
    v58[22] = 0x6E6F436465626D65;
    v58[23] = 0xEB00000000676966;
    v59 = *(v97 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
    v60 = *(v97 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 16);
    v61 = *(v97 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 24);
    v62 = *(v97 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 32);
    v63 = *(v97 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 40);
    *&v113 = *(v97 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
    *(&v113 + 1) = v59;
    v114 = v60;
    v115 = v61;
    v116 = v62;
    v117 = v63;
    sub_1D5F8B638(v113, v59, v60);
    v64 = sub_1D61AE28C(&v113);
    sub_1D5F8BBC8(v113, *(&v113 + 1), v114, v115, v116, v117);
    v58[27] = v57;
    v58[24] = v64;
    v65 = sub_1D5BE1168(v58);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, v31 + 8);
    swift_arrayDestroy();
    v66 = v102;
    v67 = sub_1D61AE64C(v92, v65);
    if (v66)
    {

      swift_setDeallocating();
      sub_1D61B8D8C(0);
      swift_arrayDestroy();

      swift_setDeallocating();
      sub_1D61B8C94(0);
      swift_arrayDestroy();

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v70 = v67;

      v71 = v93;
      *(v93 + 48) = v70;
      v72 = sub_1D605D38C(v71);
      swift_setDeallocating();
      sub_1D61B9308(v94, sub_1D61B8D8C);
      v73 = v95;
      *(v95 + 48) = v72;
      v74 = sub_1D605D4A0(v73);
      swift_setDeallocating();
      sub_1D61B9308(v96, sub_1D61B8C94);
      sub_1D61B8EA4(0);
      *(v40 + 72) = v75;
      *(v40 + 48) = v74;
      sub_1D5BE1168(v40);
      swift_setDeallocating();
      sub_1D61B8F0C(v39, &qword_1EDF1B5F0, v31 + 8);
      v76 = objc_opt_self();
      v77 = sub_1D7261D2C();

      *&v113 = 0;
      v78 = [v76 dataWithJSONObject:v77 options:2 error:&v113];

      v79 = v113;
      if (v78)
      {
        v80 = sub_1D725867C();
        v82 = v81;

        sub_1D72620CC();
        sub_1D726209C();
        if (v83)
        {
          sub_1D5B952F8(v80, v82);
          v84 = objc_allocWithZone(MEMORY[0x1E69CE158]);
          v85 = sub_1D726203C();

          v86 = [v84 initWithJSONString_];

          v87 = v103;
          *(v103 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v86;
          return v87;
        }

        sub_1D61B8F68();
        swift_allocError();
        *v89 = 2;
        swift_willThrow();

        sub_1D5B952F8(v80, v82);
      }

      else
      {
        v88 = v79;
        sub_1D725829C();

        swift_willThrow();
      }
    }
  }

  v68 = v103;
  sub_1D61B8FBC(v103 + v100, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v68;
}

void sub_1D61ACEC8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  sub_1D61B9178(0, a2);
  v127 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v116 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62C58(0, &unk_1EDF04710, sub_1D61B9178, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v126 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v125 = (&v115 - v14);
  v135 = sub_1D725891C();
  v15 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v16);
  v129 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v132 = &v115 - v20;
  sub_1D61B91E4(0);
  v134 = v21;
  v122 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v133 = (&v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v121 = &v115 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v120 = &v115 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v136 = (&v115 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v115 - v35;
  v37 = *(a1 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v123 = v6;
    v128 = v2;
    v140 = MEMORY[0x1E69E7CC0];
    sub_1D6998FB0(0, v37, 0);
    v38 = v140;
    v39 = *(type metadata accessor for WebEmbedDatastoreProperty(0) - 8);
    v41 = (a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80)));
    v124 = (v15 + 8);
    v42 = (v15 + 32);
    v130 = *(v39 + 72);
    *&v131 = v15;
    do
    {
      v43 = v128;
      v44 = sub_1D61B6830(v41, v40);
      v128 = v43;
      if (v43)
      {
LABEL_50:

        return;
      }

      v45 = v44;
      sub_1D72587BC();
      if (*(v45 + 2))
      {
        v46 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574);
        if (v47)
        {
          sub_1D5B76B10(*(v45 + 7) + 32 * v46, &v138);
          if (swift_dynamicCast())
          {
            if (qword_1EDF0DC80 != -1)
            {
              swift_once();
            }

            v48 = qword_1EDF0DC90;
            v49 = sub_1D726203C();

            v50 = [v48 dateFromString_];

            if (v50)
            {
              v51 = v129;
              sub_1D72588BC();

              v52 = v132;
              v53 = v135;
              (*v124)(v132, v135);
              (*v42)(v52, v51, v53);
            }
          }
        }
      }

      v54 = v135;
      v55 = *(v134 + 64);
      v56 = v41[1];
      *v36 = *v41;
      *(v36 + 1) = v56;
      *(v36 + 2) = v45;
      (*v42)(&v36[v55], v132, v54);
      v140 = v38;
      v58 = v38[2];
      v57 = v38[3];

      if (v58 >= v57 >> 1)
      {
        sub_1D6998FB0((v57 > 1), v58 + 1, 1);
        v38 = v140;
      }

      v38[2] = v58 + 1;
      sub_1D5BE748C(v36, v38 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v58, sub_1D61B91E4);
      v15 = v131;
      v41 = (v41 + v130);
      --v37;
    }

    while (v37);
    v3 = v128;
    v6 = v123;
  }

  *&v138 = v38;

  sub_1D61B7238(&v138, v59);
  v128 = v3;
  v60 = v127;
  v61 = v126;
  v62 = v125;
  if (v3)
  {
    goto LABEL_58;
  }

  v63 = v138;
  v64 = sub_1D605D38C(MEMORY[0x1E69E7CC0]);
  v65 = 0;
  v66 = *(v63 + 16);
  v124 = (v6 + 7);
  v123 = v6 + 6;
  v119 = (v15 + 32);
  v132 = (v15 + 8);
  v118 = v63;
  v117 = v66;
  while (1)
  {
    if (v65 == v66)
    {
      v67 = 1;
      v68 = v66;
    }

    else
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      if (v65 >= *(v63 + 16))
      {
        goto LABEL_53;
      }

      v68 = v65 + 1;
      v69 = v63 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v65;
      v70 = *(v60 + 48);
      v71 = v116;
      *v116 = v65;
      sub_1D61B9368(v69, v71 + v70, sub_1D61B91E4);
      sub_1D5BE748C(v71, v61, sub_1D61B9178);
      v67 = 0;
    }

    (*v124)(v61, v67, 1, v60);
    sub_1D61B9288(v61, v62, &unk_1EDF04710, sub_1D61B9178);
    if ((*v123)(v62, 1, v60) == 1)
    {
      goto LABEL_50;
    }

    v129 = *v62;
    v130 = v68;
    v72 = v62 + *(v60 + 48);
    v73 = *v72;
    v75 = v134;
    v74 = v135;
    v76 = *(v134 + 64);
    v77 = *v119;
    v131 = *(v72 + 8);
    v78 = v120;
    v77(&v120[v76], &v72[v76], v135);
    v79 = *(v75 + 64);
    v80 = v136;
    *v136 = v73;
    *(v80 + 1) = v131;
    v77(v80 + v79, &v78[v76], v74);
    v81 = v121;
    sub_1D61B9368(v80, v121, sub_1D61B91E4);

    v82 = *(v81 + 16);
    v83 = *v132;
    (*v132)(v81 + *(v75 + 64), v74);
    if (!v82[2] || (v84 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574), (v85 & 1) == 0))
    {
      v138 = 0u;
      v139 = 0u;
      sub_1D61B9308(&v138, sub_1D5BE1404);
      goto LABEL_33;
    }

    sub_1D5B76B10(v82[7] + 32 * v84, &v138);
    sub_1D61B9308(&v138, sub_1D5BE1404);
    *(&v139 + 1) = MEMORY[0x1E69E6530];
    *&v138 = v129;
    sub_1D5B7C390(&v138, v137);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v82;
    v87 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574);
    v89 = v82[2];
    v90 = (v88 & 1) == 0;
    v91 = __OFADD__(v89, v90);
    v92 = v89 + v90;
    if (v91)
    {
      goto LABEL_55;
    }

    v93 = v88;
    if (v82[3] < v92)
    {
      sub_1D5BAFF10(v92, isUniquelyReferenced_nonNull_native);
      v87 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574);
      if ((v93 & 1) != (v94 & 1))
      {
        goto LABEL_57;
      }

LABEL_43:
      v82 = v140;
      if (v93)
      {
        goto LABEL_44;
      }

      goto LABEL_48;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_43;
    }

    v111 = v87;
    sub_1D5C06BE0();
    v87 = v111;
    v82 = v140;
    if (v93)
    {
LABEL_44:
      v110 = (v82[7] + 32 * v87);
      __swift_destroy_boxed_opaque_existential_1(v110);
      sub_1D5B7C390(v137, v110);
      goto LABEL_33;
    }

LABEL_48:
    v82[(v87 >> 6) + 8] |= 1 << v87;
    v112 = (v82[6] + 16 * v87);
    *v112 = 0x616470557473616CLL;
    v112[1] = 0xEB00000000646574;
    sub_1D5B7C390(v137, (v82[7] + 32 * v87));
    v113 = v82[2];
    v91 = __OFADD__(v113, 1);
    v114 = v113 + 1;
    if (v91)
    {
      goto LABEL_56;
    }

    v82[2] = v114;
LABEL_33:
    v95 = v133;
    sub_1D61B9368(v136, v133, sub_1D61B91E4);
    v97 = *v95;
    v96 = v95[1];

    v98 = swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v64;
    v100 = sub_1D5B69D90(v97, v96);
    v101 = v64[2];
    v102 = (v99 & 1) == 0;
    v103 = v101 + v102;
    if (__OFADD__(v101, v102))
    {
      break;
    }

    v104 = v99;
    if (v64[3] >= v103)
    {
      if (v98)
      {
        if (v99)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1D6D82844();
        if (v104)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_1D6D6E4E4(v103, v98);
      v105 = sub_1D5B69D90(v97, v96);
      if ((v104 & 1) != (v106 & 1))
      {
        goto LABEL_57;
      }

      v100 = v105;
      if (v104)
      {
LABEL_18:

        v64 = v138;
        *(*(v138 + 56) + 8 * v100) = v82;

        sub_1D61B9308(v136, sub_1D61B91E4);
        goto LABEL_19;
      }
    }

    v64 = v138;
    *(v138 + 8 * (v100 >> 6) + 64) |= 1 << v100;
    v107 = (v64[6] + 16 * v100);
    *v107 = v97;
    v107[1] = v96;
    *(v64[7] + 8 * v100) = v82;
    sub_1D61B9308(v136, sub_1D61B91E4);
    v108 = v64[2];
    v91 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v91)
    {
      goto LABEL_54;
    }

    v64[2] = v109;
LABEL_19:
    v83(v133 + *(v134 + 64), v135);

    v60 = v127;
    v61 = v126;
    v62 = v125;
    v63 = v118;
    v66 = v117;
    v65 = v130;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_1D726493C();
  __break(1u);
LABEL_58:

  __break(1u);
}

unint64_t sub_1D61ADB2C(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
  v8 = [v2 isRouteable];
  v27 = MEMORY[0x1E69E6370];
  LOBYTE(v26) = v8;
  sub_1D5B7C390(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v7;
  sub_1D5BAFB24(v25, 0x626174756F527369, 0xEA0000000000656CLL, isUniquelyReferenced_nonNull_native);
  v10 = v24;
  v11 = [v2 eventLeagueTag];
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for SportsRoster(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = sub_1D61B051C(v6, 0, ObjectType);
  swift_unknownObjectRelease();
  sub_1D61B8FBC(v6, &qword_1EDF11F60, type metadata accessor for SportsRoster);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  v17 = v16;
  v27 = v16;
  *&v26 = v15;
  sub_1D5B7C390(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v10;
  sub_1D5BAFB24(v25, 0x654C7374726F7073, 0xEC00000065756761, v18);
  v19 = v24;
  v14(v6, 1, 1, v13);
  v20 = sub_1D61B051C(v6, 0, v23);
  sub_1D61B8FBC(v6, &qword_1EDF11F60, type metadata accessor for SportsRoster);
  v27 = v17;
  *&v26 = v20;
  sub_1D5B7C390(&v26, v25);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v19;
  sub_1D5BAFB24(v25, 0x76457374726F7073, 0xEB00000000746E65, v21);
  return v24;
}

void *sub_1D61ADE14(unint64_t a1, uint64_t *a2)
{
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v41 - v6;
  v8 = *a2;
  v9 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

  result = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v10, v11);
  v44 = result;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_22:

    return v9;
  }

  result = sub_1D7263BFC();
  v13 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v14 = 0;
    v46 = a1 & 0xC000000000000001;
    v42 = a1;
    v43 = v13;
    do
    {
      if (v46)
      {
        v15 = MEMORY[0x1DA6FB460](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v17 = [v15 UMCCanonicalID];
      if (v17)
      {
        v18 = v17;
        v47 = sub_1D726207C();
        v20 = v19;

        if (v8)
        {
          v21 = v7;
          v45 = v9;
          v22 = v8;
          v23 = [v15 identifier];
          v24 = sub_1D726207C();
          v26 = v25;

          v8 = v22;
          if (*(v22 + 16))
          {
            v27 = sub_1D5B69D90(v24, v26);
            v29 = v28;

            if (v29)
            {
              v30 = *(v22 + 56);
              v31 = type metadata accessor for SportsRoster(0);
              v32 = *(v31 - 8);
              sub_1D61B9368(v30 + *(v32 + 72) * v27, v21, type metadata accessor for SportsRoster);
              v33 = v31;
              v7 = v21;
              (*(v32 + 56))(v21, 0, 1, v33);
              a1 = v42;
            }

            else
            {
              v36 = type metadata accessor for SportsRoster(0);
              v7 = v21;
              (*(*(v36 - 8) + 56))(v21, 1, 1, v36);
            }

            v8 = v22;
          }

          else
          {

            v35 = type metadata accessor for SportsRoster(0);
            v7 = v21;
            (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
          }

          v9 = v45;
        }

        else
        {
          v34 = type metadata accessor for SportsRoster(0);
          (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
        }

        v37 = v44;

        v38 = sub_1D61B051C(v7, v37, ObjectType);

        sub_1D61B8FBC(v7, &qword_1EDF11F60, type metadata accessor for SportsRoster);
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        v51 = v39;
        *&v50 = v38;
        sub_1D5B7C390(&v50, v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v9;
        sub_1D5BAFB24(v49, v47, v20, isUniquelyReferenced_nonNull_native);

        swift_unknownObjectRelease();
        v9 = v48;
        v13 = v43;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v14;
    }

    while (v13 != v14);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D61AE28C(uint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    v29 = MEMORY[0x1E69E7CC0];

    return sub_1D5BE1168(v29);
  }

  v2 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v42 = *(v5 + 16);
  if (!v42)
  {
    swift_unknownObjectRetain();

    v9 = MEMORY[0x1E69E7CC8];
LABEL_23:
    v31 = v5;
    sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
    inited = swift_initStackObject();
    *(inited + 32) = 0x696669746E656469;
    *(inited + 16) = xmmword_1D7270C10;
    v33 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xEA00000000007265;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v33;
    *(inited + 80) = 0x6574656D61726170;
    *(inited + 88) = 0xEA00000000007372;
    sub_1D61B94CC(0, &qword_1EDF05810, v33, MEMORY[0x1E69E5E28]);
    *(inited + 120) = v34;
    *(inited + 96) = v9;

    v35 = sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
    swift_arrayDestroy();
    sub_1D5F8BBC8(v2, v1, v3, v4, v6, v31);
    return v35;
  }

  v38 = *a1;
  v39 = a1[2];
  v40 = a1[1];
  v36 = a1[4];
  v37 = a1[3];
  sub_1D5F8B638(v2, v1, v3);

  v7 = 0;
  v8 = (v5 + 56);
  v9 = MEMORY[0x1E69E7CC8];
  v41 = v5;
  while (v7 < *(v5 + 16))
  {
    v12 = *(v8 - 3);
    v11 = *(v8 - 2);
    v13 = *(v8 - 1);
    v14 = *v8;

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_1D5B69D90(v12, v11);
    v18 = v9[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_25;
    }

    v21 = v16;
    if (v9[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v16)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D6D7DE64();
        if (v21)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D6D666FC(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_1D5B69D90(v12, v11);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_27;
      }

      v17 = v22;
      if (v21)
      {
LABEL_4:
        v10 = (v9[7] + 16 * v17);
        *v10 = v13;
        v10[1] = v14;

        goto LABEL_5;
      }
    }

    v9[(v17 >> 6) + 8] |= 1 << v17;
    v24 = (v9[6] + 16 * v17);
    *v24 = v12;
    v24[1] = v11;
    v25 = (v9[7] + 16 * v17);
    *v25 = v13;
    v25[1] = v14;

    v26 = v9[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_26;
    }

    v9[2] = v28;
LABEL_5:
    ++v7;
    v8 += 4;
    v5 = v41;
    if (v42 == v7)
    {

      v3 = v39;
      v1 = v40;
      v4 = v37;
      v2 = v38;
      v6 = v36;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void *sub_1D61AE64C(uint64_t a1, void *a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v8)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);
    sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v35 = v18;
    *&v34 = v17;
    sub_1D5B7C390(&v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = a2;
    v20 = sub_1D5B69D90(v16, v15);
    v22 = a2[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (a2[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_1D5C06BE0();
        v20 = v31;
      }
    }

    else
    {
      sub_1D5BAFF10(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D5B69D90(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v20;

      a2 = v36;
      v11 = (v36[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_1D5B7C390(v33, v11);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a2 = v36;
      v36[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (a2[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      sub_1D5B7C390(v33, (a2[7] + 32 * v20));
      v29 = a2[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      a2[2] = v30;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void *sub_1D61AE8D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v117 = *MEMORY[0x1E69E9840];
  v102 = *v2;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v98 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v105 = v90 - v11;
  v12 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v2 + v12) = v13 | 0x2000000000000000;
  v14 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  v15 = *(*(v14 - 8) + 56);
  v101 = v12;
  v15(v2 + v12, 0, 1, v14);
  v99 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents) = a2;
  v100 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents) = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v107 = v16;
  inited = swift_initStackObject();
  v109 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  v106 = inited + 32;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v18 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = v109;
  *(v19 + 32) = 0x676E69646E617473;
  *(v19 + 40) = 0xE800000000000000;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v18);
  v20 = swift_initStackObject();
  *(v20 + 16) = v109;
  v21 = a1[6];
  *(v20 + 32) = a1[5];
  *(v20 + 40) = v21;

  v22 = v108;
  sub_1D61ACEC8(a2, v23);
  v103 = v22;
  if (v22)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
    swift_arrayDestroy();
    v25 = v101;
  }

  else
  {
    v91 = v24;
    v92 = v20;
    v93 = v20 + 32;
    v94 = v19;
    v95 = v19 + 32;
    v96 = v2;
    v104 = inited;

    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1D7279970;
    strcpy((v26 + 32), "umcCanonicalId");
    *(v26 + 47) = -18;
    v27 = a1[6];
    v28 = MEMORY[0x1E69E6158];
    *(v26 + 48) = a1[5];
    *(v26 + 56) = v27;
    *(v26 + 72) = v28;
    *(v26 + 80) = 0xD000000000000010;
    *(v26 + 88) = 0x80000001D73CD450;
    v97 = a1;
    v29 = a1[4];

    *&v109 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

    v32 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v30, v31);
    v33 = v29;
    v34 = v32;
    if (v33 >> 62)
    {
      v88 = v33;
      v89 = sub_1D7263BFC();
      v33 = v88;
      v35 = v89;
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v106;
    v37 = v104;
    v90[0] = v26;
    v90[1] = v26 + 32;
    if (v35)
    {
      if (v35 < 1)
      {
        __break(1u);
      }

      v38 = 0;
      v107 = v33 & 0xC000000000000001;
      v108 = v33;
      do
      {
        if (v107)
        {
          v50 = MEMORY[0x1DA6FB460](v38);
        }

        else
        {
          v50 = *(v33 + 8 * v38 + 32);
          swift_unknownObjectRetain();
        }

        ObjectType = swift_getObjectType();
        v52 = [v50 UMCCanonicalID];
        if (v52)
        {
          v39 = v52;
          v40 = sub_1D726207C();
          v42 = v41;

          v43 = type metadata accessor for SportsRoster(0);
          v44 = v105;
          (*(*(v43 - 8) + 56))(v105, 1, 1, v43);

          v45 = sub_1D61B051C(v44, v34, ObjectType);

          sub_1D61B8FBC(v44, &qword_1EDF11F60, type metadata accessor for SportsRoster);
          sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
          v114 = v46;
          *&v112 = v45;
          sub_1D5B7C390(&v112, v111);
          v47 = v109;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v47;
          v49 = v40;
          v36 = v106;
          sub_1D5BAFB24(v111, v49, v42, isUniquelyReferenced_nonNull_native);
          v37 = v104;

          swift_unknownObjectRelease();
          *&v109 = v110;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v38;
        v33 = v108;
      }

      while (v35 != v38);
    }

    v53 = MEMORY[0x1E69E7CA0];
    sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v55 = v54;
    v56 = v90[0];
    *(v90[0] + 96) = v109;
    v56[15] = v54;
    v56[16] = 0x6E6F436465626D65;
    v56[17] = 0xEB00000000676966;
    v57 = *(v97 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8);
    v58 = *(v97 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16);
    v59 = *(v97 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24);
    v60 = *(v97 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 32);
    v61 = *(v97 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 40);
    *&v112 = *(v97 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
    *(&v112 + 1) = v57;
    v113 = v58;
    v114 = v59;
    v115 = v60;
    v116 = v61;
    sub_1D5F8B638(v112, v57, v58);
    v62 = sub_1D61AE28C(&v112);
    sub_1D5F8BBC8(v112, *(&v112 + 1), v113, v114, v115, v116);
    v56[21] = v55;
    v56[18] = v62;
    v63 = sub_1D5BE1168(v56);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, v53 + 8);
    swift_arrayDestroy();
    v64 = v103;
    v65 = sub_1D61AE64C(v91, v63);
    if (v64)
    {

      swift_setDeallocating();
      sub_1D61B8D8C(0);
      swift_arrayDestroy();

      swift_setDeallocating();
      sub_1D61B8C94(0);
      swift_arrayDestroy();

      swift_setDeallocating();
      swift_arrayDestroy();
      v3 = v96;
      v25 = v101;
      v103 = v64;
    }

    else
    {
      v67 = v65;

      v68 = v92;
      *(v92 + 48) = v67;
      v69 = sub_1D605D38C(v68);
      swift_setDeallocating();
      sub_1D61B9308(v93, sub_1D61B8D8C);
      v70 = v94;
      *(v94 + 48) = v69;
      v71 = sub_1D605D4A0(v70);
      swift_setDeallocating();
      sub_1D61B9308(v95, sub_1D61B8C94);
      sub_1D61B8EA4(0);
      *(v37 + 72) = v72;
      *(v37 + 48) = v71;
      sub_1D5BE1168(v37);
      swift_setDeallocating();
      sub_1D61B8F0C(v36, &qword_1EDF1B5F0, v53 + 8);
      v73 = objc_opt_self();
      v74 = sub_1D7261D2C();

      *&v112 = 0;
      v75 = [v73 dataWithJSONObject:v74 options:2 error:&v112];

      v76 = v112;
      v3 = v96;
      v25 = v101;
      if (v75)
      {
        v77 = sub_1D725867C();
        v79 = v78;

        sub_1D72620CC();
        sub_1D726209C();
        if (v80)
        {
          sub_1D5B952F8(v77, v79);
          v81 = objc_allocWithZone(MEMORY[0x1E69CE158]);
          v82 = sub_1D726203C();

          v83 = [v81 initWithJSONString_];

          *(v3 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v83;
          return v3;
        }

        sub_1D61B8F68();
        v86 = swift_allocError();
        *v87 = 2;
        v103 = v86;
        swift_willThrow();

        sub_1D5B952F8(v77, v79);
      }

      else
      {
        v84 = v76;
        v85 = sub_1D725829C();

        v103 = v85;
        swift_willThrow();
      }
    }
  }

  sub_1D61B8FBC(v3 + v25, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v3;
}

void *sub_1D61AF414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v67 = *MEMORY[0x1E69E9840];
  v54 = *v3;
  v9 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v52[1] = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E4CF90(0);
  v60 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *&v5[v17] = v18 | 0x4000000000000000;
  v19 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(*(v19 - 8) + 56);
  v53 = v17;
  v20(&v5[v17], 0, 1, v19);
  v52[2] = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v5[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v59 = v5;
  v52[3] = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *&v5[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = a3;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v56 = v21;
  inited = swift_initStackObject();
  *(inited + 32) = 0x74656B63617262;
  v58 = inited + 32;
  v55 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0xE700000000000000;
  v23 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
  v61 = a3;

  v24 = sub_1D605D4B8(MEMORY[0x1E69E7CC0]);
  sub_1D61B93D0();
  v57 = inited;
  *(inited + 72) = v25;
  v66 = v24;
  v26 = *(v13 + 16);
  v62 = a1;
  v26(v16, a1 + v23, v60);
  sub_1D61B9434(&unk_1EDF17890, sub_1D5E4CF90, MEMORY[0x1E69D6BB0]);
  sub_1D726238C();
  v27 = v64;
  if (v64 >> 62)
  {
    goto LABEL_24;
  }

  v28 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  for (i = v65; v65 != v28; i = v65)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1DA6FB460](i, v27);
      v47 = v38;
      v48 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ((i & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v28 = sub_1D7263BFC();
        goto LABEL_3;
      }

      if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v47 = *(v27 + 32 + 8 * i);

      v48 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v65 = v48;
    v63 = v47;
    sub_1D61AFC34(&v66, &v63, v61, v62, a2);
    if (v4)
    {

      __swift_deallocate_boxed_opaque_existential_0(v57 + 48);

      swift_setDeallocating();
      sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
      swift_arrayDestroy();
      goto LABEL_20;
    }
  }

  v30 = v57;
  *(v57 + 48) = v66;
  v31 = sub_1D5BE1168(v30);
  swift_setDeallocating();
  v32 = MEMORY[0x1E69E7CA0];
  sub_1D61B8F0C(v58, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v33 = swift_initStackObject();
  *(v33 + 16) = v55;
  *(v33 + 32) = 0xD00000000000001DLL;
  *(v33 + 40) = 0x80000001D73CD430;
  sub_1D61B94CC(0, &qword_1EDF1B790, v32 + 8, MEMORY[0x1E69E5E28]);
  *(v33 + 72) = v34;
  *(v33 + 48) = v31;
  sub_1D5BE1168(v33);
  swift_setDeallocating();
  sub_1D61B8F0C(v33 + 32, &qword_1EDF1B5F0, v32 + 8);
  v35 = objc_opt_self();
  v36 = sub_1D7261D2C();

  v64 = 0;
  v37 = [v35 dataWithJSONObject:v36 options:2 error:&v64];

  v38 = v64;
  if (!v37)
  {
LABEL_17:
    v49 = v38;
    sub_1D725829C();

    swift_willThrow();

LABEL_20:
    v46 = v59;
    sub_1D61B8FBC(v59 + v53, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

    swift_deallocPartialClassInstance();
    return v46;
  }

  v39 = sub_1D725867C();
  v41 = v40;

  sub_1D72620CC();
  sub_1D726209C();
  if (!v42)
  {
    sub_1D61B8F68();
    swift_allocError();
    *v50 = 2;
    swift_willThrow();

    sub_1D5B952F8(v39, v41);
    goto LABEL_20;
  }

  sub_1D5B952F8(v39, v41);
  v43 = objc_allocWithZone(MEMORY[0x1E69CE158]);
  v44 = sub_1D726203C();

  v45 = [v43 initWithJSONString_];

  v46 = v59;
  *(v59 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v45;
  return v46;
}

void sub_1D61AFC34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a3;
  v74 = a4;
  v71 = a1;
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v81 = &v71 - v9;
  v10 = *a2;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  strcpy((inited + 32), "umcCanonicalId");
  *(inited + 47) = -18;
  v13 = v10[5];
  v12 = v10[6];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D73CD450;
  v14 = v10[4];

  v15 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

  v18 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v16, v17);
  v82 = v14;
  if (v14 >> 62)
  {
    v19 = sub_1D7263BFC();
  }

  else
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = inited;
  v78 = inited + 32;
  v79 = v10;
  v72 = a5;
  v73 = inited + 80;
  if (v19)
  {
    v80 = v19;
    if (v19 < 1)
    {
      __break(1u);
      return;
    }

    v20 = 0;
    v21 = v82;
    v83 = v82 & 0xC000000000000001;
    v22 = v80;
    do
    {
      if (v83)
      {
        v33 = MEMORY[0x1DA6FB460](v20, v21);
      }

      else
      {
        v33 = *(v21 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v35 = [v33 UMCCanonicalID];
      if (v35)
      {
        v23 = v35;
        v24 = sub_1D726207C();
        v26 = v25;

        v27 = type metadata accessor for SportsRoster(0);
        v28 = v81;
        (*(*(v27 - 8) + 56))(v81, 1, 1, v27);

        v29 = sub_1D61B051C(v28, v18, ObjectType);

        sub_1D61B8FBC(v28, &qword_1EDF11F60, type metadata accessor for SportsRoster);
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        v88 = v30;
        *&v86 = v29;
        sub_1D5B7C390(&v86, &v84);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v15;
        v32 = v24;
        v21 = v82;
        sub_1D5BAFB24(&v84, v32, v26, isUniquelyReferenced_nonNull_native);
        v22 = v80;

        swift_unknownObjectRelease();
        v15 = v91;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v20;
    }

    while (v22 != v20);
  }

  v36 = MEMORY[0x1E69E7CA0];
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  v38 = v37;
  v39 = v77;
  v40 = v77;
  *(v77 + 128) = 0x6E6F436465626D65;
  v41 = v40 + 128;
  *(v41 - 8) = v37;
  *(v41 - 32) = v15;
  *(v41 + 8) = 0xEB00000000676966;
  v42 = *(v79 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
  v43 = *(v79 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
  v44 = *(v79 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
  v45 = *(v79 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
  v46 = *(v79 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
  *&v86 = *(v79 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  *(&v86 + 1) = v42;
  v87 = v43;
  v88 = v44;
  v89 = v45;
  v90 = v46;
  sub_1D5F8B638(v86, v42, v43);
  v47 = sub_1D61AE28C(&v86);
  sub_1D5F8BBC8(v86, *(&v86 + 1), v87, v88, v89, v90);
  *(v41 + 16) = v47;
  *(v41 + 40) = v38;
  strcpy((v41 + 48), "childrenData");
  *(v41 + 61) = 0;
  *(v41 + 62) = -5120;
  v48 = v76;
  sub_1D61B0478(v75);
  if (v48)
  {

    sub_1D61B8F0C(v41, &qword_1EDF1B5F0, v36 + 8);
    sub_1D61B8F0C(v73, &qword_1EDF1B5F0, v36 + 8);
    sub_1D61B8F0C(v78, &qword_1EDF1B5F0, v36 + 8);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, v36 + 8);
    swift_arrayDestroy();
  }

  else
  {
    v50 = v49;
    sub_1D61B8E1C(0, &qword_1EC884E38, MEMORY[0x1E69E62F8]);
    *(v39 + 216) = v51;
    *(v39 + 192) = v50;
    v52 = sub_1D5BE1168(v39);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, v36 + 8);
    swift_arrayDestroy();
    sub_1D5E4CF90(0);
    sub_1D725BE8C();
    v53 = *(v86 + 56);
    swift_unknownObjectRetain();

    if (v53)
    {
      v54 = swift_getObjectType();
      v55 = type metadata accessor for SportsRoster(0);
      v56 = v81;
      (*(*(v55 - 8) + 56))(v81, 1, 1, v55);
      v57 = sub_1D61B051C(v56, 0, v54);
      swift_unknownObjectRelease();
      sub_1D61B8FBC(v56, &qword_1EDF11F60, type metadata accessor for SportsRoster);
      v88 = v38;
      *&v86 = v57;
      sub_1D5B7C390(&v86, &v84);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v52;
      sub_1D5BAFB24(&v84, 0x654C7374726F7073, 0xEC00000065756761, v58);
      v52 = v91;
    }

    sub_1D725BE8C();
    v59 = *(v86 + 64);
    swift_unknownObjectRetain();

    if (v59)
    {
      v60 = swift_getObjectType();
      v61 = type metadata accessor for SportsRoster(0);
      v62 = v81;
      (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
      v63 = sub_1D61B051C(v62, 0, v60);
      swift_unknownObjectRelease();
      sub_1D61B8FBC(v62, &qword_1EDF11F60, type metadata accessor for SportsRoster);
      v88 = v38;
      *&v86 = v63;
      sub_1D5B7C390(&v86, &v84);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v52;
      sub_1D5BAFB24(&v84, 0xD000000000000012, 0x80000001D73CD4D0, v64);
      v52 = v91;
    }

    v65 = v72;
    v66 = v79[6];
    *&v84 = v79[5];
    *(&v84 + 1) = v66;

    sub_1D7263C9C();
    sub_1D61ACEC8(v65, v67);
    v69 = sub_1D61AE64C(v68, v52);

    v85 = v38;
    *&v84 = v69;
    sub_1D6D6138C(&v84, &v86, v70);
  }
}

void sub_1D61B0478(uint64_t a1)
{
  if (a1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v2 = *(a1 + 16);
    if (v2)
    {
      for (i = (a1 + 32); ; ++i)
      {
        v5 = *i;

        sub_1D61B6FA4(&v6, &v5, v4);
        if (v1)
        {
          break;
        }

        if (!--v2)
        {
          return;
        }
      }
    }
  }
}

unint64_t sub_1D61B051C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v394 = a3;
  v404 = a2;
  v417 = a1;
  v439 = type metadata accessor for SportsRosterPlayer(0);
  v386 = *(v439 - 1);
  MEMORY[0x1EEE9AC00](v439, v5);
  v442 = (&v386 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v415 = &v386 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v408 = &v386 - v13;
  v406 = type metadata accessor for SportsRoster(0);
  v407 = *(v406 - 8);
  MEMORY[0x1EEE9AC00](v406, v14);
  v393 = &v386 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v405 = &v386 - v18;
  v435 = sub_1D72620DC();
  v425 = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435, v19);
  v434 = &v386 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62C58(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v10);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v414 = &v386 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v413 = &v386 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v412 = &v386 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v433 = &v386 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v411 = &v386 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v432 = &v386 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v410 = &v386 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v431 = &v386 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v409 = &v386 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v430 = &v386 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v416 = &v386 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v429 = &v386 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v402 = &v386 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v422 = &v386 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v403 = &v386 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v400 = &v386 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v421 = &v386 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v401 = &v386 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v399 = &v386 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v420 = &v386 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v424 = &v386 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v397 = &v386 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v419 = &v386 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v398 = &v386 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v395 = &v386 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v418 = &v386 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v441 = &v386 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v105 = &v386 - v104;
  MEMORY[0x1EEE9AC00](v106, v107);
  v440 = (&v386 - v108);
  MEMORY[0x1EEE9AC00](v109, v110);
  v396 = &v386 - v111;
  v112 = sub_1D72585BC();
  v426 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v113);
  v392 = &v386 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v115, v116);
  v391 = &v386 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v390 = &v386 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v389 = &v386 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v388 = &v386 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v387 = &v386 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v133 = &v386 - v132;
  v134 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
  v135 = [v3 identifier];
  v136 = sub_1D726207C();
  v138 = v137;

  v139 = MEMORY[0x1E69E6158];
  v446 = MEMORY[0x1E69E6158];
  *&v445 = v136;
  *(&v445 + 1) = v138;
  sub_1D5B7C390(&v445, &v444);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v443 = v134;
  sub_1D5BAFB24(&v444, 0x6449676174, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v447 = v443;
  v141 = [v3 identifier];
  if (!v141)
  {
    sub_1D726207C();
    v141 = sub_1D726203C();
  }

  v142 = [objc_opt_self() nss:v141 NewsURLForTagID:0 feedConfiguration:?];

  sub_1D72584EC();
  v143 = sub_1D72583DC();
  v145 = v144;
  v146 = v426;
  v147 = *(v426 + 8);
  v437 = v426 + 8;
  v438 = v112;
  v436 = v147;
  v147(v133, v112);
  v446 = v139;
  *&v445 = v143;
  *(&v445 + 1) = v145;
  sub_1D5B7C390(&v445, &v444);
  v148 = v447;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v443 = v148;
  sub_1D5BAFB24(&v444, 0x5564656546676174, 0xEA00000000006C72, v149);
  v447 = v443;
  v150 = &off_1E84D3000;
  v423 = v4;
  v151 = [v4 sportsTheme];
  v152 = v146;
  v153 = v395;
  if (v151)
  {
    v154 = [v151 sportsLogoImageAssetHandle];
    swift_unknownObjectRelease();
    v155 = v440;
    v156 = v441;
    if (v154)
    {
      v157 = [v154 remoteURL];
      sub_1D72584EC();

      v158 = 0;
    }

    else
    {
      v158 = 1;
    }
  }

  else
  {
    v154 = 0;
    v158 = 1;
    v155 = v440;
    v156 = v441;
  }

  v159 = v438;
  v428 = *(v152 + 56);
  v427 = v152 + 56;
  v428(v155, v158, 1, v438);
  sub_1D61B902C(v155, v105, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v440 = *(v152 + 48);
  v441 = (v152 + 48);
  if (v440(v105, 1, v159) == 1)
  {

    sub_1D61B8FBC(v105, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_12:
    v164 = v418;
    v165 = v396;
    sub_1D61B9288(v155, v396, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v166 = v423;
    goto LABEL_14;
  }

  sub_1D72583DC();
  v436(v105, v159);
  v160 = v434;
  sub_1D72620CC();
  v161 = sub_1D726208C();
  v163 = v162;

  (*(v425 + 8))(v160, v435);
  if (v163 >> 60 == 15)
  {

    v150 = &off_1E84D3000;
    v152 = v426;
    goto LABEL_12;
  }

  v167 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v167);

  v168 = v396;
  sub_1D725855C();

  sub_1D5B952E4(v161, v163);

  v165 = v168;
  sub_1D61B8FBC(v155, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v166 = v423;
  v150 = &off_1E84D3000;
  v152 = v426;
  v164 = v418;
LABEL_14:
  v169 = v438;
  if (v440(v165, 1, v438) == 1)
  {
    sub_1D61B8FBC(v165, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v170 = v387;
    (*(v152 + 32))(v387, v165, v169);
    v171 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v171;
    *(&v445 + 1) = v172;
    sub_1D5B7C390(&v445, &v444);
    v173 = v447;
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v173;
    sub_1D5BAFB24(&v444, 0x6C72556F676F6CLL, 0xE700000000000000, v174);
    v436(v170, v169);
    v447 = v443;
  }

  v175 = [v166 v150[456]];
  if (v175)
  {
    v176 = [v175 sportsLogoImageCompactAssetHandle];
    swift_unknownObjectRelease();
    if (v176)
    {
      v177 = [v176 remoteURL];
      sub_1D72584EC();

      v178 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v176 = 0;
  }

  v178 = 1;
LABEL_22:
  v428(v164, v178, 1, v169);
  sub_1D61B902C(v164, v153, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v153, 1, v169) == 1)
  {

    sub_1D61B8FBC(v153, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_26:
    v183 = v419;
    sub_1D61B9288(v418, v156, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_28;
  }

  sub_1D72583DC();
  v436(v153, v169);
  v179 = v434;
  sub_1D72620CC();
  v180 = sub_1D726208C();
  v182 = v181;

  (*(v425 + 8))(v179, v435);
  if (v182 >> 60 == 15)
  {

    v169 = v438;
    v150 = &off_1E84D3000;
    v152 = v426;
    goto LABEL_26;
  }

  v184 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v184);

  sub_1D725855C();

  sub_1D5B952E4(v180, v182);

  sub_1D61B8FBC(v418, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v150 = &off_1E84D3000;
  v152 = v426;
  v183 = v419;
LABEL_28:
  if (v440(v156, 1, v169) == 1)
  {
    sub_1D61B8FBC(v156, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v185 = v388;
    (*(v152 + 32))(v388, v156, v169);
    v186 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v186;
    *(&v445 + 1) = v187;
    sub_1D5B7C390(&v445, &v444);
    v188 = v447;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v188;
    sub_1D5BAFB24(&v444, 0x436C72556F676F6CLL, 0xEE00746361706D6FLL, v189);
    v436(v185, v169);
    v447 = v443;
  }

  v190 = [v166 v150[456]];
  if (v190)
  {
    v191 = [v190 sportsLogoImageLargeAssetHandle];
    swift_unknownObjectRelease();
    if (v191)
    {
      v192 = [v191 remoteURL];
      sub_1D72584EC();

      v193 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v191 = 0;
  }

  v193 = 1;
LABEL_36:
  v428(v183, v193, 1, v169);
  v194 = v183;
  v195 = v397;
  sub_1D61B902C(v194, v397, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v195, 1, v169) == 1)
  {

    sub_1D61B8FBC(v195, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_40:
    v200 = v420;
    v201 = v398;
    sub_1D61B9288(v419, v398, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_42;
  }

  sub_1D72583DC();
  v436(v195, v169);
  v196 = v434;
  sub_1D72620CC();
  v197 = sub_1D726208C();
  v199 = v198;

  (*(v425 + 8))(v196, v435);
  if (v199 >> 60 == 15)
  {

    v169 = v438;
    v150 = &off_1E84D3000;
    v152 = v426;
    goto LABEL_40;
  }

  v202 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v202);

  v203 = v398;
  sub_1D725855C();

  sub_1D5B952E4(v197, v199);

  v201 = v203;
  sub_1D61B8FBC(v419, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v150 = &off_1E84D3000;
  v152 = v426;
  v200 = v420;
LABEL_42:
  if (v440(v201, 1, v169) == 1)
  {
    sub_1D61B8FBC(v201, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v204 = v389;
    (*(v152 + 32))(v389, v201, v169);
    v205 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v205;
    *(&v445 + 1) = v206;
    sub_1D5B7C390(&v445, &v444);
    v207 = v447;
    v208 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v207;
    sub_1D5BAFB24(&v444, 0x4C6C72556F676F6CLL, 0xEC00000065677261, v208);
    v436(v204, v169);
    v447 = v443;
  }

  v209 = v424;
  v210 = [v166 v150[456]];
  if (v210)
  {
    v211 = [v210 sportsLogoAltImageAssetHandle];
    swift_unknownObjectRelease();
    if (v211)
    {
      v212 = [v211 remoteURL];
      sub_1D72584EC();

      v213 = 0;
    }

    else
    {
      v213 = 1;
    }

    v209 = v424;
  }

  else
  {
    v211 = 0;
    v213 = 1;
  }

  v428(v200, v213, 1, v169);
  v214 = v200;
  v215 = v399;
  sub_1D61B902C(v214, v399, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v215, 1, v169) == 1)
  {

    sub_1D61B8FBC(v215, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v216 = v421;
LABEL_55:
    sub_1D61B9288(v420, v209, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_57;
  }

  sub_1D72583DC();
  v436(v215, v169);
  v217 = v434;
  sub_1D72620CC();
  v218 = sub_1D726208C();
  v220 = v219;

  (*(v425 + 8))(v217, v435);
  if (v220 >> 60 == 15)
  {

    v169 = v438;
    v150 = &off_1E84D3000;
    v152 = v426;
    v216 = v421;
    v209 = v424;
    goto LABEL_55;
  }

  v221 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v221);

  v222 = v424;
  sub_1D725855C();
  v209 = v222;

  sub_1D5B952E4(v218, v220);

  sub_1D61B8FBC(v420, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v150 = &off_1E84D3000;
  v152 = v426;
  v216 = v421;
LABEL_57:
  v223 = v400;
  if (v440(v209, 1, v169) == 1)
  {
    sub_1D61B8FBC(v209, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v224 = *(v152 + 32);
    v225 = v390;
    v224(v390, v209, v169);
    v226 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v226;
    *(&v445 + 1) = v227;
    sub_1D5B7C390(&v445, &v444);
    v228 = v447;
    v229 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v228;
    sub_1D5BAFB24(&v444, 0x55746C416F676F6CLL, 0xEA00000000006C72, v229);
    v436(v225, v169);
    v447 = v443;
  }

  v230 = [v166 v150[456]];
  if (v230)
  {
    v231 = [v230 sportsLogoAltImageCompactAssetHandle];
    swift_unknownObjectRelease();
    if (v231)
    {
      v232 = [v231 remoteURL];
      sub_1D72584EC();

      v233 = 0;
      goto LABEL_65;
    }
  }

  else
  {
    v231 = 0;
  }

  v233 = 1;
LABEL_65:
  v428(v216, v233, 1, v169);
  sub_1D61B902C(v216, v223, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v223, 1, v169) == 1)
  {

    sub_1D61B8FBC(v223, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_69:
    v238 = v422;
    v239 = v401;
    sub_1D61B9288(v421, v401, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_71;
  }

  sub_1D72583DC();
  v436(v223, v169);
  v234 = v434;
  sub_1D72620CC();
  v235 = sub_1D726208C();
  v237 = v236;

  (*(v425 + 8))(v234, v435);
  if (v237 >> 60 == 15)
  {

    v169 = v438;
    v166 = v423;
    v150 = &off_1E84D3000;
    goto LABEL_69;
  }

  v240 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v240);

  v241 = v401;
  sub_1D725855C();

  sub_1D5B952E4(v235, v237);

  v239 = v241;
  sub_1D61B8FBC(v421, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v166 = v423;
  v150 = &off_1E84D3000;
  v238 = v422;
LABEL_71:
  if (v440(v239, 1, v169) == 1)
  {
    sub_1D61B8FBC(v239, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v242 = v391;
    (*(v426 + 32))(v391, v239, v169);
    v243 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v243;
    *(&v445 + 1) = v244;
    sub_1D5B7C390(&v445, &v444);
    v245 = v447;
    v246 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v245;
    sub_1D5BAFB24(&v444, 0xD000000000000011, 0x80000001D73CD490, v246);
    v436(v242, v169);
    v447 = v443;
  }

  v247 = [v166 v150[456]];
  if (v247)
  {
    v248 = [v247 sportsLogoAltImageLargeAssetHandle];
    swift_unknownObjectRelease();
    if (v248)
    {
      v249 = [v248 remoteURL];
      sub_1D72584EC();

      v250 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v248 = 0;
  }

  v250 = 1;
LABEL_79:
  v428(v238, v250, 1, v169);
  v251 = v238;
  v252 = v402;
  sub_1D61B902C(v251, v402, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v252, 1, v169) == 1)
  {

    sub_1D61B8FBC(v252, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v253 = v417;
    v254 = MEMORY[0x1E69E6158];
LABEL_83:
    v259 = v403;
    sub_1D61B9288(v422, v403, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_85;
  }

  sub_1D72583DC();
  v436(v252, v169);
  v255 = v434;
  sub_1D72620CC();
  v256 = sub_1D726208C();
  v258 = v257;

  (*(v425 + 8))(v255, v435);
  v254 = MEMORY[0x1E69E6158];
  if (v258 >> 60 == 15)
  {

    v169 = v438;
    v253 = v417;
    v166 = v423;
    v150 = &off_1E84D3000;
    goto LABEL_83;
  }

  v260 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v260);

  v261 = v403;
  sub_1D725855C();

  sub_1D5B952E4(v256, v258);

  v259 = v261;
  sub_1D61B8FBC(v422, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v253 = v417;
  v166 = v423;
  v150 = &off_1E84D3000;
LABEL_85:
  if (v440(v259, 1, v169) == 1)
  {
    sub_1D61B8FBC(v259, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v262 = v392;
    (*(v426 + 32))(v392, v259, v169);
    v263 = sub_1D72583DC();
    v446 = v254;
    *&v445 = v263;
    *(&v445 + 1) = v264;
    sub_1D5B7C390(&v445, &v444);
    v265 = v447;
    v266 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v265;
    sub_1D5BAFB24(&v444, 0x55746C416F676F6CLL, 0xEF656772614C6C72, v266);
    v436(v262, v169);
    v447 = v443;
  }

  v267 = [v166 sportsData];
  if (v267)
  {
    v268 = v267;
    v269 = sub_1D726207C();
    v271 = v270;

    v446 = v254;
    *&v445 = v269;
    *(&v445 + 1) = v271;
    sub_1D5B7C390(&v445, &v444);
    v272 = v447;
    v273 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v272;
    sub_1D5BAFB24(&v444, 0x61447374726F7073, 0xEA00000000006174, v273);
    v447 = v443;
  }

  v274 = [v166 v150[456]];
  if (v274)
  {
    v275 = [v274 sportsPrimaryColor];
    swift_unknownObjectRelease();
    if (v275)
    {
      v276 = [v275 hex];
      v277 = sub_1D726207C();
      v279 = v278;

      v446 = v254;
      *&v445 = v277;
      *(&v445 + 1) = v279;
      v169 = v438;
      sub_1D5B7C390(&v445, &v444);
      v280 = v447;
      v281 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v280;
      v150 = &off_1E84D3000;
      sub_1D5BAFB24(&v444, 0xD000000000000012, 0x80000001D73B7B50, v281);

      v447 = v443;
    }
  }

  if (v404)
  {
    v282 = sub_1D5F879DC(v166, v404);
    if (v282)
    {
      v283 = v282;
      v284 = sub_1D68C0160();
      v446 = v254;
      *&v445 = v284;
      *(&v445 + 1) = v285;
      sub_1D5B7C390(&v445, &v444);
      v286 = v447;
      v287 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v286;
      sub_1D5BAFB24(&v444, 0xD000000000000012, 0x80000001D73CD470, v287);

      v169 = v438;
      v447 = v443;
    }
  }

  v288 = [v166 v150[456]];
  if (v288)
  {
    v289 = [v288 sportsSecondaryColor];
    swift_unknownObjectRelease();
    if (v289)
    {
      v290 = [v289 hex];
      v291 = sub_1D726207C();
      v293 = v292;

      v446 = v254;
      *&v445 = v291;
      *(&v445 + 1) = v293;
      v169 = v438;
      sub_1D5B7C390(&v445, &v444);
      v294 = v447;
      v295 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v294;
      v150 = &off_1E84D3000;
      sub_1D5BAFB24(&v444, 0xD000000000000014, 0x80000001D73B7B70, v295);

      v447 = v443;
    }
  }

  v296 = [v166 v150[456]];
  if (v296)
  {
    v297 = [v296 sportsEventNavigationForegroundColor];
    swift_unknownObjectRelease();
    if (v297)
    {
      v298 = [v297 hex];
      v299 = sub_1D726207C();
      v301 = v300;

      v446 = v254;
      *&v445 = v299;
      *(&v445 + 1) = v301;
      v169 = v438;
      sub_1D5B7C390(&v445, &v444);
      v302 = v447;
      v303 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v302;
      sub_1D5BAFB24(&v444, 0xD000000000000024, 0x80000001D73B7C90, v303);

      v447 = v443;
    }
  }

  v304 = v408;
  sub_1D61B902C(v253, v408, &qword_1EDF11F60, type metadata accessor for SportsRoster);
  if ((*(v407 + 48))(v304, 1, v406) == 1)
  {
    sub_1D61B8FBC(v304, &qword_1EDF11F60, type metadata accessor for SportsRoster);
    return v447;
  }

  sub_1D5BE748C(v304, v405, type metadata accessor for SportsRoster);
  sub_1D61B90AC(0);
  v305 = sub_1D725AEAC();
  v306 = *(v305 + 16);
  if (v306)
  {
    *&v444 = MEMORY[0x1E69E7CC0];
    sub_1D6999000(0, v306, 0);
    v307 = v444;
    v308 = (*(v386 + 80) + 32) & ~*(v386 + 80);
    v404 = v305;
    v408 = v308;
    v309 = v305 + v308;
    v407 = *(v386 + 72);
    v310 = (v425 + 8);
    v417 = 0x80000001D73BE070;
    v311 = v416;
    while (1)
    {
      v427 = v307;
      v428 = v306;
      v420 = v309;
      v312 = v442;
      sub_1D61B9368(v309, v442, type metadata accessor for SportsRosterPlayer);
      v313 = v312[1];
      v426 = *v312;
      v314 = v312[3];
      v424 = v312[2];
      v422 = v312[4];
      v315 = v169;
      v316 = v312[5];
      v419 = v312[6];
      v317 = v312[7];
      v318 = v439[8];
      sub_1D61B902C(v312 + v318, v311, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      LODWORD(v312) = v440(v311, 1, v315);
      v418 = v317;

      v425 = v313;

      v421 = v316;

      v423 = v314;

      if (v312 == 1)
      {
        break;
      }

      sub_1D72583DC();
      v436(v311, v315);
      v319 = v434;
      sub_1D72620CC();
      v320 = sub_1D726208C();
      v322 = v321;

      (*v310)(v319, v435);
      if (v322 >> 60 == 15)
      {
        goto LABEL_109;
      }

      v323 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v323);

      sub_1D725855C();

      sub_1D5B952E4(v320, v322);
LABEL_111:
      v324 = v439[9];
      v325 = v409;
      sub_1D61B902C(v442 + v324, v409, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v326 = v438;
      if (v440(v325, 1, v438) == 1)
      {
        sub_1D61B8FBC(v325, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_114:
        sub_1D61B902C(v442 + v324, v430, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_116;
      }

      sub_1D72583DC();
      v436(v325, v326);
      v327 = v434;
      sub_1D72620CC();
      v328 = sub_1D726208C();
      v330 = v329;

      (*v310)(v327, v435);
      if (v330 >> 60 == 15)
      {
        goto LABEL_114;
      }

      v331 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v331);

      sub_1D725855C();

      sub_1D5B952E4(v328, v330);
LABEL_116:
      v332 = v439[10];
      v333 = v410;
      sub_1D61B902C(v442 + v332, v410, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v334 = v438;
      if (v440(v333, 1, v438) == 1)
      {
        sub_1D61B8FBC(v333, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_119:
        sub_1D61B902C(v442 + v332, v431, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_121;
      }

      sub_1D72583DC();
      v436(v333, v334);
      v335 = v434;
      sub_1D72620CC();
      v336 = sub_1D726208C();
      v338 = v337;

      (*v310)(v335, v435);
      if (v338 >> 60 == 15)
      {
        goto LABEL_119;
      }

      v339 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v339);

      sub_1D725855C();

      sub_1D5B952E4(v336, v338);
LABEL_121:
      v340 = v439[11];
      v341 = v411;
      sub_1D61B902C(v442 + v340, v411, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v342 = v438;
      if (v440(v341, 1, v438) == 1)
      {
        sub_1D61B8FBC(v341, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_124:
        sub_1D61B902C(v442 + v340, v432, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_126;
      }

      sub_1D72583DC();
      v436(v341, v342);
      v343 = v434;
      sub_1D72620CC();
      v344 = sub_1D726208C();
      v346 = v345;

      (*v310)(v343, v435);
      if (v346 >> 60 == 15)
      {
        goto LABEL_124;
      }

      v347 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v347);

      sub_1D725855C();

      sub_1D5B952E4(v344, v346);
LABEL_126:
      v348 = v439[12];
      v349 = v412;
      sub_1D61B902C(v442 + v348, v412, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v350 = v438;
      if (v440(v349, 1, v438) == 1)
      {
        sub_1D61B8FBC(v349, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_129:
        sub_1D61B902C(v442 + v348, v433, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_131;
      }

      sub_1D72583DC();
      v436(v349, v350);
      v351 = v434;
      sub_1D72620CC();
      v352 = sub_1D726208C();
      v354 = v353;

      (*v310)(v351, v435);
      if (v354 >> 60 == 15)
      {
        goto LABEL_129;
      }

      v355 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v355);

      sub_1D725855C();

      sub_1D5B952E4(v352, v354);
LABEL_131:
      v356 = v439[13];
      v357 = v414;
      sub_1D61B902C(v442 + v356, v414, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v358 = v438;
      if (v440(v357, 1, v438) == 1)
      {
        sub_1D61B8FBC(v357, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      else
      {
        sub_1D72583DC();
        v436(v357, v358);
        v359 = v434;
        sub_1D72620CC();
        v360 = sub_1D726208C();
        v362 = v361;

        (*v310)(v359, v435);
        if (v362 >> 60 != 15)
        {
          v364 = sub_1D725866C();
          *&v445 = 0xD000000000000018;
          *(&v445 + 1) = v417;
          MEMORY[0x1DA6F9910](v364);

          v363 = v413;
          sub_1D725855C();

          sub_1D5B952E4(v360, v362);
          goto LABEL_136;
        }
      }

      v363 = v413;
      sub_1D61B902C(v442 + v356, v413, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_136:
      v365 = v415;
      v366 = v439;
      v367 = v442;
      v368 = (v442 + v439[14]);
      v369 = *v368;
      v370 = v368[1];
      sub_1D5C30618(*v368, v370);
      sub_1D61B9308(v367, type metadata accessor for SportsRosterPlayer);
      v371 = v425;
      *v365 = v426;
      v365[1] = v371;
      v372 = v423;
      v365[2] = v424;
      v365[3] = v372;
      v373 = v421;
      v365[4] = v422;
      v365[5] = v373;
      v374 = v418;
      v365[6] = v419;
      v365[7] = v374;
      v375 = MEMORY[0x1E6968FB0];
      sub_1D61B9288(v429, v365 + v366[8], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D61B9288(v430, v365 + v366[9], &qword_1EDF45B40, v375);
      sub_1D61B9288(v431, v365 + v366[10], &qword_1EDF45B40, v375);
      sub_1D61B9288(v432, v365 + v366[11], &qword_1EDF45B40, v375);
      sub_1D61B9288(v433, v365 + v366[12], &qword_1EDF45B40, v375);
      sub_1D61B9288(v363, v365 + v366[13], &qword_1EDF45B40, v375);
      v376 = (v365 + v366[14]);
      *v376 = v369;
      v376[1] = v370;
      v307 = v427;
      *&v444 = v427;
      v378 = *(v427 + 16);
      v377 = *(v427 + 24);
      if (v378 >= v377 >> 1)
      {
        sub_1D6999000((v377 > 1), v378 + 1, 1);
        v307 = v444;
      }

      *(v307 + 16) = v378 + 1;
      v379 = v407;
      sub_1D5BE748C(v365, v307 + v408 + v378 * v407, type metadata accessor for SportsRosterPlayer);
      v309 = v420 + v379;
      v306 = v428 - 1;
      v311 = v416;
      v169 = v438;
      if (v428 == 1)
      {
        goto LABEL_139;
      }
    }

    sub_1D61B8FBC(v311, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_109:
    sub_1D61B902C(v442 + v318, v429, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_111;
  }

LABEL_139:

  sub_1D61B9434(&qword_1EDF0FD98, type metadata accessor for SportsRosterPlayer, &protocol conformance descriptor for SportsRosterPlayer);
  sub_1D61B9434(&qword_1EDF0FDA0, type metadata accessor for SportsRosterPlayer, &protocol conformance descriptor for SportsRosterPlayer);
  v380 = v393;
  sub_1D725AE9C();
  sub_1D61B9434(&qword_1EDF11FA8, type metadata accessor for SportsRoster, &protocol conformance descriptor for SportsRoster);
  v381 = sub_1D7261E5C();
  sub_1D61B9308(v380, type metadata accessor for SportsRoster);
  if (v381)
  {
    sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v446 = v382;
    *&v445 = v381;
    sub_1D5B7C390(&v445, &v444);
    v383 = v447;
    v384 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v383;
    sub_1D5BAFB24(&v444, 0x726574736F72, 0xE600000000000000, v384);
    sub_1D61B9308(v405, type metadata accessor for SportsRoster);
    return v443;
  }

  else
  {
    sub_1D607E0F0(0x726574736F72, 0xE600000000000000, &v445);
    sub_1D61B9308(&v445, sub_1D5BE1404);
    sub_1D61B9308(v405, type metadata accessor for SportsRoster);
  }

  return v447;
}

void *sub_1D61B388C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = *MEMORY[0x1E69E9840];
  v80 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0x6000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v77 = v9;
  v12(&v3[v9], 0, 1, v11);
  v75 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v76 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v79 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v74 = v13;
  inited = swift_initStackObject();
  v81 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v81;
  *(v16 + 32) = 0x65726F6353786F62;
  *(v16 + 40) = 0xE800000000000000;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v81;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v78;
  sub_1D61ACEC8(a2, v20);
  *&v81 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v70 = v21;
  v71 = v17 + 32;
  v68 = v17;
  v72 = v16 + 32;
  v22 = inited;
  v78 = inited + 32;

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1D7274590;
  strcpy((v23 + 32), "umcCanonicalId");
  *(v23 + 47) = -18;
  v24 = *(a1 + 40);
  v25 = MEMORY[0x1E69E6158];
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 56) = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = 0x746E657665;
  *(v23 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v27 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v23 + 96) = v27;
  v29 = v28;
  *(v23 + 120) = v28;
  *(v23 + 128) = 0xD000000000000010;
  *(v23 + 136) = 0x80000001D73CD450;
  v30 = [*(a1 + 48) eventCompetitorTags];
  v69 = v22;
  if (v30)
  {
    v31 = v30;
    sub_1D5EC01D0();
    v32 = sub_1D726267C();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = v68;
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster);

  v34 = sub_1D61ADE14(v32, &v82);

  *(v23 + 144) = v34;
  *(v23 + 168) = v29;
  *(v23 + 176) = 0x6E6F436465626D65;
  *(v23 + 184) = 0xEB00000000676966;
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 8);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 16);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 24);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 32);
  v39 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 40);
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
  v83 = v35;
  v84 = v36;
  v85 = v37;
  v86 = v38;
  v87 = v39;
  sub_1D5F8B638(v82, v35, v36);
  v40 = sub_1D61AE28C(&v82);
  sub_1D5F8BBC8(v82, v83, v84, v85, v86, v87);
  *(v23 + 216) = v29;
  *(v23 + 192) = v40;
  v41 = sub_1D5BE1168(v23);
  swift_setDeallocating();
  v42 = a1;
  v43 = MEMORY[0x1E69E7CA0];
  sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  swift_arrayDestroy();
  v44 = v81;
  v45 = sub_1D61AE64C(v70, v41);
  *&v81 = v44;
  if (v44)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v48 = v45;
  v74 = v42;

  *(v33 + 48) = v48;
  v49 = sub_1D605D38C(v33);
  swift_setDeallocating();
  sub_1D61B9308(v71, sub_1D61B8D8C);
  *(v16 + 48) = v49;
  v50 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v72, sub_1D61B8C94);
  sub_1D61B8EA4(0);
  v51 = v69;
  *(v69 + 72) = v52;
  *(v51 + 48) = v50;
  sub_1D5BE1168(v51);
  swift_setDeallocating();
  sub_1D61B8F0C(v78, &qword_1EDF1B5F0, v43 + 8);
  v53 = objc_opt_self();
  v54 = sub_1D7261D2C();

  v82 = 0;
  v55 = [v53 dataWithJSONObject:v54 options:2 error:&v82];

  v56 = v82;
  if (v55)
  {
    v57 = sub_1D725867C();
    v59 = v58;

    sub_1D72620CC();
    sub_1D726209C();
    if (v60)
    {
      sub_1D5B952F8(v57, v59);
      v61 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v62 = sub_1D726203C();

      v63 = [v61 initWithJSONString_];

      v64 = v79;
      *(v79 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v63;
      return v64;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

    sub_1D5B952F8(v57, v59);
  }

  else
  {
    v65 = v56;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v46 = v79;
  sub_1D61B8FBC(v79 + v77, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v46;
}

void *sub_1D61B41F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = *MEMORY[0x1E69E9840];
  v80 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0x8000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v77 = v9;
  v12(&v3[v9], 0, 1, v11);
  v75 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v76 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v79 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v74 = v13;
  inited = swift_initStackObject();
  v81 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v81;
  *(v16 + 32) = 0x726F6353656E696CLL;
  *(v16 + 40) = 0xE900000000000065;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v81;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v78;
  sub_1D61ACEC8(a2, v20);
  *&v81 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v70 = v21;
  v71 = v17 + 32;
  v68 = v17;
  v72 = v16 + 32;
  v22 = inited;
  v78 = inited + 32;

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1D7274590;
  strcpy((v23 + 32), "umcCanonicalId");
  *(v23 + 47) = -18;
  v24 = *(a1 + 40);
  v25 = MEMORY[0x1E69E6158];
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 56) = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = 0x746E657665;
  *(v23 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v27 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v23 + 96) = v27;
  v29 = v28;
  *(v23 + 120) = v28;
  *(v23 + 128) = 0xD000000000000010;
  *(v23 + 136) = 0x80000001D73CD450;
  v30 = [*(a1 + 48) eventCompetitorTags];
  v69 = v22;
  if (v30)
  {
    v31 = v30;
    sub_1D5EC01D0();
    v32 = sub_1D726267C();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = v68;
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster);

  v34 = sub_1D61ADE14(v32, &v82);

  *(v23 + 144) = v34;
  *(v23 + 168) = v29;
  *(v23 + 176) = 0x6E6F436465626D65;
  *(v23 + 184) = 0xEB00000000676966;
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
  v39 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v83 = v35;
  v84 = v36;
  v85 = v37;
  v86 = v38;
  v87 = v39;
  sub_1D5F8B638(v82, v35, v36);
  v40 = sub_1D61AE28C(&v82);
  sub_1D5F8BBC8(v82, v83, v84, v85, v86, v87);
  *(v23 + 216) = v29;
  *(v23 + 192) = v40;
  v41 = sub_1D5BE1168(v23);
  swift_setDeallocating();
  v42 = a1;
  v43 = MEMORY[0x1E69E7CA0];
  sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  swift_arrayDestroy();
  v44 = v81;
  v45 = sub_1D61AE64C(v70, v41);
  *&v81 = v44;
  if (v44)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v48 = v45;
  v74 = v42;

  *(v33 + 48) = v48;
  v49 = sub_1D605D38C(v33);
  swift_setDeallocating();
  sub_1D61B9308(v71, sub_1D61B8D8C);
  *(v16 + 48) = v49;
  v50 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v72, sub_1D61B8C94);
  sub_1D61B8EA4(0);
  v51 = v69;
  *(v69 + 72) = v52;
  *(v51 + 48) = v50;
  sub_1D5BE1168(v51);
  swift_setDeallocating();
  sub_1D61B8F0C(v78, &qword_1EDF1B5F0, v43 + 8);
  v53 = objc_opt_self();
  v54 = sub_1D7261D2C();

  v82 = 0;
  v55 = [v53 dataWithJSONObject:v54 options:2 error:&v82];

  v56 = v82;
  if (v55)
  {
    v57 = sub_1D725867C();
    v59 = v58;

    sub_1D72620CC();
    sub_1D726209C();
    if (v60)
    {
      sub_1D5B952F8(v57, v59);
      v61 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v62 = sub_1D726203C();

      v63 = [v61 initWithJSONString_];

      v64 = v79;
      *(v79 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v63;
      return v64;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

    sub_1D5B952F8(v57, v59);
  }

  else
  {
    v65 = v56;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v46 = v79;
  sub_1D61B8FBC(v79 + v77, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v46;
}

void *sub_1D61B4B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = *MEMORY[0x1E69E9840];
  v80 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0xA000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v77 = v9;
  v12(&v3[v9], 0, 1, v11);
  v75 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v76 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v79 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v74 = v13;
  inited = swift_initStackObject();
  v81 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v81;
  strcpy((v16 + 32), "injuryReport");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v81;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v78;
  sub_1D61ACEC8(a2, v20);
  *&v81 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v70 = v21;
  v71 = v17 + 32;
  v68 = v17;
  v72 = v16 + 32;
  v22 = inited;
  v78 = inited + 32;

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1D7274590;
  strcpy((v23 + 32), "umcCanonicalId");
  *(v23 + 47) = -18;
  v24 = *(a1 + 40);
  v25 = MEMORY[0x1E69E6158];
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 56) = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = 0x746E657665;
  *(v23 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v27 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v23 + 96) = v27;
  v29 = v28;
  *(v23 + 120) = v28;
  *(v23 + 128) = 0xD000000000000010;
  *(v23 + 136) = 0x80000001D73CD450;
  v30 = [*(a1 + 48) eventCompetitorTags];
  v69 = v22;
  if (v30)
  {
    v31 = v30;
    sub_1D5EC01D0();
    v32 = sub_1D726267C();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = v68;
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster);

  v34 = sub_1D61ADE14(v32, &v82);

  *(v23 + 144) = v34;
  *(v23 + 168) = v29;
  *(v23 + 176) = 0x6E6F436465626D65;
  *(v23 + 184) = 0xEB00000000676966;
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 8);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 16);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 24);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 32);
  v39 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 40);
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
  v83 = v35;
  v84 = v36;
  v85 = v37;
  v86 = v38;
  v87 = v39;
  sub_1D5F8B638(v82, v35, v36);
  v40 = sub_1D61AE28C(&v82);
  sub_1D5F8BBC8(v82, v83, v84, v85, v86, v87);
  *(v23 + 216) = v29;
  *(v23 + 192) = v40;
  v41 = sub_1D5BE1168(v23);
  swift_setDeallocating();
  v42 = a1;
  v43 = MEMORY[0x1E69E7CA0];
  sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  swift_arrayDestroy();
  v44 = v81;
  v45 = sub_1D61AE64C(v70, v41);
  *&v81 = v44;
  if (v44)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v48 = v45;
  v74 = v42;

  *(v33 + 48) = v48;
  v49 = sub_1D605D38C(v33);
  swift_setDeallocating();
  sub_1D61B9308(v71, sub_1D61B8D8C);
  *(v16 + 48) = v49;
  v50 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v72, sub_1D61B8C94);
  sub_1D61B8EA4(0);
  v51 = v69;
  *(v69 + 72) = v52;
  *(v51 + 48) = v50;
  sub_1D5BE1168(v51);
  swift_setDeallocating();
  sub_1D61B8F0C(v78, &qword_1EDF1B5F0, v43 + 8);
  v53 = objc_opt_self();
  v54 = sub_1D7261D2C();

  v82 = 0;
  v55 = [v53 dataWithJSONObject:v54 options:2 error:&v82];

  v56 = v82;
  if (v55)
  {
    v57 = sub_1D725867C();
    v59 = v58;

    sub_1D72620CC();
    sub_1D726209C();
    if (v60)
    {
      sub_1D5B952F8(v57, v59);
      v61 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v62 = sub_1D726203C();

      v63 = [v61 initWithJSONString_];

      v64 = v79;
      *(v79 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v63;
      return v64;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

    sub_1D5B952F8(v57, v59);
  }

  else
  {
    v65 = v56;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v46 = v79;
  sub_1D61B8FBC(v79 + v77, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v46;
}

void *sub_1D61B54D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = *MEMORY[0x1E69E9840];
  v80 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0xC000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v77 = v9;
  v12(&v3[v9], 0, 1, v11);
  v75 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v76 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v79 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v74 = v13;
  inited = swift_initStackObject();
  v81 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v81;
  *(v16 + 32) = 0x6579616C5079656BLL;
  *(v16 + 40) = 0xE900000000000072;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v81;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v78;
  sub_1D61ACEC8(a2, v20);
  *&v81 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v70 = v21;
  v71 = v17 + 32;
  v68 = v17;
  v72 = v16 + 32;
  v22 = inited;
  v78 = inited + 32;

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1D7274590;
  strcpy((v23 + 32), "umcCanonicalId");
  *(v23 + 47) = -18;
  v24 = *(a1 + 40);
  v25 = MEMORY[0x1E69E6158];
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 56) = v24;
  *(v23 + 72) = v25;
  *(v23 + 80) = 0x746E657665;
  *(v23 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v27 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v23 + 96) = v27;
  v29 = v28;
  *(v23 + 120) = v28;
  *(v23 + 128) = 0xD000000000000010;
  *(v23 + 136) = 0x80000001D73CD450;
  v30 = [*(a1 + 48) eventCompetitorTags];
  v69 = v22;
  if (v30)
  {
    v31 = v30;
    sub_1D5EC01D0();
    v32 = sub_1D726267C();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = v68;
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster);

  v34 = sub_1D61ADE14(v32, &v82);

  *(v23 + 144) = v34;
  *(v23 + 168) = v29;
  *(v23 + 176) = 0x6E6F436465626D65;
  *(v23 + 184) = 0xEB00000000676966;
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
  v39 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
  v82 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v83 = v35;
  v84 = v36;
  v85 = v37;
  v86 = v38;
  v87 = v39;
  sub_1D5F8B638(v82, v35, v36);
  v40 = sub_1D61AE28C(&v82);
  sub_1D5F8BBC8(v82, v83, v84, v85, v86, v87);
  *(v23 + 216) = v29;
  *(v23 + 192) = v40;
  v41 = sub_1D5BE1168(v23);
  swift_setDeallocating();
  v42 = a1;
  v43 = MEMORY[0x1E69E7CA0];
  sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  swift_arrayDestroy();
  v44 = v81;
  v45 = sub_1D61AE64C(v70, v41);
  *&v81 = v44;
  if (v44)
  {

    swift_setDeallocating();
    sub_1D61B8D8C(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94(0);
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v48 = v45;
  v74 = v42;

  *(v33 + 48) = v48;
  v49 = sub_1D605D38C(v33);
  swift_setDeallocating();
  sub_1D61B9308(v71, sub_1D61B8D8C);
  *(v16 + 48) = v49;
  v50 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v72, sub_1D61B8C94);
  sub_1D61B8EA4(0);
  v51 = v69;
  *(v69 + 72) = v52;
  *(v51 + 48) = v50;
  sub_1D5BE1168(v51);
  swift_setDeallocating();
  sub_1D61B8F0C(v78, &qword_1EDF1B5F0, v43 + 8);
  v53 = objc_opt_self();
  v54 = sub_1D7261D2C();

  v82 = 0;
  v55 = [v53 dataWithJSONObject:v54 options:2 error:&v82];

  v56 = v82;
  if (v55)
  {
    v57 = sub_1D725867C();
    v59 = v58;

    sub_1D72620CC();
    sub_1D726209C();
    if (v60)
    {
      sub_1D5B952F8(v57, v59);
      v61 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v62 = sub_1D726203C();

      v63 = [v61 initWithJSONString_];

      v64 = v79;
      *(v79 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v63;
      return v64;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

    sub_1D5B952F8(v57, v59);
  }

  else
  {
    v65 = v56;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v46 = v79;
  sub_1D61B8FBC(v79 + v77, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v46;
}

char *sub_1D61B5E40(void *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v48 = *v2;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  sub_1D61B9368(a1, &v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization], type metadata accessor for GenericDataVisualization);
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(&v2[v10], 0, 1, v11);
  v46 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v47 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *&v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  v45 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD4F0;

  sub_1D61ACEC8(v13, v14);
  if (v3)
  {
    sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
    swift_arrayDestroy();
LABEL_12:
    sub_1D61B8FBC(&v2[v10], qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

    swift_deallocPartialClassInstance();
    return v2;
  }

  v42[1] = v9;
  v43 = v10;
  v44 = v15;

  v16 = swift_initStackObject();
  *(v16 + 16) = v45;
  *(v16 + 32) = 0x617461446174656DLL;
  *(v16 + 40) = 0xE800000000000000;
  sub_1D61B8C3C(0, &qword_1EDF19580, &qword_1EDF1B630, MEMORY[0x1E69E6158]);
  v17 = swift_initStackObject();
  *(v17 + 16) = v45;
  *&v45 = 0;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  v18 = a1[1];
  *(v17 + 48) = *a1;
  *(v17 + 56) = v18;

  v19 = sub_1D605A4CC(v17);
  swift_setDeallocating();
  v20 = MEMORY[0x1E69E6158];
  sub_1D61B8F0C(v17 + 32, &qword_1EDF1B630, MEMORY[0x1E69E6158]);
  sub_1D61B94CC(0, &qword_1EDF05810, v20, MEMORY[0x1E69E5E28]);
  *(v16 + 72) = v21;
  *(v16 + 48) = v19;
  v22 = sub_1D5BE1168(v16);
  swift_setDeallocating();
  v23 = MEMORY[0x1E69E7CA0];
  sub_1D61B8F0C(v16 + 32, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  v24 = v45;
  v25 = sub_1D61AE64C(v44, v22);
  if (v24)
  {
    sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0, v23 + 8);
    swift_arrayDestroy();
LABEL_11:
    v10 = v43;
    goto LABEL_12;
  }

  v26 = v25;
  *&v45 = 0;

  sub_1D61B94CC(0, &qword_1EDF1B790, v23 + 8, MEMORY[0x1E69E5E28]);
  *(inited + 72) = v27;
  *(inited + 48) = v26;
  sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D61B8F0C(inited + 32, &qword_1EDF1B5F0, v23 + 8);
  v28 = objc_opt_self();
  v29 = sub_1D7261D2C();

  v49 = 0;
  v30 = [v28 dataWithJSONObject:v29 options:2 error:&v49];

  v31 = v49;
  if (!v30)
  {
    v39 = v31;
    sub_1D725829C();

    swift_willThrow();
LABEL_10:
    sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);
    goto LABEL_11;
  }

  v32 = sub_1D725867C();
  v34 = v33;

  sub_1D72620CC();
  sub_1D726209C();
  if (!v35)
  {
    sub_1D61B8F68();
    swift_allocError();
    *v40 = 2;
    swift_willThrow();
    sub_1D5B952F8(v32, v34);
    goto LABEL_10;
  }

  sub_1D5B952F8(v32, v34);
  v36 = objc_allocWithZone(MEMORY[0x1E69CE158]);
  v37 = sub_1D726203C();

  v38 = [v36 initWithJSONString_];

  sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);
  *&v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore] = v38;
  return v2;
}

uint64_t WebEmbedDatastore.deinit(__n128 a1)
{
  sub_1D61B8FBC(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  return v1;
}

uint64_t WebEmbedDatastore.__deallocating_deinit(__n128 a1)
{
  sub_1D61B8FBC(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  return swift_deallocClassInstance();
}

uint64_t static WebEmbedDatastore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v4 = sub_1D726207C();
  v6 = v5;

  v7 = [*(a2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t sub_1D61B6758(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v4 = sub_1D726207C();
  v6 = v5;

  v7 = [*(v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

char *sub_1D61B6830(uint64_t a1, __n128 a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v54 = sub_1D725B72C();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v3);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D72620DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebEmbedDataSourceJson(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for WebEmbedDatastoreProperty(0);
  sub_1D61B9368(a1 + *(v19 + 20), v18, type metadata accessor for WebEmbedDataSourceCacheEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D5BE748C(v18, v14, type metadata accessor for WebEmbedDataSourceJson);
    sub_1D72620CC();
    v31 = sub_1D726208C();
    v33 = v32;
    (*(v7 + 8))(v10, v6);
    if (v33 >> 60 == 15)
    {
      sub_1D61B8F68();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();
    }

    else
    {
      v35 = objc_opt_self();
      v36 = sub_1D725865C();
      *&v57 = 0;
      v37 = [v35 JSONObjectWithData:v36 options:0 error:&v57];

      if (v37)
      {
        v38 = v57;
        sub_1D7263AEC();
        swift_unknownObjectRelease();
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        if (swift_dynamicCast())
        {
          sub_1D5B952E4(v31, v33);
          v10 = *&v56[0];
          sub_1D61B9308(v14, type metadata accessor for WebEmbedDataSourceJson);
          return v10;
        }

        sub_1D61B8F68();
        swift_allocError();
        *v51 = 1;
      }

      else
      {
        v50 = v57;
        sub_1D725829C();
      }

      swift_willThrow();
      sub_1D5B952E4(v31, v33);
    }

    sub_1D61B9308(v14, type metadata accessor for WebEmbedDataSourceJson);
    return v10;
  }

  v20 = *v18;
  v21 = v18[1];
  v22 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
  *&v57 = *(v20 + 16);
  v23 = v57;
  sub_1D5BA6EF4();
  v24 = v54;
  v25 = swift_dynamicCast();
  v26 = MEMORY[0x1E69E6530];
  if (!v25)
  {
    goto LABEL_11;
  }

  v27 = v53;
  if ((*(v53 + 88))(v5, v24) != *MEMORY[0x1E69D6948])
  {
    (*(v27 + 8))(v5, v24);
LABEL_11:

    goto LABEL_12;
  }

  (*(v27 + 96))(v5, v24);
  v28 = *v5;

  v29 = [v28 statusCode];
  v58 = v26;
  *&v57 = v29;
  sub_1D5B7C390(&v57, v56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v22;
  sub_1D5BAFB24(v56, 0x6F43737574617473, 0xEA00000000006564, isUniquelyReferenced_nonNull_native);
  v22 = v55;
LABEL_12:
  *&v57 = *(v20 + 16);
  v39 = v57;
  v40 = sub_1D72620FC();
  v58 = MEMORY[0x1E69E6158];
  *&v57 = v40;
  *(&v57 + 1) = v41;
  sub_1D5B7C390(&v57, v56);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v22;
  sub_1D5BAFB24(v56, 0x7470697263736564, 0xEB000000006E6F69, v42);
  v43 = v55;
  if (*(v20 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_maxAge + 8))
  {
    v44 = v21;
  }

  else
  {
    v44 = *(v20 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_maxAge);
  }

  v58 = v26;
  *&v57 = v44;
  sub_1D5B7C390(&v57, v56);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v43;
  sub_1D5BAFB24(v56, 0x65674178616DLL, 0xE600000000000000, v45);
  v46 = v55;
  v47 = MEMORY[0x1E69E7CA0];
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  sub_1D61B94CC(0, &qword_1EDF1B790, v47 + 8, MEMORY[0x1E69E5E28]);
  *(inited + 72) = v49;
  *(inited + 48) = v46;
  v10 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D61B8F0C(inited + 32, &qword_1EDF1B5F0, v47 + 8);

  return v10;
}

id sub_1D61B6F54()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1EDF0DC90 = v0;
  return result;
}

void sub_1D61B6FA4(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  sub_1D61ACEC8(*a2, a3);
  if (!v3)
  {
    v6 = 0;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    v36 = a1;
    v32 = v5;
    if (v10)
    {
LABEL_9:
      while (1)
      {
        v13 = __clz(__rbit64(v10)) | (v6 << 6);
        v14 = (*(v5 + 48) + 16 * v13);
        v15 = v14[1];
        v16 = *(*(v5 + 56) + 8 * v13);
        v35[0] = *v14;
        v35[1] = v15;
        v17 = MEMORY[0x1E69E7CA0];
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        v35[5] = v18;
        v35[2] = v16;
        sub_1D61B94CC(0, &qword_1EDF1A300, v17 + 8, MEMORY[0x1E69E6EC8]);
        v19 = sub_1D726412C();
        sub_1D61B952C(v35, v33);
        v20 = v33[0];
        v21 = v33[1];

        v22 = sub_1D5B69D90(v20, v21);
        if (v23)
        {
          break;
        }

        v19[(v22 >> 6) + 8] |= 1 << v22;
        v24 = (v19[6] + 16 * v22);
        *v24 = v20;
        v24[1] = v21;
        sub_1D5B7C390(&v34, (v19[7] + 32 * v22));
        v25 = v19[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_21;
        }

        v19[2] = v27;

        sub_1D61B8F0C(v35, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
        v28 = v36;
        v29 = *v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D69916B4(0, v29[2] + 1, 1, v29);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1D69916B4((v30 > 1), v31 + 1, 1, v29);
        }

        v10 &= v10 - 1;
        v29[2] = v31 + 1;
        v29[v31 + 4] = v19;
        *v28 = v29;
        v5 = v32;
        if (!v10)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v12 >= v11)
        {

          return;
        }

        v10 = *(v7 + 8 * v12);
        ++v6;
        if (v10)
        {
          v6 = v12;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_1D61B7238(uint64_t *a1, __n128 a2)
{
  sub_1D61B91E4(0);
  v4 = *(v3 - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D62FFCAC(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_1D61B72E0(v7);
  *a1 = v5;
}

void sub_1D61B72E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D61B91E4(0);
        v7 = sub_1D726276C();
        *(v7 + 16) = v6;
      }

      sub_1D61B91E4(0);
      v10[0] = v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
      v10[1] = v6;
      sub_1D61B7670(v10, v9, v11, a1, v5);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D61B740C(0, v2, 1, a1, v4);
  }
}

void sub_1D61B740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  sub_1D61B91E4(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v30 - v19;
  v32 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v24 = -v22;
    v25 = a1 - a3;
    v37 = v21;
    v31 = v22;
    v26 = v21 + v22 * a3;
LABEL_5:
    v35 = v23;
    v36 = a3;
    v33 = v26;
    v34 = v25;
    while (1)
    {
      sub_1D61B9368(v26, v20, sub_1D61B91E4);
      sub_1D61B9368(v23, v15, sub_1D61B91E4);
      v27 = sub_1D725883C();
      sub_1D61B9308(v15, sub_1D61B91E4);
      sub_1D61B9308(v20, sub_1D61B91E4);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v23 = v35 + v31;
        v25 = v34 - 1;
        v26 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_1D5BE748C(v26, v38, sub_1D61B91E4);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D5BE748C(v28, v23, sub_1D61B91E4);
      v23 += v24;
      v26 += v24;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D61B7670(unint64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v7 = v5;
  v112 = a1;
  sub_1D61B91E4(0);
  v11 = v10;
  v120 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v115 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v123 = &v108 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v124 = &v108 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v108 - v22;
  v122 = a4;
  v24 = a4[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_134;
    }

    a5 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = a5;
    }

    else
    {
LABEL_128:
      v103 = sub_1D62FF50C(a5);
    }

    v126 = v103;
    a5 = *(v103 + 2);
    if (a5 >= 2)
    {
      while (*v122)
      {
        v104 = *&v103[16 * a5];
        v105 = v103;
        v106 = *&v103[16 * a5 + 24];
        sub_1D61B7FD4(*v122 + *(v120 + 72) * v104, *v122 + *(v120 + 72) * *&v103[16 * a5 + 16], *v122 + *(v120 + 72) * v106, v6, v102);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v106 < v104)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D62FF50C(v105);
        }

        if (a5 - 2 >= *(v105 + 2))
        {
          goto LABEL_122;
        }

        v107 = &v105[16 * a5];
        *v107 = v104;
        *(v107 + 1) = v106;
        v126 = v105;
        sub_1D62FF480(a5 - 1);
        v103 = v126;
        a5 = *(v126 + 2);
        if (a5 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v111 = a5;
  v125 = v11;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v116 = v26;
    if (v25 + 1 >= v24)
    {
      v24 = v25 + 1;
    }

    else
    {
      v29 = *(v120 + 72);
      v6 = *v122 + v29 * v28;
      v118 = *v122;
      v30 = v118;
      sub_1D61B9368(v118 + v29 * v28, v23, sub_1D61B91E4);
      v31 = v30 + v29 * v27;
      v32 = v27;
      v33 = v124;
      sub_1D61B9368(v31, v124, sub_1D61B91E4);
      LODWORD(v119) = sub_1D725883C();
      sub_1D61B9308(v33, sub_1D61B91E4);
      sub_1D61B9308(v23, sub_1D61B91E4);
      v110 = v32;
      v34 = v32 + 2;
      v121 = v29;
      v35 = v118 + v29 * (v32 + 2);
      while (v24 != v34)
      {
        sub_1D61B9368(v35, v23, sub_1D61B91E4);
        v36 = v124;
        sub_1D61B9368(v6, v124, sub_1D61B91E4);
        v37 = sub_1D725883C() & 1;
        sub_1D61B9308(v36, sub_1D61B91E4);
        sub_1D61B9308(v23, sub_1D61B91E4);
        ++v34;
        v35 += v121;
        v6 += v121;
        if ((v119 & 1) != v37)
        {
          v24 = v34 - 1;
          break;
        }
      }

      v27 = v110;
      a5 = v111;
      if (v119)
      {
        if (v24 < v110)
        {
          goto LABEL_125;
        }

        if (v110 < v24)
        {
          v109 = v7;
          v38 = v121 * (v24 - 1);
          v39 = v24;
          v40 = v24 * v121;
          v119 = v24;
          v41 = v110;
          v42 = v110;
          v43 = v110 * v121;
          do
          {
            if (v41 != --v39)
            {
              v44 = *v122;
              if (!*v122)
              {
                goto LABEL_131;
              }

              v6 = v44 + v43;
              sub_1D5BE748C(v44 + v43, v115, sub_1D61B91E4);
              if (v43 < v38 || v6 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D5BE748C(v115, v44 + v38, sub_1D61B91E4);
            }

            ++v41;
            v38 -= v121;
            v40 -= v121;
            v43 += v121;
          }

          while (v41 < v39);
          v7 = v109;
          a5 = v111;
          v27 = v42;
          v24 = v119;
        }
      }
    }

    v45 = v122[1];
    if (v24 < v45)
    {
      if (__OFSUB__(v24, v27))
      {
        goto LABEL_124;
      }

      if (v24 - v27 < a5)
      {
        if (__OFADD__(v27, a5))
        {
          goto LABEL_126;
        }

        if ((v27 + a5) >= v45)
        {
          v46 = v122[1];
        }

        else
        {
          v46 = v27 + a5;
        }

        if (v46 < v27)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v24 != v46)
        {
          break;
        }
      }
    }

    v25 = v24;
    if (v24 < v27)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v116;
    }

    else
    {
      v26 = sub_1D698BA94(0, *(v116 + 2) + 1, 1, v116);
    }

    a5 = *(v26 + 2);
    v48 = *(v26 + 3);
    v6 = a5 + 1;
    if (a5 >= v48 >> 1)
    {
      v26 = sub_1D698BA94((v48 > 1), a5 + 1, 1, v26);
    }

    *(v26 + 2) = v6;
    v49 = &v26[16 * a5];
    *(v49 + 4) = v27;
    *(v49 + 5) = v25;
    v50 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    if (a5)
    {
      while (1)
      {
        v51 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v52 = *(v26 + 4);
          v53 = *(v26 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_112;
          }

          v68 = &v26[16 * v6];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_115;
          }

          v74 = &v26[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_119;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v6 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v26[16 * v6];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_114;
        }

        v81 = &v26[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_117;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a5 = v51 - 1;
        if (v51 - 1 >= v6)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v122)
        {
          goto LABEL_130;
        }

        v89 = v26;
        v90 = *&v26[16 * a5 + 32];
        v6 = *&v26[16 * v51 + 40];
        sub_1D61B7FD4(*v122 + *(v120 + 72) * v90, *v122 + *(v120 + 72) * *&v26[16 * v51 + 32], *v122 + *(v120 + 72) * v6, v50, v47);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v6 < v90)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1D62FF50C(v89);
        }

        if (a5 >= *(v89 + 2))
        {
          goto LABEL_109;
        }

        v91 = &v89[16 * a5];
        *(v91 + 4) = v90;
        *(v91 + 5) = v6;
        v126 = v89;
        sub_1D62FF480(v51);
        v26 = v126;
        v6 = *(v126 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v26[16 * v6 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_110;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_111;
      }

      v63 = &v26[16 * v6];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_113;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_116;
      }

      if (v67 >= v59)
      {
        v85 = &v26[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_120;
        }

        if (v54 < v88)
        {
          v51 = v6 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = v122[1];
    a5 = v111;
    if (v25 >= v24)
    {
      goto LABEL_95;
    }
  }

  v109 = v7;
  v92 = v24;
  v93 = v27;
  v94 = *v122;
  v95 = *(v120 + 72);
  v96 = *v122 + v95 * (v24 - 1);
  v97 = -v95;
  v110 = v93;
  v98 = v93 - v24;
  v119 = v92;
  v113 = v95;
  v114 = v46;
  v6 = v94 + v92 * v95;
LABEL_85:
  v117 = v6;
  v118 = v98;
  v121 = v96;
  while (1)
  {
    sub_1D61B9368(v6, v23, sub_1D61B91E4);
    v99 = v124;
    sub_1D61B9368(v96, v124, sub_1D61B91E4);
    a5 = sub_1D725883C();
    sub_1D61B9308(v99, sub_1D61B91E4);
    sub_1D61B9308(v23, sub_1D61B91E4);
    if ((a5 & 1) == 0)
    {
LABEL_84:
      v25 = v114;
      v96 = v121 + v113;
      v98 = v118 - 1;
      v6 = v117 + v113;
      if (++v119 != v114)
      {
        goto LABEL_85;
      }

      v7 = v109;
      v27 = v110;
      if (v114 < v110)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v94)
    {
      break;
    }

    a5 = sub_1D61B91E4;
    v100 = v123;
    sub_1D5BE748C(v6, v123, sub_1D61B91E4);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5BE748C(v100, v96, sub_1D61B91E4);
    v96 += v97;
    v6 += v97;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D61B7FD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  sub_1D61B91E4(0);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v46 = &v38 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v51 = a1;
  v50 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v20;
    if (v20 >= 1)
    {
      v27 = -v16;
      v28 = a4 + v20;
      v42 = a1;
      v43 = a4;
      v41 = -v16;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v44 = v29;
        v45 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v26;
          v32 = a3 + v27;
          v33 = v28 + v27;
          v34 = v46;
          sub_1D61B9368(v33, v46, sub_1D61B91E4);
          v35 = v47;
          sub_1D61B9368(v30, v47, sub_1D61B91E4);
          v36 = sub_1D725883C();
          sub_1D61B9308(v35, sub_1D61B91E4);
          sub_1D61B9308(v34, sub_1D61B91E4);
          if (v36)
          {
            break;
          }

          v26 = v33;
          if (a3 < v28 || v32 >= v28)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v28;
            a3 = v32;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          v29 = v44;
          v31 = v33 > v43;
          v30 = v45;
          v27 = v41;
          if (!v31)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v32 >= v44)
        {
          a3 = v32;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v26 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v32;
          a2 = v45;
          v27 = v41;
          a1 = v42;
          v26 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v26;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v19;
    v49 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      do
      {
        v22 = a3;
        v23 = v46;
        sub_1D61B9368(a2, v46, sub_1D61B91E4);
        v24 = v47;
        sub_1D61B9368(a4, v47, sub_1D61B91E4);
        v25 = sub_1D725883C();
        sub_1D61B9308(v24, sub_1D61B91E4);
        sub_1D61B9308(v23, sub_1D61B91E4);
        if (v25)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v16;
            a3 = v22;
          }

          else
          {
            a3 = v22;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v16;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v22;
          }

          else
          {
            a3 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D62FF72C(&v51, &v50, &v49);
}

uint64_t _s8NewsFeed17WebEmbedDatastoreC5empty3forAcA0cD17DataVisualizationO_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedDataVisualization(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61B9368(a1, v6, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WebEmbedDatastore(0);
    v7 = swift_allocObject();
    (*(v3 + 56))(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, 1, 1, v2);
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents) = 0;
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents) = 0;
    v8 = objc_allocWithZone(MEMORY[0x1E69CE158]);
    v9 = sub_1D726203C();
    v10 = [v8 initWithJSONString_];

    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v10;
    sub_1D61B9308(v6, type metadata accessor for WebEmbedDataVisualization);
  }

  else
  {
    sub_1D61B9308(v6, type metadata accessor for WebEmbedDataVisualization);
    type metadata accessor for WebEmbedDatastore(0);
    v7 = swift_allocObject();
    (*(v3 + 56))(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, 1, 1, v2);
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents) = 0;
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents) = 0;
    v11 = objc_allocWithZone(MEMORY[0x1E69CE158]);
    v12 = sub_1D726203C();
    v13 = [v11 initWithJSONString_];

    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v13;
  }

  return v7;
}

void *sub_1D61B87A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61B9368(a1, v18, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *v18 >> 61;
    if (v20 <= 2)
    {
      if (!v20)
      {

        type metadata accessor for WebEmbedDatastore(0);
        swift_allocObject();

        v19 = sub_1D61AC308(v26, a2);
        sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);
LABEL_16:

        return v19;
      }

      if (v20 == 1)
      {

        type metadata accessor for WebEmbedDatastore(0);
        swift_allocObject();

        v22 = sub_1D61AE8D4(v23, a2);
      }

      else
      {
        type metadata accessor for WebEmbedDatastore(0);
        swift_allocObject();

        v22 = sub_1D61AF414(v27, a2, a3);
      }

LABEL_15:
      v19 = v22;
      sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);
      goto LABEL_16;
    }

    if (v20 > 4)
    {
      if (v20 == 5)
      {

        type metadata accessor for WebEmbedDatastore(0);
        swift_allocObject();

        v25 = sub_1D61B4B60(v24, a2);
        if (!v3)
        {
          goto LABEL_18;
        }
      }

      else
      {

        type metadata accessor for WebEmbedDatastore(0);
        swift_allocObject();

        v25 = sub_1D61B54D4(v29, a2);
        if (!v3)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v20 == 3)
      {

        type metadata accessor for WebEmbedDatastore(0);
        swift_allocObject();

        v22 = sub_1D61B388C(v21, a2);
        goto LABEL_15;
      }

      type metadata accessor for WebEmbedDatastore(0);
      swift_allocObject();

      v25 = sub_1D61B41F4(v28, a2);
      if (!v3)
      {
LABEL_18:
        v19 = v25;
        sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);

        return v19;
      }
    }

    v19 = v3;
    sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);

    return v19;
  }

  sub_1D5BE748C(v18, v14, type metadata accessor for GenericDataVisualization);
  sub_1D61B9368(v14, v10, type metadata accessor for GenericDataVisualization);
  type metadata accessor for WebEmbedDatastore(0);
  swift_allocObject();
  v19 = sub_1D61B5E40(v10, a2);
  sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);
  sub_1D61B9308(v14, type metadata accessor for GenericDataVisualization);
  return v19;
}

void sub_1D61B8C3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D61B95A4(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D61B8C94(uint64_t a1)
{
  if (!qword_1EDF05448)
  {
    sub_1D61B8CFC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05448);
    }
  }
}

void sub_1D61B8CFC(uint64_t a1)
{
  if (!qword_1EDF05710)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05710);
    }
  }
}

void sub_1D61B8D8C(uint64_t a1)
{
  if (!qword_1EDF05438)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05438);
    }
  }
}

void sub_1D61B8E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D61B8EA4(uint64_t a1)
{
  if (!qword_1EDF05718)
  {
    sub_1D61B8CFC(255);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05718);
    }
  }
}

uint64_t sub_1D61B8F0C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D61B95A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D61B8F68()
{
  result = qword_1EC884E20;
  if (!qword_1EC884E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E20);
  }

  return result;
}

uint64_t sub_1D61B8FBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B62C58(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D61B902C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B62C58(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D61B90AC(uint64_t a1)
{
  if (!qword_1EDF17C30)
  {
    type metadata accessor for SportsRosterPlayer(255);
    sub_1D61B9434(&qword_1EDF0FD98, type metadata accessor for SportsRosterPlayer, &protocol conformance descriptor for SportsRosterPlayer);
    sub_1D61B9434(&qword_1EDF0FDA0, type metadata accessor for SportsRosterPlayer, &protocol conformance descriptor for SportsRosterPlayer);
    v1 = sub_1D725AEBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17C30);
    }
  }
}

void sub_1D61B9178(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04720)
  {
    sub_1D61B91E4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04720);
    }
  }
}

void sub_1D61B91E4(uint64_t a1)
{
  if (!qword_1EDF05510)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    sub_1D725891C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF05510);
    }
  }
}

uint64_t sub_1D61B9288(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B62C58(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D61B9308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D61B9368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D61B93D0()
{
  if (!qword_1EC884E28)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884E28);
    }
  }
}

uint64_t sub_1D61B9434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA6FD500);
  }

  return result;
}

void sub_1D61B94CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D61B952C(uint64_t a1, uint64_t a2)
{
  sub_1D61B95A4(0, &qword_1EDF1B5F0, MEMORY[0x1E69E7CA0] + 8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D61B95A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

NewsFeed::FormatSymbolWeight_optional __swiftcall FormatSymbolWeight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatSymbolWeight.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 1684828002;
    v7 = 0x7976616568;
    if (v1 != 8)
    {
      v7 = 0x6B63616C62;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6D756964656DLL;
    if (v1 != 5)
    {
      v8 = 0x646C6F62696D6573;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6669636570736E75;
    v3 = 1852401780;
    v4 = 0x746867696CLL;
    if (v1 != 3)
    {
      v4 = 0x72616C75676572;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x67694C6172746C75;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_1D61B978C()
{
  result = qword_1EC884E40;
  if (!qword_1EC884E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E40);
  }

  return result;
}

uint64_t sub_1D61B97E0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694F4F8(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D61B9830(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694F4F8(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D61B9880@<X0>(uint64_t *a1@<X8>)
{
  result = FormatSymbolWeight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D61B98A8(uint64_t a1)
{
  *(a1 + 8) = sub_1D61B98D8();
  result = sub_1D61B992C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61B98D8()
{
  result = qword_1EC884E48;
  if (!qword_1EC884E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E48);
  }

  return result;
}

unint64_t sub_1D61B992C()
{
  result = qword_1EDF2D9D8;
  if (!qword_1EDF2D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D9D8);
  }

  return result;
}

unint64_t sub_1D61B9980(uint64_t a1)
{
  result = sub_1D61B99A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61B99A8()
{
  result = qword_1EC884E50;
  if (!qword_1EC884E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E50);
  }

  return result;
}

unint64_t sub_1D61B99FC(void *a1)
{
  a1[1] = sub_1D5C76094();
  a1[2] = sub_1D61B9A34();
  result = sub_1D61B978C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61B9A34()
{
  result = qword_1EDF101A0;
  if (!qword_1EDF101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF101A0);
  }

  return result;
}

void sub_1D61B9B78(double (*a1)(double, double, double, double), double (*a2)(double, double, double, double), double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  v17 = [v8 CGContext];
  v18 = a1(a3, a4, a5, a6);
  v19 = a2(a3, a4, a5, a6);
  CGContextTranslateCTM(v17, v18, v19);

  v20 = [v8 CGContext];
  CGContextScaleCTM(v20, a7, a8);
}

void UIGraphicsImageRendererContext.rotate(degrees:targetRect:)(long double a1, double a2, double a3, double a4, double a5)
{
  v9 = fmod(a1, 360.0) * 3.14159265 / 180.0;
  if (a1 == 0.0)
  {
    v10 = 6.28318531;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v5 CGContext];
  CGContextTranslateCTM(v11, a4 * 0.5, a5 * 0.5);

  v12 = [v5 CGContext];
  CGContextScaleCTM(v12, 1.0, 1.0);

  v13 = [v5 CGContext];
  CGContextRotateCTM(v13, v10);

  v14 = [v5 CGContext];
  CGContextTranslateCTM(v14, a4 * -0.5, a5 * -0.5);
}

double FormatStateViewNodeDataLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

double FormatStateViewNodeDataLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

double FormatStateViewNodeDataLayoutAttributes.frame.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t FormatStateViewNodeDataLayoutAttributes.__allocating_init(layoutAttributes:stateLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6)
{
  result = swift_allocObject();
  v13 = *a3;
  v14 = *a5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v13;
  *(result + 40) = a4;
  *(result + 48) = v14;
  *(result + 56) = a6;
  return result;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.init(layoutAttributes:stateLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6)
{
  v7 = *a3;
  v8 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v7;
  *(v6 + 40) = a4;
  *(v6 + 48) = v8;
  *(v6 + 56) = a6;
  return v6;
}

void *FormatStateViewNodeDataLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 48));
  return v0;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t FormatStateViewNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 64);

  return v1;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 80);

  return v1;
}

uint64_t sub_1D61BA0B4()
{
  v1 = *(*(*v0 + 16) + 48);

  return v1;
}

void sub_1D61BA11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 24);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + 24) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v27 = MEMORY[0x1E69E7CC0];
  for (i = 0; v12; i = v15)
  {
    v15 = i;
LABEL_8:
    v12 &= v12 - 1;

    v16 = a3(a1, a2);

    if (v16)
    {
      v25 = v27[2];
      v26 = *(v16 + 16);
      v17 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      if (!isUniquelyReferenced_nonNull_native || (v20 = v27[3] >> 1, v20 < v17))
      {
        if (v25 <= v17)
        {
          v21 = v25 + v26;
        }

        else
        {
          v21 = v25;
        }

        v19 = sub_1D698F994(isUniquelyReferenced_nonNull_native, v21, 1, v27);
        v20 = v19[3] >> 1;
      }

      v27 = v19;
      if (*(v16 + 16))
      {
        if (v20 - v19[2] < v26)
        {
          goto LABEL_30;
        }

        sub_1D61BA350();
        swift_arrayInitWithCopy();

        if (v26)
        {
          v22 = v27[2];
          v23 = __OFADD__(v22, v26);
          v24 = v22 + v26;
          if (v23)
          {
            goto LABEL_31;
          }

          v27[2] = v24;
        }
      }

      else
      {

        if (v26)
        {
          __break(1u);
          goto LABEL_25;
        }
      }
    }
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
LABEL_25:

      if (!v27[2])
      {
      }

      return;
    }

    v12 = *(v8 + 8 * v15);
    ++i;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

unint64_t sub_1D61BA350()
{
  result = qword_1EDF3B4D8;
  if (!qword_1EDF3B4D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B4D8);
  }

  return result;
}

double FormatVideoPlayerOverlayContent.logoContent.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

unint64_t FormatVideoPlayerOverlayContent.logoSize.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5DEA234(v2);
}

double FormatVideoPlayerOverlayContent.logoResize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

uint64_t FormatVideoPlayerOverlayContent.showDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5E04CC4(v2, v3, v4);
}

uint64_t _s8NewsFeed31FormatVideoPlayerOverlayContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v25 = *(a1 + 40);
  v26 = *(a1 + 32);
  v24 = *(a1 + 48);
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *(a2 + 48);
  v28[0] = *a1;
  v27[0] = v5;

  v12 = static FormatAsyncImageContent.== infix(_:_:)(v28, v27);

  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  switch(v2)
  {
    case 0uLL:
      if (v6)
      {
        goto LABEL_16;
      }

LABEL_10:
      sub_1D5CBF568(v2);
      sub_1D5CBF568(v2);
      goto LABEL_11;
    case 1uLL:
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    case 2uLL:
      if (v6 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
  }

  if (v6 >= 3)
  {
    sub_1D5DEA234(v2);
    sub_1D5DEA234(v6);
    sub_1D5DEA234(v2);
    sub_1D5DEA234(v6);
    sub_1D633A310(v2, v6);
    v23 = v22;
    sub_1D5CBF568(v2);
    sub_1D5CBF568(v6);
    sub_1D5CBF568(v6);
    sub_1D5CBF568(v2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (v3)
    {
      if (!v8)
      {
        goto LABEL_17;
      }

      type metadata accessor for FormatImageNodeStyle(0);

      v14 = static FormatImageNodeStyle.== infix(_:_:)(v3, v8, v13);

      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v8)
    {
      goto LABEL_17;
    }

    if (v4)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v17 = *(v4 + 16);
      v18 = *(v7 + 16);
      swift_beginAccess();
      v19 = *(v17 + 16);
      swift_beginAccess();
      v20 = *(v18 + 16);

      v21 = sub_1D5E1F5F0(v19, v20);

      if ((v21 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v7)
    {
      goto LABEL_17;
    }

    v32 = v26;
    v33 = v25;
    v34 = v24;
    v29 = v9;
    v30 = v10;
    v31 = v11;
    sub_1D5E04CC4(v26, v25, v24);
    sub_1D5E04CC4(v9, v10, v11);
    v15 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v32, &v29);
    sub_1D5D2F2C4(v29, v30, v31);
    sub_1D5D2F2C4(v32, v33, v34);
    return v15 & 1;
  }

LABEL_16:
  sub_1D5DEA234(v2);
  sub_1D5DEA234(v6);
  sub_1D5CBF568(v2);
  sub_1D5CBF568(v6);
LABEL_17:
  v15 = 0;
  return v15 & 1;
}

unint64_t sub_1D61BA740(uint64_t a1)
{
  result = sub_1D61BA768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61BA768()
{
  result = qword_1EC884E58;
  if (!qword_1EC884E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E58);
  }

  return result;
}

unint64_t sub_1D61BA7BC(void *a1)
{
  a1[1] = sub_1D61BA7F4();
  a1[2] = sub_1D61BA848();
  result = sub_1D61BA89C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61BA7F4()
{
  result = qword_1EDF1F820;
  if (!qword_1EDF1F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F820);
  }

  return result;
}

unint64_t sub_1D61BA848()
{
  result = qword_1EDF093B0;
  if (!qword_1EDF093B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093B0);
  }

  return result;
}

unint64_t sub_1D61BA89C()
{
  result = qword_1EC884E60;
  if (!qword_1EC884E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatAsyncImageContentO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25FormatPublisherLogoSizingO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D61BA924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D61BA980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1D61BAA2C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1D5C3AD08();
}

void FormatLayoutViewRenderer.presentingViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1D5C3AD08();
}

void (*FormatLayoutViewRenderer.presentingViewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D61BAB5C;
}

void sub_1D61BAB5C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1D5C3AD08();
  }

  free(v3);
}

void (*FormatLayoutViewRenderer.analyticsDataProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D61BACB0;
}

void sub_1D61BACB0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(*(v4 + 184) + 56);
    swift_unknownObjectWeakLoadStrong();
    *(v5 + 24) = *(v4 + 32);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double FormatLayoutViewRenderer.debugger.getter()
{
  swift_beginAccess();

  return result;
}

double FormatLayoutViewRenderer.debugger.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t FormatLayoutViewRenderer.render<A, B>(for:with:in:traitCollection:sourceItemData:actionSenderHandler:)(uint64_t a1, double *a2, char *a3, void *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a5 + 2);
  v12 = *a5;
  v13 = v10;
  return FormatLayoutViewRenderer.render<A, B>(for:with:in:traitCollection:sourceItemData:resizingProvider:actionSenderHandler:)(a1, a2, a3, a4, &v12, *(v9 + 320), a6, a7, a8, a9);
}

uint64_t FormatLayoutViewRenderer.render<A, B>(for:with:in:traitCollection:sourceItemData:resizingProvider:actionSenderHandler:)(uint64_t a1, double *a2, char *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v64 = a8;
  v67 = a7;
  v66 = a6;
  v65 = a4;
  v73 = a1;
  v69 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v68 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D61BB5EC(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v70 = v62 - v19;
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, v16);
  v62[0] = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v63 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[1] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v71 = v62 - v25;
  v26 = *a5;
  v27 = a5[1];
  v74 = a5[2];
  v75 = v26;
  type metadata accessor for FormatAccessibilityRenderer();
  v28 = *(a2 + 8);
  v29 = *(a2 + 9);
  v31 = v11[34];
  v30 = v11[35];
  LOBYTE(v81) = 7;
  v72 = v28;
  v32 = a3;
  v76 = sub_1D6A61350(v28, v29, a3, &off_1F51E2E28, a2, v31, v30, &v81);
  if (v27)
  {
    v34 = v74;
    v33 = v75;
    v78 = v75;
    v79 = v27;
    v80 = v74;

    swift_unknownObjectRetain();
    sub_1D5EBC314(v33, v27, v34);
    sub_1D6D270A8(v72, v29, a9, a10, &v81);

    v36 = v81;
    v35 = v82;
    v37 = v83;
  }

  else
  {

    swift_unknownObjectRetain();
    v35 = 0;
    v37 = v74;
    v36 = v75;
  }

  v81 = v36;
  v82 = v35;
  v83 = v37;
  v38 = v73;
  sub_1D61BB650(v73, a2, v32, v65, &v81, v66, v76, v67, v64, a9, a10);
  sub_1D5EBC358(v81, v82, v83);
  v81 = v75;
  v82 = v27;
  v83 = v74;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1D67C4728(v38, &v81, Strong, v32, v72, v29, a9, a10);

  v40 = v11[33];
  v41 = (*(a10 + 8))(a9, a10);
  swift_beginAccess();
  v42 = a2[2];
  v43 = a2[3];
  v44 = a2[4];
  v45 = a2[5];
  (*(v69 + 16))(v68, v38, a9);
  v46 = type metadata accessor for FormatItemNodeLayoutContext(0);
  v47 = v70;
  v48 = swift_dynamicCast();
  v49 = *(*(v46 - 8) + 56);
  if (v48)
  {
    v49(v47, 0, 1, v46);
    v50 = v71;
    sub_1D5BC885C(v47 + *(v46 + 28), v71, type metadata accessor for FeedItem);
    sub_1D61CCBB4(v47, type metadata accessor for FormatItemNodeLayoutContext);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v49(v47, 1, 1, v46);
    sub_1D61CCAA4(v47, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    v50 = v71;
  }

  v52 = type metadata accessor for FeedItem(0);
  (*(*(v52 - 8) + 56))(v50, v51, 1, v52);
  if (*(v40 + 72) == 1)
  {
    sub_1D725A7EC();
    v53 = v77;
    v54 = MEMORY[0x1E69E6720];
    v55 = v63;
    sub_1D61CC910(v50, v63, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    v56 = (*(v62[0] + 80) + 16) & ~*(v62[0] + 80);
    v57 = swift_allocObject();
    sub_1D61CA3F8(v55, v57 + v56);
    sub_1D71AF2C8(v53, v41, sub_1D61CA48C, v57, v42, v43, v44, v45);

    v58 = v50;
    v59 = v54;
  }

  else
  {
    sub_1D725A7CC();
    v60 = v77;
    if (v77)
    {
      [v77 setHidden_];
    }

    else
    {
    }

    v59 = MEMORY[0x1E69E6720];
    v58 = v50;
  }

  return sub_1D61CCAA4(v58, qword_1EDF34EF0, type metadata accessor for FeedItem, v59, sub_1D61BB5EC);
}

void sub_1D61BB5EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D61BB650(uint64_t a1, uint64_t *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v1475 = a8;
  v1487 = a7;
  v1480 = a6;
  v1488 = a4;
  v12 = a2;
  v1499 = a1;
  v1501 = a11;
  v1482 = *a2;
  v13 = MEMORY[0x1E69E6720];
  sub_1D61BB5EC(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v1441 = &v1395 - v16;
  v1463 = type metadata accessor for FormatItemNodeData(0);
  v1415 = *(v1463 - 8);
  MEMORY[0x1EEE9AC00](v1463, v17);
  v1414 = &v1395 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1503 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v1472 = &v1395 - v21;
  v22 = type metadata accessor for FormatVideoPlayerData(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v1496 = &v1395 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FormatSponsoredBannerData(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v1445 = (&v1395 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for FormatShareAttributionData(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v1462 = &v1395 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FormatVideoData(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v1497 = &v1395 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatMicaData(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v1490 = (&v1395 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for FormatAdMetricsData(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v1461 = &v1395 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61BB5EC(0, &qword_1EDF29E98, sub_1D61CAB60, v13);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v1426 = &v1395 - v42;
  sub_1D61BB5EC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v13);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v1420 = &v1395 - v45;
  v1419 = sub_1D72585BC();
  v46 = *(v1419 - 8);
  MEMORY[0x1EEE9AC00](v1419, v47);
  v1444 = &v1395 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1425 = type metadata accessor for WebEmbedImageRequest(0);
  MEMORY[0x1EEE9AC00](v1425, v49);
  v1443 = &v1395 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, v13);
  v1413 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v1427 = &v1395 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v1457 = &v1395 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v1418 = &v1395 - v59;
  v1412 = v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v1424 = &v1395 - v63;
  v1471 = type metadata accessor for FeedItem(0);
  v1469 = *(v1471 - 8);
  v64 = *(v1469 + 64);
  MEMORY[0x1EEE9AC00](v1471, v65);
  v1460 = &v1395 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v1409 = &v1395 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v1456 = &v1395 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v1410 = &v1395 - v74;
  v1431 = type metadata accessor for FormatButtonNodeDataAction(0);
  v1489 = *(v1431 - 8);
  MEMORY[0x1EEE9AC00](v1431, v75);
  v1417 = &v1395 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77, v78);
  v1416 = &v1395 - v79;
  sub_1D61BB5EC(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v13);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v1423 = &v1395 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v1422 = &v1395 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v1430 = &v1395 - v88;
  v1421 = type metadata accessor for FormatButtonNodeData(0);
  MEMORY[0x1EEE9AC00](v1421, v89);
  v1498 = &v1395 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1483 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v91, v92);
  v1411 = &v1395 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94, v95);
  v1440 = &v1395 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v1439 = &v1395 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v1438 = &v1395 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v1442 = &v1395 - v105;
  MEMORY[0x1EEE9AC00](v106, v107);
  v1476 = &v1395 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v1437 = &v1395 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v1436 = &v1395 - v114;
  v1473 = v115;
  MEMORY[0x1EEE9AC00](v116, v117);
  v1435 = &v1395 - v118;
  v119 = type metadata accessor for FormatViewData(0);
  MEMORY[0x1EEE9AC00](v119 - 8, v120);
  v1495 = &v1395 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(v12 + 48);
  v122 = *(v12 + 56);
  v124 = &a3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
  swift_beginAccess();
  *v124 = v123;
  *(v124 + 1) = v122;

  v1513 = 0;
  v125 = objc_opt_self();
  v126 = swift_allocObject();
  v1500 = a10;
  v127 = v1501;
  v126[2] = a10;
  v126[3] = v127;
  v126[4] = &v1513;
  v126[5] = a3;
  v128 = a3;
  v129 = v1502;
  v126[6] = v12;
  v126[7] = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_1D61CABD4;
  *(v130 + 24) = v126;
  v1434 = v126;
  *&v1511[0] = sub_1D5DF8E8C;
  *(&v1511[0] + 1) = v130;
  *&v1509 = MEMORY[0x1E69E9820];
  v131 = 1107296256;
  *(&v1509 + 1) = 1107296256;
  *&v1510 = sub_1D69C9704;
  *(&v1510 + 1) = &block_descriptor_30;
  v132 = _Block_copy(&v1509);
  v133 = v128;

  [v125 performWithoutAnimation_];
  _Block_release(v132);
  LOBYTE(v129) = swift_isEscapingClosureAtFileLocation();

  if (v129)
  {
    goto LABEL_320;
  }

  *&v133[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = v1487;

  swift_beginAccess();
  v134 = *(v12 + 32);
  v135 = *(v12 + 40);
  type metadata accessor for FormatVisibilityData();
  v136 = swift_allocObject();
  v1433 = v136;
  *(v136 + 16) = MEMORY[0x1E69E7CC8];
  v1494 = (v136 + 16);
  v137 = *(v12 + 96);
  v132 = v133;
  v1493 = *(v137 + 16);
  if (!v1493)
  {

LABEL_305:
    sub_1D69CB880(v1433);
    v12 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
    swift_beginAccess();
    v1387 = *&v132[v12];
    if (!(v1387 >> 62))
    {
      if (!*((v1387 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_318;
      }

      goto LABEL_307;
    }

LABEL_321:
    if (!sub_1D7263BFC())
    {
      goto LABEL_318;
    }

LABEL_307:
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v1388 = objc_opt_self();
      [v1388 begin];
      v1389 = *&v132[v12];
      if (v1389 >> 62)
      {
        v1390 = sub_1D7263BFC();
        if (v1390)
        {
          goto LABEL_310;
        }
      }

      else
      {
        v1390 = *((v1389 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1390)
        {
LABEL_310:
          if (v1390 < 1)
          {
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          for (i = 0; i != v1390; ++i)
          {
            if ((v1389 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6FB460](i, v1389);
            }

            else
            {
            }

            sub_1D7213B94();
          }
        }
      }

      [v1388 commit];
    }

LABEL_318:

    v1392 = v1513;

    return;
  }

  v1477 = a9;
  v1479 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  v1485 = &v133[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers];
  v1402 = (v12 + *(*v12 + 168));
  v1492 = v137;
  v1491 = v137 + 32;

  swift_beginAccess();
  swift_beginAccess();
  v12 = 0;
  v1486 = (v1483 + 16);
  v1455 = v64 + 7;
  v1484 = v1483 + 32;
  v1432 = (v1469 + 56);
  v1398 = v1503 + 7;
  v1481 = v1473 + 7;
  v1407 = (v46 + 56);
  v1408 = (v46 + 16);
  v1405 = (v46 + 32);
  v1406 = (v46 + 48);
  v1404 = v1489 + 56;
  v1428 = (v1469 + 48);
  v1429 = v1489 + 48;
  v1396 = (v46 + 8);
  v1397 = &v1510;
  v1478 = xmmword_1D72816C0;
  v1403 = xmmword_1D7273AE0;
  v138 = v1496;
  v139 = v1497;
  v140 = v1490;
  v141 = v1498;
  v142 = v1495;
  v1504 = v132;
  while (2)
  {
    if (v12 >= *(v1492 + 16))
    {
      __break(1u);
LABEL_320:
      __break(1u);
      goto LABEL_321;
    }

    v150 = *(v1491 + 8 * v12);
    v1503 = v12 + 1;
    switch((v150 >> 59) & 0x1E | (v150 >> 2) & 1)
    {
      case 1uLL:
        v599 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v600 = v150;
        v1467 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v601 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1519 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v602 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v1517 = v601;
        v1518 = v602;
        v603 = v601;
        v604 = *(v601 + 32);
        v605 = *(v601 + 40);
        v606 = *(v601 + 104);

        v1474 = sub_1D61C787C(v604, v605, v606, type metadata accessor for FormatLabel, &unk_1F50F6EE8);
        v608 = v607;
        v610 = v609;
        sub_1D726345C();
        *&v1505 = v600;
        v612 = sub_1D6EE8B60(v611);
        v614 = v613;
        type metadata accessor for FormatVisibilityDataValue();
        v615 = swift_allocObject();
        *(v615 + 16) = v600;
        *(v615 + 24) = v608;
        v616 = v1494;
        swift_beginAccess();
        v1468 = v599;

        v1470[0] = v608;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v616;
        *v616 = 0x8000000000000000;
        sub_1D6D7A36C(v615, v612, v614, isUniquelyReferenced_nonNull_native);

        *v616 = v1512;
        swift_endAccess();
        if (!v1513)
        {
          goto LABEL_336;
        }

        v618 = *(v1502 + 304);
        v619 = v1513;
        v620 = v1501;
        v1489 = v603;
        v621 = v610;
        v622 = v1500;
        sub_1D69B7E44(v1467, v603, v1474, v610, v619, v618, v1488, v1500, v1501);

        v623 = swift_allocObject();
        swift_weakInit();
        v624 = v1483;
        v625 = v1436;
        (*(v1483 + 16))(v1436, v1499, v622);
        v626 = (*(v624 + 80) + 88) & ~*(v624 + 80);
        v627 = (v1481 + v626) & 0xFFFFFFFFFFFFFFF8;
        v628 = swift_allocObject();
        *(v628 + 16) = *(v1482 + 80);
        *(v628 + 24) = v622;
        *(v628 + 32) = v620;
        *(v628 + 40) = v623;
        v629 = v1518;
        *(v628 + 48) = v1517;
        *(v628 + 64) = v629;
        *(v628 + 80) = v1519;
        (*(v624 + 32))(v628 + v626, v625, v622);
        v630 = (v628 + v627);
        v631 = v1474;
        v632 = v1470[0];
        *v630 = v1474;
        v630[1] = v632;
        v630[2] = v621;
        v633 = swift_allocObject();
        *(v633 + 16) = sub_1D61CC858;
        *(v633 + 24) = v628;
        v634 = v1485;
        swift_beginAccess();
        v635 = *v634;
        v1470[0] = v632;

        sub_1D61CC910(&v1517, &v1509, &unk_1EDF1C808, type metadata accessor for FormatTextNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1474 = v631;

        v636 = swift_isUniquelyReferenced_nonNull_native();
        *v634 = v635;
        v1466 = v621;
        if ((v636 & 1) == 0)
        {
          v635 = sub_1D69931DC(0, v635[2] + 1, 1, v635);
          *v1485 = v635;
        }

        v141 = v1498;
        v638 = v635[2];
        v637 = v635[3];
        if (v638 >= v637 >> 1)
        {
          v635 = sub_1D69931DC((v637 > 1), v638 + 1, 1, v635);
        }

        v635[2] = v638 + 1;
        v639 = &v635[2 * v638];
        v639[4] = sub_1D61CCD0C;
        v639[5] = v633;
        *v1485 = v635;
        swift_endAccess();

        v640 = *(&v1517 + 1);
        v1551 = *(&v1517 + 1);
        if (*(&v1517 + 1))
        {
          v642 = *(v1489 + 2);
          v641 = *(v1489 + 3);
          v643 = *(v1502 + 296);
          v644 = MEMORY[0x1E69E6720];
          sub_1D61CC910(&v1551, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v645 = v1470[0];
          sub_1D61CC910(&v1551, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v644, sub_1D61BB5EC);

          v646 = [v645 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v647 = swift_allocObject();
          v647[2] = 0;
          v647[3] = 0;
          v647[6] = v641;
          v647[7] = v645;
          v648 = MEMORY[0x1E69E7CC8];
          v647[11] = v640;
          v647[12] = v648;
          v647[4] = v643;
          v647[5] = v642;
          v647[8] = v646;
          v649 = MEMORY[0x1E69E7CC0];
          v647[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v650 = swift_allocObject();
          *(v650 + 16) = v1478;
          *(v650 + 32) = v646;
          *&v1509 = v650;
          v651 = v646;
          sub_1D69879AC(v649);
          v647[10] = v1509;
          v652 = v1504;
          v653 = v1479;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v654);
          if (*((*&v652[v653] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v652[v653] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(&v1551, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v141 = v1498;
        }

        v655 = v1518;
        v656 = v1519;
        v132 = v1504;
        v657 = v1489;
        if (*(&v1518 + 1))
        {
          v1505 = v1518;
          *&v1506 = v1519;
          v658 = *(v1489 + 4);
          v659 = *(v1489 + 5);

          v144 = v1499;
          v660 = v659;
          v146 = v1500;
          v145 = v1501;
          sub_1D6D270A8(v658, v660, v1500, v1501, &v1509);

          v143 = *(&v1509 + 1);
          v655 = v1509;
          v656 = v1510;
        }

        else
        {
          v143 = 0;
          v144 = v1499;
          v145 = v1501;
          v146 = v1500;
        }

        *&v1509 = v655;
        *(&v1509 + 1) = v143;
        *&v1510 = v656;
        Strong = swift_unknownObjectWeakLoadStrong();
        v148 = v144;
        v149 = v1474;
        sub_1D67C4728(v148, &v1509, Strong, v1474, *(v657 + 4), *(v657 + 5), v146, v145);

        sub_1D5EBC358(v1509, *(&v1509 + 1), v1510);
        goto LABEL_6;
      case 2uLL:
        sub_1D61CC870(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
        v446 = v445;
        v447 = swift_projectBox();
        v448 = v447 + *(v446 + 48);
        v449 = *(v448 + 32);
        v450 = *(v448 + 16);
        v1514 = *v448;
        v1515 = v450;
        v1516 = v449;
        sub_1D5BC885C(v447, v142, type metadata accessor for FormatViewData);
        v451 = v1514;
        v452 = *(v1514 + 32);
        v453 = *(v1514 + 40);
        v454 = *(v1514 + 104);

        sub_1D61CC910(&v1514, &v1509, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v1470[0] = sub_1D61C787C(v452, v453, v454, type metadata accessor for FormatView, &unk_1F50F6EC0);
        v456 = v455;
        v1474 = v457;

        sub_1D726345C();
        *&v1505 = v150;
        v459 = sub_1D6EE8B60(v458);
        v461 = v460;
        type metadata accessor for FormatVisibilityDataValue();
        v462 = v150;
        v463 = swift_allocObject();
        *(v463 + 16) = v462;
        *(v463 + 24) = v456;
        v464 = v1494;
        swift_beginAccess();
        v1489 = v462;

        v1467 = v456;
        v465 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v464;
        *v464 = 0x8000000000000000;
        sub_1D6D7A36C(v463, v459, v461, v465);

        *v464 = v1512;
        swift_endAccess();
        if (!v1513)
        {
          goto LABEL_335;
        }

        v466 = v1513;
        v467 = v1501;
        v468 = v1499;
        v1468 = v451;
        v469 = v1474;
        v470 = v1500;
        sub_1D6085298(v1499, v451, v1470[0], v1474, v142, v466, v1488, v1500, v1501);

        v471 = swift_allocObject();
        swift_weakInit();
        v472 = v1483;
        v473 = v1435;
        (*(v1483 + 16))(v1435, v468, v470);
        v474 = (*(v472 + 80) + 88) & ~*(v472 + 80);
        v475 = (v1481 + v474) & 0xFFFFFFFFFFFFFFF8;
        v476 = swift_allocObject();
        *(v476 + 16) = *(v1482 + 80);
        *(v476 + 24) = v470;
        *(v476 + 32) = v467;
        *(v476 + 40) = v471;
        v477 = v1515;
        *(v476 + 48) = v1514;
        *(v476 + 64) = v477;
        *(v476 + 80) = v1516;
        (*(v472 + 32))(v476 + v474, v473, v470);
        v478 = v476 + v475;
        v479 = v1470[0];
        v480 = v1467;
        *v478 = v1470[0];
        *(v478 + 8) = v480;
        *(v478 + 16) = v469;
        v481 = swift_allocObject();
        *(v481 + 16) = sub_1D61CCA8C;
        *(v481 + 24) = v476;
        v482 = v1485;
        swift_beginAccess();
        v483 = *v482;
        sub_1D61CC910(&v1514, &v1509, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1467 = v480;

        v484 = v479;

        v485 = swift_isUniquelyReferenced_nonNull_native();
        *v482 = v483;
        v1470[0] = v484;
        if ((v485 & 1) == 0)
        {
          v483 = sub_1D69931DC(0, v483[2] + 1, 1, v483);
          *v1485 = v483;
        }

        v487 = v483[2];
        v486 = v483[3];
        if (v487 >= v486 >> 1)
        {
          v483 = sub_1D69931DC((v486 > 1), v487 + 1, 1, v483);
        }

        v483[2] = v487 + 1;
        v488 = &v483[2 * v487];
        v488[4] = sub_1D61CCD0C;
        v488[5] = v481;
        *v1485 = v483;
        swift_endAccess();

        v489 = *(&v1514 + 1);
        v1552[0] = *(&v1514 + 1);
        if (*(&v1514 + 1))
        {
          v490 = v1468[2];
          v491 = v1468[3];
          v492 = *(v1502 + 296);
          v493 = MEMORY[0x1E69E6720];
          sub_1D61CC910(v1552, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v494 = v1467;
          sub_1D61CC910(v1552, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v493, sub_1D61BB5EC);

          v495 = [v494 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v496 = swift_allocObject();
          v496[2] = 0;
          v496[3] = 0;
          v496[6] = v491;
          v496[7] = v494;
          v497 = MEMORY[0x1E69E7CC8];
          v496[11] = v489;
          v496[12] = v497;
          v496[4] = v492;
          v496[5] = v490;
          v496[8] = v495;
          v498 = MEMORY[0x1E69E7CC0];
          v496[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v499 = swift_allocObject();
          *(v499 + 16) = v1478;
          *(v499 + 32) = v495;
          *&v1509 = v499;
          v500 = v495;
          sub_1D69879AC(v498);
          v496[10] = v1509;
          v501 = v1504;
          v502 = v1479;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v503);
          if (*((*&v501[v502] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v501[v502] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(v1552, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        }

        v504 = v1515;
        v505 = v1516;
        v506 = v1468;
        if (*(&v1515 + 1))
        {
          v1505 = v1515;
          *&v1506 = v1516;
          v507 = v1468[4];
          v508 = v1468[5];

          v509 = v1499;
          v510 = v508;
          v511 = v1500;
          v512 = v1501;
          sub_1D6D270A8(v507, v510, v1500, v1501, &v1509);

          v513 = *(&v1509 + 1);
          v504 = v1509;
          v505 = v1510;
        }

        else
        {
          v513 = 0;
          v509 = v1499;
          v512 = v1501;
          v511 = v1500;
        }

        *&v1509 = v504;
        *(&v1509 + 1) = v513;
        *&v1510 = v505;
        v1023 = swift_unknownObjectWeakLoadStrong();
        v1024 = v509;
        v1025 = v1470[0];
        sub_1D67C4728(v1024, &v1509, v1023, v1470[0], v506[4], v506[5], v511, v512);

        sub_1D5EBC358(v1509, *(&v1509 + 1), v1510);
        v142 = v1495;
        sub_1D61CCBB4(v1495, type metadata accessor for FormatViewData);
        sub_1D61CCAA4(&v1514, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v138 = v1496;
        v139 = v1497;
        v140 = v1490;
        v12 = v1503;
        v141 = v1498;
        v132 = v1504;
        goto LABEL_9;
      case 3uLL:
        sub_1D61CC870(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v536 = v535;
        v537 = swift_projectBox();
        v538 = v537 + *(v536 + 48);
        v539 = *(v538 + 32);
        v540 = *(v538 + 16);
        v1523 = *v538;
        v1524 = v540;
        v1525 = v539;
        sub_1D5BC885C(v537, v141, type metadata accessor for FormatButtonNodeData);
        v541 = v1523;
        v542 = *(v1523 + 16);
        v543 = *(v542 + 64);
        v544 = *(v542 + 72);
        v545 = *(v1523 + 32);

        sub_1D61CC910(&v1523, &v1509, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v1470[0] = sub_1D61C787C(v543, v544, v545, type metadata accessor for FormatButton, &unk_1F50F6F38);
        v547 = v546;
        v1454 = v548;

        sub_1D726345C();
        *&v1505 = v150;
        v550 = sub_1D6EE8B60(v549);
        v552 = v551;
        type metadata accessor for FormatVisibilityDataValue();
        v553 = swift_allocObject();
        *(v553 + 16) = v150;
        *(v553 + 24) = v547;
        v554 = v1494;
        swift_beginAccess();

        v1458 = v547;
        v555 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v554;
        *v554 = 0x8000000000000000;
        sub_1D6D7A36C(v553, v550, v552, v555);

        *v554 = v1512;
        swift_endAccess();
        v556 = *(v541 + 72);
        v557 = v556 >= 0xFE;
        v558 = v556 & 0xC0;
        v560 = !v557 && v558 == 64;
        LODWORD(v1466) = v560;
        v1459 = v541;
        v1489 = v150;
        if (*(&v1524 + 1))
        {
          v1505 = v1524;
          *&v1506 = v1525;
          v561 = *(v541 + 16);
          v562 = *(v561 + 64);
          v563 = *(v561 + 72);
          sub_1D5EBC314(v1524, *(&v1524 + 1), v1525);

          v564 = v1499;
          v565 = v562;
          v566 = v1500;
          sub_1D6D270A8(v565, v563, v1500, v1501, &v1509);

          v1474 = *(&v1509 + 1);
          v1468 = v1509;
          v1467 = v1510;
        }

        else
        {
          v1474 = 0;
          v564 = v1499;
          v566 = v1500;
          v1468 = v1524;
          v1467 = v1525;
        }

        v1451 = OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView;
        v1453 = *(v1470[0] + OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView);
        v1465 = swift_allocObject();
        swift_weakInit();
        v1464 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v925 = v1483;
        ObjectType = *(v1483 + 16);
        v926 = v1476;
        ObjectType(v1476, v564, v566);
        v927 = (*(v925 + 80) + 97) & ~*(v925 + 80);
        v1450 = *(v925 + 80);
        v928 = (v1481 + v927) & 0xFFFFFFFFFFFFFFF8;
        v929 = (v928 + 15) & 0xFFFFFFFFFFFFFFF8;
        v930 = (v929 + 31) & 0xFFFFFFFFFFFFFFF8;
        v931 = (v930 + 15) & 0xFFFFFFFFFFFFFFF8;
        v932 = swift_allocObject();
        v1449 = *(v1482 + 80);
        v933 = v1449;
        v934 = v1524;
        *(v932 + 56) = v1523;
        v935 = v1500;
        *(v932 + 16) = v933;
        *(v932 + 24) = v935;
        v936 = v1465;
        *(v932 + 32) = v1501;
        *(v932 + 40) = v936;
        *(v932 + 48) = v1464;
        *(v932 + 72) = v934;
        *(v932 + 88) = v1525;
        *(v932 + 96) = v1466;
        v1448 = *(v925 + 32);
        v1448(v932 + v927, v926);
        v937 = v1488;
        *(v932 + v928) = v1488;
        v938 = (v932 + v929);
        v939 = v1468;
        v940 = v1474;
        *v938 = v1468;
        v938[1] = v940;
        v941 = v1467;
        v938[2] = v1467;
        *(v932 + v930) = v1480;
        v942 = (v932 + v931);
        v943 = v1477;
        *v942 = v1475;
        v942[1] = v943;
        *(v932 + ((v931 + 23) & 0xFFFFFFFFFFFFFFF8)) = v1487;
        v944 = v1470[0];
        v945 = (v1470[0] + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock);
        v946 = *(v1470[0] + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock);
        v1446 = *(v1470[0] + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock + 8);
        v1447 = v946;

        sub_1D61CC910(&v1523, &v1509, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1453 = v1453;

        v947 = v937;
        sub_1D5EBC314(v939, v940, v941);
        *v945 = sub_1D61CC6E4;
        v945[1] = v932;

        sub_1D5B74328(v1447, v1446);

        sub_1D70CF634();

        v948 = v944;
        v949 = *&v944[v1451];
        sub_1D704A77C(v949);

        v1465 = *(v1502 + 72);
        v1509 = v1523;
        v1510 = v1524;
        *&v1511[0] = v1525;
        v950 = *(v1502 + 40);
        *&v1505 = v939;
        *(&v1505 + 1) = v940;
        *&v1506 = v941;
        v951 = swift_allocObject();
        swift_weakInit();
        v952 = v1476;
        v953 = v1499;
        v954 = v1500;
        ObjectType(v1476, v1499, v1500);
        v955 = (v1450 + 48) & ~v1450;
        v956 = (v1481 + v955) & 0xFFFFFFFFFFFFFFF8;
        v957 = swift_allocObject();
        v958 = v1448;
        v957[2] = v1449;
        v957[3] = v954;
        v959 = v954;
        v960 = v1501;
        v957[4] = v1501;
        v957[5] = v951;
        v961 = v957 + v955;
        v962 = v959;
        v958(v961, v952);
        v963 = (v957 + v956);
        v964 = v1477;
        *v963 = v1475;
        v963[1] = v964;

        v1393 = v962;
        v1394 = v960;
        v965 = v948;
        v966 = v1498;
        sub_1D705AC1C(v953, v1498, &v1509, v948, v950, &v1505, sub_1D61CC7C8, v957, v1393, v1394);

        if (v1466)
        {
          *(&v1510 + 1) = type metadata accessor for FormatButton();
          *&v1509 = v948;
          sub_1D5B76B10(&v1509, &v1505);
          v967 = v1487;
          swift_beginAccess();
          v968 = v967[7];
          v969 = v948;
          v970 = swift_isUniquelyReferenced_nonNull_native();
          v967[7] = v968;
          if ((v970 & 1) == 0)
          {
            v968 = sub_1D69917E4(0, *(v968 + 2) + 1, 1, v968);
            v967[7] = v968;
          }

          v971 = v1502;
          v972 = v1459;
          v973 = v1474;
          v975 = *(v968 + 2);
          v974 = *(v968 + 3);
          if (v975 >= v974 >> 1)
          {
            v968 = sub_1D69917E4((v974 > 1), v975 + 1, 1, v968);
          }

          *(v968 + 2) = v975 + 1;
          sub_1D5B7C390(&v1505, &v968[32 * v975 + 32]);
          v967[7] = v968;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v1509);
          v976 = v1497;
LABEL_299:
          v1362 = *(&v1523 + 1);
          v1549 = *(&v1523 + 1);
          if (*(&v1523 + 1))
          {
            v1363 = *(v972 + 2);
            v1365 = *(v1363 + 48);
            v1364 = *(v1363 + 56);
            v1366 = *(v971 + 296);
            v1367 = MEMORY[0x1E69E6720];
            sub_1D61CC910(&v1549, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
            v1368 = v1458;
            sub_1D61CC910(&v1549, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v1367, sub_1D61BB5EC);

            v1369 = [v1368 layer];
            type metadata accessor for FormatLayoutViewAnimation();
            v1370 = swift_allocObject();
            v1370[2] = 0;
            v1370[3] = 0;
            v1370[6] = v1364;
            v1370[7] = v1368;
            v1371 = v1504;
            v1372 = MEMORY[0x1E69E7CC8];
            v1370[11] = v1362;
            v1370[12] = v1372;
            v1370[4] = v1366;
            v1370[5] = v1365;
            v1370[8] = v1369;
            v1373 = MEMORY[0x1E69E7CC0];
            v1370[9] = MEMORY[0x1E69E7CC0];
            sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v1374 = swift_allocObject();
            *(v1374 + 16) = v1478;
            *(v1374 + 32) = v1369;
            *&v1509 = v1374;
            v1375 = v1369;
            sub_1D69879AC(v1373);
            v1370[10] = v1509;
            v1376 = v1479;
            swift_beginAccess();

            MEMORY[0x1DA6F9CE0](v1377);
            if (*((*&v1371[v1376] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1371[v1376] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
            swift_endAccess();

            sub_1D61CCAA4(&v1549, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
            v976 = v1497;
            v972 = v1459;
            v973 = v1474;
          }

          v1474 = v973;
          v1378 = v1468;
          *&v1509 = v1468;
          *(&v1509 + 1) = v973;
          v1379 = v1467;
          *&v1510 = v1467;
          v1380 = v976;
          v1381 = swift_unknownObjectWeakLoadStrong();
          v1382 = *(v972 + 2);
          v1383 = *(v1382 + 64);
          v1384 = *(v1382 + 72);

          v1385 = v1470[0];
          sub_1D67C4728(v1499, &v1509, v1381, v1470[0], v1383, v1384, v1500, v1501);

          v139 = v1380;

          sub_1D61CCAA4(&v1523, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

          v141 = v1498;
          sub_1D61CCBB4(v1498, type metadata accessor for FormatButtonNodeData);
          v1386 = v1378;
          v132 = v1504;
          sub_1D5EBC358(v1386, v1474, v1379);

          v140 = v1490;
          v142 = v1495;
          v12 = v1503;
          v138 = v1496;
          goto LABEL_9;
        }

        v977 = v1430;
        sub_1D5BC885C(v966, v1430, type metadata accessor for FormatButtonNodeDataAction);
        v978 = v1431;
        (*v1404)(v977, 0, 1, v1431);
        v979 = v1422;
        sub_1D61CC910(v977, v1422, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v980 = *v1429;
        if ((*v1429)(v979, 1, v978) == 1)
        {
          sub_1D61CCAA4(v977, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v981 = v979;
        }

        else
        {
          v1066 = v979;
          v1067 = v1416;
          sub_1D61CCB4C(v1066, v1416, type metadata accessor for FormatButtonNodeDataAction);
          v1068 = *(v1067 + *(v978 + 20));
          if (v1068)
          {
            v1069 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1070 = swift_allocObject();
            *(v1070 + 16) = v965;
            *(v1070 + 24) = v1069;
            v1071 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
            *&v1511[0] = sub_1D61CCD14;
            *(&v1511[0] + 1) = v1070;
            *&v1509 = MEMORY[0x1E69E9820];
            *(&v1509 + 1) = v131;
            *&v1510 = sub_1D700BAF0;
            *(&v1510 + 1) = &block_descriptor_171;
            v1072 = _Block_copy(&v1509);
            v1073 = v965;
            v1074 = v1068;

            v1075 = [v1071 initWithAttributedName:v1074 actionHandler:v1072];
            _Block_release(v1072);

            v1076 = v1487;
            swift_beginAccess();
            v1077 = v1076[8];
            v1078 = v1075;
            v1079 = swift_isUniquelyReferenced_nonNull_native();
            v1076[8] = v1077;
            if ((v1079 & 1) == 0)
            {
              v1077 = sub_1D6993224(0, *(v1077 + 2) + 1, 1, v1077);
              v1487[8] = v1077;
            }

            v1081 = *(v1077 + 2);
            v1080 = *(v1077 + 3);
            if (v1081 >= v1080 >> 1)
            {
              v1077 = sub_1D6993224((v1080 > 1), v1081 + 1, 1, v1077);
            }

            *(v1077 + 2) = v1081 + 1;
            v1082 = &v1077[24 * v1081];
            *(v1082 + 4) = v1075;
            *(v1082 + 5) = 0;
            v1082[48] = 0;
            v1487[8] = v1077;
            swift_endAccess();

            sub_1D61CCBB4(v1416, type metadata accessor for FormatButtonNodeDataAction);
            v981 = v1430;
          }

          else
          {
            sub_1D61CCBB4(v1067, type metadata accessor for FormatButtonNodeDataAction);
            v981 = v977;
          }

          v978 = v1431;
        }

        v1342 = MEMORY[0x1E69E6720];
        sub_1D61CCAA4(v981, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v1343 = v1423;
        sub_1D61CC910(v1498 + *(v1421 + 20), v1423, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v1342, sub_1D61BB5EC);
        if (v980(v1343, 1, v978) == 1)
        {
          sub_1D61CCAA4(v1343, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v971 = v1502;
        }

        else
        {
          v1344 = v1343;
          v1345 = v1417;
          sub_1D61CCB4C(v1344, v1417, type metadata accessor for FormatButtonNodeDataAction);
          v1346 = *(v1345 + *(v978 + 20));
          v971 = v1502;
          if (v1346)
          {
            v1347 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1348 = swift_allocObject();
            v1349 = v1470[0];
            *(v1348 + 16) = v1470[0];
            *(v1348 + 24) = v1347;
            v1350 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
            *&v1511[0] = sub_1D61CC838;
            *(&v1511[0] + 1) = v1348;
            *&v1509 = MEMORY[0x1E69E9820];
            *(&v1509 + 1) = v131;
            *&v1510 = sub_1D700BAF0;
            *(&v1510 + 1) = &block_descriptor_163;
            v1351 = _Block_copy(&v1509);
            v1352 = v1349;
            v1353 = v1346;

            v1354 = [v1350 initWithAttributedName:v1353 actionHandler:v1351];
            _Block_release(v1351);

            v1355 = v1487;
            swift_beginAccess();
            v1356 = v1355[8];
            v1357 = v1354;
            v1358 = swift_isUniquelyReferenced_nonNull_native();
            v1355[8] = v1356;
            if ((v1358 & 1) == 0)
            {
              v1356 = sub_1D6993224(0, *(v1356 + 2) + 1, 1, v1356);
              v1487[8] = v1356;
            }

            v1360 = *(v1356 + 2);
            v1359 = *(v1356 + 3);
            v973 = v1474;
            if (v1360 >= v1359 >> 1)
            {
              v1356 = sub_1D6993224((v1359 > 1), v1360 + 1, 1, v1356);
            }

            *(v1356 + 2) = v1360 + 1;
            v1361 = &v1356[24 * v1360];
            *(v1361 + 4) = v1354;
            *(v1361 + 5) = 0;
            v1361[48] = 0;
            v1487[8] = v1356;
            swift_endAccess();

            sub_1D61CCBB4(v1417, type metadata accessor for FormatButtonNodeDataAction);
            v976 = v1497;
            v972 = v1459;
            goto LABEL_299;
          }

          sub_1D61CCBB4(v1345, type metadata accessor for FormatButtonNodeDataAction);
        }

        v976 = v1497;
        v972 = v1459;
        v973 = v1474;
        goto LABEL_299;
      case 4uLL:
        v358 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v359 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v360 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1528 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v1526 = v359;
        v1527 = v360;
        v361 = v359;
        v362 = *(v359 + 32);
        v363 = *(v359 + 40);
        v364 = *(v359 + 104);

        sub_1D61CC910(&v1526, &v1509, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v365 = sub_1D61C711C(v362, v363, v364);
        v367 = v366;
        v1474 = v368;

        v369 = v365;
        sub_1D726344C();

        sub_1D726345C();
        *&v1505 = v150;
        v371 = sub_1D6EE8B60(v370);
        v373 = v372;
        type metadata accessor for FormatVisibilityDataValue();
        v374 = swift_allocObject();
        *(v374 + 16) = v150;
        *(v374 + 24) = v367;
        v375 = v361;
        v376 = v1494;
        swift_beginAccess();
        v1467 = v358;

        v1468 = v367;
        v377 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v376;
        *v376 = 0x8000000000000000;
        v378 = v374;
        v379 = v1502;
        sub_1D6D7A36C(v378, v371, v373, v377);

        *v376 = v1512;
        swift_endAccess();
        if (*&v369[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer])
        {
          v380 = *(v375 + 192);
          if (v380)
          {
            v381 = *(v380 + 72);
            v382 = *(v380 + 80);
            v383 = *(v380 + 88);
            sub_1D5ED34B0(v381, v382, v383);
          }

          else
          {
            v381 = 0;
            v382 = 0;
            v383 = -2;
          }

          *&v1509 = v381;
          *(&v1509 + 1) = v382;
          LOBYTE(v1510) = v383;
          v1109 = *(v375 + 72);
          v1110 = *(v375 + 80);
          v1111 = *(v375 + 88);
          v1112 = *(v375 + 96);

          sub_1D5F91CE8(&v1509, v1109, v1110, v1111, v1112);

          sub_1D5ED348C(v1509, *(&v1509 + 1), v1510);
        }

        v1113 = *(v375 + 88);
        v1114 = *(v375 + 96);
        v1115 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v1116 = swift_allocObject();
        v1116[2] = v1115;
        v1116[3] = v1113;
        v1116[4] = v1114;
        v1116[5] = v134;
        v1116[6] = v135;
        v1117 = &v369[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
        v1119 = *&v369[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
        v1118 = *&v369[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation + 8];
        *v1117 = sub_1D61CCD10;
        *(v1117 + 1) = v1116;
        sub_1D5B74328(v1119, v1118);
        v1120 = *(v375 + 144);
        v557 = v1120 >= 0xFE;
        v1121 = v1120 & 0xC0;
        v1123 = !v557 && v1121 == 64;
        v1124 = *(v375 + 64);
        v1126 = *(v1124 + 64);
        v1125 = *(v1124 + 72);
        *v1470 = *(v379 + 272);
        type metadata accessor for FormatAccessibilityRenderer();
        v1127 = swift_allocObject();
        v1128 = MEMORY[0x1E69E7CC0];
        *(v1127 + 48) = MEMORY[0x1E69E7CC0];
        *(v1127 + 56) = v1128;
        *(v1127 + 96) = 0;
        swift_unknownObjectWeakInit();
        *(v1127 + 16) = v1126;
        *(v1127 + 24) = v1125;
        *(v1127 + 104) = 0;
        *(v1127 + 96) = &off_1F51E2E28;
        swift_unknownObjectWeakAssign();
        LODWORD(v1458) = v1123;
        if (v1123)
        {
          v1129 = 6;
        }

        else
        {
          v1129 = *(v1124 + 112);
        }

        *(v1127 + 32) = v1129;
        *(v1127 + 72) = *v1470;
        *(v1127 + 64) = MEMORY[0x1E69E7CC0];
        *(v1127 + 40) = *(v1124 + 104);
        v1489 = v375;
        v1130 = *(v375 + 64);
        v1131 = *(&v1527 + 1);
        v1132 = v1528;
        v1465 = v1528;
        v1459 = *(&v1527 + 1);
        v1464 = v1527;
        if (*(&v1527 + 1))
        {
          v1505 = v1527;
          *&v1506 = v1528;
          v1133 = v1130[9];
          v1454 = v1130[8];
          v1134 = v1527;

          swift_unknownObjectRetain();

          sub_1D5EBC314(v1134, v1131, v1132);

          v1135 = v1499;
          v1136 = v1500;
          v1137 = v1501;
          sub_1D6D270A8(v1454, v1133, v1500, v1501, &v1509);

          v1138 = *(&v1509 + 1);
          v1139 = v1509;
          v1140 = v1510;
        }

        else
        {
          v1141 = v1527;

          swift_unknownObjectRetain();

          v1138 = 0;
          v1139 = v1141;
          v1140 = v1132;
          v1135 = v1499;
          v1137 = v1501;
          v1136 = v1500;
        }

        *&v1509 = v1139;
        *(&v1509 + 1) = v1138;
        *&v1510 = v1140;
        sub_1D61BB650(v1135, v1130, v369, v1488, &v1509, v1480, v1127, v1475, v1477, v1136, v1137);
        sub_1D5EBC358(v1509, *(&v1509 + 1), v1510);
        if (v1458)
        {
          *(&v1510 + 1) = type metadata accessor for FormatLayoutView(0);
          *&v1509 = v369;
          sub_1D5B76B10(&v1509, &v1505);
          v1142 = v1487;
          swift_beginAccess();
          v1143 = v1142[7];
          v1144 = v369;
          v1145 = swift_isUniquelyReferenced_nonNull_native();
          v1142[7] = v1143;
          v1146 = v1489;
          if ((v1145 & 1) == 0)
          {
            v1143 = sub_1D69917E4(0, *(v1143 + 2) + 1, 1, v1143);
            v1142[7] = v1143;
          }

          v1148 = *(v1143 + 2);
          v1147 = *(v1143 + 3);
          if (v1148 >= v1147 >> 1)
          {
            v1143 = sub_1D69917E4((v1147 > 1), v1148 + 1, 1, v1143);
          }

          *(v1143 + 2) = v1148 + 1;
          sub_1D5B7C390(&v1505, &v1143[32 * v1148 + 32]);
          v1487[7] = v1143;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v1509);
        }

        else
        {
          v1149 = v1487;
          swift_beginAccess();
          v1150 = v1149[6];

          v1151 = swift_isUniquelyReferenced_nonNull_native();
          v1149[6] = v1150;
          v1146 = v1489;
          if ((v1151 & 1) == 0)
          {
            v1150 = sub_1D6993238(0, *(v1150 + 2) + 1, 1, v1150);
            v1149[6] = v1150;
          }

          v1153 = *(v1150 + 2);
          v1152 = *(v1150 + 3);
          if (v1153 >= v1152 >> 1)
          {
            v1150 = sub_1D6993238((v1152 > 1), v1153 + 1, 1, v1150);
          }

          *(v1150 + 2) = v1153 + 1;
          *&v1150[8 * v1153 + 32] = v1127;
          v1487[6] = v1150;
          swift_endAccess();
          *&v369[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;
        }

        v1154 = v1146;
        v1155 = v1500;
        v1156 = v1501;
        sub_1D69D11E4(v1154, v369, v1474, v1488, v1500, v1501);
        v1157 = swift_allocObject();
        swift_weakInit();
        v1158 = v1483;
        v1159 = v1442;
        (*(v1483 + 16))(v1442, v1499, v1155);
        v1160 = (*(v1158 + 80) + 88) & ~*(v1158 + 80);
        v1161 = swift_allocObject();
        *(v1161 + 16) = *(v1482 + 80);
        *(v1161 + 24) = v1155;
        *(v1161 + 32) = v1156;
        *(v1161 + 40) = v1157;
        v1162 = v1527;
        *(v1161 + 48) = v1526;
        *(v1161 + 64) = v1162;
        *(v1161 + 80) = v1528;
        (*(v1158 + 32))(v1161 + v1160, v1159, v1155);
        v1163 = swift_allocObject();
        *(v1163 + 16) = sub_1D61CC5C8;
        *(v1163 + 24) = v1161;
        v1164 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers;
        swift_beginAccess();
        v1165 = *&v369[v1164];
        sub_1D61CC910(&v1526, &v1509, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v1166 = swift_isUniquelyReferenced_nonNull_native();
        *&v369[v1164] = v1165;
        if ((v1166 & 1) == 0)
        {
          v1165 = sub_1D69931DC(0, v1165[2] + 1, 1, v1165);
          *&v369[v1164] = v1165;
        }

        v1168 = v1165[2];
        v1167 = v1165[3];
        v1466 = v1127;
        if (v1168 >= v1167 >> 1)
        {
          v1165 = sub_1D69931DC((v1167 > 1), v1168 + 1, 1, v1165);
        }

        v1165[2] = v1168 + 1;
        v1169 = &v1165[2 * v1168];
        v1169[4] = sub_1D61CCD0C;
        v1169[5] = v1163;
        *&v369[v1164] = v1165;
        swift_endAccess();

        sub_1D704A77C(v369);
        v1170 = *(&v1526 + 1);
        v1548 = *(&v1526 + 1);
        if (*(&v1526 + 1))
        {
          v1171 = *(v1489 + 3);
          v1470[0] = *(v1489 + 2);
          v1172 = *(v1502 + 296);
          v1173 = MEMORY[0x1E69E6720];
          sub_1D61CC910(&v1548, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v1174 = v1468;
          sub_1D61CC910(&v1548, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v1173, sub_1D61BB5EC);

          v1175 = [v1174 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v1176 = swift_allocObject();
          v1176[2] = 0;
          v1176[3] = 0;
          v1176[6] = v1171;
          v1176[7] = v1174;
          v1177 = MEMORY[0x1E69E7CC8];
          v1176[11] = v1170;
          v1176[12] = v1177;
          v1178 = v1470[0];
          v1176[4] = v1172;
          v1176[5] = v1178;
          v1176[8] = v1175;
          v1179 = MEMORY[0x1E69E7CC0];
          v1176[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v1180 = swift_allocObject();
          *(v1180 + 16) = v1478;
          *(v1180 + 32) = v1175;
          *&v1509 = v1180;
          v1181 = v1175;
          v1182 = v1504;
          sub_1D69879AC(v1179);
          v1176[10] = v1509;
          v1183 = v1479;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v1184);
          if (*((*&v1182[v1183] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1182[v1183] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(&v1548, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        }

        if (v1459)
        {
          *&v1505 = v1464;
          *(&v1505 + 1) = v1459;
          *&v1506 = v1465;
          v1185 = v1489;
          v1186 = *(v1489 + 4);
          v1187 = *(v1489 + 5);

          v1188 = v1499;
          v1189 = v1187;
          v1190 = v1500;
          v1191 = v1501;
          sub_1D6D270A8(v1186, v1189, v1500, v1501, &v1509);

          v1192 = *(&v1509 + 1);
          v1193 = v1509;
          v1194 = v1510;
        }

        else
        {
          v1192 = 0;
          v1188 = v1499;
          v1191 = v1501;
          v1190 = v1500;
          v1185 = v1489;
          v1194 = v1465;
          v1193 = v1464;
        }

        *&v1509 = v1193;
        *(&v1509 + 1) = v1192;
        *&v1510 = v1194;
        v1195 = swift_unknownObjectWeakLoadStrong();
        sub_1D67C4728(v1188, &v1509, v1195, v369, v1185[4], v1185[5], v1190, v1191);

        sub_1D5EBC358(v1509, *(&v1509 + 1), v1510);
        v1196 = [v369 layer];
        [v1196 setMask_];

        v1197 = v1185[19];
        if (!v1197)
        {

          sub_1D61CCAA4(&v1526, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

          v138 = v1496;
          v139 = v1497;
          v140 = v1490;
          v141 = v1498;
          v142 = v1495;
          v12 = v1503;
          v132 = v1504;
          goto LABEL_9;
        }

        v1198 = v1185[21];
        v1199 = v1185[22];
        v1200 = v1185[23];
        v1201 = v1185[19];
        v1459 = v1185[20];
        v1470[0] = v1198;
        v1465 = v1199;
        v1464 = v1200;
        sub_1D61CC60C(v1201, v1459, v1198, v1199, v1200);

        v1489 = v1197;
        v1202 = sub_1D67F3DF8(v1197, v1488, v1190, MEMORY[0x1E69E7CA8] + 8, v1191);

        v1203 = v1202[2];
        v1453 = v1202[3];
        v1204 = v1203;
        v1205 = [v369 layer];
        ObjectType = swift_getObjectType();
        v1454 = v1204;
        [v1205 setMask_];

        *&v1505 = MEMORY[0x1E69E7CC0];
        v1458 = v1202;
        v1206 = *(v1202[4] + 16);
        if (!v1206)
        {
          goto LABEL_242;
        }

        v1207 = (v1451 + 40);
        while (1)
        {
          v1209 = *(v1207 - 1);
          v1208 = *v1207;
          v1210 = v1209;
          [v369 frame];
          [v1210 setFrame_];
          v1211 = [v369 superview];
          if (v1208 < 0)
          {
            if (v1211)
            {
              v1215 = v1211;
              v1213 = [v1211 &selRef_setHidePrediction_];

              v1214 = [v369 &selRef_setHidePrediction_];
              [v1213 insertSublayer:v1210 above:v1214];
              goto LABEL_237;
            }
          }

          else if (v1211)
          {
            v1212 = v1211;
            v1213 = [v1211 &selRef_setHidePrediction_];

            v1214 = [v369 &selRef_setHidePrediction_];
            [v1213 insertSublayer:v1210 below:v1214];
LABEL_237:
          }

          MEMORY[0x1DA6F9CE0](v1210);
          if (*((v1505 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1505 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          v1207 += 2;
          sub_1D726278C();

          if (!--v1206)
          {

LABEL_242:
            v138 = v1496;
            v139 = v1497;
            v141 = v1498;
            v1216 = v1459;
            if (v1459)
            {
              v1217 = *(v1489 + 2);
              v1218 = *(v1217 + 32);
              v1219 = *(v1217 + 40);
              v1220 = v1505;
              v1221 = *(v1502 + 296);
              type metadata accessor for FormatLayoutViewAnimation();
              v1222 = swift_allocObject();
              v1222[2] = 0;
              v1222[3] = 0;
              v1222[6] = v1219;
              v1222[7] = v369;
              v1223 = MEMORY[0x1E69E7CC8];
              v1222[11] = v1216;
              v1222[12] = v1223;
              v1222[4] = v1221;
              v1222[5] = v1218;
              v1224 = v1454;
              v1222[8] = v1454;
              v1222[9] = v1220;
              sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
              v1225 = swift_allocObject();
              *(v1225 + 16) = v1478;
              *(v1225 + 32) = v1224;
              *&v1509 = v1225;
              v1226 = v369;
              v1227 = v1224;
              swift_retain_n();
              v1228 = v1226;
              v1229 = v1227;

              sub_1D69879AC(v1230);
              v1222[10] = v1509;
              if ((*(v1453 + 1))(ObjectType))
              {
                v1231 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v1232 = v1222[2];
                v1233 = v1222[3];
                v1222[2] = sub_1D61CC6DC;
                v1222[3] = v1231;

                sub_1D5B74328(v1232, v1233);
              }

              v1234 = v1504;
              v1235 = v1479;
              swift_beginAccess();

              MEMORY[0x1DA6F9CE0](v1236);
              if (*((*&v1234[v1235] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1234[v1235] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D726272C();
              }

              sub_1D726278C();
              swift_endAccess();

              sub_1D61CC678(v1489, v1216, v1470[0], v1465, v1464);

              sub_1D61CCAA4(&v1526, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

              v140 = v1490;
              v142 = v1495;
              v132 = v1234;
              v12 = v1503;
              v141 = v1498;
LABEL_158:
              v138 = v1496;
              v139 = v1497;
              goto LABEL_9;
            }

            sub_1D61CCAA4(&v1526, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

            sub_1D61CC678(v1489, 0, v1470[0], v1465, v1464);

            v140 = v1490;
LABEL_281:
            v142 = v1495;
            v132 = v1504;
LABEL_8:
            v12 = v1503;
            goto LABEL_9;
          }
        }

      case 5uLL:
        v671 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v670 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v672 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v1466 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v1464 = v672;
        v673 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        v1474 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v1465 = v673;
        LOBYTE(v673) = *(v670 + 184);
        v674 = *(v670 + 32);
        v675 = *(v670 + 40);
        v676 = *(v670 + 104);
        v1468 = v671;
        v1467 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v1470[0] = v670;
        if (v673)
        {

          v677 = sub_1D61C787C(v674, v675, v676, type metadata accessor for WebEmbedImageView, &unk_1F50F6FB0);
          v1454 = v678;
          v680 = v679;
          swift_beginAccess();
          [v677 setFrame_];
          sub_1D5B66EA4(0, &qword_1EDF3C5D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v681 = swift_allocObject();
          *(v681 + 16) = v1403;
          *(v681 + 56) = type metadata accessor for WebEmbedImageView(0);
          *(v681 + 32) = v677;
          swift_beginAccess();
          v1459 = v677;
          sub_1D6987A04(v681);
          swift_endAccess();
          v682 = v1424;
          sub_1D61CC910(v671 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem, v1424, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v683 = (*v1428)(v682, 1, v1471);
          v1458 = v680;
          if (v683 == 1)
          {
            sub_1D61CCAA4(v682, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          }

          else
          {
            v1083 = v1410;
            sub_1D61CCB4C(v682, v1410, type metadata accessor for FeedItem);
            v1453 = *(v671 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_routeOptions);
            v1084 = swift_allocObject();
            swift_weakInit();
            v1085 = v1456;
            sub_1D61CCB4C(v1083, v1456, type metadata accessor for FeedItem);
            v1489 = v150;
            v1086 = v1483;
            v1087 = v1500;
            (*(v1483 + 16))(v1476, v1499, v1500);
            v1088 = (*(v1469 + 80) + 48) & ~*(v1469 + 80);
            v1089 = (v1455 + v1088) & 0xFFFFFFFFFFFFFFF8;
            v1090 = (*(v1086 + 80) + v1089 + 8) & ~*(v1086 + 80);
            v1091 = swift_allocObject();
            *(v1091 + 2) = *(v1482 + 80);
            *(v1091 + 3) = v1087;
            *(v1091 + 4) = v1501;
            *(v1091 + 5) = v1084;
            sub_1D61CCB4C(v1085, &v1091[v1088], type metadata accessor for FeedItem);
            *&v1091[v1089] = v1453;
            (*(v1086 + 32))(&v1091[v1090], v1476, v1087);
            v1092 = &v1459[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
            v1094 = *&v1459[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
            v1093 = *&v1459[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction + 8];
            *v1092 = sub_1D61CC4BC;
            *(v1092 + 1) = v1091;

            v1095 = v1094;
            v150 = v1489;
            sub_1D5B74328(v1095, v1093);
          }

          v1096 = v1474;
          v1097 = v1454;
          sub_1D726345C();
          *&v1505 = v150;
          v1099 = v150;
          v1100 = sub_1D6EE8B60(v1098);
          v1102 = v1101;
          type metadata accessor for FormatVisibilityDataValue();
          v1103 = swift_allocObject();
          *(v1103 + 16) = v1099;
          *(v1103 + 24) = v1097;
          v1104 = v1494;
          swift_beginAccess();

          v1489 = v1097;
          v1105 = swift_isUniquelyReferenced_nonNull_native();
          v1512 = *v1104;
          *v1104 = 0x8000000000000000;
          sub_1D6D7A36C(v1103, v1100, v1102, v1105);

          *v1104 = v1512;
          swift_endAccess();
          v1106 = v1470[0];
          if (v1464)
          {
            *&v1505 = v1466;
            *(&v1505 + 1) = v1464;
            *&v1506 = v1096;
            v1107 = *(v1470[0] + 4);
            v1108 = *(v1470[0] + 5);

            sub_1D6D270A8(v1107, v1108, v1500, v1501, &v1509);

            v1464 = *(&v1509 + 1);
            v1466 = v1509;
            v1474 = v1510;
          }

          else
          {
            v1464 = 0;
          }

          v1270 = v1419;
          v1269 = v1420;
          v1271 = v1468;
          v1272 = v1459;
          v1273 = *(v1502 + 104);
          v1400 = v134;
          v1401 = v131;
          v1399 = v135;
          if (v1465)
          {
            swift_beginAccess();
            CGRectGetMinX(*(v1106 + 2));
            sub_1D726328C();
            CGRectGetMinY(*(v1106 + 2));
            sub_1D726329C();
            v1275 = v1274;
            v1277 = v1276;
            v1279 = v1278;
            v1281 = v1280;
          }

          else
          {
            v1279 = *(v1106 + 10);
            v1281 = *(v1106 + 11);
            v1275 = 0.0;
            v1277 = 0.0;
          }

          [v1272 bounds];
          v1286 = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:v1282 contentFrame:v1283 contentSafeAreaFrame:v1284 systemSafeAreaFrame:{v1285, v1275, v1277, v1279, v1281, *&v1275, *&v1277, *&v1279, *&v1281, *&v1275, *&v1277, *&v1279, *&v1281}];
          (*v1408)(v1444, &v1271[OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url], v1270);
          v131 = v1401;
          (*v1407)(v1269, 1, 1, v1270);

          v1287 = sub_1D726203C();

          v1288 = (*v1406)(v1269, 1, v1270);
          v135 = v1399;
          v134 = v1400;
          if (v1288 == 1)
          {
            v1289 = 0;
          }

          else
          {
            v1289 = sub_1D725844C();
            (*v1396)(v1269, v1270);
          }

          v1290 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v1287 URL:v1289];

          v1291 = *(*(v1468 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) + 16);
          v1292 = v1425;
          v1293 = v1443;
          sub_1D61CC910(v1468 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization, v1443 + *(v1425 + 32), qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          (*v1405)(v1293, v1444, v1270);
          *(v1293 + v1292[5]) = v1286;
          *(v1293 + v1292[6]) = v1290;
          *(v1293 + v1292[7]) = v1291;
          v1294 = v1488;
          *(v1293 + v1292[9]) = v1488;
          v1296 = *(v1106 + 2);
          v1295 = *(v1106 + 3);
          v1297 = &v1272[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier];
          swift_beginAccess();
          *v1297 = v1296;
          *(v1297 + 1) = v1295;
          v1298 = v1294;
          v1299 = v1291;

          [v1272 setUserInteractionEnabled_];
          v1300 = *(v1106 + 12);
          if (v1300)
          {
            [v1272 setAccessibilityIgnoresInvertColors_];
            v1301 = (*(v1300 + 90) == 2) | *(v1300 + 90);
          }

          else
          {
            [v1272 setAccessibilityIgnoresInvertColors_];
            v1301 = 1;
          }

          v132 = v1504;
          v1272[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_showSpinner] = v1301 & 1;
          sub_1D61CAB60(0);
          v1303 = v1302;
          v1304 = *(v1302 + 48);
          v1305 = v1443;
          v1306 = v1426;
          sub_1D5BC885C(v1443, v1426, type metadata accessor for WebEmbedImageRequest);
          *(v1306 + v1304) = *(v1273 + 24);
          (*(*(v1303 - 8) + 56))(v1306, 0, 1, v1303);
          v1307 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
          swift_beginAccess();

          sub_1D61CC41C(v1306, &v1272[v1307]);
          swift_endAccess();
          sub_1D6F27384();
          sub_1D61CCAA4(v1306, &qword_1EDF29E98, sub_1D61CAB60, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          sub_1D61CCBB4(v1305, type metadata accessor for WebEmbedImageRequest);
          v1308 = swift_allocObject();
          swift_weakInit();
          v1309 = swift_allocObject();
          v1310 = v1272;
          v1311 = v1466;
          *(v1309 + 2) = v1308;
          *(v1309 + 3) = v1311;
          v1312 = v1464;
          v1313 = v1474;
          *(v1309 + 4) = v1464;
          *(v1309 + 5) = v1313;
          v1314 = &v1310[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
          v1315 = *&v1310[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
          v1316 = *&v1310[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction + 8];
          *v1314 = sub_1D61CC4B0;
          v1314[1] = v1309;

          sub_1D5EBC314(v1311, v1312, v1313);
          sub_1D5B74328(v1315, v1316);

          *&v1509 = v1311;
          *(&v1509 + 1) = v1312;
          *&v1510 = v1313;
          v1317 = swift_unknownObjectWeakLoadStrong();
          v1318 = *(v1106 + 4);
          v1319 = *(v1106 + 5);
          v1320 = v1489;

          sub_1D67C4728(v1499, &v1509, v1317, v1320, v1318, v1319, v1500, v1501);

          sub_1D5EBC358(v1311, v1312, v1313);

          v138 = v1496;
          v139 = v1497;
          v140 = v1490;
          v142 = v1495;
LABEL_286:
          v12 = v1503;
          v141 = v1498;
LABEL_9:
          if (v12 == v1493)
          {
            goto LABEL_305;
          }

          continue;
        }

        *&v1509 = v676;

        v882 = sub_1D704A8FC(v674, v675, &v1509);

        v883 = swift_unknownObjectWeakLoadStrong();
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v884 = swift_unknownObjectWeakLoadStrong();

        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        swift_weakAssign();
        swift_beginAccess();
        v885 = *(v670 + 80);
        v886 = *(v670 + 88);
        v887 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v888 = swift_allocObject();
        v888[2] = v887;
        v888[3] = v885;
        v888[4] = v886;
        v888[5] = v134;
        v888[6] = v135;
        v889 = &v882[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation];
        swift_beginAccess();
        v890 = *v889;
        v891 = v889[1];
        *v889 = sub_1D61CB158;
        v889[1] = v888;
        sub_1D5B74328(v890, v891);
        v892 = [*&v882[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] accessibilityElements];
        v893 = v150;
        if (v892)
        {
          v894 = v892;
          v895 = sub_1D726267C();
        }

        else
        {
          v895 = MEMORY[0x1E69E7CC0];
        }

        swift_beginAccess();
        sub_1D6987A04(v895);
        swift_endAccess();
        v1459 = v882;
        v1237 = [v1459 view];
        if (v1237)
        {
          v1238 = v1237;
          sub_1D726345C();
          v1239 = v893;
          *&v1505 = v893;
          v1241 = sub_1D6EE8B60(v1240);
          v1243 = v1242;
          type metadata accessor for FormatVisibilityDataValue();
          v1244 = swift_allocObject();
          *(v1244 + 16) = v1239;
          *(v1244 + 24) = v1238;
          v1245 = v1494;
          swift_beginAccess();

          v1246 = v1238;
          v1247 = swift_isUniquelyReferenced_nonNull_native();
          v1512 = *v1245;
          *v1245 = 0x8000000000000000;
          sub_1D6D7A36C(v1244, v1241, v1243, v1247);

          *v1245 = v1512;
          swift_endAccess();

          v1248 = v1468;
          v1249 = v1418;
          sub_1D61CC910(v1468 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem, v1418, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          if ((*v1428)(v1249, 1, v1471) == 1)
          {
            sub_1D61CCAA4(v1249, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          }

          else
          {
            v1250 = v1249;
            v1251 = v1409;
            v1454 = type metadata accessor for FeedItem;
            sub_1D61CCB4C(v1250, v1409, type metadata accessor for FeedItem);
            v1458 = *&v1248[OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_routeOptions];
            v1489 = swift_allocObject();
            swift_weakInit();
            v1252 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1253 = v1456;
            sub_1D61CCB4C(v1251, v1456, type metadata accessor for FeedItem);
            v1254 = v1483;
            v1255 = v1476;
            v1256 = v1500;
            (*(v1483 + 16))(v1476, v1499, v1500);
            v1257 = (*(v1469 + 80) + 56) & ~*(v1469 + 80);
            v1258 = (v1455 + v1257) & 0xFFFFFFFFFFFFFFF8;
            v1259 = (*(v1254 + 80) + v1258 + 8) & ~*(v1254 + 80);
            v1260 = swift_allocObject();
            v1260[2] = *(v1482 + 80);
            v1260[3] = v1256;
            v1261 = v1489;
            v1260[4] = v1501;
            v1260[5] = v1261;
            v1260[6] = v1252;
            sub_1D61CCB4C(v1253, v1260 + v1257, v1454);
            *(v1260 + v1258) = v1458;
            v1262 = v1260 + v1259;
            v1248 = v1468;
            (*(v1254 + 32))(v1262, v1255, v1256);
            v1263 = &v1459[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction];
            swift_beginAccess();
            v1264 = *v1263;
            v1265 = v1263[1];
            *v1263 = sub_1D61CCCF4;
            v1263[1] = v1260;

            sub_1D5B74328(v1264, v1265);
          }

          v132 = v1504;
          v1266 = v1465;
          if (v1465)
          {
            swift_beginAccess();
            v1267 = *(v1266 + 64);
            v1268 = *(v1266 + 80);
          }

          else
          {
            v1267 = 0uLL;
            v1268 = 0uLL;
          }

          v1529[0] = v1267;
          v1529[1] = v1268;
          v1530 = v1266 == 0;
          v1321 = v1500;
          v1322 = v1501;
          sub_1D7138410(v1248, v1470[0], v1529, v1459, *v1402, v1402[1]);
          if (v1464)
          {
            *&v1505 = v1466;
            *(&v1505 + 1) = v1464;
            *&v1506 = v1474;
            v1323 = *(v1470[0] + 4);
            v1324 = *(v1470[0] + 5);

            sub_1D6D270A8(v1323, v1324, v1321, v1322, &v1509);

            v1325 = *(&v1509 + 1);
            v1326 = v1509;
            v1327 = v1510;
            v141 = v1498;
          }

          else
          {
            v1325 = 0;
            v141 = v1498;
            v1327 = v1474;
            v1326 = v1466;
          }

          *&v1509 = v1326;
          *(&v1509 + 1) = v1325;
          *&v1510 = v1327;
          v1328 = swift_unknownObjectWeakLoadStrong();
          v1329 = v1459;
          v1330 = [v1459 view];

          if (v1330)
          {
            sub_1D67C4728(v1499, &v1509, v1328, v1330, *(v1470[0] + 4), *(v1470[0] + 5), v1500, v1501);

            sub_1D5EBC358(v1509, *(&v1509 + 1), v1510);
LABEL_6:

            v138 = v1496;
            v139 = v1497;
            v140 = v1490;
LABEL_7:
            v142 = v1495;
            goto LABEL_8;
          }

LABEL_339:
          __break(1u);
        }

        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
        return;
      case 6uLL:
        v711 = v150 & 0xFFFFFFFFFFFFFFBLL;
        v1474 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v712 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v1531 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1532 = v712;
        v1533 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v713 = *(v1531 + 16);
        v714 = *(v713 + 64);
        v715 = *(v713 + 72);
        v1466 = v1531;
        v716 = *(v1531 + 32);

        v717 = sub_1D61C787C(v714, v715, v716, type metadata accessor for FormatStateView, &unk_1F50F6FD8);
        v1470[0] = v717;
        v719 = v718;
        v1464 = v720;

        sub_1D726345C();
        *&v1505 = v150;
        v722 = sub_1D6EE8B60(v721);
        v724 = v723;
        type metadata accessor for FormatVisibilityDataValue();
        v725 = swift_allocObject();
        v726 = v150;
        v727 = v725;
        *(v725 + 16) = v726;
        *(v725 + 24) = v719;
        v728 = v1494;
        swift_beginAccess();
        v1465 = v711;

        v1458 = v719;
        v729 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v728;
        *v728 = 0x8000000000000000;
        sub_1D6D7A36C(v727, v722, v724, v729);

        *v728 = v1512;
        swift_endAccess();
        v1489 = *&v717[OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView];
        v730 = swift_allocObject();
        v1468 = v730;
        swift_weakInit();
        v1467 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v731 = v1483;
        v732 = v1476;
        v733 = v1500;
        (*(v1483 + 16))(v1476, v1499, v1500);
        v734 = (*(v731 + 80) + 96) & ~*(v731 + 80);
        v735 = (v1481 + v734) & 0xFFFFFFFFFFFFFFF8;
        v736 = (v735 + 15) & 0xFFFFFFFFFFFFFFF8;
        v737 = swift_allocObject();
        *(v737 + 16) = *(v1482 + 80);
        *(v737 + 24) = v733;
        *(v737 + 32) = v1501;
        *(v737 + 40) = v730;
        *(v737 + 48) = v1467;
        v738 = v1532;
        *(v737 + 56) = v1531;
        *(v737 + 72) = v738;
        *(v737 + 88) = v1533;
        (*(v731 + 32))(v737 + v734, v732, v733);
        v739 = v1488;
        *(v737 + v735) = v1488;
        *(v737 + v736) = v1480;
        v740 = (v737 + ((v736 + 15) & 0xFFFFFFFFFFFFFFF8));
        v741 = v1477;
        *v740 = v1475;
        v740[1] = v741;
        v742 = v1470[0];
        v743 = (v1470[0] + OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock);
        v745 = *(v1470[0] + OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock);
        v744 = *(v1470[0] + OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock + 8);
        v746 = v739;
        v747 = v742;

        v748 = v1489;

        sub_1D61CC910(&v1531, &v1509, &qword_1EDF065A8, type metadata accessor for FormatStateViewNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        *v743 = sub_1D61CB0A0;
        v743[1] = v737;
        sub_1D5B74328(v745, v744);

        sub_1D6DE7B38();
        v132 = v1504;

        sub_1D704A77C(v748);
        v749 = v1487;
        swift_beginAccess();
        v750 = v749[6];
        v1489 = v747;
        v751 = swift_isUniquelyReferenced_nonNull_native();
        v749[6] = v750;
        v1459 = v748;
        if ((v751 & 1) == 0)
        {
          v750 = sub_1D6993238(0, *(v750 + 2) + 1, 1, v750);
          v749[6] = v750;
        }

        v753 = *(v750 + 2);
        v752 = *(v750 + 3);
        v754 = v1502;
        if (v753 >= v752 >> 1)
        {
          v750 = sub_1D6993238((v752 > 1), v753 + 1, 1, v750);
        }

        *(v750 + 2) = v753 + 1;
        *&v750[8 * v753 + 32] = v747 | 0x8000000000000000;
        v749[6] = v750;
        swift_endAccess();
        *&v1509 = v1474;
        if (!v1513)
        {
          goto LABEL_334;
        }

        v755 = v754;
        v756 = v1513;
        v757 = v1466;
        v758 = v1489;
        sub_1D69D0E34(&v1509, v1466, v1489, v756);

        v759 = *(&v1531 + 1);
        v1547 = *(&v1531 + 1);
        v138 = v1496;
        if (!*(&v1531 + 1))
        {

          goto LABEL_125;
        }

        v760 = *(v757 + 2);
        v762 = *(v760 + 48);
        v761 = *(v760 + 56);
        v763 = *(v755 + 296);
        v764 = MEMORY[0x1E69E6720];
        sub_1D61CC910(&v1547, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v765 = v1458;
        sub_1D61CC910(&v1547, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v764, sub_1D61BB5EC);

        v766 = [v765 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v767 = swift_allocObject();
        v767[2] = 0;
        v767[3] = 0;
        v767[6] = v761;
        v767[7] = v765;
        v768 = MEMORY[0x1E69E7CC8];
        v767[11] = v759;
        v767[12] = v768;
        v767[4] = v763;
        v767[5] = v762;
        v132 = v1504;
        v767[8] = v766;
        v769 = MEMORY[0x1E69E7CC0];
        v767[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v770 = swift_allocObject();
        *(v770 + 16) = v1478;
        *(v770 + 32) = v766;
        *&v1509 = v770;
        v771 = v766;
        sub_1D69879AC(v769);
        v767[10] = v1509;
        v772 = v1479;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v773);
        if (*((*&v132[v772] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v772] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        v774 = MEMORY[0x1E69E6720];
        v775 = &v1547;
        goto LABEL_123;
      case 7uLL:
        v567 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v568 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1470[0] = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v1474 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v569 = v568[4];
        v570 = v568[5];
        v571 = v568[12];

        v572 = sub_1D61C74E8(v569, v570, v571);
        v574 = v573;
        v1468 = v575;
        sub_1D726345C();
        *&v1505 = v150;
        v577 = sub_1D6EE8B60(v576);
        v578 = v150;
        v580 = v579;
        type metadata accessor for FormatVisibilityDataValue();
        v581 = swift_allocObject();
        *(v581 + 16) = v578;
        *(v581 + 24) = v574;
        v582 = v1494;
        swift_beginAccess();
        v1489 = v567;

        v583 = v574;
        v584 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v582;
        *v582 = 0x8000000000000000;
        sub_1D6D7A36C(v581, v577, v580, v584);

        *v582 = v1512;
        swift_endAccess();
        *&v1509 = v1470[0];
        if (!v1513)
        {
          goto LABEL_333;
        }

        v585 = v1513;
        sub_1D61F9958(&v1509, v568, v572);

        if (!v1474)
        {

          goto LABEL_168;
        }

        v587 = v568[2];
        v586 = v568[3];
        v588 = *(v1502 + 296);
        v589 = v1474;
        swift_retain_n();
        v590 = v583;

        v591 = [v590 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v592 = swift_allocObject();
        v592[2] = 0;
        v592[3] = 0;
        v592[6] = v586;
        v592[7] = v590;
        v593 = MEMORY[0x1E69E7CC8];
        v592[11] = v589;
        v592[12] = v593;
        v592[4] = v588;
        v592[5] = v587;
        v592[8] = v591;
        v594 = MEMORY[0x1E69E7CC0];
        v592[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v595 = swift_allocObject();
        *(v595 + 16) = v1478;
        *(v595 + 32) = v591;
        *&v1509 = v595;
        v596 = v591;
        sub_1D69879AC(v594);
        v592[10] = v1509;
        v132 = v1504;
        v597 = v1479;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v598);
        if (*((*&v132[v597] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v597] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        goto LABEL_124;
      case 8uLL:
        sub_1D61CAFE8(0);
        v860 = v859;
        v861 = swift_projectBox();
        v862 = *(v861 + *(v860 + 48));
        v863 = *(v861 + *(v860 + 64));
        sub_1D5BC885C(v861, v1461, type metadata accessor for FormatAdMetricsData);
        v864 = v862[4];
        v865 = v862[5];
        v866 = v862[12];

        v1474 = sub_1D61C787C(v864, v865, v866, type metadata accessor for FormatAdMetricsView, &unk_1F50F7028);
        v868 = v867;
        v1470[0] = v869;

        sub_1D726345C();
        *&v1505 = v150;
        v871 = sub_1D6EE8B60(v870);
        v873 = v872;
        type metadata accessor for FormatVisibilityDataValue();
        v874 = swift_allocObject();
        *(v874 + 16) = v150;
        *(v874 + 24) = v868;
        v875 = v1494;
        swift_beginAccess();
        v1489 = v150;

        v876 = v868;
        v877 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v875;
        *v875 = 0x8000000000000000;
        sub_1D6D7A36C(v874, v871, v873, v877);

        *v875 = v1512;
        swift_endAccess();
        if (v863)
        {
          swift_beginAccess();
          v878 = v863[8];
          v879 = v863[9];
          v880 = v863[10];
          v881 = v863[11];
        }

        else
        {
          v878 = 0.0;
          v879 = 0.0;
          v880 = 0.0;
          v881 = 0.0;
        }

        v1021 = v1474;
        v1022 = v1461;
        sub_1D6F38DE4(v1499, v862, v1474, v1461, v1500, v1501, v878, v879, v880, v881);

        sub_1D61CCBB4(v1022, type metadata accessor for FormatAdMetricsData);

        v140 = v1490;
        v141 = v1498;
        v142 = v1495;
        v132 = v1504;
        goto LABEL_157;
      case 9uLL:
        sub_1D61CAF6C(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
        v426 = v425;
        v427 = swift_projectBox();
        v428 = *(v427 + *(v426 + 48));
        sub_1D5BC885C(v427, v140, type metadata accessor for FormatMicaData);
        v429 = v428[4];
        v430 = v428[5];
        v431 = v428[13];

        v432 = sub_1D61C787C(v429, v430, v431, MEMORY[0x1E69D87D0], &unk_1F50F7050);
        v434 = v433;
        v1470[0] = v435;

        sub_1D726345C();
        *&v1505 = v150;
        v1474 = sub_1D6EE8B60(v436);
        v438 = v437;
        type metadata accessor for FormatVisibilityDataValue();
        v439 = v150;
        v440 = swift_allocObject();
        *(v440 + 16) = v439;
        *(v440 + 24) = v434;
        v441 = v1494;
        swift_beginAccess();

        v442 = v434;
        v443 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v441;
        *v441 = 0x8000000000000000;
        sub_1D6D7A36C(v440, v1474, v438, v443);

        *v441 = v1512;
        swift_endAccess();
        if (!v1513)
        {
          goto LABEL_332;
        }

        v444 = v1513;
        FormatMicaNodeRenderer.render<A>(context:layoutAttributes:view:micaData:token:traitCollection:)(v1499, v428, v432, v140, v444, v1488, v1500, v1501);

        sub_1D61CCBB4(v140, type metadata accessor for FormatMicaData);

        v141 = v1498;
        v142 = v1495;
        v132 = v1504;
LABEL_157:
        v12 = v1503;
        goto LABEL_158;
      case 0xAuLL:
        v800 = v150 & 0xFFFFFFFFFFFFFFBLL;
        v801 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1470[0] = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v1468 = v801;
        v802 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1467 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        LODWORD(v1466) = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v803 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v1536 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
        v804 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x48);
        v1534 = v803;
        v1535 = v804;
        v805 = v803;
        v806 = *(v803 + 32);
        v807 = *(v803 + 40);
        v808 = *(v803 + 96);

        v1474 = sub_1D61C787C(v806, v807, v808, type metadata accessor for FormatLayeredMediaView, &unk_1F50F7078);
        v810 = v809;
        v812 = v811;
        sub_1D726345C();
        *&v1505 = v150;
        v814 = v150;
        v815 = sub_1D6EE8B60(v813);
        v817 = v816;
        type metadata accessor for FormatVisibilityDataValue();
        v818 = swift_allocObject();
        *(v818 + 16) = v814;
        *(v818 + 24) = v810;
        v819 = v1494;
        swift_beginAccess();
        v1465 = v800;

        v820 = v810;
        v821 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v819;
        *v819 = 0x8000000000000000;
        sub_1D6D7A36C(v818, v815, v817, v821);

        *v819 = v1512;
        swift_endAccess();
        *&v1509 = v1470[0];
        *(&v1509 + 1) = v1468;
        *&v1510 = v802;
        *(&v1510 + 1) = v1467;
        LOBYTE(v1511[0]) = v1466;
        if (!v1513)
        {
          goto LABEL_331;
        }

        v822 = v1513;
        v1470[0] = v805;
        v823 = v1500;
        v824 = v1501;
        sub_1D6BB42FC(v805, v1474, v812, &v1509, v1488, v1500, v1501);

        v825 = swift_allocObject();
        swift_weakInit();
        v1489 = v812;
        v826 = v1483;
        v827 = v1438;
        (*(v1483 + 16))(v1438, v1499, v823);
        v828 = (*(v826 + 80) + 88) & ~*(v826 + 80);
        v829 = (v1481 + v828) & 0xFFFFFFFFFFFFFFF8;
        v830 = swift_allocObject();
        *(v830 + 16) = *(v1482 + 80);
        *(v830 + 24) = v823;
        *(v830 + 32) = v824;
        *(v830 + 40) = v825;
        v831 = v1535;
        *(v830 + 48) = v1534;
        *(v830 + 64) = v831;
        *(v830 + 80) = v1536;
        v832 = *(v826 + 32);
        v833 = v1489;
        v832(v830 + v828, v827, v823);
        v834 = (v830 + v829);
        v835 = v1474;
        *v834 = v1474;
        v834[1] = v820;
        v834[2] = v833;
        v836 = swift_allocObject();
        *(v836 + 16) = sub_1D61CAF54;
        *(v836 + 24) = v830;
        v837 = v1485;
        swift_beginAccess();
        v838 = *v837;
        v839 = v820;

        sub_1D61CC910(&v1534, &v1509, &unk_1EC884E88, type metadata accessor for FormatLayeredMediaNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v572 = v835;

        v840 = swift_isUniquelyReferenced_nonNull_native();
        *v837 = v838;
        if ((v840 & 1) == 0)
        {
          v838 = sub_1D69931DC(0, v838[2] + 1, 1, v838);
          *v1485 = v838;
        }

        v842 = v838[2];
        v841 = v838[3];
        v843 = v1470[0];
        if (v842 >= v841 >> 1)
        {
          v838 = sub_1D69931DC((v841 > 1), v842 + 1, 1, v838);
        }

        v838[2] = v842 + 1;
        v844 = &v838[2 * v842];
        v844[4] = sub_1D61CCD0C;
        v844[5] = v836;
        *v1485 = v838;
        swift_endAccess();

        v845 = *(&v1534 + 1);
        v1546 = *(&v1534 + 1);
        if (!*(&v1534 + 1))
        {

LABEL_168:
          goto LABEL_174;
        }

        v1474 = v572;
        v846 = v843[3];
        v1468 = v843[2];
        v847 = *(v1502 + 296);
        v848 = MEMORY[0x1E69E6720];
        sub_1D61CC910(&v1546, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v849 = v839;
        sub_1D61CC910(&v1546, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v848, sub_1D61BB5EC);

        v850 = [v849 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v851 = swift_allocObject();
        v851[2] = 0;
        v851[3] = 0;
        v851[6] = v846;
        v851[7] = v849;
        v852 = MEMORY[0x1E69E7CC8];
        v851[11] = v845;
        v851[12] = v852;
        v853 = v1468;
        v851[4] = v847;
        v851[5] = v853;
        v851[8] = v850;
        v854 = MEMORY[0x1E69E7CC0];
        v851[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v855 = swift_allocObject();
        *(v855 + 16) = v1478;
        *(v855 + 32) = v850;
        *&v1509 = v855;
        v856 = v850;
        sub_1D69879AC(v854);
        v851[10] = v1509;
        v132 = v1504;
        v857 = v1479;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v858);
        if (*((*&v132[v857] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v857] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        v774 = MEMORY[0x1E69E6720];
        v775 = &v1546;
LABEL_123:
        sub_1D61CCAA4(v775, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v774, sub_1D61BB5EC);

LABEL_124:
        v138 = v1496;
LABEL_125:
        v139 = v1497;
        v140 = v1490;
        v141 = v1498;
        goto LABEL_7;
      case 0xBuLL:
        sub_1D61CC870(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes);
        v296 = v139;
        v298 = v297;
        v299 = swift_projectBox();
        v300 = v299 + *(v298 + 48);
        v301 = *(v300 + 32);
        v302 = *(v300 + 16);
        v1537 = *v300;
        v1538 = v302;
        v1539 = v301;
        sub_1D5BC885C(v299, v296, type metadata accessor for FormatVideoData);
        v303 = v1537;
        v304 = *(v1537 + 32);
        v305 = *(v1537 + 40);
        v306 = *(v1537 + 96);

        sub_1D61CC910(&v1537, &v1509, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v307 = sub_1D61C787C(v304, v305, v306, type metadata accessor for FormatVideoView, &unk_1F50F70A0);
        v309 = v308;
        v311 = v310;

        sub_1D726345C();
        *&v1505 = v150;
        v313 = sub_1D6EE8B60(v312);
        v315 = v314;
        type metadata accessor for FormatVisibilityDataValue();
        v316 = v150;
        v317 = swift_allocObject();
        *(v317 + 16) = v316;
        *(v317 + 24) = v309;
        v318 = v1494;
        swift_beginAccess();
        v1489 = v316;

        v1474 = v309;
        v319 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v318;
        *v318 = 0x8000000000000000;
        sub_1D6D7A36C(v317, v313, v315, v319);

        *v318 = v1512;
        swift_endAccess();
        if (!v1513)
        {
          goto LABEL_330;
        }

        v320 = v1513;
        v1470[0] = v303;
        v1468 = v307;
        v321 = v311;
        v322 = v1500;
        v323 = v1501;
        sub_1D5F12524(v303, v307, v311, v1497, v320, v1488, v1500, v1501);

        v324 = swift_allocObject();
        swift_weakInit();
        v325 = v1483;
        v326 = v1439;
        (*(v1483 + 16))(v1439, v1499, v322);
        v327 = (*(v325 + 80) + 88) & ~*(v325 + 80);
        v328 = (v1481 + v327) & 0xFFFFFFFFFFFFFFF8;
        v329 = swift_allocObject();
        *(v329 + 16) = *(v1482 + 80);
        *(v329 + 24) = v322;
        *(v329 + 32) = v323;
        *(v329 + 40) = v324;
        v330 = v1538;
        *(v329 + 48) = v1537;
        *(v329 + 64) = v330;
        *(v329 + 80) = v1539;
        (*(v325 + 32))(v329 + v327, v326, v322);
        v331 = (v329 + v328);
        v332 = v1468;
        v333 = v1474;
        *v331 = v1468;
        v331[1] = v333;
        v331[2] = v321;
        v334 = swift_allocObject();
        *(v334 + 16) = sub_1D61CAE9C;
        *(v334 + 24) = v329;
        v335 = v1485;
        swift_beginAccess();
        v336 = *v335;
        sub_1D61CC910(&v1537, &v1509, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v337 = v333;

        v338 = v332;

        v339 = swift_isUniquelyReferenced_nonNull_native();
        *v335 = v336;
        v1474 = v338;
        if ((v339 & 1) == 0)
        {
          v336 = sub_1D69931DC(0, v336[2] + 1, 1, v336);
          *v1485 = v336;
        }

        v341 = v336[2];
        v340 = v336[3];
        v342 = v1470[0];
        if (v341 >= v340 >> 1)
        {
          v336 = sub_1D69931DC((v340 > 1), v341 + 1, 1, v336);
        }

        v336[2] = v341 + 1;
        v343 = &v336[2 * v341];
        v343[4] = sub_1D61CCD0C;
        v343[5] = v334;
        *v1485 = v336;
        swift_endAccess();

        v344 = *(&v1537 + 1);
        v1545 = *(&v1537 + 1);
        if (!*(&v1537 + 1))
        {

          sub_1D61CCAA4(&v1537, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
          v139 = v1497;
          sub_1D61CCBB4(v1497, type metadata accessor for FormatVideoData);

          v138 = v1496;
          goto LABEL_280;
        }

        v1468 = v321;
        v345 = v342[3];
        v1467 = v342[2];
        v346 = *(v1502 + 296);
        v347 = MEMORY[0x1E69E6720];
        sub_1D61CC910(&v1545, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v348 = v337;
        sub_1D61CC910(&v1545, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v347, sub_1D61BB5EC);

        v349 = [v348 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v350 = swift_allocObject();
        v350[2] = 0;
        v350[3] = 0;
        v350[6] = v345;
        v350[7] = v348;
        v351 = MEMORY[0x1E69E7CC8];
        v350[11] = v344;
        v350[12] = v351;
        v352 = v1467;
        v350[4] = v346;
        v350[5] = v352;
        v350[8] = v349;
        v353 = MEMORY[0x1E69E7CC0];
        v350[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v354 = swift_allocObject();
        *(v354 + 16) = v1478;
        *(v354 + 32) = v349;
        *&v1509 = v354;
        v355 = v349;
        sub_1D69879AC(v353);
        v350[10] = v1509;
        v132 = v1504;
        v356 = v1479;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v357);
        if (*((*&v132[v356] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v356] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        sub_1D61CCAA4(&v1545, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);

        sub_1D61CCAA4(&v1537, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v139 = v1497;
        sub_1D61CCBB4(v1497, type metadata accessor for FormatVideoData);

        v138 = v1496;
        goto LABEL_43;
      case 0xCuLL:
        v384 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1509 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v1510 = v384;
        v1511[0] = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        *(v1511 + 9) = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v1542 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
        v385 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
        v1540 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v1541 = v385;
        v386 = v1540;
        v387 = *(v1540 + 32);
        v388 = *(v1540 + 40);
        v389 = *(v1540 + 96);

        v390 = sub_1D61C787C(v387, v388, v389, type metadata accessor for IssueCoverView, &unk_1F50F70C8);
        v391 = v150;
        v393 = v392;
        v395 = v394;
        sub_1D726345C();
        v1512 = v391;
        v1474 = sub_1D6EE8B60(v396);
        v398 = v397;
        type metadata accessor for FormatVisibilityDataValue();
        v399 = swift_allocObject();
        *(v399 + 16) = v391;
        *(v399 + 24) = v393;
        v400 = v1494;
        swift_beginAccess();

        v1489 = v393;
        v401 = swift_isUniquelyReferenced_nonNull_native();
        v1508 = *v400;
        *v400 = 0x8000000000000000;
        sub_1D6D7A36C(v399, v1474, v398, v401);

        *v400 = v1508;
        swift_endAccess();
        v1505 = v1509;
        v1506 = v1510;
        v1507[0] = v1511[0];
        *(v1507 + 9) = *(v1511 + 9);
        if (!v1513)
        {
          goto LABEL_329;
        }

        v402 = v1513;
        v1468 = v390;
        v403 = v390;
        v1470[0] = v395;
        v404 = v1500;
        v405 = v1501;
        sub_1D619C8A4(v386, v403, v395, &v1505, v1488, v1500, v1501);

        v406 = swift_allocObject();
        swift_weakInit();
        v407 = v1483;
        v408 = v1440;
        (*(v1483 + 16))(v1440, v1499, v404);
        v409 = (*(v407 + 80) + 88) & ~*(v407 + 80);
        v410 = (v1481 + v409) & 0xFFFFFFFFFFFFFFF8;
        v411 = swift_allocObject();
        *(v411 + 16) = *(v1482 + 80);
        *(v411 + 24) = v404;
        *(v411 + 32) = v405;
        *(v411 + 40) = v406;
        v412 = v1541;
        *(v411 + 48) = v1540;
        *(v411 + 64) = v412;
        *(v411 + 80) = v1542;
        (*(v407 + 32))(v411 + v409, v408, v404);
        v413 = v411 + v410;
        v414 = v1468;
        v415 = v1489;
        *v413 = v1468;
        *(v413 + 8) = v415;
        *(v413 + 16) = v1470[0];
        v416 = swift_allocObject();
        *(v416 + 16) = sub_1D61CAE84;
        *(v416 + 24) = v411;
        v417 = v1485;
        swift_beginAccess();
        v418 = *v417;
        v419 = v415;
        v1489 = v406;

        sub_1D61CC910(&v1540, &v1505, &unk_1EC884E70, type metadata accessor for FormatIssueCoverNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1474 = v414;

        v420 = swift_isUniquelyReferenced_nonNull_native();
        *v417 = v418;
        v421 = v419;
        if ((v420 & 1) == 0)
        {
          v418 = sub_1D69931DC(0, v418[2] + 1, 1, v418);
          *v1485 = v418;
        }

        v12 = v1503;
        v423 = v418[2];
        v422 = v418[3];
        if (v423 >= v422 >> 1)
        {
          v418 = sub_1D69931DC((v422 > 1), v423 + 1, 1, v418);
        }

        v418[2] = v423 + 1;
        v424 = &v418[2 * v423];
        v424[4] = sub_1D61365E8;
        v424[5] = v416;
        *v1485 = v418;
        swift_endAccess();

        v138 = v1496;
        v139 = v1497;
        v140 = v1490;
        v141 = v1498;
        v142 = v1495;
        v132 = v1504;
        goto LABEL_9;
      case 0xDuLL:
        sub_1D61CAF6C(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
        v685 = v684;
        v686 = swift_projectBox();
        v687 = *(v686 + *(v685 + 48));
        sub_1D5BC885C(v686, v1462, type metadata accessor for FormatShareAttributionData);
        v688 = v687[4];
        v689 = v687[5];
        v690 = v687[14];

        v691 = sub_1D61C74E8(v688, v689, v690);
        v693 = v692;
        v1474 = v694;

        sub_1D726345C();
        *&v1505 = v150;
        v696 = sub_1D6EE8B60(v695);
        v698 = v697;
        type metadata accessor for FormatVisibilityDataValue();
        v699 = v150;
        v700 = swift_allocObject();
        *(v700 + 16) = v699;
        *(v700 + 24) = v693;
        v701 = v1494;
        swift_beginAccess();
        v1489 = v699;

        v702 = v693;
        v703 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v701;
        *v701 = 0x8000000000000000;
        sub_1D6D7A36C(v700, v696, v698, v703);

        *v701 = v1512;
        swift_endAccess();
        sub_1D7222C14(v687, v691);
        *(&v1510 + 1) = sub_1D5E2B010();
        *&v1509 = v691;
        sub_1D5B76B10(&v1509, &v1505);
        v704 = v1487;
        swift_beginAccess();
        v705 = v704[7];
        v706 = v691;
        v707 = swift_isUniquelyReferenced_nonNull_native();
        v704[7] = v705;
        if ((v707 & 1) == 0)
        {
          v705 = sub_1D69917E4(0, *(v705 + 2) + 1, 1, v705);
          v1487[7] = v705;
        }

        v709 = *(v705 + 2);
        v708 = *(v705 + 3);
        v710 = v1498;
        v132 = v1504;
        if (v709 >= v708 >> 1)
        {
          v705 = sub_1D69917E4((v708 > 1), v709 + 1, 1, v705);
        }

        *(v705 + 2) = v709 + 1;
        sub_1D5B7C390(&v1505, &v705[32 * v709 + 32]);
        v1487[7] = v705;
        swift_endAccess();

        sub_1D61CCBB4(v1462, type metadata accessor for FormatShareAttributionData);
        __swift_destroy_boxed_opaque_existential_1(&v1509);

        v138 = v1496;
        v139 = v1497;
        v140 = v1490;
        v142 = v1495;
        v12 = v1503;
        v141 = v710;
        goto LABEL_9;
      case 0xEuLL:
        sub_1D61CC870(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v249 = v248;
        v250 = swift_projectBox();
        v251 = v250 + *(v249 + 48);
        v252 = v138;
        v253 = *v251;
        v254 = *(v251 + 8);
        v256 = *(v251 + 16);
        v255 = *(v251 + 24);
        v257 = *(v251 + 32);
        sub_1D5BC885C(v250, v252, type metadata accessor for FormatVideoPlayerData);
        v258 = v253[4];
        v259 = v253[5];
        *&v1509 = v253[12];
        v1474 = v254;

        v1470[0] = v253;

        v1466 = v256;
        v1467 = v255;
        v1468 = v257;
        sub_1D5EBC314(v256, v255, v257);

        v260 = sub_1D704730C(v258, v259, &v1509);

        v261 = v260;
        v262 = [v261 view];
        if (!v262)
        {
          goto LABEL_328;
        }

        v263 = v262;
        sub_1D726345C();
        *&v1505 = v150;
        v265 = sub_1D6EE8B60(v264);
        v267 = v266;
        type metadata accessor for FormatVisibilityDataValue();
        v268 = swift_allocObject();
        *(v268 + 16) = v150;
        *(v268 + 24) = v263;
        v269 = v1494;
        swift_beginAccess();
        v1489 = v150;

        v270 = v263;
        v271 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v269;
        *v269 = 0x8000000000000000;
        sub_1D6D7A36C(v268, v265, v267, v271);

        *v269 = v1512;
        swift_endAccess();

        v272 = v261;
        v273 = [v261 view];
        sub_1D61BB5EC(0, &qword_1EC884E68, sub_1D5E2B010, MEMORY[0x1E69E6720]);
        *(&v1510 + 1) = v274;
        *&v1509 = v273;
        sub_1D5B76B10(&v1509, &v1505);
        v275 = v1487;
        swift_beginAccess();
        v276 = v275[7];
        v277 = swift_isUniquelyReferenced_nonNull_native();
        v275[7] = v276;
        if ((v277 & 1) == 0)
        {
          v276 = sub_1D69917E4(0, *(v276 + 2) + 1, 1, v276);
          v275[7] = v276;
        }

        v278 = v1474;
        v279 = v1470[0];
        v281 = *(v276 + 2);
        v280 = *(v276 + 3);
        v138 = v1496;
        if (v281 >= v280 >> 1)
        {
          v276 = sub_1D69917E4((v280 > 1), v281 + 1, 1, v276);
        }

        *(v276 + 2) = v281 + 1;
        sub_1D5B7C390(&v1505, &v276[32 * v281 + 32]);
        v275[7] = v276;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v1509);
        if (!v1513)
        {
          goto LABEL_327;
        }

        v282 = v1513;
        sub_1D70F19BC(v1499, v279, v272, v138, v282, v1488, v1500, v1501);

        if (!v278)
        {

          sub_1D5EBC358(v1466, v1467, v1468);
          sub_1D61CCBB4(v138, type metadata accessor for FormatVideoPlayerData);

LABEL_279:
          v139 = v1497;
LABEL_280:
          v140 = v1490;
          v141 = v1498;
          goto LABEL_281;
        }

        v284 = v279[2];
        v283 = v279[3];

        v285 = [v272 view];

        if (!v285)
        {
          goto LABEL_338;
        }

        v286 = *(v1502 + 296);

        v287 = [v285 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v288 = swift_allocObject();
        v288[2] = 0;
        v288[3] = 0;
        v288[6] = v283;
        v288[7] = v285;
        v289 = MEMORY[0x1E69E7CC8];
        v288[11] = v278;
        v288[12] = v289;
        v288[4] = v286;
        v288[5] = v284;
        v288[8] = v287;
        v290 = MEMORY[0x1E69E7CC0];
        v288[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v291 = swift_allocObject();
        *(v291 + 16) = v1478;
        *(v291 + 32) = v287;
        *&v1509 = v291;
        v292 = v287;
        sub_1D69879AC(v290);
        v288[10] = v1509;
        v293 = v1504;
        v294 = v1479;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v295);
        if (*((*&v293[v294] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v293[v294] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        sub_1D5EBC358(v1466, v1467, v1468);

        v138 = v1496;
        sub_1D61CCBB4(v1496, type metadata accessor for FormatVideoPlayerData);

        v139 = v1497;
        v140 = v1490;
        v142 = v1495;
        v132 = v293;
        v141 = v1498;
        goto LABEL_8;
      case 0xFuLL:
        v514 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v515 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1474 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v516 = *(v515 + 152) >> 6;
        v518 = *(v515 + 32);
        v517 = *(v515 + 40);
        v519 = *(v515 + 104);

        if (v516)
        {
          if (v516 == 1)
          {
            v520 = sub_1D61C787C(v518, v517, v519, type metadata accessor for FormatProgressCircleView, &unk_1F50F7168);
            v522 = v521;
            v524 = v523;
            sub_1D726345C();
            *&v1505 = v150;
            v1470[0] = sub_1D6EE8B60(v525);
            v527 = v526;
            type metadata accessor for FormatVisibilityDataValue();
            v528 = swift_allocObject();
            v529 = v150;
            v530 = v528;
            *(v528 + 16) = v529;
            *(v528 + 24) = v522;
            v531 = v1494;
            swift_beginAccess();

            v532 = v522;
            v533 = swift_isUniquelyReferenced_nonNull_native();
            v1512 = *v531;
            *v531 = 0x8000000000000000;
            sub_1D6D7A36C(v530, v1470[0], v527, v533);

            *v531 = v1512;
            swift_endAccess();
            LODWORD(v1509) = v514;
            *(&v1509 + 1) = v1474;
            *&v1505 = v520 | 0x8000000000000000;
            v534 = v1513;
            if (!v1513)
            {
              goto LABEL_342;
            }
          }

          else
          {
            v520 = sub_1D61C787C(v518, v517, v519, type metadata accessor for FormatProgressBarView, &unk_1F50F7118);
            v1041 = v1040;
            v524 = v1042;
            sub_1D726345C();
            *&v1505 = v150;
            v1470[0] = sub_1D6EE8B60(v1043);
            v1045 = v1044;
            type metadata accessor for FormatVisibilityDataValue();
            v1046 = swift_allocObject();
            v1047 = v150;
            v1048 = v1046;
            *(v1046 + 16) = v1047;
            *(v1046 + 24) = v1041;
            v1049 = v1494;
            swift_beginAccess();

            v532 = v1041;
            v1050 = swift_isUniquelyReferenced_nonNull_native();
            v1512 = *v1049;
            *v1049 = 0x8000000000000000;
            sub_1D6D7A36C(v1048, v1470[0], v1045, v1050);

            *v1049 = v1512;
            swift_endAccess();
            LODWORD(v1509) = v514;
            *(&v1509 + 1) = v1474;
            *&v1505 = v520;
            v534 = v1513;
            if (!v1513)
            {
              goto LABEL_341;
            }
          }
        }

        else
        {
          v520 = sub_1D61C787C(v518, v517, v519, type metadata accessor for FormatProgressPieView, &unk_1F50F7140);
          v1030 = v1029;
          v524 = v1031;
          sub_1D726345C();
          *&v1505 = v150;
          v1470[0] = sub_1D6EE8B60(v1032);
          v1034 = v1033;
          type metadata accessor for FormatVisibilityDataValue();
          v1035 = swift_allocObject();
          v1036 = v150;
          v1037 = v1035;
          *(v1035 + 16) = v1036;
          *(v1035 + 24) = v1030;
          v1038 = v1494;
          swift_beginAccess();

          v532 = v1030;
          v1039 = swift_isUniquelyReferenced_nonNull_native();
          v1512 = *v1038;
          *v1038 = 0x8000000000000000;
          sub_1D6D7A36C(v1037, v1470[0], v1034, v1039);

          *v1038 = v1512;
          swift_endAccess();
          LODWORD(v1509) = v514;
          *(&v1509 + 1) = v1474;
          *&v1505 = v520 | 0x4000000000000000;
          v534 = v1513;
          if (!v1513)
          {
            goto LABEL_343;
          }
        }

        v1051 = v520;
        v1052 = v534;
        sub_1D5E43FD8(&v1509, v515, &v1505, v524, v1052);

        v1053 = v1505;

LABEL_174:
        v138 = v1496;
        v139 = v1497;
        v140 = v1490;
        v141 = v1498;
        v142 = v1495;
        v132 = v1504;
        goto LABEL_8;
      case 0x10uLL:
        sub_1D61CAF6C(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
        v209 = v208;
        v210 = swift_projectBox();
        v211 = *(v210 + *(v209 + 48));
        sub_1D5BC885C(v210, v1472, type metadata accessor for FormatItemNodeData);
        v212 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
        v213 = *(v211 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
        v214 = *(v213 + 64);
        v215 = *(v213 + 72);
        v216 = v211[5];

        v217 = sub_1D61C711C(v214, v215, v216);
        v219 = v218;
        v1467 = v220;

        sub_1D726345C();
        *&v1505 = v150;
        v222 = sub_1D6EE8B60(v221);
        v224 = v223;
        type metadata accessor for FormatVisibilityDataValue();
        v225 = swift_allocObject();
        *(v225 + 16) = v150;
        *(v225 + 24) = v219;
        v226 = v150;
        v227 = v1494;
        swift_beginAccess();
        v1489 = v226;

        v1466 = v219;
        v228 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v227;
        *v227 = 0x8000000000000000;
        sub_1D6D7A36C(v225, v222, v224, v228);

        *v227 = v1512;
        swift_endAccess();
        swift_beginAccess();
        v229 = v217;
        sub_1D726344C();

        v230 = *(v211 + v212);
        v232 = v230[8];
        v231 = v230[9];
        type metadata accessor for FormatAccessibilityRenderer();
        v233 = swift_allocObject();
        v234 = MEMORY[0x1E69E7CC0];
        *(v233 + 48) = MEMORY[0x1E69E7CC0];
        *(v233 + 56) = v234;
        *(v233 + 96) = 0;
        *v1470 = *(v1502 + 272);
        swift_unknownObjectWeakInit();
        *(v233 + 16) = v232;
        *(v233 + 24) = v231;
        *(v233 + 104) = 0;
        *(v233 + 96) = &off_1F51E2E28;
        swift_unknownObjectWeakAssign();
        *(v233 + 32) = *(v230 + *(*v230 + 144));
        *(v233 + 72) = *v1470;
        *(v233 + 64) = v234;
        v235 = v230[13];
        v1474 = v233;
        *(v233 + 40) = v235;
        v1468 = v211;
        v236 = *(v211 + v212);
        v237 = (v236 + *(v1463 + 32) + *(*v236 + 136));
        v239 = *v237;
        v238 = v237[1];
        v240 = v237[2];
        if (v238)
        {
          *&v1505 = *v237;
          *(&v1505 + 1) = v238;
          *&v1506 = v240;
          v242 = v236[8];
          v241 = v236[9];

          swift_unknownObjectRetain();

          sub_1D5EBC314(v239, v238, v240);

          v243 = v1499;
          v244 = v242;
          v245 = v1500;
          v246 = v1501;
          sub_1D6D270A8(v244, v241, v1500, v1501, &v1509);

          v247 = *(&v1509 + 1);
          v239 = v1509;
          v240 = v1510;
        }

        else
        {

          swift_unknownObjectRetain();

          v247 = 0;
          v243 = v1499;
          v246 = v1501;
          v245 = v1500;
        }

        v896 = v1441;
        *&v1509 = v239;
        *(&v1509 + 1) = v247;
        *&v1510 = v240;
        sub_1D61BB650(v243, v236, v229, v1488, &v1509, v1480, v1474, v1475, v1477, v245, v246);
        sub_1D5EBC358(v1509, *(&v1509 + 1), v1510);
        *(&v1510 + 1) = type metadata accessor for FormatLayoutView(0);
        *&v1509 = v229;
        sub_1D5B76B10(&v1509, &v1505);
        v897 = v1487;
        swift_beginAccess();
        v898 = v897[7];
        v899 = v229;
        v900 = swift_isUniquelyReferenced_nonNull_native();
        v897[7] = v898;
        if ((v900 & 1) == 0)
        {
          v898 = sub_1D69917E4(0, *(v898 + 2) + 1, 1, v898);
          v897[7] = v898;
        }

        v132 = v1504;
        v902 = *(v898 + 2);
        v901 = *(v898 + 3);
        if (v902 >= v901 >> 1)
        {
          v898 = sub_1D69917E4((v901 > 1), v902 + 1, 1, v898);
        }

        *(v898 + 2) = v902 + 1;
        sub_1D5B7C390(&v1505, &v898[32 * v902 + 32]);
        v1487[7] = v898;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v1509);
        sub_1D704A77C(v899);
        v903 = v1472;
        v904 = v1457;
        sub_1D5BC885C(v1472, v1457, type metadata accessor for FeedItem);
        v905 = *v1432;
        (*v1432)(v904, 0, 1, v1471);
        v906 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
        swift_beginAccess();
        v1470[0] = v899;
        sub_1D61CAC28(v904, &v899[v906]);
        swift_endAccess();
        v907 = v903 + *(v1463 + 24);
        v908 = *v907;
        if (*(v907 + 8) <= 1u)
        {
          if (*(v907 + 8))
          {
            v1054 = swift_allocObject();
            *(v1054 + 16) = v1475;
            *(v1054 + 24) = v1477;
            *(v1054 + 32) = v908;
            v1055 = v1470[0];

            sub_1D725A7EC();
            v1056 = v1509;
            v1057 = sub_1D725F64C();

            v1058 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1059 = swift_allocObject();
            v1059[2] = v1058;
            v1059[3] = sub_1D61CACBC;
            v1059[4] = v1054;

            v1060 = *&v1055[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
            v138 = v1496;
            v139 = v1497;
            if (v1060)
            {
              v1061 = v1060;
              [v1061 setEnabled_];
            }

            else
            {
            }

            sub_1D61CCBB4(v1472, type metadata accessor for FormatItemNodeData);

            v140 = v1490;
            v142 = v1495;
          }

          else
          {
            v909 = swift_allocObject();
            swift_weakInit();
            v910 = swift_allocObject();
            *(v910 + 16) = v909;
            *(v910 + 24) = v908;
            v911 = v1470[0];
            sub_1D61CA640(v908, 0);
            sub_1D61CA640(v908, 0);

            sub_1D725A7EC();
            v912 = v1509;
            v913 = sub_1D725F64C();

            v914 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v915 = swift_allocObject();
            v915[2] = v914;
            v915[3] = sub_1D61CACDC;
            v915[4] = v910;

            v916 = *&v911[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
            v138 = v1496;
            v139 = v1497;
            if (v916)
            {
              v917 = v916;
              [v917 setEnabled_];
            }

            else
            {
            }

            sub_1D61CA538(v908, 0);
            sub_1D61CCBB4(v1472, type metadata accessor for FormatItemNodeData);

            v140 = v1490;
            v142 = v1495;
            v132 = v1504;
          }

          goto LABEL_286;
        }

        if (*(v907 + 8) != 2 && ((v908 - 1) < 2 || v908))
        {
          v1062 = v1470[0];
          sub_1D725A7CC();
          v1063 = v1509;
          if (v1509)
          {
            v1064 = sub_1D725F64C();
          }

          v1065 = *&v1062[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
          v138 = v1496;
          v139 = v1497;
          v140 = v1490;
          v142 = v1495;
          if (v1065)
          {
            [v1065 setEnabled_];
          }

          sub_1D61CCBB4(v1472, type metadata accessor for FormatItemNodeData);

          goto LABEL_286;
        }

        v918 = *v1486;
        (*v1486)(v1411);
        v919 = type metadata accessor for FormatItemNodeLayoutContext(0);
        v920 = swift_dynamicCast();
        v921 = *(*(v919 - 8) + 56);
        if (v920)
        {
          v921(v896, 0, 1, v919);
          v922 = v896 + *(v919 + 28);
          v923 = v1427;
          sub_1D5BC885C(v922, v1427, type metadata accessor for FeedItem);
          sub_1D61CCBB4(v896, type metadata accessor for FormatItemNodeLayoutContext);
          v924 = 0;
        }

        else
        {
          v924 = 1;
          v921(v896, 1, 1, v919);
          sub_1D61CCAA4(v896, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v923 = v1427;
        }

        v905(v923, v924, 1, v1471);
        v1331 = MEMORY[0x1E69E7CD0];
        if (*(v907 + 8) == 2)
        {
        }

        v1458 = v1331;
        v1459 = swift_allocObject();
        swift_weakInit();
        v1465 = type metadata accessor for FeedItem;
        v1464 = MEMORY[0x1E69E6720];
        sub_1D61CC910(v923, v1457, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v1332 = v1414;
        sub_1D5BC885C(v1472, v1414, type metadata accessor for FormatItemNodeData);
        v1333 = v1500;
        (v918)(v1476, v1499, v1500);
        v1334 = (*(v1413 + 80) + 48) & ~*(v1413 + 80);
        v1335 = (v1412 + *(v1415 + 80) + v1334) & ~*(v1415 + 80);
        v1336 = (v1398 + v1335) & 0xFFFFFFFFFFFFFFF8;
        v1337 = v1483;
        v1338 = (*(v1483 + 80) + v1336 + 8) & ~*(v1483 + 80);
        v1339 = swift_allocObject();
        *(v1339 + 2) = *(v1482 + 80);
        *(v1339 + 3) = v1333;
        v1340 = v1459;
        *(v1339 + 4) = v1501;
        *(v1339 + 5) = v1340;
        sub_1D61CA3F8(v1457, &v1339[v1334]);
        sub_1D61CCB4C(v1332, &v1339[v1335], type metadata accessor for FormatItemNodeData);
        *&v1339[v1336] = v1458;
        (*(v1337 + 32))(&v1339[v1338], v1476, v1333);

        v1341 = v1470[0];
        sub_1D7047188(sub_1D61CACE4, v1339);

        sub_1D61CCAA4(v1427, qword_1EDF34EF0, v1465, v1464, sub_1D61BB5EC);
        sub_1D61CCBB4(v1472, type metadata accessor for FormatItemNodeData);

        goto LABEL_278;
      case 0x11uLL:
        v661 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v662 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1474 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v663 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v664 = v662[4];
        v665 = v662[5];
        *&v1509 = v662[20];

        v666 = sub_1D704AB00(v664, v665, &v1509);

        swift_beginAccess();
        swift_weakAssign();
        v667 = [v666 accessibilityElements];
        v1468 = v662;
        v1470[0] = v663;
        if (v667)
        {
          v668 = v667;
          v669 = sub_1D726267C();
        }

        else
        {
          v669 = MEMORY[0x1E69E7CC0];
        }

        swift_beginAccess();
        sub_1D6987A04(v669);
        swift_endAccess();
        v982 = [v666 view];
        if (!v982)
        {
          goto LABEL_326;
        }

        v983 = v982;
        sub_1D726345C();
        *&v1505 = v150;
        v985 = v150;
        v986 = sub_1D6EE8B60(v984);
        v988 = v987;
        type metadata accessor for FormatVisibilityDataValue();
        v989 = swift_allocObject();
        *(v989 + 16) = v985;
        *(v989 + 24) = v983;
        v990 = v1494;
        swift_beginAccess();
        v1467 = v661;

        v991 = v983;
        v992 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v990;
        *v990 = 0x8000000000000000;
        sub_1D6D7A36C(v989, v986, v988, v992);

        *v990 = v1512;
        swift_endAccess();

        v993 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v994 = &v666[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow];
        swift_beginAccess();
        v995 = *v994;
        v996 = v994[1];
        *v994 = sub_1D61CAE70;
        v994[1] = v993;
        sub_1D5B74328(v995, v996);
        v997 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v998 = &v666[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide];
        swift_beginAccess();
        v999 = *v998;
        v1000 = v998[1];
        *v998 = sub_1D61CAE78;
        v998[1] = v997;
        sub_1D5B74328(v999, v1000);
        v1001 = v1474;
        v1002 = v1460;
        sub_1D5F2DEAC((v1474 + 32), v1460);
        swift_storeEnumTagMultiPayload();
        v1464 = *(v1001 + 31);
        v1465 = *&v666[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
        v1489 = swift_allocObject();
        swift_weakInit();
        v1003 = swift_allocObject();
        v1466 = v666;
        swift_unknownObjectWeakInit();
        v1004 = v1456;
        sub_1D5BC885C(v1002, v1456, type metadata accessor for FeedItem);
        v1005 = v1483;
        v1006 = v1476;
        v1007 = v1500;
        (*(v1483 + 16))(v1476, v1499, v1500);
        v1008 = (*(v1469 + 80) + 56) & ~*(v1469 + 80);
        v1009 = (v1455 + v1008) & 0xFFFFFFFFFFFFFFF8;
        v1010 = (*(v1005 + 80) + v1009 + 8) & ~*(v1005 + 80);
        v1011 = swift_allocObject();
        *(v1011 + 2) = *(v1482 + 80);
        *(v1011 + 3) = v1007;
        v1012 = v1489;
        *(v1011 + 4) = v1501;
        *(v1011 + 5) = v1012;
        *(v1011 + 6) = v1003;
        sub_1D61CCB4C(v1004, &v1011[v1008], type metadata accessor for FeedItem);
        *&v1011[v1009] = v1464;
        (*(v1005 + 32))(&v1011[v1010], v1006, v1007);
        v1013 = v1465;
        v1014 = &v1465[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction];
        swift_beginAccess();
        v1016 = *v1014;
        v1015 = v1014[1];
        *v1014 = sub_1D61CAE80;
        v1014[1] = v1011;

        v1017 = v1013;

        sub_1D5B74328(v1016, v1015);

        v1018 = v1470[0];
        if (v1470[0])
        {
          swift_beginAccess();
          v1019 = v1018[4];
          v1020 = v1018[5];
        }

        else
        {
          v1019 = 0uLL;
          v1020 = 0uLL;
        }

        v138 = v1496;
        v139 = v1497;
        v141 = v1498;
        v142 = v1495;
        v1026 = v1468;
        v1543[0] = v1019;
        v1543[1] = v1020;
        v1544 = v1018 == 0;

        v1027 = v1026;
        v1028 = v1466;
        sub_1D7034244(v1474, v1027, v1543, v1466);

        sub_1D61CCBB4(v1460, type metadata accessor for FeedItem);

        v140 = v1490;
        v132 = v1504;
        goto LABEL_8;
      case 0x12uLL:
        sub_1D61CAF6C(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
        v777 = v776;
        v778 = swift_projectBox();
        v779 = *(v778 + *(v777 + 48));
        v780 = v1445;
        sub_1D5BC885C(v778, v1445, type metadata accessor for FormatSponsoredBannerData);
        v781 = v779[4];
        v782 = v779[5];
        v783 = v779[12];

        v784 = sub_1D61C787C(v781, v782, v783, type metadata accessor for FormatSponsoredBanner, &unk_1F50F70F0);
        v786 = v785;
        v1474 = v787;

        sub_1D726345C();
        *&v1505 = v150;
        v1470[0] = sub_1D6EE8B60(v788);
        v790 = v789;
        type metadata accessor for FormatVisibilityDataValue();
        v791 = v150;
        v792 = swift_allocObject();
        *(v792 + 16) = v791;
        *(v792 + 24) = v786;
        v793 = v1494;
        swift_beginAccess();

        v794 = v786;
        v795 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v793;
        *v793 = 0x8000000000000000;
        v796 = v792;
        v797 = v1498;
        sub_1D6D7A36C(v796, v1470[0], v790, v795);
        v138 = v1496;

        *v793 = v1512;
        swift_endAccess();
        v798 = v780[1];
        v799 = &v784[OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_adIdentifier];
        *v799 = *v780;
        *(v799 + 1) = v798;

        sub_1D5E2AB94(v779, v784, v780, v1488);

        v142 = v1495;
        v140 = v1490;

        v141 = v797;
        v132 = v1504;
        v139 = v1497;
        sub_1D61CCBB4(v780, type metadata accessor for FormatSponsoredBannerData);

        goto LABEL_8;
      default:
        v1474 = *(v150 + 16);
        v151 = *(v150 + 24);
        v1522 = *(v150 + 56);
        v152 = *(v150 + 40);
        v1520 = v151;
        v1521 = v152;
        v153 = v151;
        v154 = *(v151 + 32);
        v155 = *(v151 + 40);
        v156 = *(v151 + 104);

        v157 = sub_1D61C787C(v154, v155, v156, type metadata accessor for FormatImageView, &unk_1F50F6F10);
        v159 = v158;
        v161 = v160;
        sub_1D726345C();
        *&v1505 = v150;
        v163 = v150;
        v164 = sub_1D6EE8B60(v162);
        v166 = v165;
        type metadata accessor for FormatVisibilityDataValue();
        v167 = swift_allocObject();
        *(v167 + 16) = v163;
        *(v167 + 24) = v159;
        v168 = v1494;
        swift_beginAccess();
        v1489 = v163;

        v1470[0] = v159;
        v169 = swift_isUniquelyReferenced_nonNull_native();
        v1512 = *v168;
        *v168 = 0x8000000000000000;
        sub_1D6D7A36C(v167, v164, v166, v169);

        *v168 = v1512;
        swift_endAccess();
        *&v1509 = v1474;
        if (!v1513)
        {
          goto LABEL_337;
        }

        v170 = v1513;
        v171 = v1501;
        v172 = v1499;
        v1468 = v153;
        v173 = v1500;
        sub_1D6C06734(v1499, &v1509, v153, v157, v161, v170, v1488, v1500, v1501);

        v174 = swift_allocObject();
        swift_weakInit();
        v175 = v1483;
        v176 = *(v1483 + 16);
        v1474 = v161;
        v177 = v1437;
        v176(v1437, v172, v173);
        v178 = (*(v175 + 80) + 88) & ~*(v175 + 80);
        v179 = (v1481 + v178) & 0xFFFFFFFFFFFFFFF8;
        v180 = swift_allocObject();
        *(v180 + 16) = *(v1482 + 80);
        *(v180 + 24) = v173;
        *(v180 + 32) = v171;
        *(v180 + 40) = v174;
        v181 = v1521;
        *(v180 + 48) = v1520;
        *(v180 + 64) = v181;
        *(v180 + 80) = v1522;
        v182 = v177;
        v183 = v1474;
        (*(v175 + 32))(v180 + v178, v182, v173);
        v184 = (v180 + v179);
        v185 = v1470[0];
        *v184 = v157;
        v184[1] = v185;
        v184[2] = v183;
        v186 = swift_allocObject();
        *(v186 + 16) = sub_1D61CC840;
        *(v186 + 24) = v180;
        v187 = v1485;
        swift_beginAccess();
        v188 = *v187;
        v1467 = v185;

        sub_1D61CC910(&v1520, &v1509, &unk_1EDF1C7F0, type metadata accessor for FormatImageNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1470[0] = v157;

        v189 = swift_isUniquelyReferenced_nonNull_native();
        *v187 = v188;
        if ((v189 & 1) == 0)
        {
          v188 = sub_1D69931DC(0, v188[2] + 1, 1, v188);
          *v1485 = v188;
        }

        v191 = v188[2];
        v190 = v188[3];
        v192 = v1468;
        if (v191 >= v190 >> 1)
        {
          v188 = sub_1D69931DC((v190 > 1), v191 + 1, 1, v188);
        }

        v188[2] = v191 + 1;
        v193 = &v188[2 * v191];
        v193[4] = sub_1D61CCD0C;
        v193[5] = v186;
        *v1485 = v188;
        swift_endAccess();

        v194 = *(&v1520 + 1);
        v1550 = *(&v1520 + 1);
        if (*(&v1520 + 1))
        {
          v196 = v192[2];
          v195 = v192[3];
          v197 = *(v1502 + 296);
          v198 = MEMORY[0x1E69E6720];
          sub_1D61CC910(&v1550, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v199 = v1467;
          sub_1D61CC910(&v1550, &v1509, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v198, sub_1D61BB5EC);

          v200 = [v199 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v201 = swift_allocObject();
          v201[2] = 0;
          v201[3] = 0;
          v201[6] = v195;
          v201[7] = v199;
          v202 = MEMORY[0x1E69E7CC8];
          v201[11] = v194;
          v201[12] = v202;
          v201[4] = v197;
          v201[5] = v196;
          v201[8] = v200;
          v203 = MEMORY[0x1E69E7CC0];
          v201[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v204 = swift_allocObject();
          *(v204 + 16) = v1478;
          *(v204 + 32) = v200;
          *&v1509 = v204;
          v205 = v200;
          sub_1D69879AC(v203);
          v201[10] = v1509;
          v132 = v1504;
          v206 = v1479;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v207);
          if (*((*&v132[v206] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v206] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(&v1550, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);

          v138 = v1496;
          v139 = v1497;
LABEL_43:
          v140 = v1490;
          v141 = v1498;
          v142 = v1495;
          goto LABEL_8;
        }

LABEL_278:
        v138 = v1496;
        goto LABEL_279;
    }
  }
}