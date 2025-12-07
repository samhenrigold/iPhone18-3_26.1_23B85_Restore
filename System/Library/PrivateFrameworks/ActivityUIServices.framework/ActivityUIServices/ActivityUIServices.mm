id sub_18E611054(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_18E6110FC()
{
  result = sub_18E65F8F0();
  qword_1ED7650F0 = result;
  return result;
}

uint64_t sub_18E611134()
{
  result = sub_18E65F8F0();
  qword_1EAC89508 = result;
  return result;
}

uint64_t sub_18E6111FC()
{
  result = sub_18E65F8F0();
  qword_1ED764F88 = result;
  return result;
}

uint64_t sub_18E611234()
{
  result = sub_18E65F8F0();
  qword_1ED764F70 = result;
  return result;
}

uint64_t sub_18E61126C()
{
  result = sub_18E65F8F0();
  qword_1EAC89520 = result;
  return result;
}

uint64_t sub_18E6112A4()
{
  result = sub_18E65F8F0();
  qword_1EAC89330 = result;
  return result;
}

void ActivityAlertClient.presentAlert(activityIdentifier:payload:options:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  if (qword_1EAC89370 != -1)
  {
    swift_once();
  }

  v15 = sub_18E65F6E0();
  __swift_project_value_buffer(v15, qword_1EAC89378);

  v16 = sub_18E65F6C0();
  v17 = sub_18E65FA60();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a3;
    v19 = a5;
    v20 = v18;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_18E61173C(a1, a2, aBlock);
    _os_log_impl(&dword_18E60F000, v16, v17, "[Activity: %s] Presenting alert", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x193AD1140](v21, -1, -1);
    v22 = v20;
    a5 = v19;
    a3 = v33;
    MEMORY[0x193AD1140](v22, -1, -1);
  }

  v23 = sub_18E65F660();
  v24 = sub_18E65F5D0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v14, a3, v24);
  (*(v25 + 56))(v14, 0, 1, v24);
  v26 = objc_allocWithZone(type metadata accessor for ActivityAlertProvider(0));
  v27 = sub_18E611A08(a1, a2, 0, v23, v14);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    aBlock[4] = a5;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E614A74;
    aBlock[3] = &block_descriptor_0;
    v30 = _Block_copy(aBlock);
    v31 = v27;

    [v29 activityWithAlertClient:v7 presentAlertProvider:v31 completion:v30];
    swift_unknownObjectRelease();

    _Block_release(v30);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_18E61173C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18E611808(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18E611960(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_18E611808(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18E639DB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_18E65FCA0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_18E611960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ActivityAlertProvider(uint64_t a1)
{
  result = qword_1EAC894A0;
  if (!qword_1EAC894A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_18E611A08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v74 = a5;
  v71 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v62 - v11;
  v12 = sub_18E65F400();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_18E65F640();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v62 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v62 - v20;
  v22 = sub_18E65F5D0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  *&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration] = 0;
  v25 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  *&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions] = 0;
  v26 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_alertConfiguration;
  v27 = sub_18E65F650();
  (*(*(v27 - 8) + 56))(&v6[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  v29 = v23;
  v30 = *(v23 + 56);
  v31 = v22;
  v30(&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload], 1, 1, v22);
  v32 = &v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_activityIdentifier];
  *v32 = a1;
  *(v32 + 1) = a2;
  *&v6[OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_alertAction] = v71;
  swift_beginAccess();
  *&v6[v25] = a4;
  swift_beginAccess();
  v33 = a4;

  sub_18E612188(v74, &v6[v28]);
  swift_endAccess();
  if (a4)
  {
    LODWORD(a4) = [v33 breaksThroughFocus];
  }

  sub_18E6121F8(v74, v21);
  v34 = (*(v29 + 48))(v21, 1, v22);
  v35 = v72;
  if (v34 == 1)
  {

    sub_18E613CEC(v21, &qword_1EAC89D08, &qword_18E663F30);
    v36 = [objc_allocWithZone(MEMORY[0x1E69DA8E8]) initWithType_];
LABEL_22:
    v58 = v73;
    swift_beginAccess();
    v59 = *&v6[v58];
    *&v6[v58] = v36;

    v60 = type metadata accessor for ActivityAlertProvider(0);
    v75.receiver = v6;
    v75.super_class = v60;
    v61 = objc_msgSendSuper2(&v75, sel_init);
    sub_18E613CEC(v74, &qword_1EAC89D08, &qword_18E663F30);
    return v61;
  }

  LODWORD(v71) = a4;
  v37 = v70;
  (*(v29 + 32))(v70, v21, v22);
  v38 = v68;
  sub_18E65F5C0();
  v39 = sub_18E65F630();
  v40 = *(v69 + 8);
  v40(v38, v35);
  if (v39)
  {
    (*(v29 + 8))(v37, v31);

    v36 = 0;
    goto LABEL_22;
  }

  v41 = v67;
  sub_18E65F5C0();
  v42 = sub_18E65F620();
  v43 = v41;
  v45 = v44;
  v40(v43, v35);
  if (!v45)
  {

    v52 = v62;
    sub_18E65F5C0();
    v53 = sub_18E65F610();
    v54 = v35;
    v36 = v53;
    v40(v52, v54);
    if (!v36)
    {
      v36 = [objc_allocWithZone(MEMORY[0x1E69DA8E8]) initWithType_];
    }

    goto LABEL_18;
  }

  if (v71)
  {
    v46 = 13;
  }

  else
  {
    v46 = 17;
  }

  v36 = [objc_allocWithZone(MEMORY[0x1E69DA8E8]) initWithType_];
  v47 = sub_18E65F5B0();
  v48 = v64;
  sub_18E612268(v42, v45, v47, v49, v64);
  v51 = v65;
  v50 = v66;
  if ((*(v65 + 48))(v48, 1, v66) == 1)
  {

    sub_18E613CEC(v48, &qword_1EAC89D48, &unk_18E664290);
LABEL_17:
    v37 = v70;
LABEL_18:
    if (v71)
    {
      if (v36)
      {
        [v36 setShouldIgnoreRingerSwitch_];
        [v36 setShouldRepeat_];
        [v36 setMaximumDuration_];
      }
    }

    (*(v29 + 8))(v37, v31);
    goto LABEL_22;
  }

  result = (*(v51 + 32))(v63, v48, v50);
  if (v36)
  {

    v56 = v63;
    v57 = sub_18E65F3B0();
    [v36 setExternalToneFileURL_];

    (*(v51 + 8))(v56, v50);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E612188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E6121F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E612268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v153 = a1;
  v154 = a2;
  v155 = a5;
  v147 = sub_18E65F3A0();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v145 = v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18E65F400();
  v9 = *(v8 - 8);
  v158 = v8;
  v159 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v148 = v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v151 = v136 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v144 = v136 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v152 = v136 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v150 = v136 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v136 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v136 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v136 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v136 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v136 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v136 - v38;
  v40 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v156 = a3;
  v157 = a4;
  v41 = sub_18E613228(a3, a4, 0);
  v55 = v41;
  v56 = v33;
  v138 = v36;
  v57 = v150;
  v140 = v27;
  v141 = v24;
  v137 = v21;
  v143 = v30;
  v149 = v39;
  if (v41)
  {
    v58 = v159 + 56;
    v59 = 1;
    v60 = v149;
    v142 = *(v159 + 56);
    v142(v149, 1, 1, v158);
    v61 = v55;
    v62 = [v61 dataContainerURL];
    if (v62)
    {
      v63 = v62;
      sub_18E65F3D0();

      v59 = 0;
    }

    v64 = v154;
    v65 = v158;
    v66 = v142;
    v142(v56, v59, 1, v158);
    v67 = v138;
    sub_18E613304(v153, v64, v56, v138);
    sub_18E613C14(v56);
    v68 = v58;
    v70 = v159 + 48;
    v69 = *(v159 + 48);
    v71 = v69(v67, 1, v65);
    v139 = v68;
    if (v71 == 1)
    {
      sub_18E613C14(v67);
    }

    else
    {
      (*(v159 + 32))(v57, v67, v65);
      v84 = v57;
      v85 = v143;
      sub_18E65F390();
      (*(v159 + 8))(v84, v65);
      v66(v85, 0, 1, v65);
      sub_18E613C7C(v85, v60);
    }

    v86 = v140;
    sub_18E6139D8(v60, v140);
    v87 = v69(v86, 1, v65);
    sub_18E613C14(v86);
    v140 = v70;
    v150 = v69;
    if (v87 != 1)
    {
LABEL_33:
      v102 = v137;
      sub_18E6139D8(v60, v137);
      v103 = v61;
      if (v69(v102, 1, v65) == 1)
      {
        sub_18E613C14(v102);
        v104 = [v61 URL];
        v105 = v151;
        sub_18E65F3D0();

        v106 = objc_allocWithZone(MEMORY[0x1E698E640]);
        v107 = sub_18E65F3B0();
        v108 = *(v159 + 8);
        v108(v105, v65);
        v109 = [v106 initWithURL_];

        if (v109)
        {
          v110 = sub_18E65F8F0();
          v111 = [v109 pathForResource:v110 ofType:0];

          if (v111)
          {
            sub_18E65F900();

            v112 = v143;
            v142(v143, 1, 1, v65);
            (*(v146 + 104))(v145, *MEMORY[0x1E6968F70], v147);
            v113 = v148;
            sub_18E65F3F0();
            v114 = [v103 URL];

            v115 = v151;
            sub_18E65F3D0();

            LOBYTE(v114) = sub_18E613A48();
            v108(v115, v65);
            if (v114)
            {
              sub_18E65F390();

              v108(v113, v65);
              v142(v112, 0, 1, v65);
              sub_18E613C7C(v112, v60);
            }

            else
            {
              v108(v113, v65);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {

        sub_18E613C14(v102);
      }

      v116 = v155;
      if (qword_1EAC89398 != -1)
      {
        swift_once();
      }

      v117 = sub_18E65F6E0();
      __swift_project_value_buffer(v117, qword_1EAC893A0);
      v118 = sub_18E65F6C0();
      v119 = sub_18E65FA50();
      v120 = os_log_type_enabled(v118, v119);
      v121 = v151;
      if (v120)
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v160 = v123;
        *v122 = 136380675;
        v124 = v149;
        swift_beginAccess();
        v125 = (v150)(v124, 1, v65);
        v126 = 0;
        v127 = 0;
        if (!v125)
        {
          (*(v159 + 16))(v121, v149, v65);
          v126 = sub_18E65F3E0();
          v127 = v128;
          (*(v159 + 8))(v121, v65);
        }

        v161[0] = v126;
        v161[1] = v127;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89FF0, &qword_18E6649C0);
        v129 = sub_18E65F910();
        v131 = sub_18E61173C(v129, v130, &v160);

        *(v122 + 4) = v131;
        _os_log_impl(&dword_18E60F000, v118, v119, "External sound url: %{private}s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v123);
        MEMORY[0x193AD1140](v123, -1, -1);
        MEMORY[0x193AD1140](v122, -1, -1);
      }

      v132 = v149;
      swift_beginAccess();
      sub_18E6139D8(v132, v116);
      return sub_18E613C14(v132);
    }

    v136[0] = v61;
    v88 = [v61 groupContainerURLs];
    v89 = sub_18E65F8B0();

    v90 = 1 << *(v89 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v89 + 64);
    v93 = (v90 + 63) >> 6;
    v136[1] = v159 + 16;
    v138 = (v159 + 32);

    v94 = 0;
    v95 = v152;
    if (v92)
    {
      while (1)
      {
        v96 = v94;
        v97 = v159;
LABEL_28:
        v98 = v158;
        (*(v97 + 16))(v95, *(v89 + 56) + *(v97 + 72) * (__clz(__rbit64(v92)) | (v96 << 6)), v158);
        v99 = *(v159 + 32);
        v100 = v143;
        v99(v143, v95, v98);
        v142(v100, 0, 1, v98);
        v101 = v141;
        sub_18E613304(v153, v154, v100, v141);
        sub_18E613C14(v100);
        v69 = v150;
        if ((v150)(v101, 1, v98) != 1)
        {
          break;
        }

        v92 &= v92 - 1;
        sub_18E613C14(v101);
        v94 = v96;
        v95 = v152;
        if (!v92)
        {
          goto LABEL_24;
        }
      }

      v133 = v144;
      v65 = v158;
      v99(v144, v101, v158);
      v134 = v143;
      sub_18E65F390();

      (*(v159 + 8))(v133, v65);
      v142(v134, 0, 1, v65);
      v135 = v134;
      v69 = v150;
      v60 = v149;
      sub_18E613C7C(v135, v149);
LABEL_32:
      v61 = v136[0];
      goto LABEL_33;
    }

LABEL_24:
    v97 = v159;
    while (1)
    {
      v96 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v96 >= v93)
      {

        v65 = v158;
        v60 = v149;
        goto LABEL_32;
      }

      v92 = *(v89 + 64 + 8 * v96);
      ++v94;
      if (v92)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    swift_once();
    v42 = sub_18E65F6E0();
    __swift_project_value_buffer(v42, qword_1EAC893A0);
    v43 = v157;

    v44 = v96;
    v45 = sub_18E65F6C0();
    v46 = sub_18E65FA50();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v158;
    v49 = v156;
    if (v47)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v161[0] = v51;
      *v50 = 136380931;
      *(v50 + 4) = sub_18E61173C(v49, v43, v161);
      *(v50 + 12) = 2080;
      swift_getErrorValue();
      v52 = sub_18E65FE40();
      v54 = sub_18E61173C(v52, v53, v161);

      *(v50 + 14) = v54;
      _os_log_impl(&dword_18E60F000, v45, v46, "Error finding the app record for bundle identifier: %{private}s: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v51, -1, -1);
      MEMORY[0x193AD1140](v50, -1, -1);
    }

    else
    {
    }

    return (*(v159 + 56))(v155, 1, 1, v48);
  }

  else
  {
    v74 = v156;
    v73 = v157;
    if (qword_1EAC89398 != -1)
    {
      swift_once();
    }

    v75 = sub_18E65F6E0();
    __swift_project_value_buffer(v75, qword_1EAC893A0);

    v76 = sub_18E65F6C0();
    v77 = sub_18E65FA50();

    v78 = os_log_type_enabled(v76, v77);
    v79 = v158;
    if (v78)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v161[0] = v81;
      *v80 = 136380675;
      *(v80 + 4) = sub_18E61173C(v74, v73, v161);
      _os_log_impl(&dword_18E60F000, v76, v77, "No application record created with bundle identifier: %{private}s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x193AD1140](v81, -1, -1);
      MEMORY[0x193AD1140](v80, -1, -1);
    }

    v82 = *(v159 + 56);
    v83 = v155;

    return v82(v83, 1, 1, v79);
  }
}

id sub_18E613228(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_18E65F8F0();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_18E65F360();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_18E613304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a1;
  v62 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_18E65F400();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v27 = a3;
  v29 = v28;
  sub_18E6139D8(v27, v8);
  if ((*(v29 + 48))(v8, 1, v9) != 1)
  {
    v57 = a4;
    (*(v29 + 32))(v26, v8, v9);
    v56 = v26;
    sub_18E65F390();
    sub_18E65F3C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D50, &qword_18E6642A0);
    v31 = *(v29 + 72);
    v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v54 = swift_allocObject();
    v33 = v54 + v32;
    sub_18E65F3C0();
    v53 = v31;
    sub_18E65F3C0();
    v34 = v29;
    v35 = *(v29 + 8);
    v35(v20, v9);
    v35(v23, v9);
    v55 = v34;
    v36 = *(v34 + 16);
    v58 = v33;
    v52 = v36;
    v36(v17, v33, v9);
    sub_18E65F3C0();
    v59 = v14;
    sub_18E65F390();
    sub_18E65F3E0();
    v35(v11, v9);
    v60 = v17;
    sub_18E65F390();
    sub_18E65F3E0();
    v35(v11, v9);
    LOBYTE(v32) = sub_18E65F950();

    if ((v32 & 1) != 0 && (v37 = sub_18E65F8F0(), v38 = BSIsSymbolicLinkAtPath(), v37, (v38 & 1) == 0))
    {
      v43 = [objc_opt_self() defaultManager];
      v44 = sub_18E65F8F0();

      v45 = [v43 fileExistsAtPath_];

      v39 = v60;
      if (v45)
      {
        goto LABEL_13;
      }
    }

    else
    {

      v39 = v60;
    }

    v35(v59, v9);
    v35(v39, v9);
    v52(v39, v58 + v53, v9);
    sub_18E65F3C0();
    sub_18E65F390();
    sub_18E65F3E0();
    v35(v11, v9);
    sub_18E65F390();
    sub_18E65F3E0();
    v35(v11, v9);
    v40 = sub_18E65F950();

    if (v40 & 1) == 0 || (v41 = sub_18E65F8F0(), v42 = BSIsSymbolicLinkAtPath(), v41, (v42))
    {

      v39 = v60;
LABEL_9:
      v35(v59, v9);
      v35(v39, v9);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v35(v56, v9);
      v30 = 1;
      a4 = v57;
LABEL_14:
      v29 = v55;
      return (*(v29 + 56))(a4, v30, 1, v9);
    }

    v46 = [objc_opt_self() defaultManager];
    v47 = sub_18E65F8F0();

    v48 = [v46 fileExistsAtPath_];

    v39 = v60;
    if ((v48 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    a4 = v57;
    v49 = v59;
    sub_18E65F390();
    v35(v49, v9);
    v35(v39, v9);
    v35(v56, v9);
    v30 = 0;
    goto LABEL_14;
  }

  sub_18E613C14(v8);
  v30 = 1;
  return (*(v29 + 56))(a4, v30, 1, v9);
}

uint64_t sub_18E6139D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18E613A48()
{
  v0 = sub_18E65F400();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E65F390();
  sub_18E65F3E0();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_18E65F390();
  sub_18E65F3E0();
  v4(v3, v0);
  v5 = sub_18E65F950();

  if ((v5 & 1) != 0 && (v6 = sub_18E65F8F0(), v7 = BSIsSymbolicLinkAtPath(), v6, !v7))
  {
    v9 = [objc_opt_self() defaultManager];
    v10 = sub_18E65F8F0();

    v11 = [v9 fileExistsAtPath_];

    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_18E613C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E613C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D48, &unk_18E664290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E613CEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_18E613E68(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_18E65F8F0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_18E613EE8(uint64_t (*a1)(uint64_t))
{
  v3 = sub_18E65F5D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  swift_beginAccess();
  sub_18E6121F8(v1 + v10, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_18E613CEC(v9, &qword_1EAC89D08, &qword_18E663F30);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    v12 = sub_18E613CEC(v9, &qword_1EAC89D08, &qword_18E663F30);
    v13 = a1(v12);
    (*(v4 + 8))(v6, v3);
    return v13;
  }
}

uint64_t sub_18E6140E0()
{
  v1 = sub_18E65F450();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18E65F5D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  swift_beginAccess();
  sub_18E6121F8(v0 + v12, v11);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_18E613CEC(v11, &qword_1EAC89D08, &qword_18E663F30);
    return 0;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_18E613CEC(v11, &qword_1EAC89D08, &qword_18E663F30);
    sub_18E65F5A0();
    (*(v6 + 8))(v8, v5);
    v14 = sub_18E65F430();
    (*(v2 + 8))(v4, v1);
    return v14;
  }
}

uint64_t sub_18E614464()
{
  v1 = sub_18E65F5D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_payload;
  swift_beginAccess();
  sub_18E6121F8(v0 + v8, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_18E613CEC(v7, &qword_1EAC89D08, &qword_18E663F30);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_18E613CEC(v7, &qword_1EAC89D08, &qword_18E663F30);
    v10 = sub_18E65F590();
    v12 = v11;
    (*(v2 + 8))(v4, v1);
    if (v12)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

Swift::Void __swiftcall ActivityAlertClient.dismissAlert(activityIdentifier:)(Swift::String activityIdentifier)
{
  v2 = v1;
  object = activityIdentifier._object;
  countAndFlagsBits = activityIdentifier._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-1] - v6;
  if (qword_1EAC89370 != -1)
  {
    swift_once();
  }

  v8 = sub_18E65F6E0();
  __swift_project_value_buffer(v8, qword_1EAC89378);

  v9 = sub_18E65F6C0();
  v10 = sub_18E65FA60();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_18E61173C(countAndFlagsBits, object, v18);
    _os_log_impl(&dword_18E60F000, v9, v10, "[Activity: %s] Dismissing alert", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x193AD1140](v12, -1, -1);
    MEMORY[0x193AD1140](v11, -1, -1);
  }

  v13 = sub_18E65F5D0();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = objc_allocWithZone(type metadata accessor for ActivityAlertProvider(0));

  v15 = sub_18E611A08(countAndFlagsBits, object, 1, 0, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong activityWithAlertClient:v2 dismissAlertProvider:v15];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_18E614A74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_18E614B14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E614B34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

id sub_18E614B5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  *a2 = v2;
  return v2;
}

void sub_18E614B74(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18E61E100(v1);
}

id sub_18E614BA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *a2 = v2;
  return v2;
}

id sub_18E614BC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  *a2 = v2;
  return v2;
}

void sub_18E614BD8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18E61E5C0(v1);
}

uint64_t sub_18E614C20@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18E614D30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_18E614D88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_18E614DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_18E614E48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_18E614E80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
  *a2 = v2;
  return v2;
}

id sub_18E614EB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
  *a2 = v2;
  return v2;
}

id sub_18E614EF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
  *a2 = v2;
  return v2;
}

id sub_18E614F28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
  *a2 = v2;
  return v2;
}

__n128 sub_18E614F60@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E614FB8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double sub_18E615010@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E615068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_18E6150BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_18E61510C()
{
  MEMORY[0x193AD11D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E615154()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E6151A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E6151E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E615224@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_18E615320(unsigned int *a1)
{
  v1 = *a1;
  BSDispatchQueueAssertMain();
  sub_18E62CC9C(v1, 0);
}

void sub_18E615370(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18E62975C(v1);
}

void sub_18E6153AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18E6297BC(v1);
}

uint64_t sub_18E615420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_18E615480@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_18E6154D8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_18E615574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_18E615610()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E615648()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E615688()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E6156C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_18E615700()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E615748()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E615780()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_18E6157B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E6157F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E615830()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id sub_18E61590C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isArchiveContentReadyNumber];
  *a2 = result;
  return result;
}

id sub_18E61595C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolvedMetrics];
  *a2 = result;
  return result;
}

