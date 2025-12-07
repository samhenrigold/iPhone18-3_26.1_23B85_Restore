void sub_78448C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v112 = a3;
  v5 = sub_AB4BC0();
  v110 = *(v5 - 8);
  v111 = v5;
  __chkstk_darwin();
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v93 - v8;
  v10 = *a1;
  v11 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (qword_E0CD70 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.musicBag;
    sub_AB4BD0();
    v51 = sub_AB4BA0();
    v52 = sub_AB9F40();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v116[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_500C84(0xD000000000000047, 0x8000000000B73D00, v116);
      _os_log_impl(&dword_0, v51, v52, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
    }

    (*(v110 + 8))(v7, v111);
    v55 = 0;
    goto LABEL_70;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v13;
  v14 = qword_E0CD70;
  swift_bridgeObjectRetain_n();
  v106 = v10;
  if (v14 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v15 = *v11;
    sub_AB4BD0();

    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();

    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_69;
    }

    v97 = v17;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v119 = v19;
    v101 = v18;
    *v18 = 136315394;
    v108 = a2;
    v107 = v9;
    v98 = v16;
    v96 = v19;
    if (!v12)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16618, &qword_B27AC8);
    v20 = sub_ABB090();
    v21 = v20;
    v22 = 0;
    v23 = *(v12 + 64);
    v95 = v12 + 64;
    v24 = 1 << *(v12 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v11 = v25 & v23;
    v94 = (v24 + 63) >> 6;
    v113 = "v16@?0@NSDictionary8";
    v102 = v20 + 64;
    v100 = v12;
    i = v20;
    if ((v25 & v23) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v29 = v26 | (v22 << 6);
        v30 = *(v12 + 56);
        v31 = (*(v12 + 48) + 16 * v29);
        v32 = v31[1];
        v109 = *v31;
        v33 = *(v30 + 8 * v29);
        v34 = *(v33 + 16);
        if (v34)
        {
          v104 = v29;
          v105 = v11;
          v118 = _swiftEmptyArrayStorage;
          v103 = v32;

          sub_503918(0, v34, 0);
          v9 = v118;
          v35 = 32;
          v36 = v33;
          v114 = v33;
          do
          {
            v37 = *(v36 + v35);
            *&v115[0] = 25705;
            *(&v115[0] + 1) = 0xE200000000000000;

            sub_ABAD10();
            if (*(v37 + 16) && (v38 = sub_2EC004(v116), v36 = v114, (v39 & 1) != 0))
            {
              sub_808B0(*(v37 + 56) + 32 * v38, v115);
              sub_8085C(v116);
              sub_9ACFC(v115, &v117);
              sub_808B0(&v117, v116);
              if (swift_dynamicCast())
              {
                v40 = *(&v115[0] + 1);
                v41 = *&v115[0];
              }

              else
              {
                *&v115[0] = 0;
                *(&v115[0] + 1) = 0xE000000000000000;
                sub_ABAD90(23);
                v120._object = (v113 | 0x8000000000000000);
                v120._countAndFlagsBits = 0xD000000000000014;
                sub_AB94A0(v120);
                sub_ABAF70();
                v121._countAndFlagsBits = 62;
                v121._object = 0xE100000000000000;
                sub_AB94A0(v121);
                v36 = v114;

                v40 = *(&v115[0] + 1);
                v41 = *&v115[0];
              }

              __swift_destroy_boxed_opaque_existential_0(&v117);
            }

            else
            {
              sub_8085C(v116);

              v41 = 0x204449206261743CLL;
              v40 = 0xEF3E746E65736261;
            }

            v118 = v9;
            v43 = *(v9 + 16);
            v42 = *(v9 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_503918((v42 > 1), v43 + 1, 1);
              v36 = v114;
              v9 = v118;
            }

            *(v9 + 16) = v43 + 1;
            v44 = v9 + 16 * v43;
            *(v44 + 32) = v41;
            *(v44 + 40) = v40;
            v35 += 8;
            --v34;
          }

          while (v34);

          a2 = v108;
          v12 = v100;
          v21 = i;
          v11 = v105;
          v29 = v104;
          v45 = v103;
        }

        else
        {

          v9 = _swiftEmptyArrayStorage;
        }

        *(v102 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v46 = (v21[6] + 16 * v29);
        *v46 = v109;
        v46[1] = v45;
        *(v21[7] + 8 * v29) = v9;
        v47 = v21[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_73;
        }

        v21[2] = v49;
        v9 = v107;
      }

      while (v11);
    }

    v27 = v22;
    while (1)
    {
      v22 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v22 >= v94)
      {
        goto LABEL_39;
      }

      v28 = *(v95 + 8 * v22);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v11 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v21 = 0;
LABEL_39:
  v116[0] = v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16620, &qword_B27AD0);
  v56 = sub_AB9350();
  v58 = v57;

  v11 = sub_500C84(v56, v58, &v119);

  v59 = v101;
  *(v101 + 1) = v11;
  *(v59 + 6) = 2080;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16618, &qword_B27AC8);
    v60 = sub_ABB090();
    v61 = v60;
    v62 = *(a2 + 64);
    v94 = a2 + 64;
    v63 = 1 << *(a2 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & v62;
    v66 = (v63 + 63) >> 6;
    v113 = "v16@?0@NSDictionary8";
    v102 = v60 + 64;

    v9 = 0;
    v100 = v61;
    for (i = v66; v65; v61[2] = v87)
    {
      v67 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
LABEL_49:
      v70 = v67 | (v9 << 6);
      v71 = *(a2 + 56);
      v72 = (*(a2 + 48) + 16 * v70);
      v73 = v72[1];
      v109 = *v72;
      v12 = *(v71 + 8 * v70);
      v74 = *(v12 + 16);
      if (v74)
      {
        v104 = v70;
        v105 = v65;
        v118 = _swiftEmptyArrayStorage;
        v103 = v73;

        sub_503918(0, v74, 0);
        v11 = v118;
        v75 = 32;
        v76 = v12;
        v114 = v12;
        do
        {
          v77 = *(v76 + v75);
          *&v115[0] = 25705;
          *(&v115[0] + 1) = 0xE200000000000000;

          sub_ABAD10();
          if (*(v77 + 16) && (v78 = sub_2EC004(v116), v76 = v114, (v79 & 1) != 0))
          {
            sub_808B0(*(v77 + 56) + 32 * v78, v115);
            sub_8085C(v116);
            sub_9ACFC(v115, &v117);
            sub_808B0(&v117, v116);
            if (swift_dynamicCast())
            {
              v12 = *(&v115[0] + 1);
              v80 = *&v115[0];
            }

            else
            {
              *&v115[0] = 0;
              *(&v115[0] + 1) = 0xE000000000000000;
              sub_ABAD90(23);
              v122._object = (v113 | 0x8000000000000000);
              v122._countAndFlagsBits = 0xD000000000000014;
              sub_AB94A0(v122);
              sub_ABAF70();
              v123._countAndFlagsBits = 62;
              v123._object = 0xE100000000000000;
              sub_AB94A0(v123);
              v76 = v114;

              v12 = *(&v115[0] + 1);
              v80 = *&v115[0];
            }

            __swift_destroy_boxed_opaque_existential_0(&v117);
          }

          else
          {
            sub_8085C(v116);

            v80 = 0x204449206261743CLL;
            v12 = 0xEF3E746E65736261;
          }

          v118 = v11;
          v82 = *(v11 + 16);
          v81 = *(v11 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_503918((v81 > 1), v82 + 1, 1);
            v76 = v114;
            v11 = v118;
          }

          *(v11 + 16) = v82 + 1;
          v83 = v11 + 16 * v82;
          *(v83 + 32) = v80;
          *(v83 + 40) = v12;
          v75 += 8;
          --v74;
        }

        while (v74);

        a2 = v108;
        v61 = v100;
        v66 = i;
        v65 = v105;
        v70 = v104;
        v84 = v103;
      }

      else
      {

        v11 = _swiftEmptyArrayStorage;
      }

      *(v102 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v85 = (v61[6] + 16 * v70);
      *v85 = v109;
      v85[1] = v84;
      *(v61[7] + 8 * v70) = v11;
      v86 = v61[2];
      v48 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v48)
      {
        goto LABEL_74;
      }
    }

    v68 = v9;
    while (1)
    {
      v9 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_72;
      }

      if (v9 >= v66)
      {

        v9 = v107;
        goto LABEL_68;
      }

      v69 = *(v94 + 8 * v9);
      ++v68;
      if (v69)
      {
        v67 = __clz(__rbit64(v69));
        v65 = (v69 - 1) & v69;
        goto LABEL_49;
      }
    }
  }

  v61 = 0;
LABEL_68:
  v116[0] = v61;
  v88 = sub_AB9350();
  v90 = sub_500C84(v88, v89, &v119);

  v91 = v101;
  *(v101 + 14) = v90;
  v92 = v98;
  _os_log_impl(&dword_0, v98, v97, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v91, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v110 + 8))(v9, v111);

  v55 = 1;
LABEL_70:
  *v112 = v55;
}

double sub_7850A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_AB8FF0();

  v2(v3);

  return result;
}

uint64_t sub_785128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16610, &unk_B27AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_7851B4(void *a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_7851F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_78522C()
{

  return swift_deallocObject();
}

double block_copy_helper_209(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_7852B8()
{

  return swift_deallocObject();
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for OptimisticValue(0, a2, a4, a5) + 28);
  v11 = type metadata accessor for OptimisticValue.Transaction(0, a2, v9, v10);
  (*(*(v11 - 8) + 56))(a3 + v8, 1, 1, v11);
  v12 = *(*(a2 - 8) + 32);

  return v12(a3, a1, a2);
}

uint64_t sub_785440(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = *(v4 + 16);
  v12(&v30 - v10, v1, v3, v9);
  v13 = v1 + *(a1 + 28);
  v16 = type metadata accessor for OptimisticValue.Transaction(0, v3, v14, v15);
  if (!(*(*(v16 - 8) + 48))(v13, 1, v16))
  {
    (*(v4 + 24))(v13 + *(v16 + 28), v11, v3);
  }

  if (qword_E0D588 != -1)
  {
    swift_once();
  }

  v17 = sub_AB4BC0();
  __swift_project_value_buffer(v17, qword_E16630);
  (v12)(v8, v11, v3);
  v18 = sub_AB4BA0();
  v19 = sub_AB9F50();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136446210;
    (v30)(v6, v8, v3);
    v23 = sub_AB9350();
    v25 = v24;
    v30 = v11;
    v26 = *(v4 + 8);
    v26(v8, v3);
    v27 = sub_500C84(v23, v25, &v31);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_0, v18, v19, "Underlying value updated to %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return (v26)(v30, v3);
  }

  else
  {

    v29 = *(v4 + 8);
    v29(v8, v3);
    return (v29)(v11, v3);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction(255, v7, a2, a3);
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = *(v7 - 8);
  v14 = __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v4 + *(a1 + 28), v9, v14);
  v17 = *(v8 - 8);
  if ((*(v17 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return (*(v13 + 16))(a4, v4, v7);
  }

  else
  {
    (*(v13 + 16))(v16, &v12[*(v8 + 32)], v7);
    (*(v17 + 8))(v12, v8);
    return (*(v13 + 32))(a4, v16, v7);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_7871AC(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v11, v12, v10);
  return sub_785B40;
}

void sub_785B40(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    sub_785440(v9);
    v10 = *(v6 + 8);
    v10(v3, v8);
    v10(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    sub_785440(v9);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a1;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for OptimisticValue.Transaction(0, v9, a3, a4);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v34 - v13;
  v14 = *(v9 - 8);
  __chkstk_darwin();
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v6, v9, v17);
  (v20)(v16, v35, v9);
  sub_786078(v19, v16, v9, a5);
  v21 = *(a2 + 28);
  v22 = sub_ABA9C0();
  (*(*(v22 - 8) + 8))(v6 + v21, v22);
  v23 = *(v11 + 16);
  v23(v6 + v21, a5, v10);
  (*(v11 + 56))(v6 + v21, 0, 1, v10);
  if (qword_E0D588 != -1)
  {
    swift_once();
  }

  v24 = sub_AB4BC0();
  __swift_project_value_buffer(v24, qword_E16630);
  v25 = v36;
  v23(v36, a5, v10);
  v26 = sub_AB4BA0();
  v27 = sub_AB9F50();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v10);
    v30 = sub_AB9350();
    v32 = v31;
    (*(v11 + 8))(v25, v10);
    v33 = sub_500C84(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_0, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {

    (*(v11 + 8))(v25, v10);
  }
}

uint64_t sub_786078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = type metadata accessor for OptimisticValue.Transaction(0, a3, v8, v9);
  v13 = *(*(a3 - 8) + 32);
  v13(a4 + *(v10 + 28), a1, a3);
  v11 = a4 + *(v10 + 32);

  return (v13)(v11, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v69, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v59 - v9;
  v10 = sub_ABA9C0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v76 = *(v10 - 8);
  v14 = v76;
  __chkstk_darwin();
  v75 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v59 - v16;
  v18 = __chkstk_darwin();
  v20 = &v59 - v19;
  v21 = v7[2];
  v68 = a1;
  v61 = v21;
  v62 = v7 + 2;
  (v21)(&v59 - v19, a1, v6, v18);
  v64 = v7[7];
  v65 = v7 + 7;
  v64(v20, 0, 1, v6);
  v70 = a2;
  v22 = *(a2 + 28);
  v67 = v14;
  v23 = *(v14 + 16);
  v63 = v22;
  v24 = v10;
  v23(v17, v77 + v22, v10);
  v73 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v74 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v78 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v60 = v26;
    v28 = *(v76 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v78;
    v30 = v27(&v78[v74], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v72 + 8))(v31, v73);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v78 = v28;
    v43 = v24;
    if (qword_E0D588 != -1)
    {
      swift_once();
    }

    v44 = sub_AB4BC0();
    __swift_project_value_buffer(v44, qword_E16630);
    v45 = v66;
    v46 = v68;
    v47 = v61;
    v61(v66, v68, v32);
    v48 = sub_AB4BA0();
    v49 = sub_AB9F50();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v79 = v51;
      *v50 = 136446210;
      v47(v71, v45, v32);
      v52 = v32;
      v53 = sub_AB9350();
      v55 = v54;
      (v60[1])(v45, v52);
      v56 = sub_500C84(v53, v55, &v79);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&dword_0, v48, v49, "Cancelled transaction: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    else
    {

      (v60[1])(v45, v32);
    }

    v57 = v77;
    (*(*(v69 - 8) + 24))(v77, &v46[*(v32 + 28)]);
    sub_785440(v70);
    v58 = v63;
    (v78)(v57 + v63, v43);
    return v64(v57 + v58, 1, 1, v32);
  }

  v33 = v78;
  v23(v75, v78, v24);
  v34 = &v33[v74];
  v35 = v74;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v76 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v75, v6);
    v31 = v78;
    return (*(v72 + 8))(v31, v73);
  }

  v60 = v26;
  v38 = v78;
  v39 = v71;
  (v26[4])(v71, &v78[v35], v32);
  v40 = v75;
  LODWORD(v74) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v76 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v74)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v69, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v59 - v9;
  v10 = sub_ABA9C0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v76 = *(v10 - 8);
  v14 = v76;
  __chkstk_darwin();
  v75 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v59 - v16;
  v18 = __chkstk_darwin();
  v20 = &v59 - v19;
  v21 = v7[2];
  v68 = a1;
  v61 = v21;
  v62 = v7 + 2;
  (v21)(&v59 - v19, a1, v6, v18);
  v64 = v7[7];
  v65 = v7 + 7;
  v64(v20, 0, 1, v6);
  v70 = a2;
  v22 = *(a2 + 28);
  v67 = v14;
  v23 = *(v14 + 16);
  v63 = v22;
  v24 = v10;
  v23(v17, v77 + v22, v10);
  v73 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v74 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v78 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v60 = v26;
    v28 = *(v76 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v78;
    v30 = v27(&v78[v74], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v72 + 8))(v31, v73);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v78 = v28;
    v43 = v24;
    if (qword_E0D588 != -1)
    {
      swift_once();
    }

    v44 = sub_AB4BC0();
    __swift_project_value_buffer(v44, qword_E16630);
    v45 = v66;
    v46 = v68;
    v47 = v61;
    v61(v66, v68, v32);
    v48 = sub_AB4BA0();
    v49 = sub_AB9F50();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v79 = v51;
      *v50 = 136446210;
      v47(v71, v45, v32);
      v52 = v32;
      v53 = sub_AB9350();
      v55 = v54;
      (v60[1])(v45, v52);
      v56 = sub_500C84(v53, v55, &v79);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&dword_0, v48, v49, "Completed transaction: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    else
    {

      (v60[1])(v45, v32);
    }

    v57 = v77;
    (*(*(v69 - 8) + 24))(v77, &v46[*(v32 + 32)]);
    sub_785440(v70);
    v58 = v63;
    (v78)(v57 + v63, v43);
    return v64(v57 + v58, 1, 1, v32);
  }

  v33 = v78;
  v23(v75, v78, v24);
  v34 = &v33[v74];
  v35 = v74;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v76 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v75, v6);
    v31 = v78;
    return (*(v72 + 8))(v31, v73);
  }

  v60 = v26;
  v38 = v78;
  v39 = v71;
  (v26[4])(v71, &v78[v35], v32);
  v40 = v75;
  LODWORD(v74) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v76 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v74)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v12 = type metadata accessor for OptimisticValue(0, v10, v10, v11);
  OptimisticValue.value.getter(v12, v13, v14, v9);
  OptimisticValue.value.getter(v12, v15, v16, v7);
  v17 = sub_AB91C0();
  v18 = *(v5 + 8);
  v18(v7, a3);
  v18(v9, a3);
  return v17 & 1;
}

