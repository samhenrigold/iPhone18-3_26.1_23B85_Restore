void sub_1D5EFFADC(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong identifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D726207C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v15 = sub_1D725EAEC();
    if (v14)
    {
      if (v12 == v15 && v14 == v16)
      {

LABEL_11:
        a3(a5);
        goto LABEL_12;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_12:
  }
}

uint64_t sub_1D5EFFC2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v22[3] = a7;
  v22[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a2, a7);
  sub_1D725EAEC();
  v16 = sub_1D726203C();

  [a6 setIdentifier_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D5B68374(v22, v21);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v17;
  sub_1D5B63F14(v21, (v18 + 4));
  v18[9] = a4;
  v18[10] = a5;
  v19 = a3;

  sub_1D725D0AC();

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t FeedPoolCachePolicy.cachePolicy.getter()
{
  result = *v0;
  if (*v0)
  {
    if (result == 1)
    {
      v2 = [objc_opt_self() cachedOnlyCachePolicy];
    }

    else
    {
      v2 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
    }

    return v2;
  }

  return result;
}

NewsFeed::FeedPoolCachePolicy_optional __swiftcall FeedPoolCachePolicy.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedPoolCachePolicy.rawValue.getter()
{
  v1 = 0x6E4F646568636163;
  if (*v0 != 1)
  {
    v1 = 0x6143726566657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D5EFFF20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F646568636163;
  v4 = 0xEA0000000000796CLL;
  if (v2 != 1)
  {
    v3 = 0x6143726566657270;
    v4 = 0xEC00000064656863;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6E4F646568636163;
  v8 = 0xEA0000000000796CLL;
  if (*a2 != 1)
  {
    v7 = 0x6143726566657270;
    v8 = 0xEC00000064656863;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

void sub_1D5F00048(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F646568636163;
  if (v2 != 1)
  {
    v5 = 0x6143726566657270;
    v4 = 0xEC00000064656863;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D5F000B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F00164(uint64_t a1)
{
  sub_1D72621EC();
}

uint64_t sub_1D5F00200(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FeedPoolServiceType.expandPool(cursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedServiceError(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable();
  swift_allocError();
  *v4 = 7;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 6;
  return swift_willThrow();
}

unint64_t sub_1D5F00420()
{
  result = qword_1EC880C90;
  if (!qword_1EC880C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C90);
  }

  return result;
}

unint64_t sub_1D5F004C0()
{
  result = qword_1EDF147E8;
  if (!qword_1EDF147E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF147E8);
  }

  return result;
}

uint64_t sub_1D5F00524(void *a1)
{
  v3 = v1;
  sub_1D5F05478(0, &qword_1EC880D48, sub_1D5F05424, &type metadata for A18_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F05424();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5F054E0(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F0076C(uint64_t a1)
{
  v2 = sub_1D5F05424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F007A8(uint64_t a1)
{
  v2 = sub_1D5F05424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F007E4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D5F04E38(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D5F00844(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D5F04C5C();

  return sub_1D725A24C();
}

uint64_t sub_1D5F008C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D5F05478(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D5F0097C(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v128 = a1;
  v111 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v141 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v129 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v123 = &v110 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v121 = (&v110 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v126 = &v110 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for GroupLayoutContext(0);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v23);
  v124 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v110 - v27;
  v117 = &v110 - v27;
  v127 = type metadata accessor for GroupLayoutBindingContext(0);
  v118 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127, v29);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v5;
  v116 = *v5;
  v33 = *(v5 + 1);
  v34 = v5[16];
  v115 = type metadata accessor for GroupLayoutBindingContext;
  sub_1D5BE3ED8(v128, v31, type metadata accessor for GroupLayoutBindingContext);
  v35 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v125, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v113 = sub_1D725893C();
  v112 = v36;
  (*(v19 + 8))(v22, v18);
  v139 = &type metadata for A18_V8;
  v114 = sub_1D5ECE4D8();
  v140 = v114;
  LOBYTE(v137) = v32;
  *(&v137 + 1) = v33;
  v37 = v34;
  v138 = v34;
  type metadata accessor for GroupLayoutKey(0);
  v38 = swift_allocObject();
  sub_1D5BEE8A0(v33, v37);
  v130[0] = sub_1D7264C5C();
  v130[1] = v39;
  v135 = 95;
  v136 = 0xE100000000000000;
  v133 = 45;
  v134 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;

  *(v38 + 16) = v40;
  *(v38 + 24) = v42;
  v43 = (v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v44 = v112;
  *v43 = v113;
  v43[1] = v44;
  sub_1D5B68374(&v137, v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v45 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA96C(v31, v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v115);
  (*(v118 + 56))(v38 + v45, 0, 1, v127);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA96C(v117, v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v47 = *(v119 + 56);
  v119 = v38;
  v47(v38 + v46, 0, 1, v120);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  v139 = &type metadata for A18_V8;
  v140 = v114;
  LOBYTE(v137) = v116;
  *(&v137 + 1) = v33;
  v138 = v37;
  sub_1D5BE3ED8(v125, v124, type metadata accessor for GroupLayoutContext);
  sub_1D5BD3984(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v125 = v48;
  inited = swift_initStackObject();
  v50 = MEMORY[0x1E69E7CC0];
  v120 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v51 = (inited + 16);
  swift_beginAccess();
  sub_1D5BEE8A0(v33, v37);
  v52 = sub_1D5C0F8FC(0, 1, 1, v50);
  v54 = *(v52 + 16);
  v53 = *(v52 + 24);
  v55 = (v54 + 1);
  if (v54 >= v53 >> 1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    *(v52 + 16) = v55;
    v56 = v52 + 16 * v54;
    *(v56 + 32) = sub_1D63106DC;
    *(v56 + 40) = 0;
    *v51 = v52;
    swift_endAccess();
    v57 = v127[14];
    v54 = v128;
    v58 = *&v128[v57];
    if (v58[2] && (v59 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v60 & 1) != 0) && (v58 = *&v58[7][8 * v59], v61 = , v35 = sub_1D5C14D80(v61), , v35))
    {
      v118 = v57;
      v62 = *(v35 + 16);
      if (v62)
      {
        v50 = 0;
        v55 = MEMORY[0x1E69E7CC0];
        v51 = v121;
        v52 = v126;
        while (1)
        {
          v53 = *(v35 + 16);
          if (v50 >= v53)
          {
            break;
          }

          v63 = (*(v141 + 80) + 32) & ~*(v141 + 80);
          v54 = *(v141 + 72);
          sub_1D5BE3ED8(v35 + v63 + v54 * v50, v52, type metadata accessor for FeedHeadline);
          if ((*(v52 + 32) & 4) != 0)
          {
            sub_1D5BDA96C(v52, v51, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v130[0] = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v55 + 2) + 1, 1);
              v51 = v121;
              v55 = v130[0];
            }

            v66 = *(v55 + 2);
            v65 = *(v55 + 3);
            if (v66 >= v65 >> 1)
            {
              sub_1D5C0F91C((v65 > 1), v66 + 1, 1);
              v51 = v121;
              v55 = v130[0];
            }

            *(v55 + 2) = v66 + 1;
            sub_1D5BDA96C(v51, &v55[v63 + v66 * v54], type metadata accessor for FeedHeadline);
            v52 = v126;
          }

          else
          {
            sub_1D5BE78CC(v52, type metadata accessor for FeedHeadline);
          }

          if (v62 == ++v50)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

      v55 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v54 = v128;
      if ((*v128 & 1) == 0)
      {

        sub_1D62F071C(v55);
        v71 = v70;

        v55 = v71;
      }

      v50 = MEMORY[0x1E69E7CC0];
      v72 = *(v54 + v127[18]);
      v73 = *(v54 + v127[19]);
      if (__OFSUB__(v72, v73))
      {
        goto LABEL_71;
      }

      v74 = sub_1D5C0FAD4(v55, v72 - v73);
      v75 = sub_1D5C11E10(&unk_1F50F5F70, v74, v35);

      if (v75)
      {
        v126 = v75;
      }

      else
      {
        v76 = sub_1D5C11E10(&unk_1F50F5F70, v55, v35);

        if (!v76)
        {
          v130[0] = &unk_1F50F5F70;
          v4 = v122;
          sub_1D5E239F4(v130);
          if (v4)
          {
            goto LABEL_75;
          }

          if (!*(v130[0] + 2))
          {
            goto LABEL_73;
          }

          v106 = *(v130[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v107, "FeedHeadline");
          v107[13] = 0;
          *(v107 + 7) = -5120;
          *(v107 + 2) = 0;
          *(v107 + 3) = 0;
          *(v107 + 4) = 4;
          *(v107 + 5) = v106;
          *(v107 + 6) = 0;
          *(v107 + 7) = 0;
          v107[64] = 0;
          swift_willThrow();
          goto LABEL_64;
        }

        v126 = v76;
      }

      strcpy(v130, "FeedHeadline");
      BYTE5(v130[1]) = 0;
      HIWORD(v130[1]) = -5120;
      v131 = 0;
      v132 = 0;

      v78 = sub_1D5C107C4(v77);

      sub_1D5BDACA8(v130, v78);
      swift_setDeallocating();
    }

    else
    {
      if (qword_1F50F5F90)
      {
        v130[0] = &unk_1F50F5F70;
        v4 = v122;
        sub_1D5E239F4(v130);
        if (v4)
        {
          goto LABEL_75;
        }

        v67 = *(v130[0] + 2);
        if (v67)
        {
          v68 = *(v130[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_47:

          sub_1D5BE78CC(v124, type metadata accessor for GroupLayoutContext);
          __swift_destroy_boxed_opaque_existential_1(&v137);
          return;
        }

        __break(1u);
LABEL_69:
        v55 = sub_1D5C0F8FC((v67 > 1), v57, 1, v55);
        goto LABEL_31;
      }

      v118 = v57;

      v126 = MEMORY[0x1E69E7CC0];
    }

    v35 = v122;
    v79 = swift_initStackObject();
    v125 = v79;
    *(v79 + 16) = v50;
    v58 = (v79 + 16);
    swift_beginAccess();
    v55 = sub_1D5C0F8FC(0, 1, 1, v50);
    v52 = *(v55 + 2);
    v67 = *(v55 + 3);
    v57 = v52 + 1;
    if (v52 >= v67 >> 1)
    {
      goto LABEL_69;
    }

LABEL_31:
    *(v55 + 2) = v57;
    v80 = &v55[16 * v52];
    *(v80 + 4) = sub_1D63106DC;
    *(v80 + 5) = 0;
    *v58 = v55;
    swift_endAccess();
    v81 = *(v54 + v118);
    if (!*(v81 + 16))
    {
      break;
    }

    v82 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v83 & 1) == 0)
    {
      break;
    }

    v51 = *(*(v81 + 56) + 8 * v82);

    v85 = sub_1D5C14D80(v84);

    if (!v85)
    {
      break;
    }

    v35 = *(v85 + 16);
    if (!v35)
    {
      v55 = MEMORY[0x1E69E7CC0];
LABEL_50:
      v94 = v128;
      if ((*v128 & 1) == 0)
      {

        sub_1D62F071C(v55);
        v96 = v95;

        v55 = v96;
      }

      v97 = *&v94[v127[18]];
      v98 = *&v94[v127[19]];
      if (__OFSUB__(v97, v98))
      {
        goto LABEL_72;
      }

      v99 = sub_1D5C0FAD4(v55, v97 - v98);
      v93 = sub_1D5C11E10(&unk_1F50F5F98, v99, v85);

      if (v93)
      {

LABEL_56:
        strcpy(v130, "FeedHeadline");
        BYTE5(v130[1]) = 0;
        HIWORD(v130[1]) = -5120;
        v131 = 0;
        v132 = 0;

        v101 = sub_1D5C107C4(v100);

        sub_1D5BDACA8(v130, v101);
        swift_setDeallocating();

        goto LABEL_57;
      }

      v93 = sub_1D5C11E10(&unk_1F50F5F98, v55, v85);

      if (v93)
      {
        goto LABEL_56;
      }

      v130[0] = &unk_1F50F5F98;
      v4 = v122;
      sub_1D5E239F4(v130);
      if (v4)
      {
        goto LABEL_75;
      }

      if (!*(v130[0] + 2))
      {
        goto LABEL_74;
      }

      v108 = *(v130[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v109, "FeedHeadline");
      v109[13] = 0;
      *(v109 + 7) = -5120;
      *(v109 + 2) = 0;
      *(v109 + 3) = 0;
      *(v109 + 4) = 0;
      *(v109 + 5) = v108;
      *(v109 + 6) = 0;
      *(v109 + 7) = 0;
      v109[64] = 0;
      swift_willThrow();
LABEL_64:
      swift_setDeallocating();
      goto LABEL_47;
    }

    v86 = 0;
    v55 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v53 = *(v85 + 16);
      if (v86 >= v53)
      {
        break;
      }

      v50 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v87 = *(v141 + 72);
      v51 = type metadata accessor for FeedHeadline;
      v88 = v123;
      sub_1D5BE3ED8(v85 + v50 + v87 * v86, v123, type metadata accessor for FeedHeadline);
      sub_1D5BDA96C(v88, v129, type metadata accessor for FeedHeadline);
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v130[0] = v55;
      if ((v89 & 1) == 0)
      {
        v51 = v130;
        sub_1D5C0F91C(0, *(v55 + 2) + 1, 1);
        v55 = v130[0];
      }

      v52 = *(v55 + 2);
      v90 = *(v55 + 3);
      v54 = v52 + 1;
      if (v52 >= v90 >> 1)
      {
        v51 = v130;
        sub_1D5C0F91C((v90 > 1), v52 + 1, 1);
        v55 = v130[0];
      }

      ++v86;
      *(v55 + 2) = v54;
      sub_1D5BDA96C(v129, &v55[v50 + v52 * v87], type metadata accessor for FeedHeadline);
      if (v35 == v86)
      {
        goto LABEL_50;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v52 = sub_1D5C0F8FC((v53 > 1), v55, 1, v52);
  }

  if (!qword_1F50F5FB8)
  {

    v93 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v130[0] = v126;
    sub_1D5C122E4(v93);
    v102 = v130[0];
    v103 = type metadata accessor for A18_V8.Bound(0);
    v104 = v111;
    v111[3] = v103;
    v104[4] = sub_1D5F054E0(&qword_1EC880CA8, type metadata accessor for A18_V8.Bound, &unk_1D7280A3C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
    *boxed_opaque_existential_1 = v119;
    sub_1D5B63F14(&v137, (boxed_opaque_existential_1 + 1));
    sub_1D5BDA96C(v124, boxed_opaque_existential_1 + *(v103 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v103 + 28)) = v102;
    return;
  }

  v130[0] = &unk_1F50F5F98;
  v4 = v35;
  sub_1D5E239F4(v130);
  if (!v35)
  {

    if (*(v130[0] + 2))
    {
      v91 = *(v130[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v92, "FeedHeadline");
      v92[13] = 0;
      *(v92 + 7) = -5120;
      *(v92 + 2) = 0;
      *(v92 + 3) = 0;
      *(v92 + 4) = 0;
      *(v92 + 5) = v91;
      *(v92 + 6) = 0;
      *(v92 + 7) = 0;
      v92[64] = 0;
      swift_willThrow();
      goto LABEL_47;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

LABEL_75:

  __break(1u);
}

void sub_1D5F01AC4(_BYTE *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  *&v37 = sub_1D725A36C();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A18_V8.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v44);
  sub_1D5B68374(v12 + 56, v43);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v44, v15 + 16);
  sub_1D5B63F14(v43, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v42[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v42, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v43);
  sub_1D5B68374(v16 + 56, v42);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v43, v18 + 16);
  sub_1D5B63F14(v42, v18 + 56);
  *(v18 + 96) = v17;
  v41[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v41, v44);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v44, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v44[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v44[0];
  v38 = v2;
  v40[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D5F04BF8, v40);

  if (*(v22 + 16) < 4uLL)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v23 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v22, v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), 1, 9uLL);
    v24 = *MEMORY[0x1E69D7130];
    v25 = sub_1D7259D1C();
    (*(*(v25 - 8) + 104))(v6, v24, v25);
    v26 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v37);
    MEMORY[0x1EEE9AC00](v26, v27);
    sub_1D5F04D04(0, &qword_1EC880CC8, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    sub_1D725A4CC();

    sub_1D725A4DC();
    v28 = v45;
    sub_1D5BD3984(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD48FC();
    v29 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    v36 = v44[1];
    v37 = v44[0];
    *&v44[0] = v22;
    *&v43[0] = v28;
    MEMORY[0x1EEE9AC00](v29, v30);

    v31 = sub_1D725C00C();

    v32 = v39;
    *v39 = 0;
    v33 = v37;
    *(v32 + 24) = v36;
    *(v32 + 8) = v33;
    *&v44[0] = v31;
    sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
    sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
    sub_1D5BDEFF8();
    v34 = sub_1D72623BC();

    v35 = MEMORY[0x1E69E7CC0];
    *(v32 + 5) = v34;
    *(v32 + 6) = v35;
  }
}

uint64_t sub_1D5F020A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v10, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v14);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v11, v10, v14, a4);
}

uint64_t sub_1D5F02174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-v10];
  v19 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 18;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D5F04D04(0, &qword_1EC880CE8, MEMORY[0x1E69D7150]);
  sub_1D5F04CC0(&qword_1EC880CF0, &qword_1EC880CE8, v13, MEMORY[0x1E69D7158], v14);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D5F02364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25 = sub_1D5F04C08;
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v24 - v8);
  v30 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69D6F50], v10);
  *v9 = v11;
  v13 = *(v6 + 104);
  v13(v9, *MEMORY[0x1E69D73C0], v5);
  v14 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  v24 = v15;
  sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v14, MEMORY[0x1E69D6F40], v16);
  sub_1D7259A9C();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v30 = a1;
  v13(v9, *MEMORY[0x1E69D7460], v5);
  sub_1D5F04D88(0);
  sub_1D5F05478(0, &qword_1EC880D10, v25, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7273AE0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69D7098], v19);
  v28 = v26;
  v29 = v27;
  sub_1D72599EC();

  return (v17)(v9, v5);
}

uint64_t sub_1D5F026D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v35 = a1;
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v32 - v8);
  v41 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v34 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v32[2] = v6 + 104;
  v33 = v11;
  (v11)(v9);
  sub_1D5F04D88(0);
  sub_1D5F05478(0, &qword_1EC880D10, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  v17 = v16 + v15;
  sub_1D5ED83AC(0);
  v19 = (v17 + *(v18 + 48));
  v20 = *MEMORY[0x1E69D7238];
  v21 = sub_1D725A0DC();
  (*(*(v21 - 8) + 104))(v17, v20, v21);
  *v19 = 0x6469737468676972;
  v19[1] = 0xE900000000000065;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7020], v13);
  v40 = v37;
  v22 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  v32[1] = sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v22, MEMORY[0x1E69D6F40], v23);
  sub_1D7259A2C();

  v24 = *(v6 + 8);
  v32[0] = v5;
  v24(v9, v5);
  v25 = v35;
  v41 = v35;
  v26 = swift_allocObject();
  *(v26 + 16) = 6;
  *v9 = v26;
  v27 = v34;
  v28 = v33;
  v33(v9, v34, v5);
  v39 = v36;
  sub_1D7259A2C();
  v29 = v32[0];
  v24(v9, v32[0]);
  v41 = v25;
  v30 = swift_allocObject();
  *(v30 + 16) = 6;
  *v9 = v30;
  v28(v9, v27, v29);
  v38 = v37;
  sub_1D7259A2C();
  return (v24)(v9, v29);
}

uint64_t sub_1D5F02B94(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_1D725A36C();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v45 - v22;
  v56 = a1;
  KeyPath = swift_getKeyPath();
  v24 = *MEMORY[0x1E69D7460];
  v54 = v20;
  (*(v20 + 104))(v23, v24, v19);
  sub_1D5F04D88(0);
  sub_1D5F05478(0, &qword_1EC880D10, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7273AE0;
  (*(v27 + 104))(v29 + v28, *MEMORY[0x1E69D7098], v26);
  if (!*(v55 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v46 = v19;
  sub_1D5BE3ED8(v55 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v17, type metadata accessor for HeadlineViewLayout.Context);
  v30 = v10[5];
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  v33 = *(v32 - 8);
  (*(v33 + 104))(&v13[v30], v31, v32);
  (*(v33 + 56))(&v13[v30], 0, 1, v32);
  v34 = MEMORY[0x1E69DDC70];
  *v13 = 1;
  *&v13[v10[6]] = 0;
  v35 = *v34;
  *&v13[v10[7]] = v35;
  v36 = qword_1EDF386E8;
  v37 = v35;
  if (v36 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  *(&v45 - 4) = v17;
  *(&v45 - 3) = v13;
  v44 = v9;
  (*(v49 + 104))(v51, *MEMORY[0x1E69D7378], v50, v40);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v52 + 8))(v9, v53);
  sub_1D5BE78CC(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE78CC(v17, type metadata accessor for HeadlineViewLayout.Context);
  v41 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v41, MEMORY[0x1E69D6F40], v42);
  v44 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v54 + 8))(v23, v46);
}

void sub_1D5F03244(uint64_t a1, uint64_t a2)
{
  v127 = a1;
  sub_1D5F050D8(0);
  v120 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BD3984(0, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v99 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v97 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v97 - v16;
  v119 = sub_1D725A36C();
  v18 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v19);
  v118 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1D725A19C();
  v21 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v22);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v116, v25);
  v27 = (&v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v131 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v102 = (&v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v33);
  v130 = (&v97 - v34);
  v129 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v129, v35);
  v98 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v41 = &v97 - v40;
  v42 = *(a2 + 16);
  if (v42)
  {
    v43 = *MEMORY[0x1E69DDCE0];
    v44 = *(MEMORY[0x1E69DDCE0] + 8);
    v45 = *(MEMORY[0x1E69DDCE0] + 16);
    v46 = *(MEMORY[0x1E69DDCE0] + 24);
    v113 = *MEMORY[0x1E69DDC70];
    v47 = a2 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v112 = *(v39 + 72);
    v111 = v47 + v112 * (v42 - 1);
    v110 = v41 + 40;
    v109 = *MEMORY[0x1E69D73D8];
    v126 = (v29 + 104);
    v108 = *MEMORY[0x1E69D7348];
    v107 = *MEMORY[0x1E69D7378];
    v106 = (v18 + 104);
    v105 = (v21 + 8);
    v125 = (v29 + 8);
    v104 = (v39 + 56);
    v101 = *MEMORY[0x1E69D6F50];
    v100 = *MEMORY[0x1E69D73C0];
    v121 = v6;
    v115 = v24;
    v114 = v17;
    v97 = v27;
    v132 = &v97 - v40;
    v103 = (v39 + 48);
    do
    {
      v128 = v42;
      v49 = v13;
      sub_1D5BE3ED8(v47, v41, type metadata accessor for HeadlineViewLayout.Context);
      v133 = v127;
      swift_getKeyPath();
      v50 = swift_allocObject();
      *(v50 + 16) = 0x4060E00000000000;
      v52 = v130;
      v51 = v131;
      *v130 = v50;
      v124 = *v126;
      v124(v52, v109, v51);
      v53 = v116;
      v54 = *(v116 + 20);
      v55 = sub_1D725A34C();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v27 + v54, v108, v55);
      (*(v56 + 56))(v27 + v54, 0, 1, v55);
      *v27 = 0;
      *(v27 + *(v53 + 24)) = 0;
      v57 = v113;
      *(v27 + *(v53 + 28)) = v113;
      v58 = *&v110[*(v129 + 20)];
      v59 = v57;
      if ([v58 hasThumbnail])
      {
        if (qword_1EDF386E8 != -1)
        {
          swift_once();
        }

        sub_1D725972C();

        v62 = MEMORY[0x1EEE9AC00](v60, v61);
        *(&v97 - 8) = v43;
        *(&v97 - 7) = v44;
        *(&v97 - 6) = v45;
        *(&v97 - 5) = v46;
        *(&v97 - 4) = v27;
        *(&v97 - 3) = v24;
        v63 = v132;
        v96 = v132;
        (*v106)(v118, v107, v119, v62);
        sub_1D5BED904(0);
        swift_allocObject();
      }

      else
      {
        if (qword_1EDF386E8 != -1)
        {
          swift_once();
        }

        sub_1D725972C();

        v66 = MEMORY[0x1EEE9AC00](v64, v65);
        *(&v97 - 8) = v43;
        *(&v97 - 7) = v44;
        *(&v97 - 6) = v45;
        *(&v97 - 5) = v46;
        v63 = v132;
        *(&v97 - 4) = v24;
        *(&v97 - 3) = v63;
        v96 = v27;
        (*v106)(v118, v107, v119, v66);
        sub_1D5BED904(0);
        swift_allocObject();
      }

      sub_1D725A4CC();
      v13 = v49;
      (*v105)(v24, v117);
      sub_1D5BE78CC(v27, type metadata accessor for HeadlineViewLayout.Options);
      v67 = MEMORY[0x1E69D6F38];
      sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
      v69 = v68;
      v71 = sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v67, MEMORY[0x1E69D6F40], v70);
      v96 = sub_1D5BE8850();
      v72 = v130;
      v122 = v71;
      v123 = v69;
      sub_1D7259A4C();

      v73 = *v125;
      (*v125)(v72, v131);
      v74 = v114;
      sub_1D5BE3ED8(v63, v114, type metadata accessor for HeadlineViewLayout.Context);
      v75 = *v104;
      v76 = v129;
      (*v104)(v74, 0, 1, v129);
      sub_1D5BE3ED8(v111, v13, type metadata accessor for HeadlineViewLayout.Context);
      v75(v13, 0, 1, v76);
      v48 = v121;
      v77 = *(v120 + 48);
      sub_1D5F05184(v74, v121);
      sub_1D5F05184(v13, v48 + v77);
      v78 = *v103;
      if ((*v103)(v48, 1, v76) == 1)
      {
        sub_1D5F05218(v13);
        sub_1D5F05218(v74);
        if (v78(v48 + v77, 1, v76) != 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v79 = v74;
        v80 = v13;
        v81 = v99;
        sub_1D5F05184(v48, v99);
        if (v78(v48 + v77, 1, v76) == 1)
        {
          sub_1D5F05218(v80);
          sub_1D5F05218(v79);
          v82 = v81;
          v13 = v80;
          sub_1D5BE78CC(v82, type metadata accessor for HeadlineViewLayout.Context);
          v27 = v97;
LABEL_18:
          sub_1D5BE78CC(v48, sub_1D5F050D8);
LABEL_19:
          v133 = v127;
          v83 = sub_1D725994C();
          v84 = swift_allocBox();
          (*(*(v83 - 8) + 104))(v85, v101, v83);
          v86 = v102;
          *v102 = v84;
          v87 = v131;
          v124(v86, v100, v131);
          sub_1D7259A9C();
          v73(v86, v87);
          goto LABEL_5;
        }

        v88 = v48 + v77;
        v89 = v98;
        sub_1D5BDA96C(v88, v98, type metadata accessor for HeadlineViewLayout.Context);
        v90 = *(v76 + 20);
        v91 = *(v81 + v90);
        v92 = *(v81 + v90 + 8);
        v93 = (v89 + v90);
        v94 = v81;
        if (v91 != *v93 || v92 != v93[1])
        {
          v95 = sub_1D72646CC();
          v13 = v80;
          sub_1D5F05218(v80);
          sub_1D5F05218(v79);
          sub_1D5BE78CC(v98, type metadata accessor for HeadlineViewLayout.Context);
          sub_1D5BE78CC(v94, type metadata accessor for HeadlineViewLayout.Context);
          sub_1D5F05218(v121);
          v27 = v97;
          if (v95)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        v13 = v80;
        sub_1D5F05218(v80);
        sub_1D5F05218(v79);
        sub_1D5BE78CC(v98, type metadata accessor for HeadlineViewLayout.Context);
        sub_1D5BE78CC(v94, type metadata accessor for HeadlineViewLayout.Context);
        v48 = v121;
        v27 = v97;
      }

      sub_1D5F05218(v48);
LABEL_5:
      sub_1D5BE78CC(v132, type metadata accessor for HeadlineViewLayout.Context);
      v24 = v115;
      v47 += v112;
      v42 = v128 - 1;
      v41 = v132;
    }

    while (v128 != 1);
  }
}

uint64_t sub_1D5F03F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v66 - v12);
  v90 = a1;
  v94 = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  v15 = *MEMORY[0x1E69D73D8];
  v92 = v9;
  v93 = v10;
  v16 = *(v10 + 104);
  v88 = v15;
  v89 = v10 + 104;
  v87 = v16;
  result = (v16)(v13);
  v86 = *(a2 + 16);
  if (v86 < 5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v19 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v84 = v19;
  v82 = v20;
  v21 = v19 + 4 * v20;
  v22 = v4[5];
  v23 = *MEMORY[0x1E69D7348];
  v24 = sub_1D725A34C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v83 = v23;
  v79 = v26;
  v80 = v25 + 104;
  v26(&v7[v22], v23, v24);
  v27 = *(v25 + 56);
  v85 = v24;
  v81 = v25 + 56;
  v78 = v27;
  v27(&v7[v22], 0, 1, v24);
  v28 = *MEMORY[0x1E69DDC70];
  *v7 = 0;
  *&v7[v4[6]] = 0;
  v77 = v4;
  *&v7[v4[7]] = v28;
  v29 = *MEMORY[0x1E69DDCE0];
  v30 = *(MEMORY[0x1E69DDCE0] + 8);
  v31 = *(MEMORY[0x1E69DDCE0] + 16);
  v32 = *(MEMORY[0x1E69DDCE0] + 24);
  v73 = v28;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v21, v7, v29, v30, v31, v32);
  sub_1D5BE78CC(v7, type metadata accessor for HeadlineViewLayout.Options);
  v33 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  v91 = v34;
  v36 = sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v33, MEMORY[0x1E69D6F40], v35);
  v75 = sub_1D5BE8850();
  sub_1D7259A4C();

  v37 = v92;
  v39 = v93 + 8;
  v38 = *(v93 + 8);
  v38(v13, v92);
  v40 = v90;
  v94 = v90;
  v41 = sub_1D725994C();
  v42 = swift_allocBox();
  v43 = *(v41 - 8);
  v44 = *(v43 + 104);
  v71 = *MEMORY[0x1E69D6F50];
  v72 = v41;
  v70 = v44;
  v69 = v43 + 104;
  v44(v45);
  *v13 = v42;
  v68 = *MEMORY[0x1E69D73C0];
  v46 = v87;
  v87(v13);
  v76 = v36;
  sub_1D7259A9C();
  v93 = v39;
  v74 = v38;
  v38(v13, v37);
  v94 = v40;
  swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = 0x4060E00000000000;
  *v13 = v47;
  result = v46(v13, v88, v37);
  if (v86 == 5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v48 = 5 * v82;
  v49 = v77;
  v50 = v77[5];
  v51 = v85;
  v79(&v7[v50], v83, v85);
  v78(&v7[v50], 0, 1, v51);
  *v7 = 0;
  *&v7[v49[6]] = 0;
  v52 = v73;
  *&v7[v49[7]] = v73;
  v67 = v52;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v84 + v48, v7, v29, v30, v31, v32);
  v73 = v7;
  sub_1D5BE78CC(v7, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D7259A4C();

  v53 = v92;
  v54 = v74;
  v74(v13, v92);
  v55 = v90;
  v94 = v90;
  v56 = v72;
  v57 = swift_allocBox();
  v70(v58, v71, v56);
  *v13 = v57;
  v59 = v87;
  (v87)(v13, v68, v53);
  sub_1D7259A9C();
  v54(v13, v53);
  v94 = v55;
  swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = 0x4060E00000000000;
  *v13 = v60;
  result = v59(v13, v88, v53);
  if (v86 >= 7)
  {
    v61 = v85;
    v62 = v84 + 6 * v82;
    v63 = v77;
    v64 = v77[5];
    v65 = v73;
    v79(&v73[v64], v83, v85);
    v78(&v65[v64], 0, 1, v61);
    *v65 = 0;
    *&v65[v63[6]] = 0;
    *&v65[v63[7]] = v67;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v62, v65, v29, v30, v31, v32);
    sub_1D5BE78CC(v65, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D7259A4C();

    return (v74)(v13, v92);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5F0484C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V8.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D5F04960(uint64_t a1)
{
  *(a1 + 8) = sub_1D5F04990();
  result = sub_1D5F049E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5F04990()
{
  result = qword_1EC880C98;
  if (!qword_1EC880C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C98);
  }

  return result;
}

unint64_t sub_1D5F049E4()
{
  result = qword_1EC880CA0;
  if (!qword_1EC880CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880CA0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V8.Bound(uint64_t a1)
{
  result = qword_1EC880CB0;
  if (!qword_1EC880CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5F04AAC(uint64_t a1)
{
  type metadata accessor for GroupLayoutKey(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B49474(319, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext(319);
      if (v3 <= 0x3F)
      {
        sub_1D5BD3984(319, &qword_1EDF1B460, type metadata accessor for FeedHeadline, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5F04BA0(uint64_t a1)
{
  result = sub_1D5F054E0(&qword_1EC880CC0, type metadata accessor for A18_V8.Bound, &unk_1D7280A14);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F04C08()
{
  result = qword_1EC880CD0;
  if (!qword_1EC880CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880CD0);
  }

  return result;
}

unint64_t sub_1D5F04C5C()
{
  result = qword_1EC880CD8;
  if (!qword_1EC880CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880CD8);
  }

  return result;
}

uint64_t sub_1D5F04CC0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F04D04(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F04D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V8.Layout;
    v8[1] = &type metadata for A18_V8.Layout.Attributes;
    v8[2] = sub_1D5F04C08();
    v8[3] = sub_1D5F04C5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5F04D88(uint64_t a1)
{
  if (!qword_1EC880D08)
  {
    sub_1D5F05478(255, &qword_1EC880D10, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC880D08);
    }
  }
}

uint64_t sub_1D5F04E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5F05478(0, &qword_1EC880D38, sub_1D5F05424, &type metadata for A18_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F05424();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5F054E0(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

void sub_1D5F050D8(uint64_t a1)
{
  if (!qword_1EDF2D580)
  {
    sub_1D5BD3984(255, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2D580);
    }
  }
}

uint64_t sub_1D5F05184(uint64_t a1, uint64_t a2)
{
  sub_1D5BD3984(0, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F05218(uint64_t a1)
{
  sub_1D5BD3984(0, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5F052C8()
{
  result = qword_1EC880D18;
  if (!qword_1EC880D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D18);
  }

  return result;
}

unint64_t sub_1D5F05320()
{
  result = qword_1EC880D20;
  if (!qword_1EC880D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D20);
  }

  return result;
}

unint64_t sub_1D5F05378()
{
  result = qword_1EC880D28;
  if (!qword_1EC880D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D28);
  }

  return result;
}

unint64_t sub_1D5F053D0()
{
  result = qword_1EC880D30;
  if (!qword_1EC880D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D30);
  }

  return result;
}

unint64_t sub_1D5F05424()
{
  result = qword_1EC880D40;
  if (!qword_1EC880D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D40);
  }

  return result;
}

void sub_1D5F05478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5F054E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5F0553C()
{
  result = qword_1EC880D50;
  if (!qword_1EC880D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D50);
  }

  return result;
}

unint64_t sub_1D5F05594()
{
  result = qword_1EC880D58;
  if (!qword_1EC880D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D58);
  }

  return result;
}

unint64_t sub_1D5F055EC()
{
  result = qword_1EC880D60;
  if (!qword_1EC880D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D60);
  }

  return result;
}

uint64_t sub_1D5F05650(uint64_t a1, uint64_t a2)
{
  v2[203] = a2;
  v2[202] = a1;
  v3 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v2[204] = v3;
  v2[205] = *(v3 - 8);
  v2[206] = swift_task_alloc();
  type metadata accessor for GroupLayoutBindingContext(0);
  v2[207] = swift_task_alloc();
  v4 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v2[208] = v4;
  v2[209] = *(v4 - 8);
  v2[210] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F0579C, 0, 0);
}

uint64_t sub_1D5F0579C()
{
  v3 = v0 + 1584;
  v4 = *(v0 + 1616);
  *(v0 + 1584) = MEMORY[0x1E69E7CC0];
  type metadata accessor for DebugGroupLayoutKey(0);
  v5 = sub_1D62EF50C();
  sub_1D69856DC(v5);
  v6 = [*(v4 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext) subscriptionController];
  if (!v6)
  {
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
    return MEMORY[0x1EEE6DA10](v6, v7, v8, v9, v10);
  }

  v11 = v6;
  v12 = [v6 orderedCachedSubscribedTags];

  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    sub_1D5B65AF4();
    v13 = sub_1D726267C();
  }

  v14 = *(v0 + 1624);
  sub_1D69856DC(v13);
  v15 = *(v14 + *(type metadata accessor for DebugFormatWorkspace(0) + 36));
  *(v0 + 1688) = v15;
  v16 = *(v15 + 16);
  *(v0 + 1696) = v16;
  if (v16)
  {
    v17 = *(v0 + 1680);
    v18 = *(v0 + 1672);
    *(v0 + 812) = *(*(v0 + 1664) + 24);
    v19 = *(v0 + 1584);
    v20 = *(v18 + 80);
    *(v0 + 964) = v20;
    *(v0 + 1712) = v19;
    *(v0 + 1704) = 0;
    if (!*(v15 + 16))
    {
      goto LABEL_206;
    }

    sub_1D5F0B788(v15 + ((v20 + 32) & ~v20), v17, type metadata accessor for DebugFormatWorkspaceGroup);

    sub_1D5F0B728(v17, type metadata accessor for DebugFormatWorkspaceGroup);
    sub_1D725B77C();

    v21 = *(v0 + 1592);
    *(v0 + 1720) = v21;
    v22 = swift_task_alloc();
    *(v0 + 1728) = v22;
    v23 = type metadata accessor for DebugFormatBindingResult(0);
    v9 = sub_1D5BA6EF4();
    *v22 = v0;
    v22[1] = sub_1D5F075A8;
    v10 = MEMORY[0x1E69E7288];
    v6 = (v0 + 1600);
    v7 = v21;
    v8 = v23;

    return MEMORY[0x1EEE6DA10](v6, v7, v8, v9, v10);
  }

  v24 = v0 + 232;
  v25 = (v0 + 1608);

  sub_1D725B31C();

  v27 = *(v0 + 608);
  v26 = *(v0 + 624);
  v28 = *(v0 + 592);
  *(v0 + 392) = v27;
  *(v0 + 408) = v26;
  v29 = *(v0 + 624);
  *(v0 + 424) = *(v0 + 640);
  v31 = *(v0 + 544);
  v30 = *(v0 + 560);
  v32 = *(v0 + 528);
  *(v0 + 328) = v31;
  *(v0 + 344) = v30;
  v33 = *(v0 + 560);
  v35 = *(v0 + 576);
  v34 = *(v0 + 592);
  *(v0 + 360) = v35;
  *(v0 + 376) = v34;
  v37 = *(v0 + 480);
  v36 = *(v0 + 496);
  v38 = *(v0 + 464);
  *(v0 + 264) = v37;
  *(v0 + 280) = v36;
  v39 = *(v0 + 496);
  v41 = *(v0 + 512);
  v40 = *(v0 + 528);
  *(v0 + 296) = v41;
  *(v0 + 312) = v40;
  v42 = *(v0 + 464);
  v43 = *(v0 + 448);
  *(v0 + 232) = v43;
  *(v0 + 248) = v42;
  *(v0 + 176) = v27;
  *(v0 + 192) = v29;
  *(v0 + 208) = *(v0 + 640);
  *(v0 + 112) = v31;
  *(v0 + 128) = v33;
  *(v0 + 144) = v35;
  *(v0 + 160) = v28;
  *(v0 + 48) = v37;
  *(v0 + 64) = v39;
  *(v0 + 80) = v41;
  *(v0 + 96) = v32;
  *(v0 + 440) = *(v0 + 656);
  *(v0 + 224) = *(v0 + 656);
  *(v0 + 16) = v43;
  *(v0 + 32) = v38;
  v239 = v0;
  if (sub_1D5DEA380(v0 + 16) != 1)
  {
    v44 = *(v0 + 224);
    v45 = *(v44 + 16);
    if (v45)
    {
      v242 = (v0 + 1608);
      v46 = *(v0 + 1648);
      v47 = *(v0 + 1640);
      v48 = *(*(v0 + 1632) + 20);
      v49 = v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v50 = *(v47 + 72);

      do
      {
        v51 = *(v0 + 1656);
        v52 = *(v0 + 1648);
        sub_1D5F0B788(v49, v52, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v53 = v3;
        v54 = *(v46 + v48);

        sub_1D5F0B728(v52, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D5F0B788(v54 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v51, type metadata accessor for GroupLayoutBindingContext);
        v3 = v53;
        v0 = v239;

        v55 = sub_1D62EF50C();
        sub_1D5F0B728(v51, type metadata accessor for GroupLayoutBindingContext);
        sub_1D69856DC(v55);
        v49 += v50;
        --v45;
      }

      while (v45);
      sub_1D5F0B7F0(v24);

      v25 = v242;
    }

    else
    {
      sub_1D5F0B7F0(v0 + 232);
    }
  }

  ObjectType = v0 + 1424;
  *v25 = *v3;
  sub_1D5C44878(0);
  sub_1D5C44F84(&qword_1EDF1AEA0, MEMORY[0x1E69E6328]);

  sub_1D72623CC();
  swift_bridgeObjectRelease_n();
  sub_1D5B65AF4();
  v1 = sub_1D72626EC();

  v56 = MEMORY[0x1E69E6F90];
  sub_1D5B66EA4(0, &unk_1EC880D70, &type metadata for DebugFormatWorkspaceTagSection, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  sub_1D5B66EA4(0, &unk_1EC88F2B0, &type metadata for DebugFormatWorkspaceTagItem, v56);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v57 = qword_1EC87D4F8;

  if (v57 != -1)
  {
    goto LABEL_209;
  }

LABEL_16:
  v58 = xmmword_1EC9BA778;
  v59 = *&qword_1EC9BA788;
  *ObjectType = xmmword_1EC9BA778;
  *(ObjectType + 16) = v59;
  v60 = xmmword_1EC9BA798;
  v61 = *&qword_1EC9BA7A8;
  *(ObjectType + 32) = xmmword_1EC9BA798;
  *(ObjectType + 48) = v61;
  *(v17 + 32) = v58;
  *(v17 + 48) = v59;
  *(v17 + 64) = v60;
  *(v17 + 80) = v61;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = v17;
  v243 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v62 = sub_1D7263BFC();
  }

  else
  {
    v62 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D5F0B6CC(ObjectType, v0 + 1488);
  v231 = v1;
  v232 = v3;
  if (v62)
  {
    ObjectType = 0;
    v241 = v1 & 0xC000000000000001;
    v233 = MEMORY[0x1E69E7CC0];
    v63 = &selRef_accountStore;
    v64 = &off_1E84D3000;
    v65 = &off_1E84D3000;
    v240 = v62;
LABEL_20:
    v66 = ObjectType;
    while (1)
    {
      if (v241)
      {
        v17 = MEMORY[0x1DA6FB460](v66, v1);
        ObjectType = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v66 >= *(v243 + 16))
        {
          goto LABEL_197;
        }

        v17 = *(v1 + 8 * v66 + 32);
        swift_unknownObjectRetain();
        ObjectType = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          swift_once();
          goto LABEL_16;
        }
      }

      swift_getObjectType();
      if ([v17 v63[49]])
      {
        v67 = sub_1D726203C();
        v68 = [objc_opt_self() systemImageNamed_];

        if (!v68)
        {
          goto LABEL_212;
        }

LABEL_36:
        swift_unknownObjectRetain();
        goto LABEL_44;
      }

      if ([v17 v64[465]])
      {
        v69 = sub_1D726203C();
        v68 = [objc_opt_self() systemImageNamed_];

        if (!v68)
        {
          goto LABEL_213;
        }

        goto LABEL_36;
      }

      if ([v17 v65[466]])
      {
        if (qword_1EDF05B68 != -1)
        {
          swift_once();
        }

        v70 = qword_1EDF05B70;
LABEL_43:
        swift_unknownObjectRetain();
        v68 = v70;
LABEL_44:
        v71 = [v17 identifier];
        v72 = sub_1D726207C();
        v74 = v73;

        swift_unknownObjectRelease();
        v75 = [v17 displayName];
        v76 = sub_1D726207C();
        v78 = v77;

        v79 = sub_1D62E5CE0();
        v81 = v80;
        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = sub_1D699046C(0, *(v233 + 2) + 1, 1, v233);
        }

        v83 = *(v233 + 2);
        v82 = *(v233 + 3);
        v17 = v83 + 1;
        if (v83 >= v82 >> 1)
        {
          v233 = sub_1D699046C((v82 > 1), v83 + 1, 1, v233);
        }

        *(v233 + 2) = v17;
        v84 = &v233[64 * v83];
        *(v84 + 4) = v72;
        *(v84 + 5) = v74;
        *(v84 + 6) = v68;
        v84[56] = 0;
        *(v84 + 15) = *(&v244 + 3);
        *(v84 + 57) = v244;
        *(v84 + 8) = v76;
        *(v84 + 9) = v78;
        *(v84 + 10) = v79;
        *(v84 + 11) = v81;
        v0 = v239;
        v85 = v240;
        v1 = v231;
        v3 = v232;
        v65 = &off_1E84D3000;
        v63 = &selRef_accountStore;
        v64 = &off_1E84D3000;
        if (ObjectType == v240)
        {
          goto LABEL_49;
        }

        goto LABEL_20;
      }

      if ([v17 isRecipeCatalog])
      {
        if (qword_1EDF05C38 != -1)
        {
          swift_once();
        }

        v70 = qword_1EDF05C40;
        goto LABEL_43;
      }

      swift_unknownObjectRelease();
      ++v66;
      if (ObjectType == v240)
      {
        v85 = v240;
LABEL_49:
        *(v3 + 56) = 1937204558;
        *(v3 + 64) = 0xE400000000000000;
        *(v3 + 72) = v233;
        ObjectType = MEMORY[0x1E69E7CC0];
        v86 = v0 + 760;
        v87 = 0;
        while (1)
        {
LABEL_50:
          if (v241)
          {
            v17 = MEMORY[0x1DA6FB460](v87, v1);
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_198;
            }
          }

          else
          {
            if (v87 >= *(v243 + 16))
            {
              goto LABEL_199;
            }

            v17 = *(v1 + 8 * v87 + 32);
            swift_unknownObjectRetain();
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_198;
            }
          }

          swift_getObjectType();
          if ([v17 isSports])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v87;
          if (v88 == v85)
          {
            goto LABEL_91;
          }
        }

        v89 = [swift_unknownObjectRetain() identifier];
        v234 = sub_1D726207C();
        v229 = v90;

        swift_unknownObjectRelease();
        v91 = [v17 displayName];
        v224 = sub_1D726207C();
        v219 = v92;

        v93 = sub_1D62E5CE0();
        v214 = v94;
        v95 = [swift_unknownObjectRetain() identifier];
        v96 = sub_1D726207C();
        v98 = v97;

        *(v0 + 744) = 0;
        *(v0 + 752) = 1;
        *v86 = 0u;
        *(v86 + 16) = 0u;
        *(v86 + 32) = 0u;
        *(v86 + 48) = 0;
        *(v0 + 664) = v96;
        *(v0 + 672) = v98;
        *(v0 + 680) = v17;
        *(v0 + 688) = 0;
        *(v0 + 712) = 0;
        *(v0 + 720) = 0xE000000000000000;
        *(v0 + 696) = 0;
        *(v0 + 704) = 0;
        *(v0 + 728) = 0;
        *(v0 + 736) = MEMORY[0x1E69E7CD0];
        v99 = [v17 feedNavImageAssetHandle];
        if (v99)
        {
          v100 = v99;
          swift_unknownObjectRelease();
          sub_1D5EE5B54(v0 + 664);
          v85 = v240;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_58:
            v1 = v231;
            v102 = *(ObjectType + 16);
            v101 = *(ObjectType + 24);
            v17 = v102 + 1;
            if (v102 >= v101 >> 1)
            {
              ObjectType = sub_1D699046C((v101 > 1), v102 + 1, 1, ObjectType);
            }

            *(ObjectType + 16) = v17;
            v103 = ObjectType + (v102 << 6);
            *(v103 + 32) = v234;
            *(v103 + 40) = v229;
            *(v103 + 48) = v100;
            *(v103 + 56) = 1;
            *(v103 + 60) = *(&v244 + 3);
            *(v103 + 57) = v244;
            *(v103 + 64) = v224;
            *(v103 + 72) = v219;
            *(v103 + 80) = v93;
            *(v103 + 88) = v214;
            v0 = v239;
            v3 = v232;
            if (v88 == v85)
            {
LABEL_91:
              *(v3 + 80) = 0x7374726F7053;
              *(v3 + 88) = 0xE600000000000000;
              *(v3 + 96) = ObjectType;
              ObjectType = MEMORY[0x1E69E7CC0];
              v123 = 0;
              while (2)
              {
                v124 = v123;
                while (1)
                {
                  if (v241)
                  {
                    v17 = MEMORY[0x1DA6FB460](v124, v1);
                    v123 = v124 + 1;
                    if (__OFADD__(v124, 1))
                    {
                      goto LABEL_200;
                    }
                  }

                  else
                  {
                    if (v124 >= *(v243 + 16))
                    {
                      goto LABEL_201;
                    }

                    v17 = *(v1 + 8 * v124 + 32);
                    swift_unknownObjectRetain();
                    v123 = v124 + 1;
                    if (__OFADD__(v124, 1))
                    {
                      goto LABEL_200;
                    }
                  }

                  swift_getObjectType();
                  if ([v17 isPuzzleType])
                  {
                    break;
                  }

                  swift_unknownObjectRelease();
                  ++v124;
                  if (v123 == v85)
                  {
                    goto LABEL_118;
                  }
                }

                v125 = [swift_unknownObjectRetain() identifier];
                v235 = sub_1D726207C();
                v225 = v126;

                swift_unknownObjectRelease();
                v127 = [v17 displayName];
                v128 = sub_1D726207C();
                v215 = v129;
                v220 = v128;

                v130 = sub_1D62E5CE0();
                v211 = v131;
                v132 = [swift_unknownObjectRetain() identifier];
                v133 = sub_1D726207C();
                v135 = v134;

                *(v0 + 896) = xmmword_1D7279980;
                *(v0 + 912) = 0u;
                *(v0 + 928) = 0u;
                *(v0 + 944) = 0u;
                *(v0 + 960) = 0;
                *(v0 + 816) = v133;
                *(v0 + 824) = v135;
                *(v0 + 832) = v17;
                *(v0 + 840) = 0;
                *(v0 + 864) = 0;
                *(v0 + 872) = 0xE000000000000000;
                *(v0 + 848) = 0;
                *(v0 + 856) = 0;
                *(v0 + 880) = 0;
                *(v0 + 888) = MEMORY[0x1E69E7CD0];
                v136 = [v17 feedNavImageAssetHandle];
                if (!v136)
                {
                  v141 = [v17 asSports];
                  v85 = v240;
                  if (!v141 || (v142 = [v141 sportsTheme], swift_unknownObjectRelease(), !v142) || (v137 = objc_msgSend(v142, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v137))
                  {
                    v143 = [v17 asSports];
                    if (!v143 || (v144 = [v143 sportsTheme], swift_unknownObjectRelease(), !v144))
                    {
                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v239 + 816);
                      v137 = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_104;
                    }

                    v137 = [v144 sportsLogoImageCompactAssetHandle];
                    swift_unknownObjectRelease();
                  }

                  swift_unknownObjectRelease();
                  sub_1D5EE5B54(v239 + 816);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_104;
                }

                v137 = v136;
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v0 + 816);
                v85 = v240;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_104;
                }

LABEL_115:
                ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
LABEL_104:
                v1 = v231;
                v139 = *(ObjectType + 16);
                v138 = *(ObjectType + 24);
                v17 = v139 + 1;
                if (v139 >= v138 >> 1)
                {
                  ObjectType = sub_1D699046C((v138 > 1), v139 + 1, 1, ObjectType);
                }

                *(ObjectType + 16) = v17;
                v140 = ObjectType + (v139 << 6);
                *(v140 + 32) = v235;
                *(v140 + 40) = v225;
                *(v140 + 48) = v137;
                *(v140 + 56) = 1;
                *(v140 + 60) = *(&v244 + 3);
                *(v140 + 57) = v244;
                *(v140 + 64) = v220;
                *(v140 + 72) = v215;
                *(v140 + 80) = v130;
                *(v140 + 88) = v211;
                v0 = v239;
                v3 = v232;
                if (v123 != v85)
                {
                  continue;
                }

                break;
              }

LABEL_118:
              *(v3 + 104) = 0x73656C7A7A7550;
              *(v3 + 112) = 0xE700000000000000;
              *(v3 + 120) = ObjectType;
              ObjectType = 0;
              v226 = v0 + 1064;
              v236 = MEMORY[0x1E69E7CC0];
              while (2)
              {
                v145 = ObjectType;
                while (1)
                {
                  if (v241)
                  {
                    v17 = MEMORY[0x1DA6FB460](v145, v1);
                    ObjectType = v145 + 1;
                    if (__OFADD__(v145, 1))
                    {
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                    if (v145 >= *(v243 + 16))
                    {
                      goto LABEL_203;
                    }

                    v17 = *(v1 + 8 * v145 + 32);
                    swift_unknownObjectRetain();
                    ObjectType = v145 + 1;
                    if (__OFADD__(v145, 1))
                    {
                      goto LABEL_202;
                    }
                  }

                  swift_getObjectType();
                  if ([v17 isLocal])
                  {
                    break;
                  }

                  swift_unknownObjectRelease();
                  ++v145;
                  if (ObjectType == v85)
                  {
                    goto LABEL_145;
                  }
                }

                v146 = [swift_unknownObjectRetain() identifier];
                v147 = sub_1D726207C();
                v216 = v148;
                v221 = v147;

                swift_unknownObjectRelease();
                v149 = [v17 displayName];
                v150 = sub_1D726207C();
                v209 = v151;
                v212 = v150;

                v152 = sub_1D62E5CE0();
                v208 = v153;
                v154 = [swift_unknownObjectRetain() identifier];
                v155 = sub_1D726207C();
                v157 = v156;

                *(v0 + 1048) = 0;
                *(v0 + 1056) = 1;
                *v226 = 0u;
                *(v226 + 16) = 0u;
                *(v226 + 32) = 0u;
                *(v226 + 48) = 0;
                *(v0 + 968) = v155;
                *(v0 + 976) = v157;
                *(v0 + 984) = v17;
                *(v0 + 992) = 0;
                *(v0 + 1016) = 0;
                *(v0 + 1024) = 0xE000000000000000;
                *(v0 + 1000) = 0;
                *(v0 + 1008) = 0;
                *(v0 + 1032) = 0;
                *(v0 + 1040) = MEMORY[0x1E69E7CD0];
                v158 = [v17 feedNavImageAssetHandle];
                if (v158)
                {
                  v159 = v158;
                  swift_unknownObjectRelease();
                  sub_1D5EE5B54(v0 + 968);
                  v85 = v240;
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    goto LABEL_131;
                  }

LABEL_142:
                  v236 = sub_1D699046C(0, *(v236 + 2) + 1, 1, v236);
LABEL_131:
                  v1 = v231;
                  v161 = *(v236 + 2);
                  v160 = *(v236 + 3);
                  v17 = v161 + 1;
                  if (v161 >= v160 >> 1)
                  {
                    v236 = sub_1D699046C((v160 > 1), v161 + 1, 1, v236);
                  }

                  *(v236 + 2) = v17;
                  v162 = &v236[64 * v161];
                  *(v162 + 4) = v221;
                  *(v162 + 5) = v216;
                  *(v162 + 6) = v159;
                  v162[56] = 1;
                  *(v162 + 15) = *(&v244 + 3);
                  *(v162 + 57) = v244;
                  *(v162 + 8) = v212;
                  *(v162 + 9) = v209;
                  *(v162 + 10) = v152;
                  *(v162 + 11) = v208;
                  v0 = v239;
                  v3 = v232;
                  if (ObjectType == v85)
                  {
LABEL_145:
                    *(v3 + 128) = 0x654E206C61636F4CLL;
                    *(v3 + 136) = 0xEA00000000007377;
                    *(v3 + 144) = v236;
                    ObjectType = MEMORY[0x1E69E7CC0];
                    v167 = 0;
                    v0 += 1216;
                    v168 = MEMORY[0x1E69E7CC0];
                    do
                    {
                      v3 = v167;
                      while (1)
                      {
                        if (v241)
                        {
                          v169 = MEMORY[0x1DA6FB460](v3, v1);
                          v167 = v3 + 1;
                          if (__OFADD__(v3, 1))
                          {
                            goto LABEL_204;
                          }
                        }

                        else
                        {
                          if (v3 >= *(v243 + 16))
                          {
                            goto LABEL_205;
                          }

                          v169 = *(v1 + 8 * v3 + 32);
                          swift_unknownObjectRetain();
                          v167 = v3 + 1;
                          if (__OFADD__(v3, 1))
                          {
                            goto LABEL_204;
                          }
                        }

                        ObjectType = swift_getObjectType();
                        v17 = v169;
                        if (FCTagProviding.isChannel.getter(ObjectType) && ![v169 isLocal] && (objc_msgSend(v169, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v169, sel_isMySports) & 1) == 0 && (objc_msgSend(v169, sel_isPuzzleHub) & 1) == 0 && (objc_msgSend(v169, sel_isRecipeCatalog) & 1) == 0)
                        {
                          break;
                        }

                        swift_unknownObjectRelease();
                        ++v3;
                        if (v167 == v240)
                        {
                          goto LABEL_166;
                        }
                      }

                      v170 = [swift_unknownObjectRetain() identifier];
                      v237 = sub_1D726207C();
                      v227 = v171;

                      swift_unknownObjectRelease();
                      v172 = [v169 displayName];
                      v173 = sub_1D726207C();
                      v217 = v174;
                      v222 = v173;

                      v175 = sub_1D62E5CE0();
                      v210 = v176;
                      v213 = v175;
                      v177 = [swift_unknownObjectRetain() identifier];
                      ObjectType = sub_1D726207C();
                      v179 = v178;

                      *(v239 + 1200) = xmmword_1D7279980;
                      *v0 = 0u;
                      *(v0 + 16) = 0u;
                      *(v0 + 32) = 0u;
                      *(v0 + 48) = 0;
                      *(v239 + 1120) = ObjectType;
                      *(v239 + 1128) = v179;
                      *(v239 + 1136) = v169;
                      *(v239 + 1144) = 0;
                      *(v239 + 1168) = 0;
                      *(v239 + 1176) = 0xE000000000000000;
                      *(v239 + 1152) = 0;
                      *(v239 + 1160) = 0;
                      *(v239 + 1184) = 0;
                      *(v239 + 1192) = MEMORY[0x1E69E7CD0];
                      v17 = FeedTag.debugAssetHandle.getter();
                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v239 + 1120);
                      LOBYTE(v244) = 1;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v168 = sub_1D699046C(0, *(v168 + 2) + 1, 1, v168);
                      }

                      v182 = *(v168 + 2);
                      v181 = *(v168 + 3);
                      if (v182 >= v181 >> 1)
                      {
                        v168 = sub_1D699046C((v181 > 1), v182 + 1, 1, v168);
                      }

                      *(v168 + 2) = v182 + 1;
                      v183 = &v168[64 * v182];
                      *(v183 + 4) = v237;
                      *(v183 + 5) = v227;
                      *(v183 + 6) = v17;
                      v183[56] = 1;
                      *(v183 + 57) = v244;
                      *(v183 + 15) = *(&v244 + 3);
                      *(v183 + 8) = v222;
                      *(v183 + 9) = v217;
                      *(v183 + 10) = v213;
                      *(v183 + 11) = v210;
                      v1 = v231;
                    }

                    while (v167 != v240);
LABEL_166:
                    v3 = v232;
                    v232[19] = 0x736C656E6E616843;
                    v232[20] = 0xE800000000000000;
                    v232[21] = v168;
                    v184 = 0;
                    v0 = v239;
                    ObjectType = MEMORY[0x1E69E7CC0];
                    while (2)
                    {
                      v185 = v184;
                      while (1)
                      {
                        if (v241)
                        {
                          v17 = MEMORY[0x1DA6FB460](v185, v1);
                          v184 = v185 + 1;
                          if (__OFADD__(v185, 1))
                          {
                            goto LABEL_207;
                          }
                        }

                        else
                        {
                          if (v185 >= *(v243 + 16))
                          {
                            goto LABEL_208;
                          }

                          v17 = *(v1 + 8 * v185 + 32);
                          swift_unknownObjectRetain();
                          v184 = v185 + 1;
                          if (__OFADD__(v185, 1))
                          {
                            goto LABEL_207;
                          }
                        }

                        v186 = swift_getObjectType();
                        if (FCTagProviding.isTopic.getter(v186) && ![v17 isSports] && (objc_msgSend(v17, sel_isFoodHub) & 1) == 0)
                        {
                          break;
                        }

                        swift_unknownObjectRelease();
                        ++v185;
                        if (v184 == v240)
                        {
                          goto LABEL_76;
                        }
                      }

                      v187 = [swift_unknownObjectRetain() identifier];
                      v188 = sub_1D726207C();
                      v238 = v189;

                      swift_unknownObjectRelease();
                      v190 = [v17 displayName];
                      v191 = sub_1D726207C();
                      v228 = v192;
                      v230 = v191;

                      v193 = sub_1D62E5CE0();
                      v218 = v194;
                      v223 = v193;
                      v195 = [swift_unknownObjectRetain() identifier];
                      v196 = sub_1D726207C();
                      v198 = v197;

                      *(v0 + 1352) = 0;
                      *(v0 + 1360) = 1;
                      *(v239 + 1368) = 0u;
                      *(v239 + 1384) = 0u;
                      *(v239 + 1400) = 0u;
                      *(v239 + 1416) = 0;
                      *(v0 + 1272) = v196;
                      *(v0 + 1280) = v198;
                      *(v0 + 1288) = v17;
                      *(v0 + 1296) = 0;
                      *(v0 + 1320) = 0;
                      *(v0 + 1328) = 0xE000000000000000;
                      *(v0 + 1304) = 0;
                      *(v0 + 1312) = 0;
                      *(v0 + 1336) = 0;
                      *(v0 + 1344) = MEMORY[0x1E69E7CD0];
                      v199 = [v17 feedNavImageAssetHandle];
                      if (v199)
                      {
                        v200 = v199;
                        swift_unknownObjectRelease();
                        sub_1D5EE5B54(v0 + 1272);
                        v1 = v231;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_181;
                        }

LABEL_192:
                        ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
LABEL_181:
                        v202 = *(ObjectType + 16);
                        v201 = *(ObjectType + 24);
                        v17 = v202 + 1;
                        if (v202 >= v201 >> 1)
                        {
                          ObjectType = sub_1D699046C((v201 > 1), v202 + 1, 1, ObjectType);
                        }

                        *(ObjectType + 16) = v17;
                        v203 = ObjectType + (v202 << 6);
                        *(v203 + 32) = v188;
                        *(v203 + 40) = v238;
                        *(v203 + 48) = v200;
                        *(v203 + 56) = 1;
                        *(v203 + 60) = *(&v244 + 3);
                        *(v203 + 57) = v244;
                        *(v203 + 64) = v230;
                        *(v203 + 72) = v228;
                        *(v203 + 80) = v223;
                        *(v203 + 88) = v218;
                        v0 = v239;
                        v3 = v232;
                        if (v184 == v240)
                        {
                          goto LABEL_76;
                        }

                        continue;
                      }

                      break;
                    }

                    v204 = [v17 asSports];
                    v1 = v231;
                    if (!v204 || (v205 = [v204 sportsTheme], swift_unknownObjectRelease(), !v205) || (v200 = objc_msgSend(v205, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v200))
                    {
                      v206 = [v17 asSports];
                      if (!v206 || (v207 = [v206 sportsTheme], swift_unknownObjectRelease(), !v207))
                      {
                        swift_unknownObjectRelease();
                        sub_1D5EE5B54(v239 + 1272);
                        v200 = 0;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          goto LABEL_192;
                        }

                        goto LABEL_181;
                      }

                      v200 = [v207 sportsLogoImageCompactAssetHandle];
                      swift_unknownObjectRelease();
                    }

                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v239 + 1272);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      goto LABEL_192;
                    }

                    goto LABEL_181;
                  }

                  continue;
                }

                break;
              }

              v163 = [v17 asSports];
              v85 = v240;
              if (!v163 || (v164 = [v163 sportsTheme], swift_unknownObjectRelease(), !v164) || (v159 = objc_msgSend(v164, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v159))
              {
                v165 = [v17 asSports];
                if (!v165 || (v166 = [v165 sportsTheme], swift_unknownObjectRelease(), !v166))
                {
                  swift_unknownObjectRelease();
                  sub_1D5EE5B54(v239 + 968);
                  v159 = 0;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_131;
                }

                v159 = [v166 sportsLogoImageCompactAssetHandle];
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              sub_1D5EE5B54(v239 + 968);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_142;
              }

              goto LABEL_131;
            }

            v87 = v88;
            goto LABEL_50;
          }
        }

        else
        {
          v104 = [v17 asSports];
          v85 = v240;
          if (!v104 || (v105 = [v104 sportsTheme], swift_unknownObjectRelease(), !v105) || (v100 = objc_msgSend(v105, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v100))
          {
            v106 = [v17 asSports];
            if (!v106 || (v107 = [v106 sportsTheme], swift_unknownObjectRelease(), !v107))
            {
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v239 + 664);
              v100 = 0;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_58;
              }

              goto LABEL_69;
            }

            v100 = [v107 sportsLogoImageCompactAssetHandle];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          sub_1D5EE5B54(v239 + 664);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_58;
          }
        }

LABEL_69:
        ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
        goto LABEL_58;
      }
    }
  }

  *(v3 + 56) = 1937204558;
  *(v3 + 64) = 0xE400000000000000;
  *(v3 + 72) = MEMORY[0x1E69E7CC0];
  *(v3 + 80) = 0x7374726F7053;
  *(v3 + 88) = 0xE600000000000000;
  ObjectType = MEMORY[0x1E69E7CC0];
  *(v3 + 96) = MEMORY[0x1E69E7CC0];
  *(v3 + 104) = 0x73656C7A7A7550;
  *(v3 + 112) = 0xE700000000000000;
  *(v3 + 120) = ObjectType;
  *(v3 + 128) = 0x654E206C61636F4CLL;
  *(v3 + 136) = 0xEA00000000007377;
  *(v3 + 144) = ObjectType;
  *(v3 + 152) = 0x736C656E6E616843;
  *(v3 + 160) = 0xE800000000000000;
  *(v3 + 168) = ObjectType;