id sub_18E6159B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 disableIdleTimerNumber];
  *a2 = result;
  return result;
}

id sub_18E615A08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 archivedActivityFamilyNumber];
  *a2 = result;
  return result;
}

id sub_18E615A58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 baseContentTouchedDownNumber];
  *a2 = result;
  return result;
}

id sub_18E615AA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionButtonInitiatedNumber];
  *a2 = result;
  return result;
}

id sub_18E615AF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shouldShowSystemApertureNumber];
  *a2 = result;
  return result;
}

uint64_t sub_18E615B50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E615C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_18E65F4C0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18E615D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_18E65F4C0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

id sub_18E615E68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_18E615EA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_18E615ED8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wantsBaseContentTouchEventsNumber];
  *a2 = result;
  return result;
}

uint64_t sub_18E615F28()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E615F68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E6160F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

__n128 sub_18E6162C8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E616320(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double sub_18E616378@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_18E6163D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_18E616424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_18E616490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E65F4C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18E616550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18E65F4C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18E61660C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A3D0;
  return result;
}

uint64_t sub_18E616658(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A3D0 = v1;
  return result;
}

uint64_t sub_18E6166D4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A3E8;
  return result;
}

uint64_t sub_18E616720(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A3E8 = v1;
  return result;
}

uint64_t sub_18E61679C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A400;
  return result;
}

uint64_t sub_18E6167E8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A400 = v1;
  return result;
}

uint64_t sub_18E616864@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A408;
  return result;
}

uint64_t sub_18E6168B0(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A408 = v1;
  return result;
}

uint64_t sub_18E61692C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A420;
  return result;
}

uint64_t sub_18E616978(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A420 = v1;
  return result;
}

uint64_t sub_18E6169F4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A438;
  return result;
}

uint64_t sub_18E616A40(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A438 = v1;
  return result;
}

uint64_t sub_18E616ABC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A440;
  return result;
}

uint64_t sub_18E616B08(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A440 = v1;
  return result;
}

uint64_t sub_18E616B84@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_1EAC8A458;
  return result;
}

uint64_t sub_18E616BD0(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EAC8A458 = v1;
  return result;
}

uint64_t sub_18E616C4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E616C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E616CD4@<X0>(_BYTE *a2@<X8>)
{
  swift_getObjectType();
  result = sub_18E63E644();
  *a2 = result & 1;
  return result;
}

void sub_18E616D0C(char *a1, void *a2)
{
  v2 = *a1;
  swift_getObjectType();
  sub_18E63E4B8(v2);
}

id sub_18E616D4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 metricsRequest];
  *a2 = result;
  return result;
}

id sub_18E616E00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 activityMetrics];
  *a2 = result;
  return result;
}

id sub_18E616E88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest);
  *a2 = v2;
  return v2;
}

id sub_18E616EC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest);
  *a2 = v2;
  return v2;
}

id sub_18E616F40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_watchDisplayVariant;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_18E616FAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
  *a2 = v2;
  return v2;
}

void sub_18E616FC4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18E653CD8(v1);
}

uint64_t sub_18E616FF4()
{
  MEMORY[0x193AD11D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E61702C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_18E61706C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_18E6170D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_18E617144@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18E61720C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18E617254()
{
  v1 = sub_18E65F4C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_18E617368()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_18E6173A0@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_18E65EA68(a2, a3, a4);
  sub_18E65F820();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_18E6173F4(void *a1)
{
  v1 = sub_18E65F810();
  sub_18E65EFDC(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_18E6174A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id _sceneComponentLogger(uint64_t a1)
{
  if (_sceneComponentLogger___once != -1)
  {
    _sceneComponentLogger_cold_1();
  }

  v2 = _sceneComponentLogger___instance;

  return v2;
}

uint64_t ___sceneComponentLogger_block_invoke()
{
  _sceneComponentLogger___instance = os_log_create("com.apple.activityuiservices", "sceneComponent");

  return MEMORY[0x1EEE66BB8]();
}

void sub_18E618110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t activitySceneType(unint64_t a1)
{
  if (a1 > 8)
  {
    return 1;
  }

  else
  {
    return qword_18E663508[a1];
  }
}

uint64_t acuisSceneType(unint64_t a1)
{
  if (a1 > 5)
  {
    return 1;
  }

  else
  {
    return qword_18E6634D8[a1];
  }
}

id _logger(uint64_t a1)
{
  if (_logger___once[0] != -1)
  {
    _logger_cold_1();
  }

  v2 = _logger___instance;

  return v2;
}

uint64_t ___logger_block_invoke()
{
  _logger___instance = os_log_create("com.apple.activityuiservices", "openApplicationAction");

  return MEMORY[0x1EEE66BB8]();
}

void sub_18E619ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double _CentroidOfTouches(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v18;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      v10 = [v9 window];
      [v9 locationInView:0];
      [v10 _convertPointToSceneReferenceSpace:?];
      v12 = v11;
      v14 = v13;

      v6 = v6 + v12;
      v7 = v7 + v14;
    }

    v4 += v3;
    v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v3);
  if (v4)
  {
    v15 = v6 / v4;
  }

  else
  {
LABEL_10:
    v15 = *MEMORY[0x1E695EFF8];
  }

  return v15;
}

__CFString *NSStringFromACUISSizeDimensionRequestType(uint64_t a1)
{
  if (a1)
  {
    return @"dynamic";
  }

  else
  {
    return @"fixed";
  }
}

__CFString *ACUISActivitySceneCommandDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72627C0[a1 - 1];
  }
}

unint64_t sub_18E61D5A0()
{
  v1 = [v0 info];
  if (!v1)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_10:
    sub_18E61D6A8(&v9);
    return 0;
  }

  v2 = v1;
  v3 = [v1 objectForSetting_];

  if (v3)
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_10;
  }

  sub_18E61D758();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v7[0] integerValue];

  result = sub_18E6482C8(v4);
  if (v6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_18E61D6A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89DE0, &qword_18E663570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18E61D758()
{
  result = qword_1EAC89300;
  if (!qword_1EAC89300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAC89300);
  }

  return result;
}

id ActivityHardwareButtonPressAction.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id ActivityHardwareButtonPressAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityHardwareButtonPressAction.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_18E61D9D8;
    v13[3] = &block_descriptor;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

void sub_18E61D9D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id ActivityHardwareButtonPressAction.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ActivityHardwareButtonPressAction();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

BOOL sub_18E61DAE8(void *a1, uint64_t *a2)
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

void *sub_18E61DB40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E61DBD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E61DBF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_18E61DCA0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_18E61DD04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E6636F0;
  *(v0 + 32) = type metadata accessor for ActivitySceneSettingsExtension();
  return v0;
}

uint64_t sub_18E61DDF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E6636F0;
  v1 = objc_opt_self();
  v2 = &unk_1F01BC4E0;
  [v1 extensionForProtocol_];
  *(v0 + 32) = swift_getObjCClassMetadata();

  return v0;
}

id ActivitySceneExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySceneExtension.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneExtension();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ActivitySceneExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_18E61E074()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  v2 = v1;
  return v1;
}

void (*sub_18E61E120(void *a1))(void **a1, uint64_t a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_18E61E174;
}