uint64_t sub_787128()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E16630);
  __swift_project_value_buffer(v0, qword_E16630);
  return sub_AB4BB0();
}

uint64_t sub_7871AC(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_785440(a2);
}

uint64_t sub_787214(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction(255, result, v2, v3);
    result = sub_ABA9C0();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_7872AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_AB3470() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void sub_787570(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_AB3470();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t sub_787998(uint64_t a1)
{
  result = sub_AB3470();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_787A20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_787C6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_AB3470() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_7881D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_788260()
{
  v1 = *v0;
  sub_ABB5C0();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_7882C4(uint64_t a1)
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  sub_AB93F0();

  return result;
}

Swift::Int sub_788318(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  PlayActivityFeatureIdentifier.rawValue.getter(v2);
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_788378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_7883A8@<X0>(unint64_t *a1@<X8>)
{
  result = PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_ABB420();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_78842C()
{
  result = qword_E16748;
  if (!qword_E16748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E16748);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1, v1[1]);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6, v7);
}

uint64_t sub_7885B0(__int16 a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = sub_569DE4();
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);
      v10 = *v4;
      if (v4[1])
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      v8(v11 | v10);
      sub_17654(v8, v9);
    }

    v12 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = *v4;
    v15 = v4[1];
    v20[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v20[4] = sub_693598();
    v20[5] = sub_6935EC();
    LOBYTE(v20[0]) = v14;
    BYTE1(v20[0]) = v15;
    sub_AB8CE0();
    if (!v16)
    {
      sub_AB8D10();
    }

    sub_4FD6CC();
    v17 = sub_ABAAB0();
    v19 = v18;

    v21._countAndFlagsBits = v17;
    v21._object = v19;
    sub_AB94A0(v21);

    NSUserDefaults.encodeValue(_:forKey:)(v20, 0x2D74726F53, 0xE500000000000000);

    result = __swift_destroy_boxed_opaque_existential_0(v20);
    *(v2 + v12) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_7885B0(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return sub_788944;
}

void sub_788944(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_7885B0(v6 | v4);

  free(v1);
}

void *PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = sub_AB8E20();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  sub_15F84(a1, v5, &qword_E10B00, &qword_B1A0A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(a1, &qword_E10B00, &qword_B1A0A0);
    sub_12E1C(v5, &qword_E10B00, &qword_B1A0A0);
LABEL_15:
    sub_17654(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_AB8510();
  sub_AB8500();
  sub_AB8390();

  v11 = sub_AB84A0();

  if ((v11 & 1) == 0)
  {
    sub_12E1C(a1, &qword_E10B00, &qword_B1A0A0);
    (*(v7 + 8))(v9, v6);
    goto LABEL_15;
  }

  (*(v7 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v9, v6);
  v39 = objc_opt_self();
  v12 = [v39 standardUserDefaults];
  v43 = 0x2D74726F53;
  v44 = 0xE500000000000000;
  v13 = sub_AB8CE0();
  v40 = a1;
  if (!v14)
  {
    v13 = sub_AB8D10();
  }

  v49 = v13;
  v50 = v14;
  v47 = 46;
  v48 = 0xE100000000000000;
  v45 = 45;
  v46 = 0xE100000000000000;
  v15 = sub_4FD6CC();
  v16 = sub_ABAAB0();
  v18 = v17;

  v51._countAndFlagsBits = v16;
  v51._object = v18;
  sub_AB94A0(v51);

  sub_693598();
  sub_6935EC();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v45);

  if ((v45 & 0xFF00) == 0x200)
  {
    v19 = [v39 standardUserDefaults];
    v20 = sub_AB8CE0();
    if (!v21)
    {
      v20 = sub_AB8D10();
    }

    v43 = v20;
    v44 = v21;
    v49 = 46;
    v50 = 0xE100000000000000;
    v47 = 45;
    v48 = 0xE100000000000000;
    LOBYTE(v22) = 1;
    v23 = sub_ABAAB0();
    v25 = v24;

    v26 = NSUserDefaults.sortType(for:keyDomain:)(194, v23, v25);

    v27 = 0;
    if (v26 <= 6u)
    {
      switch(v26)
      {
        case 1u:
          v27 = 0;
          LOBYTE(v22) = 0;
          break;
        case 2u:
          v27 = 1;
          break;
        case 6u:
          v27 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v26)
    {
      case 7u:
        v27 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v22) = 0;
LABEL_21:
        v27 = 4;
        break;
    }
  }

  else
  {
    v27 = v45;
    v22 = BYTE1(v45) & 1;
  }

LABEL_25:
  v28 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v28 = v27;
  v28[1] = v22;
  v49 = 0x2D74726F53;
  v50 = 0xE500000000000000;
  v29 = sub_AB8CE0();
  if (!v30)
  {
    v29 = sub_AB8D10();
  }

  v31 = v29;
  v32 = v30;
  v39 = sub_789150();
  v47 = v31;
  v48 = v32;
  v45 = 46;
  v46 = 0xE100000000000000;
  v41 = 45;
  v42 = 0xE100000000000000;
  v33 = sub_ABAAB0();
  v35 = v34;

  v52._countAndFlagsBits = v33;
  v52._object = v35;
  sub_AB94A0(v52);

  v36 = swift_allocObject();
  swift_weakInit();

  v37 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v49, 0, 0, sub_7895C0, v36, &type metadata for String, v15);

  sub_12E1C(v40, &qword_E10B00, &qword_B1A0A0);

  (*(v7 + 8))(v9, v6);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v37;

  return v2;
}

unint64_t sub_789150()
{
  result = qword_E16778;
  if (!qword_E16778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E16778);
  }

  return result;
}

uint64_t sub_78919C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_7891D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v4 = v15 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v7 = Strong;
      sub_15F84(a1, v16, &qword_E11F60, &unk_B1BC70);
      if (!v17)
      {

        sub_12E1C(v16, &qword_E11F60, &unk_B1BC70);
        return result;
      }

      if (swift_dynamicCast())
      {
        v9 = v15[1];
        v8 = v15[2];
        sub_AB2AD0();
        swift_allocObject();
        sub_AB2AC0();
        sub_693598();
        sub_AB2AB0();

        v10 = v16[0];
        v11 = v16[1];
        v12 = sub_AB9990();
        (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
        sub_AB9940();

        v13 = sub_AB9930();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = &protocol witness table for MainActor;
        *(v14 + 32) = v7;
        *(v14 + 40) = v10;
        *(v14 + 41) = v11;
        sub_5E89D8(0, 0, v4, &unk_B27EB0, v14);

        sub_466B8(v9, v8);
      }
    }
  }

  return result;
}

uint64_t sub_7895C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  sub_AB9940();
  *(v5 + 48) = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_789664, v7, v6);
}

uint64_t sub_789664()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_7885B0(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F158, &unk_B1EEC0);
  __chkstk_darwin();
  v66 = v52 - v1;
  v65 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v62 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v52 - v3;
  v63 = v4;
  __chkstk_darwin();
  v57 = v52 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190);
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v56 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v52 - v7;
  __chkstk_darwin();
  v54 = v52 - v8;
  v58 = v9;
  __chkstk_darwin();
  v11 = v52 - v10;
  v67 = v0;
  v52[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v53 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v71 = xmmword_AF4EC0;
  do
  {
    v70 = v13;
    v69 = v12;
    v14 = *(&off_D1D270 + v12 + 32);
    v15 = *v53;
    v16 = v53[1];
    v17 = v66;
    sub_AB8CD0();
    v18 = v65;
    v19 = *(v65 + 24);
    v20 = sub_AB8CB0();
    v21 = v57;
    (*(*(v20 - 8) + 56))(&v57[v19], 1, 1, v20);
    *v21 = v14;
    v21[1] = v15;
    v21[2] = v16;
    v22 = v67;

    sub_56B0A0(v17, &v21[v19]);
    v23 = &v21[*(v18 + 28)];
    *v23 = sub_78A46C;
    v23[1] = v22;
    v24 = v61;
    sub_56B494(v21, v61);
    v25 = v14 + 14;
    v68 = v14 + 14;
    v26 = v62;
    sub_56B494(v21, v62);
    v27 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v28 = swift_allocObject();
    sub_56B7F0(v26, v28 + v27);
    sub_56B7F0(v24, v11);
    v29 = v60;
    v11[*(v60 + 36)] = v25;
    *&v11[v29[11]] = 0x4014000000000000;
    v30 = &v11[v29[10]];
    *v30 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v30[1] = 0;
    v31 = &v11[v29[12]];
    *v31 = &unk_B19300;
    *(v31 + 1) = v28;
    v32 = &v11[v29[13]];
    *v32 = &unk_B19308;
    *(v32 + 1) = 0;
    sub_78A5B4(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1A8, &qword_B182B0);
    inited = swift_initStackObject();
    *(inited + 16) = v71;
    v34 = v54;
    sub_15F84(v11, v54, &qword_E0EC30, &unk_B1F190);
    v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v36 = swift_allocObject();
    sub_78A610(v34, v36 + v35);
    v37 = v55;
    sub_15F84(v11, v55, &qword_E0EC30, &unk_B1F190);
    v38 = swift_allocObject();
    sub_78A610(v37, v38 + v35);
    v39 = v56;
    sub_15F84(v11, v56, &qword_E0EC30, &unk_B1F190);
    v40 = swift_allocObject();
    sub_78A610(v39, v40 + v35);
    *(inited + 32) = v68;
    *(inited + 40) = sub_78A680;
    *(inited + 48) = v36;
    *(inited + 56) = sub_78A6FC;
    *(inited + 64) = v38;
    *(inited + 72) = &unk_B27D18;
    *(inited + 80) = v40;
    v13 = v70;
    sub_12E1C(v11, &qword_E0EC30, &unk_B1F190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0, &unk_B16B00);
    v41 = swift_initStackObject();
    *(v41 + 16) = v71;
    *(v41 + 32) = inited;
    v42 = v41 + 32;
    v43 = sub_512C10();
    swift_setDeallocating();
    sub_12E1C(v42, &qword_E0E0B8, &unk_B182F0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_5076A8(0, v13[2] + 1, 1, v13);
    }

    v45 = v13[2];
    v44 = v13[3];
    v46 = v69;
    if (v45 >= v44 >> 1)
    {
      v13 = sub_5076A8((v44 > 1), v45 + 1, 1, v13);
    }

    v12 = v46 + 1;
    v13[2] = v45 + 1;
    v13[v45 + 4] = v43;
  }

  while (v12 != 5);
  v47 = sub_512C10();

  v48 = swift_initStackObject();
  *(v48 + 16) = v71;
  *(v48 + 32) = v47;
  v49 = v48 + 32;
  v50 = sub_512C10();
  swift_setDeallocating();
  sub_12E1C(v49, &qword_E0E0B8, &unk_B182F0);
  return v50;
}