LABEL_76:

  v108 = 0;
  *(v3 + 176) = 0x736369706F54;
  *(v3 + 184) = 0xE600000000000000;
  *(v3 + 192) = ObjectType;
  v109 = v3 + 48;
  v17 = MEMORY[0x1E69E7CC0];
  v110 = 7;
  ObjectType = 24;
LABEL_77:
  if (v108 > 7)
  {
    v110 = v108;
  }

  v111 = v109 + 24 * v108;
  v112 = v110 + 1;
  while (v108 != 7)
  {
    if (v112 == ++v108)
    {
      __break(1u);
      goto LABEL_196;
    }

    v113 = v111 + 24;
    v114 = *v111;
    v115 = *(*v111 + 16);
    v111 += 24;
    if (v115)
    {
      v117 = *(v113 - 40);
      v116 = *(v113 - 32);

      v244 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6997F54(0, *(v17 + 16) + 1, 1);
      }

      v119 = *(v17 + 16);
      v118 = *(v17 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_1D6997F54((v118 > 1), v119 + 1, 1);
      }

      *(v17 + 16) = v119 + 1;
      v120 = (v17 + 24 * v119);
      v120[4] = v117;
      v120[5] = v116;
      v120[6] = v114;
      v0 = v239;
      v1 = v231;
      v3 = v232;
      v110 = 7;
      goto LABEL_77;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v121 = *(v0 + 8);

  return v121(v17);
}