void sub_18E61E258(void *a1)
{
  [a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = v4;
}

void sub_18E61E2EC(id *a1, uint64_t *a2)
{
  v2 = *a2;
  [*a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v3 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  *(v2 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) = v4;
}

void (*sub_18E61E378(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E61E400;
}

void sub_18E61E400(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v6 = v3;
    [v6 copy];
    sub_18E65FB60();

    swift_unknownObjectRelease();
    type metadata accessor for ActivityItemMetricsRequest();
    swift_dynamicCast();
    v7 = *(v5 + v4);
    *(v5 + v4) = *(v2 + 40);
  }

  else
  {
    [*(*a1 + 32) copy];
    sub_18E65FB60();

    swift_unknownObjectRelease();
    type metadata accessor for ActivityItemMetricsRequest();
    swift_dynamicCast();
    v8 = *(v5 + v4);
    *(v5 + v4) = *(v2 + 40);
  }

  free(v2);
}

void *sub_18E61E534()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  v2 = v1;
  return v1;
}

void sub_18E61E5E0(void *a1, uint64_t (*a2)(void), void *a3)
{
  if (a1)
  {
    [a1 copy];
    sub_18E65FB60();
    swift_unknownObjectRelease();

    a2(0);
    v7 = swift_dynamicCast();
    v8 = v10;
    if (!v7)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + *a3);
  *(v3 + *a3) = v8;
}

void (*sub_18E61E698(void *a1))(void **a1, uint64_t a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_18E61E6EC;
}

void sub_18E61E704(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

id ActivityMetricsRequest.__allocating_init(lockScreenMetrics:systemApertureMetrics:ambientMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v7[v9] = a2;
  *&v7[v8] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ActivityMetricsRequest.init(lockScreenMetrics:systemApertureMetrics:ambientMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v3[v5] = a2;
  *&v3[v4] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ActivityMetricsRequest.__allocating_init(lockScreenMetrics:systemApertureMetrics:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v7 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v5[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v5[v7] = a2;
  *&v5[v6] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ActivityMetricsRequest.init(lockScreenMetrics:systemApertureMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = a1;
  *&v2[v4] = a2;
  *&v2[v3] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_18E61EAB0()
{
  result = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics) hash];
  if (result >= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  v3 = 23 * v2;
  if ((v2 * 23) >> 64 != (23 * v2) >> 63)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  if (v4)
  {
    result = [v4 hash];
  }

  else
  {
    result = 1;
  }

  v5 = v3 * result;
  if ((v3 * result) >> 64 != (v3 * result) >> 63)
  {
    goto LABEL_15;
  }

  v6 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  if (v6)
  {
    result = [v6 hash];
  }

  else
  {
    result = 1;
  }

  if ((v5 * result) >> 64 == (v5 * result) >> 63)
  {
    result *= v5;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_18E61EB78(uint64_t a1)
{
  sub_18E61ED24(a1, v20);
  if (!v21)
  {
    sub_18E61D6A8(v20);
    goto LABEL_14;
  }

  type metadata accessor for ActivityMetricsRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  sub_18E61ED94();
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v4 = *&v19[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics];
  v5 = v3;
  v6 = v4;
  v7 = sub_18E65FB20();

  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  v9 = *&v19[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics];
  if (!v8)
  {
    v12 = v2;
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v9)
  {

    return v9 & 1;
  }

  type metadata accessor for SystemApertureMetricsRequest();
  v10 = v9;
  v11 = v8;
  v12 = v2;
  v13 = sub_18E65FB20();

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = *(v12 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  v14 = *&v19[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics];
  if (!v9)
  {
    v18 = v14;

    if (!v14)
    {
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

    goto LABEL_14;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  type metadata accessor for ActivityItemMetricsRequest();
  v15 = v14;
  v16 = v9;
  LOBYTE(v9) = sub_18E65FB20();

  return v9 & 1;
}

uint64_t sub_18E61ED24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89DE0, &qword_18E663570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E61ED94()
{
  result = qword_1ED764CC0;
  if (!qword_1ED764CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED764CC0);
  }

  return result;
}

id sub_18E61EEC0()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
    v4 = sub_18E65F8F0();

    v5 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
    v6 = sub_18E65F8F0();

    v7 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
    v8 = sub_18E65F8F0();

    result = [v2 build];
    if (result)
    {
      v9 = result;
      v10 = sub_18E65F900();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ActivityMetricsRequest.__allocating_init(xpcDictionary:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E61F748(a1);
  swift_unknownObjectRelease();
  return v4;
}

id ActivityMetricsRequest.init(xpcDictionary:)(uint64_t a1)
{
  v1 = sub_18E61F748(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_18E61F138(uint64_t result)
{
  if (result)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();

    return BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  return result;
}

void *sub_18E61F230@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  v6 = type metadata accessor for ActivityMetricsRequest();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = v3;
  *&v7[v9] = v4;
  *&v7[v8] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  result = objc_msgSendSuper2(&v14, sel_init);
  a1[3] = v6;
  *a1 = result;
  return result;
}

void sub_18E61F3AC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v4 = sub_18E65F8F0();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics);
  if (v5)
  {
    v6 = v5;
    v7 = sub_18E65F8F0();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  if (v8)
  {
    v9 = v8;
    v10 = sub_18E65F8F0();
    [a1 encodeObject:v9 forKey:v10];
  }
}

id ActivityMetricsRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E61F96C(a1);

  return v4;
}

id ActivityMetricsRequest.init(coder:)(void *a1)
{
  v2 = sub_18E61F96C(a1);

  return v2;
}

id ActivityMetricsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityMetricsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E61F748(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v4 = v12;
      goto LABEL_9;
    }
  }

  else
  {
    sub_18E61D6A8(&v16);
  }

  v4 = sub_18E655E3C();
LABEL_9:
  *&v1[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = v4;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for SystemApertureMetricsRequest();
    v5 = swift_dynamicCast();
    v6 = v12;
    if (!v5)
    {
      v6 = 0;
    }
  }

  else
  {
    sub_18E61D6A8(&v16);
    v6 = 0;
  }

  v7 = *&v1[v3];
  *&v1[v3] = v6;

  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    v8 = swift_dynamicCast();
    v9 = v12;
    if (!v8)
    {
      v9 = 0;
    }
  }

  else
  {
    sub_18E61D6A8(&v16);
    v9 = 0;
  }

  v10 = *&v1[v2];
  *&v1[v2] = v9;

  v13.receiver = v1;
  v13.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_18E61F96C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__systemApertureMetrics] = 0;
  type metadata accessor for ActivityItemMetricsRequest();
  v6 = sub_18E65FAF0();
  if (!v6)
  {
    sub_18E61FDE8(0, v7, v8);
    v9 = swift_allocError();
    *v10 = 0xD000000000000013;
    v10[1] = 0x800000018E667940;
    v11 = sub_18E65F350();

    [a1 failWithError_];
    v6 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics] = v6;
  type metadata accessor for SystemApertureMetricsRequest();
  v12 = sub_18E65FAF0();
  if (v12)
  {
    v13 = *&v2[v5];
    *&v2[v5] = v12;
  }

  v14 = sub_18E65FAF0();
  if (v14)
  {
    v15 = *&v2[v4];
    *&v2[v4] = v14;
  }

  v17.receiver = v2;
  v17.super_class = type metadata accessor for ActivityMetricsRequest();
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_18E61FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89BF0;
  if (!qword_1EAC89BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89BF0);
  }

  return result;
}

id sub_18E6203AC(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
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

id sub_18E620428(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_18E620484(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_18E6204E0()
{
  v0 = sub_18E65F8F0();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = sub_18E639A78(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_18E639A78((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[8 * v5 + 32] = ObjCClassMetadata;
  return v3;
}

uint64_t ArchivedActivityFamily.description.getter()
{
  if (*v0)
  {
    return 0x6D756964656DLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

ActivityUIServices::ArchivedActivityFamily_optional __swiftcall ArchivedActivityFamily.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_18E620618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89C60;
  if (!qword_1EAC89C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C60);
  }

  return result;
}

uint64_t sub_18E62066C()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

uint64_t sub_18E6206E0(uint64_t a1)
{
  v2 = *v1;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v2);
  return sub_18E65FF10();
}

void *sub_18E620724@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_18E620800()
{
  if (*v0)
  {
    return 0x6D756964656DLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t getEnumTagSinglePayload for ArchivedActivityFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivedActivityFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18E6209A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89C68;
  if (!qword_1EAC89C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C68);
  }

  return result;
}

uint64_t sub_18E620A50()
{
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](0);
  return sub_18E65FF10();
}

uint64_t sub_18E620A94(uint64_t a1)
{
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](0);
  return sub_18E65FF10();
}

uint64_t sub_18E620AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18E65FDE0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18E620B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E620D6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_18E620BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E620D6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AnimationDemoAttributes.ContentState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C70, &qword_18E663AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E620D6C(v6, v7, v8);
  sub_18E65FF50();
  sub_18E65FD90();
  return (*(v3 + 8))(v5, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_18E620D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89C78;
  if (!qword_1EAC89C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C78);
  }

  return result;
}

uint64_t AnimationDemoAttributes.ContentState.hashValue.getter()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

uint64_t AnimationDemoAttributes.ContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C80, &qword_18E663AE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E620D6C(v9, v10, v11);
  sub_18E65FF40();
  if (!v2)
  {
    v12 = sub_18E65FD50();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18E620F88()
{
  v1 = *v0;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v1);
  return sub_18E65FF10();
}

uint64_t sub_18E620FFC(uint64_t a1)
{
  v2 = *v1;
  sub_18E65FEB0();
  MEMORY[0x193AD06F0](v2);
  return sub_18E65FF10();
}

uint64_t sub_18E621058(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C70, &qword_18E663AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E620D6C(v6, v7, v8);
  sub_18E65FF50();
  sub_18E65FD90();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18E6211A0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_18E6211D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E62135C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_18E62120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E62135C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AnimationDemoAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C88, &qword_18E663AF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E62135C(v6, v7, v8);
  sub_18E65FF50();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_18E62135C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89C90;
  if (!qword_1EAC89C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C90);
  }

  return result;
}

unint64_t sub_18E6213DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89C98;
  if (!qword_1EAC89C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89C98);
  }

  return result;
}

unint64_t sub_18E621434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CA0;
  if (!qword_1EAC89CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CA0);
  }

  return result;
}

unint64_t sub_18E62148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CA8;
  if (!qword_1EAC89CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CA8);
  }

  return result;
}

unint64_t sub_18E6214E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CB0;
  if (!qword_1EAC89CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CB0);
  }

  return result;
}

unint64_t sub_18E62153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CB8;
  if (!qword_1EAC89CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CB8);
  }

  return result;
}

unint64_t sub_18E621594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CC0;
  if (!qword_1EAC89CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CC0);
  }

  return result;
}

uint64_t sub_18E621610(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89C88, &qword_18E663AF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E62135C(v6, v7, v8);
  sub_18E65FF50();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for AnimationDemoAttributes.ContentState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnimationDemoAttributes.ContentState(uint64_t result, int a2, int a3)
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

uint64_t sub_18E6217AC(unsigned int *a1, int a2)
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

_WORD *sub_18E6217FC(_WORD *result, int a2, int a3)
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

unint64_t sub_18E621894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CC8;
  if (!qword_1EAC89CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CC8);
  }

  return result;
}

unint64_t sub_18E6218EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CD0;
  if (!qword_1EAC89CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CD0);
  }

  return result;
}

unint64_t sub_18E621944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CD8;
  if (!qword_1EAC89CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CD8);
  }

  return result;
}

unint64_t sub_18E62199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CE0;
  if (!qword_1EAC89CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CE0);
  }

  return result;
}

unint64_t sub_18E6219F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89CE8;
  if (!qword_1EAC89CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89CE8);
  }

  return result;
}

id sub_18E621AE4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E621B50()
{

  sub_18E65F730();
}

id ActivityListItemHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_18E621E84(a1, a2, a3, a4);

  return v10;
}

id ActivityListItemHostViewController.init(activityDescriptor:systemMetricsRequest:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18E621E84(a1, a2, a3, a4);

  return v5;
}

id sub_18E621D40()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityListItemSceneSpecification());

  return [v0 init];
}

id ActivityListItemHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityListItemHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E621E84(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_18E65F4C0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a1, v7, v9);
  v13 = type metadata accessor for ActivitySceneDescriptor(0);
  v14 = objc_allocWithZone(v13);
  v15 = a2;
  v16 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v17 = &v14[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v17 = v16;
  v17[1] = v18;
  *&v14[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 0;
  sub_18E6220E4(&unk_1EAC894E0, MEMORY[0x1E6959BB0]);
  *&v14[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v12)(&v14[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v11, v7);
  *&v14[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v15;
  v19 = &v14[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  *v19 = 0;
  *(v19 + 1) = 0;
  v25.receiver = v14;
  v25.super_class = v13;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  v21 = *(v8 + 8);
  v21(v11, v7);
  v22 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v20, a3, v24);
  v21(a1, v7);
  return v22;
}

uint64_t sub_18E6220E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18E65F4C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityAlertClientError.errorCode.getter(uint64_t a1)
{
  if (!a1)
  {
    return 1001;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t ActivityAlertClientError.errorDescription.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t sub_18E622218(uint64_t a1, uint64_t a2)
{
  sub_18E65FEB0();
  sub_18E65F8D0();
  return sub_18E65FF10();
}

uint64_t sub_18E62227C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18E622C74(a1, a2, a3);

  return MEMORY[0x1EEDC2D70](a1, a2, v5);
}

uint64_t sub_18E6222C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E65FEB0();
  sub_18E65F8D0();
  return sub_18E65FF10();
}

void *sub_18E622328@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18E62235C(uint64_t a1)
{
  if (!*v1)
  {
    return 1001;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t sub_18E6223A4(uint64_t a1)
{
  if (!*v1)
  {
    return 0xD000000000000012;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

uint64_t sub_18E622408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E622C74(a1, a2, a3);

  return MEMORY[0x1EEDC2D80](a1, v4);
}

uint64_t sub_18E622444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E622C74(a1, a2, a3);

  return MEMORY[0x1EEDC2D78](a1, v4);
}

uint64_t sub_18E6224A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18E622C74(a1, a2, a3);

  return MEMORY[0x1EEDC2D68](a1, a2, v5);
}

uint64_t sub_18E6225F8(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18E622658(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ActivityUIServices19ActivityAlertClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E6226F0;
}

void sub_18E6226F0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id ActivityAlertClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ActivityAlertClient.init()()
{
  swift_unknownObjectWeakInit();
  sub_18E65F560();
  *&v0[OBJC_IVAR____TtC18ActivityUIServices19ActivityAlertClient_alertClient] = sub_18E65F550();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ActivityAlertClient();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = *&v1[OBJC_IVAR____TtC18ActivityUIServices19ActivityAlertClient_alertClient];
  sub_18E622884();
  v3 = v1;
  v4 = v2;
  sub_18E65F540();

  return v3;
}

unint64_t sub_18E622884()
{
  result = qword_1ED764F28;
  if (!qword_1ED764F28)
  {
    type metadata accessor for ActivityAlertClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764F28);
  }

  return result;
}

id ActivityAlertClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAlertClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E622980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89D10;
  if (!qword_1EAC89D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D10);
  }

  return result;
}

unint64_t sub_18E6229D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89D18;
  if (!qword_1EAC89D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D18);
  }

  return result;
}

unint64_t sub_18E622A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89D20;
  if (!qword_1EAC89D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D20);
  }

  return result;
}

unint64_t sub_18E622A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89D28;
  if (!qword_1EAC89D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D28);
  }

  return result;
}

unint64_t sub_18E622ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89D30;
  if (!qword_1EAC89D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D30);
  }

  return result;
}

unint64_t sub_18E622B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89D38;
  if (!qword_1EAC89D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D38);
  }

  return result;
}

unint64_t sub_18E622C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89D40;
  if (!qword_1EAC89D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D40);
  }

  return result;
}

id ActivityAmbientCompactHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v7);
  v14 = *(v11 + 16);
  v14(v13, a1, v10);
  v15 = type metadata accessor for ActivitySceneDescriptor(0);
  v16 = objc_allocWithZone(v15);
  v17 = a2;
  v18 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v19 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v19 = v18;
  v19[1] = v20;
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 3;
  sub_18E6220E4(&unk_1EAC894E0, MEMORY[0x1E6959BB0]);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v14(&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v13, v10);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v17;
  v21 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  v31.receiver = v16;
  v31.super_class = v15;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = *(v11 + 8);
  v24(v13, v10);
  v25 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v23, v29, v30);

  v24(a1, v10);
  return v25;
}

id ActivityAmbientCompactHostViewController.init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_18E6231A8(a1, a2, a3, a4, a5, a6);

  return v7;
}

id sub_18E623064()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityAmbientCompactSceneSpecification());

  return [v0 init];
}

id ActivityAmbientCompactHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAmbientCompactHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E6231A8(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v27 = a4;
  v28 = a5;
  v9 = sub_18E65F4C0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9, v11);
  v15 = type metadata accessor for ActivitySceneDescriptor(0);
  v16 = objc_allocWithZone(v15);
  v17 = a2;
  v18 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v19 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v19 = v18;
  v19[1] = v20;
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 3;
  sub_18E6220E4(&unk_1EAC894E0, MEMORY[0x1E6959BB0]);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v14)(&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v13, v9);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v17;
  v21 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v22 = v27;
  *v21 = a3;
  *(v21 + 1) = v22;
  v30.receiver = v16;
  v30.super_class = v15;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  v24 = *(v10 + 8);
  v24(v13, v9);
  v25 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v23, v28, v29);
  v24(a1, v9);
  return v25;
}