uint64_t sub_789E8C(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_7885B0(v6 | v4);
}

double static PlaylistSortingController.apply(for:to:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = sub_AB8E20();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  if (PlaylistSortingController.init(_:)(v4))
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

double PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16780, &qword_B27D48);
      sub_AB7F40();

      swift_getKeyPath();
      sub_AB7F40();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16780, &qword_B27D48);
        sub_AB7F40();
        goto LABEL_10;
      }

      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16780, &qword_B27D48);
      sub_AB7F40();
    }

    swift_getKeyPath();
    sub_AB7F40();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16780, &qword_B27D48);
    sub_AB7F40();

    goto LABEL_12;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16780, &qword_B27D48);
LABEL_13:
  sub_AB7F40();

  return result;
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_AB8E20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_17654(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_AB8E20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_17654(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_78A3E8()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E16750);
  __swift_project_value_buffer(v0, qword_E16750);
  return sub_AB4BB0();
}

uint64_t sub_78A478()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = sub_AB8CB0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_78A5B4(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_78A610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_78A680@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_52B6A4(v4, a1);
}

uint64_t sub_78A6FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_52B6D8(v2);
}

uint64_t sub_78A76C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_17BD0;

  return sub_52BBEC(v0 + v3);
}

uint64_t sub_78A8BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_AB3F40();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t keypath_get_16Tm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_78A97C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_AB3F50();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController(uint64_t a1)
{
  result = qword_E167B0;
  if (!qword_E167B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_78AA18(uint64_t a1)
{
  result = sub_AB8E20();
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

uint64_t sub_78AAD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_78AB10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_7895C8(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_78B630(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  sub_90090(v1, *(v0 + 16));
  return v1;
}

void sub_78AC88(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (qword_E0D598 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&qword_E16858;
    CGContextSetLineWidth(v19, *&qword_E16858);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11468, &qword_B1E300);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
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
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_90090(v6, v5);
  sub_78B630(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)(double a1, double a2)
{
  v3 = *v2;
  UIRoundToScale();
  return v4 * v3;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_5076CC(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    sub_61D1B8(0, 1, 0);
    sub_ABA010();
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = a1 + 40;
      do
      {
        sub_ABA020();
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_78B630(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_90090(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = sub_AB3250().super.isa;
  sub_466B8(a1, a2);
  v11 = sub_AB9260();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = sub_AB9260();

  v14 = sub_AB9260();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (qword_E0D598 != -1)
    {
      swift_once();
    }

    v28 = *&qword_E16858;
    v29 = v27 * *&qword_E16858;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_78BD84;
    *(v32 + 24) = v31;
    aBlock[4] = sub_3F328C;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_41A314;
    aBlock[3] = &block_descriptor_210;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = sub_AB3260();
    v37 = v36;

    v38 = sub_AB3250().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            sub_466B8(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  sub_90090(a1, a2);
                  v49 = v44;
                  sub_466B8(a1, a2);

LABEL_22:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_33;
              }

LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_466B8(v35, v37);
        }

        else
        {

          sub_466B8(v35, v37);
        }
      }

      else
      {

        sub_466B8(v35, v37);
      }
    }

    else
    {

      sub_466B8(v35, v37);
    }

    v21 = sub_78BD84;
LABEL_21:
    sub_466B8(a1, a2);
    sub_17654(v21, v31);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_78BD44()
{

  return swift_deallocObject();
}

double block_copy_helper_210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (qword_E0D5B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)(uint64_t a1, uint64_t a2)
{

  return sub_AB4B30();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  sub_AB4BC0();
  __chkstk_darwin();
  v2 = a1;
  sub_AB4BD0();
  return sub_AB4B10();
}

uint64_t sub_78BF30()
{
  v0 = sub_AB4B40();
  __swift_allocate_value_buffer(v0, static OSSignposter.launch);
  __swift_project_value_buffer(v0, static OSSignposter.launch);
  return sub_AB4B30();
}

uint64_t sub_78BFC8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4B40();

  return __swift_project_value_buffer(v4, a2);
}

void sub_78C040()
{
  sub_AB4BC0();
  __chkstk_darwin();
  v0 = sub_AB4B40();
  __swift_allocate_value_buffer(v0, static OSSignposter.sharePlay);
  __swift_project_value_buffer(v0, static OSSignposter.sharePlay);
  if (qword_E0D5B0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;
  sub_AB4BD0();
  sub_AB4B10();
}

uint64_t sub_78C158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4B40();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_78C1F0()
{
  sub_615D34();
  result = sub_ABA9A0();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_E0D5B0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t sub_78C2B4()
{
  sub_79137C(v0, v8);
  if (v9 == 1)
  {
    v1 = *&v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_8[8 * v2];
  }

  else
  {
    sub_304128(v8, v6);
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v5 = sub_78C368(v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
    return v5;
  }
}

uint64_t sub_78C368(uint64_t a1)
{
  v97 = sub_AB8DE0();
  v96 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v87 - v4;
  v101 = sub_AB8860();
  v95 = *(v101 - 8);
  __chkstk_darwin();
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v87 - v6;
  v103 = sub_AB3F80();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v99 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v87 - v8;
  v106 = sub_AB4630();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v105 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_AB45E0();
  v104 = *(v109 - 8);
  __chkstk_darwin();
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_AB46B0();
  v107 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_AB4770();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_AB8AE0();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_AB86C0();
  v116 = *(v120 - 8);
  __chkstk_darwin();
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_AB8E20();
  v119 = *(v123 - 8);
  __chkstk_darwin();
  v122 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_AB8030();
  v121 = *(v125 - 8);
  __chkstk_darwin();
  v133 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_AB44B0();
  v124 = *(v128 - 8);
  __chkstk_darwin();
  v127 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_AB8770();
  v126 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 - 8);
  __chkstk_darwin();
  v92 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v87 - v22;
  __chkstk_darwin();
  v130 = &v87 - v24;
  __chkstk_darwin();
  v26 = &v87 - v25;
  if (qword_E0D5B8 != -1)
  {
    swift_once();
  }

  v27 = sub_AB4BC0();
  v28 = __swift_project_value_buffer(v27, static Logger.capabilityUpsell);
  v30 = v20 + 16;
  v29 = *(v20 + 16);
  v135 = v1;
  v29(v26, v1, a1);
  v90 = v28;
  v31 = sub_AB4BA0();
  v32 = sub_AB9F20();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v89 = v23;
    v34 = v33;
    v35 = swift_slowAlloc();
    v129 = v20;
    v87 = v35;
    v137 = v35;
    *v34 = 136315138;
    v29(v130, v26, a1);
    v36 = sub_AB9350();
    v88 = v15;
    v37 = a1;
    v39 = v38;
    v136 = *(v129 + 8);
    v136(v26, v37);
    v40 = sub_500C84(v36, v39, &v137);
    a1 = v37;
    v15 = v88;

    *(v34 + 4) = v40;
    _os_log_impl(&dword_0, v31, v32, "MusicItem - mediaKind =%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);

    v23 = v89;
  }

  else
  {

    v136 = *(v20 + 8);
    v136(v26, a1);
  }

  v41 = v132;
  v42 = v135;
  v132 = v30;
  v29(v23, v135, a1);
  v43 = v131;
  v44 = swift_dynamicCast();
  v46 = v133;
  v45 = v134;
  if (!v44)
  {
    v48 = v29;
    v49 = v127;
    v50 = v128;
    if (swift_dynamicCast())
    {
      (*(v124 + 8))(v49, v50);
      v47 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v51 = v125;
    if (swift_dynamicCast())
    {
      (*(v121 + 8))(v46, v51);
      v47 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v53 = v122;
    v52 = v123;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v53, v52);
      v47 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v54 = v15;
    v55 = v120;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v54, v55);
      v47 = 0x73676E6F73;
      goto LABEL_36;
    }

    v56 = v117;
    v57 = v118;
    if (swift_dynamicCast())
    {
      (*(v113 + 8))(v56, v57);
      v47 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v58 = v114;
    v59 = v115;
    if (swift_dynamicCast())
    {
      (*(v110 + 8))(v58, v59);
      v47 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v60 = v111;
    v61 = v112;
    if (swift_dynamicCast())
    {
      (*(v107 + 8))(v60, v61);
      v47 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v62 = v108;
    v63 = v109;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v104 + 8))(v62, v63);
      goto LABEL_36;
    }

    v64 = v105;
    v65 = v106;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v102 + 8))(v64, v65);
      goto LABEL_36;
    }

    v66 = v45;
    v67 = v103;
    if (swift_dynamicCast())
    {
      v68 = v100;
      v69 = v99;
      (*(v100 + 32))(v99, v66, v67);
      sub_78F344(&v137);
    }

    else
    {
      v70 = v98;
      v67 = v101;
      if (!swift_dynamicCast())
      {
        v73 = v93;
        if (!swift_dynamicCast())
        {
          v76 = v48;
          v77 = v92;
          v76(v92, v42, a1);
          v78 = sub_AB4BA0();
          v79 = sub_AB9F40();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v137 = v135;
            *v80 = 136315138;
            v76(v130, v77, a1);
            v81 = sub_AB9350();
            v82 = v77;
            v83 = v81;
            v85 = v84;
            v136(v82, a1);
            v86 = sub_500C84(v83, v85, &v137);

            *(v80 + 4) = v86;
            _os_log_impl(&dword_0, v78, v79, "Unsupported MusicItem kind=%s", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v135);
          }

          else
          {

            v136(v77, a1);
          }

          goto LABEL_35;
        }

        v74 = v91;
        (*(v96 + 32))(v91, v73, v97);
        sub_78E974(&v137);
        v75 = v138;
        if (v138)
        {
          __swift_project_boxed_opaque_existential_1(&v137, v138);
          v47 = sub_78C368(v75);
          (*(v96 + 8))(v74, v97);
          goto LABEL_32;
        }

        (*(v96 + 8))(v74, v97);
LABEL_34:
        sub_12E1C(&v137, &qword_E130E0, &qword_B21BC0);
LABEL_35:
        v47 = 0;
        goto LABEL_36;
      }

      v68 = v95;
      v69 = v94;
      (*(v95 + 32))(v94, v70, v67);
      Track.musicItem.getter(&v137);
    }

    v71 = v138;
    if (v138)
    {
      __swift_project_boxed_opaque_existential_1(&v137, v138);
      v47 = sub_78C368(v71);
      (*(v68 + 8))(v69, v67);
LABEL_32:
      __swift_destroy_boxed_opaque_existential_0(&v137);
      goto LABEL_36;
    }

    (*(v68 + 8))(v69, v67);
    goto LABEL_34;
  }

  (*(v126 + 8))(v43, v41);
  v47 = 0x736D75626C61;
LABEL_36:
  v136(v23, a1);
  return v47;
}

uint64_t sub_78D574(uint64_t a1)
{
  v107 = sub_AB8DE0();
  v103 = *(v107 - 8);
  __chkstk_darwin();
  v102 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v98 - v3;
  v111 = sub_AB8860();
  v106 = *(v111 - 8);
  __chkstk_darwin();
  v105 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v98 - v5;
  v115 = sub_AB3F80();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v98 - v7;
  v119 = sub_AB4630();
  v113 = *(v119 - 8);
  __chkstk_darwin();
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v98 - v9;
  v123 = sub_AB45E0();
  v117 = *(v123 - 8);
  __chkstk_darwin();
  v116 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v98 - v11;
  v127 = sub_AB46B0();
  v121 = *(v127 - 8);
  __chkstk_darwin();
  v120 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v98 - v13;
  v131 = sub_AB4770();
  v125 = *(v131 - 8);
  __chkstk_darwin();
  v124 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v98 - v15;
  v135 = sub_AB8AE0();
  v129 = *(v135 - 8);
  __chkstk_darwin();
  v128 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v98 - v17;
  v139 = sub_AB86C0();
  v133 = *(v139 - 8);
  __chkstk_darwin();
  v132 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v98 - v19;
  v143 = sub_AB8E20();
  v137 = *(v143 - 8);
  __chkstk_darwin();
  v136 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v98 - v21;
  v145 = sub_AB8030();
  v141 = *(v145 - 8);
  __chkstk_darwin();
  v140 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v98 - v23;
  v25 = sub_AB44B0();
  v144 = *(v25 - 8);
  __chkstk_darwin();
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v98 - v28;
  v30 = sub_AB8770();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v98 - v34;
  v36 = *(a1 - 8);
  __chkstk_darwin();
  v98 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v98 - v38;
  v39 = __chkstk_darwin();
  v41 = &v98 - v40;
  v146 = v36;
  v42 = v36 + 16;
  v43 = *(v36 + 16);
  v45 = v44;
  v100 = v42;
  v99 = v43;
  (v43)(&v98 - v40, v147, v44, v39);
  if (swift_dynamicCast())
  {
    (*(v31 + 32))(v33, v35, v30);
    v46 = sub_AB8710();
    v48 = v47;
    (*(v31 + 8))(v33, v30);
    if (v48)
    {
      v49 = v46;
    }

    else
    {
      v49 = 0;
    }

    v50 = v45;
    v51 = v146;
    goto LABEL_20;
  }

  v50 = v45;
  if (swift_dynamicCast())
  {
    v52 = v144;
    (*(v144 + 32))(v27, v29, v25);
    v49 = sub_AB44A0();
    v54 = v53;
    (*(v52 + 8))(v27, v25);
LABEL_10:
    if (!v54)
    {
      v49 = 0;
    }

    v51 = v146;
    goto LABEL_20;
  }

  v55 = v145;
  if (swift_dynamicCast())
  {
    v57 = v140;
    v56 = v141;
    (*(v141 + 32))(v140, v24, v55);
    v49 = sub_AB7FE0();
    v54 = v58;
    (*(v56 + 8))(v57, v55);
    goto LABEL_10;
  }

  v60 = v142;
  v59 = v143;
  v61 = swift_dynamicCast();
  v51 = v146;
  if (v61)
  {
    v63 = v136;
    v62 = v137;
    (*(v137 + 32))(v136, v60, v59);
    v64 = sub_AB8CE0();
LABEL_17:
    v49 = v64;
    v67 = v65;
    (*(v62 + 8))(v63, v59);
    goto LABEL_18;
  }

  v66 = v138;
  v59 = v139;
  if (swift_dynamicCast())
  {
    v63 = v132;
    v62 = v133;
    (*(v133 + 32))(v132, v66, v59);
    v64 = sub_AB85F0();
    goto LABEL_17;
  }

  v70 = v134;
  v69 = v135;
  if (swift_dynamicCast())
  {
    v71 = v129;
    v72 = v128;
    (*(v129 + 32))(v128, v70, v69);
    v49 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    (*(v71 + 8))(v72, v69);
    goto LABEL_20;
  }

  v73 = v130;
  v59 = v131;
  if (swift_dynamicCast())
  {
    v62 = v125;
    v63 = v124;
    (*(v125 + 32))(v124, v73, v59);
    v64 = sub_AB4760();
    goto LABEL_17;
  }

  v74 = v126;
  v59 = v127;
  if (swift_dynamicCast())
  {
    v62 = v121;
    v63 = v120;
    (*(v121 + 32))(v120, v74, v59);
    v64 = sub_AB46A0();
    goto LABEL_17;
  }

  v75 = v122;
  v59 = v123;
  if (swift_dynamicCast())
  {
    v62 = v117;
    v63 = v116;
    (*(v117 + 32))(v116, v75, v59);
    v64 = sub_AB45D0();
    goto LABEL_17;
  }

  v76 = v118;
  v77 = v119;
  if (!swift_dynamicCast())
  {
    v81 = v114;
    v82 = v115;
    if (swift_dynamicCast())
    {
      v83 = v110;
      v84 = v109;
      (*(v110 + 32))(v109, v81, v82);
      sub_78F344(&v148);
    }

    else
    {
      v85 = v108;
      v82 = v111;
      if (swift_dynamicCast())
      {
        v83 = v106;
        v84 = v105;
        (*(v106 + 32))(v105, v85, v82);
        Track.musicItem.getter(&v148);
      }

      else
      {
        v86 = v104;
        v82 = v107;
        if (!swift_dynamicCast())
        {
          if (qword_E0D5B8 != -1)
          {
            swift_once();
          }

          v88 = sub_AB4BC0();
          __swift_project_value_buffer(v88, static Logger.capabilityUpsell);
          v89 = v101;
          v90 = v99;
          v99(v101, v147, v50);
          v91 = sub_AB4BA0();
          v92 = sub_AB9F40();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v148 = v147;
            *v93 = 136315138;
            v90(v98, v89, v50);
            v94 = sub_AB9350();
            v96 = v95;
            (*(v51 + 8))(v89, v50);
            v97 = sub_500C84(v94, v96, &v148);

            *(v93 + 4) = v97;
            _os_log_impl(&dword_0, v91, v92, "Unsupported MusicItem catalogID=%s", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v147);
          }

          else
          {

            (*(v51 + 8))(v89, v50);
          }

          goto LABEL_40;
        }

        v83 = v103;
        v84 = v102;
        (*(v103 + 32))(v102, v86, v82);
        sub_78E974(&v148);
      }
    }

    v87 = v149;
    if (v149)
    {
      __swift_project_boxed_opaque_existential_1(&v148, v149);
      v49 = sub_78D574(v87);
      (*(v83 + 8))(v84, v82);
      __swift_destroy_boxed_opaque_existential_0(&v148);
      goto LABEL_20;
    }

    (*(v83 + 8))(v84, v82);
    sub_12E1C(&v148, &qword_E130E0, &qword_B21BC0);
LABEL_40:
    v49 = 0;
    goto LABEL_20;
  }

  v78 = v113;
  v79 = v112;
  (*(v113 + 32))(v112, v76, v77);
  v49 = sub_AB4620();
  v67 = v80;
  (*(v78 + 8))(v79, v77);
LABEL_18:
  if (!v67)
  {
    v49 = 0;
  }

LABEL_20:
  (*(v51 + 8))(v41, v50);
  return v49;
}

uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (qword_E0D5B8 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.capabilityUpsell);
}

uint64_t sub_78E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_78E840, v6, v5);
}