uint64_t sub_1D5F075A8()
{
  *(*v1 + 1736) = v0;

  if (v0)
  {

    v2 = sub_1D5F096F4;
  }

  else
  {

    v2 = sub_1D5F076F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5F076F0()
{
  v1 = v0;
  v2 = v0[207];
  v3 = v0[200];
  v4 = &OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;
  sub_1D5F0B788(v3 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v2, type metadata accessor for GroupLayoutBindingContext);
  v5 = sub_1D62EF50C();
  sub_1D5F0B728(v2, type metadata accessor for GroupLayoutBindingContext);
  ObjectType = v0[217];
  v7 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_232;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = *(v1 + 1712);
  v10 = (v9 >> 62);
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v8 + v11;
    if (!__OFADD__(v11, v8))
    {
      goto LABEL_5;
    }

LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v213 = sub_1D7263BFC();
  v12 = v8 + v213;
  if (__OFADD__(v213, v8))
  {
    goto LABEL_235;
  }

LABEL_5:
  v249 = v8;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v10)
  {
LABEL_11:
    sub_1D7263BFC();
    goto LABEL_12;
  }

  v10 = (v9 & 0xFFFFFFFFFFFFFF8);
  v8 = (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1);
  if (v8 >= v12)
  {
    v17 = *(v1 + 1712);
    goto LABEL_13;
  }

LABEL_12:
  v17 = sub_1D7263DDC();
  v10 = (v17 & 0xFFFFFFFFFFFFFF8);
  v8 = (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1);
LABEL_13:
  v12 = v10[2];
  v246 = v17;
  if (!v7)
  {
    v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v237 = v1;
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v249 <= 0)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_22;
  }

  v17 = sub_1D7263BFC();
  v18 = v17;
  v237 = v1;
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_15:
  v19 = v8 - v12;
  v8 = v249;
  if (v19 < v249)
  {
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    swift_once();
    goto LABEL_40;
  }

  v3 = &v10[v12 + 4];
  if (!v7)
  {
    sub_1D5B65AF4();
    swift_arrayInitWithCopy();

    if (v249 <= 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (v18 < 1)
  {
    goto LABEL_243;
  }

  v239 = ObjectType;
  v20 = (v1 + 1552);
  sub_1D5C44878(0);
  v12 = sub_1D5C44F84(&qword_1EC88E4D0, MEMORY[0x1E69E6340]);
  for (i = 0; i != v18; ++i)
  {
    v22 = sub_1D6D87860(v20, i, v5);
    v24 = *v23;
    swift_unknownObjectRetain();
    (v22)(v20, 0);
    *(v3 + 8 * i) = v24;
  }

  v1 = v237;
  ObjectType = v239;
  v4 = &OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;
  v8 = v249;
  if (v249 > 0)
  {
LABEL_26:
    v25 = v10[2];
    v26 = __OFADD__(v25, v8);
    v27 = v8 + v25;
    if (!v26)
    {
      v10[2] = v27;
      goto LABEL_28;
    }

    __break(1u);
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

LABEL_28:
  v28 = *(v1 + 1704) + 1;
  if (v28 != *(v1 + 1696))
  {
    *(v1 + 1712) = v246;
    *(v1 + 1704) = v28;
    v63 = *(v1 + 1688);
    if (v28 < *(v63 + 16))
    {
      v64 = *(v1 + 1680);
      sub_1D5F0B788(v63 + ((*(v1 + 964) + 32) & ~*(v1 + 964)) + *(*(v1 + 1672) + 72) * v28, v64, type metadata accessor for DebugFormatWorkspaceGroup);

      sub_1D5F0B728(v64, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();

      v65 = *(v1 + 1592);
      *(v1 + 1720) = v65;
      v66 = swift_task_alloc();
      *(v1 + 1728) = v66;
      v67 = type metadata accessor for DebugFormatBindingResult(0);
      v15 = sub_1D5BA6EF4();
      *v66 = v1;
      v66[1] = sub_1D5F075A8;
      v16 = MEMORY[0x1E69E7288];
      v17 = v1 + 1600;
      v13 = v65;
      v14 = v67;

      return MEMORY[0x1EEE6DA10](v17, v13, v14, v15, v16);
    }

    goto LABEL_239;
  }

  v29 = v1 + 232;
  v30 = (v1 + 1584);
  v31 = (v1 + 1608);
  *(v1 + 1584) = v246;

  sub_1D725B31C();

  v33 = *(v1 + 608);
  v32 = *(v1 + 624);
  v34 = *(v1 + 592);
  *(v1 + 392) = v33;
  *(v1 + 408) = v32;
  v35 = *(v1 + 624);
  *(v1 + 424) = *(v1 + 640);
  v37 = *(v1 + 544);
  v36 = *(v1 + 560);
  v38 = *(v1 + 528);
  *(v1 + 328) = v37;
  *(v1 + 344) = v36;
  v39 = *(v1 + 560);
  v41 = *(v1 + 576);
  v40 = *(v1 + 592);
  *(v1 + 360) = v41;
  *(v1 + 376) = v40;
  v43 = *(v1 + 480);
  v42 = *(v1 + 496);
  v44 = *(v1 + 464);
  *(v1 + 264) = v43;
  *(v1 + 280) = v42;
  v45 = *(v1 + 496);
  v47 = *(v1 + 512);
  v46 = *(v1 + 528);
  *(v1 + 296) = v47;
  *(v1 + 312) = v46;
  v48 = *(v1 + 464);
  v49 = *(v1 + 448);
  *(v1 + 232) = v49;
  *(v1 + 248) = v48;
  *(v1 + 176) = v33;
  *(v1 + 192) = v35;
  *(v1 + 208) = *(v1 + 640);
  *(v1 + 112) = v37;
  *(v1 + 128) = v39;
  *(v1 + 144) = v41;
  *(v1 + 160) = v34;
  *(v1 + 48) = v43;
  *(v1 + 64) = v45;
  *(v1 + 80) = v47;
  *(v1 + 96) = v38;
  *(v1 + 440) = *(v1 + 656);
  *(v1 + 224) = *(v1 + 656);
  *(v1 + 16) = v49;
  *(v1 + 32) = v44;
  if (sub_1D5DEA380(v1 + 16) != 1)
  {
    v50 = *(v1 + 224);
    v51 = v1;
    v52 = *(v50 + 16);
    if (v52)
    {
      v244 = v29;
      v247 = v31;
      v240 = ObjectType;
      v250 = v51[206];
      v53 = v51[205];
      v54 = *(v51[204] + 20);
      v55 = v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v56 = *(v53 + 72);

      do
      {
        v57 = v51[207];
        v58 = v30;
        v59 = v51[206];
        sub_1D5F0B788(v55, v59, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v60 = *(v250 + v54);

        sub_1D5F0B728(v59, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D5F0B788(v60 + *v4, v57, type metadata accessor for GroupLayoutBindingContext);

        v61 = sub_1D62EF50C();
        sub_1D5F0B728(v57, type metadata accessor for GroupLayoutBindingContext);
        v62 = v61;
        v30 = v58;
        sub_1D69856DC(v62);
        v55 += v56;
        --v52;
      }

      while (v52);
      sub_1D5F0B7F0(v244);

      v1 = v51;
      ObjectType = v240;
      v31 = v247;
    }

    else
    {
      sub_1D5F0B7F0(v29);
      v1 = v51;
    }
  }

  v8 = (v1 + 1424);
  *v31 = *v30;
  sub_1D5C44878(0);
  sub_1D5C44F84(&qword_1EDF1AEA0, MEMORY[0x1E69E6328]);

  sub_1D72623CC();
  swift_bridgeObjectRelease_n();
  sub_1D5B65AF4();
  v12 = sub_1D72626EC();

  v68 = MEMORY[0x1E69E6F90];
  sub_1D5B66EA4(0, &unk_1EC880D70, &type metadata for DebugFormatWorkspaceTagSection, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  sub_1D5B66EA4(0, &unk_1EC88F2B0, &type metadata for DebugFormatWorkspaceTagItem, v68);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v69 = qword_1EC87D4F8;

  if (v69 != -1)
  {
    goto LABEL_240;
  }

LABEL_40:
  v70 = xmmword_1EC9BA778;
  v71 = *&qword_1EC9BA788;
  *v8 = xmmword_1EC9BA778;
  v8[1] = v71;
  v72 = xmmword_1EC9BA798;
  v73 = *&qword_1EC9BA7A8;
  v8[2] = xmmword_1EC9BA798;
  v8[3] = v73;
  *(v5 + 32) = v70;
  *(v5 + 48) = v71;
  *(v5 + 64) = v72;
  *(v5 + 80) = v73;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v5;
  v7 = v12;
  v4 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v74 = sub_1D7263BFC();
  }

  else
  {
    v74 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D5F0B6CC(v8, v1 + 1488);
  v75 = MEMORY[0x1E69E7CC0];
  v238 = v7;
  v236 = v10;
  if (!v74)
  {
    v10[7] = 1937204558;
    v10[8] = 0xE400000000000000;
    v10[9] = v75;
    v10[10] = 0x7374726F7053;
    v10[11] = 0xE600000000000000;
    v5 = MEMORY[0x1E69E7CC0];
    v10[12] = MEMORY[0x1E69E7CC0];
    v10[13] = 0x73656C7A7A7550;
    v10[14] = 0xE700000000000000;
    v10[15] = v5;
    v10[16] = 0x654E206C61636F4CLL;
    v10[17] = 0xEA00000000007377;
    v10[18] = v5;
    v10[19] = 0x736C656E6E616843;
    v10[20] = 0xE800000000000000;
    v10[21] = v5;
    v12 = v10;
LABEL_100:

    v7 = 0;
    *(v12 + 176) = 0x736369706F54;
    *(v12 + 184) = 0xE600000000000000;
    *(v12 + 192) = v5;
    v118 = v12 + 48;
    v5 = MEMORY[0x1E69E7CC0];
    v3 = 24;
LABEL_101:
    if (v7 <= 7)
    {
      v119 = 7;
    }

    else
    {
      v119 = v7;
    }

    v120 = v118 + 24 * v7;
    v121 = v119 + 1;
    while (v7 != 7)
    {
      if (v121 == ++v7)
      {
        __break(1u);
        goto LABEL_222;
      }

      v122 = v120 + 24;
      v123 = *v120;
      v124 = *(*v120 + 16);
      v120 += 24;
      if (v124)
      {
        v125 = *(v122 - 40);
        ObjectType = *(v122 - 32);

        v252 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997F54(0, *(v5 + 16) + 1, 1);
        }

        v4 = *(v5 + 16);
        v126 = *(v5 + 24);
        if (v4 >= v126 >> 1)
        {
          sub_1D6997F54((v126 > 1), v4 + 1, 1);
        }

        *(v5 + 16) = v4 + 1;
        v127 = (v5 + 24 * v4);
        v127[4] = v125;
        v127[5] = ObjectType;
        v127[6] = v123;
        v1 = v237;
        goto LABEL_101;
      }
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v128 = *(v1 + 8);

    return v128(v5);
  }

  v3 = 0;
  v251 = v7 & 0xC000000000000001;
  v241 = MEMORY[0x1E69E7CC0];
  v76 = &off_1E84D3000;
  v245 = v4;
  v248 = v74;
LABEL_44:
  v77 = v3;
  while (1)
  {
    if (v251)
    {
      v5 = MEMORY[0x1DA6FB460](v77, v7);
      v3 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_222;
      }
    }

    else
    {
      if (v77 >= *(v4 + 16))
      {
        goto LABEL_223;
      }

      v5 = *(v7 + 8 * v77 + 32);
      swift_unknownObjectRetain();
      v3 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        v8 = sub_1D7263BFC();
        goto LABEL_3;
      }
    }

    ObjectType = swift_getObjectType();
    if ([v5 isMySports])
    {
      break;
    }

    if ([v5 isPuzzleHub])
    {
      v80 = sub_1D726203C();
      v79 = [objc_opt_self() systemImageNamed_];

      if (!v79)
      {
        goto LABEL_245;
      }

LABEL_60:
      swift_unknownObjectRetain();
      goto LABEL_68;
    }

    if ([v5 v76[466]])
    {
      if (qword_1EDF05B68 != -1)
      {
        swift_once();
      }

      v81 = qword_1EDF05B70;
LABEL_67:
      swift_unknownObjectRetain();
      v79 = v81;
LABEL_68:
      v82 = [v5 identifier];
      v83 = sub_1D726207C();
      v85 = v84;

      swift_unknownObjectRelease();
      v86 = [v5 displayName];
      v87 = sub_1D726207C();
      v89 = v88;

      v90 = sub_1D62E5CE0();
      ObjectType = v91;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v241 = sub_1D699046C(0, *(v241 + 2) + 1, 1, v241);
      }

      v93 = *(v241 + 2);
      v92 = *(v241 + 3);
      v5 = v93 + 1;
      if (v93 >= v92 >> 1)
      {
        v241 = sub_1D699046C((v92 > 1), v93 + 1, 1, v241);
      }

      *(v241 + 2) = v5;
      v94 = &v241[64 * v93];
      *(v94 + 4) = v83;
      *(v94 + 5) = v85;
      *(v94 + 6) = v79;
      v94[56] = 0;
      *(v94 + 15) = *(&v252 + 3);
      *(v94 + 57) = v252;
      *(v94 + 8) = v87;
      *(v94 + 9) = v89;
      *(v94 + 10) = v90;
      *(v94 + 11) = ObjectType;
      v4 = v245;
      v74 = v248;
      v1 = v237;
      v7 = v238;
      v10 = v236;
      v76 = &off_1E84D3000;
      if (v3 == v248)
      {
LABEL_73:
        v10[7] = 1937204558;
        v10[8] = 0xE400000000000000;
        v10[9] = v241;
        v3 = MEMORY[0x1E69E7CC0];
        v95 = v1 + 760;
        for (ObjectType = 0; ; ObjectType = v96)
        {
          while (1)
          {
            if (v251)
            {
              v5 = MEMORY[0x1DA6FB460](ObjectType, v7);
              v96 = ObjectType + 1;
              if (__OFADD__(ObjectType, 1))
              {
                goto LABEL_224;
              }
            }

            else
            {
              if (ObjectType >= *(v4 + 16))
              {
                goto LABEL_225;
              }

              v5 = *(v7 + 8 * ObjectType + 32);
              swift_unknownObjectRetain();
              v96 = ObjectType + 1;
              if (__OFADD__(ObjectType, 1))
              {
                goto LABEL_224;
              }
            }

            swift_getObjectType();
            if ([v5 isSports])
            {
              break;
            }

            swift_unknownObjectRelease();
            ++ObjectType;
            if (v96 == v248)
            {
              goto LABEL_116;
            }
          }

          v97 = [swift_unknownObjectRetain() identifier];
          v242 = sub_1D726207C();
          v231 = v98;

          swift_unknownObjectRelease();
          v99 = [v5 displayName];
          v226 = sub_1D726207C();
          v221 = v100;

          v101 = sub_1D62E5CE0();
          v103 = v102;
          v104 = [swift_unknownObjectRetain() identifier];
          v105 = sub_1D726207C();
          v107 = v106;

          *(v1 + 744) = 0;
          *(v1 + 752) = 1;
          *v95 = 0u;
          *(v95 + 16) = 0u;
          *(v95 + 32) = 0u;
          *(v95 + 48) = 0;
          *(v1 + 664) = v105;
          *(v1 + 672) = v107;
          *(v1 + 680) = v5;
          *(v1 + 688) = 0;
          *(v1 + 712) = 0;
          *(v1 + 720) = 0xE000000000000000;
          *(v1 + 696) = 0;
          *(v1 + 704) = 0;
          *(v1 + 728) = 0;
          *(v1 + 736) = MEMORY[0x1E69E7CD0];
          v108 = [v5 feedNavImageAssetHandle];
          if (v108)
          {
            break;
          }

          v114 = [v5 asSports];
          v10 = v236;
          if (v114)
          {
            v115 = [v114 sportsTheme];
            swift_unknownObjectRelease();
            if (v115)
            {
              v110 = [v115 sportsLogoImageAssetHandle];
              swift_unknownObjectRelease();
              if (v110)
              {
                goto LABEL_92;
              }
            }
          }

          v116 = [v5 asSports];
          if (v116)
          {
            v117 = [v116 sportsTheme];
            swift_unknownObjectRelease();
            if (v117)
            {
              v110 = [v117 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
LABEL_92:
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v237 + 664);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_82;
              }

LABEL_93:
              v3 = sub_1D699046C(0, *(v3 + 16) + 1, 1, v3);
              goto LABEL_82;
            }
          }

          swift_unknownObjectRelease();
          sub_1D5EE5B54(v237 + 664);
          v110 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_82:
          v112 = *(v3 + 16);
          v111 = *(v3 + 24);
          v5 = v112 + 1;
          if (v112 >= v111 >> 1)
          {
            v3 = sub_1D699046C((v111 > 1), v112 + 1, 1, v3);
          }

          *(v3 + 16) = v5;
          v113 = v3 + (v112 << 6);
          v7 = v238;
          *(v113 + 32) = v242;
          *(v113 + 40) = v231;
          *(v113 + 48) = v110;
          *(v113 + 56) = 1;
          *(v113 + 60) = *(&v252 + 3);
          *(v113 + 57) = v252;
          *(v113 + 64) = v226;
          *(v113 + 72) = v221;
          *(v113 + 80) = v101;
          *(v113 + 88) = v103;
          v1 = v237;
          v4 = v245;
          if (v96 == v248)
          {
LABEL_116:
            v10[10] = 0x7374726F7053;
            v10[11] = 0xE600000000000000;
            v10[12] = v3;
            v5 = MEMORY[0x1E69E7CC0];
            v130 = 0;
            v3 = MEMORY[0x1E69E7CC0];
            v4 = &off_1E84D3000;
            while (2)
            {
              ObjectType = v130;
              while (1)
              {
                if (v251)
                {
                  v5 = MEMORY[0x1DA6FB460](ObjectType, v7);
                  v130 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_226;
                  }
                }

                else
                {
                  if (ObjectType >= *(v245 + 16))
                  {
                    goto LABEL_227;
                  }

                  v5 = *(v7 + 8 * ObjectType + 32);
                  swift_unknownObjectRetain();
                  v130 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_226;
                  }
                }

                swift_getObjectType();
                if ([v5 isPuzzleType])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++ObjectType;
                if (v130 == v248)
                {
                  goto LABEL_143;
                }
              }

              v131 = [swift_unknownObjectRetain() identifier];
              v132 = sub_1D726207C();
              v227 = v133;
              v232 = v132;

              swift_unknownObjectRelease();
              v134 = [v5 displayName];
              v135 = sub_1D726207C();
              v217 = v136;
              v222 = v135;

              v137 = sub_1D62E5CE0();
              v139 = v138;
              v140 = [swift_unknownObjectRetain() identifier];
              v141 = sub_1D726207C();
              v143 = v142;

              *(v1 + 896) = xmmword_1D7279980;
              *(v1 + 912) = 0u;
              *(v1 + 928) = 0u;
              *(v1 + 944) = 0u;
              *(v1 + 960) = 0;
              *(v1 + 816) = v141;
              *(v1 + 824) = v143;
              *(v1 + 832) = v5;
              *(v1 + 840) = 0;
              *(v1 + 864) = 0;
              *(v1 + 872) = 0xE000000000000000;
              *(v1 + 848) = 0;
              *(v1 + 856) = 0;
              *(v1 + 880) = 0;
              *(v1 + 888) = MEMORY[0x1E69E7CD0];
              v144 = [v5 feedNavImageAssetHandle];
              if (!v144)
              {
                v150 = [v5 asSports];
                v10 = v236;
                if (!v150 || (v151 = [v150 sportsTheme], swift_unknownObjectRelease(), !v151) || (v146 = objc_msgSend(v151, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v146))
                {
                  v152 = [v5 asSports];
                  if (!v152 || (v153 = [v152 sportsTheme], swift_unknownObjectRelease(), !v153))
                  {
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v237 + 816);
                    v146 = 0;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      goto LABEL_140;
                    }

                    goto LABEL_129;
                  }

                  v146 = [v153 sportsLogoImageCompactAssetHandle];
                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
                sub_1D5EE5B54(v237 + 816);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_140;
                }

                goto LABEL_129;
              }

              v145 = v1;
              v146 = v144;
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v145 + 816);
              v10 = v236;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_129;
              }

LABEL_140:
              v3 = sub_1D699046C(0, *(v3 + 16) + 1, 1, v3);
LABEL_129:
              v148 = *(v3 + 16);
              v147 = *(v3 + 24);
              v5 = v148 + 1;
              if (v148 >= v147 >> 1)
              {
                v3 = sub_1D699046C((v147 > 1), v148 + 1, 1, v3);
              }

              *(v3 + 16) = v5;
              v149 = v3 + (v148 << 6);
              *(v149 + 32) = v232;
              *(v149 + 40) = v227;
              *(v149 + 48) = v146;
              *(v149 + 56) = 1;
              *(v149 + 60) = *(&v252 + 3);
              *(v149 + 57) = v252;
              *(v149 + 64) = v222;
              *(v149 + 72) = v217;
              *(v149 + 80) = v137;
              *(v149 + 88) = v139;
              v1 = v237;
              v7 = v238;
              if (v130 != v248)
              {
                continue;
              }

              break;
            }

LABEL_143:
            v10[13] = 0x73656C7A7A7550;
            v10[14] = 0xE700000000000000;
            v10[15] = v3;
            v5 = MEMORY[0x1E69E7CC0];
            v154 = 0;
            v233 = v1 + 1064;
            v3 = MEMORY[0x1E69E7CC0];
            while (2)
            {
              ObjectType = v154;
              while (1)
              {
                if (v251)
                {
                  v5 = MEMORY[0x1DA6FB460](ObjectType, v7);
                  v154 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_228;
                  }
                }

                else
                {
                  if (ObjectType >= *(v245 + 16))
                  {
                    goto LABEL_229;
                  }

                  v5 = *(v7 + 8 * ObjectType + 32);
                  swift_unknownObjectRetain();
                  v154 = ObjectType + 1;
                  if (__OFADD__(ObjectType, 1))
                  {
                    goto LABEL_228;
                  }
                }

                swift_getObjectType();
                if ([v5 isLocal])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++ObjectType;
                v12 = v248;
                if (v154 == v248)
                {
                  goto LABEL_170;
                }
              }

              v155 = [swift_unknownObjectRetain() identifier];
              v228 = sub_1D726207C();
              v223 = v156;

              swift_unknownObjectRelease();
              v157 = [v5 displayName];
              v158 = sub_1D726207C();
              v215 = v159;
              v218 = v158;

              v160 = sub_1D62E5CE0();
              v214 = v161;
              v162 = [swift_unknownObjectRetain() identifier];
              v163 = sub_1D726207C();
              v165 = v164;

              *(v1 + 1048) = 0;
              *(v1 + 1056) = 1;
              *v233 = 0u;
              *(v233 + 16) = 0u;
              *(v233 + 32) = 0u;
              *(v233 + 48) = 0;
              *(v1 + 968) = v163;
              *(v1 + 976) = v165;
              *(v1 + 984) = v5;
              *(v1 + 992) = 0;
              *(v1 + 1016) = 0;
              *(v1 + 1024) = 0xE000000000000000;
              *(v1 + 1000) = 0;
              *(v1 + 1008) = 0;
              *(v1 + 1032) = 0;
              *(v1 + 1040) = MEMORY[0x1E69E7CD0];
              v166 = [v5 feedNavImageAssetHandle];
              if (v166)
              {
                v167 = v1;
                v168 = v166;
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v167 + 968);
                v10 = v236;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_156;
                }

LABEL_167:
                v3 = sub_1D699046C(0, *(v3 + 16) + 1, 1, v3);
LABEL_156:
                v12 = v248;
                v170 = *(v3 + 16);
                v169 = *(v3 + 24);
                v5 = v170 + 1;
                if (v170 >= v169 >> 1)
                {
                  v3 = sub_1D699046C((v169 > 1), v170 + 1, 1, v3);
                }

                *(v3 + 16) = v5;
                v171 = v3 + (v170 << 6);
                *(v171 + 32) = v228;
                *(v171 + 40) = v223;
                *(v171 + 48) = v168;
                *(v171 + 56) = 1;
                *(v171 + 60) = *(&v252 + 3);
                *(v171 + 57) = v252;
                *(v171 + 64) = v218;
                *(v171 + 72) = v215;
                *(v171 + 80) = v160;
                *(v171 + 88) = v214;
                v1 = v237;
                v7 = v238;
                if (v154 == v248)
                {
LABEL_170:
                  v10[16] = 0x654E206C61636F4CLL;
                  v10[17] = 0xEA00000000007377;
                  v10[18] = v3;
                  v5 = MEMORY[0x1E69E7CC0];
                  v7 = 0;
                  v176 = v1 + 1216;
                  ObjectType = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v1 = v7;
                    while (1)
                    {
                      if (v251)
                      {
                        v177 = MEMORY[0x1DA6FB460](v1, v238);
                        v7 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_230;
                        }
                      }

                      else
                      {
                        if (v1 >= *(v245 + 16))
                        {
                          goto LABEL_231;
                        }

                        v177 = *(v238 + 8 * v1 + 32);
                        swift_unknownObjectRetain();
                        v7 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_230;
                        }
                      }

                      v3 = swift_getObjectType();
                      v5 = v177;
                      if (FCTagProviding.isChannel.getter(v3) && ![v177 isLocal] && (objc_msgSend(v177, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v177, sel_isMySports) & 1) == 0 && (objc_msgSend(v177, sel_isPuzzleHub) & 1) == 0 && (objc_msgSend(v177, sel_isRecipeCatalog) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++v1;
                      if (v7 == v12)
                      {
                        goto LABEL_191;
                      }
                    }

                    v178 = [swift_unknownObjectRetain() identifier];
                    v179 = sub_1D726207C();
                    v229 = v180;
                    v234 = v179;

                    swift_unknownObjectRelease();
                    v181 = [v177 displayName];
                    v182 = sub_1D726207C();
                    v219 = v183;
                    v224 = v182;

                    v184 = sub_1D62E5CE0();
                    v214 = v185;
                    v216 = v184;
                    v186 = [swift_unknownObjectRetain() identifier];
                    v3 = sub_1D726207C();
                    v188 = v187;

                    *(v237 + 1200) = xmmword_1D7279980;
                    *v176 = 0u;
                    *(v176 + 16) = 0u;
                    *(v176 + 32) = 0u;
                    *(v176 + 48) = 0;
                    *(v237 + 1120) = v3;
                    *(v237 + 1128) = v188;
                    *(v237 + 1136) = v177;
                    *(v237 + 1144) = 0;
                    *(v237 + 1168) = 0;
                    *(v237 + 1176) = 0xE000000000000000;
                    *(v237 + 1152) = 0;
                    *(v237 + 1160) = 0;
                    *(v237 + 1184) = 0;
                    *(v237 + 1192) = MEMORY[0x1E69E7CD0];
                    v5 = FeedTag.debugAssetHandle.getter();
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v237 + 1120);
                    LOBYTE(v252) = 1;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
                    }

                    v191 = *(ObjectType + 16);
                    v190 = *(ObjectType + 24);
                    if (v191 >= v190 >> 1)
                    {
                      ObjectType = sub_1D699046C((v190 > 1), v191 + 1, 1, ObjectType);
                    }

                    *(ObjectType + 16) = v191 + 1;
                    v192 = ObjectType + (v191 << 6);
                    *(v192 + 32) = v234;
                    *(v192 + 40) = v229;
                    *(v192 + 48) = v5;
                    *(v192 + 56) = 1;
                    *(v192 + 57) = v252;
                    *(v192 + 60) = *(&v252 + 3);
                    *(v192 + 64) = v224;
                    *(v192 + 72) = v219;
                    *(v192 + 80) = v216;
                    *(v192 + 88) = v214;
                    v12 = v248;
                  }

                  while (v7 != v248);
LABEL_191:
                  v236[19] = 0x736C656E6E616843;
                  v236[20] = 0xE800000000000000;
                  v236[21] = ObjectType;
                  v193 = v238;
                  v8 = 0;
                  v1 = v237;
                  v10 = (v237 + 1368);
                  v5 = MEMORY[0x1E69E7CC0];
                  while (2)
                  {
                    v4 = v5;
                    ObjectType = v8;
                    while (1)
                    {
                      if (v251)
                      {
                        v5 = MEMORY[0x1DA6FB460](ObjectType, v193);
                        v8 = (ObjectType + 1);
                        if (__OFADD__(ObjectType, 1))
                        {
                          goto LABEL_236;
                        }
                      }

                      else
                      {
                        if (ObjectType >= *(v245 + 16))
                        {
                          goto LABEL_237;
                        }

                        v5 = *(v193 + 8 * ObjectType + 32);
                        swift_unknownObjectRetain();
                        v8 = (ObjectType + 1);
                        if (__OFADD__(ObjectType, 1))
                        {
                          goto LABEL_236;
                        }
                      }

                      v12 = swift_getObjectType();
                      if (FCTagProviding.isTopic.getter(v12) && ![v5 isSports] && (objc_msgSend(v5, sel_isFoodHub) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++ObjectType;
                      if (v8 == v248)
                      {
                        v12 = v236;
                        v5 = v4;
                        goto LABEL_100;
                      }
                    }

                    v194 = [swift_unknownObjectRetain() identifier];
                    v243 = sub_1D726207C();
                    v235 = v195;

                    swift_unknownObjectRelease();
                    v196 = [v5 displayName];
                    v230 = sub_1D726207C();
                    v225 = v197;

                    v220 = sub_1D62E5CE0();
                    v199 = v198;
                    v200 = [swift_unknownObjectRetain() identifier];
                    v201 = sub_1D726207C();
                    v203 = v202;

                    *(v1 + 1352) = 0;
                    *(v1 + 1360) = 1;
                    *v10 = 0u;
                    *(v237 + 1384) = 0u;
                    *(v237 + 1400) = 0u;
                    *(v237 + 1416) = 0;
                    *(v1 + 1272) = v201;
                    *(v1 + 1280) = v203;
                    *(v1 + 1288) = v5;
                    *(v1 + 1296) = 0;
                    *(v1 + 1320) = 0;
                    *(v1 + 1328) = 0xE000000000000000;
                    *(v1 + 1304) = 0;
                    *(v1 + 1312) = 0;
                    *(v1 + 1336) = 0;
                    *(v1 + 1344) = MEMORY[0x1E69E7CD0];
                    v204 = [v5 feedNavImageAssetHandle];
                    if (v204)
                    {
                      ObjectType = v204;
                      swift_unknownObjectRelease();
                      v205 = v1 + 1272;
                      goto LABEL_213;
                    }

                    v206 = [v5 asSports];
                    if (v206 && (v207 = [v206 sportsTheme], swift_unknownObjectRelease(), v207) && (ObjectType = objc_msgSend(v207, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), ObjectType))
                    {
LABEL_212:
                      swift_unknownObjectRelease();
                      v205 = v237 + 1272;
LABEL_213:
                      sub_1D5EE5B54(v205);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        goto LABEL_219;
                      }
                    }

                    else
                    {
                      v208 = [v5 asSports];
                      if (v208)
                      {
                        v209 = [v208 sportsTheme];
                        swift_unknownObjectRelease();
                        if (v209)
                        {
                          ObjectType = [v209 sportsLogoImageCompactAssetHandle];
                          swift_unknownObjectRelease();
                          goto LABEL_212;
                        }
                      }

                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v237 + 1272);
                      ObjectType = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
LABEL_219:
                        v4 = sub_1D699046C(0, *(v4 + 16) + 1, 1, v4);
                      }
                    }

                    v211 = *(v4 + 16);
                    v210 = *(v4 + 24);
                    if (v211 >= v210 >> 1)
                    {
                      v4 = sub_1D699046C((v210 > 1), v211 + 1, 1, v4);
                    }

                    *(v4 + 16) = v211 + 1;
                    v212 = v4 + (v211 << 6);
                    *(v212 + 32) = v243;
                    *(v212 + 40) = v235;
                    *(v212 + 48) = ObjectType;
                    *(v212 + 56) = 1;
                    *(v212 + 60) = *(&v252 + 3);
                    *(v212 + 57) = v252;
                    *(v212 + 64) = v230;
                    *(v212 + 72) = v225;
                    *(v212 + 80) = v220;
                    *(v212 + 88) = v199;
                    v5 = v4;
                    v1 = v237;
                    v193 = v238;
                    v12 = v236;
                    if (v8 == v248)
                    {
                      goto LABEL_100;
                    }

                    continue;
                  }
                }

                continue;
              }

              break;
            }

            v172 = [v5 asSports];
            v10 = v236;
            if (!v172 || (v173 = [v172 sportsTheme], swift_unknownObjectRelease(), !v173) || (v168 = objc_msgSend(v173, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v168))
            {
              v174 = [v5 asSports];
              if (!v174 || (v175 = [v174 sportsTheme], swift_unknownObjectRelease(), !v175))
              {
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v237 + 968);
                v168 = 0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_167;
                }

                goto LABEL_156;
              }

              v168 = [v175 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            sub_1D5EE5B54(v237 + 968);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_167;
            }

            goto LABEL_156;
          }
        }

        v109 = v1;
        v110 = v108;
        swift_unknownObjectRelease();
        sub_1D5EE5B54(v109 + 664);
        v10 = v236;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_82;
        }

        goto LABEL_93;
      }

      goto LABEL_44;
    }

    if ([v5 isRecipeCatalog])
    {
      if (qword_1EDF05C38 != -1)
      {
        swift_once();
      }

      v81 = qword_1EDF05C40;
      goto LABEL_67;
    }

    swift_unknownObjectRelease();
    ++v77;
    if (v3 == v74)
    {
      goto LABEL_73;
    }
  }

  v78 = sub_1D726203C();
  v79 = [objc_opt_self() systemImageNamed_];

  if (v79)
  {
    goto LABEL_60;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
  return MEMORY[0x1EEE6DA10](v17, v13, v14, v15, v16);
}