uint64_t sub_18E623424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E62346C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_18E6234B8(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v5 = sub_18E613228(a1, a2, 0);
  if (!v5)
  {
    if (qword_1EAC89398 != -1)
    {
      swift_once();
    }

    v13 = sub_18E65F6E0();
    __swift_project_value_buffer(v13, qword_1EAC893A0);

    v6 = sub_18E65F6C0();
    v14 = sub_18E65FA50();

    if (os_log_type_enabled(v6, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136380675;
      *(v15 + 4) = sub_18E61173C(a1, a2, v24);
      _os_log_impl(&dword_18E60F000, v6, v14, "No application record created with bundle identifier: %{private}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193AD1140](v16, -1, -1);
      MEMORY[0x193AD1140](v15, -1, -1);
    }

    goto LABEL_23;
  }

  v6 = v5;
  v7 = [v6 identities];
  sub_18E623B78(0, &qword_1ED764CF8, 0x1E69635D8);
  v8 = sub_18E65F9A0();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_4;
    }

LABEL_17:

    if (qword_1EAC89398 != -1)
    {
      swift_once();
    }

    v23 = sub_18E65F6E0();
    __swift_project_value_buffer(v23, qword_1EAC893A0);

    v18 = sub_18E65F6C0();
    v19 = sub_18E65FA50();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_22;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_18E61173C(a1, a2, v24);
    v22 = "Multiple identities found with bundle identifier: %{private}s";
    goto LABEL_21;
  }

  if (sub_18E65FBC0() != 1)
  {
    goto LABEL_17;
  }

  if (!sub_18E65FBC0())
  {

    if (qword_1EAC89398 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x193AD04B0](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_7:
    v10 = v9;

    v11 = [objc_opt_self() identityForLSApplicationIdentity:v10 LSApplicationRecord:v6];

    return v11;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_15:
  v17 = sub_18E65F6E0();
  __swift_project_value_buffer(v17, qword_1EAC893A0);

  v18 = sub_18E65F6C0();
  v19 = sub_18E65FA50();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_18E61173C(a1, a2, v24);
    v22 = "No lsIdentity found for bundle identifier: %{private}s";
LABEL_21:
    _os_log_impl(&dword_18E60F000, v18, v19, v22, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x193AD1140](v21, -1, -1);
    MEMORY[0x193AD1140](v20, -1, -1);
  }

LABEL_22:

LABEL_23:
  return 0;
}

uint64_t sub_18E623B78(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id ActivityAlertProvider.__allocating_init(identifier:action:presentationOptions:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_18E611A08(a1, a2, a3, a4, a5);

  return v12;
}

uint64_t sub_18E623C40()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_activityIdentifier);

  return v1;
}

void *sub_18E623C7C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E623CD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_18E623D90()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E623DE8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_18E623E44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18E623E9C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id ActivityAlertProvider.init(identifier:action:presentationOptions:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_18E611A08(a1, a2, a3, a4, a5);

  return v6;
}

id ActivityAlertProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityAlertProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAlertProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_18E624230(uint64_t a1)
{
  sub_18E624624(319, &qword_1EAC894C0, MEMORY[0x1E6959C88]);
  if (v1 <= 0x3F)
  {
    sub_18E624624(319, &qword_1EAC894C8, MEMORY[0x1E6959C80]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_18E624624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18E65FB40();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_18E624678()
{
  result = qword_1EAC89D78;
  if (!qword_1EAC89D78)
  {
    sub_18E65F5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89D78);
  }

  return result;
}

uint64_t sub_18E62471C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E6247B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_18E6248B0()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_18E624964(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18E6249BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_18E624ADC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier);

  return v1;
}

id ActivityUpdateProvider.__allocating_init(activityDescriptor:activityState:systemMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F4C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v4);
  v13 = *(v9 + 16);
  v13(&v12[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityDescriptor], a1, v8);
  *&v12[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState] = a2;
  v14 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v15 = &v12[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier];
  *v15 = v14;
  v15[1] = v16;
  sub_18E624E4C();
  v13(v11, a1, v8);
  *&v12[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor] = sub_18E65FAD0();
  *&v12[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_systemMetricsRequest] = a3;
  v19.receiver = v12;
  v19.super_class = v4;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v9 + 8))(a1, v8);
  return v17;
}

id ActivityUpdateProvider.init(activityDescriptor:activityState:systemMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F4C0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v13(&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityDescriptor], a1, v8, v10);
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityState] = a2;
  v14 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v15 = &v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_activityIdentifier];
  *v15 = v14;
  v15[1] = v16;
  sub_18E624E4C();
  (v13)(v12, a1, v8);
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_descriptor] = sub_18E65FAD0();
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ActivityUpdateProvider_systemMetricsRequest] = a3;
  updated = type metadata accessor for ActivityUpdateProvider(0);
  v20.receiver = v4;
  v20.super_class = updated;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v9 + 8))(a1, v8);
  return v18;
}

unint64_t sub_18E624E4C()
{
  result = qword_1ED764D00;
  if (!qword_1ED764D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED764D00);
  }

  return result;
}

uint64_t type metadata accessor for ActivityUpdateProvider(uint64_t a1)
{
  result = qword_1EAC89480;
  if (!qword_1EAC89480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ActivityUpdateProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityUpdateProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityUpdateProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E625118(uint64_t a1)
{
  result = sub_18E65F4C0();
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

unint64_t sub_18E625368()
{
  result = qword_1ED764FA8;
  if (!qword_1ED764FA8)
  {
    sub_18E65F4C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764FA8);
  }

  return result;
}

uint64_t sub_18E6253C0()
{
  sub_18E625AEC();

  return swift_deallocClassInstance();
}

void sub_18E625440()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v2 = sub_18E65F6E0();
    __swift_project_value_buffer(v2, qword_1ED764D90);

    oslog = sub_18E65F6C0();
    v3 = sub_18E65FA60();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      aBlock[0] = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_18E61173C(v1[4], v1[5], aBlock);
      _os_log_impl(&dword_18E60F000, oslog, v3, "[%s] Back off timer is already on", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x193AD1140](v5, -1, -1);
      MEMORY[0x193AD1140](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    [*(v0 + 88) invalidate];
    v6 = *(v0 + 88);
    *(v0 + 88) = 0;

    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v7 = sub_18E65F6E0();
    __swift_project_value_buffer(v7, qword_1ED764D90);

    v8 = sub_18E65F6C0();
    v9 = sub_18E65FA60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_18E61173C(*(v0 + 32), *(v0 + 40), aBlock);
      *(v10 + 12) = 2048;
      *(v10 + 14) = *(v0 + 24);
      _os_log_impl(&dword_18E60F000, v8, v9, "[%s] scheduling new backoff with base interval: %f.", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193AD1140](v11, -1, -1);
      MEMORY[0x193AD1140](v10, -1, -1);
    }

    v12 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v13 = sub_18E65F8F0();
    v14 = [v12 initWithIdentifier_];

    v15 = *(v0 + 16);
    *(v0 + 16) = v14;
    v16 = v14;

    v17 = *(v0 + 24);
    if (v17 >= 0.1)
    {
      v18 = v17 + v17;
    }

    else
    {
      v18 = 0.1;
    }

    v19 = fmin(v18, 120.0);
    *(v0 + 24) = v19;
    if (v16)
    {
      v20 = *(v0 + 48);
      v21 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_18E625E68;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E61D9D8;
      aBlock[3] = &block_descriptor_17;
      v22 = _Block_copy(aBlock);

      [v16 scheduleWithFireInterval:v20 leewayInterval:v22 queue:v19 handler:0.0];
      _Block_release(v22);

      v23 = sub_18E65F6C0();
      v24 = sub_18E65FA60();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_18E61173C(v1[4], v1[5], aBlock);
        *(v25 + 12) = 2048;
        *(v25 + 14) = v1[3];
        _os_log_impl(&dword_18E60F000, v23, v24, "[%s] Back off timer is scheduled with fire interval: %f", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x193AD1140](v26, -1, -1);
        MEMORY[0x193AD1140](v25, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_18E625918(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v6 = sub_18E65F6E0();
    __swift_project_value_buffer(v6, qword_1ED764D90);

    v7 = sub_18E65F6C0();
    v8 = sub_18E65FA60();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = v5[4];
      v12 = v5[5];

      v13 = sub_18E61173C(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_18E60F000, v7, v8, "[%s] Back off timer fired", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x193AD1140](v10, -1, -1);
      MEMORY[0x193AD1140](v9, -1, -1);
    }

    v14 = v5[7];

    v14(v15);

    [a1 invalidate];
    v16 = v5[2];
    v5[2] = 0;

    sub_18E625B48();
  }

  return result;
}

void sub_18E625AEC()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  [*(v0 + 88) invalidate];
  v2 = *(v0 + 88);
  *(v0 + 88) = 0;
}

void sub_18E625B48()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = *(v0 + 72);
    [*(v0 + 88) invalidate];
    v2 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v3 = sub_18E65F8F0();
    v4 = [v2 initWithIdentifier_];

    v5 = *(v0 + 88);
    *(v0 + 88) = v4;
    v6 = v4;

    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = swift_allocObject();
      swift_weakInit();
      v10[4] = sub_18E625E60;
      v10[5] = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_18E61D9D8;
      v10[3] = &block_descriptor_1;
      v9 = _Block_copy(v10);

      [v6 scheduleWithFireInterval:v7 leewayInterval:v9 queue:v1 handler:0.0];
      _Block_release(v9);
    }
  }
}

void sub_18E625CB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1ED764D88 != -1)
    {
      swift_once();
    }

    v4 = sub_18E65F6E0();
    __swift_project_value_buffer(v4, qword_1ED764D90);

    v5 = sub_18E65F6C0();
    v6 = sub_18E65FA60();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = *(v3 + 32);
      v10 = *(v3 + 40);

      v11 = sub_18E61173C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_18E60F000, v5, v6, "[%s] Reset interval satiated, resetting", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193AD1140](v8, -1, -1);
      MEMORY[0x193AD1140](v7, -1, -1);
    }

    *(v3 + 24) = 0;
    [*(v3 + 88) invalidate];
    v12 = *(v3 + 88);
    *(v3 + 88) = 0;
  }
}

void (*sub_18E625EB0(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E628660;
}

void (*sub_18E625F70(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E625FF8;
}

void (*sub_18E626034(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E628660;
}

void sub_18E6260E8(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = a3;
  v7 = a1;
  [v6 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v8 = *a4;
  v9 = *&v7[*a4];
  *&v7[v8] = v10;
}

void sub_18E6261A0(void *a1, void *a2)
{
  [a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();

  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v5 = *(v2 + *a2);
  *(v2 + *a2) = v6;
}

void sub_18E626234(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a2;
  [*a1 copy];
  sub_18E65FB60();
  swift_unknownObjectRelease();
  type metadata accessor for ActivityItemMetricsRequest();
  swift_dynamicCast();
  v7 = *(v6 + *a5);
  *(v6 + *a5) = v8;
}

void (*sub_18E6262C8(void *a1))(uint64_t *, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest;
  v3[6] = v1;
  v3[7] = v4;
  v5 = *(v1 + v4);
  v3[4] = v5;
  v6 = v5;
  return sub_18E628660;
}

double sub_18E626398()
{
  v1 = v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_18E626438(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_18E626538()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E6265D0(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SystemApertureMetricsRequest.__allocating_init(obstructionSize:obstructionTopMargin:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v16 = a5;
  v16[1] = a6;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = a7;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = a1;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = a2;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = a3;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = a4;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, sel_init);
}

id SystemApertureMetricsRequest.init(obstructionSize:obstructionTopMargin:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = &v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v8 = a5;
  v8[1] = a6;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = a7;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = a1;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = a2;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = a3;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = a4;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v10, sel_init);
}

id SystemApertureMetricsRequest.__allocating_init(obstructionSize:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(void *a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  v11 = [objc_allocWithZone(v6) initWithObstructionSize:a1 obstructionTopMargin:a2 expandedMetricsRequest:a3 compactLeadingMetricsRequest:a4 compactTrailingMetricsRequest:a5 minimalMetricsRequest:{a6, 0.0}];

  return v11;
}

id SystemApertureMetricsRequest.init(obstructionSize:expandedMetricsRequest:compactLeadingMetricsRequest:compactTrailingMetricsRequest:minimalMetricsRequest:)(void *a1, void *a2, void *a3, void *a4, double a5, double a6)
{
  v11 = [v6 initWithObstructionSize:a1 obstructionTopMargin:a2 expandedMetricsRequest:a3 compactLeadingMetricsRequest:a4 compactTrailingMetricsRequest:a5 minimalMetricsRequest:{a6, 0.0}];

  return v11;
}

uint64_t sub_18E6269FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest) hash];
  if (v1 >= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  v3 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest) hash];
  if (v3 >= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest) hash];
  if (v5 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest) hash];
  if (v7 >= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  result = swift_beginAccess();
  if (*v9 > 1.0)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = *v9;
  }

  if (*v9 <= 1.0 && (*v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = v9[1];
  if (v12 > 1.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v9[1];
  }

  if (v12 <= 1.0 && (v9[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_43;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  result = swift_beginAccess();
  v15 = *(v0 + v14);
  if (v15 > 1.0)
  {
    v15 = 1.0;
    goto LABEL_30;
  }

  if ((*(v0 + v14) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_30:
  if (v15 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = 37 * v2;
  if ((v2 * 37) >> 64 != (37 * v2) >> 63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v17 = v16 * v4;
  if ((v16 * v4) >> 64 != (v16 * v4) >> 63)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v18 = v17 * v6;
  if ((v17 * v6) >> 64 != (v17 * v6) >> 63)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v19 = v18 * v8;
  if ((v18 * v8) >> 64 != (v18 * v8) >> 63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v20 = v19 * v11;
  if ((v19 * v11) >> 64 != v20 >> 63)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v21 = v20 * v13;
  if ((v20 * v13) >> 64 != v21 >> 63)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = v21 * v15;
  if ((v21 * v15) >> 64 != result >> 63)
  {
LABEL_55:
    __break(1u);
  }

  return result;
}

BOOL sub_18E626C90(uint64_t a1)
{
  v2 = v1;
  sub_18E61ED24(a1, v29);
  if (v30)
  {
    type metadata accessor for SystemApertureMetricsRequest();
    if (swift_dynamicCast())
    {
      sub_18E61ED94();
      v3 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest];
      v4 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
      v5 = v3;
      v6 = sub_18E65FB20();

      if (v6)
      {
        v7 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest];
        v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
        v9 = v7;
        v10 = sub_18E65FB20();

        if (v10)
        {
          v11 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest];
          v12 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
          v13 = v11;
          v14 = sub_18E65FB20();

          if (v14)
          {
            v15 = *&v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest];
            v16 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
            v17 = v15;
            v18 = sub_18E65FB20();

            if (v18)
            {
              v19 = (v2 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
              swift_beginAccess();
              v20 = *v19;
              v21 = v19[1];
              v22 = &v28[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
              swift_beginAccess();
              v31.width = v20;
              v31.height = v21;
              if (CGSizeEqualToSize(v31, *v22))
              {
                v23 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
                swift_beginAccess();
                v24 = *(v2 + v23);
                v25 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
                swift_beginAccess();
                v26 = *&v28[v25];

                return v24 == v26;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_18E61D6A8(v29);
  }

  return 0;
}

id sub_18E626F9C()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = (v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
    swift_beginAccess();
    v4 = *v3;
    v5 = v3[1];
    v6 = sub_18E65F8F0();

    v7 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
    swift_beginAccess();
    v8 = *(v0 + v7);
    v9 = sub_18E65F8F0();

    v10 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
    v11 = sub_18E65F8F0();

    v12 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
    v13 = sub_18E65F8F0();

    v14 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
    v15 = sub_18E65F8F0();

    v16 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
    v17 = sub_18E65F8F0();

    result = [v2 build];
    if (result)
    {
      v18 = result;
      v19 = sub_18E65F900();

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18E627294@<X0>(void *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
  v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
  v9 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
  v10 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
  v11 = type metadata accessor for SystemApertureMetricsRequest();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v13 = v3;
  *(v13 + 1) = v4;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = v6;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = v7;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = v8;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = v9;
  *&v12[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = v10;
  v20.receiver = v12;
  v20.super_class = v11;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  result = objc_msgSendSuper2(&v20, sel_init);
  a1[3] = v11;
  *a1 = result;
  return result;
}

id SystemApertureMetricsRequest.__allocating_init(xpcDictionary:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E627B18(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SystemApertureMetricsRequest.init(xpcDictionary:)(uint64_t a1)
{
  v1 = sub_18E627B18(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_18E6274F4(uint64_t a1)
{
  swift_beginAccess();
  BSSerializeCGSizeToXPCDictionaryWithKey();
  swift_beginAccess();
  BSSerializeDoubleToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  return BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

void sub_18E627670(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize);
  swift_beginAccess();
  v4 = *v3;
  v5 = sub_18E65F8F0();
  [a1 encodeDouble:v5 forKey:v4];

  v6 = v3[1];
  v7 = sub_18E65F8F0();
  [a1 encodeDouble:v7 forKey:v6];

  v8 = OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = sub_18E65F8F0();
  [a1 encodeDouble:v10 forKey:v9];

  v11 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest);
  v12 = sub_18E65F8F0();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest);
  v14 = sub_18E65F8F0();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest);
  v16 = sub_18E65F8F0();
  [a1 encodeObject:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest);
  v18 = sub_18E65F8F0();
  [a1 encodeObject:v17 forKey:v18];
}

id SystemApertureMetricsRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E627DE0(a1);

  return v4;
}

id SystemApertureMetricsRequest.init(coder:)(void *a1)
{
  v2 = sub_18E627DE0(a1);

  return v2;
}

id SystemApertureMetricsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemApertureMetricsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E627B18(uint64_t a1)
{
  BSDeserializeCGSizeFromXPCDictionaryWithKey();
  v2 = &v1[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v2 = v3;
  *(v2 + 1) = v4;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v1[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = v5;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    sub_18E61D6A8(&v15);
  }

  v6 = sub_18E655E3C();
LABEL_9:
  *&v1[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = v6;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v7 = v11;
      goto LABEL_17;
    }
  }

  else
  {
    sub_18E61D6A8(&v15);
  }

  v7 = sub_18E655E3C();
LABEL_17:
  *&v1[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = v7;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for ActivityItemMetricsRequest();
    if (swift_dynamicCast())
    {
      v8 = v11;
      goto LABEL_25;
    }
  }

  else
  {
    sub_18E61D6A8(&v15);
  }

  v8 = sub_18E655E3C();
LABEL_25:
  *&v1[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = v8;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    sub_18E61D6A8(&v15);
    goto LABEL_32;
  }

  type metadata accessor for ActivityItemMetricsRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v9 = sub_18E655E3C();
    goto LABEL_33;
  }

  v9 = v11;
LABEL_33:
  *&v1[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = v9;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_18E627DE0(void *a1)
{
  v2 = v1;
  v4 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v6 = v5;

  v7 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionSize];
  *v10 = v6;
  *(v10 + 1) = v9;
  v11 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v13 = v12;

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest_obstructionTopMargin] = v13;
  type metadata accessor for ActivityItemMetricsRequest();
  v14 = sub_18E65FAF0();
  if (!v14)
  {
    sub_18E61FDE8(0, v15, v16);
    v17 = swift_allocError();
    *v18 = 0xD000000000000010;
    v18[1] = 0x800000018E668910;
    v19 = sub_18E65F350();

    [a1 failWithError_];
    v14 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__expandedMetricsRequest] = v14;
  v20 = sub_18E65FAF0();
  if (!v20)
  {
    sub_18E61FDE8(0, v21, v22);
    v23 = swift_allocError();
    *v24 = 0x206C616D696E696DLL;
    v24[1] = 0xEF7363697274656DLL;
    v25 = sub_18E65F350();

    [a1 failWithError_];
    v20 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__minimalMetricsRequest] = v20;
  v26 = sub_18E65FAF0();
  if (!v26)
  {
    sub_18E61FDE8(0, v27, v28);
    v29 = swift_allocError();
    *v30 = 0xD000000000000017;
    v30[1] = 0x800000018E668930;
    v31 = sub_18E65F350();

    [a1 failWithError_];
    v26 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactLeadingMetricsRequest] = v26;
  v32 = sub_18E65FAF0();
  if (!v32)
  {
    sub_18E61FDE8(0, v33, v34);
    v35 = swift_allocError();
    *v36 = 0xD000000000000018;
    v36[1] = 0x800000018E668950;
    v37 = sub_18E65F350();

    [a1 failWithError_];
    v32 = sub_18E655E3C();
  }

  *&v2[OBJC_IVAR____TtC18ActivityUIServices28SystemApertureMetricsRequest__compactTrailingMetricsRequest] = v32;
  v39.receiver = v2;
  v39.super_class = type metadata accessor for SystemApertureMetricsRequest();
  return objc_msgSendSuper2(&v39, sel_init);
}

id sub_18E628664()
{
  if ((*(v0 + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated) & 1) == 0)
  {
    [v0 invalidate];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityCancelTouchAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18E628780()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated;
  if ((*(v0 + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_assertions);
    if (v2 >> 62)
    {
      v3 = sub_18E65FBC0();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
LABEL_4:
        if (v3 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x193AD04B0](i, v2);
          }

          else
          {
            v5 = *(v2 + 8 * i + 32);
          }

          v6 = v5;
          [v5 invalidate];
        }
      }
    }

    *(v0 + v1) = 1;
  }
}

id ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F600();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18E65F580();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily] = 2;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_actionButtonInitiated] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShowSystemAperture] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneForeground] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReady] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks] = v15;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks] = v15;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks] = v15;
  v16 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  *&v4[v16] = sub_18E63B194(v15);
  v17 = &v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers] = v15;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction] = 0;
  v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost] = 0;
  v19 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor] = a1;
  *v17 = a2;
  v17[1] = a3;
  v20 = a1;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    sub_18E64BDD8(v14);
    sub_18E65F570();
    sub_18E63B298(v14);
    a2 = sub_18E65F5E0();
    v21 = v22;
    (*(v9 + 8))(v11, v8);
  }

  v23 = &v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource];
  *v23 = a2;
  v23[1] = v21;
  swift_beginAccess();
  v24 = *(*&v4[v19] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest);
  *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics] = v24;
  v25 = type metadata accessor for ActivityHostViewController();
  v40.receiver = v4;
  v40.super_class = v25;

  v26 = v24;
  v27 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v28 = qword_1ED764D60;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_18E65F6E0();
  __swift_project_value_buffer(v30, qword_1ED764D68);
  v31 = sub_18E65F6C0();
  v32 = sub_18E65FA60();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136446210;
    v35 = sub_18E62A1F8();
    v37 = sub_18E61173C(v35, v36, &v39);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_18E60F000, v31, v32, "[%{public}s] Created", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x193AD1140](v34, -1, -1);
    MEMORY[0x193AD1140](v33, -1, -1);
  }

  return v29;
}

