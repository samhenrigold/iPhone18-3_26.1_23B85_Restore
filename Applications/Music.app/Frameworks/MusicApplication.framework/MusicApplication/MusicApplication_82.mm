BOOL static SharedListening.isMusicItemTypeSupported(_:)(uint64_t a1)
{
  if (qword_E0CF88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_E15F88[0] + 8;
  v2 = *(off_E15F88[0] + &dword_10) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 4;
  }

  while (v3 != a1);
  return v2 != 0;
}

uint64_t Logger.sharedListening.unsafeMutableAddressor()
{
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.sharedListening);
}

uint64_t *SharedListening.Event.properties.unsafeMutableAddressor()
{
  if (qword_E0CF78 != -1)
  {
    swift_once();
  }

  return &static SharedListening.Event.properties;
}

double SharedListening.Event.init(_:)@<D0>(uint64_t a1@<X8>, NSObject *a2@<X0>)
{
  sub_75D030(a2, v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t static SharedListening.buildSharedSession(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6FE6A8;

  return sub_75DAE0(a1);
}

uint64_t static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_17BD0;

  return sub_75E1A0(a1, a2, a3, a4);
}

uint64_t SharedListening.Event.Content.title.getter(void *a1, char a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v20[-v9];
  if (a2)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 title];
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_6:
      v13 = v12;
      v14 = sub_AB92A0();

      return v14;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v12 = [v16 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_ABAD90(34);

        v21 = 0xD000000000000020;
        v22 = 0x8000000000B72450;
        swift_getObjectType();
        v23._countAndFlagsBits = sub_ABB6D0();
        sub_AB94A0(v23);

        result = sub_ABAFD0();
        __break(1u);
        return result;
      }

      v12 = [v19 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v12 = [a1 title];
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_AB91E0();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v17 = qword_E71B20;
  sub_AB3550();
  v18 = sub_AB9320();
  (*(v5 + 8))(v10, v4);
  return v18;
}

void sub_756D7C(int *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 == 1)
    {
      v16 = a1;
      if (qword_E0CF70 != -1)
      {
        swift_once();
      }

      v17 = sub_AB4BC0();
      __swift_project_value_buffer(v17, static Logger.groupActivities);

      oslog = sub_AB4BA0();
      v18 = sub_AB9F30();
      sub_754320(v16, 1u);
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v45 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15E88, &unk_B26150);
        v21 = sub_AB9350();
        v23 = sub_500C84(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_0, oslog, v18, "Cannot joined invalid session=%{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);

        return;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v2 = [a1 error];
      if (qword_E0CF90 != -1)
      {
        swift_once();
      }

      v3 = sub_AB4BC0();
      __swift_project_value_buffer(v3, static Logger.sharedListening);
      v4 = v2;
      oslog = sub_AB4BA0();
      v5 = sub_AB9F30();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136446210;
        v43 = v2;
        LOBYTE(v44) = 0;
        v8 = v4;
        v9 = sub_AB9350();
        v11 = sub_500C84(v9, v10, &v45);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_0, oslog, v5, "Creation error %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);

        return;
      }
    }

    goto LABEL_42;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (a1 == (&dword_0 + 2))
    {
      if (qword_E0CF90 != -1)
      {
        swift_once();
      }

      v41 = sub_AB4BC0();
      __swift_project_value_buffer(v41, static Logger.sharedListening);
      oslog = sub_AB4BA0();
      v13 = sub_AB9F50();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Building session failed because the queue is empty";
    }

    else
    {
      if (a1 == (&dword_0 + 3))
      {
        if (qword_E0CF90 != -1)
        {
          swift_once();
        }

        v34 = sub_AB4BC0();
        __swift_project_value_buffer(v34, static Logger.sharedListening);
        oslog = sub_AB4BA0();
        v35 = sub_AB9F50();
        if (!os_log_type_enabled(oslog, v35))
        {
          goto LABEL_42;
        }

        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 1) = FigOutputMonitorIsScreenProbablyBeingRecorded() != 0;
        v15 = "Presenting not supported content alert (isScreenSharing=%{BOOL}d)";
        v37 = v35;
        v38 = oslog;
        v39 = v36;
        v40 = 8;
LABEL_41:
        _os_log_impl(&dword_0, v38, v37, v15, v39, v40);

LABEL_42:

        return;
      }

      if (a1 != &dword_4)
      {
        return;
      }

      if (qword_E0CF90 != -1)
      {
        swift_once();
      }

      v12 = sub_AB4BC0();
      __swift_project_value_buffer(v12, static Logger.sharedListening);
      oslog = sub_AB4BA0();
      v13 = sub_AB9F50();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Cannot add intent for the current route.";
    }

    v37 = v13;
    v38 = oslog;
    v39 = v14;
    v40 = 2;
    goto LABEL_41;
  }

  if (a1)
  {
    swift_getErrorValue();
    a1 = sub_ABB520();
  }

  else
  {
    v24 = 0;
  }

  v43 = a1;
  v44 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
  v25 = sub_AB9350();
  v27 = v26;
  if (qword_E0CF70 != -1)
  {
    swift_once();
  }

  v28 = sub_AB4BC0();
  __swift_project_value_buffer(v28, static Logger.groupActivities);

  v29 = sub_AB4BA0();
  v30 = sub_AB9F30();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = sub_500C84(v25, v27, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_0, v29, v30, "Could not add intent to the player: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
  }
}