uint64_t sub_1D5F096F4()
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (MEMORY[0x1E69E7CC0] >> 62);
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_231;
  }

  v4 = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = *(v0 + 1712);
  v6 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v7 + v4;
    if (!__OFADD__(v7, v4))
    {
      goto LABEL_5;
    }

LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v218 = sub_1D7263BFC();
  v8 = v218 + v4;
  if (__OFADD__(v218, v4))
  {
    goto LABEL_234;
  }

LABEL_5:
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!isUniquelyReferenced_nonNull_bridgeObject)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v6)
  {
LABEL_11:
    sub_1D7263BFC();
    goto LABEL_12;
  }

  v5 &= 0xFFFFFFFFFFFFFF8uLL;
  v6 = *(v5 + 24) >> 1;
  if (v6 >= v8)
  {
    v1 = *(v0 + 1712);
    goto LABEL_13;
  }

LABEL_12:
  isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263DDC();
  v1 = isUniquelyReferenced_nonNull_bridgeObject;
  v5 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
  v6 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_13:
  v14 = *(v5 + 16);
  if (!v3)
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v245 = v0;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_19:

    if (v4 <= 0)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_21;
  }

  isUniquelyReferenced_nonNull_bridgeObject = sub_1D7263BFC();
  v15 = isUniquelyReferenced_nonNull_bridgeObject;
  v245 = v0;
  if (!isUniquelyReferenced_nonNull_bridgeObject)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v6 - v14 < v4)
  {
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    swift_once();
    goto LABEL_39;
  }

  v253 = v1;
  v254 = v4;
  v6 = v5 + 8 * v14 + 32;
  if (!v3)
  {
    sub_1D5B65AF4();
    swift_arrayInitWithCopy();
    goto LABEL_24;
  }