uint64_t sub_18E628DDC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18E628E3C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E6226F0;
}

id sub_18E628ED4()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_18E628F28()
{
  v1 = sub_18E65F4C0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E623B78(0, &qword_1ED764D00, 0x1E6959CC0);
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  (*(v2 + 16))(v4, *(v0 + v5) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v1);
  return sub_18E65FAD0();
}

void sub_18E629054(uint64_t a1)
{
  v1 = a1;
  BSDispatchQueueAssertMain();

  sub_18E62CC9C(v1, 0);
}

void (*sub_18E629090(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode);
  return sub_18E6290C4;
}

void sub_18E6290C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  BSDispatchQueueAssertMain();
  sub_18E62CC9C(v1, 0);
}

uint64_t sub_18E6290F8()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_18E62913C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    BSDispatchQueueAssertMain();
    v8 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_18E63B318;
      *(v9 + 24) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_18E63B320;
      *(v10 + 24) = v9;
      aBlock[4] = sub_18E63B320;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E635E98;
      aBlock[3] = &block_descriptor_2;
      v11 = _Block_copy(aBlock);
      v12 = v8;

      [v12 performUpdate_];

      _Block_release(v11);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  return result;
}

void (*sub_18E629320(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_18E6293B4;
}

void sub_18E6293B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  v7 = v5 ^ v6;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = v2[9];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    BSDispatchQueueAssertMain();
    v10 = *(v8 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = sub_18E63D3D0;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18E63D34C;
    *(v12 + 24) = v11;
    v2[4] = sub_18E63D34C;
    v2[5] = v12;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_18E635E98;
    v2[3] = &block_descriptor_19;
    v13 = _Block_copy(v2);
    v14 = v10;

    [v14 performUpdate_];

    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = v2[9];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  BSDispatchQueueAssertMain();
  v17 = *(v15 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_18E63D3D0;
    *(v18 + 24) = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_18E63D34C;
    *(v19 + 24) = v18;
    v2[4] = sub_18E63D34C;
    v2[5] = v19;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_18E635E98;
    v2[3] = &block_descriptor_32;
    v20 = _Block_copy(v2);
    v21 = v17;

    [v21 performUpdate_];

    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

LABEL_10:

LABEL_11:

  free(v2);
}

void *sub_18E629710()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_18E629770()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E6297D0(void *a1, uint64_t *a2, const char **a3)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a3];
    swift_unknownObjectRelease();
  }
}

void *sub_18E629880()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_18E6298CC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_18E629910(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result activityHostViewControllerWithViewController:v1 didSetIdleTimerDisabled:*(v1 + v3)];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_18E6299F4(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_18E629A48()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E629A8C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_actionButtonInitiated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18E629AD0()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShowSystemAperture;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_18E629B5C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_18E629BB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_18E629C68()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 2 && (v3 = *(*(v2 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest) + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics)) != 0)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_scaleFactor;
    swift_beginAccess();
    v6 = *(v3 + v5);
    v7 = v4 * v6;
    v8 = v6 * *(*(v3 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest) + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum);
    v9 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
    swift_beginAccess();
    v10 = *(v3 + v9);
    v11 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__edgeInsets);
    v12 = type metadata accessor for ActivitySceneMetrics();
    v13 = objc_allocWithZone(v12);
    v14 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
    *&v13[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
    v15 = &v13[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
    *v15 = v7;
    v15[1] = v8;
    *&v13[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = v10;
    swift_beginAccess();
    *&v13[v14] = v11;
    v16 = v11;
    return objc_msgSendSuper2(&v21, sel_init, v13, v12);
  }

  else
  {
    v18 = type metadata accessor for ActivitySceneMetrics();
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
    *&v19[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
    *&v19[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size] = xmmword_18E6644E0;
    *&v19[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = 0x4028000000000000;
    swift_beginAccess();
    *&v19[v20] = 0;
    v22.receiver = v19;
    v22.super_class = v18;
    return objc_msgSendSuper2(&v22, sel_init, v21.receiver, v21.super_class);
  }
}

uint64_t sub_18E629E80()
{
  v1 = v0;
  v2 = sub_18E65F600();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = sub_18E65F580();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18E65F4C0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  (*(v15 + 16))(v17, *(v1 + v18) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v14);
  sub_18E65F490();
  (*(v15 + 8))(v17, v14);
  sub_18E65F570();
  sub_18E63B298(v13);
  v19 = sub_18E65F5E0();
  v21 = v20;
  v22 = *(v3 + 8);
  v22(v10, v2);
  sub_18E65F5F0();
  v23 = sub_18E65F5E0();
  v25 = v24;
  v22(v7, v2);
  if (v19 == v23 && v21 == v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_18E65FDE0();
  }

  v27 = (v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier);
  v28 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier + 8);
  v29 = v26;
  if (v28)
  {
    v30 = *v27;

    v31 = v36;
    sub_18E65F5F0();
    v32 = sub_18E65F5E0();
    v34 = v33;
    v22(v31, v2);
    if (v30 == v32 && v28 == v34)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_18E65FDE0();
    }
  }

  return v26 & v29 & 1;
}

uint64_t sub_18E62A1F8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier);
  if (*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_18E65FCB0();
    v3 = v0;
    MEMORY[0x193AD0160](45, 0xE100000000000000);
    v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();
    v5 = (*(v3 + v4) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
    v6 = *v5;
    v7 = v5[1];

    MEMORY[0x193AD0160](v6, v7);

    v2 = 0;
    *v1 = 0;
    v1[1] = 0xE000000000000000;
  }

  return v2;
}

id sub_18E62A308()
{
  v1 = v0;
  v2 = sub_18E65FA90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18E65FA80();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E65F870();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue;
  v9 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue);
  }

  else
  {
    v19 = v3;
    v20 = v2;
    v18[4] = sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
    v11 = sub_18E62A1F8();
    v18[2] = v12;
    v18[3] = v11;
    if (qword_1ED764EF0 != -1)
    {
      swift_once();
    }

    v18[1] = qword_1ED7652B0;
    v13 = qword_1ED7652B0;
    sub_18E65F860();
    v21 = MEMORY[0x1E69E7CC0];
    sub_18E63CB04(&qword_1ED764D18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A000, &unk_18E6649C8);
    sub_18E63CFFC(&unk_1ED764D38, &unk_1EAC8A000, &unk_18E6649C8);
    sub_18E65FB80();
    (*(v19 + 104))(v5, *MEMORY[0x1E69E8090], v20);
    v14 = sub_18E65FAC0();
    v15 = *(v1 + v8);
    *(v1 + v8) = v14;
    v10 = v14;

    v9 = 0;
  }

  v16 = v9;
  return v10;
}

void sub_18E62A5DC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  BSDispatchQueueAssertMain();
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v9 = sub_18E65F6E0();
  __swift_project_value_buffer(v9, qword_1ED764D68);
  v10 = v4;
  v11 = sub_18E65F6C0();
  v12 = sub_18E65FA60();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136446210;
    v15 = sub_18E62A1F8();
    v17 = sub_18E61173C(v15, v16, &aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_18E60F000, v11, v12, "[%{public}s] Ensure content begin", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x193AD1140](v14, -1, -1);
    MEMORY[0x193AD1140](v13, -1, -1);
  }

  v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  if (!*&v10[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene])
  {
    sub_18E62CC9C(*&v10[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode], 1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E698E790]) init];
  v20 = sub_18E65F8F0();
  [v19 addMilestone_];

  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = a1;
  v21[4] = v10;
  v21[5] = a2;
  v21[6] = a3;
  v128 = sub_18E63B348;
  v129 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_18E633024;
  v127 = &block_descriptor_38;
  v22 = _Block_copy(&aBlock);
  v23 = v10;
  v24 = v19;
  v25 = a1;

  [v24 setCompletionBlock_];
  _Block_release(v22);
  if (sub_18E629E80())
  {
    v26 = sub_18E65F8F0();
    [v24 addMilestone_];

    v27 = *&v10[v18];
    if (v27)
    {
      v28 = [v27 clientSettings];
      if (v28)
      {
        v29 = v28;
        if (swift_dynamicCastObjCProtocolConditional())
        {
          v30 = swift_getObjectType();
          v31 = sub_18E65D628(v30);

          if (v31 != 2 && (v31 & 1) != 0)
          {
            v32 = v23;
            v33 = sub_18E65F6C0();
            v34 = sub_18E65FA60();

            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              aBlock = v36;
              *v35 = 136446210;
              v37 = sub_18E62A1F8();
              v39 = sub_18E61173C(v37, v38, &aBlock);

              *(v35 + 4) = v39;
              _os_log_impl(&dword_18E60F000, v33, v34, "[%{public}s] Ensure content: archive content ready", v35, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x193AD1140](v36, -1, -1);
              MEMORY[0x193AD1140](v35, -1, -1);
            }

LABEL_23:

            v54 = sub_18E65F8F0();
            [v24 satisfyMilestone_];

            goto LABEL_41;
          }
        }

        else
        {
        }
      }
    }

    v55 = v23;
    v56 = sub_18E65F6C0();
    v57 = sub_18E65FA60();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock = v59;
      *v58 = 136446210;
      v60 = sub_18E62A1F8();
      v62 = sub_18E61173C(v60, v61, &aBlock);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_18E60F000, v56, v57, "[%{public}s] Ensure content: waiting on content ready", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x193AD1140](v59, -1, -1);
      MEMORY[0x193AD1140](v58, -1, -1);
    }

    v63 = swift_allocObject();
    v63[2] = v55;
    v63[3] = v24;
    v63[4] = ObjectType;
    v64 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks;
    swift_beginAccess();
    v65 = *&v55[v64];
    v66 = v55;
    v67 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[v64] = v65;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = sub_18E639B7C(0, v65[2] + 1, 1, v65);
      *&v55[v64] = v65;
    }

    v70 = v65[2];
    v69 = v65[3];
    if (v70 >= v69 >> 1)
    {
      v65 = sub_18E639B7C((v69 > 1), v70 + 1, 1, v65);
    }

    v65[2] = v70 + 1;
    v71 = &v65[2 * v70];
    v72 = sub_18E63B378;
  }

  else
  {
    v40 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();
    if (*(*&v23[v40] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) > 1uLL)
    {
      goto LABEL_41;
    }

    v41 = sub_18E65F8F0();
    [v24 addMilestone_];

    v42 = *&v10[v18];
    if (v42)
    {
      v43 = [v42 clientSettings];
      if (v43)
      {
        v44 = v43;
        v45 = swift_dynamicCastObjCProtocolConditional();
        if (v45)
        {
          v46 = [v45 resolvedMetrics];

          if (v46)
          {

            v47 = v23;
            v33 = sub_18E65F6C0();
            v48 = sub_18E65FA60();

            if (os_log_type_enabled(v33, v48))
            {
              v49 = swift_slowAlloc();
              v122 = v48;
              v50 = swift_slowAlloc();
              aBlock = v50;
              *v49 = 136446210;
              v51 = sub_18E62A1F8();
              v53 = sub_18E61173C(v51, v52, &aBlock);

              *(v49 + 4) = v53;
              _os_log_impl(&dword_18E60F000, v33, v122, "[%{public}s] Ensure content: initial content size ready", v49, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v50);
              MEMORY[0x193AD1140](v50, -1, -1);
              MEMORY[0x193AD1140](v49, -1, -1);
            }

            goto LABEL_23;
          }
        }

        else
        {
        }
      }
    }

    v55 = v23;
    v73 = sub_18E65F6C0();
    v74 = sub_18E65FA60();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock = v76;
      *v75 = 136446210;
      v77 = sub_18E62A1F8();
      v79 = sub_18E61173C(v77, v78, &aBlock);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_18E60F000, v73, v74, "[%{public}s] Ensure content: waiting on initial content size", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x193AD1140](v76, -1, -1);
      MEMORY[0x193AD1140](v75, -1, -1);
    }

    v63 = swift_allocObject();
    v63[2] = v55;
    v63[3] = v24;
    v63[4] = ObjectType;
    v64 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks;
    swift_beginAccess();
    v65 = *&v55[v64];
    v80 = v55;
    v81 = v24;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v55[v64] = v65;
    if ((v82 & 1) == 0)
    {
      v65 = sub_18E639B7C(0, v65[2] + 1, 1, v65);
      *&v55[v64] = v65;
    }

    v84 = v65[2];
    v83 = v65[3];
    if (v84 >= v83 >> 1)
    {
      v65 = sub_18E639B7C((v83 > 1), v84 + 1, 1, v65);
    }

    v65[2] = v84 + 1;
    v71 = &v65[2 * v84];
    v72 = sub_18E63B36C;
  }

  v71[4] = v72;
  v71[5] = v63;
  *&v55[v64] = v65;
  swift_endAccess();