void sub_757438(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v165 = a4;
  v164 = a3;
  v163 = a2;
  v162 = a1;
  v170 = a6;
  v7 = sub_AB31C0();
  v160 = *(v7 - 8);
  v8 = *(v160 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = (v152 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v12 = v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v152 - v13;
  v167 = sub_AB3470();
  v15 = *(v167 - 8);
  __chkstk_darwin();
  v166 = v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v168 = v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB9250();
  v169 = *(v18 - 8);
  __chkstk_darwin();
  v20 = v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin().n128_u64[0];
  if (a5 == 2)
  {
    v154 = v12;
    v152[1] = v8;
    v153 = v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v155 = v14;
    v158 = v10;
    v159 = v7;
    v24 = v152 - v21;
    v63 = v165;
    v64 = [v165 dialog];
    if (v64)
    {
      v65 = v64;
      MPCPlayerCommandDialog.alert(context:completion:)(v162, v163, v164, 0, 0, &v171);
      v66 = v171;
      v40 = v172;
      v67 = *(&v173 + 1);
      v36 = v173;
      v44 = *(&v174 + 1);
      v68 = v174;
      v69 = v175;
      v43 = v176;
      v45 = v177;

      v42 = v66;
      v48 = v68 & 0xFFFFFFFFFFFFFF00;
      v46 = v69 & 0xFFFFFFFFFFFFFF00;
      v47 = v68;
      v49 = v69;
      v41 = v67;
LABEL_26:
      v23 = v170;
      goto LABEL_27;
    }

    v70 = [v63 error];
    v23 = v170;
    if (v70)
    {
      v171 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
      type metadata accessor for MPCPlayerEnqueueError(0);
      if (swift_dynamicCast())
      {
        v71 = v178;
        v171 = v178;
        sub_75FDF4(&qword_E0DDA0, type metadata accessor for MPCPlayerEnqueueError, &unk_B1616C);
        sub_AB2FF0();

        if (v178 == 3)
        {
          goto LABEL_19;
        }
      }
    }

    v161 = v15;
    sub_AB91E0();
    v90 = v169;
    v91 = v18;
    v92 = *(v169 + 16);
    v92(v20, v24, v91);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v93 = qword_E71B20;
    sub_AB3550();
    v94 = v93;
    v157 = sub_AB9320();
    v156 = v95;
    v169 = *(v90 + 8);
    (v169)(v24, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_AF4EC0;
    sub_AB91E0();
    v92(v20, v24, v91);
    sub_AB3550();
    v96 = sub_AB9320();
    v98 = v97;
    (v169)(v24, v91);
    v99 = v166;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v100 = sub_AB3440();
    v102 = v101;
    v103 = *(v161 + 8);
    v161 += 8;
    v103(v99, v167);
    *(v43 + 32) = v100;
    *(v43 + 40) = v102;
    *(v43 + 48) = v96;
    *(v43 + 56) = v98;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v171 = 0;
    v172 = 0xE000000000000000;
    sub_ABAD90(30);

    v171 = 0xD00000000000001CLL;
    v172 = 0x8000000000B725A0;
    *&v178 = [v63 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60, &qword_B21A88);
    v181._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v181);

    v105 = v171;
    v104 = v172;
    v106 = sub_52A450(_swiftEmptyArrayStorage);
    if (qword_E0D528 != -1)
    {
      swift_once();
    }

    v23 = v170;
    v107 = v159;
    v108 = v158;
    if (static DeviceCapabilities.isInternalInstall == 1)
    {
      v109 = v105;
      v110 = v155;
      sub_62DE74(v109, v104, 0xD000000000000032, 0x8000000000B6D4B0, _swiftEmptyArrayStorage, v106, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v155, 1u);

      v111 = v154;
      sub_15F84(v110, v154, &qword_E0DC30, &unk_B15160);
      v112 = v160;
      if ((*(v160 + 48))(v111, 1, v107) == 1)
      {
        sub_12E1C(v110, &qword_E0DC30, &unk_B15160);
        v113 = v111;
      }

      else
      {
        v169 = v103;
        v135 = *(v112 + 32);
        v135(v108, v111, v107);
        v136 = v108;
        v137 = [objc_opt_self() sharedApplication];
        sub_AB30F0(v138);
        v140 = v139;
        v141 = [v137 canOpenURL:v139];

        if (v141)
        {
          v142 = v153;
          (*(v112 + 16))(v153, v136, v107);
          v143 = (*(v112 + 80) + 16) & ~*(v112 + 80);
          v144 = swift_allocObject();
          v135(v144 + v143, v142, v107);
          v145 = v166;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v146 = sub_AB3440();
          v148 = v147;
          (v169)(v145, v167);
          (*(v112 + 8))(v136, v107);
          sub_12E1C(v155, &qword_E0DC30, &unk_B15160);
          v150 = *(v43 + 16);
          v149 = *(v43 + 24);
          if (v150 >= v149 >> 1)
          {
            v43 = sub_506A20((v149 > 1), v150 + 1, 1, v43);
          }

          v36 = v157;
          *(v43 + 16) = v150 + 1;
          v151 = v43 + 56 * v150;
          *(v151 + 32) = v146;
          *(v151 + 40) = v148;
          strcpy((v151 + 48), "File a Radar");
          *(v151 + 61) = 0;
          *(v151 + 62) = -5120;
          *(v151 + 64) = 2;
          *(v151 + 72) = &unk_B1F200;
          *(v151 + 80) = v144;
          goto LABEL_52;
        }

        (*(v112 + 8))(v136, v107);
        v113 = v155;
      }

      sub_12E1C(v113, &qword_E0DC30, &unk_B15160);
    }

    else
    {
    }

    v36 = v157;
LABEL_52:
    v42 = 0;
    v40 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 1;
    v41 = v156;
    goto LABEL_27;
  }

  if (a5 == 3)
  {
    v50 = v166;
    v161 = v15;
    v51 = v152 - v21;
    sub_AB91E0();
    v52 = v169;
    v162 = *(v169 + 16);
    (v162)(v20, v51, v18);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v53 = qword_E71B20;
    sub_AB3550();
    v165 = v53;
    v164 = sub_AB9320();
    v163 = v54;
    v55 = *(v52 + 8);
    v55(v51, v18);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v169 = sub_AB3440();
    v160 = v56;
    (*(v161 + 8))(v50, v167);
    sub_AB91E0();
    v57 = v162;
    (v162)(v20, v51, v18);
    sub_AB3550();
    v58 = v165;
    v59 = sub_AB9320();
    v165 = v60;
    v55(v51, v18);
    sub_AB91E0();
    v57(v20, v51, v18);
    v42 = v59;
    sub_AB3550();
    v36 = sub_AB9320();
    v41 = v61;
    v62 = v18;
    v40 = v165;
    v55(v51, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v43 = swift_allocObject();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v169;
    *(v43 + 40) = v160;
    *(v43 + 16) = xmmword_AF4EC0;
    *(v43 + 48) = v164;
    *(v43 + 56) = v163;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v49 = 1;
    goto LABEL_26;
  }

  v23 = v170;
  if (a5 != 4)
  {
    goto LABEL_10;
  }

  v24 = v152 - v21;
  if (v165 == (&dword_0 + 2))
  {
    v161 = v15;
    v76 = v152 - v21;
    sub_AB91E0();
    v77 = v169;
    v78 = *(v169 + 16);
    v78(v20, v24, v18);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v79 = qword_E71B20;
    sub_AB3550();
    v80 = v79;
    v160 = sub_AB9320();
    v165 = v81;
    v169 = *(v77 + 8);
    (v169)(v76, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_AF4EC0;
    sub_AB91E0();
    v78(v20, v76, v18);
    sub_AB3550();
    v82 = sub_AB9320();
    v84 = v83;
    v85 = v18;
    v40 = v165;
    (v169)(v76, v85);
    v86 = v166;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v87 = sub_AB3440();
    v89 = v88;
    (*(v161 + 8))(v86, v167);
    v41 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v87;
    *(v43 + 40) = v89;
    v42 = v160;
    *(v43 + 48) = v82;
    *(v43 + 56) = v84;
    v36 = 0;
    *(v43 + 64) = 0;
    v49 = 1;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    goto LABEL_26;
  }

  if (v165 != (&dword_0 + 3))
  {
    if (v165 == &dword_4)
    {
      v161 = v15;
      sub_AB91E0();
      v25 = v169;
      v26 = *(v169 + 16);
      v26(v20, v24, v18);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v27 = qword_E71B20;
      v28 = qword_E71B20;
      v159 = v27;
      v29 = v28;
      sub_AB3550();
      v165 = v29;
      v164 = sub_AB9320();
      v163 = v30;
      v158 = *(v25 + 8);
      (v158)(v24, v18);
      v31 = v166;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v169 = sub_AB3440();
      v162 = v32;
      (*(v161 + 8))(v31, v167);
      sub_AB91E0();
      v26(v20, v24, v18);
      sub_AB3550();
      v33 = v165;
      v160 = sub_AB9320();
      v165 = v34;
      v35 = v158;
      (v158)(v24, v18);
      sub_AB91E0();
      v26(v20, v24, v18);
      sub_AB3550();
      v36 = sub_AB9320();
      v38 = v37;
      v39 = v18;
      v40 = v165;
      (v35)(v24, v39);
      v41 = v38;
      v42 = v160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
      v43 = swift_allocObject();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *(v43 + 32) = v169;
      *(v43 + 40) = v162;
      *(v43 + 16) = xmmword_AF4EC0;
      *(v43 + 48) = v164;
      *(v43 + 56) = v163;
      *(v43 + 64) = 2;
      *(v43 + 72) = 0;
      *(v43 + 80) = 0;
      v49 = 1;
      goto LABEL_27;
    }

LABEL_10:
    v42 = 0;
    v40 = 0;
    v36 = 0;
    v41 = 0;
    v44 = 0;
    v43 = 0;
    v45 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v161 = v15;
  IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
  v73 = (v169 + 16);
  v152[0] = v18;
  if (IsScreenProbablyBeingRecorded)
  {
    sub_AB91E0();
    v74 = *v73;
    (*v73)(v20, v24, v18);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v170 = qword_E71B20;
    sub_AB3550();
    v157 = sub_AB9320();
    v156 = v75;
    v165 = *(v169 + 8);
    (v165)(v24, v18);
    v160 = 0;
    v40 = 0;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  else
  {
    sub_AB91E0();
    v114 = v20;
    v115 = *v73;
    (*v73)(v114, v24, v18);
    v159 = v73;
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v116 = qword_E71B20;
    sub_AB3550();
    v170 = v116;
    v157 = sub_AB9320();
    v156 = v117;
    v118 = *(v169 + 8);
    (v118)(v24, v18);
    sub_AB91E0();
    v115(v114, v24, v18);
    sub_AB3550();
    v158 = v115;
    v20 = v114;
    v160 = sub_AB9320();
    v120 = v119;
    v121 = v18;
    v40 = v120;
    v165 = v118;
    (v118)(v24, v121);
    v74 = v158;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  sub_AB91E0();
  v122 = v24;
  v74(v20, v24, v152[0]);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v123 = v170;
  sub_AB3550();
  v124 = sub_AB9320();
  v126 = v125;
  v127 = v161;
  (v165)(v122, v152[0]);
  v128 = v166;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v129 = sub_AB3440();
  v131 = v130;
  (*(v127 + 8))(v128, v167);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_AF4EC0;
  *(v43 + 32) = v129;
  *(v43 + 40) = v131;
  *(v43 + 48) = v124;
  *(v43 + 56) = v126;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0;

  sub_75CB68(v162, v163, v164, &v171);
  v132 = v172;
  if (v172)
  {
    v133 = v171;
    v178 = v173;
    v179 = v174;
    v180 = v175;
    v43 = sub_506A20(&dword_0 + 1, 2, 1, v43);

    *(v43 + 16) = 2;
    *(v43 + 88) = v133;
    *(v43 + 96) = v132;
    v134 = v179;
    *(v43 + 104) = v178;
    *(v43 + 120) = v134;
    *(v43 + 136) = v180;
  }

  else
  {
  }

  v36 = v157;
  v41 = v156;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v42 = v160;
LABEL_27:
  *v23 = v42;
  v23[1] = v40;
  v23[2] = v36;
  v23[3] = v41;
  v23[4] = v48 | v47;
  v23[5] = v44;
  v23[6] = v46 | v49;
  v23[7] = v43;
  v23[8] = v45;
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  v3[86] = sub_AB9940();
  v3[87] = sub_AB9930();
  v5 = sub_AB98B0();
  v3[88] = v5;
  v3[89] = v4;

  return _swift_task_switch(sub_758D58, v5, v4);
}

uint64_t sub_758D58()
{
  v22 = v0;
  v1 = qword_E0CF90;
  v2 = *(v0 + 664);
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    swift_once();
    v3 = *(v0 + 664);
  }

  v4 = sub_AB4BC0();
  *(v0 + 720) = __swift_project_value_buffer(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v0 + 592) = v8;
    *(v0 + 600) = 1;
    v11 = v8;
    v12 = sub_AB9350();
    v14 = sub_500C84(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v6, v7, "Adding the intent to the player with command%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  if (*(v0 + 672))
  {
    v15 = *(v0 + 664);
    *(v0 + 552) = &type metadata for Player.ReplaceCommand;
    *(v0 + 560) = &protocol witness table for Player.ReplaceCommand;
    *(v0 + 528) = v15;
    *(v0 + 536) = 1;
    v16 = v15;
    *(v0 + 728) = sub_AB9930();
    v18 = sub_AB98B0();
    *(v0 + 736) = v18;
    *(v0 + 744) = v17;

    return _swift_task_switch(sub_758FD4, v18, v17);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_758FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
  v1 = swift_allocObject();
  v0[94] = v1;
  *(v1 + 16) = xmmword_AF4EC0;
  sub_E8BA0((v0 + 66), v1 + 32);
  v0[95] = sub_AB9930();
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_7590D4;
  v3 = v0[85];

  return sub_6CD6E0(v1, 0x10000, 1, 0, 0, v3);
}

uint64_t sub_7590D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = sub_AB98B0();
    v6 = v5;
    v7 = sub_7593D0;
  }

  else
  {
    v4 = sub_AB98B0();
    v6 = v8;
    v7 = sub_759250;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_759250()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_7592C4, v2, v1);
}

uint64_t sub_7592C4()
{
  v1 = v0[97];

  if (v1 >> 62)
  {
    v4 = sub_ABB060();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    __swift_destroy_boxed_opaque_existential_0(v0 + 66);
    v3 = v0[89];
    v2 = v0[88];
    v6 = sub_759BF8;
    goto LABEL_9;
  }

  v4 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[97] + 32);
  }

  v0[99] = v5;

  __swift_destroy_boxed_opaque_existential_0(v0 + 66);
  v3 = v0[89];
  v2 = v0[88];
  v6 = sub_7597FC;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_7593D0()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_759438, v2, v1);
}

uint64_t sub_759438()
{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return _swift_task_switch(sub_7594A0, v2, v1);
}

uint64_t sub_7594A0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 66);
  v0[76] = v0[98];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  type metadata accessor for MPCPlayerRequestError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v1 = v0[77];
  v0[100] = v1;
  v0[78] = v1;
  sub_75FDF4(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);
  sub_AB2FF0();
  if (v0[79] != 1001)
  {

LABEL_9:
    v11 = v0[83];

    swift_willThrow();

    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_AB3040();

  v4 = [v3 msv_errorByUnwrappingDomain:MPCErrorDomain];
  v0[101] = v4;

  if (v4)
  {
    swift_getErrorValue();
    if (sub_ABB530() == 58)
    {
      v5 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
      v6 = objc_allocWithZone(MPAVRoutingController);
      v7 = sub_AB9260();
      v8 = [v6 initWithDataSource:v5 name:v7];
      v0[102] = v8;

      v0[2] = v0;
      v0[7] = v0 + 81;
      v0[3] = sub_759D10;
      v9 = swift_continuation_init();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15F98, &qword_B26558);
      v0[103] = v10;
      v0[41] = v10;
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_192638;
      v0[37] = &block_descriptor_206;
      v0[38] = v9;
      [v8 getActiveRouteWithTimeout:v0 + 34 completion:2.0];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v13 = v0[83];

  swift_willThrow();

LABEL_10:
  v12 = v0[1];

  return v12();
}

uint64_t sub_7597FC()
{
  v1 = [*(v0 + 792) error];
  if (!v1)
  {
    v1 = [*(v0 + 792) dialog];
    if (!v1)
    {
      v17 = *(v0 + 792);
      v18 = *(v0 + 664);

      v16 = *(v0 + 8);
      goto LABEL_13;
    }
  }

  v2 = *(v0 + 792);

  sub_752E04();
  v3 = swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 2;
  swift_willThrow();

  *(v0 + 608) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  type metadata accessor for MPCPlayerRequestError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    *(v0 + 800) = v5;
    *(v0 + 624) = v5;
    sub_75FDF4(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);
    sub_AB2FF0();
    if (*(v0 + 632) == 1001)
    {

      v6 = v5;
      v7 = sub_AB3040();

      v8 = [v7 msv_errorByUnwrappingDomain:MPCErrorDomain];
      *(v0 + 808) = v8;

      if (v8)
      {
        swift_getErrorValue();
        if (sub_ABB530() == 58)
        {
          v9 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
          v10 = objc_allocWithZone(MPAVRoutingController);
          v11 = sub_AB9260();
          v12 = [v10 initWithDataSource:v9 name:v11];
          *(v0 + 816) = v12;

          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 648;
          *(v0 + 24) = sub_759D10;
          v13 = swift_continuation_init();
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15F98, &qword_B26558);
          *(v0 + 824) = v14;
          *(v0 + 328) = v14;
          *(v0 + 272) = _NSConcreteStackBlock;
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_192638;
          *(v0 + 296) = &block_descriptor_206;
          *(v0 + 304) = v13;
          [v12 getActiveRouteWithTimeout:v0 + 272 completion:2.0];

          return _swift_continuation_await(v0 + 16);
        }
      }

      v19 = *(v0 + 664);

      swift_willThrow();

      goto LABEL_12;
    }
  }

  v15 = *(v0 + 664);

  swift_willThrow();

LABEL_12:
  v16 = *(v0 + 8);
LABEL_13:

  return v16();
}

uint64_t sub_759BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_759C68()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_759D10()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_759E18, v2, v1);
}

uint64_t sub_759E18()
{
  v1 = v0[81];
  v0[104] = v1;
  v2 = objc_opt_self();
  v0[105] = v2;
  v3 = v1;
  v4 = [v2 systemRoute];
  v5 = v4;
  if (!v1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_10:

LABEL_11:
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "SharedListening requires system route, switching…", v14, 2u);
    }

    v0[10] = v0;
    v0[11] = sub_75A0A4;
    v15 = swift_continuation_init();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135A0, &unk_B1B518);
    v0[106] = v16;
    v0[49] = v16;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_5C75AC;
    v0[45] = &block_descriptor_14;
    v0[46] = v15;
    [v2 setActiveRoute:0 completion:v0 + 42];

    return _swift_continuation_await(v0 + 10);
  }

  if (!v4)
  {
    v5 = v3;
    goto LABEL_10;
  }

  sub_13C80(0, &qword_E13E68, MPAVRoute_ptr);
  v6 = sub_ABA790();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[83];

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_75A0A4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 856) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_75AA3C;
  }

  else
  {
    v5 = sub_75A1D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_75A1D4()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 816);
  v3 = [*(v0 + 840) systemRoute];
  *(v0 + 864) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_75A304;
  v4 = swift_continuation_init();
  *(v0 + 456) = v1;
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_5C75AC;
  *(v0 + 424) = &block_descriptor_17_3;
  *(v0 + 432) = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_75A304()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_75AAF0;
  }

  else
  {
    v5 = sub_75A434;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_75A434()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = sub_75A550;
  v3 = swift_continuation_init();
  *(v0 + 520) = v1;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_192638;
  *(v0 + 488) = &block_descriptor_20_6;
  *(v0 + 496) = v3;
  [v2 getActiveRouteWithTimeout:v0 + 464 completion:2.0];

  return _swift_continuation_await(v0 + 208);
}

uint64_t sub_75A550()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_75A658, v2, v1);
}