LABEL_21:
  if (v15 < 1)
  {
LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  v16 = (v0 + 1552);
  sub_1D5C44878(0);
  v4 = sub_1D5C44F84(&qword_1EC88E4D0, MEMORY[0x1E69E6340]);
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = sub_1D6D87860(v16, v17, v18);
    v21 = *v20;
    swift_unknownObjectRetain();
    (v19)(v16, 0);
    *(v6 + 8 * v17++) = v21;
  }

  while (v15 != v17);
LABEL_24:

  v1 = v253;
  v0 = v245;
  if (v254 <= 0)
  {
    goto LABEL_27;
  }

  v22 = *(v5 + 16);
  v23 = __OFADD__(v22, v254);
  v24 = v22 + v254;
  if (v23)
  {
    __break(1u);
    goto LABEL_242;
  }

  *(v5 + 16) = v24;
LABEL_27:
  v25 = *(v0 + 1704) + 1;
  if (v25 != *(v0 + 1696))
  {
    *(v0 + 1712) = v1;
    *(v0 + 1704) = v25;
    v58 = *(v0 + 1688);
    if (v25 < *(v58 + 16))
    {
      v59 = *(v0 + 1680);
      sub_1D5F0B788(v58 + ((*(v0 + 964) + 32) & ~*(v0 + 964)) + *(*(v0 + 1672) + 72) * v25, v59, type metadata accessor for DebugFormatWorkspaceGroup);

      sub_1D5F0B728(v59, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();

      v60 = *(v0 + 1592);
      *(v0 + 1720) = v60;
      v61 = swift_task_alloc();
      *(v0 + 1728) = v61;
      v62 = type metadata accessor for DebugFormatBindingResult(0);
      v12 = sub_1D5BA6EF4();
      *v61 = v0;
      v61[1] = sub_1D5F075A8;
      v13 = MEMORY[0x1E69E7288];
      isUniquelyReferenced_nonNull_bridgeObject = v0 + 1600;
      v10 = v60;
      v11 = v62;

      return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_bridgeObject, v10, v11, v12, v13);
    }

    goto LABEL_238;
  }

  v26 = (v0 + 1584);
  v27 = (v0 + 1608);
  *(v0 + 1584) = v1;

  sub_1D725B31C();

  v29 = *(v0 + 608);
  v28 = *(v0 + 624);
  v30 = *(v0 + 592);
  *(v0 + 392) = v29;
  *(v0 + 408) = v28;
  v31 = *(v0 + 624);
  *(v0 + 424) = *(v0 + 640);
  v33 = *(v0 + 544);
  v32 = *(v0 + 560);
  v34 = *(v0 + 528);
  *(v0 + 328) = v33;
  *(v0 + 344) = v32;
  v35 = *(v0 + 560);
  v37 = *(v0 + 576);
  v36 = *(v0 + 592);
  *(v0 + 360) = v37;
  *(v0 + 376) = v36;
  v39 = *(v0 + 480);
  v38 = *(v0 + 496);
  v40 = *(v0 + 464);
  *(v0 + 264) = v39;
  *(v0 + 280) = v38;
  v41 = *(v0 + 496);
  v43 = *(v0 + 512);
  v42 = *(v0 + 528);
  *(v0 + 296) = v43;
  *(v0 + 312) = v42;
  v44 = *(v0 + 464);
  v45 = *(v0 + 448);
  *(v0 + 232) = v45;
  *(v0 + 248) = v44;
  *(v0 + 176) = v29;
  *(v0 + 192) = v31;
  *(v0 + 208) = *(v0 + 640);
  *(v0 + 112) = v33;
  *(v0 + 128) = v35;
  *(v0 + 144) = v37;
  *(v0 + 160) = v30;
  *(v0 + 48) = v39;
  *(v0 + 64) = v41;
  *(v0 + 80) = v43;
  *(v0 + 96) = v34;
  *(v0 + 440) = *(v0 + 656);
  *(v0 + 224) = *(v0 + 656);
  *(v0 + 16) = v45;
  *(v0 + 32) = v40;
  if (sub_1D5DEA380(v0 + 16) != 1)
  {
    v46 = *(v0 + 224);
    v47 = *(v46 + 16);
    if (v47)
    {
      v253 = v0 + 232;
      v254 = v0 + 1608;
      v48 = *(v0 + 1648);
      v49 = *(v0 + 1640);
      v50 = *(*(v0 + 1632) + 20);
      v51 = v0;
      v52 = v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v53 = *(v49 + 72);

      do
      {
        v54 = *(v51 + 1656);
        v55 = *(v51 + 1648);
        sub_1D5F0B788(v52, v55, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v56 = *(v48 + v50);

        sub_1D5F0B728(v55, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D5F0B788(v56 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v54, type metadata accessor for GroupLayoutBindingContext);

        v57 = sub_1D62EF50C();
        sub_1D5F0B728(v54, type metadata accessor for GroupLayoutBindingContext);
        sub_1D69856DC(v57);
        v52 += v53;
        --v47;
      }

      while (v47);
      sub_1D5F0B7F0(v253);

      v0 = v51;
      v27 = v254;
    }

    else
    {
      sub_1D5F0B7F0(v0 + 232);
    }
  }

  v4 = v0 + 1424;
  *v27 = *v26;
  sub_1D5C44878(0);
  sub_1D5C44F84(&qword_1EDF1AEA0, MEMORY[0x1E69E6328]);

  sub_1D72623CC();
  swift_bridgeObjectRelease_n();
  sub_1D5B65AF4();
  v1 = sub_1D72626EC();

  v63 = MEMORY[0x1E69E6F90];
  sub_1D5B66EA4(0, &unk_1EC880D70, &type metadata for DebugFormatWorkspaceTagSection, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  sub_1D5B66EA4(0, &unk_1EC88F2B0, &type metadata for DebugFormatWorkspaceTagItem, v63);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v64 = qword_1EC87D4F8;

  if (v64 != -1)
  {
    goto LABEL_239;
  }

LABEL_39:
  v65 = xmmword_1EC9BA778;
  v66 = *&qword_1EC9BA788;
  *v4 = xmmword_1EC9BA778;
  *(v4 + 16) = v66;
  v67 = xmmword_1EC9BA798;
  v68 = *&qword_1EC9BA7A8;
  *(v4 + 32) = xmmword_1EC9BA798;
  *(v4 + 48) = v68;
  *(v5 + 32) = v65;
  *(v5 + 48) = v66;
  *(v5 + 64) = v67;
  *(v5 + 80) = v68;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  v243 = v6;
  *(v6 + 48) = v5;
  v69 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v3 = sub_1D7263BFC();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D5F0B6CC(v4, v0 + 1488);
  v244 = v1;
  if (!v3)
  {
    *(v6 + 56) = 1937204558;
    *(v6 + 64) = 0xE400000000000000;
    *(v6 + 72) = MEMORY[0x1E69E7CC0];
    *(v6 + 80) = 0x7374726F7053;
    *(v6 + 88) = 0xE600000000000000;
    v4 = MEMORY[0x1E69E7CC0];
    *(v6 + 96) = MEMORY[0x1E69E7CC0];
    *(v6 + 104) = 0x73656C7A7A7550;
    *(v6 + 112) = 0xE700000000000000;
    *(v6 + 120) = v4;
    *(v6 + 128) = 0x654E206C61636F4CLL;
    *(v6 + 136) = 0xEA00000000007377;
    *(v6 + 144) = v4;
    *(v6 + 152) = 0x736C656E6E616843;
    *(v6 + 160) = 0xE800000000000000;
    *(v6 + 168) = v4;
    v5 = v6;
LABEL_99:

    v0 = 0;
    *(v5 + 176) = 0x736369706F54;
    *(v5 + 184) = 0xE600000000000000;
    *(v5 + 192) = v4;
    v3 = (v5 + 48);
    v117 = MEMORY[0x1E69E7CC0];
    v2 = 7;
LABEL_100:
    if (v0 <= 7)
    {
      v118 = 7;
    }

    else
    {
      v118 = v0;
    }

    v119 = &v3[3 * v0];
    v120 = v118 + 1;
    while (v0 != 7)
    {
      if (v120 == ++v0)
      {
        __break(1u);
        goto LABEL_221;
      }

      v121 = v119 + 3;
      v122 = *v119;
      prots = (*v119)->prots;
      v119 += 3;
      if (prots)
      {
        v125 = *(v121 - 5);
        v124 = *(v121 - 4);

        v255 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997F54(0, *(v117 + 16) + 1, 1);
        }

        v127 = *(v117 + 16);
        v126 = *(v117 + 24);
        if (v127 >= v126 >> 1)
        {
          sub_1D6997F54((v126 > 1), v127 + 1, 1);
        }

        *(v117 + 16) = v127 + 1;
        v128 = (v117 + 24 * v127);
        v128[4] = v125;
        v128[5] = v124;
        v128[6] = v122;
        v1 = v244;
        goto LABEL_100;
      }
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v129 = *(v245 + 8);

    return v129(v117);
  }

  v70 = 0;
  v254 = v1 & 0xC000000000000001;
  v246 = v1 & 0xFFFFFFFFFFFFFF8;
  v247 = MEMORY[0x1E69E7CC0];
  v71 = &selRef_accountStore;
  v2 = &off_1E84D3000;
  v253 = v3;
LABEL_43:
  v72 = v70;
  while (1)
  {
    if (v254)
    {
      v73 = MEMORY[0x1DA6FB460](v72, v1);
      v70 = (v72 + 1);
      if (__OFADD__(v72, 1))
      {
        goto LABEL_221;
      }
    }

    else
    {
      if (v72 >= *(v69 + 16))
      {
        goto LABEL_222;
      }

      v73 = *(v1 + 8 * v72 + 32);
      swift_unknownObjectRetain();
      v70 = (v72 + 1);
      if (__OFADD__(v72, 1))
      {
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        v4 = sub_1D7263BFC();
        goto LABEL_3;
      }
    }

    swift_getObjectType();
    if ([v73 v71[49]])
    {
      break;
    }

    if ([v73 isPuzzleHub])
    {
      v76 = sub_1D726203C();
      v75 = [objc_opt_self() systemImageNamed_];

      if (!v75)
      {
        goto LABEL_244;
      }

LABEL_59:
      swift_unknownObjectRetain();
      goto LABEL_67;
    }

    if ([v73 *(v2 + 3728)])
    {
      if (qword_1EDF05B68 != -1)
      {
        swift_once();
      }

      v77 = qword_1EDF05B70;
LABEL_66:
      swift_unknownObjectRetain();
      v75 = v77;
LABEL_67:
      v78 = [v73 identifier];
      v79 = sub_1D726207C();
      v81 = v80;

      swift_unknownObjectRelease();
      v82 = [v73 displayName];
      v83 = sub_1D726207C();
      v85 = v84;

      v86 = sub_1D62E5CE0();
      v88 = v87;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v247 = sub_1D699046C(0, *(v247 + 2) + 1, 1, v247);
      }

      v90 = *(v247 + 2);
      v89 = *(v247 + 3);
      if (v90 >= v89 >> 1)
      {
        v247 = sub_1D699046C((v89 > 1), v90 + 1, 1, v247);
      }

      *(v247 + 2) = v90 + 1;
      v91 = &v247[64 * v90];
      *(v91 + 4) = v79;
      *(v91 + 5) = v81;
      *(v91 + 6) = v75;
      v91[56] = 0;
      *(v91 + 15) = *(&v255 + 3);
      *(v91 + 57) = v255;
      *(v91 + 8) = v83;
      *(v91 + 9) = v85;
      *(v91 + 10) = v86;
      *(v91 + 11) = v88;
      v3 = v253;
      v1 = v244;
      v0 = v245;
      v69 = v246;
      v2 = 0x1E84D3000;
      v71 = &selRef_accountStore;
      if (v70 == v253)
      {
LABEL_72:
        v243[7] = 1937204558;
        v243[8] = 0xE400000000000000;
        v243[9] = v247;
        v92 = MEMORY[0x1E69E7CC0];
        v2 = v0 + 760;
        v3 = &off_1E84D3000;
        v0 = v243;
        for (i = 0; ; i = v95)
        {
          while (1)
          {
            if (v254)
            {
              v94 = MEMORY[0x1DA6FB460](i, v1);
              v95 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_223;
              }
            }

            else
            {
              if (i >= *(v69 + 16))
              {
                goto LABEL_224;
              }

              v94 = *(v1 + 8 * i + 32);
              swift_unknownObjectRetain();
              v95 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_223;
              }
            }

            swift_getObjectType();
            if ([v94 isSports])
            {
              break;
            }

            swift_unknownObjectRelease();
            ++i;
            if (v95 == v253)
            {
              goto LABEL_115;
            }
          }

          v96 = [swift_unknownObjectRetain() identifier];
          v97 = sub_1D726207C();
          v248 = v98;

          swift_unknownObjectRelease();
          v99 = [v94 displayName];
          v100 = sub_1D726207C();
          v237 = v101;
          v241 = v100;

          v102 = sub_1D62E5CE0();
          v227 = v103;
          v232 = v102;
          v104 = [swift_unknownObjectRetain() identifier];
          v105 = sub_1D726207C();
          v107 = v106;

          *(v245 + 744) = 0;
          *(v245 + 752) = 1;
          *v2 = 0u;
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
          *(v2 + 48) = 0;
          *(v245 + 664) = v105;
          *(v245 + 672) = v107;
          *(v245 + 680) = v94;
          *(v245 + 688) = 0;
          *(v245 + 712) = 0;
          *(v245 + 720) = 0xE000000000000000;
          *(v245 + 696) = 0;
          *(v245 + 704) = 0;
          *(v245 + 728) = 0;
          *(v245 + 736) = MEMORY[0x1E69E7CD0];
          v108 = [v94 feedNavImageAssetHandle];
          if (v108)
          {
            break;
          }

          v113 = [v94 asSports];
          v69 = v246;
          if (v113)
          {
            v114 = [v113 sportsTheme];
            swift_unknownObjectRelease();
            if (v114)
            {
              v109 = [v114 sportsLogoImageAssetHandle];
              swift_unknownObjectRelease();
              if (v109)
              {
                goto LABEL_91;
              }
            }
          }

          v115 = [v94 asSports];
          if (v115)
          {
            v116 = [v115 sportsTheme];
            swift_unknownObjectRelease();
            if (v116)
            {
              v109 = [v116 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
LABEL_91:
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v245 + 664);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_81;
              }

LABEL_92:
              v92 = sub_1D699046C(0, *(v92 + 2) + 1, 1, v92);
              goto LABEL_81;
            }
          }

          swift_unknownObjectRelease();
          sub_1D5EE5B54(v245 + 664);
          v109 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_92;
          }

LABEL_81:
          v111 = *(v92 + 2);
          v110 = *(v92 + 3);
          if (v111 >= v110 >> 1)
          {
            v92 = sub_1D699046C((v110 > 1), v111 + 1, 1, v92);
          }

          *(v92 + 2) = v111 + 1;
          v112 = &v92[64 * v111];
          *(v112 + 4) = v97;
          *(v112 + 5) = v248;
          *(v112 + 6) = v109;
          v112[56] = 1;
          *(v112 + 15) = *(&v255 + 3);
          *(v112 + 57) = v255;
          *(v112 + 8) = v241;
          *(v112 + 9) = v237;
          *(v112 + 10) = v232;
          *(v112 + 11) = v227;
          v0 = v243;
          v1 = v244;
          if (v95 == v253)
          {
LABEL_115:
            *(v0 + 80) = 0x7374726F7053;
            *(v0 + 88) = 0xE600000000000000;
            *(v0 + 96) = v92;
            v131 = MEMORY[0x1E69E7CC0];
            v132 = 0;
            v2 = &off_1E84D3000;
            while (2)
            {
              v133 = v132;
              while (1)
              {
                if (v254)
                {
                  v134 = MEMORY[0x1DA6FB460](v133, v1);
                  v132 = v133 + 1;
                  if (__OFADD__(v133, 1))
                  {
                    goto LABEL_225;
                  }
                }

                else
                {
                  if (v133 >= *(v69 + 16))
                  {
                    goto LABEL_226;
                  }

                  v134 = *(v1 + 8 * v133 + 32);
                  swift_unknownObjectRetain();
                  v132 = v133 + 1;
                  if (__OFADD__(v133, 1))
                  {
                    goto LABEL_225;
                  }
                }

                swift_getObjectType();
                if ([v134 isPuzzleType])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++v133;
                if (v132 == v253)
                {
                  goto LABEL_142;
                }
              }

              v135 = [swift_unknownObjectRetain() identifier];
              v136 = sub_1D726207C();
              v249 = v137;

              swift_unknownObjectRelease();
              v138 = [v134 displayName];
              v238 = sub_1D726207C();
              v233 = v139;

              v140 = sub_1D62E5CE0();
              v223 = v141;
              v228 = v140;
              v142 = [swift_unknownObjectRetain() identifier];
              v143 = sub_1D726207C();
              v145 = v144;

              *(v245 + 896) = xmmword_1D7279980;
              *(v245 + 912) = 0u;
              *(v245 + 928) = 0u;
              *(v245 + 944) = 0u;
              *(v245 + 960) = 0;
              *(v245 + 816) = v143;
              *(v245 + 824) = v145;
              *(v245 + 832) = v134;
              *(v245 + 840) = 0;
              *(v245 + 864) = 0;
              *(v245 + 872) = 0xE000000000000000;
              *(v245 + 848) = 0;
              *(v245 + 856) = 0;
              *(v245 + 880) = 0;
              *(v245 + 888) = MEMORY[0x1E69E7CD0];
              v146 = [v134 feedNavImageAssetHandle];
              if (!v146)
              {
                v151 = [v134 asSports];
                v69 = v246;
                if (!v151 || (v152 = [v151 sportsTheme], swift_unknownObjectRelease(), !v152) || (v147 = objc_msgSend(v152, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v147))
                {
                  v153 = [v134 asSports];
                  if (!v153 || (v154 = [v153 sportsTheme], swift_unknownObjectRelease(), !v154))
                  {
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v245 + 816);
                    v147 = 0;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      goto LABEL_139;
                    }

                    goto LABEL_128;
                  }

                  v147 = [v154 sportsLogoImageCompactAssetHandle];
                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
                sub_1D5EE5B54(v245 + 816);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_139;
                }

                goto LABEL_128;
              }

              v147 = v146;
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v245 + 816);
              v69 = v246;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_128;
              }

LABEL_139:
              v131 = sub_1D699046C(0, *(v131 + 2) + 1, 1, v131);
LABEL_128:
              v149 = *(v131 + 2);
              v148 = *(v131 + 3);
              if (v149 >= v148 >> 1)
              {
                v131 = sub_1D699046C((v148 > 1), v149 + 1, 1, v131);
              }

              *(v131 + 2) = v149 + 1;
              v150 = &v131[64 * v149];
              *(v150 + 4) = v136;
              *(v150 + 5) = v249;
              *(v150 + 6) = v147;
              v150[56] = 1;
              *(v150 + 15) = *(&v255 + 3);
              *(v150 + 57) = v255;
              *(v150 + 8) = v238;
              *(v150 + 9) = v233;
              *(v150 + 10) = v228;
              *(v150 + 11) = v223;
              v0 = v243;
              v1 = v244;
              if (v132 != v253)
              {
                continue;
              }

              break;
            }