LABEL_41:
  v85 = v23[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated];
  v86 = v23;
  v87 = sub_18E65F6C0();
  v88 = sub_18E65FA60();

  v89 = os_log_type_enabled(v87, v88);
  if (v85 == 1)
  {
    if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      aBlock = v91;
      *v90 = 136446210;
      v92 = sub_18E62A1F8();
      v94 = sub_18E61173C(v92, v93, &aBlock);

      *(v90 + 4) = v94;
      _os_log_impl(&dword_18E60F000, v87, v88, "[%{public}s] Ensure content: scene activated", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x193AD1140](v91, -1, -1);
      MEMORY[0x193AD1140](v90, -1, -1);
    }

    v95 = sub_18E65F8F0();
    [v24 satisfyMilestone_];
  }

  else
  {
    if (v89)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      aBlock = v97;
      *v96 = 136446210;
      v98 = sub_18E62A1F8();
      v100 = sub_18E61173C(v98, v99, &aBlock);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_18E60F000, v87, v88, "[%{public}s] Ensure content: waiting on scene activation", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x193AD1140](v97, -1, -1);
      MEMORY[0x193AD1140](v96, -1, -1);
    }

    v101 = swift_allocObject();
    v101[2] = v86;
    v101[3] = v24;
    v101[4] = ObjectType;
    v102 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks;
    swift_beginAccess();
    v103 = *&v86[v102];
    v104 = v86;
    v105 = v24;
    v106 = swift_isUniquelyReferenced_nonNull_native();
    *&v86[v102] = v103;
    if ((v106 & 1) == 0)
    {
      v103 = sub_18E639B7C(0, v103[2] + 1, 1, v103);
      *&v86[v102] = v103;
    }

    v108 = v103[2];
    v107 = v103[3];
    if (v108 >= v107 >> 1)
    {
      v103 = sub_18E639B7C((v107 > 1), v108 + 1, 1, v103);
    }

    v103[2] = v108 + 1;
    v109 = &v103[2 * v108];
    v109[4] = sub_18E63B358;
    v109[5] = v101;
    *&v86[v102] = v103;
    swift_endAccess();
  }

  [v24 begin];
  v110 = *&v86[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction];
  *&v86[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction] = v24;
  v111 = v24;

  v112 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer;
  [*&v86[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer] invalidate];
  v113 = objc_allocWithZone(MEMORY[0x1E698E5E8]);
  v114 = sub_18E65F8F0();
  v115 = [v113 initWithIdentifier_];

  v116 = *&v86[v112];
  *&v86[v112] = v115;
  v117 = v115;

  if (v117)
  {
    sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
    v118 = sub_18E65FAA0();
    v119 = swift_allocObject();
    *(v119 + 16) = v111;
    v128 = sub_18E63B364;
    v129 = v119;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_18E61D9D8;
    v127 = &block_descriptor_47;
    v120 = _Block_copy(&aBlock);
    v121 = v111;

    [v117 scheduleWithFireInterval:v118 leewayInterval:v120 queue:a4 handler:0.0];

    _Block_release(v120);
    v111 = v118;
  }
}

void sub_18E62B3B4(uint64_t a1)
{
  v7[2] = a1;
  BSDispatchQueueAssertMain();
  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_18E63B384;
    *(v3 + 24) = v7;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_18E63D34C;
    *(v4 + 24) = v3;
    aBlock[4] = sub_18E63D34C;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E635E98;
    aBlock[3] = &block_descriptor_64;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v6 performUpdate_];

    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

id sub_18E62B538(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  result = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (result)
  {
    return [result backlightSceneHostEnvironment];
  }

  return result;
}

void sub_18E62B574(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated;
  if ((*(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) & 1) == 0)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v3 = sub_18E65F6E0();
    __swift_project_value_buffer(v3, qword_1ED764D68);
    v4 = v1;
    v5 = sub_18E65F6C0();
    v6 = sub_18E65FA60();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21[0] = v8;
      *v7 = 136446210;
      v9 = sub_18E62A1F8();
      v11 = sub_18E61173C(v9, v10, v21);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_18E60F000, v5, v6, "[%{public}s] Invalidated", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193AD1140](v8, -1, -1);
      MEMORY[0x193AD1140](v7, -1, -1);
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakAssign();
    *(v1 + v2) = 1;
    v13 = *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction];
    if (v13)
    {
      v14 = v13;
      if (([v14 isComplete] & 1) == 0)
      {
        v15 = sub_18E65F8F0();
        [v14 failWithReason_];

        v14 = v15;
      }
    }

    sub_18E62EA30(v12);
    v16 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer;
    if (*&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer])
    {

      sub_18E625AEC();
    }

    *&v4[v16] = 0;

    v17 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer;
    [*&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer] invalidate];
    v18 = *&v4[v17];
    *&v4[v17] = 0;

    v19 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer;
    [*&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer] invalidate];
    v20 = *&v4[v19];
    *&v4[v19] = 0;
  }
}

uint64_t sub_18E62B80C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E62B850(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = BSDispatchQueueAssertMain();
  if (*(v1 + v3) == 1)
  {
    sub_18E62F264();
  }

  else
  {
    sub_18E62FA90(v4);
  }
}

uint64_t (*sub_18E62B8BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_18E62B944;
}

void sub_18E62B944(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = BSDispatchQueueAssertMain();
    if (*(v5 + v4) == 1)
    {
      sub_18E62F264();
    }

    else
    {
      sub_18E62FA90(v6);
    }
  }

  free(v3);
}