uint64_t sub_78E840()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_AB30F0(v2);
  v4 = v3;
  sub_52A314(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_7913E4(&qword_E0DE20, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_B160E4);
  isa = sub_AB8FD0().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_78E974@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = sub_AB8DE0();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin();
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB4630();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin();
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB45E0();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin();
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB4770();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin();
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB86C0();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB8030();
  v74 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB44B0();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB8D50();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v59 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v59 - v23;
  sub_AB8D60();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v24, v20);
    v26 = *(v17 + 32);
    v26(v19, v24, v16);
    v27 = v75;
    v75[3] = v16;
    v27[4] = sub_7913E4(&qword_E0F7A0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
    return (v26)(boxed_opaque_existential_0, v19, v16);
  }

  v30 = v75;
  if (v25 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v31 = v74[4];
    v31(v15, v24, v13);
    v30[3] = v13;
    v30[4] = &protocol witness table for MusicVideo;
    v32 = __swift_allocate_boxed_opaque_existential_0(v30);
    return (v31)(v32, v15, v13);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v24, v20);
    v33 = v73;
    v34 = *(isa + 4);
    v34(v12, v24, v73);
    v30[3] = v33;
    v30[4] = &protocol witness table for Song;
    v35 = __swift_allocate_boxed_opaque_existential_0(v30);
    return (v34)(v35, v12, v33);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v69;
    v37 = *(v70 + 32);
    v38 = v71;
    v37(v69, v24, v71);
    v30[3] = v38;
    v39 = &unk_E0F7B0;
    v40 = &type metadata accessor for TVEpisode;
    v41 = &protocol conformance descriptor for TVEpisode;
LABEL_13:
    v30[4] = sub_7913E4(v39, v40, v41);
    v42 = __swift_allocate_boxed_opaque_existential_0(v30);
    return (v37)(v42, v36, v38);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v66;
    v37 = *(v67 + 32);
    v38 = v68;
    v37(v66, v24, v68);
    v30[3] = v38;
    v39 = &unk_E0F7C8;
    v40 = &type metadata accessor for UploadedAudio;
    v41 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_13;
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v60;
    v37 = *(v61 + 32);
    v38 = v62;
    v37(v60, v24, v62);
    v30[3] = v38;
    v39 = &unk_E0F7D0;
    v40 = &type metadata accessor for UploadedVideo;
    v41 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (qword_E0D5B8 != -1)
  {
    swift_once();
  }

  v44 = sub_AB4BC0();
  __swift_project_value_buffer(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = sub_AB4BA0();
  v49 = sub_AB9F40();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    sub_AB8D60();
    sub_7913E4(&qword_E0ECE8, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    v52 = sub_ABB330();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = sub_500C84(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&dword_0, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v30[4] = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  return v58(v24, v43);
}

uint64_t sub_78F344@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v1 = sub_AB8CA0();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin();
  v86 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB8E20();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v89 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB8030();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin();
  v92 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB44B0();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin();
  v95 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB8AE0();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin();
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_AB4630();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_AB45E0();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_AB46B0();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB4770();
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin();
  v79 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB86C0();
  v85 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_AB8770();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB3F80();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v69 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v28 = &v68 - v27;
  v29 = *(v24 + 16);
  v29(&v68 - v27, v99, v23, v26);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v98;
    v98[3] = v19;
    v32[4] = &protocol witness table for Album;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    return (v31)(boxed_opaque_existential_0, v22, v19);
  }

  v35 = v98;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v95;
    v37 = *(v96 + 32);
    v38 = v28;
    v39 = v97;
    v37(v95, v38, v97);
    v35[3] = v39;
    v40 = &qword_E0F7A0;
    v41 = &type metadata accessor for MusicMovie;
    v42 = &protocol conformance descriptor for MusicMovie;
LABEL_5:
    v35[4] = sub_7913E4(v40, v41, v42);
    v43 = __swift_allocate_boxed_opaque_existential_0(v35);
    v44 = v36;
    v45 = v39;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v92;
    v37 = *(v93 + 32);
    v47 = v94;
    v37(v92, v28, v94);
    v48 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v47;
    v35[4] = v48;
    v43 = __swift_allocate_boxed_opaque_existential_0(v35);
    v44 = v46;
    v45 = v47;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v89;
    v37 = *(v90 + 32);
    v47 = v91;
    v37(v89, v28, v91);
    v48 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v86;
    v37 = *(v87 + 32);
    v49 = v28;
    v39 = v88;
    v37(v86, v49, v88);
    v35[3] = v39;
    v40 = &unk_E111A0;
    v41 = &type metadata accessor for Playlist.Folder;
    v42 = &protocol conformance descriptor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v50 = *(v85 + 32);
    v50(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v51 = __swift_allocate_boxed_opaque_existential_0(v35);
    return (v50)(v51, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v46 = v82;
      v37 = *(v83 + 32);
      v47 = v84;
      v37(v82, v28, v84);
      v48 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v80 + 32);
      v36 = v79;
      v52 = v28;
      v39 = v81;
      v37(v79, v52, v81);
      v35[3] = v39;
      v40 = &unk_E0F7B0;
      v41 = &type metadata accessor for TVEpisode;
      v42 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v77 + 32);
      v36 = v76;
      v53 = v28;
      v39 = v78;
      v37(v76, v53, v78);
      v35[3] = v39;
      v40 = &unk_E0F7C0;
      v41 = &type metadata accessor for TVShow;
      v42 = &protocol conformance descriptor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v74 + 32);
      v36 = v73;
      v54 = v28;
      v39 = v75;
      v37(v73, v54, v75);
      v35[3] = v39;
      v40 = &unk_E0F7C8;
      v41 = &type metadata accessor for UploadedAudio;
      v42 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v71 + 32);
      v36 = v70;
      v55 = v28;
      v39 = v72;
      v37(v70, v55, v72);
      v35[3] = v39;
      v40 = &unk_E0F7D0;
      v41 = &type metadata accessor for UploadedVideo;
      v42 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_5;
    }

    if (qword_E0D5B8 != -1)
    {
      swift_once();
    }

    v56 = sub_AB4BC0();
    __swift_project_value_buffer(v56, static Logger.capabilityUpsell);
    v57 = v69;
    (v29)(v69, v99, v23);
    v58 = sub_AB4BA0();
    v59 = sub_AB9F40();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v97 = v60;
      v99 = swift_slowAlloc();
      v100 = v99;
      *v60 = 136315138;
      sub_7913E4(&unk_E16860, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v61 = sub_ABB330();
      v62 = v57;
      v64 = v63;
      v65 = *(v24 + 8);
      v65(v62, v23);
      v66 = sub_500C84(v61, v64, &v100);

      v67 = v97;
      *(v97 + 1) = v66;
      _os_log_impl(&dword_0, v58, v59, "Unsupported GenericMusicItem kind=%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
    }

    else
    {

      v65 = *(v24 + 8);
      v65(v57, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v65)(v28, v23);
  }
}