LABEL_142:
            *(v0 + 104) = 0x73656C7A7A7550;
            *(v0 + 112) = 0xE700000000000000;
            *(v0 + 120) = v131;
            v155 = 0;
            v250 = MEMORY[0x1E69E7CC0];
            while (2)
            {
              v156 = v155;
              while (1)
              {
                if (v254)
                {
                  v157 = MEMORY[0x1DA6FB460](v156, v1);
                  v155 = v156 + 1;
                  if (__OFADD__(v156, 1))
                  {
                    goto LABEL_227;
                  }
                }

                else
                {
                  if (v156 >= *(v69 + 16))
                  {
                    goto LABEL_228;
                  }

                  v157 = *(v1 + 8 * v156 + 32);
                  swift_unknownObjectRetain();
                  v155 = v156 + 1;
                  if (__OFADD__(v156, 1))
                  {
                    goto LABEL_227;
                  }
                }

                swift_getObjectType();
                if ([v157 isLocal])
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++v156;
                if (v155 == v253)
                {
                  goto LABEL_169;
                }
              }

              v158 = [swift_unknownObjectRetain() identifier];
              v159 = sub_1D726207C();
              v234 = v160;

              swift_unknownObjectRelease();
              v161 = [v157 displayName];
              v162 = sub_1D726207C();
              v224 = v163;
              v229 = v162;

              v164 = sub_1D62E5CE0();
              v219 = v165;
              v221 = v164;
              v166 = [swift_unknownObjectRetain() identifier];
              v167 = sub_1D726207C();
              v169 = v168;

              *(v245 + 1048) = 0;
              *(v245 + 1056) = 1;
              *(v245 + 1064) = 0u;
              *(v245 + 1080) = 0u;
              *(v245 + 1096) = 0u;
              *(v245 + 1112) = 0;
              *(v245 + 968) = v167;
              *(v245 + 976) = v169;
              *(v245 + 984) = v157;
              *(v245 + 992) = 0;
              *(v245 + 1016) = 0;
              *(v245 + 1024) = 0xE000000000000000;
              *(v245 + 1000) = 0;
              *(v245 + 1008) = 0;
              *(v245 + 1032) = 0;
              *(v245 + 1040) = MEMORY[0x1E69E7CD0];
              v170 = [v157 feedNavImageAssetHandle];
              if (v170)
              {
                v171 = v170;
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v245 + 968);
                v69 = v246;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_155;
                }

LABEL_166:
                v250 = sub_1D699046C(0, *(v250 + 2) + 1, 1, v250);
LABEL_155:
                v173 = *(v250 + 2);
                v172 = *(v250 + 3);
                if (v173 >= v172 >> 1)
                {
                  v250 = sub_1D699046C((v172 > 1), v173 + 1, 1, v250);
                }

                *(v250 + 2) = v173 + 1;
                v174 = &v250[64 * v173];
                *(v174 + 4) = v159;
                *(v174 + 5) = v234;
                *(v174 + 6) = v171;
                v174[56] = 1;
                *(v174 + 15) = *(&v255 + 3);
                *(v174 + 57) = v255;
                *(v174 + 8) = v229;
                *(v174 + 9) = v224;
                *(v174 + 10) = v221;
                *(v174 + 11) = v219;
                v0 = v243;
                v1 = v244;
                if (v155 == v253)
                {
LABEL_169:
                  *(v0 + 128) = 0x654E206C61636F4CLL;
                  *(v0 + 136) = 0xEA00000000007377;
                  *(v0 + 144) = v250;
                  v179 = 0;
                  v0 = v245 + 1216;
                  v180 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v1 = v179;
                    while (1)
                    {
                      if (v254)
                      {
                        v181 = MEMORY[0x1DA6FB460](v1, v244);
                        v179 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_229;
                        }
                      }

                      else
                      {
                        if (v1 >= *(v246 + 16))
                        {
                          goto LABEL_230;
                        }

                        v181 = *(v244 + 8 * v1 + 32);
                        swift_unknownObjectRetain();
                        v179 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_229;
                        }
                      }

                      ObjectType = swift_getObjectType();
                      v5 = v181;
                      if (FCTagProviding.isChannel.getter(ObjectType) && ![v181 isLocal] && (objc_msgSend(v181, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v181, sel_isMySports) & 1) == 0 && (objc_msgSend(v181, sel_isPuzzleHub) & 1) == 0 && (objc_msgSend(v181, sel_isRecipeCatalog) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++v1;
                      if (v179 == v253)
                      {
                        goto LABEL_190;
                      }
                    }

                    v183 = [swift_unknownObjectRetain() identifier];
                    v251 = sub_1D726207C();
                    v239 = v184;

                    swift_unknownObjectRelease();
                    v185 = [v181 displayName];
                    v186 = sub_1D726207C();
                    v230 = v187;
                    v235 = v186;

                    v188 = sub_1D62E5CE0();
                    v222 = v189;
                    v225 = v188;
                    v190 = [swift_unknownObjectRetain() identifier];
                    v220 = sub_1D726207C();
                    v192 = v191;

                    *(v245 + 1200) = xmmword_1D7279980;
                    *v0 = 0u;
                    *(v245 + 1232) = 0u;
                    *(v245 + 1248) = 0u;
                    *(v245 + 1264) = 0;
                    *(v245 + 1120) = v220;
                    *(v245 + 1128) = v192;
                    *(v245 + 1136) = v181;
                    *(v245 + 1144) = 0;
                    *(v245 + 1168) = 0;
                    *(v245 + 1176) = 0xE000000000000000;
                    *(v245 + 1152) = 0;
                    *(v245 + 1160) = 0;
                    *(v245 + 1184) = 0;
                    *(v245 + 1192) = MEMORY[0x1E69E7CD0];
                    v5 = FeedTag.debugAssetHandle.getter();
                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v245 + 1120);
                    LOBYTE(v255) = 1;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v180 = sub_1D699046C(0, *(v180 + 2) + 1, 1, v180);
                    }

                    v195 = *(v180 + 2);
                    v194 = *(v180 + 3);
                    if (v195 >= v194 >> 1)
                    {
                      v180 = sub_1D699046C((v194 > 1), v195 + 1, 1, v180);
                    }

                    *(v180 + 2) = v195 + 1;
                    v196 = &v180[64 * v195];
                    *(v196 + 4) = v251;
                    *(v196 + 5) = v239;
                    *(v196 + 6) = v5;
                    v196[56] = 1;
                    *(v196 + 57) = v255;
                    *(v196 + 15) = *(&v255 + 3);
                    *(v196 + 8) = v235;
                    *(v196 + 9) = v230;
                    *(v196 + 10) = v225;
                    *(v196 + 11) = v222;
                  }

                  while (v179 != v253);
LABEL_190:
                  v1 = v244;
                  v243[19] = 0x736C656E6E616843;
                  v243[20] = 0xE800000000000000;
                  v243[21] = v180;
                  v197 = 0;
                  v4 = MEMORY[0x1E69E7CC0];
                  while (2)
                  {
                    v6 = v197;
                    while (1)
                    {
                      if (v254)
                      {
                        v5 = MEMORY[0x1DA6FB460](v6, v1);
                        v197 = v6 + 1;
                        if (__OFADD__(v6, 1))
                        {
                          goto LABEL_235;
                        }
                      }

                      else
                      {
                        if (v6 >= *(v246 + 16))
                        {
                          goto LABEL_236;
                        }

                        v5 = *(v1 + 8 * v6 + 32);
                        swift_unknownObjectRetain();
                        v197 = v6 + 1;
                        if (__OFADD__(v6, 1))
                        {
                          goto LABEL_235;
                        }
                      }

                      v198 = swift_getObjectType();
                      if (FCTagProviding.isTopic.getter(v198) && ![v5 isSports] && (objc_msgSend(v5, sel_isFoodHub) & 1) == 0)
                      {
                        break;
                      }

                      swift_unknownObjectRelease();
                      ++v6;
                      if (v197 == v253)
                      {
                        v5 = v243;
                        goto LABEL_99;
                      }
                    }

                    v199 = [swift_unknownObjectRetain() identifier];
                    v252 = sub_1D726207C();
                    v242 = v200;

                    swift_unknownObjectRelease();
                    v201 = [v5 displayName];
                    v240 = sub_1D726207C();
                    v236 = v202;

                    v203 = sub_1D62E5CE0();
                    v226 = v204;
                    v231 = v203;
                    v205 = [swift_unknownObjectRetain() identifier];
                    v206 = sub_1D726207C();
                    v208 = v207;

                    *(v245 + 1352) = 0;
                    *(v245 + 1360) = 1;
                    *(v245 + 1368) = 0u;
                    *(v245 + 1384) = 0u;
                    *(v245 + 1400) = 0u;
                    *(v245 + 1416) = 0;
                    *(v245 + 1272) = v206;
                    *(v245 + 1280) = v208;
                    *(v245 + 1288) = v5;
                    *(v245 + 1296) = 0;
                    *(v245 + 1320) = 0;
                    *(v245 + 1328) = 0xE000000000000000;
                    *(v245 + 1304) = 0;
                    *(v245 + 1312) = 0;
                    *(v245 + 1336) = 0;
                    *(v245 + 1344) = MEMORY[0x1E69E7CD0];
                    v209 = [v5 feedNavImageAssetHandle];
                    if (v209)
                    {
                      v210 = v209;
                      swift_unknownObjectRelease();
                      v211 = v245 + 1272;
                      goto LABEL_212;
                    }

                    v212 = [v5 asSports];
                    if (v212 && (v213 = [v212 sportsTheme], swift_unknownObjectRelease(), v213) && (v210 = objc_msgSend(v213, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), v210))
                    {
LABEL_211:
                      swift_unknownObjectRelease();
                      v211 = v245 + 1272;
LABEL_212:
                      sub_1D5EE5B54(v211);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        goto LABEL_218;
                      }
                    }

                    else
                    {
                      v214 = [v5 asSports];
                      if (v214)
                      {
                        v215 = [v214 sportsTheme];
                        swift_unknownObjectRelease();
                        if (v215)
                        {
                          v210 = [v215 sportsLogoImageCompactAssetHandle];
                          swift_unknownObjectRelease();
                          goto LABEL_211;
                        }
                      }

                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v245 + 1272);
                      v210 = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
LABEL_218:
                        v4 = sub_1D699046C(0, *(v4 + 16) + 1, 1, v4);
                      }
                    }

                    v0 = *(v4 + 16);
                    v216 = *(v4 + 24);
                    if (v0 >= v216 >> 1)
                    {
                      v4 = sub_1D699046C((v216 > 1), v0 + 1, 1, v4);
                    }

                    *(v4 + 16) = v0 + 1;
                    v217 = v4 + (v0 << 6);
                    *(v217 + 32) = v252;
                    *(v217 + 40) = v242;
                    *(v217 + 48) = v210;
                    *(v217 + 56) = 1;
                    *(v217 + 60) = *(&v255 + 3);
                    *(v217 + 57) = v255;
                    *(v217 + 64) = v240;
                    *(v217 + 72) = v236;
                    *(v217 + 80) = v231;
                    *(v217 + 88) = v226;
                    v5 = v243;
                    v1 = v244;
                    if (v197 == v253)
                    {
                      goto LABEL_99;
                    }

                    continue;
                  }
                }

                continue;
              }

              break;
            }

            v175 = [v157 asSports];
            v69 = v246;
            if (!v175 || (v176 = [v175 sportsTheme], swift_unknownObjectRelease(), !v176) || (v171 = objc_msgSend(v176, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v171))
            {
              v177 = [v157 asSports];
              if (!v177 || (v178 = [v177 sportsTheme], swift_unknownObjectRelease(), !v178))
              {
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v245 + 968);
                v171 = 0;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_166;
                }

                goto LABEL_155;
              }

              v171 = [v178 sportsLogoImageCompactAssetHandle];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            sub_1D5EE5B54(v245 + 968);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_166;
            }

            goto LABEL_155;
          }
        }

        v109 = v108;
        swift_unknownObjectRelease();
        sub_1D5EE5B54(v245 + 664);
        v69 = v246;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_81;
        }

        goto LABEL_92;
      }

      goto LABEL_43;
    }

    if ([v73 isRecipeCatalog])
    {
      if (qword_1EDF05C38 != -1)
      {
        swift_once();
      }

      v77 = qword_1EDF05C40;
      goto LABEL_66;
    }

    swift_unknownObjectRelease();
    v72 = (v72 + 1);
    if (v70 == v3)
    {
      goto LABEL_72;
    }
  }

  v74 = sub_1D726203C();
  v75 = [objc_opt_self() systemImageNamed_];

  if (v75)
  {
    goto LABEL_59;
  }

LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
  return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_bridgeObject, v10, v11, v12, v13);
}