void sub_18E62B9B4()
{
  v1 = sub_18E65F380();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v40 = sub_18E63B3A8;
  v41 = v5;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v38 = sub_18E614A74;
  v39 = &block_descriptor_71;
  v6 = _Block_copy(&aBlock);
  v7 = v0;

  v8 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  _Block_release(v6);
  v9 = [v7 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [v9 window];

  if (!v11)
  {
LABEL_18:
    swift_unknownObjectRelease();
    return;
  }

  if (!v8)
  {

    return;
  }

  v12 = *&v7[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (!v12)
  {

    goto LABEL_18;
  }

  v13 = *MEMORY[0x1E69DDA98];
  if (!*MEMORY[0x1E69DDA98])
  {
LABEL_20:
    __break(1u);
    return;
  }

  v14 = v12;
  [v13 _initialTouchTimestampForWindow_];
  v16 = v15;
  v32 = v14;
  v17 = [v14 layerManager];
  v18 = [v17 layers];

  v19 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v31 = v18;
  sub_18E65FA30();
  sub_18E65F370();
  for (; v39; v1 = v30)
  {
    while (1)
    {
      sub_18E63B3CC(&aBlock, &v34);
      sub_18E623B78(0, &unk_1ED764D28, 0x1E699F7D0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_18E65F370();
      if (!v39)
      {
        goto LABEL_15;
      }
    }

    v29 = v2;
    v30 = v1;
    v28 = v33;
    v20 = [v33 contextID];
    v21 = [objc_allocWithZone(MEMORY[0x1E698E440]) init];
    v22 = [objc_opt_self() policyCancelingTouchesDeliveredToContextId:v20 withInitialTouchTimestamp:v16];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      [v24 setAssertionEndpoint_];

      swift_unknownObjectRelease();
    }

    [v8 ipc:v23 addPolicy:?];
    v25 = v21;
    MEMORY[0x193AD01B0]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18E65F9C0();
    }

    sub_18E65F9D0();

    v19 = v36;
    sub_18E65F370();
    v2 = v29;
  }

LABEL_15:
  (*(v2 + 8))(v4, v1);
  v26 = type metadata accessor for ActivityCancelTouchAssertion();
  v27 = objc_allocWithZone(v26);
  v27[OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated] = 0;
  *&v27[OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_assertions] = v19;
  v35.receiver = v27;
  v35.super_class = v26;
  objc_msgSendSuper2(&v35, sel_init);

  swift_unknownObjectRelease();
}

void sub_18E62BE5C()
{
  v1 = [objc_allocWithZone(ACUISHandleLiveActivityDoubleTapAction) init];
  v2 = *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  v16 = v1;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89F50, &qword_18E664500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E6644F0;
    *(inited + 32) = v16;
    v4 = v2;
    v5 = v16;
    sub_18E63B3DC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    sub_18E63B6CC();
    v6 = sub_18E65F9F0();

    [v4 sendActions_];
  }

  else
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v7 = sub_18E65F6E0();
    __swift_project_value_buffer(v7, qword_1ED764D68);
    v8 = v0;
    v9 = sub_18E65F6C0();
    v10 = sub_18E65FA50();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = sub_18E62A1F8();
      v15 = sub_18E61173C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_18E60F000, v9, v10, "[%{public}s] Did fail to send Double Tap BSAction.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193AD1140](v12, -1, -1);
      MEMORY[0x193AD1140](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18E62C0E8(uint64_t a1)
{
  v3 = type metadata accessor for ActivityHardwareButtonPressAction();
  v4 = objc_allocWithZone(v3);
  v5 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v5 setObject:v6 forSetting:0];
  v27.receiver = v4;
  v27.super_class = v3;
  v7 = v5;
  v8 = objc_msgSendSuper2(&v27, sel_initWithInfo_responder_, v7, 0);

  v9 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v9)
  {
    v10 = v9;
    v11 = [v10 isActive];
    if (a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1)
    {
      if (qword_1ED764D60 != -1)
      {
        swift_once();
      }

      v13 = sub_18E65F6E0();
      __swift_project_value_buffer(v13, qword_1ED764D68);
      v14 = v1;
      v15 = sub_18E65F6C0();
      v16 = sub_18E65FA60();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136446466;
        v19 = sub_18E62A1F8();
        v21 = sub_18E61173C(v19, v20, &v26);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2048;
        *(v17 + 14) = a1;
        _os_log_impl(&dword_18E60F000, v15, v16, "[%{public}s] sending hardware button press action for type: %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x193AD1140](v18, -1, -1);
        MEMORY[0x193AD1140](v17, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89F50, &qword_18E664500);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18E6644F0;
      *(inited + 32) = v8;
      v23 = v8;
      sub_18E63B3DC(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      sub_18E63B6CC();
      v24 = sub_18E65F9F0();

      [v10 sendActions_];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_18E62C3FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_27:
    v4 = sub_18E65FBC0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AD04B0](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_27;
        }

        v6 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      [v6 invalidate];
      swift_unknownObjectRelease();
      ++v5;
    }

    while (v7 != v4);
  }

  *(v1 + v2) = MEMORY[0x1E69E7CC0];

  v9 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v10 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = v10;
    sub_18E656F70(KeyPath, sub_18E63CE34, v12);

    swift_beginAccess();
    sub_18E633F18((v1 + v2), v14);
    swift_endAccess();
    result = swift_unknownObjectRelease();
    v15 = *(v1 + v9);
    if (v15)
    {
      v16 = swift_getKeyPath();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v15;
      sub_18E656F70(v16, sub_18E63CE8C, v17);

      swift_beginAccess();
      sub_18E633F18((v1 + v2), v19);
      swift_endAccess();
      result = swift_unknownObjectRelease();
      v20 = *(v1 + v9);
      if (v20)
      {
        v21 = swift_getKeyPath();
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = v20;
        sub_18E65727C(v21, sub_18E63CEE4, v22);

        swift_beginAccess();
        sub_18E633F18((v1 + v2), v24);
        swift_endAccess();
        result = swift_unknownObjectRelease();
        v25 = *(v1 + v9);
        if (v25)
        {
          v26 = swift_getKeyPath();
          v27 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v28 = v25;
          sub_18E657588(v26, sub_18E63CEF8, v27);

          swift_beginAccess();
          sub_18E633F18((v1 + v2), v29);
          swift_endAccess();
          result = swift_unknownObjectRelease();
          v30 = *(v1 + v9);
          if (v30)
          {
            v31 = swift_getKeyPath();
            v32 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v33 = v30;
            sub_18E657894(v31, sub_18E63CF0C, v32);

            swift_beginAccess();
            sub_18E633F18((v1 + v2), v34);
            swift_endAccess();
            result = swift_unknownObjectRelease();
            v35 = *(v1 + v9);
            if (v35)
            {
              v36 = swift_getKeyPath();
              v37 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v38 = v35;
              sub_18E65727C(v36, sub_18E63CF20, v37);

              swift_beginAccess();
              sub_18E633F18((v1 + v2), v39);
              swift_endAccess();
              result = swift_unknownObjectRelease();
              v40 = *(v1 + v9);
              if (v40)
              {
                v41 = swift_getKeyPath();
                v42 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v43 = v40;
                sub_18E657BA0(v41, sub_18E63CF34, v42);

                swift_beginAccess();
                sub_18E633F18((v1 + v2), v44);
                swift_endAccess();
                result = swift_unknownObjectRelease();
                v45 = *(v1 + v9);
                if (v45)
                {
                  v46 = swift_getKeyPath();
                  v47 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v48 = v45;
                  sub_18E65727C(v46, sub_18E63CF48, v47);

                  swift_beginAccess();
                  sub_18E633F18((v1 + v2), v49);
                  swift_endAccess();
                  result = swift_unknownObjectRelease();
                  v50 = *(v1 + v9);
                  if (v50)
                  {
                    v51 = swift_getKeyPath();
                    v52 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v53 = v50;
                    sub_18E65727C(v51, sub_18E63CF5C, v52);

                    swift_beginAccess();
                    sub_18E633F18((v1 + v2), v54);
                    swift_endAccess();
                    result = swift_unknownObjectRelease();
                    v55 = *(v1 + v9);
                    if (v55)
                    {
                      v56 = swift_getKeyPath();
                      v57 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v58 = v55;
                      sub_18E65727C(v56, sub_18E63CF70, v57);

                      swift_beginAccess();
                      sub_18E633F18((v1 + v2), v59);
                      swift_endAccess();
                      result = swift_unknownObjectRelease();
                      v60 = *(v1 + v9);
                      if (v60)
                      {
                        v61 = swift_getKeyPath();
                        v62 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v63 = v60;
                        sub_18E65727C(v61, sub_18E63CFBC, v62);

                        swift_beginAccess();
                        sub_18E633F18((v1 + v2), v64);
                        swift_endAccess();
                        return swift_unknownObjectRelease();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_18E62CC9C(int a1, char a2)
{
  v5 = sub_18E65F850();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E65F870();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  if ((v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated] & 1) != 0 || (a2 & 1) == 0 && *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] == a1)
  {
    return;
  }

  v63 = v10;
  v64 = v8;
  v65 = v9;
  v66 = v6;
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v13 = sub_18E65F6E0();
  v14 = __swift_project_value_buffer(v13, qword_1ED764D68);
  v15 = v2;
  v62 = v14;
  v16 = sub_18E65F6C0();
  v17 = sub_18E65FA60();

  if (os_log_type_enabled(v16, v17))
  {
    v61 = v5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446722;
    v20 = sub_18E62A1F8();
    v22 = sub_18E61173C(v20, v21, aBlock);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    if (a1)
    {
      if (a1 == 2)
      {
        v23 = 0x616E73206576696CLL;
        v24 = 0xED0000746F687370;
LABEL_15:
        v26 = sub_18E61173C(v23, v24, aBlock);

        *(v18 + 14) = v26;
        *(v18 + 22) = 1026;
        *(v18 + 24) = a2 & 1;
        _os_log_impl(&dword_18E60F000, v16, v17, "[%{public}s] Updating presentationMode to: %{public}s - (forced? %{BOOL,public}d).", v18, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v19, -1, -1);
        MEMORY[0x193AD1140](v18, -1, -1);

        v5 = v61;
        goto LABEL_16;
      }

      if (a1 != 1)
      {
        LODWORD(v67) = a1;
        goto LABEL_47;
      }

      v25 = 1702259020;
    }

    else
    {
      v25 = 1701736270;
    }

    v23 = v25 | 0x20;
    v24 = 0xE400000000000000;
    goto LABEL_15;
  }

LABEL_16:
  v27 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode;
  *&v15[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] = a1;
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
LABEL_45:
        LODWORD(aBlock[0]) = a1;
LABEL_47:
        sub_18E65FDF0();
        __break(1u);
        return;
      }

      v28 = *&v15[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
      if (v28)
      {
        v29 = v28;
        v30 = sub_18E65F8F0();
        [v29 setText_];

        v31 = [v15 view];
        if (!v31)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v32 = v31;
        [v31 setNeedsLayout];
      }
    }

    v33 = *&v15[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
    if (!v33)
    {
LABEL_25:
      sub_18E630134(0, 1);
      sub_18E62D730(a1 == 1, 0, 0);
LABEL_34:
      v47 = sub_18E62A308();
      v48 = swift_allocObject();
      *(v48 + 16) = v15;
      *(v48 + 24) = a1 == 1;
      aBlock[4] = sub_18E63D0FC;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E63D350;
      aBlock[3] = &block_descriptor_440;
      v49 = _Block_copy(aBlock);
      v50 = v15;
      sub_18E65F860();
      v67 = MEMORY[0x1E69E7CC0];
      sub_18E63CB04(&qword_1ED764D58, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE0, qword_18E6646A8);
      sub_18E63CFFC(&qword_1ED764D48, &qword_1EAC89FE0, qword_18E6646A8);
      v51 = v64;
      sub_18E65FB80();
      MEMORY[0x193AD02E0](0, v12, v51, v49);
      _Block_release(v49);

      (v66[1].isa)(v51, v5);
      (*(v63 + 8))(v12, v65);

      return;
    }

    v34 = v33;
    v35 = sub_18E65F8F0();
    [v34 setText_];

    v36 = [v15 view];
    if (v36)
    {
      v37 = v36;
      [v36 setNeedsLayout];

      goto LABEL_25;
    }

    goto LABEL_42;
  }

  v38 = *&v15[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
  if (v38)
  {
    v39 = v38;
    v40 = sub_18E65F8F0();
    [v39 setText_];

    v41 = [v15 view];
    if (!v41)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v42 = v41;
    [v41 setNeedsLayout];
  }

  v43 = *&v15[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v43)
  {
    v44 = v43;
    if ([v44 contentState] != 2)
    {
      sub_18E62D730(1, 0, 0);
    }

    BSDispatchQueueAssertMain();
    if (*&v15[v27] == 2)
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v15;
      v46 = v15;
      sub_18E630398(sub_18E63D0F4, v45);

      goto LABEL_34;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v52 = v15;
  v66 = sub_18E65F6C0();
  v53 = sub_18E65FA50();

  if (os_log_type_enabled(v66, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136446210;
    v56 = sub_18E62A1F8();
    v58 = sub_18E61173C(v56, v57, aBlock);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_18E60F000, v66, v53, "[%{public}s] Snapshot failed because there is no scene found", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x193AD1140](v55, -1, -1);
    MEMORY[0x193AD1140](v54, -1, -1);
  }

  else
  {
    v59 = v66;
  }
}

void sub_18E62D534(char a1)
{
  v2 = v1;
  v4 = sub_18E65F880();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_18E62A308();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_18E65F890();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion;
    v10 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion);
    if (v10)
    {
      v11 = v10;
      sub_18E65F690();
    }

    if (a1)
    {
      swift_beginAccess();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(sub_18E65F6B0());

      v12 = sub_18E65F6A0();
      v13 = *(v2 + v9);
      *(v2 + v9) = v12;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_18E62D730(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = a1;
  v7 = BSDispatchQueueAssertMain();
  if (v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated])
  {
    if (a2)
    {
      a2(v7);
    }

LABEL_13:
    v29 = 0;
    v30 = 0;
LABEL_14:
    sub_18E63CC7C(v29, v30);
    return;
  }

  isEscapingClosureAtFileLocation = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v9 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v9)
  {
    v10 = qword_1ED764D60;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_18E65F6E0();
    __swift_project_value_buffer(v12, qword_1ED764D68);
    v13 = v3;
    v14 = sub_18E65F6C0();
    v15 = sub_18E65FA60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = v6;
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v16 = 136446466;
      v19 = sub_18E62A1F8();
      v21 = sub_18E61173C(v19, v20, &aBlock);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      if (v17)
      {
        v22 = 0x756F726765726F66;
      }

      else
      {
        v22 = 0x756F72676B636162;
      }

      v23 = sub_18E61173C(v22, 0xEA0000000000646ELL, &aBlock);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_18E60F000, v14, v15, "[%{public}s] Updating activity scene to %{public}s.", v16, 0x16u);
      swift_arrayDestroy();
      v24 = v18;
      v6 = v17;
      MEMORY[0x193AD1140](v24, -1, -1);
      MEMORY[0x193AD1140](v16, -1, -1);
    }

    v3 = swift_allocObject();
    v3[16] = v6 & 1;
    v25 = swift_allocObject();
    v25[2] = sub_18E63CD40;
    v25[3] = v3;
    v124 = sub_18E63D34C;
    v125 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_18E635E98;
    v123 = &block_descriptor_338;
    v26 = _Block_copy(&aBlock);

    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    v124 = sub_18E63CD88;
    v125 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_18E635F04;
    v123 = &block_descriptor_344;
    v28 = _Block_copy(&aBlock);
    sub_18E6174A0(a2, a3);

    [v11 performUpdate:v26 withCompletion:v28];

    _Block_release(v28);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_17;
  }

  v31 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource];
  v32 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource + 8];
  v33 = sub_18E6234B8(v31, v32);
  if (!v33)
  {
    if (qword_1ED764D60 == -1)
    {
LABEL_45:
      v94 = sub_18E65F6E0();
      __swift_project_value_buffer(v94, qword_1ED764D68);
      v95 = v3;
      v96 = sub_18E65F6C0();
      v97 = sub_18E65FA60();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v98 = 136446467;
        v100 = sub_18E62A1F8();
        v102 = sub_18E61173C(v100, v101, &aBlock);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2081;
        *(v98 + 14) = sub_18E61173C(v31, v32, &aBlock);
        _os_log_impl(&dword_18E60F000, v96, v97, "[%{public}s] Couldn't create a scene with %{private}s", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v99, -1, -1);
        MEMORY[0x193AD1140](v98, -1, -1);
      }

      goto LABEL_13;
    }

LABEL_59:
    swift_once();
    goto LABEL_45;
  }

  v114 = v6;
  v112 = v33;
  v25 = [objc_opt_self() identityForProcessIdentity_];
  if (qword_1ED764F08 != -1)
  {
    goto LABEL_53;
  }

LABEL_17:
  v34 = qword_1ED764F10;
  v35 = swift_allocObject();
  *(v35 + 16) = v3;
  *(v35 + 24) = v25;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_18E63CC8C;
  *(v36 + 24) = v35;
  v124 = sub_18E63CC94;
  v125 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_18E6361B8;
  v123 = &block_descriptor_300;
  v37 = _Block_copy(&aBlock);
  v38 = v125;
  v39 = v3;
  v111 = v25;

  v40 = [v34 createScene_];
  _Block_release(v37);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
    goto LABEL_55;
  }

  v41 = *&v3[isEscapingClosureAtFileLocation];
  *&v3[isEscapingClosureAtFileLocation] = v40;
  v42 = v40;

  sub_18E62C3FC();
  [v42 setDelegate_];
  v43 = [v42 layerManager];
  [v43 addObserver_];

  v44 = [v42 uiPresentationManager];
  if (!v44)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v45 = v44;
  v115 = v42;
  v46 = sub_18E65F8F0();
  v47 = [v45 createPresenterWithIdentifier_];

  *&v39[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter] = v47;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v124 = sub_18E63620C;
  v125 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_18E63D358;
  v123 = &block_descriptor_303;
  v3 = _Block_copy(&aBlock);

  [v47 modifyPresentationContext_];
  _Block_release(v3);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v47 activate];
  v48 = [v47 presentationView];
  v116 = sub_18E629C68();
  v49 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
  swift_beginAccess();
  v50 = *&v39[v49];
  v51 = *(v50 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
  v52 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v53 = *&v39[v52];
  v54 = OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType;
  if (*(v53 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 2 && *(v50 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics))
  {
    v51 = *(v50 + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__ambientMetrics);
  }

  v55 = v51;
  v56 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size;
  swift_beginAccess();
  v119 = *&v116[v56];
  v57 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  v117 = v55;
  if (*(*&v55[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest] + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || *(*&v55[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || (v58 = *&v116[v57], v59 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius, swift_beginAccess(), *&v55[v59] != 0.0))
  {
    *&v119 = sub_18E653E60();
    *(&v119 + 1) = v60;
    v61 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius;
    swift_beginAccess();
    v58 = *&v55[v61];
  }

  v118 = 1;
  if (*(v53 + v54) == 4)
  {
    v118 = [v39 interfaceOrientation];
  }

  v62 = *&v39[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView];
  *&v39[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView] = v48;
  v63 = v48;

  v64 = [v39 view];
  if (!v64)
  {
    goto LABEL_61;
  }

  v65 = v64;
  [v64 addSubview_];

  v66 = [v39 view];
  if (!v66)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v67 = v66;
  [v66 setNeedsLayout];

  [v63 setClipsToBounds_];
  v68 = [v63 layer];
  v69 = sub_18E65F8F0();
  [v68 setName_];

  [v63 _setContinuousCornerRadius_];
  [v39 setPreferredContentSize_];
  v38 = swift_allocObject();
  v38[2] = v39;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_18E63CCBC;
  *(v70 + 24) = v38;
  v124 = sub_18E63D3DC;
  v125 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_18E63D358;
  v123 = &block_descriptor_312;
  v71 = _Block_copy(&aBlock);
  v3 = v39;

  [v115 configureParameters_];
  _Block_release(v71);
  v72 = swift_isEscapingClosureAtFileLocation();

  if (v72)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_38:
    v110 = a3;
    v79 = sub_18E65F6E0();
    __swift_project_value_buffer(v79, qword_1ED764D68);
    v80 = v38;
    v81 = v3;
    v82 = sub_18E65F6C0();
    v83 = sub_18E65FA60();
    v113 = v80;

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      aBlock = v86;
      *v84 = 136446722;
      v87 = sub_18E62A1F8();
      v89 = sub_18E61173C(v87, v88, &aBlock);

      *(v84 + 4) = v89;
      *(v84 + 12) = 2082;
      if (v114)
      {
        v90 = 0x756F726765726F66;
      }

      else
      {
        v90 = 0x756F72676B636162;
      }

      v91 = sub_18E61173C(v90, 0xEA0000000000646ELL, &aBlock);

      *(v84 + 14) = v91;
      *(v84 + 22) = 2112;
      if (v38)
      {
        v92 = [v113 identity];
        v93 = v92;
      }

      else
      {
        v92 = 0;
        v93 = 0;
      }

      *(v84 + 24) = v92;
      *v85 = v93;
      _os_log_impl(&dword_18E60F000, v82, v83, "[%{public}s] Creating activity scene to %{public}s. Display configuration: %@", v84, 0x20u);
      sub_18E63CCD8(v85);
      MEMORY[0x193AD1140](v85, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v86, -1, -1);
      MEMORY[0x193AD1140](v84, -1, -1);
    }

    v103 = swift_allocObject();
    *(v103 + 16) = &v119;
    *(v103 + 24) = &v118;
    *(v103 + 32) = v38;
    *(v103 + 40) = v114 & 1;
    *(v103 + 48) = v81;
    *(v103 + 56) = v116;
    v3 = swift_allocObject();
    *(v3 + 2) = sub_18E63CCC4;
    *(v3 + 3) = v103;
    v104 = v103;
    v124 = sub_18E63D34C;
    v125 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_18E635E98;
    v123 = &block_descriptor_322;
    v31 = _Block_copy(&aBlock);
    v105 = v81;
    v32 = v113;
    v106 = v116;

    v107 = swift_allocObject();
    *(v107 + 16) = a2;
    *(v107 + 24) = v110;
    v124 = sub_18E63D3D8;
    v125 = v107;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_18E635F04;
    v123 = &block_descriptor_328;
    v108 = _Block_copy(&aBlock);
    sub_18E6174A0(a2, v110);

    [v115 performUpdate:v31 withCompletion:v108];

    _Block_release(v108);
    _Block_release(v31);

    swift_unknownObjectRelease();
    LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

    if ((v108 & 1) == 0)
    {
      v29 = sub_18E63CCC4;
      v30 = v104;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_59;
  }

  v73 = [v3 view];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 window];

    if (v75 && (v76 = [v75 windowScene], v75, v76))
    {
      v77 = [v76 _FBSScene];

      v78 = [v77 settings];
      v38 = [v78 displayConfiguration];
    }

    else
    {
      v38 = 0;
    }

    v109 = v63;
    if (qword_1ED764D60 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_63:
  __break(1u);
}

void sub_18E62E8BC(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v5 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E63D34C;
    *(v7 + 24) = v6;
    v10[4] = sub_18E63D34C;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_18E635E98;
    v10[3] = &block_descriptor_431;
    v8 = _Block_copy(v10);
    v9 = v5;

    [v9 performUpdate_];

    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }
}

uint64_t sub_18E62EA30(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter;
  v3 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter);
  if (v3)
  {
    [v3 invalidate];
  }

  *(v1 + v2) = 0;
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneForeground) = 0;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView;
  [*(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView) removeFromSuperview];
  v5 = *(v1 + v4);
  *(v1 + v4) = 0;

  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v7 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v7)
  {
    v8 = [v7 layerManager];
    [v8 remove_];

    v7 = *(v1 + v6);
    if (v7)
    {
      [v7 setDelegate_];
      v7 = *(v1 + v6);
    }
  }

  [v7 invalidate];
  v9 = *(v1 + v6);
  *(v1 + v6) = 0;

  result = sub_18E62C3FC();
  *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) = 1;
  return result;
}

void sub_18E62EB30(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v2 = sub_18E65F6E0();
  __swift_project_value_buffer(v2, qword_1ED764D68);
  v3 = v1;
  v4 = sub_18E65F6C0();
  v5 = sub_18E65FA60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v73[0] = v7;
    *v6 = 136446210;
    v8 = sub_18E62A1F8();
    v10 = sub_18E61173C(v8, v9, v73);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_18E60F000, v4, v5, "[%{public}s] Reseting content size", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193AD1140](v7, -1, -1);
    MEMORY[0x193AD1140](v6, -1, -1);
  }

  if (*&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene])
  {
    v11 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
    swift_beginAccess();
    v12 = *&v3[v11];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
      swift_beginAccess();
      v14 = *(*&v3[v13] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType);
      if (v14 == 5)
      {
        v15 = v3;
        v16 = v12;
        v17 = sub_18E65F6C0();
        v18 = sub_18E65FA60();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v69[0] = v20;
          *v19 = 136446466;
          v21 = sub_18E62A1F8();
          v23 = sub_18E61173C(v21, v22, v69);

          *(v19 + 4) = v23;
          *(v19 + 12) = 2082;
          [v15 preferredContentSize];
          v72[2] = v24;
          v72[3] = v25;
          type metadata accessor for CGSize(0);
          v26 = sub_18E65F910();
          v28 = sub_18E61173C(v26, v27, v69);

          *(v19 + 14) = v28;
          _os_log_impl(&dword_18E60F000, v17, v18, "[%{public}s] Activity scene type is CarPlay. Preferred size: (%{public}s). Intentionally ignoring resolved metrics.", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x193AD1140](v20, -1, -1);
          MEMORY[0x193AD1140](v19, -1, -1);
        }

LABEL_26:
        return;
      }

      v29 = &v12[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
      swift_beginAccess();
      v30 = *v29;
      v31 = v29[1];
      if (v14 >= 2)
      {
        v36 = v12;
      }

      else
      {
        v32 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
        swift_beginAccess();
        v33 = *(*&v3[v32] + OBJC_IVAR____TtC18ActivityUIServices22ActivityMetricsRequest__lockScreenMetrics);
        v34 = *&v33[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__widthRequest];
        if (*(v34 + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || *(*&v33[OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest__heightRequest] + OBJC_IVAR____TtC18ActivityUIServices20SizeDimensionRequest_maximum) != 0.0 || (v35 = OBJC_IVAR____TtC18ActivityUIServices26ActivityItemMetricsRequest_cornerRadius, swift_beginAccess(), *&v33[v35] != 0.0))
        {
          CGSizeMake();
          v30 = v37;
          v31 = v38;
        }

        v39 = v12;
        v40 = v33;
        v41 = v40;
        if (v31 >= 40.0)
        {
        }

        else
        {
          v42 = v3;
          v43 = sub_18E65F6C0();
          v44 = sub_18E65FA60();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *&v46 = COERCE_DOUBLE(swift_slowAlloc());
            v70 = *&v46;
            *v45 = 136446466;
            v47 = sub_18E62A1F8();
            v49 = sub_18E61173C(v47, v48, &v70);

            *(v45 + 4) = v49;
            *(v45 + 12) = 2082;
            v50 = sub_18E65F9E0();
            v52 = sub_18E61173C(v50, v51, &v70);

            *(v45 + 14) = v52;
            _os_log_impl(&dword_18E60F000, v43, v44, "[%{public}s] Requested frame size height (%{public}s) is smaller than minimum height, setting it to minimum height", v45, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x193AD1140](v46, -1, -1);
            MEMORY[0x193AD1140](v45, -1, -1);
          }

          v31 = 40.0;
        }
      }

      [v3 preferredContentSize];
      v75.width = v30;
      v75.height = v31;
      if (CGSizeEqualToSize(v74, v75))
      {
        v53 = v3;
        v17 = sub_18E65F6C0();
        v54 = sub_18E65FA60();

        if (os_log_type_enabled(v17, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v72[0] = v56;
          *v55 = 136446722;
          v57 = sub_18E62A1F8();
          v59 = sub_18E61173C(v57, v58, v72);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2082;
          [v53 preferredContentSize];
          v70 = *&v60;
          v71 = v61;
          type metadata accessor for CGSize(0);
          v62 = sub_18E65F910();
          v64 = sub_18E61173C(v62, v63, v72);

          *(v55 + 14) = v64;
          *(v55 + 22) = 2082;
          v70 = v30;
          v71 = v31;
          v65 = sub_18E65F910();
          v67 = sub_18E61173C(v65, v66, v72);

          *(v55 + 24) = v67;
          _os_log_impl(&dword_18E60F000, v17, v54, "[%{public}s] Not updating preferred content size (%{public}s) because requested size is the same (%{public}s)", v55, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193AD1140](v56, -1, -1);
          MEMORY[0x193AD1140](v55, -1, -1);
        }

        goto LABEL_26;
      }

      v68 = MEMORY[0x193AD0980]();
      sub_18E636B4C(v3, v30, v31);
      objc_autoreleasePoolPop(v68);
    }
  }
}