uint64_t sub_790134()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.capabilityUpsell);
  __swift_project_value_buffer(v0, static Logger.capabilityUpsell);
  return sub_AB4BB0();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0D5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v3 = &v81 - v2;
  v4 = sub_AB2C10();
  v89 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v81 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v10 = &v81 - v9;
  v11 = sub_AB31C0();
  v91 = *(v11 - 8);
  v12 = *(v91 + 64);
  __chkstk_darwin();
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v13;
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_4FD6B0);
  v14 = v97;
  if (!v97)
  {
    goto LABEL_8;
  }

  v15 = [v97 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v15)
  {

    goto LABEL_8;
  }

  v86 = v3;
  v16 = v15;
  v17 = sub_AB92A0();
  v87 = v11;
  v18 = v17;
  v20 = v19;

  *&v97 = 0x2F2F3A636973756DLL;
  *(&v97 + 1) = 0xE800000000000000;
  v99._countAndFlagsBits = v18;
  v21 = v87;
  v99._object = v20;
  sub_AB94A0(v99);

  sub_AB3180();

  v22 = v91;
  if ((*(v91 + 48))(v10, 1, v21) == 1)
  {

    sub_12E1C(v10, &qword_E0DC30, &unk_B15160);
LABEL_8:
    if (qword_E0D5B8 != -1)
    {
      swift_once();
    }

    v23 = sub_AB4BC0();
    __swift_project_value_buffer(v23, static Logger.capabilityUpsell);
    v24 = sub_AB4BA0();
    v25 = sub_AB9F30();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Could not build marketingURL", v26, 2u);
    }

    return;
  }

  v27 = *(v22 + 32);
  v84 = v22 + 32;
  v83 = v27;
  v27(v90, v10, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E178, &qword_B28100);
  v28 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v85 = *(v89 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_AF85F0;
  v30 = v29;
  v82 = v28;
  sub_AB2BE0();
  sub_791190(a1, &v97);
  if (v98[24] != 253 && v98[24] != 255 && v98[24] != 254)
  {
    sub_53EE90(&v97);
  }

  sub_AB2BE0();

  sub_791190(a1, &v95);
  if (v96[24] < 0xFDu)
  {
    v97 = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_78C2B4();
    v33 = v30;
    if (v34)
    {
      sub_AB2BE0();

      v36 = *(v30 + 2);
      v35 = *(v30 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_506884((v35 > 1), v36 + 1, 1, v30);
      }

      v37 = v82;
      *(v33 + 2) = v36 + 1;
      (*(v89 + 32))(&v33[v37 + v36 * v85], v8, v4);
    }

    else
    {
      if (qword_E0D5B8 != -1)
      {
        swift_once();
      }

      v38 = sub_AB4BC0();
      __swift_project_value_buffer(v38, static Logger.capabilityUpsell);
      sub_79137C(&v97, &v95);
      v39 = sub_AB4BA0();
      v40 = sub_AB9F40();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v94 = v81;
        *v41 = 136315138;
        sub_79137C(&v95, v92);
        v42 = sub_AB9350();
        v44 = v43;
        sub_7913B4(&v95);
        v45 = sub_500C84(v42, v44, &v94);
        v33 = v30;

        *(v41 + 4) = v45;
        _os_log_impl(&dword_0, v39, v40, "Missing kind for item=%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
      }

      else
      {

        sub_7913B4(&v95);
      }

      v37 = v82;
    }

    sub_79137C(&v97, &v95);
    if (v96[24] == 1)
    {
      v46 = v95;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v48 = v47;

      if (v48)
      {
LABEL_34:
        sub_AB2BE0();

        v50 = *(v33 + 2);
        v49 = *(v33 + 3);
        if (v50 >= v49 >> 1)
        {
          v33 = sub_506884((v49 > 1), v50 + 1, 1, v33);
        }

        v32 = v90;
        sub_7913B4(&v97);
        *(v33 + 2) = v50 + 1;
        (*(v89 + 32))(&v33[v37 + v50 * v85], v6, v4);
        v31 = v86;
        goto LABEL_44;
      }
    }

    else
    {
      sub_304128(&v95, v92);
      v51 = v93;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      sub_78D574(v51);
      v53 = v52;
      __swift_destroy_boxed_opaque_existential_0(v92);
      if (v53)
      {
        goto LABEL_34;
      }
    }

    if (qword_E0D5B8 != -1)
    {
      swift_once();
    }

    v54 = sub_AB4BC0();
    __swift_project_value_buffer(v54, static Logger.capabilityUpsell);
    sub_79137C(&v97, &v95);
    v55 = sub_AB4BA0();
    v56 = sub_AB9F40();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v94 = v58;
      *v57 = 136315138;
      sub_79137C(&v95, v92);
      v59 = sub_AB9350();
      v61 = v60;
      sub_7913B4(&v95);
      v62 = sub_500C84(v59, v61, &v94);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_0, v55, v56, "Missing id for item=%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    else
    {

      sub_7913B4(&v95);
    }

    sub_7913B4(&v97);
    v32 = v90;
    v31 = v86;
    goto LABEL_44;
  }

  sub_53EE90(&v95);
  v31 = v86;
  v32 = v90;
  v33 = v30;
LABEL_44:
  v63._rawValue = v33;
  sub_AB3170(v63);

  if (qword_E0D5B8 != -1)
  {
    swift_once();
  }

  v64 = sub_AB4BC0();
  __swift_project_value_buffer(v64, static Logger.capabilityUpsell);
  v65 = sub_AB4BA0();
  v66 = sub_AB9F50();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v97 = v68;
    *v67 = 136446210;
    swift_beginAccess();
    sub_7913E4(&qword_E10A88, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v69 = v87;
    v70 = sub_ABB330();
    v72 = v32;
    v73 = sub_500C84(v70, v71, &v97);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_0, v65, v66, "Will present upsell with URL=%{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    v31 = v86;
  }

  else
  {

    v69 = v87;
    v72 = v32;
  }

  v74 = v91;
  v75 = sub_AB9990();
  (*(*(v75 - 8) + 56))(v31, 1, 1, v75);
  swift_beginAccess();
  v76 = v88;
  (*(v74 + 16))(v88, v72, v69);
  sub_AB9940();
  v77 = sub_AB9930();
  v78 = v74;
  v79 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  *(v80 + 24) = &protocol witness table for MainActor;
  v83(v80 + v79, v76, v69);
  sub_5E89D8(0, 0, v31, &unk_B28110, v80);

  (*(v78 + 8))(v72, v69);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore27SubscriptionUpsellPresenterV9PlacementO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_791020(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_791068(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double sub_7910B8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_7910F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_791134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_7911C8()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_79128C(uint64_t a1)
{
  v4 = *(sub_AB31C0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_78E7A8(a1, v6, v7, v1 + v5);
}

uint64_t sub_7913E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_79142C()
{
  result = sub_79144C();
  qword_E73660 = result;
  return result;
}

id sub_79144C()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60) - 8);
  __chkstk_darwin();
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v50 - v5;
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v56 = sub_7D86F0(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17068, &qword_B29C68);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v58 = *(v3 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF8820;
  v60 = v13;
  v53 = v14;
  v15 = v14 + v13;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 resourceURL];

  if (v18)
  {
    sub_AB3150();

    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 0;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 1;
  }

  v59 = v19;
  v19(v20, v21, 1, v0);
  v22 = v1;
  sub_7949C8(v12, v15);
  type metadata accessor for BundleFinder();
  v23 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
  v24 = [v23 resourceURL];

  if (v24)
  {
    sub_AB3150();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v55;
  v51 = v22;
  v27 = v10;
  v28 = v10;
  v29 = v59;
  v59(v27, v25, 1, v0);
  v30 = v58;
  sub_7949C8(v28, v15 + v58);
  v31 = [v16 mainBundle];
  v32 = [v31 bundleURL];

  sub_AB3150();
  v57 = (v22 + 7);
  v29(v15 + 2 * v30, 0, 1, v0);
  v61 = v56;
  sub_7B2C94(v53);
  v33 = v61;
  v34 = v61[2];
  if (v34)
  {
    v35 = 0;
    v36 = v60 + v61;
    v60 = (v51 + 6);
    v56 = (v51 + 1);
    v51 += 4;
    v52 = "1F9AD12BundleFinder";
    v53 = v34;
    while (v35 < v33[2])
    {
      sub_15F84(v36, v6, &qword_E17060, &qword_B29C60);
      v37 = *v60;
      if ((*v60)(v6, 1, v0) == 1)
      {
        sub_794A38(v6);
        v38 = 1;
      }

      else
      {
        sub_AB3120();
        (*v56)(v6, v0);
        v38 = 0;
      }

      v59(v8, v38, 1, v0);
      sub_15F84(v8, v26, &qword_E17060, &qword_B29C60);
      if (v37(v26, 1, v0) == 1)
      {
        sub_794A38(v8);
      }

      else
      {
        v39 = v33;
        v40 = v8;
        v41 = v6;
        v42 = v54;
        (*v51)(v54, v26, v0);
        v43 = objc_allocWithZone(NSBundle);
        sub_AB30F0(v44);
        v46 = v45;
        v47 = [v43 initWithURL:v45];

        v26 = v55;
        v48 = v42;
        v6 = v41;
        v8 = v40;
        v33 = v39;
        v34 = v53;
        (*v56)(v48, v0);
        sub_794A38(v8);
        if (v47)
        {

          return v47;
        }
      }

      ++v35;
      v36 += v58;
      if (v34 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = sub_ABA680();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (qword_E16890 != -1)
  {
    swift_once();
  }

  v0 = qword_E175E0;
  v1 = qword_E175E0;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = sub_AB56F0();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = sub_AB3430();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_AB56F0();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_AB56F0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v1 = swift_unknownObjectWeakInit();
  *(v1 + 8) = 2;
  *(v1 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v1 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v1 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == &dword_4 + 2)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_70C54(v1);
  return v1[1];
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_7922EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058, &qword_B2F0D0);
  __chkstk_darwin();
  sub_15F84(a1, &v4 - v2, &qword_E17058, &qword_B2F0D0);
  return sub_AB60D0();
}

double variable initialization expression of JSApplication.SubscriptionFlowConfiguration.source@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return sub_793364(v2, a1);
}

double sub_792574@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  sub_7933C8(&v15, &v14);
  sub_793424(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  sub_8A0228(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = sub_AB9260();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (qword_E16B98 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:qword_E73C68];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t sub_792AF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6140();
  *a1 = result;
  return result;
}

uint64_t sub_792B78@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

id sub_792BF0(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (qword_E16910 != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  sub_89B0B4(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_E73E18;
  v2 = qword_E73E20;
  v3 = qword_E73E28;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_89B530(v1, v2, v3, v0);
  sub_89B6F0();

  return v8;
}

uint64_t sub_792F54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return sub_8B7040();
}

uint64_t sub_793268(uint64_t a1, uint64_t a2)
{
  result = sub_AB3A40();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_7932BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB3A50();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_793364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_79348C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int sub_79353C(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  swift_getWitnessTable();
  sub_AB3B30();
  return sub_ABB610();
}

uint64_t sub_7935A4(uint64_t a1)
{
  sub_793FE4(&qword_E17048, type metadata accessor for UIContentSizeCategory, &unk_B28CA4);
  sub_793FE4(&qword_E17050, type metadata accessor for UIContentSizeCategory, &unk_B28C44);

  return sub_ABB110();
}

uint64_t sub_793660(uint64_t a1)
{
  sub_793FE4(&qword_E17038, _s3__C9TextStyleVMa_0, &unk_B28DFC);
  sub_793FE4(&qword_E17040, _s3__C9TextStyleVMa_0, &unk_B28D9C);

  return sub_ABB110();
}

uint64_t sub_79371C(uint64_t a1)
{
  sub_793FE4(&qword_E17020, type metadata accessor for Weight, &unk_B28F54);
  sub_793FE4(&qword_E17028, type metadata accessor for Weight, &unk_B28EF4);
  sub_794974();
  return sub_ABB110();
}

uint64_t sub_7937E4(uint64_t a1)
{
  sub_793FE4(&qword_E17010, type metadata accessor for FeatureKey, &unk_B29320);
  sub_793FE4(&qword_E17018, type metadata accessor for FeatureKey, &unk_B292C0);

  return sub_ABB110();
}

uint64_t sub_7938A0(uint64_t a1)
{
  sub_793FE4(&qword_E17000, _s3__C13AttributeNameVMa_1, &unk_B29C14);
  sub_793FE4(&qword_E17008, _s3__C13AttributeNameVMa_1, &unk_B29418);

  return sub_ABB110();
}

uint64_t sub_79395C(uint64_t a1)
{
  sub_793FE4(&qword_E17098, _s3__C4NameVMa_1, &unk_B29D90);
  sub_793FE4(&unk_E170A0, _s3__C4NameVMa_1, &unk_B29D30);

  return sub_ABB110();
}

uint64_t sub_793A18(uint64_t a1)
{
  sub_793FE4(&qword_E16FE0, type metadata accessor for CAGradientLayerType, &unk_B29878);
  sub_793FE4(&qword_E16FE8, type metadata accessor for CAGradientLayerType, &unk_B29818);

  return sub_ABB110();
}

uint64_t sub_793AD4(uint64_t a1)
{
  sub_793FE4(&qword_E16FF0, _s3__C7InfoKeyVMa_0, &unk_B29BD0);
  sub_793FE4(&qword_E16FF8, _s3__C7InfoKeyVMa_0, &unk_B2952C);

  return sub_ABB110();
}

uint64_t sub_793B90(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_AB3B20();
}

void sub_793C04()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_ABB600(*&v1);
}

__n128 __swift_memcpy128_8_1(uint64_t a1, __int128 *a2)
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

uint64_t sub_793D18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_793D38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy32_8_1(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_793FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_794974()
{
  result = qword_E17030;
  if (!qword_E17030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17030);
  }

  return result;
}

uint64_t sub_7949C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_794A38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Artwork.content.getter()
{
  v1 = *v0;
  sub_794C24(*v0, v0[1]);
  return v1;
}

id sub_794C24(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  sub_1253F8(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return sub_794DE8(a1, v3);
}

uint64_t sub_794DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_AF7710;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = sub_ABA680();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_AF7710;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = sub_ABA680();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

char *sub_795268(uint64_t a1)
{
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_79A984(v1, v3, type metadata accessor for Artwork);
  v4 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v5 = Artwork.View.init(configuration:)(v3);
  sub_79AB3C(&qword_E172D8, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  return v5;
}

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  sub_79A984(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  sub_795EA8();
  sub_796D30();
  sub_7968B0();

  sub_79B658(a1, type metadata accessor for Artwork);
  return v8;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  sub_ABAFD0();
  __break(1u);
}

void sub_795728(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  sub_79A984(v6, v5, type metadata accessor for Artwork);
  v7 = _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_79B658(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    sub_795EA8();
    sub_796D30();
    sub_7968B0();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        sub_795EA8();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  sub_795EA8();
}

double Artwork.View.typedConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_79A984(v1 + v3, a1, type metadata accessor for Artwork);
  return result;
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_79A984(v1 + v5, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_79A9EC(a1, v1 + v5);
  swift_endAccess();
  sub_795728(v4);
  sub_79B658(a1, type metadata accessor for Artwork);
  return sub_79B658(v4, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_79A984(v1 + v8, v7, type metadata accessor for Artwork);
  return sub_795BD8;
}

void sub_795BD8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_79A984(*(*a1 + 12), v6, type metadata accessor for Artwork);
    sub_79A984(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_79A9EC(v6, v7 + v4);
    swift_endAccess();
    sub_795728(v5);
    sub_79B658(v5, type metadata accessor for Artwork);
  }

  else
  {
    sub_79A984(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_79A9EC(v3, v7 + v4);
    swift_endAccess();
    sub_795728(v6);
  }

  sub_79B658(v6, type metadata accessor for Artwork);
  sub_79B658(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1, v1[1]);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_17654(v6, v7);
}

void sub_795EA8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      sub_37C074(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      LOBYTE(ObjectType) = v6[8];
      v6[8] = 1;
      v13 = v11;
      sub_798654(v12, ObjectType);
      sub_3EB30(v12, ObjectType);
      swift_unknownObjectRelease();

      v14 = v8;
      v15 = v7;
LABEL_20:
      sub_3EB30(v14, v15);
      goto LABEL_27;
    }

    v16 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v17 = [v16 image];
    if (v17)
    {
    }

    else
    {
      v33 = [v1 artworkCatalog];
      if (v33)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v34 = swift_getObjectType();
    v35 = (*(v5 + 8))(0, v34, v5);
    v36 = *v6;
    *v6 = v35;
    v37 = v6[8];
    v6[8] = 1;
    v38 = v35;
    sub_798654(v36, v37);
    sub_3EB30(v36, v37);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v18 = &v2[*(v3 + 32)];
  v19 = *(v18 + 3);
  if (!v19)
  {
    v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v40 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v39 = 0;
    v41 = v39[8];
    v39[8] = -1;
    sub_798654(v40, v41);
    v14 = v40;
    v15 = v41;
    goto LABEL_20;
  }

  v21 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 2);
  v23 = *(v18 + 4);
  v24 = *(v18 + 5);
  *&v80 = *v18;
  *(&v80 + 1) = v20;
  *&v81 = v22;
  *(&v81 + 1) = v19;
  *&v82 = v23;
  *(&v82 + 1) = v24;
  v25 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v26 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v26 == 255 || (v26 & 1) != 0)
  {
    v27 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v28 = v22;
    v29 = v19;
    v30 = v21;
    v31 = v20;
    v32 = [v27 image];
    if (v32)
    {
    }

    else
    {
      v51 = [v1 artworkCatalog];
      if (v51)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v52 = type metadata accessor for Artwork.Placeholder.View();
    v53 = objc_allocWithZone(v52);
    v54 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v55 = objc_allocWithZone(UIImageView);
    v56 = v30;
    v77 = v31;
    v57 = v28;
    v58 = v29;
    *&v53[v54] = [v55 init];
    v59 = &v53[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v60 = v82;
    *(v59 + 1) = v81;
    *(v59 + 2) = v60;
    *v59 = v80;
    v78.receiver = v53;
    v78.super_class = v52;
    v61 = v56;
    v62 = v77;
    v63 = v57;
    v64 = v58;
    v65 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v65 addSubview:*&v65[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    sub_79C05C(&v83);

    v66 = v62;
    v67 = v61;
    v68 = *v25;
    *v25 = v65;
    LOBYTE(v62) = v25[8];
    v25[8] = 0;
    v69 = v65;
    sub_798654(v68, v62);
    sub_3EB30(v68, v62);

    goto LABEL_27;
  }

  v42 = *v25;
  v43 = *v25 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v44 = *(v43 + 16);
  v83 = *v43;
  v84 = v44;
  v74 = *(v43 + 8);
  v75 = *v43;
  v72 = *(v43 + 24);
  v73 = *(v43 + 16);
  v70 = *(v43 + 40);
  v71 = *(v43 + 32);
  v87 = *(&v83 + 1);
  v88 = v83;
  v76 = *(&v44 + 1);
  v86 = v44;
  v85 = *(v43 + 32);
  v45 = v80;
  v46 = v82;
  *(v43 + 16) = v81;
  *(v43 + 32) = v46;
  *v43 = v45;
  sub_80C9C(v21, v20, v22, v19);
  sub_37C074(v42, v26);
  v47 = v22;
  v48 = v19;
  v49 = v21;
  v50 = v20;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(&v80, &v83))
  {
    v79[0] = v75;
    v79[1] = v74;
    v79[2] = v73;
    v79[3] = v72;
    v79[4] = v71;
    v79[5] = v70;
    sub_79C05C(v79);
  }

  sub_3EB30(v42, v26);
  sub_12E1C(&v88, &qword_E175B8, &qword_B2A1E0);
  sub_12E1C(&v87, &qword_E175B8, &qword_B2A1E0);
  sub_12E1C(&v86, &qword_E175C0, &qword_B2A1E8);

LABEL_27:
  sub_79851C();
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 bounds];
  Artwork.View.fittingImageSize(in:)(v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v12 = [v0 contentMode];
  if (v12 > 5)
  {
    if (v12 == (&dword_4 + 2))
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v31);
      v32.origin.x = v2;
      v32.origin.y = v4;
      v32.size.width = v9;
      v32.size.height = v11;
      v4 = MaxY - CGRectGetHeight(v32);
    }

    else if (v12 == &dword_8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v2;
      v30.origin.y = v4;
      v30.size.width = v9;
      v30.size.height = v11;
      v2 = MaxX - CGRectGetWidth(v30);
    }
  }

  [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] setFrame:{sub_ABA460(v2, v4, v9, v11)}];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v9, v11}];
  }

  v15 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v16 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v17 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v34.origin.x = v20;
  v34.origin.y = v21;
  v34.size.width = v22;
  v34.size.height = v23;
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  if (!CGRectEqualToRect(v33, v34))
  {
    [v0 bounds];
    *v15 = v24;
    *(v15 + 1) = v25;
    *(v15 + 2) = v26;
    *(v15 + 3) = v27;
    sub_7968B0();
  }

  sub_796D30();
}

void Artwork.View.fittingImageSize(in:)(uint64_t a1, double a2, double a3)
{
  if (a2 == 0.0 && a3 == 0.0)
  {
    v4 = [v3 artworkCatalog];
    if (v4)
    {
      v5 = v4;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  sub_ABA4F0();
  v7 = v6;
  v8 = [*&v3[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v8)
  {
    v9 = v8;
    [v8 size];
  }

  else
  {
    v11 = [v3 artworkCatalog];
    if (!v11)
    {
      return;
    }

    v12 = v11;
    MPArtworkCatalog.originalSize.getter();
    v14 = v13;

    if (v14)
    {
      return;
    }
  }

  sub_ABA4F0();
  if (sub_AB38D0())
  {
    sub_ABA4F0();
    if (vabdd_f64(v7, v10) > 0.1)
    {
      sub_ABA4F0();
    }
  }
}

id sub_7968B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    sub_797CB0(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      sub_15F84((v4 + 16), v48, &qword_E17230, &qword_B29E30);
      sub_15F84(v48, &v46, &qword_E17230, &qword_B29E30);
      if (v47)
      {
        v11 = v10;

        sub_79B4FC(&v46);
      }

      else
      {
        v13 = v10;
        sub_12E1C(&v46, &qword_E17230, &qword_B29E30);
      }

      v14 = sub_AB9260();

      sub_15F84(v48, &v46, &qword_E17230, &qword_B29E30);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        sub_79B4FC(&v46);
      }

      else
      {
        sub_12E1C(&v46, &qword_E17230, &qword_B29E30);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        sub_799430(v27, v29, v25, v19);
        v32 = v31;
        sub_799430(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return sub_12E1C(v48, &qword_E17230, &qword_B29E30);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, sub_79B4F4, v45, ObjectType);

      return sub_12E1C(v48, &qword_E17230, &qword_B29E30);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    sub_797CB0(0);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_796D30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175B0, &qword_B2A1D8);
  __chkstk_darwin();
  v91 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = (&v88 - v3);
  __chkstk_darwin();
  v101 = &v88 - v4;
  __chkstk_darwin();
  v97 = &v88 - v5;
  __chkstk_darwin();
  v94 = (&v88 - v6);
  __chkstk_darwin();
  v98 = &v88 - v7;
  __chkstk_darwin();
  v93 = &v88 - v8;
  __chkstk_darwin();
  v10 = (&v88 - v9);
  __chkstk_darwin();
  v12 = &v88 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v90 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v88 - v14;
  __chkstk_darwin();
  v92 = &v88 - v16;
  __chkstk_darwin();
  v18 = &v88 - v17;
  v19 = type metadata accessor for Artwork.Decoration(0);
  v104 = *(v19 - 1);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v95 frame];
  v24 = v23;
  v26 = v25;
  v27 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v99 = type metadata accessor for Artwork(0);
  v100 = v27;
  v28 = &v27[v99[7]];
  v105 = v22;
  sub_79A984(v28, v22, type metadata accessor for Artwork.Decoration);
  v29 = *(v28 + v19[7]);
  [v1 bounds];
  if ((v29 & 1) != 0 && (v34 = v30, v35 = v31, v36 = v32, v37 = v33, Width = CGRectGetWidth(*&v30), v33 = v37, v32 = v36, v31 = v35, v39 = Width, v30 = v34, v24 < v39) || (v29 & 2) != 0 && v26 < CGRectGetHeight(*&v30))
  {
    v40 = v105;
    sub_15F84(&v105[v19[5]], v18, &qword_E1DB50, &qword_B29E40);
    v41 = sub_ABA680();
    v42 = (*(*(v41 - 8) + 48))(v18, 1, v41) != 1;
    sub_12E1C(v18, &qword_E1DB50, &qword_B29E40);
    v43 = v42;
    v44 = 1;
    [v1 setClipsToBounds:v43];
    v45 = *(v40 + v19[6]);
  }

  else
  {
    [v1 setClipsToBounds:0];
    v45 = [objc_opt_self() clearColor];
    v44 = 0;
  }

  [v1 setBackgroundColor:v45];

  v46 = v104;
  v96 = v15;
  v103 = v44;
  if (v44)
  {
    sub_79A984(v105, v12, type metadata accessor for Artwork.Decoration);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v102 = v46[7];
  v102(v12, v47, 1, v19);
  sub_15F84(v12, v10, &qword_E175B0, &qword_B2A1D8);
  v104 = v46[6];
  if ((v104)(v10, 1, v19) == 1)
  {
    v48 = v1;
    sub_12E1C(v10, &qword_E175B0, &qword_B2A1D8);
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v49 = *v10;
    v50 = v10[1];
    v51 = v10[2];
    v52 = v51;
    v53 = v1;
    sub_79B658(v10, type metadata accessor for Artwork.Decoration);
  }

  v54 = v98;
  UIView.border.setter(v49, v50, v51);
  v55 = v93;
  sub_15F84(v12, v93, &qword_E175B0, &qword_B2A1D8);
  v56 = v104;
  if ((v104)(v55, 1, v19) == 1)
  {
    sub_12E1C(v55, &qword_E175B0, &qword_B2A1D8);
    v57 = sub_ABA680();
    (*(*(v57 - 8) + 56))(v92, 1, 1, v57);
  }

  else
  {
    sub_15F84(v55 + v19[5], v92, &qword_E1DB50, &qword_B29E40);
    sub_79B658(v55, type metadata accessor for Artwork.Decoration);
  }

  v58 = v95;
  sub_ABA6A0();

  sub_12E1C(v12, &qword_E175B0, &qword_B2A1D8);
  if (v103)
  {
    v59 = 1;
  }

  else
  {
    sub_79A984(v105, v54, type metadata accessor for Artwork.Decoration);
    v59 = 0;
  }

  v60 = v94;
  v102(v54, v59, 1, v19);
  sub_15F84(v54, v60, &qword_E175B0, &qword_B2A1D8);
  if (v56(v60, 1, v19) == 1)
  {
    v61 = v58;
    sub_12E1C(v60, &qword_E175B0, &qword_B2A1D8);
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v62 = *v60;
    v63 = v60[1];
    v64 = v60[2];
    v65 = v64;
    v66 = v58;
    sub_79B658(v60, type metadata accessor for Artwork.Decoration);
  }

  UIView.border.setter(v62, v63, v64);
  v67 = v97;
  sub_15F84(v54, v97, &qword_E175B0, &qword_B2A1D8);
  v68 = v104;
  if ((v104)(v67, 1, v19) == 1)
  {
    sub_12E1C(v67, &qword_E175B0, &qword_B2A1D8);
    v69 = sub_ABA680();
    (*(*(v69 - 8) + 56))(v96, 1, 1, v69);
  }

  else
  {
    sub_15F84(v67 + v19[5], v96, &qword_E1DB50, &qword_B29E40);
    sub_79B658(v67, type metadata accessor for Artwork.Decoration);
  }

  sub_ABA6A0();

  sub_12E1C(v54, &qword_E175B0, &qword_B2A1D8);
  v70 = &v100[v99[9]];
  v74 = *v70 && (v71 = *(v70 + 1), ObjectType = swift_getObjectType(), v73 = *(v71 + 16), swift_unknownObjectRetain(), LOBYTE(v71) = v73(ObjectType, v71), swift_unknownObjectRelease(), (v71 & 1) != 0) && *&v100[v99[8] + 24] == 0;
  v75 = v101;
  if ((v103 | v74))
  {
    v76 = 1;
  }

  else
  {
    sub_79A984(v105, v101, type metadata accessor for Artwork.Decoration);
    v76 = 0;
  }

  v102(v75, v76, 1, v19);
  v77 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v77 != 255)
  {
    v78 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v79 = v89;
    sub_15F84(v75, v89, &qword_E175B0, &qword_B2A1D8);
    if (v68(v79, 1, v19) == 1)
    {
      v80 = v78;
      sub_12E1C(v79, &qword_E175B0, &qword_B2A1D8);
      v81 = 0;
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v81 = *v79;
      v82 = v79[1];
      v83 = v79[2];
      sub_37C074(v78, v77);
      sub_37C074(v78, v77);
      v84 = v83;
      sub_79B658(v79, type metadata accessor for Artwork.Decoration);
    }

    UIView.border.setter(v81, v82, v83);
    v75 = v101;
    v85 = v91;
    sub_15F84(v101, v91, &qword_E175B0, &qword_B2A1D8);
    if (v68(v85, 1, v19) == 1)
    {
      sub_12E1C(v85, &qword_E175B0, &qword_B2A1D8);
      v86 = sub_ABA680();
      (*(*(v86 - 8) + 56))(v90, 1, 1, v86);
    }

    else
    {
      sub_15F84(v85 + v19[5], v90, &qword_E1DB50, &qword_B29E40);
      sub_79B658(v85, type metadata accessor for Artwork.Decoration);
    }

    sub_ABA6A0();
    sub_3EB30(v78, v77);
    sub_3EB30(v78, v77);
  }

  sub_12E1C(v75, &qword_E175B0, &qword_B2A1D8);
  return sub_79B658(v105, type metadata accessor for Artwork.Decoration);
}

void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v2 = swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 40);
  }

  else
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  Artwork.View.fittingImageSize(in:)(v2, v4, v3);
}

void Artwork.View.sizeThatFits(_:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v6 = swift_beginAccess();
  v7 = *(v5 + 48);
  if (v7 == 255)
  {
    Artwork.View.fittingImageSize(in:)(v6, a1, a2);
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v5 + 40);
    v10 = *(v5 + 64);
    sub_799430(a1, a2, v9, v7);
    sub_799430(a1, a2, v8, v10);
  }
}