uint64_t sub_75A658()
{
  v1 = *(v0 + 656);
  *(v0 + 880) = v1;
  v2 = v1;
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&dword_0, v3, v4, "active route=%@", v5, 0xCu);
    sub_12E1C(v6, &qword_E0F560, &qword_B19F80);
  }

  v8 = *(v0 + 840);

  v9 = [v8 systemRoute];
  v10 = v9;
  if (!v1)
  {
    v11 = v9;
    if (!v9)
    {
LABEL_12:
      v20 = swift_task_alloc();
      *(v0 + 888) = v20;
      *v20 = v0;
      v20[1] = sub_75A900;
      v21 = *(v0 + 680);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);

      return static SharedListening.addIntent(_:playbackController:issuer:)(v23, v22, v21);
    }

    goto LABEL_8;
  }

  v11 = v2;
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_13C80(0, &qword_E13E68, MPAVRoute_ptr);
  v12 = sub_ABA790();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 664);

  sub_752E04();
  swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 4;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_75A900()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = sub_75ABAC;
  }

  else
  {
    v5 = sub_759C68;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_75AA3C()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[83];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_75AAF0()
{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[83];

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_75ABAC()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

BOOL static SharedListening.isModelObjectTypeSupported(_:)(uint64_t a1)
{
  if (qword_E0CF80 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *(off_E15F80[0] + &dword_10);
  v2 = off_E15F80[0] + 8;
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2;
    v2 += 2;
  }

  while (v5 != a1);
  return v3 != 0;
}

void __swiftcall SharedListening.Reaction.init(id:emoji:senderID:)(MusicCore::SharedListening::Reaction *__return_ptr retstr, Swift::String_optional id, Swift::String emoji, Swift::String_optional senderID)
{
  object = senderID.value._object;
  countAndFlagsBits = senderID.value._countAndFlagsBits;
  v6 = emoji._object;
  v7 = emoji._countAndFlagsBits;
  v8 = id.value._object;
  v9 = id.value._countAndFlagsBits;
  v11 = sub_AB3470();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v9 = sub_AB3440();
    v8 = v15;
    (*(v12 + 8))(v14, v11);
  }

  retstr->id._countAndFlagsBits = v9;
  retstr->id._object = v8;
  retstr->emoji._countAndFlagsBits = v7;
  retstr->emoji._object = v6;
  retstr->senderID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->senderID.value._object = object;
}

uint64_t sub_75ADF0()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x44497265646E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_75AE3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_75F57C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_75AE64(uint64_t a1)
{
  v2 = sub_75F528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_75AEA0(uint64_t a1)
{
  v2 = sub_75F528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedListening.Reaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15FA0, &qword_B26560);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_75F528();
  sub_ABB690();
  v8[15] = 0;
  sub_ABB240();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_ABB240();
  v8[13] = 2;
  sub_ABB220();
  return (*(v4 + 8))(v6, v3);
}

void SharedListening.Reaction.hash(into:)(uint64_t a1)
{
  sub_AB93F0();
  sub_AB93F0();
  if (*(v1 + 40))
  {
    sub_ABB5E0(1u);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }
}

Swift::Int SharedListening.Reaction.hashValue.getter()
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  if (*(v0 + 40))
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

double SharedListening.Reaction.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_75F688(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

Swift::Int sub_75B1F8()
{
  v1 = *(v0 + 40);
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  if (v1)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

void sub_75B2A0(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_AB93F0();
  sub_AB93F0();
  if (v2)
  {
    sub_ABB5E0(1u);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }
}

Swift::Int sub_75B33C(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  if (v2)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

uint64_t sub_75B3E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

void sub_75B428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11060, &unk_B22950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = sub_AB92A0();
  *(v2 + 40) = v3;
  isa = sub_AB9740().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  v10 = sub_AB9740().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  v15 = sub_AB9740().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF4EC0;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_AF4EC0;
  *(v20 + 32) = sub_AB92A0();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF4EC0;
  *(v22 + 32) = sub_AB92A0();
  *(v22 + 40) = v23;
  v24 = sub_AB9740().super.isa;

  v25 = [v5 propertySetWithProperties:v24];

  *(v20 + 48) = v25;
  sub_52A338(v20);
  swift_setDeallocating();
  sub_12E1C(v20 + 32, &qword_E11068, qword_B1D7F0);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_E12D10, MPPropertySet_ptr);
  v28 = sub_AB8FD0().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 120) = v29;
  sub_52A338(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11068, qword_B1D7F0);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = sub_AB9740().super.isa;
  v32 = sub_AB8FD0().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  static SharedListening.Event.properties = v33;
}

id static SharedListening.Event.properties.getter()
{
  if (qword_E0CF78 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_75B910()
{
  sub_75C9E4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_13C80(0, &qword_E15FD8, MPModelAlbum_ptr);
  *(v0 + 40) = sub_13C80(0, &qword_E15FE0, MPModelSong_ptr);
  *(v0 + 48) = sub_13C80(0, &qword_E0FC50, MPModelPlaylist_ptr);
  *(v0 + 56) = sub_13C80(0, qword_E0FC58, MPModelRadioStation_ptr);
  result = sub_13C80(0, &qword_E15FE8, MPModelArtist_ptr);
  *(v0 + 64) = result;
  off_E15F80[0] = v0;
  return result;
}

int *sub_75B9F0()
{
  result = sub_75BA10();
  off_E15F88[0] = result;
  return result;
}

uint64_t sub_75BA10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16020, &qword_B26C00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
  *(v0 + 32) = sub_AB8770();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = sub_AB86C0();
  *(v0 + 56) = &protocol witness table for Song;
  *(v0 + 64) = sub_AB8030();
  *(v0 + 72) = &protocol witness table for MusicVideo;
  *(v0 + 80) = sub_AB8E20();
  *(v0 + 88) = &protocol witness table for Playlist;
  *(v0 + 96) = sub_AB8AE0();
  *(v0 + 104) = &protocol witness table for Station;
  *(v0 + 112) = sub_AB88F0();
  *(v0 + 120) = &protocol witness table for Artist;
  return v0;
}

uint64_t sub_75BAD8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t sub_75BB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_75BBF0, 0, 0);
}

uint64_t sub_75BBF0()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = 3;
    v2 = &protocol witness table for Player.ReplaceCommand;
    v3 = &type metadata for Player.ReplaceCommand;
    v22 = v1;
  }

  else
  {
    v22 = 0;
    *(v0 + 88) = 0;
    v2 = &protocol witness table for Player.PlaybackCommand;
    v3 = &type metadata for Player.PlaybackCommand;
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v9 = sub_AB9990();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_E8BA0(v0 + 88, v0 + 128);
  *(v0 + 168) = *v8;
  *(v0 + 184) = v8[1];
  v10 = *(v8 + 6);
  v21 = *(v8 + 5);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v1;
  *(v11 + 40) = v6;
  *(v11 + 48) = v5;
  *(v11 + 56) = v1 == 0;
  sub_304128((v0 + 128), v11 + 64);
  v12 = *v8;
  v13 = v8[1];
  v14 = v8[2];
  *(v11 + 152) = *(v8 + 6);
  *(v11 + 136) = v14;
  *(v11 + 120) = v13;
  *(v11 + 104) = v12;
  *(v11 + 160) = *v7;
  v15 = *(v7 + 64);
  v17 = *(v7 + 32);
  v16 = *(v7 + 48);
  *(v11 + 176) = *(v7 + 16);
  *(v11 + 192) = v17;
  *(v11 + 208) = v16;
  *(v11 + 224) = v15;

  v18 = v22;

  sub_C8C3C(v0 + 168, v0 + 200);
  sub_C8C3C(v0 + 184, v0 + 216);
  sub_307CC(v21, v10);
  sub_15F84(v7, v0 + 16, &qword_E0F9B0, &qword_B1EF00);
  sub_6E35A0(0, 0, v4, &unk_B26C20, v11);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_75BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a5;
  return _swift_task_switch(sub_75BE60, 0, 0);
}

uint64_t sub_75BE60()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_75C070;
    v2 = *(v0 + 192);

    return GroupActivitiesManager.leave(performLeaveCommand:)(v2);
  }

  else if (*(v0 + 136))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    v11 = v4[6];

    sub_307CC(v10, v11);
    sub_15F84(v5, v0 + 16, &qword_E0F9B0, &qword_B1EF00);
    v12 = sub_6E32F0(v6, v7, v8, v9, v10, v11, v5);
    *(v0 + 112) = &type metadata for Alert.ActionCommandIssuingContext;
    *(v0 + 120) = &protocol witness table for Alert.ActionCommandIssuingContext;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_75C2F8;
    v15 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v15, 0, 0, 0, v0 + 88);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_75C070()
{

  return _swift_task_switch(sub_75C16C, 0, 0);
}

uint64_t sub_75C16C()
{
  if (v0[17])
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = v1[6];

    sub_307CC(v7, v8);
    sub_15F84(v2, (v0 + 2), &qword_E0F9B0, &qword_B1EF00);
    v9 = sub_6E32F0(v3, v4, v5, v6, v7, v8, v2);
    v0[14] = &type metadata for Alert.ActionCommandIssuingContext;
    v0[15] = &protocol witness table for Alert.ActionCommandIssuingContext;
    v0[11] = v9;
    v0[12] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_75C2F8;
    v12 = v0[18];

    return Player.perform(_:options:issuer:)(v12, 0, 0, 0, (v0 + 11));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_75C2F8(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_75C460, 0, 0);
  }

  else
  {

    sub_12E1C(v4 + 88, &qword_E0EA98, &unk_B239F0);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_75C460()
{
  sub_12E1C(v0 + 88, &qword_E0EA98, &unk_B239F0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_75C4D4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.sharedListening);
  __swift_project_value_buffer(v0, static Logger.sharedListening);
  return sub_AB4BB0();
}

uint64_t static Logger.sharedListening.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_75C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_75C620, 0, 0);
}

uint64_t sub_75C620()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v1();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_75C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_75C6F0, 0, 0);
}

uint64_t sub_75C6F0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = objc_opt_self();
  v5 = [v3 commandRequest];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v0[6] = sub_760124;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_3A5920;
  v0[5] = &block_descriptor_99_1;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;
  sub_307CC(v2, v1);

  [v4 performRequest:v5 completion:v7];
  _Block_release(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_75C858(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_17CF8;

  return sub_75C6CC(a1, a2, v6, v7, v8);
}

void sub_75C918(uint64_t a1, id a2, void (*a3)(uint64_t))
{
  if ([a2 type] == &dword_0 + 1)
  {
    if (a3)
    {
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      (a3)();
    }
  }

  else if (a3)
  {
    a3(a1);
  }
}

uint64_t sub_75C9E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15FF0, &qword_B26B48);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_E15FF8;
    v3 = &unk_B26B50;
  }

  else
  {
    v2 = &qword_E10AA0;
    v3 = &unk_B19F90;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void sub_75CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_17654(a6, a7);
  }
}

uint64_t _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_ABB3C0() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_ABB3C0() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_ABB3C0() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_75CB68(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v10 = sub_AB9250();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v32 - v14;
  if (FigOutputMonitorIsScreenProbablyBeingRecorded())
  {
    if (qword_E0CF90 != -1)
    {
      swift_once();
    }

    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, static Logger.sharedListening);
    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Play locally action is NOT available because of screen sharing", v19, 2u);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v33 = v6;
    v34 = v7;
    sub_AB91E0();
    (*(v11 + 16))(v13, v15, v10);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v27 = qword_E71B20;
    sub_AB3550();
    v22 = sub_AB9320();
    v23 = v28;
    (*(v11 + 8))(v15, v10);
    v26 = swift_allocObject();
    v29 = v36;
    v26[2] = a1;
    v26[3] = v29;
    v26[4] = v35;

    v30 = a1;

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v20 = sub_AB3440();
    v21 = v31;
    (*(v34 + 8))(v9, v33);
    v25 = &unk_B26C10;
    v24 = 2;
  }

  *a4 = v20;
  a4[1] = v21;
  a4[2] = v22;
  a4[3] = v23;
  a4[4] = v24;
  a4[5] = v25;
  a4[6] = v26;
}

uint64_t sub_75CF40()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_75CF80(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_75C600(a1, a2, v7, v6);
}

void sub_75D030(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 type];
  if (v4 <= 2)
  {
    if (v4 == (&dword_0 + 1))
    {
      v28 = [v2 sessionEvent];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 kind];

        if (v30 == &dword_4)
        {

          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          v12 = &dword_0 + 2;
          goto LABEL_83;
        }

        if (v30 == (&dword_0 + 1))
        {

          v12 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          goto LABEL_83;
        }
      }

      if (qword_E0CF90 != -1)
      {
        swift_once();
      }

      v38 = sub_AB4BC0();
      __swift_project_value_buffer(v38, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_AB4BA0();
      v21 = sub_AB9F10();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v39 = [v20 sessionEvent];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 kind];
        }

        else
        {
          v41 = 0;
        }

        v80 = v41;
        v81 = v40 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16018, &qword_B26BF8);
        v59 = sub_AB9350();
        v61 = sub_500C84(v59, v60, &v82);

        *(v22 + 4) = v61;
        v27 = "Unknown session event kind: %{public}s";
        goto LABEL_59;
      }

LABEL_46:

LABEL_47:
LABEL_60:
      v12 = 0;
      goto LABEL_61;
    }

    if (v4 == (&dword_0 + 2))
    {
      v5 = [v2 playbackEvent];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7 > 2)
        {
          if (v7 == (&dword_0 + 3))
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = &dword_0 + 1;
            goto LABEL_83;
          }

          if (v7 == &dword_4)
          {
            v42 = [v2 playbackEvent];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 item];

              if (v44)
              {
                v45 = [v44 innermostModelObject];

                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v44 = v46;
                if (v46)
                {
                  v47 = [v46 title];
                  if (v47)
                  {
                    v48 = v47;
                    v12 = sub_AB92A0();
                    v8 = v49;

                    v9 = 0;
                    v10 = 0;
                    v11 = 2;
                    goto LABEL_83;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
              v44 = 0;
            }

            v12 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            v8 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        else
        {
          if (v7 == (&dword_0 + 1))
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = &dword_4;
            goto LABEL_83;
          }

          if (v7 == (&dword_0 + 2))
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = &dword_0 + 3;
LABEL_83:
            *a2 = v12;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = v11;
            return;
          }
        }
      }

      if (qword_E0CF90 != -1)
      {
        swift_once();
      }

      v50 = sub_AB4BC0();
      __swift_project_value_buffer(v50, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_AB4BA0();
      v21 = sub_AB9F10();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v51 = [v20 playbackEvent];
        v52 = v51;
        if (v51)
        {
          v53 = [v51 kind];
        }

        else
        {
          v53 = 0;
        }

        v80 = v53;
        v81 = v52 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16010, &qword_B26BF0);
        v62 = sub_AB9350();
        v64 = sub_500C84(v62, v63, &v82);

        *(v22 + 4) = v64;
        v27 = "Unknown playback event kind: %{public}s";
        goto LABEL_59;
      }

      goto LABEL_46;
    }

LABEL_13:
    if (qword_E0CF90 != -1)
    {
      swift_once();
    }

    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, static Logger.sharedListening);
    v20 = v2;
    v2 = sub_AB4BA0();
    v21 = sub_AB9F10();

    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 136446210;
      v82 = [v20 type];
      type metadata accessor for MPCSharedListeningEventType(0);
      v24 = sub_AB9350();
      v26 = sub_500C84(v24, v25, &v80);

      *(v22 + 4) = v26;
      v27 = "Unknown event type: %{public}s";