void sub_18E62F264()
{
  v1 = v0;
  v2 = sub_18E65F380();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  BSDispatchQueueAssertMain();
  v8 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (!v8)
  {
    return;
  }

  v59 = v3;
  v63 = v8;
  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_48;
  }

  v10 = v9;
  v11 = [v9 window];

  v62 = v11;
  if (!v11)
  {
    v18 = v63;

    return;
  }

  v60 = v2;
  v12 = [v63 layerManager];
  v61 = [v12 layers];

  v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  swift_beginAccess();
  v14 = *&v1[v13];
  v15 = *(v14 + 16);
  v66 = v7;
  if (v15)
  {
    v16 = sub_18E639CB0(v15, 0);
    v68 = sub_18E63B094(&aBlock, v16 + 8, v15, v14);
    v17 = aBlock;

    sub_18E615B48(v17);
    if (v68 != v15)
    {
      goto LABEL_47;
    }

    v7 = v66;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_18E637240(v16);

  v19 = objc_allocWithZone(MEMORY[0x1E695DFA8]);
  v20 = sub_18E65F990();

  v67 = [v19 initWithArray_];

  v65 = [v62 _contextId];
  sub_18E65FA30();
  sub_18E65F370();
  if (!v77)
  {
LABEL_32:
    v48 = *(v59 + 8);
    v48(v7, v60);
    sub_18E65FA30();
    sub_18E65F370();
    while (v72)
    {
      sub_18E63B3CC(&aBlock, v76);
      if (swift_dynamicCast())
      {
        v49 = *&v1[v13];
        if (*(v49 + 16))
        {
          v50 = v75;
          v51 = sub_18E64C61C(v75);
          if (v52)
          {
            v53 = *(*(v49 + 56) + 8 * v51);
            [v53 invalidate];
            swift_beginAccess();
            v54 = sub_18E64C61C(v50);
            if (v55)
            {
              v56 = v54;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v58 = *&v1[v13];
              v75 = v58;
              *&v1[v13] = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_18E650A84();
                v58 = v75;
              }

              sub_18E63A248(v56, v58);
              *&v1[v13] = v58;
            }

            swift_endAccess();
          }
        }
      }

      sub_18E65F370();
    }

    v48(v69, v60);

    return;
  }

  v64 = &v71;
  while (1)
  {
    sub_18E63B3CC(v76, &aBlock);
    sub_18E623B78(0, &unk_1ED764D28, 0x1E699F7D0);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_15:
    sub_18E65F370();
    if (!v77)
    {
      goto LABEL_32;
    }
  }

  v68 = v75;
  v21 = [v75 contextID];
  v22 = sub_18E65FF30();
  [v67 removeObject_];

  v23 = [objc_allocWithZone(MEMORY[0x1E698E440]) init];
  v24 = [objc_opt_self() policyRequiringSharingOfTouchesDeliveredToChildContextId:v21 withHostContextId:v65];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
    [v26 setAssertionEndpoint_];

    swift_unknownObjectRelease();
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  v73 = sub_18E63D0C4;
  v74 = v27;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v71 = sub_18E614A74;
  v72 = &block_descriptor_414;
  v28 = _Block_copy(&aBlock);
  v29 = v1;

  v30 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  _Block_release(v28);
  swift_beginAccess();
  v31 = v23;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *&v1[v13];
  v33 = v75;
  *&v1[v13] = 0x8000000000000000;
  v35 = sub_18E64C61C(v21);
  v36 = v33[2];
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (!__OFADD__(v36, v37))
  {
    v39 = v34;
    if (v33[3] < v38)
    {
      sub_18E6505A8(v38, v32);
      v40 = sub_18E64C61C(v21);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_49;
      }

      v35 = v40;
      v42 = v75;
      if ((v39 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_26:
      v43 = v42[7];
      v44 = *(v43 + 8 * v35);
      *(v43 + 8 * v35) = v31;

LABEL_30:
      *&v1[v13] = v42;
      swift_endAccess();
      if (v30)
      {
        [swift_unknownObjectRetain() ipc:v25 addPolicy:?];

        swift_unknownObjectRelease_n();
      }

      else
      {
      }

      v7 = v66;
      goto LABEL_15;
    }

    if (v32)
    {
      v42 = v75;
      if (v34)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_18E650A84();
      v42 = v75;
      if (v39)
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    v42[(v35 >> 6) + 8] |= 1 << v35;
    *(v42[6] + 4 * v35) = v21;
    *(v42[7] + 8 * v35) = v31;
    v45 = v42[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_46;
    }

    v42[2] = v47;
    goto LABEL_30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_18E65FE10();
  __break(1u);
}

id sub_18E62FA90(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = [*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) invalidate])
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *(v1 + v2) = MEMORY[0x1E69E7CC8];
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_18E62FBAC(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = [v2 layer];
  v4 = sub_18E65F8F0();
  [v3 setName_];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v2 setFrame_];
  [v2 setClipsToBounds_];
  [v2 setAutoresizingMask_];
  v15 = sub_18E629C68();
  v16 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  v17 = *&v15[v16];

  [v2 _setContinuousCornerRadius_];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 addSubview_];

  v20 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView;
  v21 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
  *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView] = v2;
  v22 = v2;

  BSDispatchQueueAssertMain();
  v23 = *&v1[v20];
  if (v23)
  {
    v24 = v23;
    [v24 setAlpha_];
    [v24 setHidden_];
  }
}

void sub_18E62FDC4()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_18E65F8F0();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    return;
  }

  v4 = sub_18E65F8F0();
  v5 = [v3 BOOLForKey_];

  if (!v5)
  {
    return;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame_];
  [v6 setClipsToBounds_];
  v17 = [v6 layer];
  v18 = sub_18E65F8F0();
  [v17 setName_];

  v19 = [objc_opt_self() systemFontOfSize_];
  [v6 setFont_];

  [v6 setTextAlignment_];
  v20 = objc_opt_self();
  v21 = [v20 redColor];
  [v6 setTextColor_];

  v22 = [v20 whiteColor];
  v23 = [v22 colorWithAlphaComponent_];

  [v6 setBackgroundColor_];
  [v6 setAutoresizingMask_];
  [v6 _setContinuousCornerRadius_];
  [v6 setAlpha_];
  [v6 setHidden_];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 addSubview_];

  v26 = *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
  *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel] = v6;
}

void sub_18E630134(uint64_t a1, char a2)
{
  v4 = a1;
  BSDispatchQueueAssertMain();
  v5 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView);
  if (!v5)
  {
    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView);
  if (v4 != 2)
  {
    v7 = v5;
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v4 & 1;
    *(v9 + 24) = v15;
    v20 = sub_18E63CC30;
    v21 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_18E63D350;
    v19 = &block_descriptor_274;
    v10 = _Block_copy(&aBlock);
    v11 = v15;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v4 & 1;
    v20 = sub_18E63CC54;
    v21 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_18E633024;
    v19 = &block_descriptor_280;
    v13 = _Block_copy(&aBlock);
    v14 = v11;

    [v8 animateWithDuration:v10 animations:v13 completion:0.4];

    _Block_release(v13);
    _Block_release(v10);
    return;
  }

  v4 = [v5 isHidden];
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0.0;
  if (v4)
  {
    v6 = 1.0;
  }

  [v15 setAlpha_];
  [v15 setHidden_];
}

double sub_18E630398(uint64_t a1, uint64_t a2)
{
  v5 = sub_18E65F850();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18E65F870();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;

  v12 = v2;
  BSDispatchQueueAssertMain();
  v13 = *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter];
  if (v13 && (v14 = *&v12[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene]) != 0)
  {
    swift_unknownObjectRetain();
    v15 = v14;
    if ([v15 contentState] == 2)
    {
      v16 = [v13 newSnapshot];
      v25 = sub_18E62A308();
      v17 = swift_allocObject();
      v17[2] = sub_18E63CA98;
      v17[3] = v11;
      v17[4] = v16;
      aBlock[4] = sub_18E63CAA8;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E63D350;
      aBlock[3] = &block_descriptor_256;
      v23 = _Block_copy(aBlock);

      v24 = v16;
      sub_18E65F860();
      v28 = MEMORY[0x1E69E7CC0];
      sub_18E63CB04(&qword_1ED764D58, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v22 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE0, qword_18E6646A8);
      sub_18E63CFFC(&qword_1ED764D48, &qword_1EAC89FE0, qword_18E6646A8);
      sub_18E65FB80();
      v18 = v23;
      v19 = v25;
      MEMORY[0x193AD02E0](0, v10, v7, v23);
      _Block_release(v18);

      swift_unknownObjectRelease();

      (*(v27 + 8))(v7, v5);
      (*(v26 + 8))(v10, v8);

      return result;
    }

    sub_18E637580(1, 1, v12, a1, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_18E637580(0, 1, v12, a1, a2);
  }

  return result;
}

void sub_18E6307AC()
{
  v0 = objc_opt_self();
  v1 = sub_18E65F8F0();
  v2 = [v0 createWorkloopNamed_];

  qword_1ED7652B0 = v2;
}

uint64_t ActivityHostViewController.PresentationMode.description.getter(int a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x616E73206576696CLL;
    case 1:
      return 1702259052;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

unint64_t ActivityHostViewController.PresentationMode.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

uint64_t sub_18E630910()
{
  sub_18E65FEB0();
  sub_18E65FEE0();
  return sub_18E65FF10();
}

uint64_t sub_18E630984(uint64_t a1)
{
  sub_18E65FEB0();
  sub_18E65FEE0();
  return sub_18E65FF10();
}

unsigned int *sub_18E6309C8@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18E6309F0(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 1701736302;
  }

  if (v2 == 2)
  {
    return 0x616E73206576696CLL;
  }

  if (v2 == 1)
  {
    return 1702259052;
  }

  result = sub_18E65FDF0();
  __break(1u);
  return result;
}

double sub_18E630E78(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
  swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_18E62E8BC(sub_18E63D3D0, v7);
  }

  return result;
}

void sub_18E630F20(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      swift_getObjectType();
      v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
      swift_beginAccess();
      LOBYTE(v6) = v5[v6];
      v7 = a1;
      sub_18E63E4B8(v6);

      v5 = v7;
    }
  }
}

void sub_18E63120C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = BSDispatchQueueAssertMain();
  sub_18E62EB30(v7);
}

void *sub_18E631468(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
  swift_beginAccess();
  *(v3 + v4) = v2;

  BSDispatchQueueAssertMain();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController_];
    return swift_unknownObjectRelease();
  }

  return result;
}