double Artwork.Size.computedSize(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = a4;
  sub_799430(a5, a6, a1, a2);
  v11 = v10;
  sub_799430(a5, a6, a3, v6);
  return v11;
}

void sub_797CB0(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v2 setImage:a1];
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  if (*v3 && (v4 = *(v3 + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v2 setBackgroundColor:v5];

  v7 = [v2 image];
  if (v7)
  {

    goto LABEL_7;
  }

  v8 = [v1 artworkCatalog];
  if (!v8)
  {
LABEL_7:
    if (*v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  sub_795EA8();
LABEL_12:
  sub_79851C();
  sub_796D30();
  v9 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  swift_beginAccess();
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 1);

    v10(v12);
    sub_17654(v10, v11);
  }
}

void sub_797E10(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v18 = v5;
  v8 = [a2 imageRepresentation];
  if (v8)
  {
    v17 = v8;
    v9 = [v8 image];
    if (v9)
    {
      v10 = v9;
      if (([v17 isImagePrepared] & 1) == 0)
      {
        v13 = swift_allocObject();
        v13[2] = a3;
        v13[3] = v10;
        v13[4] = v7;
        aBlock[4] = sub_79B574;
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_780C4;
        aBlock[3] = &block_descriptor_211;
        v14 = _Block_copy(aBlock);
        v15 = v18;
        v16 = v10;

        [v16 prepareForDisplayWithCompletionHandler:v14];

        _Block_release(v14);
        return;
      }

      v11 = v10;
      sub_797CB0(v10);

      [v7 setNeedsLayout];
      v12 = v17;
      goto LABEL_8;
    }
  }

  sub_797CB0(0);
  [v7 setNeedsLayout];
  v12 = v18;
LABEL_8:
}

uint64_t sub_798014(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_AB7C10();
  v24 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB7C50();
  v11 = *(v23 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E1B340, OS_dispatch_queue_ptr);
  v22 = sub_ABA150();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_79B5E8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_56_2;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_79AB3C(&qword_E17588, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17590, &unk_B34C00);
  sub_79B5F4();
  sub_ABABB0();
  v19 = v22;
  sub_ABA160();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_7982FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      sub_797CB0(a2);
    }

    else
    {
      if (qword_E16A68 != -1)
      {
        swift_once();
      }

      v12 = sub_AB4BC0();
      __swift_project_value_buffer(v12, static Logger.artwork);
      v13 = a3;
      v14 = sub_AB4BA0();
      v15 = sub_AB9F30();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_0, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        sub_12E1C(v17, &qword_E175A0, &qword_B2A1D0);
      }

      sub_797CB0(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  sub_13C80(0, &qword_E175A8, MPArtworkCatalog_ptr);
  v10 = sub_ABA790();

  if (v10)
  {
    goto LABEL_7;
  }
}

void sub_79851C()
{
  v1 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v2 = v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v5 = *v1;
    v6 = [v4 image];
    if (v6)
    {
    }

    else
    {
      v9 = [v0 artworkCatalog];
      if (v9)
      {

        goto LABEL_8;
      }
    }

    v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v7])
    {
      v8 = 1;
LABEL_11:
      [v5 setHidden:v8];
      sub_3EB30(v3, v2);
      return;
    }