LABEL_59:
      _os_log_impl(&dword_0, v2, v21, v27, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);

      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (v4 != (&dword_0 + 3))
  {
    if (v4 == &dword_4)
    {
      v13 = [v2 reactionEvent];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 reactionIdentifier];
        v12 = sub_AB92A0();
        v8 = v16;

        v17 = [v14 reaction];
        v9 = sub_AB92A0();
        v10 = v18;

        v11 = 1;
        goto LABEL_83;
      }

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  v31 = [v2 queueEvent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 kind];

  if (v33 != &dword_0 + 1)
  {
    if (v33 != &dword_4 + 3)
    {
      if (v33 == &dword_4 + 2)
      {
        v34 = [v2 queueEvent];
        if (v34)
        {
          v35 = v34;
          v12 = [v34 playedNowContent];

          if (v12)
          {
            v36 = [v12 startItem];
            v37 = [v36 innermostModelObject];

            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12)
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 3;
              goto LABEL_83;
            }
          }

          else
          {
          }

LABEL_61:
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = -1;
          goto LABEL_83;
        }

        goto LABEL_47;
      }

      goto LABEL_81;
    }

LABEL_77:
    v71 = [v2 queueEvent];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 contentUpdatedMessage];

      if (v73)
      {
        v74 = [v73 localizedTitle];
        if (v74)
        {
          v75 = v74;
          v12 = sub_AB92A0();
          v8 = v76;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }

        v77 = [v73 localizedMessage];
        if (v77)
        {
          v78 = v77;
          v9 = sub_AB92A0();
          v10 = v79;
        }

        else
        {

          v9 = 0;
          v10 = 0;
        }

        v11 = 4;
        goto LABEL_83;
      }
    }

LABEL_81:

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    goto LABEL_82;
  }

  v54 = [v2 queueEvent];
  if (!v54)
  {
    goto LABEL_77;
  }

  v55 = v54;
  v56 = [v54 addedContent];

  if (!v56)
  {
    goto LABEL_77;
  }

  v57 = [v56 container];
  if (v57)
  {
    v58 = v57;
    v12 = [v57 innermostModelObject];

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v8 = 1;
    goto LABEL_83;
  }

  v65 = [v56 items];
  sub_13C80(0, &qword_E16008, MPModelGenericObject_ptr);
  v66 = sub_AB9760();

  if (!(v66 >> 62))
  {
    if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_66;
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!sub_ABB060())
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = sub_ABAE20();
    goto LABEL_69;
  }

  if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
  {
    v67 = *(v66 + 32);
LABEL_69:
    v68 = v67;

    v69 = [v68 innermostModelObject];

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v12 = v70;

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  __break(1u);
}

uint64_t sub_75DB00()
{
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_AB4BC0();
  v0[21] = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v3 = v1;
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_0, v4, v5, "🏗 Building session with intent=%{public}@", v7, 0xCu);
    sub_12E1C(v8, &qword_E0F560, &qword_B19F80);
  }

  v10 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[14] = UIScreen.Dimensions.size.getter;
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_41A314;
  v0[13] = &block_descriptor_74_0;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithBlock:v11];
  v0[22] = v12;
  _Block_release(v11);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[20];
    v15 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_75DE08;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16000, &qword_B26BE8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_75BAD8;
    v0[13] = &block_descriptor_77_0;
    v0[14] = v16;
    [v15 buildSharedSessionIntentWithIntent:v14 identity:v12 extendedStatusCompletion:v0 + 10];
    isEscapingClosureAtFileLocation = (v0 + 2);
  }

  return _swift_continuation_await(isEscapingClosureAtFileLocation);
}

uint64_t sub_75DE08()
{

  return _swift_task_switch(sub_75DEE8, 0, 0);
}

uint64_t sub_75DEE8()
{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[19];
  if (v1 && (v3 = v1, v4 = [v3 sharedListeningProperties], v3, v4))
  {

    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "✅ Shared listening intent successfully built", v7, 2u);
    }

    v8 = v0[22];

    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v2;
    v12 = sub_AB4BA0();
    v13 = sub_AB9F30();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v0[10] = [v11 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60, &qword_B21A88);
      v16 = sub_AB9350();
      v18 = sub_500C84(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "⚠️ Creation error %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    v19 = v0[22];
    sub_752E04();
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_75E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a3;
  v4[43] = a4;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = sub_AB9940();
  v4[45] = sub_AB9930();
  v6 = sub_AB98B0();
  v4[46] = v6;
  v4[47] = v5;

  return _swift_task_switch(sub_75E240, v6, v5);
}

uint64_t sub_75E240()
{
  v45 = v0;
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_AB4BC0();
  *(v0 + 384) = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v3 = v1;

  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v43 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136446210;
    *(v0 + 272) = v43;
    *(v0 + 288) = v6;
    v9 = v43;

    v10 = sub_AB9350();
    v12 = sub_500C84(v10, v11, v44);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "🏗 Building session with command=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v13 = *(v0 + 344);
  if (v13 && (v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player, swift_beginAccess(), *(v13 + v14)) && (swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510((v0 + 296)), , , , (v15 = *(v0 + 296)) != 0) && (v16 = [*(v0 + 296) tracklist], v17 = objc_msgSend(v16, "playingItem"), v15, v16, v17))
  {

    v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (!*(v13 + v18) || (swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510((v0 + 304)), , , , (v19 = *(v0 + 304)) == 0) || (v20 = [*(v0 + 304) route], *(v0 + 392) = v20, v19, !v20))
    {
LABEL_14:
      v21 = *(v0 + 336);
      v22 = *(v0 + 320);
      *(v0 + 144) = v22;
      *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
      *(v0 + 184) = 0x694C646572616853;
      *(v0 + 192) = 0xEF676E696E657473;
      *(v0 + 160) = v21;
      *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
      v23 = v22;

      *(v0 + 416) = sub_AB9930();
      v25 = sub_AB98B0();
      *(v0 + 424) = v25;
      *(v0 + 432) = v24;

      return _swift_task_switch(sub_75EB10, v25, v24);
    }

    if ([v20 isDeviceRoute])
    {

      goto LABEL_14;
    }

    v28 = v20;
    v29 = sub_AB4BA0();
    v30 = sub_AB9F50();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136446210;
      v33 = v28;
      v34 = [v33 description];
      v35 = sub_AB92A0();
      v37 = v36;

      v38 = sub_500C84(v35, v37, v44);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_0, v29, v30, "    Build session command needs to be performed on the system route.\n    Switching from %{public}s) to system route.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    v39 = objc_opt_self();
    v40 = [v39 systemRoute];
    *(v0 + 400) = v40;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_75E8DC;
    v41 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135A0, &unk_B1B518);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_5C75AC;
    *(v0 + 104) = &block_descriptor_71_2;
    *(v0 + 112) = v41;
    [v39 setActiveRoute:v40 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    sub_752E04();
    swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 4;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_75E8DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_75F47C;
  }

  else
  {
    v5 = sub_75EA0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_75EA0C()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 144) = v3;
  *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
  *(v0 + 184) = 0x694C646572616853;
  *(v0 + 192) = 0xEF676E696E657473;
  *(v0 + 160) = v2;
  *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
  v4 = v3;

  *(v0 + 416) = sub_AB9930();
  v6 = sub_AB98B0();
  *(v0 + 424) = v6;
  *(v0 + 432) = v5;

  return _swift_task_switch(sub_75EB10, v6, v5);
}

uint64_t sub_75EB10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
  v1 = swift_allocObject();
  v0[55] = v1;
  *(v1 + 16) = xmmword_AF4EC0;
  sub_E8BA0((v0 + 18), v1 + 32);
  v0[56] = sub_AB9930();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_75EC0C;

  return sub_6CD6E0(v1, 0x10000, 1, 0, 0, (v0 + 23));
}

uint64_t sub_75EC0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = sub_AB98B0();
    v6 = v5;
    v7 = sub_75EF24;
  }

  else
  {
    v4 = sub_AB98B0();
    v6 = v8;
    v7 = sub_75ED84;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_75ED84()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_75EDF0, v1, v2);
}

uint64_t sub_75EDF0()
{
  v1 = v0[58];

  if (v1 >> 62)
  {
    v4 = sub_ABB060();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_12E1C((v0 + 23), &qword_E0EA98, &unk_B239F0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
    v2 = v0[46];
    v3 = v0[47];
    v6 = sub_75F418;
    goto LABEL_9;
  }

  v4 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[58] + 32);
  }

  v0[60] = v5;

  sub_12E1C((v0 + 23), &qword_E0EA98, &unk_B239F0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v2 = v0[46];
  v3 = v0[47];
  v6 = sub_75F1C4;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_75EF24()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_75EF88, v1, v2);
}

uint64_t sub_75EF88()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_75EFEC, v1, v2);
}