void sub_1D5F0B674(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D5F0B728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F0B788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F0B7F0(uint64_t a1)
{
  sub_1D5B66EA4(0, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F0B870(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D5EF05B8();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1D5F0B948()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D5F0B9E0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D5F0BA74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  if (sub_1D725AA4C() == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    if ((v10 & 1) == 0)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  return sub_1D5B68374((a1 + 4), a4);
}

uint64_t sub_1D5F0BB34()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  v1 = *(*v0 + 104);
  sub_1D5EF05B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D5F0BC14()
{
  sub_1D5F0BB34();

  return swift_deallocClassInstance();
}

uint64_t PageKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  return sub_1D7264A5C();
}

id sub_1D5F0BDC4(uint64_t a1, char a2, void *a3)
{
  v5 = type metadata accessor for BridgedPageKind();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR___NAPageKind_kind] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a3 = result;
  return result;
}

id sub_1D5F0BE4C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_1D5F0BED0(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id BridgedPageKind.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedPageKind.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D5F0C014()
{
  sub_1D5B63E64(0, &unk_1EDF3B318, &type metadata for PageKind, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &unk_1EDF3B1C0, &type metadata for PageKind, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3ABE0 = result;
  return result;
}

uint64_t sub_1D5F0C180()
{
  sub_1D5B63E64(0, &unk_1EDF3B318, &type metadata for PageKind, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63E64(0, &unk_1EDF3B1C0, &type metadata for PageKind, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3ABC8 = result;
  return result;
}

uint64_t sub_1D5F0C2EC()
{
  v0 = MEMORY[0x1E69E7CA8];
  sub_1D5B63E64(0, &qword_1EDF3B2C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B63E64(0, &qword_1EDF3B168, v0 + 8, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EC880E30 = result;
  return result;
}

uint64_t sub_1D5F0C458()
{
  v0 = MEMORY[0x1E69E7CA8];
  sub_1D5B63E64(0, &qword_1EDF3B2C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B63E64(0, &qword_1EDF3B168, v0 + 8, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EC880E40 = result;
  return result;
}

uint64_t sub_1D5F0C5C4()
{
  v0 = MEMORY[0x1E69E7CA8];
  sub_1D5B63E64(0, &qword_1EDF3B2C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8788]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v8 - v5;
  sub_1D5B63E64(0, &qword_1EDF3B168, v0 + 8, MEMORY[0x1E69D8790]);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8780], v2);
  result = sub_1D725F7CC();
  qword_1EC880E48 = result;
  return result;
}

uint64_t FeedReadStoryCommandContext.feedItemIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FeedReadStoryCommandContext.init(headline:feedItemIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ReportConcernCompleteContext.subconcern.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReportConcernCompleteContext.init(headline:concernType:subconcern:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t static SwipeAction.removeFromHistory(headline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v22 = sub_1D725CC8C();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D725CC9C();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AC28 != -1)
  {
    swift_once();
  }

  v24 = a1;
  v25 = a2;
  v13 = objc_opt_self();

  v14 = [v13 systemRedColor];
  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDF05C10;
  v16 = [v13 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v15, v16);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  (*(v9 + 104))(v12, *MEMORY[0x1E69D7628], v21);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7620], v22);
  return sub_1D725CCAC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE6report8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B543A4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v25 - v14;
  if (!a1)
  {
    return 0;
  }

  v16 = [swift_unknownObjectRetain() routeURL];
  if (v16)
  {
    v17 = v16;
    sub_1D72584EC();

    swift_unknownObjectRelease();
    (*(v8 + 32))(v15, v11, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
    sub_1D5E3E404(v15);
    return 0;
  }

  (*(v8 + 56))(v15, 1, 1, v7);
  sub_1D5E3E404(v15);
  if (qword_1EDF3AC48 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  swift_unknownObjectRetain();

  v21 = [v20 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBC8 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDF1BBD0;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v25[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v23 = v22;
  v24 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  return v24;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE15searchInArticleACSgyFZ_0()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D480 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  if (qword_1EC87DB28 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC8951A0;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  sub_1D725D3DC();
  swift_allocObject();
  v9 = v8;
  return sub_1D725D39C();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE17removeFromHistory8headlineACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v3 = sub_1D725DC6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AC28 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();

  v10 = [v9 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDF05C10;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7B40], v3);
  v16 = v15;
  v17 = a2;
  sub_1D725D3DC();
  swift_allocObject();
  v12 = v11;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE9readStory8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = qword_1EDF3AB98;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  swift_unknownObjectRetain();

  v10 = [v9 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B10 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDF05B18;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v15[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v12 = v11;
  v13 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  return v13;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE04readG5Story7contextACSgAD0g4Readi7CommandC0V_tFZ_0(uint64_t *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v15[0] = a1[1];
  v8 = a1[2];
  if (qword_1EDF16990 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  swift_unknownObjectRetain();
  v11 = [v10 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05B10 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDF05B18;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v15[1] = v7;
  v15[2] = v15[0];
  v15[3] = v8;
  sub_1D725D3DC();
  swift_allocObject();
  v13 = v12;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE6report8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (!a1)
  {
    return 0;
  }

  v4 = qword_1EDF3AC48;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBC8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDF1BBD0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v8 = sub_1D725D5CC();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE15searchInArticleACSgyFZ_0()
{
  v0 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  if (qword_1EC87D480 != -1)
  {
    swift_once();
  }

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EC87DB28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC8951A0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5AC();
}

unint64_t sub_1D5F0DCC0()
{
  result = qword_1EC880E58;
  if (!qword_1EC880E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E58);
  }

  return result;
}

uint64_t sub_1D5F0DD90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D5F0DDD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F0DE38(void *a1)
{
  sub_1D5F0E6A4(0, &qword_1EC880E60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F0E544();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D72643FC();
    v23 = 2;
    sub_1D726437C();
    v21 = v12;
    v22 = 3;
    sub_1D5F0E598();
    sub_1D5F0E708(&qword_1EC880E68, sub_1D5F0E774, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D5F0E06C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F0E6A4(0, &qword_1EDF03808, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F0E544();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_1D72642BC();
  v29 = v12;
  LOBYTE(v33[0]) = 1;
  v13 = sub_1D72642BC();
  v28 = v14;
  v26 = v13;
  LOBYTE(v33[0]) = 2;
  v25 = sub_1D726422C();
  v27 = v15;
  sub_1D5F0E598();
  v35[0] = 3;
  sub_1D5F0E708(&qword_1EDF04A98, sub_1D5F0E5E8, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v24 = v36;
  v17 = v28;
  v16 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v18 = v25;
  v19 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v20 = v27;
  *v32 = v25;
  *&v32[8] = v27;
  *&v32[16] = v36;
  v32[24] = 6;
  v21 = v31;
  *a2 = v30;
  a2[1] = v21;
  a2[2] = *v32;
  *(a2 + 41) = *&v32[9];
  sub_1D5F0E63C(&v30, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v11;
  v33[1] = v16;
  v33[2] = v19;
  v33[3] = v17;
  v33[4] = v18;
  v33[5] = v20;
  v33[6] = v24;
  v34 = 6;
  return sub_1D5F0E674(v33);
}

uint64_t sub_1D5F0E3D8()
{
  v1 = 0x6E6F6E6143636D75;
  v2 = 0x615465756761656CLL;
  if (*v0 != 2)
  {
    v2 = 0x53617461446C7275;
  }

  if (*v0)
  {
    v1 = 0x6449746E657665;
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

uint64_t sub_1D5F0E474@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F0E8E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F0E49C(uint64_t a1)
{
  v2 = sub_1D5F0E544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F0E4D8(uint64_t a1)
{
  v2 = sub_1D5F0E544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5F0E544()
{
  result = qword_1EDF05FE0;
  if (!qword_1EDF05FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FE0);
  }

  return result;
}

void sub_1D5F0E598()
{
  if (!qword_1EDF04AA0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04AA0);
    }
  }
}

unint64_t sub_1D5F0E5E8()
{
  result = qword_1EDF060A0;
  if (!qword_1EDF060A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF060A0);
  }

  return result;
}

void sub_1D5F0E6A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F0E544();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseInjuryReportItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F0E708(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F0E598();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F0E774()
{
  result = qword_1EC880E70;
  if (!qword_1EC880E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E70);
  }

  return result;
}

unint64_t sub_1D5F0E7DC()
{
  result = qword_1EC880E78;
  if (!qword_1EC880E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E78);
  }

  return result;
}

unint64_t sub_1D5F0E834()
{
  result = qword_1EDF05FD0;
  if (!qword_1EDF05FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FD0);
  }

  return result;
}

unint64_t sub_1D5F0E88C()
{
  result = qword_1EDF05FD8;
  if (!qword_1EDF05FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FD8);
  }

  return result;
}

uint64_t sub_1D5F0E8E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0064496C616369;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEB00000000644967 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t FormatParagraphStyle.init(alignment:firstLineHeadIndent:headIndent:tailIndent:lineBreakMode:lineBreakStrategy:maximumLineHeight:minimumLineHeight:lineSpacing:paragraphSpacing:paragraphSpacingBefore:lineHeightMultiple:minimumLineHeightMultiple:defaultTabInterval:hyphenationFactor:allowsDefaultTighteningForTruncation:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, char a29)
{
  result = *a1;
  v30 = *a8;
  v31 = *a10;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 49) = v30;
  *(a9 + 50) = v31;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14 & 1;
  *(a9 + 88) = a15;
  *(a9 + 96) = a16 & 1;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18 & 1;
  *(a9 + 120) = a19;
  *(a9 + 128) = a20 & 1;
  *(a9 + 136) = a21;
  *(a9 + 144) = a22 & 1;
  *(a9 + 152) = a23;
  *(a9 + 160) = a24 & 1;
  *(a9 + 168) = a25;
  *(a9 + 176) = a26 & 1;
  *(a9 + 184) = a27;
  *(a9 + 192) = a28 & 1;
  *(a9 + 193) = a29;
  return result;
}

void *FormatParagraphStyle.paragraphStyle.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  v10 = v0[7];
  v11 = *(v0 + 64);
  v12 = v0[9];
  v13 = *(v0 + 80);
  v14 = v0[11];
  v15 = v0[13];
  v25 = *(v0 + 96);
  v26 = *(v0 + 112);
  v16 = v0[17];
  v27 = *(v0 + 144);
  v28 = *(v0 + 176);
  v23 = v0[21];
  v24 = v0[23];
  v29 = *(v0 + 192);
  v17 = *(v0 + 193);
  v18 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  v19 = v18;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v1 = 3;
    }

    else
    {
      if (v1 != 4)
      {
        if ((v3 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_8:
        if ((v5 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_9:
        if (v7)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v1 = 4;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 1;
    }
  }

  [v18 setAlignment_];
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_40:
  [v19 setFirstLineHeadIndent_];
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_41:
  [v19 setHeadIndent_];
  if ((v7 & 1) == 0)
  {
LABEL_10:
    [v19 setTailIndent_];
  }

LABEL_11:
  [v19 setLineBreakMode_];
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_16:
      if ((v13 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_17:
      if ((v25 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_18:
      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_19:
      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_20:
      if ((v28 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_21:
      if ((v29 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    v20 = 0xFFFFLL;
  }

  else if (v9)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  [v19 setLineBreakStrategy_];
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_28:
  [v19 setMaximumLineHeight_];
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_29:
  [v19 setMinimumLineHeight_];
  if (v25)
  {
    goto LABEL_18;
  }

LABEL_30:
  [v19 setLineSpacing_];
  if (v26)
  {
    goto LABEL_19;
  }

LABEL_31:
  [v19 setParagraphSpacing_];
  if (v27)
  {
    goto LABEL_20;
  }

LABEL_32:
  [v19 setLineHeightMultiple_];
  if (v28)
  {
    goto LABEL_21;
  }

LABEL_33:
  [v19 setDefaultTabInterval_];
  if ((v29 & 1) == 0)
  {
LABEL_34:
    HIDWORD(v22) = HIDWORD(v24);
    *&v22 = v24;
    [v19 setHyphenationFactor_];
    if (v17 == 2)
    {
      return v19;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (v17 != 2)
  {
LABEL_23:
    [v19 setAllowsDefaultTighteningForTruncation_];
  }

  return v19;
}

uint64_t FormatParagraphStyle.merge(other:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + 1;
  v5 = a1 + 3;
  v6 = a1 + 5;
  v7 = a1 + 7;
  v8 = a1 + 13;
  v9 = a1 + 15;
  if (*v2 != 5)
  {
    v3 = *v2;
  }

  v44 = v3;
  if (!*(v2 + 16))
  {
    v4 = v2 + 1;
  }

  v10 = v2[2] & a1[2];
  if (!*(v2 + 32))
  {
    v5 = v2 + 3;
  }

  v11 = *(v2 + 49);
  v12 = v2[4] & a1[4];
  if (!*(v2 + 48))
  {
    v6 = v2 + 5;
  }

  v13 = v2[6] & a1[6];
  if (v11 == 6)
  {
    LOBYTE(v11) = *(a1 + 49);
  }

  v43 = v11;
  if (*(v2 + 50) == 3)
  {
    v14 = *(a1 + 50);
  }

  else
  {
    v14 = *(v2 + 50);
  }

  if (!*(v2 + 64))
  {
    v7 = v2 + 7;
  }

  v15 = v2 + 11;
  v16 = v2[8] & a1[8];
  if (*(v2 + 80))
  {
    v17 = a1 + 9;
  }

  else
  {
    v17 = v2 + 9;
  }

  v18 = v2[10] & a1[10];
  if (*(v2 + 96))
  {
    v15 = a1 + 11;
  }

  v19 = v2[12] & a1[12];
  if (!*(v2 + 112))
  {
    v8 = v2 + 13;
  }

  v20 = v2[14] & a1[14];
  if (!*(v2 + 128))
  {
    v9 = v2 + 15;
  }

  v21 = v2 + 19;
  v22 = v2[16] & a1[16];
  if (*(v2 + 144))
  {
    v23 = a1 + 17;
  }

  else
  {
    v23 = v2 + 17;
  }

  v24 = v2[18] & a1[18];
  if (*(v2 + 160))
  {
    v21 = a1 + 19;
  }

  v25 = v2[20] & a1[20];
  if (*(v2 + 176))
  {
    v26 = a1 + 21;
  }

  else
  {
    v26 = v2 + 21;
  }

  v27 = v2[22] & a1[22];
  v28 = v2 + 23;
  if (*(v2 + 192))
  {
    v28 = a1 + 23;
  }

  v29 = v2[24] & a1[24];
  v30 = *(a1 + 193);
  if (*(v2 + 193) != 2)
  {
    v30 = *(v2 + 193);
  }

  result = *v4;
  v32 = *v5;
  v33 = *v6;
  v34 = *v7;
  v35 = *v17;
  v36 = *v15;
  v37 = *v8;
  v38 = *v9;
  v39 = *v23;
  v40 = *v21;
  v41 = *v26;
  v42 = *v28;
  *a2 = v44;
  *(a2 + 8) = result;
  *(a2 + 16) = v10;
  *(a2 + 24) = v32;
  *(a2 + 32) = v12;
  *(a2 + 40) = v33;
  *(a2 + 48) = v13;
  *(a2 + 49) = v43;
  *(a2 + 50) = v14;
  *(a2 + 56) = v34;
  *(a2 + 64) = v16;
  *(a2 + 72) = v35;
  *(a2 + 80) = v18;
  *(a2 + 88) = v36;
  *(a2 + 96) = v19;
  *(a2 + 104) = v37;
  *(a2 + 112) = v20;
  *(a2 + 120) = v38;
  *(a2 + 136) = v39;
  *(a2 + 144) = v24;
  *(a2 + 152) = v40;
  *(a2 + 160) = v25;
  *(a2 + 168) = v41;
  *(a2 + 176) = v27;
  *(a2 + 184) = v42;
  *(a2 + 192) = v29;
  *(a2 + 193) = v30;
  *(a2 + 128) = v22;
  return result;
}

uint64_t _s8NewsFeed20FormatParagraphStyleV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v185 = *(a1 + 16);
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 49);
  v11 = *(a1 + 50);
  v12 = a1[7];
  v13 = *(a1 + 64);
  v14 = a1[9];
  v15 = *(a1 + 80);
  v16 = a1[11];
  v17 = *(a1 + 96);
  v18 = a1[13];
  v19 = *(a1 + 112);
  v20 = a1[15];
  v21 = *(a1 + 128);
  v22 = a1[17];
  v23 = *(a1 + 144);
  v24 = a1[19];
  v25 = *(a1 + 160);
  v26 = a1[21];
  v27 = *(a1 + 176);
  v28 = a1[23];
  v29 = *(a1 + 192);
  v30 = *(a1 + 193);
  v31 = *a2;
  v32 = a2[1];
  v182 = *(a2 + 16);
  v33 = a2[3];
  v34 = a2[5];
  v176 = *(a2 + 48);
  v179 = *(a2 + 32);
  v35 = *(a2 + 49);
  v36 = *(a2 + 50);
  v37 = a2[7];
  v38 = *(a2 + 64);
  v39 = a2[9];
  v40 = *(a2 + 80);
  v41 = a2[11];
  v42 = *(a2 + 96);
  v43 = a2[13];
  v44 = *(a2 + 112);
  v45 = a2[15];
  v46 = *(a2 + 128);
  v47 = a2[17];
  v48 = *(a2 + 144);
  v49 = a2[19];
  v50 = *(a2 + 160);
  v51 = a2[21];
  v52 = *(a2 + 176);
  v53 = a2[23];
  v54 = *(a2 + 192);
  v55 = *(a2 + 193);
  if (v4 == 5)
  {
    if (v31 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v31 == 5)
    {
      return 0;
    }

    v125 = v27;
    v118 = v29;
    v119 = v25;
    v56 = v30;
    v143 = v26;
    v146 = v24;
    v57 = v28;
    v58 = *(a2 + 193);
    v138 = *(a2 + 176);
    v111 = *(a2 + 192);
    v112 = *(a2 + 49);
    v122 = v20;
    v59 = a2[23];
    v60 = v23;
    v115 = v9;
    v61 = v21;
    v135 = *(a2 + 160);
    v62 = a2[19];
    v63 = v19;
    v173 = *(a2 + 144);
    v64 = a2[17];
    v117 = v10;
    v65 = v17;
    v170 = v14;
    v66 = *(a2 + 128);
    v167 = a2[15];
    v164 = v15;
    v161 = v12;
    v158 = *(a2 + 112);
    v155 = a2[13];
    v149 = *(a2 + 64);
    v152 = v13;
    v67 = *(a2 + 96);
    v130 = a2[9];
    v132 = a2[11];
    v141 = *(a2 + 50);
    v68 = *(a2 + 80);
    v128 = a2[7];
    v116 = v8;
    v113 = v5;
    v114 = v6;
    v109 = a2[3];
    v110 = a2[5];
    v108 = a2[1];
    v69 = sub_1D6DDDEA0(v4, v31);
    v32 = v108;
    v33 = v109;
    v34 = v110;
    v5 = v113;
    v6 = v114;
    v8 = v116;
    v37 = v128;
    v39 = v130;
    v40 = v68;
    v36 = v141;
    v41 = v132;
    v42 = v67;
    v38 = v149;
    v13 = v152;
    v43 = v155;
    v44 = v158;
    v12 = v161;
    v15 = v164;
    v45 = v167;
    v46 = v66;
    v14 = v170;
    v17 = v65;
    v10 = v117;
    v47 = v64;
    v48 = v173;
    v19 = v63;
    v54 = v111;
    v35 = v112;
    v49 = v62;
    v21 = v61;
    v9 = v115;
    v23 = v60;
    v50 = v135;
    v52 = v138;
    v53 = v59;
    v20 = v122;
    v55 = v58;
    v28 = v57;
    v26 = v143;
    v24 = v146;
    v30 = v56;
    v29 = v118;
    v25 = v119;
    v27 = v125;
    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  if (v185)
  {
    if (!v182)
    {
      return 0;
    }
  }

  else
  {
    v70 = v182;
    if (v5 != v32)
    {
      v70 = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v179)
    {
      return 0;
    }
  }

  else
  {
    v71 = v179;
    if (v6 != v33)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v176)
    {
      return 0;
    }
  }

  else
  {
    v72 = v176;
    if (v8 != v34)
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  if (v10 == 6)
  {
    if (v35 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v35 == 6)
    {
      return 0;
    }

    v73 = v10;
    v74 = v35;
    v136 = v30;
    v144 = v26;
    v147 = v24;
    v75 = v28;
    v140 = v11;
    v142 = v36;
    v76 = v55;
    v133 = v22;
    v77 = v54;
    v78 = v53;
    v79 = v23;
    v80 = v21;
    v81 = v50;
    v186 = v49;
    v150 = v38;
    v82 = v19;
    v180 = v47;
    v183 = v16;
    v174 = v48;
    v177 = v17;
    v171 = v14;
    v126 = v46;
    v168 = v45;
    v165 = v15;
    v162 = v12;
    v159 = v44;
    v156 = v43;
    v153 = v13;
    v120 = v40;
    v123 = v42;
    v83 = v41;
    v84 = v39;
    v85 = v37;
    v86 = sub_1D6DDDCCC(v73, v74);
    v37 = v85;
    v39 = v84;
    v40 = v120;
    v42 = v123;
    v41 = v83;
    v43 = v156;
    v44 = v159;
    v12 = v162;
    v15 = v165;
    v45 = v168;
    v46 = v126;
    v14 = v171;
    v48 = v174;
    v17 = v177;
    v47 = v180;
    v16 = v183;
    v19 = v82;
    v38 = v150;
    v13 = v153;
    v49 = v186;
    v50 = v81;
    v21 = v80;
    v23 = v79;
    v53 = v78;
    v54 = v77;
    v22 = v133;
    v55 = v76;
    v11 = v140;
    v36 = v142;
    v28 = v75;
    v26 = v144;
    v24 = v147;
    v30 = v136;
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  if (v11 == 3)
  {
    if (v36 != 3)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (v36 != 3)
  {
    v127 = v46;
    v87 = 0x74754F68737570;
    v151 = v38;
    if (v11)
    {
      if (v11 == 1)
      {
        v88 = 0xE700000000000000;
        v89 = 0x74754F68737570;
      }

      else
      {
        v88 = 0xE800000000000000;
        v89 = 0x647261646E617473;
      }
    }

    else
    {
      v89 = 0xD000000000000012;
      v88 = 0x80000001D73BB8E0;
    }

    v139 = v52;
    if (v36)
    {
      if (v36 == 1)
      {
        v90 = 0xE700000000000000;
      }

      else
      {
        v90 = 0xE800000000000000;
        v87 = 0x647261646E617473;
      }
    }

    else
    {
      v87 = 0xD000000000000012;
      v90 = 0x80000001D73BB8E0;
    }

    v129 = v37;
    v131 = v39;
    v121 = v40;
    v124 = v42;
    v134 = v41;
    v154 = v13;
    v157 = v43;
    v160 = v44;
    v163 = v12;
    v166 = v15;
    v169 = v45;
    v172 = v14;
    v175 = v48;
    v178 = v17;
    v181 = v47;
    v184 = v16;
    v148 = v19;
    v187 = v49;
    v137 = v50;
    v91 = v21;
    v92 = v23;
    v93 = v53;
    v94 = v54;
    v95 = v55;
    v96 = v28;
    v97 = v30;
    if (v89 == v87 && v88 == v90)
    {

      v30 = v97;
      v28 = v96;
      v55 = v95;
      v54 = v94;
      v53 = v93;
      v23 = v92;
      v50 = v137;
      v52 = v139;
      v21 = v91;
      v16 = v184;
      v49 = v187;
      v19 = v148;
      v48 = v175;
      v17 = v178;
      v47 = v181;
      v14 = v172;
      v46 = v127;
      v45 = v169;
      v15 = v166;
      v12 = v163;
      v44 = v160;
      v43 = v157;
      v38 = v151;
      v13 = v154;
      v40 = v121;
      v42 = v124;
      v39 = v131;
      v41 = v134;
      v37 = v129;
      goto LABEL_47;
    }

    v145 = sub_1D72646CC();

    v30 = v97;
    v28 = v96;
    v55 = v95;
    v54 = v94;
    v53 = v93;
    v23 = v92;
    v50 = v137;
    v52 = v139;
    v21 = v91;
    v16 = v184;
    v49 = v187;
    v19 = v148;
    v48 = v175;
    v17 = v178;
    v47 = v181;
    v14 = v172;
    v46 = v127;
    v45 = v169;
    v15 = v166;
    v12 = v163;
    v44 = v160;
    v43 = v157;
    v38 = v151;
    v13 = v154;
    v40 = v121;
    v42 = v124;
    v39 = v131;
    v41 = v134;
    v37 = v129;
    if (v145)
    {
LABEL_47:
      if (v13)
      {
        if (!v38)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v37)
        {
          v98 = v38;
        }

        else
        {
          v98 = 1;
        }

        if (v98)
        {
          return 0;
        }
      }

      if (v15)
      {
        if (!v40)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == v39)
        {
          v99 = v40;
        }

        else
        {
          v99 = 1;
        }

        if (v99)
        {
          return 0;
        }
      }

      if (v17)
      {
        if (!v42)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == v41)
        {
          v100 = v42;
        }

        else
        {
          v100 = 1;
        }

        if (v100)
        {
          return 0;
        }
      }

      if (v19)
      {
        if (!v44)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == v43)
        {
          v101 = v44;
        }

        else
        {
          v101 = 1;
        }

        if (v101)
        {
          return 0;
        }
      }

      if (v21)
      {
        if (!v46)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == v45)
        {
          v102 = v46;
        }

        else
        {
          v102 = 1;
        }

        if (v102)
        {
          return 0;
        }
      }

      if (v23)
      {
        if (!v48)
        {
          return 0;
        }
      }

      else
      {
        if (v22 == v47)
        {
          v103 = v48;
        }

        else
        {
          v103 = 1;
        }

        if (v103)
        {
          return 0;
        }
      }

      if (v25)
      {
        if (!v50)
        {
          return 0;
        }
      }

      else
      {
        if (v24 == v49)
        {
          v104 = v50;
        }

        else
        {
          v104 = 1;
        }

        if (v104)
        {
          return 0;
        }
      }

      if (v27)
      {
        if (!v52)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == v51)
        {
          v105 = v52;
        }

        else
        {
          v105 = 1;
        }

        if (v105)
        {
          return 0;
        }
      }

      if (v29)
      {
        if (!v54)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == v53)
        {
          v106 = v54;
        }

        else
        {
          v106 = 1;
        }

        if (v106)
        {
          return 0;
        }
      }

      if (v30 == 2)
      {
        if (v55 != 2)
        {
          return 0;
        }
      }

      else if (v55 == 2 || ((v55 ^ v30) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D5F0F9F0(uint64_t a1)
{
  result = sub_1D5F0FA18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F0FA18()
{
  result = qword_1EC880E80;
  if (!qword_1EC880E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E80);
  }

  return result;
}

unint64_t sub_1D5F0FA6C(void *a1)
{
  a1[1] = sub_1D5C35064();
  a1[2] = sub_1D5F0FAA4();
  result = sub_1D5F0FAF8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F0FAA4()
{
  result = qword_1EDF0EE68;
  if (!qword_1EDF0EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EE68);
  }

  return result;
}

unint64_t sub_1D5F0FAF8()
{
  result = qword_1EC880E88;
  if (!qword_1EC880E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880E88);
  }

  return result;
}

__n128 __swift_memcpy194_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D5F0FB90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 194))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 193);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1D5F0FC00(uint64_t a1, __int128 *a2)
{
  v3 = a2[11];
  v194 = a2[10];
  v195 = v3;
  v196 = *(a2 + 96);
  v4 = a2[7];
  v190 = a2[6];
  v191 = v4;
  v5 = a2[8];
  v193 = a2[9];
  v192 = v5;
  v6 = a2[3];
  v186 = a2[2];
  v187 = v6;
  v7 = a2[4];
  v189 = a2[5];
  v188 = v7;
  v8 = *a2;
  v185 = a2[1];
  v184 = v8;
  v9 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v9);
  sub_1D5EA74B8(0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7281190;
  v15 = (v14 + v13);
  v16 = a2[11];
  v197[10] = a2[10];
  v197[11] = v16;
  v198 = *(a2 + 96);
  v17 = a2[7];
  v197[6] = a2[6];
  v197[7] = v17;
  v18 = a2[8];
  v197[9] = a2[9];
  v197[8] = v18;
  v19 = a2[3];
  v197[2] = a2[2];
  v197[3] = v19;
  v20 = a2[4];
  v197[5] = a2[5];
  v197[4] = v20;
  v21 = *a2;
  v197[1] = a2[1];
  v197[0] = v21;
  if (sub_1D5D39FB4(v197) == 1)
  {
    v22 = 5;
  }

  else
  {
    v22 = v197[0];
  }

  sub_1D7120CE4(0x6E656D6E67696C41, 0xE900000000000074, v22, v15);
  v23 = type metadata accessor for FormatInspectionItem(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v15, 0, 1, v23);
  v179 = v194;
  v180 = v195;
  v181 = v196;
  v175 = v190;
  v176 = v191;
  v178 = v193;
  v177 = v192;
  v171 = v186;
  v172 = v187;
  v174 = v189;
  v173 = v188;
  v170 = v185;
  v169 = v184;
  v25 = sub_1D5D39FB4(&v169);
  if (v25 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(&v169 + 1);
  }

  sub_1D711A80C(0xD000000000000016, 0x80000001D73C2060, v26, (v25 == 1) | v170 & 1, &v15[v12]);
  v24(&v15[v12], 0, 1, v23);
  v166 = v194;
  v167 = v195;
  v168 = v196;
  v162 = v190;
  v163 = v191;
  v165 = v193;
  v164 = v192;
  v158 = v186;
  v159 = v187;
  v161 = v189;
  v160 = v188;
  v157 = v185;
  v156 = v184;
  v27 = sub_1D5D39FB4(&v156);
  if (v27 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(&v157 + 1);
  }

  sub_1D711A80C(0x646E492064616548, 0xEB00000000746E65, v28, (v27 == 1) | v158 & 1, &v15[2 * v12]);
  v24(&v15[2 * v12], 0, 1, v23);
  v153 = v194;
  v154 = v195;
  v155 = v196;
  v149 = v190;
  v150 = v191;
  v152 = v193;
  v151 = v192;
  v145 = v186;
  v146 = v187;
  v148 = v189;
  v147 = v188;
  v144[1] = v185;
  v144[0] = v184;
  v29 = sub_1D5D39FB4(v144);
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(&v145 + 1);
  }

  sub_1D711A80C(0x646E49206C696154, 0xEB00000000746E65, v30, (v29 == 1) | v146 & 1, &v15[3 * v12]);
  v24(&v15[3 * v12], 0, 1, v23);
  v141 = v194;
  v142 = v195;
  v143 = v196;
  v137 = v190;
  v138 = v191;
  v140 = v193;
  v139 = v192;
  v133[2] = v186;
  v134 = v187;
  v136 = v189;
  v135 = v188;
  v133[1] = v185;
  v133[0] = v184;
  if (sub_1D5D39FB4(v133) == 1)
  {
    v31 = 6;
  }

  else
  {
    v31 = BYTE1(v134);
  }

  sub_1D7120F90(0x65724220656E694CLL, 0xEF65646F4D206B61, v31, &v15[4 * v12]);
  v24(&v15[4 * v12], 0, 1, v23);
  v130 = v194;
  v131 = v195;
  v132 = v196;
  v126 = v190;
  v127 = v191;
  v129 = v193;
  v128 = v192;
  v122[2] = v186;
  v123 = v187;
  v125 = v189;
  v124 = v188;
  v122[1] = v185;
  v122[0] = v184;
  if (sub_1D5D39FB4(v122) == 1)
  {
    v32 = 3;
  }

  else
  {
    v32 = BYTE2(v123);
  }

  sub_1D7121268(0xD000000000000013, 0x80000001D73C2080, v32, &v15[5 * v12]);
  v24(&v15[5 * v12], 0, 1, v23);
  v119 = v194;
  v120 = v195;
  v121 = v196;
  v115 = v190;
  v116 = v191;
  v118 = v193;
  v117 = v192;
  v111[2] = v186;
  v112 = v187;
  v114 = v189;
  v113 = v188;
  v111[1] = v185;
  v111[0] = v184;
  v33 = sub_1D5D39FB4(v111);
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(&v112 + 1);
  }

  sub_1D711A80C(0xD000000000000013, 0x80000001D73C20A0, v34, (v33 == 1) | v113 & 1, &v15[6 * v12]);
  v24(&v15[6 * v12], 0, 1, v23);
  v108 = v194;
  v109 = v195;
  v110 = v196;
  v104 = v190;
  v105 = v191;
  v107 = v193;
  v106 = v192;
  v101[2] = v186;
  v101[3] = v187;
  v103 = v189;
  v102 = v188;
  v101[1] = v185;
  v101[0] = v184;
  v35 = sub_1D5D39FB4(v101);
  if (v35 == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(&v102 + 1);
  }

  v37 = 8 * v12;
  sub_1D711A80C(0xD000000000000013, 0x80000001D73C20C0, v36, (v35 == 1) | v103 & 1, &v15[7 * v12]);
  v24(&v15[7 * v12], 0, 1, v23);
  v98 = v194;
  v99 = v195;
  v100 = v196;
  v94 = v190;
  v95 = v191;
  v97 = v193;
  v96 = v192;
  v92[2] = v186;
  v92[3] = v187;
  v93 = v189;
  v92[4] = v188;
  v92[1] = v185;
  v92[0] = v184;
  v38 = sub_1D5D39FB4(v92);
  if (v38 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(&v93 + 1);
  }

  sub_1D711A80C(0x61705320656E694CLL, 0xEC000000676E6963, v39, (v38 == 1) | v94 & 1, &v15[v37]);
  v24(&v15[v37], 0, 1, v23);
  v89 = v194;
  v90 = v195;
  v91 = v196;
  v85 = v190;
  v86 = v191;
  v88 = v193;
  v87 = v192;
  v84[2] = v186;
  v84[3] = v187;
  v84[5] = v189;
  v84[4] = v188;
  v84[1] = v185;
  v84[0] = v184;
  v40 = sub_1D5D39FB4(v84);
  if (v40 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(&v85 + 1);
  }

  sub_1D711A80C(0xD000000000000011, 0x80000001D73C20E0, v41, (v40 == 1) | v86 & 1, &v15[9 * v12]);
  v24(&v15[9 * v12], 0, 1, v23);
  v81 = v194;
  v82 = v195;
  v83 = v196;
  v77[6] = v190;
  v78 = v191;
  v80 = v193;
  v79 = v192;
  v77[2] = v186;
  v77[3] = v187;
  v77[5] = v189;
  v77[4] = v188;
  v77[1] = v185;
  v77[0] = v184;
  v42 = sub_1D5D39FB4(v77);
  if (v42 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(&v78 + 1);
  }

  sub_1D711A80C(0xD000000000000018, 0x80000001D73C2100, v43, (v42 == 1) | v79 & 1, &v15[10 * v12]);
  v24(&v15[10 * v12], 0, 1, v23);
  v74 = v194;
  v75 = v195;
  v76 = v196;
  v71[6] = v190;
  v71[7] = v191;
  v72 = v192;
  v73 = v193;
  v71[2] = v186;
  v71[3] = v187;
  v71[4] = v188;
  v71[5] = v189;
  v71[0] = v184;
  v71[1] = v185;
  v44 = sub_1D5D39FB4(v71);
  if (v44 == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = *(&v72 + 1);
  }

  sub_1D711A80C(0xD000000000000014, 0x80000001D73C2120, v45, (v44 == 1) | v73 & 1, &v15[11 * v12]);
  v24(&v15[11 * v12], 0, 1, v23);
  v68 = v194;
  v69 = v195;
  v70 = v196;
  v66[6] = v190;
  v66[7] = v191;
  v66[8] = v192;
  v67 = v193;
  v66[2] = v186;
  v66[3] = v187;
  v66[4] = v188;
  v66[5] = v189;
  v66[0] = v184;
  v66[1] = v185;
  v46 = sub_1D5D39FB4(v66);
  if (v46 == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(&v67 + 1);
  }

  sub_1D711A80C(0xD00000000000001CLL, 0x80000001D73C2140, v47, (v46 == 1) | v68 & 1, &v15[12 * v12]);
  v24(&v15[12 * v12], 0, 1, v23);
  v63 = v194;
  v64 = v195;
  v65 = v196;
  v62[6] = v190;
  v62[7] = v191;
  v62[8] = v192;
  v62[9] = v193;
  v62[2] = v186;
  v62[3] = v187;
  v62[4] = v188;
  v62[5] = v189;
  v62[0] = v184;
  v62[1] = v185;
  v48 = sub_1D5D39FB4(v62);
  if (v48 == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = *(&v63 + 1);
  }

  sub_1D711A80C(0xD000000000000014, 0x80000001D73C2160, v49, (v48 == 1) | v64 & 1, &v15[13 * v12]);
  v24(&v15[13 * v12], 0, 1, v23);
  v59[10] = v194;
  v60 = v195;
  v61 = v196;
  v59[6] = v190;
  v59[7] = v191;
  v59[8] = v192;
  v59[9] = v193;
  v59[2] = v186;
  v59[3] = v187;
  v59[4] = v188;
  v59[5] = v189;
  v59[0] = v184;
  v59[1] = v185;
  v50 = sub_1D5D39FB4(v59);
  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(&v60 + 1);
  }

  sub_1D711A80C(0xD000000000000012, 0x80000001D73C2180, v51, (v50 == 1) | v61 & 1, &v15[14 * v12]);
  v24(&v15[14 * v12], 0, 1, v23);
  v57[10] = v194;
  v57[11] = v195;
  v58 = v196;
  v57[6] = v190;
  v57[7] = v191;
  v57[8] = v192;
  v57[9] = v193;
  v57[2] = v186;
  v57[3] = v187;
  v57[4] = v188;
  v57[5] = v189;
  v57[0] = v184;
  v57[1] = v185;
  if (sub_1D5D39FB4(v57) == 1)
  {
    v52 = 2;
  }

  else
  {
    v52 = HIBYTE(v58);
  }

  sub_1D711E9F0(0xD000000000000028, 0x80000001D73C21A0, v52, &v15[15 * v12]);
  v24(&v15[15 * v12], 0, 1, v23);
  sub_1D6795150(0x7061726761726150, 0xE900000000000068, 0, 0, v14, v182);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v10 + 56) = &type metadata for FormatInspectionGroup;
  *(v10 + 64) = &off_1F518B2C0;
  v53 = swift_allocObject();
  *(v10 + 32) = v53;
  v54 = v182[1];
  *(v53 + 16) = v182[0];
  *(v53 + 32) = v54;
  *(v53 + 48) = v183;
  v55 = sub_1D7073500(v10);
  swift_setDeallocating();
  sub_1D5F10AA0(v10 + 32);
  swift_deallocClassInstance();
  return v55;
}

uint64_t sub_1D5F10AA0(uint64_t a1)
{
  sub_1D5E4F358(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F10AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1D725844C();
  v3 = [v1 assetHandleForURL:v2 lifetimeHint:1];

  v4 = [v3 filePath];
  if (v4)
  {
    v6 = v4;
    sub_1D726207C();

    sub_1D5F129A4();
    swift_allocObject();
    v7 = sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v5);
    sub_1D5F129A4();
    swift_allocObject();
    v7 = sub_1D725BBAC();
  }

  return v7;
}

uint64_t sub_1D5F10C3C@<X0>(void *a2@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72583FC();
  v8 = objc_allocWithZone(MEMORY[0x1E6988098]);
  v9 = sub_1D725844C();
  v10 = [v8 initWithURL_];

  result = (*(v4 + 8))(v7, v3);
  *a2 = v10;
  return result;
}

void sub_1D5F10D60(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a3 + *(type metadata accessor for FormatVideoData(0) + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 25);
  v11 = *(v4 + 32);
  v10 = *(v4 + 40);
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v12 = v5;
  v13 = v11;
  sub_1D6EC1EB4(v3, &v15);
  v14 = v15;
}

void sub_1D5F10E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        if (v10 == a4)
        {
          v12 = a5 + *(type metadata accessor for FormatVideoData(0) + 20);
          v13 = *v12;
          v14 = *(v12 + 32);
          v15 = a1;
          v16 = v13;
          v17 = v14;
          v18 = [v9 layer];
          objc_opt_self();
          v19 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v19 setContentsGravity_];
          v20 = [v9 layer];
          objc_opt_self();
          v21 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v21 setImage_];
          v9 = v15;
          v11 = v21;
        }

        v9 = v11;
      }
    }
  }
}

uint64_t sub_1D5F10FE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F1102C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = *(a2 + 80);
    v12 = *(a2 + 88);
    v13 = *(a2 + 96);
    sub_1D5ED34B0(v11, v12, v13);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = -2;
  }

  v14 = [a1 layer];
  [a1 bounds];
  v33 = v11;
  v34 = v12;
  v35 = v13;
  sub_1D6E549E4(v14, &v33, v15, v16, v17, v18);

  sub_1D5ED348C(v11, v12, v13);
  if (a2)
  {
    if ((~*(a2 + 192) & 0xF000000000000007) != 0)
    {
      v33 = *(a2 + 192);
      v20 = FormatColor.color.getter(v19);
    }

    else
    {
      v20 = 0;
    }

    sub_1D726346C();

    v25 = *(a2 + 64);
    if (!(v25 >> 61) && (v25 & 0xF000000000000007) != 0xF000000000000007)
    {
      v33 = *(v25 + 16);

      v27 = FormatColor.color.getter(v26);
      sub_1D726349C();
    }

    v23 = *(a2 + 72);
    v21 = *(a2 + 80);
    v22 = *(a2 + 88);
    v24 = *(a2 + 96);

    sub_1D5ED34B0(v21, v22, v24);
  }

  else
  {
    sub_1D726346C();
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -2;
  }

  v28 = [a1 layer];
  v33 = v21;
  v34 = v22;
  v35 = v24;
  sub_1D6D111F4(v28, a4, v23, &v33, a5, a6);

  sub_1D5ED348C(v21, v22, v24);
  if (a2)
  {
  }

  else
  {
    v29 = 0;
  }

  v33 = v29;
  sub_1D613DC18(a1, &v33, v32);
}

uint64_t sub_1D5F11264(char *a1, char *a2, void *a3)
{
  v137 = a3;
  v160 = a2;
  v146 = *v3;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B6D220(0, qword_1EDF31098, type metadata accessor for FormatVideoData.Assets, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v153 = &v134[-v8];
  v138 = type metadata accessor for FormatVideoData(0);
  v147 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v9);
  v148 = v10;
  v149 = &v134[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v154 = &v134[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v141 = &v134[-v17];
  sub_1D5BB60D4(0);
  v156 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v145 = &v134[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v134[-v23];
  sub_1D5B6D220(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v5);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v139 = &v134[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28, v29);
  v144 = &v134[-v30];
  MEMORY[0x1EEE9AC00](v31, v32);
  v150 = &v134[-v33];
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v134[-v36];
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v134[-v40];
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v134[-v44];
  v158 = a1;
  v46 = &a1[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_assets];
  swift_beginAccess();
  v47 = type metadata accessor for FormatVideoData.Assets(0);
  v152 = *(v47 - 8);
  v48 = *(v152 + 48);
  v155 = v47;
  v143 = v152 + 48;
  v142 = v48;
  v49 = (v48)(v46, 1);
  v157 = v46;
  if (v49)
  {
    v50 = *(v12 + 56);
    v51 = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v50(v45, 1, 1, v11);
    (*(v12 + 16))(v41, v160, v11);
  }

  else
  {
    v52 = *(v12 + 16);
    v52(v45, v46, v11);
    v50 = *(v12 + 56);
    v51 = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v50(v45, 0, 1, v11);
    v52(v41, v160, v11);
  }

  v140 = v51;
  v50(v41, 0, 1, v11);
  v53 = *(v156 + 48);
  sub_1D5EB84C0(v45, v24);
  sub_1D5EB84C0(v41, &v24[v53]);
  v159 = v12;
  v54 = *(v12 + 48);
  v55 = v54(v24, 1, v11);
  v161 = v11;
  if (v55 == 1)
  {
    sub_1D5E3E404(v41);
    sub_1D5E3E404(v45);
    v56 = v54(&v24[v53], 1, v11);
    v57 = v158;
    if (v56 == 1)
    {
      sub_1D5E3E404(v24);
      v58 = v160;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1D5EB84C0(v24, v37);
  v59 = v54(&v24[v53], 1, v11);
  v57 = v158;
  if (v59 == 1)
  {
    sub_1D5E3E404(v41);
    sub_1D5E3E404(v45);
    (*(v159 + 8))(v37, v11);
LABEL_9:
    sub_1D5F126C8(v24);
    v58 = v160;
LABEL_10:
    sub_1D6EC1DE0();
    MEMORY[0x1EEE9AC00](v60, v61);
    *&v134[-16] = v151;
    *&v134[-8] = v58;
    sub_1D725BDCC();
    sub_1D5B5A498(0, &unk_1EC880E90, 0x1E6988098);
    sub_1D725BAAC();

    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v62 = sub_1D726308C();
    v63 = v149;
    sub_1D5F12740(v58, v149, type metadata accessor for FormatVideoData);
    v64 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v65 = swift_allocObject();
    sub_1D5F127A8(v63, v65 + v64);
    type metadata accessor for FormatVideoView(0);
    sub_1D725BAAC();

    goto LABEL_11;
  }

  v79 = v159;
  v80 = *(v159 + 32);
  v136 = v50;
  v81 = v141;
  v80(v141, &v24[v53], v11);
  sub_1D5B70FC8(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v135 = sub_1D7261FBC();
  v82 = *(v79 + 8);
  v83 = v81;
  v50 = v136;
  v82(v83, v11);
  sub_1D5E3E404(v41);
  sub_1D5E3E404(v45);
  v82(v37, v11);
  v57 = v158;
  v58 = v160;
  sub_1D5E3E404(v24);
  if ((v135 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v66 = v155;
  v67 = *(v155 + 20);
  v68 = v150;
  sub_1D5EB84C0(&v58[v67], v150);
  if (v54(v68, 1, v161) != 1)
  {
    v76 = v50;
    v150 = *(v159 + 32);
    (v150)(v154, v68, v161);
    v77 = v157;
    if (v142(v157, 1, v66))
    {
      v78 = v144;
      v76(v144, 1, 1, v161);
    }

    else
    {
      v84 = &v77[*(v66 + 20)];
      v78 = v144;
      sub_1D5EB84C0(v84, v144);
    }

    v85 = *(v156 + 48);
    v86 = v145;
    sub_1D5EB84C0(v78, v145);
    sub_1D5EB84C0(&v58[v67], &v86[v85]);
    if (v54(v86, 1, v161) == 1)
    {
      sub_1D5E3E404(v78);
      v87 = v54(&v86[v85], 1, v161);
      v88 = v159;
      if (v87 == 1)
      {
        sub_1D5E3E404(v86);
        (*(v88 + 8))(v154, v161);
LABEL_28:
        v113 = v153;
        sub_1D5F12740(v58, v153, type metadata accessor for FormatVideoData.Assets);
        (*(v152 + 56))(v113, 0, 1, v66);
LABEL_31:
        v132 = v157;
        swift_beginAccess();
        v74 = v113;
        v75 = v132;
        goto LABEL_32;
      }
    }

    else
    {
      v89 = v78;
      v90 = v139;
      sub_1D5EB84C0(v86, v139);
      if (v54(&v86[v85], 1, v161) != 1)
      {
        v109 = v141;
        v110 = v161;
        (v150)(v141, &v86[v85], v161);
        sub_1D5B70FC8(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v111 = sub_1D7261FBC();
        v112 = *(v159 + 8);
        v112(v109, v110);
        sub_1D5E3E404(v89);
        v112(v90, v110);
        sub_1D5E3E404(v86);
        v91 = v151;
        if (v111)
        {
          v112(v154, v161);
          goto LABEL_28;
        }

LABEL_24:
        v92 = v91[2];
        v93 = sub_1D725844C();
        v94 = [v92 assetHandleForURL:v93 lifetimeHint:1];

        v164 = sub_1D5B5A498(0, &qword_1EDF1AB50, 0x1E69B51B8);
        v165 = sub_1D5EECFF8();
        v163 = v94;
        v95 = v94;
        v96 = v158;
        [v158 bounds];
        v97 = sub_1D725E0DC();
        swift_allocObject();
        v98 = sub_1D725E0BC();
        __swift_project_boxed_opaque_existential_1(v91 + 3, v91[6]);
        v99 = MEMORY[0x1E69D7D98];
        v164 = v97;
        v165 = MEMORY[0x1E69D7D98];
        v163 = v98;
        v156 = v98;

        v100 = sub_1D725D0BC();
        __swift_destroy_boxed_opaque_existential_1(&v163);
        if (v100)
        {
          v101 = &v58[*(v138 + 20)];
          v102 = *(v101 + 4);
          v103 = *v101;
          v104 = v102;
          v105 = [v96 layer];
          objc_opt_self();
          v106 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v106 setContentsGravity_];
          v107 = [v96 layer];
          objc_opt_self();
          v108 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v108 setImage_];

          (*(v159 + 8))(v154, v161);
        }

        else
        {
          v114 = [v96 layer];
          objc_opt_self();
          v115 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          [v115 setImage_];
          sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
          v146 = sub_1D726308C();
          v116 = swift_allocObject();
          v117 = v137;
          swift_unknownObjectWeakInit();
          v118 = swift_allocObject();
          v151 = v118;
          swift_unknownObjectWeakInit();
          v119 = v58;
          v120 = v149;
          sub_1D5F12740(v119, v149, type metadata accessor for FormatVideoData);
          v121 = (*(v147 + 80) + 40) & ~*(v147 + 80);
          v122 = swift_allocObject();
          v148 = v95;
          v123 = v122;
          v122[2] = v118;
          v122[3] = v116;
          v150 = v116;
          v122[4] = v117;
          sub_1D5F127A8(v120, v122 + v121);
          v164 = v97;
          v165 = v99;
          v163 = v156;

          v124 = v117;
          v125 = [v96 layer];
          objc_opt_self();
          v126 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

          sub_1D725EAEC();
          v127 = sub_1D726203C();

          [v126 setIdentifier_];

          __swift_project_boxed_opaque_existential_1(v91 + 3, v91[6]);
          v128 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1D5B68374(&v163, v162);
          v129 = swift_allocObject();
          v130 = v146;
          v129[2] = v146;
          v129[3] = v128;
          sub_1D5B63F14(v162, (v129 + 4));
          v129[9] = sub_1D5F12924;
          v129[10] = v123;
          v131 = v130;

          sub_1D725D0AC();

          (*(v159 + 8))(v154, v161);

          __swift_destroy_boxed_opaque_existential_1(&v163);
        }

        v113 = v153;
        sub_1D5F12740(v160, v153, type metadata accessor for FormatVideoData.Assets);
        (*(v152 + 56))(v113, 0, 1, v155);
        goto LABEL_31;
      }

      sub_1D5E3E404(v78);
      (*(v159 + 8))(v90, v161);
    }

    sub_1D5F126C8(v86);
    v91 = v151;
    goto LABEL_24;
  }

  sub_1D5E3E404(v68);
  v69 = [v57 layer];
  v70 = v157;
  v71 = v69;
  objc_opt_self();
  v72 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

  [v72 setImage_];
  v73 = v153;
  sub_1D5F12740(v58, v153, type metadata accessor for FormatVideoData.Assets);
  (*(v152 + 56))(v73, 0, 1, v66);
  swift_beginAccess();
  v74 = v73;
  v75 = v70;
LABEL_32:
  sub_1D5F12890(v74, v75);
  return swift_endAccess();
}

uint64_t sub_1D5F12524(uint64_t a1, char *a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = &a2[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_identifier];
  *v18 = v17;
  *(v18 + 1) = v16;

  swift_beginAccess();
  sub_1D726344C();
  [a2 setUserInteractionEnabled_];
  v19 = *(a1 + 144);
  if (v19)
  {
    v20 = *(v19 + 200);
  }

  else
  {
    v20 = 0;
  }

  [a2 setAccessibilityIgnoresInvertColors_];
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  [a2 setIsAccessibilityElement_];
  [a2 setAccessibilityElementsHidden_];
  if (v22 <= 0xFD)
  {
    if ((v22 & 0x80) == 0)
    {
      v23 = &selRef_setIsAccessibilityElement_;
LABEL_9:
      [a2 *v23];
      goto LABEL_10;
    }

    if (v21 | v22 & 0x7F)
    {
      v23 = &selRef_setAccessibilityElementsHidden_;
      goto LABEL_9;
    }
  }

LABEL_10:
  [a2 setClipsToBounds_];
  sub_1D5F1102C(a2, v19, a3, a6, a7, a8);
  return sub_1D5F11264(a2, a4, a5);
}

uint64_t sub_1D5F126C8(uint64_t a1)
{
  sub_1D5BB60D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F12740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5F127A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVideoData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F12890(uint64_t a1, uint64_t a2)
{
  sub_1D5B6D220(0, qword_1EDF31098, type metadata accessor for FormatVideoData.Assets, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D5F12924(void *a1)
{
  v3 = *(type metadata accessor for FormatVideoData(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1D5F10E08(a1, v4, v5, v6, v7);
}

void sub_1D5F129A4()
{
  if (!qword_1EDF179A0[0])
  {
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF179A0);
    }
  }
}

uint64_t PuzzleProgress.rankID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D5F12A38(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65726F6373;
    if (a1 != 2)
    {
      v5 = 0x70795465726F6373;
    }

    if (a1 <= 1u)
    {
      return 0x73736572676F7270;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6172754479616C70;
    v2 = 0x6465766C6F537369;
    if (a1 != 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x44496B6E6172;
    if (a1 != 4)
    {
      v3 = 0x6576655264657375;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D5F12B6C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694FF24(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F12BBC(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694FF24(v4, v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F12C00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5F14CB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D5F12C30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5F12A38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D5F12C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F14CB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F12CA0(uint64_t a1)
{
  v2 = sub_1D5F13D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F12CDC(uint64_t a1)
{
  v2 = sub_1D5F13D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D5F12D18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x73736572676F7270, 0xED00006C6576654CLL), (v5 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v4, v105), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v12 = sub_1D725C42C();
    __swift_project_value_buffer(v12, qword_1EDFFCFA8);

    v13 = sub_1D725C3FC();
    v14 = sub_1D7262EBC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v105[0] = v16;
      *v15 = 136315138;
      v17 = sub_1D7261D4C();
      v19 = v18;

      v20 = sub_1D5BC5100(v17, v19, v105);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D5B42000, v13, v14, "Failed parsing PuzzleProgress message. Missing progressLevel: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA6FD500](v16, -1, -1);
      MEMORY[0x1DA6FD500](v15, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v6 = v99;
  if (!*(a1 + 16))
  {
    v10 = 0;
    v93 = 1;
LABEL_25:
    v23 = 2;
    goto LABEL_26;
  }

  v7 = sub_1D5B69D90(0x65726F6373, 0xE500000000000000);
  if (v8)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v7, v105);
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = v99;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  v93 = v11;
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v21 = sub_1D5B69D90(0x70795465726F6373, 0xE900000000000065);
  if ((v22 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v21, v105);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v99 == __PAIR128__(0xE700000000000000, 0x746C7561666564) || (sub_1D72646CC() & 1) != 0)
  {

    v23 = 0;
  }

  else if (v99 == __PAIR128__(0xE700000000000000, 0x74636566726570))
  {

    v23 = 1;
  }

  else
  {
    v56 = sub_1D72646CC();

    if (v56)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

LABEL_26:
  if (!*(a1 + 16))
  {
    goto LABEL_57;
  }

  v24 = sub_1D5B69D90(0x44496B6E6172, 0xE600000000000000);
  if (v25)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v24, v105);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v99;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = *(&v99 + 1);
    }

    else
    {
      v28 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_57;
    }
  }

  v29 = sub_1D5B69D90(0x6576655264657375, 0xEA00000000006C61);
  if ((v30 & 1) != 0 && (sub_1D5B76B10(*(a1 + 56) + 32 * v29, v105), swift_dynamicCast()))
  {
    v31 = v99;
  }

  else
  {
    v31 = 0;
  }

  if (!*(a1 + 16) || (v92 = v31, v32 = sub_1D5B69D90(0x6172754479616C70, 0xEC0000006E6F6974), (v33 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v32, v105), (swift_dynamicCast() & 1) == 0))
  {
LABEL_57:
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v41 = sub_1D725C42C();
    __swift_project_value_buffer(v41, qword_1EDFFCFA8);

    v42 = sub_1D725C3FC();
    v43 = sub_1D7262EBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v105[0] = v45;
      *v44 = 136315138;
      v46 = sub_1D7261D4C();
      v48 = v47;

      v49 = sub_1D5BC5100(v46, v48, v105);

      *(v44 + 4) = v49;
      v50 = "Failed parsing PuzzleProgress message. Missing playDuration: %s";
LABEL_61:
      _os_log_impl(&dword_1D5B42000, v42, v43, v50, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1DA6FD500](v45, -1, -1);
      MEMORY[0x1DA6FD500](v44, -1, -1);
LABEL_67:

LABEL_16:
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 64) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      return;
    }

    goto LABEL_66;
  }

  if (!*(a1 + 16) || (v91 = v99, v34 = sub_1D5B69D90(0x6465766C6F537369, 0xE800000000000000), (v35 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v34, v105), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725C42C();
    __swift_project_value_buffer(v51, qword_1EDFFCFA8);

    v42 = sub_1D725C3FC();
    v43 = sub_1D7262EBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v105[0] = v45;
      *v44 = 136315138;
      v52 = sub_1D7261D4C();
      v54 = v53;

      v55 = sub_1D5BC5100(v52, v54, v105);

      *(v44 + 4) = v55;
      v50 = "Failed parsing PuzzleProgress message. Missing isSolved: %s";
      goto LABEL_61;
    }

LABEL_66:

    goto LABEL_67;
  }

  if (!*(a1 + 16) || ((v89 = v99, v36 = sub_1D5B69D90(0xD000000000000018, 0x80000001D73B7720), (v37 & 1) == 0) ? (v39 = 0, v90 = 0) : ((sub_1D5B76B10(*(a1 + 56) + 32 * v36, v105), (v38 = swift_dynamicCast()) == 0) ? (v39 = 0) : (v39 = v99), !v38 ? (v40 = 0) : (v40 = *(&v99 + 1)), v90 = v40), !*(a1 + 16) || (v88 = v39, v57 = sub_1D5B69D90(0x73736572676F7270, 0xEC00000061746144), (v58 & 1) == 0) || (sub_1D5B76B10(*(a1 + 56) + 32 * v57, v105), sub_1D5BB0DB0(), (swift_dynamicCast() & 1) == 0)))
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v69 = sub_1D725C42C();
    __swift_project_value_buffer(v69, qword_1EDFFCFA8);

    v70 = sub_1D725C3FC();
    v71 = sub_1D7262EBC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v105[0] = v73;
      *v72 = 136315138;
      v74 = sub_1D7261D4C();
      v76 = v75;

      v77 = sub_1D5BC5100(v74, v76, v105);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_1D5B42000, v70, v71, "Failed parsing PuzzleProgress message. Missing progressData: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1DA6FD500](v73, -1, -1);
      MEMORY[0x1DA6FD500](v72, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v59 = objc_opt_self();
  v60 = sub_1D7261D2C();

  v105[0] = 0;
  v61 = [v59 dataWithJSONObject:v60 options:0 error:v105];

  if (!v61)
  {
    v78 = v105[0];
    v79 = sub_1D725829C();

    swift_willThrow();
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v80 = sub_1D725C42C();
    __swift_project_value_buffer(v80, qword_1EDFFCFA8);
    v81 = v79;
    v82 = sub_1D725C3FC();
    v83 = sub_1D7262EBC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      v86 = v79;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&dword_1D5B42000, v82, v83, "Failed to create InternalData error: %@", v84, 0xCu);
      sub_1D5F15694(v85, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v85, -1, -1);
      MEMORY[0x1DA6FD500](v84, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v62 = v105[0];
  v63 = sub_1D725867C();
  v65 = v64;

  *(&v99 + 1) = v99;
  LOBYTE(v100) = v99;
  *(&v100 + 1) = *v97;
  DWORD1(v100) = *&v97[3];
  *(&v100 + 1) = v63;
  *&v101 = v65;
  *(&v101 + 1) = v10;
  *(&v102 + 2) = v95;
  WORD3(v102) = v96;
  *(&v103 + 9) = *v94;
  HIDWORD(v103) = *&v94[3];
  LOBYTE(v102) = v93;
  BYTE1(v102) = v23;
  *(&v102 + 1) = v27;
  *&v103 = v28;
  BYTE8(v103) = v92;
  *&v104 = v88;
  *(&v104 + 1) = v90;
  v66 = v102;
  *(a2 + 32) = v101;
  *(a2 + 48) = v66;
  v67 = v100;
  *a2 = v99;
  *(a2 + 16) = v67;
  v68 = v104;
  *(a2 + 64) = v103;
  *(a2 + 80) = v68;
  v105[0] = v6;
  v105[1] = v91;
  v106 = v89;
  *&v107[3] = *&v97[3];
  *v107 = *v97;
  v108 = v63;
  v109 = v65;
  v110 = v10;
  v111 = v93;
  v112 = v23;
  v114 = v96;
  v113 = v95;
  v115 = v27;
  v116 = v28;
  v117 = v92;
  *&v118[3] = *&v94[3];
  *v118 = *v94;
  v119 = v88;
  v120 = v90;
  sub_1D5F14544(&v99, v98);
  sub_1D5F1457C(v105);
}