LABEL_8:
    v10 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v11 = type metadata accessor for Artwork(0);
    if (*&v10[*(v11 + 32) + 24])
    {
      v8 = 0;
    }

    else
    {
      v8 = *&v10[*(v11 + 36)] == 0;
    }

    goto LABEL_11;
  }
}

void sub_798654(void *a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v6 = *&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v7 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v7 == 255 || v6 == 0)
  {
    sub_37C074(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_37C074(a1, a2);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
      sub_13C80(0, &qword_E1E050, UIView_ptr);
      sub_37C074(v6, v10);
      sub_37C074(a1, a2);
      v11 = sub_ABA790();

      if (v11)
      {
        return;
      }

      goto LABEL_16;
    }

    sub_37C074(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_37C074(a1, a2);
    v8 = v6;
  }

LABEL_16:
  if (a2 != -1)
  {
    [a1 removeFromSuperview];
  }

  v12 = v5[8];
  if (v12 != 255)
  {
    v13 = *v5;
    v14 = *v5;
    v15 = v14;
    if ((v12 & 1) == 0)
    {
      [v14 setClipsToBounds:1];
    }

    [v2 addSubview:v15];
    [v2 setNeedsLayout];

    sub_3EB30(v13, v12);
  }
}

void (*sub_7988EC(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return sub_A8F90;
}

double sub_79895C@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = sub_79AB3C(&qword_E17288, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_79A984(v1 + v4, boxed_opaque_existential_0, type metadata accessor for Artwork);
  return result;
}

uint64_t sub_798A1C(void *a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin();
  v6 = v10 - v5 + 40;
  sub_E8BA0(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580, &unk_B2A1C0);
  swift_dynamicCast();
  v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_79A984(v1 + v7, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_79A9EC(v6, v1 + v7);
  swift_endAccess();
  sub_795728(v4);
  sub_79B658(v6, type metadata accessor for Artwork);
  sub_79B658(v4, type metadata accessor for Artwork);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_798B98(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = sub_79AB3C(&qword_E17288, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_79A984(v1 + v6, boxed_opaque_existential_0, type metadata accessor for Artwork);
  return sub_798C9C;
}

void sub_798C9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_E8BA0(*a1, (v2 + 5));
    sub_798A1C(v2 + 5);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_798A1C(*a1);
  }

  free(v2);
}

double Artwork.Caching.reference.setter(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_798D98;
}

double sub_798D98(void *a1)
{
  swift_weakAssign();

  return result;
}

double Artwork.Caching.init(reference:identifier:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_weakInit();
  *a4 = a2;
  a4[1] = a3;
  swift_weakAssign();

  return result;
}

void Artwork.Caching.init(reference:)(void *a2@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a2 = 0xD00000000000001CLL;
  a2[1] = 0x8000000000B74130;
}

uint64_t Artwork.Content.init(catalog:background:)(uint64_t result, void *a2)
{
  if (!result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  if (sub_ABA790())
  {
    if (a2)
    {
      if (a4)
      {
        sub_13C80(0, &qword_E1AD80, UIColor_ptr);
        v6 = a4;
        v7 = a2;
        v8 = sub_ABA790();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_798FD0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  if (sub_ABA790())
  {
    if (v2)
    {
      if (v3)
      {
        sub_13C80(0, &qword_E1AD80, UIColor_ptr);
        v4 = v3;
        v5 = v2;
        v6 = sub_ABA790();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = sub_ABA680();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

uint64_t sub_799430(double a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 != 1.79769313e308)
    {
      return result;
    }

    sub_ABAD90(67);
    v9._countAndFlagsBits = 0x6F69736E656D6944;
    v9._object = 0xE90000000000006ELL;
    sub_AB94A0(v9);
    v10._object = 0x8000000000B74220;
    v10._countAndFlagsBits = 0xD000000000000030;
    sub_AB94A0(v10);
    v11._countAndFlagsBits = sub_ABA500();
    sub_AB94A0(v11);

    v12._countAndFlagsBits = 0x696C61766E49203ALL;
    v12._object = 0xEF68746469772064;
    sub_AB94A0(v12);
LABEL_10:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

  if (a4 == 1 && a2 == 1.79769313e308)
  {
    sub_ABAD90(68);
    v5._countAndFlagsBits = 0x6F69736E656D6944;
    v5._object = 0xE90000000000006ELL;
    sub_AB94A0(v5);
    v6._object = 0x8000000000B74220;
    v6._countAndFlagsBits = 0xD000000000000030;
    sub_AB94A0(v6);
    v7._countAndFlagsBits = sub_ABA500();
    sub_AB94A0(v7);

    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x8000000000B74260;
    sub_AB94A0(v8);
    goto LABEL_10;
  }

  return result;
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t sub_7996B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_799800(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  __swift_allocate_value_buffer(v10, a2);
  v11 = __swift_project_value_buffer(v10, a2);
  if (qword_E16968 != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_E73908;
  v14 = *a3;
  v15 = qword_E73910;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_ABA680();
  v17 = __swift_project_value_buffer(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = sub_79B414(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t sub_799A30(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Artwork.Decoration(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_799AA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = type metadata accessor for Artwork.Decoration(0);
  __swift_allocate_value_buffer(v2, static Artwork.Decoration.round);
  v3 = __swift_project_value_buffer(v2, static Artwork.Decoration.round);
  if (qword_E16968 != -1)
  {
    swift_once();
  }

  v4 = static UIView.Border.artwork;
  v5 = byte_E73908;
  v6 = qword_E73910;
  v7 = qword_E73910;
  sub_ABA670();
  v8 = sub_ABA680();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = [objc_opt_self() blackColor];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  result = sub_79B414(v1, v3 + v2[5]);
  *(v3 + v2[6]) = v9;
  *(v3 + v2[7]) = 1;
  return result;
}

double sub_799C80@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Artwork.Decoration(0);
  v7 = __swift_project_value_buffer(v6, a2);
  sub_79A984(v7, a4, type metadata accessor for Artwork.Decoration);
  return result;
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = sub_ABA620();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v28 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  sub_79A984(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v15 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v16;
    *(a3 + 8) = v15 & 1;
  }

  v29 = a1;
  v30 = a2;
  v17 = type metadata accessor for Artwork.Decoration(0);
  sub_15F84(v4 + *(v17 + 20), v9, &qword_E1DB50, &qword_B29E40);
  v18 = sub_ABA680();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v18) == 1)
  {
    return sub_12E1C(v9, &qword_E1DB50, &qword_B29E40);
  }

  sub_ABA650();
  (*(v19 + 8))(v9, v18);
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v11 + 8))(v14, v10);
  }

  v23 = v22;
  (*(v11 + 96))(v14, v10);
  result = (v20)(a3 + *(v17 + 20), 1, v18);
  if (!result)
  {
    v24 = v14[8];
    [v29 scaledValueForValue:v30 compatibleWithTraitCollection:*v14];
    v25 = v28;
    *v28 = v26;
    *(v25 + 8) = v24;
    (*(v11 + 104))(v25, v23, v10);
    return sub_ABA660();
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = sub_ABB3C0(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (a6 != 2)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (*&a1 == *&a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && *&a3 == *&a7)
        {
          return 1;
        }
      }

      else if (a8 == 2 && *&a3 == *&a7)
      {
        return 1;
      }
    }

    else if (!a8 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v35 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8, &qword_B2A1F0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v33 = v4;
    v34 = v7;
    v15 = *a1;
    v14 = a1[1];
    v32 = v5;
    v16 = a1;
    v18 = *a2;
    v17 = a2[1];
    v19 = v13;
    v37 = v14 & 1;
    v20 = v17 & 1;
    a1 = v16;
    v36 = v20;
    v21 = v18;
    v5 = v32;
    v4 = v33;
    v22 = static UIView.Border.__derived_struct_equals(_:_:)(v15, v14 & 1, v12, v21, v20, v19);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v7;
    if (v13)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for Artwork.Decoration(0);
  v24 = *(v23 + 20);
  v25 = *(v9 + 48);
  sub_15F84(a1 + v24, v11, &qword_E1DB50, &qword_B29E40);
  sub_15F84(a2 + v24, &v11[v25], &qword_E1DB50, &qword_B29E40);
  v26 = *(v5 + 48);
  if (v26(v11, 1, v4) != 1)
  {
    v27 = v35;
    sub_15F84(v11, v35, &qword_E1DB50, &qword_B29E40);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v28 = v34;
      (*(v5 + 32))(v34, &v11[v25], v4);
      sub_79AB3C(&qword_E175D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
      v29 = sub_AB91C0();
      v30 = *(v5 + 8);
      v30(v28, v4);
      v30(v27, v4);
      sub_12E1C(v11, &qword_E1DB50, &qword_B29E40);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v27, v4);
LABEL_11:
    sub_12E1C(v11, &qword_E175C8, &qword_B2A1F0);
    return 0;
  }

  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_12E1C(v11, &qword_E1DB50, &qword_B29E40);
LABEL_13:
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  if (sub_ABA790())
  {
    return *(a1 + *(v23 + 28)) == *(a2 + *(v23 + 28));
  }

  return 0;
}

BOOL _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1[1];
    v6 = *(a2 + 8);
    sub_13C80(0, &unk_E1E040, NSObject_ptr);
    v7 = v6;
    v8 = v4;
    if (sub_ABA790())
    {
      if (v5)
      {
        if (v6)
        {
          sub_13C80(0, &qword_E1AD80, UIColor_ptr);
          v9 = v7;
          v10 = v5;
          v11 = sub_ABA790();

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

LABEL_20:

        return 0;
      }

      if (!v6)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    return 0;
  }

LABEL_9:
  sub_15F84((a1 + 2), &v43, &qword_E17230, &qword_B29E30);
  sub_15F84(a2 + 16, &v46, &qword_E17230, &qword_B29E30);
  if (!v44)
  {
    if (!v47)
    {
      sub_12E1C(&v43, &qword_E17230, &qword_B29E30);
      goto LABEL_15;
    }

LABEL_22:
    sub_12E1C(&v43, &qword_E175D8, &qword_B2A1F8);
    return 0;
  }

  sub_15F84(&v43, v42, &qword_E17230, &qword_B29E30);
  if (!v47)
  {
    sub_79B4FC(v42);
    goto LABEL_22;
  }

  sub_79B6B8(&v46, v41);
  v12 = _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(v42, v41);
  sub_79B4FC(v41);
  sub_79B4FC(v42);
  sub_12E1C(&v43, &qword_E17230, &qword_B29E30);
  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else if (v14 == 255 || (_s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(a1[5], v13, a1[7], *(a1 + 64), *(a2 + 40), v14, *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for Artwork(0);
  if (!_s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0((a1 + v16[7]), (a2 + v16[7])))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v23 = *(a1 + v17 + 32);
  v22 = *(a1 + v17 + 40);
  v24 = a2 + v17;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (v21)
  {
    if (v28)
    {
      v43 = *v24;
      v44 = v25;
      v45 = v27;
      v46 = v28;
      v47 = v30;
      v48 = v29;
      v42[0] = v18;
      v42[1] = v19;
      v42[2] = v20;
      v42[3] = v21;
      v42[4] = v23;
      v42[5] = v22;
      v36 = v26;
      v31 = v26;
      v32 = v19;
      v37 = v25;
      v39 = v27;
      v33 = v20;
      sub_80C9C(v31, v25, v27, v28);
      sub_80C9C(v18, v32, v33, v21);
      v34 = _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v43);

      sub_2F1C8(v18, v32, v33, v21);
      if (v34)
      {
        return *(a2 + v16[9]) == *(a1 + v16[9]);
      }

      return 0;
    }

LABEL_33:
    v38 = *(v24 + 8);
    v40 = *(v24 + 16);
    v35 = v20;
    sub_80C9C(*v24, v38, v27, v28);
    sub_80C9C(v18, v19, v35, v21);
    sub_2F1C8(v18, v19, v35, v21);
    sub_2F1C8(v26, v38, v40, v28);
    return 0;
  }

  if (v28)
  {
    goto LABEL_33;
  }

  return *(a2 + v16[9]) == *(a1 + v16[9]);
}

uint64_t sub_79A984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_79A9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_79AAB8(uint64_t a1)
{
  *(a1 + 8) = sub_79AB3C(&qword_E17280, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  result = sub_79AB3C(&qword_E17288, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_79AB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_79ABCC(uint64_t a1)
{
  result = sub_79AB3C(&qword_E172D8, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_79AC38(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for Artwork.Decoration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_79AD04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Artwork.Decoration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_79ADA8(uint64_t a1)
{
  sub_48C430(319, &qword_E17348, &type metadata for Artwork.Content);
  if (v1 <= 0x3F)
  {
    sub_48C430(319, &qword_E17350, &type metadata for Artwork.Caching);
    if (v2 <= 0x3F)
    {
      sub_48C430(319, &qword_E17358, &type metadata for Artwork.Size);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Artwork.Decoration(319);
        if (v4 <= 0x3F)
        {
          sub_48C430(319, &qword_E17360, &type metadata for Artwork.Placeholder);
          if (v5 <= 0x3F)
          {
            sub_79AECC(319);
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

void sub_79AECC(uint64_t a1)
{
  if (!qword_E17368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E17370, &unk_B2A020);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E17368);
    }
  }
}

uint64_t sub_79AF38(uint64_t a1)
{
  result = type metadata accessor for Artwork(319);
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

uint64_t sub_79B04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_79B12C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_79B1F4(uint64_t a1)
{
  sub_48C430(319, &unk_E1DCB0, &type metadata for UIView.Border);
  if (v1 <= 0x3F)
  {
    sub_79B2C8(319);
    if (v2 <= 0x3F)
    {
      sub_13C80(319, &qword_E1AD80, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        _s3__C6UIAxisVMa_0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_79B2C8(uint64_t a1)
{
  if (!qword_E17548)
  {
    sub_ABA680();
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E17548);
    }
  }
}

__n128 __swift_memcpy25_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_79B334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
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

uint64_t sub_79B37C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_79B414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_79B484()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_79B4BC()
{

  return swift_deallocObject();
}

uint64_t sub_79B52C()
{

  return swift_deallocObject();
}

double block_copy_helper_211(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_79B598()
{

  return swift_deallocObject();
}

unint64_t sub_79B5F4()
{
  result = qword_E17598;
  if (!qword_E17598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E17590, &unk_B34C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17598);
  }

  return result;
}

uint64_t sub_79B658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t *a1)
{
  sub_7A08F0(a1);
  v4 = *a1;
  sub_12E1C(&v4, &qword_E175B8, &qword_B2A1E0);
  v3 = a1[1];
  sub_12E1C(&v3, &qword_E175B8, &qword_B2A1E0);
  v2 = a1[2];
  sub_12E1C(&v2, &qword_E175C0, &qword_B2A1E8);
}

id sub_79B7C8()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_E175E0 = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() secondarySystemFillColor];
  if (qword_E16890 != -1)
  {
    swift_once();
  }

  v5 = qword_E175E0;
  v6 = objc_opt_self();
  v7 = v5;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = 0;
  v13 = [v6 configurationWithWeight:4];
  v14 = xmmword_B28290;
  a1(&v11);
  v8 = v12;
  v9 = v13;
  result = v14;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v3 * *(v2 + 32) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 * *(v2 + 32);
  }

  v5 = *(v2 + 24);
  v6 = [objc_opt_self() configurationWithPointSize:v4];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  return v7;
}

void Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v18 = v3[1];
  v19 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v16 = 0;
  v17 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v16;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_7A0A84;
  *(v10 + 24) = v8;
  aBlock[4] = sub_3F328C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_212;
  v11 = _Block_copy(aBlock);
  sub_15F84(&v19, v14, &qword_E175B8, &qword_B2A1E0);
  sub_15F84(&v18, v14, &qword_E175B8, &qword_B2A1E0);
  sub_15F84(&v17, v14, &qword_E175C0, &qword_B2A1E8);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_79BBC8(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      sub_ABA470();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  sub_15F84(&v18, v19, &qword_E175B8, &qword_B2A1E0);
  sub_15F84(&v17, v19, &qword_E175B8, &qword_B2A1E0);
  sub_15F84(&v16, v19, &qword_E175C0, &qword_B2A1E8);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *(v11 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView);
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  sub_79C05C(v19);
  sub_12E1C(&v18, &qword_E175B8, &qword_B2A1E0);
  sub_12E1C(&v17, &qword_E175B8, &qword_B2A1E0);
  sub_12E1C(&v16, &qword_E175C0, &qword_B2A1E8);

  return v13;
}

void sub_79C05C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v11 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (*v5)
  {
    v12 = v8;
    v13 = v9;
    v14 = v6;
    v15 = v7;
  }

  else
  {
    v16 = objc_opt_self();
    v12 = v8;
    v17 = v9;
    v14 = v6;
    v15 = [v16 clearColor];
    v7 = 0;
  }

  v18 = v7;
  [v2 setBackgroundColor:v15];

  v19 = *&v2[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  [v19 setHidden:v8 == 0];
  [v19 setImage:v12];
  [v19 setTintColor:v14];
  [v19 setAlpha:v10];
  v20 = [v2 superview];
  if (!v20)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 16);
  v22 = v21;
  v23 = v22;
  if (!v8)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    [v2 setNeedsLayout];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  sub_13C80(0, &qword_E1C3B0, UIImage_ptr);
  v24 = v12;
  v25 = sub_ABA790();

  if ((v25 & 1) == 0 || !*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v11 != *(a1 + 32))
  {
    goto LABEL_15;
  }

  sub_13C80(0, &unk_E1DF10, UIImageSymbolConfiguration_ptr);
  v26 = v9;
  v27 = v4;
  v28 = sub_ABA790();

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  sub_ABAFD0();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return sub_79C528;
}

void sub_79C528(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 49) = *(v2 + 18);
    v8 = v2[39];
    v2[51] = v2[38];
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    v2[46] = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    sub_15F84((v2 + 49), (v2 + 57), &qword_E175B8, &qword_B2A1E0);
    sub_15F84((v2 + 50), (v2 + 57), &qword_E175B8, &qword_B2A1E0);
    sub_15F84((v2 + 51), (v2 + 57), &qword_E175C0, &qword_B2A1E8);
    v15 = v8;
    sub_15F84((v2 + 49), (v2 + 57), &qword_E175B8, &qword_B2A1E0);
    sub_15F84((v2 + 50), (v2 + 57), &qword_E175B8, &qword_B2A1E0);
    sub_15F84((v2 + 51), (v2 + 57), &qword_E175C0, &qword_B2A1E8);
    v16 = v15;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 36), v2))
    {
      v2[30] = v11;
      v2[31] = v12;
      v2[32] = v13;
      v2[33] = v36;
      v2[34] = v35;
      v2[35] = v34;
      sub_79C05C((v2 + 30));
    }

    sub_12E1C((v2 + 46), &qword_E175B8, &qword_B2A1E0);
    v2[47] = v2[1];
    sub_12E1C((v2 + 47), &qword_E175B8, &qword_B2A1E0);
    v17 = v2[3];
    v2[48] = v2[2];
    sub_12E1C((v2 + 48), &qword_E175C0, &qword_B2A1E8);

    sub_12E1C((v2 + 49), &qword_E175B8, &qword_B2A1E0);
    sub_12E1C((v2 + 50), &qword_E175B8, &qword_B2A1E0);
    sub_12E1C((v2 + 51), &qword_E175C0, &qword_B2A1E8);

    v18 = v2[6];
    v19 = v2[7];
    v20 = v2[8];
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    v2[54] = v2[24];
    v31 = v2[21];
    v2[45] = v2[20];
    *(v2 + 55) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    sub_15F84((v2 + 55), (v2 + 57), &qword_E175B8, &qword_B2A1E0);
    sub_15F84((v2 + 56), (v2 + 57), &qword_E175B8, &qword_B2A1E0);
    sub_15F84((v2 + 45), (v2 + 57), &qword_E175C0, &qword_B2A1E8);
    v20 = v31;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 18), (v2 + 24)))
    {
      v2[12] = v37;
      v2[13] = v26;
      v2[14] = v27;
      v2[15] = v28;
      v2[16] = v29;
      v2[17] = v30;
      sub_79C05C((v2 + 12));
    }

    sub_12E1C((v2 + 54), &qword_E175B8, &qword_B2A1E0);
    v2[53] = v2[25];
    sub_12E1C((v2 + 53), &qword_E175B8, &qword_B2A1E0);
    v33 = v2[27];
    v2[52] = v2[26];
    sub_12E1C((v2 + 52), &qword_E175C0, &qword_B2A1E8);

    sub_12E1C((v2 + 55), &qword_E175B8, &qword_B2A1E0);
    sub_12E1C((v2 + 56), &qword_E175B8, &qword_B2A1E0);
    sub_12E1C((v2 + 45), &qword_E175C0, &qword_B2A1E8);
  }

  free(v2);
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  [v1 setFrame:{sub_ABA460(0.0, 0.0, v21, v22)}];
}

id sub_79CB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}