uint64_t sub_75EFEC()
{
  v13 = v0;

  sub_12E1C((v0 + 23), &qword_E0EA98, &unk_B239F0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v1 = v0[59];
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[39] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "⚠️ Building session failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  sub_752E04();
  swift_allocError();
  *v9 = 3;
  *(v9 + 8) = 4;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_75F1C4()
{
  v18 = v0;
  v1 = *(v0 + 480);

  v2 = [v1 error];
  if (v2 || (v2 = [*(v0 + 480) dialog]) != 0)
  {
    v3 = *(v0 + 480);

    sub_752E04();
    v4 = swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 2;
    swift_willThrow();

    swift_errorRetain();
    v6 = sub_AB4BA0();
    v7 = sub_AB9F30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v0 + 312) = v4;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
      v10 = sub_AB9350();
      v12 = sub_500C84(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "⚠️ Building session failed with error=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 4;
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 480);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_75F418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_75F47C()
{
  v1 = v0[50];
  v2 = v0[49];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_75F528()
{
  result = qword_E15FA8;
  if (!qword_E15FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15FA8);
  }

  return result;
}

uint64_t sub_75F57C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_75F688@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E15FD0, &qword_B26B40);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_75F528();
  sub_ABB680();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_ABB1A0();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_ABB1A0();
  v21 = v12;
  v23 = 2;
  v13 = sub_ABB180();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_75F8D8()
{
  result = qword_E15FB0;
  if (!qword_E15FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15FB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO5EventO5AlertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO5EventO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_75F998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_75F9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_75FA34(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_75FA7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_75FAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO13ErrorHandlingV0E0O(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_75FB88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_75FBD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_75FC14(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_75FC40()
{
  result = qword_E15FB8;
  if (!qword_E15FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15FB8);
  }

  return result;
}

unint64_t sub_75FC98()
{
  result = qword_E15FC0;
  if (!qword_E15FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15FC0);
  }

  return result;
}

unint64_t sub_75FCF0()
{
  result = qword_E15FC8;
  if (!qword_E15FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E15FC8);
  }

  return result;
}

double block_copy_helper_72_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_75FD6C()
{
  v1 = sub_AB31C0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_75FDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_75FE3C()
{

  return swift_deallocObject();
}

uint64_t sub_75FE84(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_17BD0;

  return sub_75BB4C(a1, a2, v6, v7, v8);
}

uint64_t sub_75FF44()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 216))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_75FFE4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_75BE2C(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t objectdestroyTm_19()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6572676F72506E69;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_760224()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_7602F4(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_7603B0(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_76047C@<X0>(Swift::String *a1@<X0>, MusicCore::UnifiedMessages::MLI::State_optional *a2@<X8>)
{
  result = _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_7604AC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x8000000000B48510;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

MusicCore::UnifiedMessages::GroupDefaultsKey_optional __swiftcall UnifiedMessages.GroupDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D1D1D0;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_countOfSongsInLibrary;
  }

  else
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UnifiedMessages.GroupDefaultsKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_7606B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "countOfPlaylistsInLibrary";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

Swift::Int sub_760760()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_7607E0(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_76084C(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_7608C8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D1D1D0;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_760928(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1D150;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_7609B8()
{
  result = qword_E16028;
  if (!qword_E16028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E16028);
  }

  return result;
}

unint64_t sub_760A10()
{
  result = qword_E16030;
  if (!qword_E16030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E16030);
  }

  return result;
}

unint64_t sub_760AA4()
{
  result = qword_E16038;
  if (!qword_E16038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E16038);
  }

  return result;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v7 = qword_E16040;
  v8 = *algn_E16048;

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_AB94A0(v9);

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  sub_AB94A0(v10);

  v3 = v7;
  v4 = v8;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_760BB4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_AB7B50();
}

uint64_t *AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor()
{
  if (qword_E0D278 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryAlbumsView;
}

uint64_t *AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor()
{
  if (qword_E0D268 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsListView;
}

uint64_t *AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor()
{
  if (qword_E0D2C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySongsView;
}

uint64_t *AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor()
{
  if (qword_E0D2B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPlaylistsView;
}

uint64_t *AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor()
{
  if (qword_E0D2A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGenresView;
}

uint64_t *AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor()
{
  if (qword_E0D260 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryRecentlyAddedView;
}

uint64_t *AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor()
{
  if (qword_E0D2A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMadeForYouView;
}

uint64_t *AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor()
{
  if (qword_E0D2B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMusicVideosView;
}

uint64_t *AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor()
{
  if (qword_E0D288 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryCompilationsView;
}

uint64_t *AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor()
{
  if (qword_E0D280 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryComposersView;
}

uint64_t *AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor()
{
  if (qword_E0D2C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTVAndMoviesView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor()
{
  if (qword_E0D290 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadedView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor()
{
  if (qword_E0D298 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadingView;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.unsafeMutableAddressor()
{
  if (qword_E0D410 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.unsafeMutableAddressor()
{
  if (qword_E0D418 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.unsafeMutableAddressor()
{
  if (qword_E0D420 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.unsafeMutableAddressor()
{
  if (qword_E0D428 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.unsafeMutableAddressor()
{
  if (qword_E0D430 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.unsafeMutableAddressor()
{
  if (qword_E0D438 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.unsafeMutableAddressor()
{
  if (qword_E0D440 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.unsafeMutableAddressor()
{
  if (qword_E0D448 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static AccessibilityIdentifier.named(_:)(uint64_t a1, void *a2)
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v5 = qword_E16040;

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  sub_AB94A0(v6);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_AB94A0(v7);

  return v5;
}

void sub_76151C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_761580();
  v3 = v2;

  qword_E16040 = v1;
  *algn_E16048 = v3;
}

uint64_t sub_761580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v25[-v5];
  v28 = 0;
  v29 = 0xE000000000000000;
  v7 = [v1 bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;

    v26 = 46;
    v27 = 0xE100000000000000;
    __chkstk_darwin();
    *&v25[-16] = &v26;
    if (sub_772478(0x7FFFFFFFFFFFFFFFLL, 1, sub_45154C, &v25[-32], v9, v11, v25)[2])
    {

      goto LABEL_12;
    }
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  v12 = [v1 executableURL];
  if (v12)
  {
    v13 = v12;
    sub_AB3150();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_AB31C0();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v3, v14, 1, v15);
  sub_4FE54C(v3, v6);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_4FE5BC(v6);
    v17 = 0xE500000000000000;
    v18._countAndFlagsBits = 0x636973754DLL;
  }

  else
  {
    v19 = sub_AB30D0();
    v17 = v20;
    (*(v16 + 8))(v6, v15);
    v18._countAndFlagsBits = v19;
  }

  v18._object = v17;
  sub_AB94A0(v18);

  sub_ABA9F0();
LABEL_12:
  v21 = sub_AB93B0();
  v23 = v22;

  v30._countAndFlagsBits = v21;
  v30._object = v23;
  sub_AB94A0(v30);

  return v28;
}

void sub_761884()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6B726F77747241;
  v3._object = 0xE700000000000000;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.artwork = v0;
  unk_E72170 = v1;
  qword_E72178 = 0x6B726F77747241;
  unk_E72180 = 0xE700000000000000;
}

uint64_t *AccessibilityIdentifier.artwork.unsafeMutableAddressor()
{
  if (qword_E0CFA0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artwork;
}

uint64_t static AccessibilityIdentifier.artwork.getter()
{
  if (qword_E0CFA0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artwork;

  return v0;
}

void sub_761A28()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000000B73470;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.doneButton = v0;
  unk_E72190 = v1;
  qword_E72198 = 0xD00000000000001ALL;
  unk_E721A0 = 0x8000000000B73470;
}

uint64_t *AccessibilityIdentifier.doneButton.unsafeMutableAddressor()
{
  if (qword_E0CFA8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.doneButton;
}

uint64_t static AccessibilityIdentifier.doneButton.getter()
{
  if (qword_E0CFA8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.doneButton;

  return v0;
}

void sub_761BD4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x747475426B636142;
  v3._object = 0xEA00000000006E6FLL;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.backButton = v0;
  unk_E721B0 = v1;
  qword_E721B8 = 0x747475426B636142;
  unk_E721C0 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.backButton.unsafeMutableAddressor()
{
  if (qword_E0CFB0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.backButton;
}

uint64_t static AccessibilityIdentifier.backButton.getter()
{
  if (qword_E0CFB0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.backButton;

  return v0;
}

void sub_761D80()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 1701998413;
  v3._object = 0xE400000000000000;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.moreButton = v0;
  unk_E721D0 = v1;
  qword_E721D8 = 1701998413;
  unk_E721E0 = 0xE400000000000000;
}

uint64_t *AccessibilityIdentifier.moreButton.unsafeMutableAddressor()
{
  if (qword_E0CFB8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.moreButton;
}

uint64_t static AccessibilityIdentifier.moreButton.getter()
{
  if (qword_E0CFB8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.moreButton;

  return v0;
}

void sub_761F20()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x8000000000B73450;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.calendarButton = v0;
  unk_E721F0 = v1;
  qword_E721F8 = 0xD000000000000014;
  unk_E72200 = 0x8000000000B73450;
}

uint64_t *AccessibilityIdentifier.calendarButton.unsafeMutableAddressor()
{
  if (qword_E0CFC0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.calendarButton;
}

uint64_t static AccessibilityIdentifier.calendarButton.getter()
{
  if (qword_E0CFC0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.calendarButton;

  return v0;
}

void sub_7620CC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x65486C6961746544;
  v3._object = 0xEC00000072656461;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.detailHeader = v0;
  unk_E72210 = v1;
  strcpy(&qword_E72218, "DetailHeader");
  unk_E72225 = 0;
  unk_E72226 = -5120;
}

uint64_t *AccessibilityIdentifier.detailHeader.unsafeMutableAddressor()
{
  if (qword_E0CFC8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeader;
}

uint64_t static AccessibilityIdentifier.detailHeader.getter()
{
  if (qword_E0CFC8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeader;

  return v0;
}

void sub_762278()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B73430;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.detailHeaderTitle = v0;
  unk_E72230 = v1;
  qword_E72238 = 0xD000000000000012;
  unk_E72240 = 0x8000000000B73430;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_E0CFD0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitle.getter()
{
  if (qword_E0CFD0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitle;

  return v0;
}

void sub_762424()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000000B73410;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.detailHeaderTitleFavorited = v0;
  unk_E72250 = v1;
  qword_E72258 = 0xD00000000000001CLL;
  unk_E72260 = 0x8000000000B73410;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor()
{
  if (qword_E0CFD8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitleFavorited;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitleFavorited.getter()
{
  if (qword_E0CFD8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitleFavorited;

  return v0;
}

void sub_7625D0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000000B733F0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.detailHeaderLabel = v0;
  unk_E72270 = v1;
  qword_E72278 = 0xD000000000000018;
  unk_E72280 = 0x8000000000B733F0;
}

uint64_t *AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor()
{
  if (qword_E0CFE0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderLabel.getter()
{
  if (qword_E0CFE0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderLabel;

  return v0;
}

void sub_76277C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B733D0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.detailHeaderArtistLink = v0;
  unk_E72290 = v1;
  qword_E72298 = 0xD000000000000017;
  unk_E722A0 = 0x8000000000B733D0;
}

uint64_t *AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor()
{
  if (qword_E0CFE8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderArtistLink;
}

uint64_t static AccessibilityIdentifier.detailHeaderArtistLink.getter()
{
  if (qword_E0CFE8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderArtistLink;

  return v0;
}

void sub_762928()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x8000000000B733B0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.detailHeaderDescriptionLabel = v0;
  unk_E722B0 = v1;
  qword_E722B8 = 0xD00000000000001DLL;
  unk_E722C0 = 0x8000000000B733B0;
}

uint64_t *AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor()
{
  if (qword_E0CFF0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderDescriptionLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderDescriptionLabel.getter()
{
  if (qword_E0CFF0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderDescriptionLabel;

  return v0;
}

void sub_762AD4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000000B73390;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.detailHeaderMore = v0;
  unk_E722D0 = v1;
  qword_E722D8 = 0xD000000000000011;
  unk_E722E0 = 0x8000000000B73390;
}

uint64_t *AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor()
{
  if (qword_E0CFF8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderMore;
}

uint64_t static AccessibilityIdentifier.detailHeaderMore.getter()
{
  if (qword_E0CFF8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderMore;

  return v0;
}

void sub_762C80()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000000B73370;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.playIntentButton = v0;
  unk_E722F0 = v1;
  qword_E722F8 = 0xD000000000000015;
  unk_E72300 = 0x8000000000B73370;
}

uint64_t *AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor()
{
  if (qword_E0D000 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playIntentButton;
}

uint64_t static AccessibilityIdentifier.playIntentButton.getter()
{
  if (qword_E0D000 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playIntentButton;

  return v0;
}

void sub_762E2C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000000B73350;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.shuffleIntentButton = v0;
  unk_E72310 = v1;
  qword_E72318 = 0xD000000000000018;
  unk_E72320 = 0x8000000000B73350;
}

uint64_t *AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor()
{
  if (qword_E0D008 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.shuffleIntentButton;
}

uint64_t static AccessibilityIdentifier.shuffleIntentButton.getter()
{
  if (qword_E0D008 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.shuffleIntentButton;

  return v0;
}

void sub_762FD8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x8000000000B73330;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.startSingingIntentButton = v0;
  unk_E72330 = v1;
  qword_E72338 = 0xD00000000000001DLL;
  unk_E72340 = 0x8000000000B73330;
}

uint64_t *AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor()
{
  if (qword_E0D010 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.startSingingIntentButton;
}

uint64_t static AccessibilityIdentifier.startSingingIntentButton.getter()
{
  if (qword_E0D010 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.startSingingIntentButton;

  return v0;
}

void sub_763184()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6C6C6543676E6F53;
  v3._object = 0xE800000000000000;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.songCell = v0;
  unk_E72350 = v1;
  qword_E72358 = 0x6C6C6543676E6F53;
  unk_E72360 = 0xE800000000000000;
}

uint64_t *AccessibilityIdentifier.songCell.unsafeMutableAddressor()
{
  if (qword_E0D018 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.songCell;
}

uint64_t static AccessibilityIdentifier.songCell.getter()
{
  if (qword_E0D018 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.songCell;

  return v0;
}

void sub_763328()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x73694C6B63617254;
  v3._object = 0xED00006C6C654374;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCell = v0;
  unk_E72370 = v1;
  strcpy(&qword_E72378, "TrackListCell");
  unk_E72386 = -4864;
}

uint64_t *AccessibilityIdentifier.trackListCell.unsafeMutableAddressor()
{
  if (qword_E0D020 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCell;
}

uint64_t static AccessibilityIdentifier.trackListCell.getter()
{
  if (qword_E0D020 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCell;

  return v0;
}

void sub_7634D8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000000B73310;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListEmptyCell = v0;
  unk_E72390 = v1;
  qword_E72398 = 0xD000000000000013;
  unk_E723A0 = 0x8000000000B73310;
}

uint64_t *AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor()
{
  if (qword_E0D028 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListEmptyCell;
}

uint64_t static AccessibilityIdentifier.trackListEmptyCell.getter()
{
  if (qword_E0D028 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListEmptyCell;

  return v0;
}

void sub_763684()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000000B732F0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellArtwork = v0;
  unk_E723B0 = v1;
  qword_E723B8 = 0xD000000000000015;
  unk_E723C0 = 0x8000000000B732F0;
}

uint64_t *AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor()
{
  if (qword_E0D030 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtwork;
}

uint64_t static AccessibilityIdentifier.trackListCellArtwork.getter()
{
  if (qword_E0D030 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtwork;

  return v0;
}

void sub_763830()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000000B732D0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellFavoriteBadge = v0;
  unk_E723D0 = v1;
  qword_E723D8 = 0xD00000000000001CLL;
  unk_E723E0 = 0x8000000000B732D0;
}

uint64_t *AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor()
{
  if (qword_E0D038 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellFavoriteBadge.getter()
{
  if (qword_E0D038 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellFavoriteBadge;

  return v0;
}

void sub_7639DC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000000B732B0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellPopularBadge = v0;
  unk_E723F0 = v1;
  qword_E723F8 = 0xD00000000000001BLL;
  unk_E72400 = 0x8000000000B732B0;
}

uint64_t *AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor()
{
  if (qword_E0D040 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellPopularBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellPopularBadge.getter()
{
  if (qword_E0D040 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellPopularBadge;

  return v0;
}

void sub_763B88()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B73290;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellTrackNumber = v0;
  unk_E72410 = v1;
  qword_E72418 = 0xD000000000000019;
  unk_E72420 = 0x8000000000B73290;
}

uint64_t *AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor()
{
  if (qword_E0D048 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTrackNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellTrackNumber.getter()
{
  if (qword_E0D048 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTrackNumber;

  return v0;
}

void sub_763D34()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B73270;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellChartNumber = v0;
  unk_E72430 = v1;
  qword_E72438 = 0xD000000000000019;
  unk_E72440 = 0x8000000000B73270;
}

uint64_t *AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor()
{
  if (qword_E0D050 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellChartNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellChartNumber.getter()
{
  if (qword_E0D050 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellChartNumber;

  return v0;
}

void sub_763EE0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B73250;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellVideoIcon = v0;
  unk_E72450 = v1;
  qword_E72458 = 0xD000000000000017;
  unk_E72460 = 0x8000000000B73250;
}

uint64_t *AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor()
{
  if (qword_E0D058 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellVideoIcon;
}

uint64_t static AccessibilityIdentifier.trackListCellVideoIcon.getter()
{
  if (qword_E0D058 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellVideoIcon;

  return v0;
}

void sub_76408C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000000B73230;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellTitle = v0;
  unk_E72470 = v1;
  qword_E72478 = 0xD000000000000013;
  unk_E72480 = 0x8000000000B73230;
}

uint64_t *AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor()
{
  if (qword_E0D060 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTitle;
}

uint64_t static AccessibilityIdentifier.trackListCellTitle.getter()
{
  if (qword_E0D060 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTitle;

  return v0;
}

void sub_764238()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x8000000000B73210;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellArtist = v0;
  unk_E72490 = v1;
  qword_E72498 = 0xD000000000000014;
  unk_E724A0 = 0x8000000000B73210;
}

uint64_t *AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor()
{
  if (qword_E0D068 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtist;
}

uint64_t static AccessibilityIdentifier.trackListCellArtist.getter()
{
  if (qword_E0D068 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtist;

  return v0;
}

void sub_7643E4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000000B731F0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellAlbum = v0;
  unk_E724B0 = v1;
  qword_E724B8 = 0xD000000000000013;
  unk_E724C0 = 0x8000000000B731F0;
}

uint64_t *AccessibilityIdentifier.trackListCellAlbum.unsafeMutableAddressor()
{
  if (qword_E0D070 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellAlbum;
}

uint64_t static AccessibilityIdentifier.trackListCellAlbum.getter()
{
  if (qword_E0D070 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellAlbum;

  return v0;
}

void sub_764590()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000000B731D0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCellDuration = v0;
  unk_E724D0 = v1;
  qword_E724D8 = 0xD000000000000016;
  unk_E724E0 = 0x8000000000B731D0;
}

uint64_t *AccessibilityIdentifier.trackListCellDuration.unsafeMutableAddressor()
{
  if (qword_E0D078 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellDuration;
}

uint64_t static AccessibilityIdentifier.trackListCellDuration.getter()
{
  if (qword_E0D078 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellDuration;

  return v0;
}

void sub_76473C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x8000000000B731B0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListReleaseDate = v0;
  unk_E724F0 = v1;
  qword_E724F8 = 0xD000000000000014;
  unk_E72500 = 0x8000000000B731B0;
}

uint64_t *AccessibilityIdentifier.trackListReleaseDate.unsafeMutableAddressor()
{
  if (qword_E0D080 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListReleaseDate;
}

uint64_t static AccessibilityIdentifier.trackListReleaseDate.getter()
{
  if (qword_E0D080 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListReleaseDate;

  return v0;
}

void sub_7648E8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B73190;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCountAndDuration = v0;
  unk_E72510 = v1;
  qword_E72518 = 0xD000000000000019;
  unk_E72520 = 0x8000000000B73190;
}

uint64_t *AccessibilityIdentifier.trackListCountAndDuration.unsafeMutableAddressor()
{
  if (qword_E0D088 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCountAndDuration;
}

uint64_t static AccessibilityIdentifier.trackListCountAndDuration.getter()
{
  if (qword_E0D088 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCountAndDuration;

  return v0;
}

void sub_764A94()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B73170;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListCopyright = v0;
  unk_E72530 = v1;
  qword_E72538 = 0xD000000000000012;
  unk_E72540 = 0x8000000000B73170;
}

uint64_t *AccessibilityIdentifier.trackListCopyright.unsafeMutableAddressor()
{
  if (qword_E0D090 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCopyright;
}

uint64_t static AccessibilityIdentifier.trackListCopyright.getter()
{
  if (qword_E0D090 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCopyright;

  return v0;
}

void sub_764C40()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x8000000000B73150;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.trackListRecordLabel = v0;
  unk_E72550 = v1;
  qword_E72558 = 0xD000000000000014;
  unk_E72560 = 0x8000000000B73150;
}

uint64_t *AccessibilityIdentifier.trackListRecordLabel.unsafeMutableAddressor()
{
  if (qword_E0D098 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListRecordLabel;
}

uint64_t static AccessibilityIdentifier.trackListRecordLabel.getter()
{
  if (qword_E0D098 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListRecordLabel;

  return v0;
}

void sub_764DEC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x64616F6C6E776F44;
  v3._object = 0xEE00737574617453;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.downloadStatus = v0;
  unk_E72570 = v1;
  strcpy(&qword_E72578, "DownloadStatus");
  unk_E72587 = -18;
}

uint64_t *AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor()
{
  if (qword_E0D0A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.downloadStatus;
}

uint64_t static AccessibilityIdentifier.downloadStatus.getter()
{
  if (qword_E0D0A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.downloadStatus;

  return v0;
}

void sub_764F9C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000000B73130;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.lyricsStaticView = v0;
  unk_E72590 = v1;
  qword_E72598 = 0xD000000000000010;
  unk_E725A0 = 0x8000000000B73130;
}

uint64_t *AccessibilityIdentifier.lyricsStaticView.unsafeMutableAddressor()
{
  if (qword_E0D0A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsStaticView;
}

uint64_t static AccessibilityIdentifier.lyricsStaticView.getter()
{
  if (qword_E0D0A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsStaticView;

  return v0;
}

void sub_765148()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000000B73110;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.lyricsSyncedView = v0;
  unk_E725B0 = v1;
  qword_E725B8 = 0xD000000000000010;
  unk_E725C0 = 0x8000000000B73110;
}

uint64_t *AccessibilityIdentifier.lyricsSyncedView.unsafeMutableAddressor()
{
  if (qword_E0D0B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsSyncedView;
}

uint64_t static AccessibilityIdentifier.lyricsSyncedView.getter()
{
  if (qword_E0D0B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsSyncedView;

  return v0;
}

void sub_7652F4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x7474754279616C50;
  v3._object = 0xEA00000000006E6FLL;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.playButton = v0;
  unk_E725D0 = v1;
  qword_E725D8 = 0x7474754279616C50;
  unk_E725E0 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.playButton.unsafeMutableAddressor()
{
  if (qword_E0D0B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playButton;
}

uint64_t static AccessibilityIdentifier.playButton.getter()
{
  if (qword_E0D0B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playButton;

  return v0;
}

void sub_7654A0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x7475426573756150;
  v3._object = 0xEB000000006E6F74;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.pauseButton = v0;
  unk_E725F0 = v1;
  qword_E725F8 = 0x7475426573756150;
  unk_E72600 = 0xEB000000006E6F74;
}

uint64_t *AccessibilityIdentifier.pauseButton.unsafeMutableAddressor()
{
  if (qword_E0D0C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.pauseButton;
}

uint64_t static AccessibilityIdentifier.pauseButton.getter()
{
  if (qword_E0D0C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.pauseButton;

  return v0;
}

void sub_76564C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x74747542706F7453;
  v3._object = 0xEA00000000006E6FLL;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.stopButton = v0;
  unk_E72610 = v1;
  qword_E72618 = 0x74747542706F7453;
  unk_E72620 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.stopButton.unsafeMutableAddressor()
{
  if (qword_E0D0C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.stopButton;
}

uint64_t static AccessibilityIdentifier.stopButton.getter()
{
  if (qword_E0D0C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.stopButton;

  return v0;
}

void sub_7657F8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000000B730F0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.skipForwardButton = v0;
  unk_E72630 = v1;
  qword_E72638 = 0xD000000000000011;
  unk_E72640 = 0x8000000000B730F0;
}

uint64_t *AccessibilityIdentifier.skipForwardButton.unsafeMutableAddressor()
{
  if (qword_E0D0D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipForwardButton;
}

uint64_t static AccessibilityIdentifier.skipForwardButton.getter()
{
  if (qword_E0D0D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipForwardButton;

  return v0;
}

void sub_7659A4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B730D0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.skipBackwardButton = v0;
  unk_E72650 = v1;
  qword_E72658 = 0xD000000000000012;
  unk_E72660 = 0x8000000000B730D0;
}

uint64_t *AccessibilityIdentifier.skipBackwardButton.unsafeMutableAddressor()
{
  if (qword_E0D0D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipBackwardButton;
}

uint64_t static AccessibilityIdentifier.skipBackwardButton.getter()
{
  if (qword_E0D0D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipBackwardButton;

  return v0;
}

void sub_765B50()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x74747542706D754ALL;
  v3._object = 0xEA00000000006E6FLL;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.jumpButton = v0;
  unk_E72670 = v1;
  qword_E72678 = 0x74747542706D754ALL;
  unk_E72680 = 0xEA00000000006E6FLL;
}

uint64_t *AccessibilityIdentifier.jumpButton.unsafeMutableAddressor()
{
  if (qword_E0D0E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.jumpButton;
}

uint64_t static AccessibilityIdentifier.jumpButton.getter()
{
  if (qword_E0D0E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.jumpButton;

  return v0;
}

void sub_765CFC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x547972617262694CLL;
  v3._object = 0xEA00000000006261;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTab = v0;
  unk_E72690 = v1;
  qword_E72698 = 0x547972617262694CLL;
  unk_E726A0 = 0xEA00000000006261;
}

uint64_t *AccessibilityIdentifier.libraryTab.unsafeMutableAddressor()
{
  if (qword_E0D0E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTab;
}

uint64_t static AccessibilityIdentifier.libraryTab.getter()
{
  if (qword_E0D0E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTab;

  return v0;
}

void sub_765EA8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6F4E6E657473694CLL;
  v3._object = 0xEC00000062615477;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.listenNowTab = v0;
  unk_E726B0 = v1;
  strcpy(&qword_E726B8, "ListenNowTab");
  unk_E726C5 = 0;
  unk_E726C6 = -5120;
}

uint64_t *AccessibilityIdentifier.listenNowTab.unsafeMutableAddressor()
{
  if (qword_E0D0F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowTab;
}

uint64_t static AccessibilityIdentifier.listenNowTab.getter()
{
  if (qword_E0D0F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowTab;

  return v0;
}

void sub_766054()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x61546573776F7242;
  v3._object = 0xE900000000000062;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.browseTab = v0;
  unk_E726D0 = v1;
  qword_E726D8 = 0x61546573776F7242;
  unk_E726E0 = 0xE900000000000062;
}

uint64_t *AccessibilityIdentifier.browseTab.unsafeMutableAddressor()
{
  if (qword_E0D0F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseTab;
}

uint64_t static AccessibilityIdentifier.browseTab.getter()
{
  if (qword_E0D0F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseTab;

  return v0;
}

void sub_766200()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6261546F69646152;
  v3._object = 0xE800000000000000;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.radioTab = v0;
  unk_E726F0 = v1;
  qword_E726F8 = 0x6261546F69646152;
  unk_E72700 = 0xE800000000000000;
}

uint64_t *AccessibilityIdentifier.radioTab.unsafeMutableAddressor()
{
  if (qword_E0D100 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioTab;
}

uint64_t static AccessibilityIdentifier.radioTab.getter()
{
  if (qword_E0D100 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioTab;

  return v0;
}

void sub_7663A4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6154686372616553;
  v3._object = 0xE900000000000062;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.searchTab = v0;
  unk_E72710 = v1;
  qword_E72718 = 0x6154686372616553;
  unk_E72720 = 0xE900000000000062;
}

uint64_t *AccessibilityIdentifier.searchTab.unsafeMutableAddressor()
{
  if (qword_E0D108 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchTab;
}

uint64_t static AccessibilityIdentifier.searchTab.getter()
{
  if (qword_E0D108 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchTab;

  return v0;
}

void sub_766550()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000000B730B0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailHeader = v0;
  unk_E72730 = v1;
  qword_E72738 = 0xD000000000000016;
  unk_E72740 = 0x8000000000B730B0;
}

uint64_t *AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor()
{
  if (qword_E0D110 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeader;
}

uint64_t static AccessibilityIdentifier.containerDetailHeader.getter()
{
  if (qword_E0D110 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeader;

  return v0;
}

void sub_7666FC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x8000000000B73090;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailHeaderArtwork = v0;
  unk_E72750 = v1;
  qword_E72758 = 0xD00000000000001ELL;
  unk_E72760 = 0x8000000000B73090;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_E0D118 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderArtwork.getter()
{
  if (qword_E0D118 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderArtwork;

  return v0;
}

void sub_7668A8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000000B73070;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailHeaderTitle = v0;
  unk_E72770 = v1;
  qword_E72778 = 0xD00000000000001CLL;
  unk_E72780 = 0x8000000000B73070;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_E0D120 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderTitle.getter()
{
  if (qword_E0D120 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderTitle;

  return v0;
}

void sub_766A54()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x8000000000B73040;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailHeaderAttribution = v0;
  unk_E72790 = v1;
  qword_E72798 = 0xD000000000000022;
  unk_E727A0 = 0x8000000000B73040;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderAttribution.unsafeMutableAddressor()
{
  if (qword_E0D128 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderAttribution;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderAttribution.getter()
{
  if (qword_E0D128 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderAttribution;

  return v0;
}

void sub_766C00()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x8000000000B73020;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailHeaderMetadata = v0;
  unk_E727B0 = v1;
  qword_E727B8 = 0xD00000000000001FLL;
  unk_E727C0 = 0x8000000000B73020;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderMetadata.unsafeMutableAddressor()
{
  if (qword_E0D130 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderMetadata;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderMetadata.getter()
{
  if (qword_E0D130 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderMetadata;

  return v0;
}

void sub_766DAC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x8000000000B72FF0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailHeaderDescription = v0;
  unk_E727D0 = v1;
  qword_E727D8 = 0xD000000000000022;
  unk_E727E0 = 0x8000000000B72FF0;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderDescription.unsafeMutableAddressor()
{
  if (qword_E0D138 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderDescription;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderDescription.getter()
{
  if (qword_E0D138 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderDescription;

  return v0;
}

void sub_766F58()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x8000000000B72FC0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailContextualActionsButton = v0;
  unk_E727F0 = v1;
  qword_E727F8 = 0xD000000000000027;
  unk_E72800 = 0x8000000000B72FC0;
}

uint64_t *AccessibilityIdentifier.containerDetailContextualActionsButton.unsafeMutableAddressor()
{
  if (qword_E0D140 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailContextualActionsButton;
}

uint64_t static AccessibilityIdentifier.containerDetailContextualActionsButton.getter()
{
  if (qword_E0D140 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailContextualActionsButton;

  return v0;
}

void sub_767104()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x8000000000B72F90;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailFloatingArtwork = v0;
  unk_E72810 = v1;
  qword_E72818 = 0xD000000000000020;
  unk_E72820 = 0x8000000000B72F90;
}

uint64_t *AccessibilityIdentifier.containerDetailFloatingArtwork.unsafeMutableAddressor()
{
  if (qword_E0D148 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailFloatingArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailFloatingArtwork.getter()
{
  if (qword_E0D148 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailFloatingArtwork;

  return v0;
}

void sub_7672B0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000000B72F70;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailStateButton = v0;
  unk_E72830 = v1;
  qword_E72838 = 0xD00000000000001BLL;
  unk_E72840 = 0x8000000000B72F70;
}

uint64_t *AccessibilityIdentifier.containerDetailStateButton.unsafeMutableAddressor()
{
  if (qword_E0D150 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailStateButton;
}

uint64_t static AccessibilityIdentifier.containerDetailStateButton.getter()
{
  if (qword_E0D150 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailStateButton;

  return v0;
}

void sub_76745C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B72F50;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailAddButton = v0;
  unk_E72850 = v1;
  qword_E72858 = 0xD000000000000019;
  unk_E72860 = 0x8000000000B72F50;
}

uint64_t *AccessibilityIdentifier.containerDetailAddButton.unsafeMutableAddressor()
{
  if (qword_E0D158 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailAddButton;
}

uint64_t static AccessibilityIdentifier.containerDetailAddButton.getter()
{
  if (qword_E0D158 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailAddButton;

  return v0;
}

void sub_767608()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x8000000000B72F30;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailDownloadButton = v0;
  unk_E72870 = v1;
  qword_E72878 = 0xD00000000000001ELL;
  unk_E72880 = 0x8000000000B72F30;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadButton.unsafeMutableAddressor()
{
  if (qword_E0D160 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadButton.getter()
{
  if (qword_E0D160 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadButton;

  return v0;
}

void sub_7677B4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x8000000000B72F00;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailDownloadQueuedButton = v0;
  unk_E72890 = v1;
  qword_E72898 = 0xD000000000000024;
  unk_E728A0 = 0x8000000000B72F00;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadQueuedButton.unsafeMutableAddressor()
{
  if (qword_E0D168 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadQueuedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadQueuedButton.getter()
{
  if (qword_E0D168 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadQueuedButton;

  return v0;
}

void sub_767960()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x8000000000B72ED0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailDownloadPausedButton = v0;
  unk_E728B0 = v1;
  qword_E728B8 = 0xD000000000000024;
  unk_E728C0 = 0x8000000000B72ED0;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadPausedButton.unsafeMutableAddressor()
{
  if (qword_E0D170 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadPausedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadPausedButton.getter()
{
  if (qword_E0D170 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadPausedButton;

  return v0;
}

void sub_767B0C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x8000000000B72EA0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailDownloadingButton = v0;
  unk_E728D0 = v1;
  qword_E728D8 = 0xD000000000000021;
  unk_E728E0 = 0x8000000000B72EA0;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadingButton.unsafeMutableAddressor()
{
  if (qword_E0D178 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadingButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadingButton.getter()
{
  if (qword_E0D178 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadingButton;

  return v0;
}

void sub_767CB8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x8000000000B72E70;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.containerDetailDownloadedButton = v0;
  unk_E728F0 = v1;
  qword_E728F8 = 0xD000000000000020;
  unk_E72900 = 0x8000000000B72E70;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadedButton.unsafeMutableAddressor()
{
  if (qword_E0D180 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadedButton.getter()
{
  if (qword_E0D180 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadedButton;

  return v0;
}

void sub_767E64()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x8000000000B72E40;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.albumDetailOpenInClassicalButton = v0;
  unk_E72910 = v1;
  qword_E72918 = 0xD000000000000021;
  unk_E72920 = 0x8000000000B72E40;
}

uint64_t *AccessibilityIdentifier.albumDetailOpenInClassicalButton.unsafeMutableAddressor()
{
  if (qword_E0D188 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumDetailOpenInClassicalButton;
}

uint64_t static AccessibilityIdentifier.albumDetailOpenInClassicalButton.getter()
{
  if (qword_E0D188 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumDetailOpenInClassicalButton;

  return v0;
}

void sub_768010()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x8000000000B72E10;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.playlistDetailCollaborationControl = v0;
  unk_E72930 = v1;
  qword_E72938 = 0xD000000000000023;
  unk_E72940 = 0x8000000000B72E10;
}

uint64_t *AccessibilityIdentifier.playlistDetailCollaborationControl.unsafeMutableAddressor()
{
  if (qword_E0D190 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistDetailCollaborationControl;
}

uint64_t static AccessibilityIdentifier.playlistDetailCollaborationControl.getter()
{
  if (qword_E0D190 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistDetailCollaborationControl;

  return v0;
}

void sub_7681BC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x42746E756F636361;
  v3._object = 0xED00006E6F747475;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.accountButton = v0;
  unk_E72950 = v1;
  strcpy(&qword_E72958, "accountButton");
  unk_E72966 = -4864;
}

uint64_t *AccessibilityIdentifier.accountButton.unsafeMutableAddressor()
{
  if (qword_E0D198 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.accountButton;
}

uint64_t static AccessibilityIdentifier.accountButton.getter()
{
  if (qword_E0D198 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.accountButton;

  return v0;
}

void sub_76836C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000000B72DF0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryListCell = v0;
  unk_E72970 = v1;
  qword_E72978 = 0xD000000000000010;
  unk_E72980 = 0x8000000000B72DF0;
}

uint64_t *AccessibilityIdentifier.libraryListCell.unsafeMutableAddressor()
{
  if (qword_E0D1A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCell;
}

uint64_t static AccessibilityIdentifier.libraryListCell.getter()
{
  if (qword_E0D1A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCell;

  return v0;
}

void sub_768518()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000000B72DD0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryListCellArtwork = v0;
  unk_E72990 = v1;
  qword_E72998 = 0xD000000000000018;
  unk_E729A0 = 0x8000000000B72DD0;
}

uint64_t *AccessibilityIdentifier.libraryListCellArtwork.unsafeMutableAddressor()
{
  if (qword_E0D1A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryListCellArtwork.getter()
{
  if (qword_E0D1A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellArtwork;

  return v0;
}

void sub_7686C4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000000B72DB0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryListCellTitle = v0;
  unk_E729B0 = v1;
  qword_E729B8 = 0xD000000000000016;
  unk_E729C0 = 0x8000000000B72DB0;
}

uint64_t *AccessibilityIdentifier.libraryListCellTitle.unsafeMutableAddressor()
{
  if (qword_E0D1B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellTitle.getter()
{
  if (qword_E0D1B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellTitle;

  return v0;
}

void sub_768870()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B72D90;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryListCellSubtitle = v0;
  unk_E729D0 = v1;
  qword_E729D8 = 0xD000000000000019;
  unk_E729E0 = 0x8000000000B72D90;
}

uint64_t *AccessibilityIdentifier.libraryListCellSubtitle.unsafeMutableAddressor()
{
  if (qword_E0D1B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellSubtitle.getter()
{
  if (qword_E0D1B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellSubtitle;

  return v0;
}

void sub_768A1C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000000B72D70;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryGridCell = v0;
  unk_E729F0 = v1;
  qword_E729F8 = 0xD000000000000010;
  unk_E72A00 = 0x8000000000B72D70;
}

uint64_t *AccessibilityIdentifier.libraryGridCell.unsafeMutableAddressor()
{
  if (qword_E0D1C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCell;
}

uint64_t static AccessibilityIdentifier.libraryGridCell.getter()
{
  if (qword_E0D1C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCell;

  return v0;
}

void sub_768BC8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000000B72D50;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryGridCellArtwork = v0;
  unk_E72A10 = v1;
  qword_E72A18 = 0xD000000000000018;
  unk_E72A20 = 0x8000000000B72D50;
}

uint64_t *AccessibilityIdentifier.libraryGridCellArtwork.unsafeMutableAddressor()
{
  if (qword_E0D1C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryGridCellArtwork.getter()
{
  if (qword_E0D1C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellArtwork;

  return v0;
}

void sub_768D74()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000000B72D30;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryGridCellTitle = v0;
  unk_E72A30 = v1;
  qword_E72A38 = 0xD000000000000016;
  unk_E72A40 = 0x8000000000B72D30;
}

uint64_t *AccessibilityIdentifier.libraryGridCellTitle.unsafeMutableAddressor()
{
  if (qword_E0D1D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellTitle.getter()
{
  if (qword_E0D1D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellTitle;

  return v0;
}

void sub_768F20()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B72D10;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryGridCellSubtitle = v0;
  unk_E72A50 = v1;
  qword_E72A58 = 0xD000000000000019;
  unk_E72A60 = 0x8000000000B72D10;
}

uint64_t *AccessibilityIdentifier.libraryGridCellSubtitle.unsafeMutableAddressor()
{
  if (qword_E0D1D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellSubtitle.getter()
{
  if (qword_E0D1D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellSubtitle;

  return v0;
}

void sub_7690CC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000000B72CF0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.playlistButton = v0;
  unk_E72A70 = v1;
  qword_E72A78 = 0xD000000000000016;
  unk_E72A80 = 0x8000000000B72CF0;
}

uint64_t *AccessibilityIdentifier.playlistButton.unsafeMutableAddressor()
{
  if (qword_E0D1E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistButton;
}

uint64_t static AccessibilityIdentifier.playlistButton.getter()
{
  if (qword_E0D1E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistButton;

  return v0;
}

void sub_769278()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000000B72CD0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.contextualMenuButton = v0;
  unk_E72A90 = v1;
  qword_E72A98 = 0xD00000000000001CLL;
  unk_E72AA0 = 0x8000000000B72CD0;
}

uint64_t *AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor()
{
  if (qword_E0D1E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.contextualMenuButton;
}

uint64_t static AccessibilityIdentifier.contextualMenuButton.getter()
{
  if (qword_E0D1E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.contextualMenuButton;

  return v0;
}

void sub_769424()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x8000000000B72CB0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryFilterOptionsButton = v0;
  unk_E72AB0 = v1;
  qword_E72AB8 = 0xD00000000000001BLL;
  unk_E72AC0 = 0x8000000000B72CB0;
}

uint64_t *AccessibilityIdentifier.libraryFilterOptionsButton.unsafeMutableAddressor()
{
  if (qword_E0D1F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFilterOptionsButton;
}

uint64_t static AccessibilityIdentifier.libraryFilterOptionsButton.getter()
{
  if (qword_E0D1F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFilterOptionsButton;

  return v0;
}

void sub_7695D0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B72C90;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.librarySortOptionsButton = v0;
  unk_E72AD0 = v1;
  qword_E72AD8 = 0xD000000000000019;
  unk_E72AE0 = 0x8000000000B72C90;
}

uint64_t *AccessibilityIdentifier.librarySortOptionsButton.unsafeMutableAddressor()
{
  if (qword_E0D1F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySortOptionsButton;
}

uint64_t static AccessibilityIdentifier.librarySortOptionsButton.getter()
{
  if (qword_E0D1F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySortOptionsButton;

  return v0;
}

void sub_76977C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000000B72C70;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTrackCell = v0;
  unk_E72AF0 = v1;
  qword_E72AF8 = 0xD000000000000011;
  unk_E72B00 = 0x8000000000B72C70;
}

uint64_t *AccessibilityIdentifier.libraryTrackCell.unsafeMutableAddressor()
{
  if (qword_E0D200 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCell;
}

uint64_t static AccessibilityIdentifier.libraryTrackCell.getter()
{
  if (qword_E0D200 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCell;

  return v0;
}

void sub_769928()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B72C50;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTrackCellArtwork = v0;
  unk_E72B10 = v1;
  qword_E72B18 = 0xD000000000000019;
  unk_E72B20 = 0x8000000000B72C50;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellArtwork.unsafeMutableAddressor()
{
  if (qword_E0D208 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellArtwork.getter()
{
  if (qword_E0D208 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellArtwork;

  return v0;
}

void sub_769AD4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B72C30;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTrackCellTitle = v0;
  unk_E72B30 = v1;
  qword_E72B38 = 0xD000000000000017;
  unk_E72B40 = 0x8000000000B72C30;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellTitle.unsafeMutableAddressor()
{
  if (qword_E0D210 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellTitle.getter()
{
  if (qword_E0D210 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellTitle;

  return v0;
}

void sub_769C80()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000000B72C10;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTrackCellSubtitle = v0;
  unk_E72B50 = v1;
  qword_E72B58 = 0xD00000000000001ALL;
  unk_E72B60 = 0x8000000000B72C10;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellSubtitle.unsafeMutableAddressor()
{
  if (qword_E0D218 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellSubtitle.getter()
{
  if (qword_E0D218 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellSubtitle;

  return v0;
}

void sub_769E2C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x8000000000B72BF0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTrackCellDetailText = v0;
  unk_E72B70 = v1;
  qword_E72B78 = 0xD00000000000001CLL;
  unk_E72B80 = 0x8000000000B72BF0;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDetailText.unsafeMutableAddressor()
{
  if (qword_E0D220 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDetailText;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDetailText.getter()
{
  if (qword_E0D220 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDetailText;

  return v0;
}

void sub_769FD8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000000B72BD0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTrackCellDuration = v0;
  unk_E72B90 = v1;
  qword_E72B98 = 0xD00000000000001ALL;
  unk_E72BA0 = 0x8000000000B72BD0;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDuration.unsafeMutableAddressor()
{
  if (qword_E0D228 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDuration;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDuration.getter()
{
  if (qword_E0D228 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDuration;

  return v0;
}

void sub_76A184()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000000B72BB0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTextCell = v0;
  unk_E72BB0 = v1;
  qword_E72BB8 = 0xD000000000000010;
  unk_E72BC0 = 0x8000000000B72BB0;
}

uint64_t *AccessibilityIdentifier.libraryTextCell.unsafeMutableAddressor()
{
  if (qword_E0D230 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTextCell;
}

uint64_t static AccessibilityIdentifier.libraryTextCell.getter()
{
  if (qword_E0D230 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTextCell;

  return v0;
}

void sub_76A330()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000000B72B90;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryFavoriteBadge = v0;
  unk_E72BD0 = v1;
  qword_E72BD8 = 0xD000000000000015;
  unk_E72BE0 = 0x8000000000B72B90;
}

uint64_t *AccessibilityIdentifier.libraryFavoriteBadge.unsafeMutableAddressor()
{
  if (qword_E0D238 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.libraryFavoriteBadge.getter()
{
  if (qword_E0D238 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFavoriteBadge;

  return v0;
}

void sub_76A4DC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000000B72B70;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryMenuView = v0;
  unk_E72BF0 = v1;
  qword_E72BF8 = 0xD000000000000010;
  unk_E72C00 = 0x8000000000B72B70;
}

uint64_t *AccessibilityIdentifier.libraryMenuView.unsafeMutableAddressor()
{
  if (qword_E0D240 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMenuView;
}

uint64_t static AccessibilityIdentifier.libraryMenuView.getter()
{
  if (qword_E0D240 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMenuView;

  return v0;
}

void sub_76A688()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x8000000000B72B50;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryContentView = v0;
  unk_E72C10 = v1;
  qword_E72C18 = 0xD000000000000013;
  unk_E72C20 = 0x8000000000B72B50;
}

uint64_t *AccessibilityIdentifier.libraryContentView.unsafeMutableAddressor()
{
  if (qword_E0D248 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryContentView;
}

uint64_t static AccessibilityIdentifier.libraryContentView.getter()
{
  if (qword_E0D248 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryContentView;

  return v0;
}

void sub_76A834()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x2E7972617262694CLL;
  v3._object = 0xEC000000736E6950;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryPins = v0;
  unk_E72C30 = v1;
  strcpy(&qword_E72C38, "Library.Pins");
  unk_E72C45 = 0;
  unk_E72C46 = -5120;
}

uint64_t *AccessibilityIdentifier.libraryPins.unsafeMutableAddressor()
{
  if (qword_E0D250 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPins;
}

uint64_t static AccessibilityIdentifier.libraryPins.getter()
{
  if (qword_E0D250 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPins;

  return v0;
}

void sub_76A9E0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x567972617262694CLL;
  v3._object = 0xEB00000000776569;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryView = v0;
  unk_E72C50 = v1;
  qword_E72C58 = 0x567972617262694CLL;
  unk_E72C60 = 0xEB00000000776569;
}

uint64_t *AccessibilityIdentifier.libraryView.unsafeMutableAddressor()
{
  if (qword_E0D258 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryView;
}

uint64_t static AccessibilityIdentifier.libraryView.getter()
{
  if (qword_E0D258 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryView;

  return v0;
}

void sub_76AB8C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B736B0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryRecentlyAddedView = v0;
  unk_E72C70 = v1;
  qword_E72C78 = 0xD000000000000019;
  unk_E72C80 = 0x8000000000B736B0;
}

uint64_t static AccessibilityIdentifier.libraryRecentlyAddedView.getter()
{
  if (qword_E0D260 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryRecentlyAddedView;

  return v0;
}

void sub_76ACE8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B73630;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryArtistsListView = v0;
  unk_E72C90 = v1;
  qword_E72C98 = 0xD000000000000017;
  unk_E72CA0 = 0x8000000000B73630;
}

uint64_t static AccessibilityIdentifier.libraryArtistsListView.getter()
{
  if (qword_E0D268 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsListView;

  return v0;
}

void sub_76AE44()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x8000000000B72B20;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryArtistsDetailView = v0;
  unk_E72CB0 = v1;
  qword_E72CB8 = 0xD000000000000020;
  unk_E72CC0 = 0x8000000000B72B20;
}

uint64_t *AccessibilityIdentifier.libraryArtistsDetailView.unsafeMutableAddressor()
{
  if (qword_E0D270 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsDetailView;
}

uint64_t static AccessibilityIdentifier.libraryArtistsDetailView.getter()
{
  if (qword_E0D270 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsDetailView;

  return v0;
}

void sub_76AFF0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B73610;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryAlbumsView = v0;
  unk_E72CD0 = v1;
  qword_E72CD8 = 0xD000000000000012;
  unk_E72CE0 = 0x8000000000B73610;
}

uint64_t static AccessibilityIdentifier.libraryAlbumsView.getter()
{
  if (qword_E0D278 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryAlbumsView;

  return v0;
}

void sub_76B14C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000000B73730;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryComposersView = v0;
  unk_E72CF0 = v1;
  qword_E72CF8 = 0xD000000000000015;
  unk_E72D00 = 0x8000000000B73730;
}

uint64_t static AccessibilityIdentifier.libraryComposersView.getter()
{
  if (qword_E0D280 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryComposersView;

  return v0;
}

void sub_76B2A8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000000B73710;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryCompilationsView = v0;
  unk_E72D10 = v1;
  qword_E72D18 = 0xD000000000000018;
  unk_E72D20 = 0x8000000000B73710;
}

uint64_t static AccessibilityIdentifier.libraryCompilationsView.getter()
{
  if (qword_E0D288 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryCompilationsView;

  return v0;
}

void sub_76B404()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000000B73770;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryDownloadedView = v0;
  unk_E72D30 = v1;
  qword_E72D38 = 0xD000000000000016;
  unk_E72D40 = 0x8000000000B73770;
}

uint64_t static AccessibilityIdentifier.libraryDownloadedView.getter()
{
  if (qword_E0D290 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadedView;

  return v0;
}

void sub_76B560()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B73790;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryDownloadingView = v0;
  unk_E72D50 = v1;
  qword_E72D58 = 0xD000000000000017;
  unk_E72D60 = 0x8000000000B73790;
}

uint64_t static AccessibilityIdentifier.libraryDownloadingView.getter()
{
  if (qword_E0D298 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadingView;

  return v0;
}

void sub_76B6BC()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B73690;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryGenresView = v0;
  unk_E72D70 = v1;
  qword_E72D78 = 0xD000000000000012;
  unk_E72D80 = 0x8000000000B73690;
}

uint64_t static AccessibilityIdentifier.libraryGenresView.getter()
{
  if (qword_E0D2A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGenresView;

  return v0;
}

void sub_76B818()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000000B736D0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryMadeForYouView = v0;
  unk_E72D90 = v1;
  qword_E72D98 = 0xD000000000000016;
  unk_E72DA0 = 0x8000000000B736D0;
}

uint64_t static AccessibilityIdentifier.libraryMadeForYouView.getter()
{
  if (qword_E0D2A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMadeForYouView;

  return v0;
}

void sub_76B974()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B736F0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryMusicVideosView = v0;
  unk_E72DB0 = v1;
  qword_E72DB8 = 0xD000000000000017;
  unk_E72DC0 = 0x8000000000B736F0;
}

uint64_t static AccessibilityIdentifier.libraryMusicVideosView.getter()
{
  if (qword_E0D2B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMusicVideosView;

  return v0;
}

void sub_76BAD0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000000B73670;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryPlaylistsView = v0;
  unk_E72DD0 = v1;
  qword_E72DD8 = 0xD000000000000015;
  unk_E72DE0 = 0x8000000000B73670;
}

uint64_t static AccessibilityIdentifier.libraryPlaylistsView.getter()
{
  if (qword_E0D2B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPlaylistsView;

  return v0;
}

void sub_76BC2C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000000B73650;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.librarySongsView = v0;
  unk_E72DF0 = v1;
  qword_E72DF8 = 0xD000000000000011;
  unk_E72E00 = 0x8000000000B73650;
}

uint64_t static AccessibilityIdentifier.librarySongsView.getter()
{
  if (qword_E0D2C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySongsView;

  return v0;
}

void sub_76BD88()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B73750;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.libraryTVAndMoviesView = v0;
  unk_E72E10 = v1;
  qword_E72E18 = 0xD000000000000017;
  unk_E72E20 = 0x8000000000B73750;
}

uint64_t static AccessibilityIdentifier.libraryTVAndMoviesView.getter()
{
  if (qword_E0D2C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTVAndMoviesView;

  return v0;
}

void sub_76BEE4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000000B72B00;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.listenNowContentView = v0;
  unk_E72E30 = v1;
  qword_E72E38 = 0xD000000000000015;
  unk_E72E40 = 0x8000000000B72B00;
}

uint64_t *AccessibilityIdentifier.listenNowContentView.unsafeMutableAddressor()
{
  if (qword_E0D2D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowContentView;
}

uint64_t static AccessibilityIdentifier.listenNowContentView.getter()
{
  if (qword_E0D2D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowContentView;

  return v0;
}

void sub_76C090()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B72AE0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.browseContentView = v0;
  unk_E72E50 = v1;
  qword_E72E58 = 0xD000000000000012;
  unk_E72E60 = 0x8000000000B72AE0;
}

uint64_t *AccessibilityIdentifier.browseContentView.unsafeMutableAddressor()
{
  if (qword_E0D2D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseContentView;
}

uint64_t static AccessibilityIdentifier.browseContentView.getter()
{
  if (qword_E0D2D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseContentView;

  return v0;
}

void sub_76C23C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000000B72AC0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.radioContentView = v0;
  unk_E72E70 = v1;
  qword_E72E78 = 0xD000000000000011;
  unk_E72E80 = 0x8000000000B72AC0;
}

uint64_t *AccessibilityIdentifier.radioContentView.unsafeMutableAddressor()
{
  if (qword_E0D2E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioContentView;
}

uint64_t static AccessibilityIdentifier.radioContentView.getter()
{
  if (qword_E0D2E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioContentView;

  return v0;
}

void sub_76C3E8()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B72AA0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.searchContentView = v0;
  unk_E72E90 = v1;
  qword_E72E98 = 0xD000000000000012;
  unk_E72EA0 = 0x8000000000B72AA0;
}

uint64_t *AccessibilityIdentifier.searchContentView.unsafeMutableAddressor()
{
  if (qword_E0D2E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchContentView;
}

uint64_t static AccessibilityIdentifier.searchContentView.getter()
{
  if (qword_E0D2E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchContentView;

  return v0;
}

void sub_76C594()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000012;
  v3._object = 0x8000000000B72A80;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.videosContentView = v0;
  unk_E72EB0 = v1;
  qword_E72EB8 = 0xD000000000000012;
  unk_E72EC0 = 0x8000000000B72A80;
}

uint64_t *AccessibilityIdentifier.videosContentView.unsafeMutableAddressor()
{
  if (qword_E0D2F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.videosContentView;
}

uint64_t static AccessibilityIdentifier.videosContentView.getter()
{
  if (qword_E0D2F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.videosContentView;

  return v0;
}

void sub_76C740()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0x6979616C50776F4ELL;
  v3._object = 0xEE0077656956676ELL;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.nowPlayingView = v0;
  unk_E72ED0 = v1;
  strcpy(&qword_E72ED8, "NowPlayingView");
  unk_E72EE7 = -18;
}

uint64_t *AccessibilityIdentifier.nowPlayingView.unsafeMutableAddressor()
{
  if (qword_E0D2F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingView;
}

uint64_t static AccessibilityIdentifier.nowPlayingView.getter()
{
  if (qword_E0D2F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingView;

  return v0;
}

void sub_76C8F0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = 0x8000000000B72A60;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.bottomPlayerView = v0;
  unk_E72EF0 = v1;
  qword_E72EF8 = 0xD000000000000010;
  unk_E72F00 = 0x8000000000B72A60;
}

uint64_t *AccessibilityIdentifier.bottomPlayerView.unsafeMutableAddressor()
{
  if (qword_E0D300 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.bottomPlayerView;
}

uint64_t static AccessibilityIdentifier.bottomPlayerView.getter()
{
  if (qword_E0D300 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.bottomPlayerView;

  return v0;
}

void sub_76CA9C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000000B72A40;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.nowPlayingShuffleButton = v0;
  unk_E72F10 = v1;
  qword_E72F18 = 0xD000000000000018;
  unk_E72F20 = 0x8000000000B72A40;
}

uint64_t *AccessibilityIdentifier.nowPlayingShuffleButton.unsafeMutableAddressor()
{
  if (qword_E0D308 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingShuffleButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingShuffleButton.getter()
{
  if (qword_E0D308 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingShuffleButton;

  return v0;
}

void sub_76CC48()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x8000000000B72A20;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.nowPlayingRepeatButton = v0;
  unk_E72F30 = v1;
  qword_E72F38 = 0xD000000000000017;
  unk_E72F40 = 0x8000000000B72A20;
}

uint64_t *AccessibilityIdentifier.nowPlayingRepeatButton.unsafeMutableAddressor()
{
  if (qword_E0D310 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingRepeatButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingRepeatButton.getter()
{
  if (qword_E0D310 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingRepeatButton;

  return v0;
}

void sub_76CDF4()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B72A00;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.nowPlayingAutoPlayButton = v0;
  unk_E72F50 = v1;
  qword_E72F58 = 0xD000000000000019;
  unk_E72F60 = 0x8000000000B72A00;
}

uint64_t *AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor()
{
  if (qword_E0D318 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAutoPlayButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAutoPlayButton.getter()
{
  if (qword_E0D318 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAutoPlayButton;

  return v0;
}

void sub_76CFA0()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000000B729E0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.nowPlayingFavoriteButton = v0;
  unk_E72F70 = v1;
  qword_E72F78 = 0xD000000000000019;
  unk_E72F80 = 0x8000000000B729E0;
}

uint64_t *AccessibilityIdentifier.nowPlayingFavoriteButton.unsafeMutableAddressor()
{
  if (qword_E0D320 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingFavoriteButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingFavoriteButton.getter()
{
  if (qword_E0D320 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingFavoriteButton;

  return v0;
}

void sub_76D14C()
{
  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v0 = qword_E16040;
  v1 = *algn_E16048;

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_AB94A0(v2);

  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x8000000000B729B0;
  sub_AB94A0(v3);

  static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton = v0;
  unk_E72F90 = v1;
  qword_E72F98 = 0xD000000000000024;
  unk_E72FA0 = 0x8000000000B729B0;
}