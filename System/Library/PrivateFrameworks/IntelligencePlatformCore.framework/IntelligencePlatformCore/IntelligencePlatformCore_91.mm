void sub_1C4C81380(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1C4662D08();
    *v2 = v7;
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5438, &qword_1C4F61338);
    v4 = sub_1C444F264(a2);
    if (v5)
    {
      v6 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      sub_1C456902C(&qword_1EC0BA6F0, &qword_1C4F61340);
      sub_1C4F02458();
      sub_1C441D670((*(v8 + 56) + 40 * v6), v9);
      sub_1C456902C(&qword_1EC0C5430, &qword_1C4F61330);
      sub_1C4C8A288();
      sub_1C4F02478();
      *v2 = v8;
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
    }

    sub_1C446F170(v9, &qword_1EC0C5438, &qword_1C4F61338);
  }
}

uint64_t sub_1C4C814E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1C4662E0C();
    *v2 = v7;
    sub_1C4EF98F8();
    sub_1C43FD3F8();
    return (*(v4 + 8))(a2);
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5480, &qword_1C4F613C8);
    sub_1C45928B0();
    sub_1C4EF98F8();
    sub_1C43FD3F8();
    (*(v6 + 8))(a2);
    return sub_1C446F170(v8, &qword_1EC0C5480, &qword_1C4F613C8);
  }
}

uint64_t sub_1C4C815F0()
{
  sub_1C4418CA4();
  v1 = sub_1C456902C(&qword_1EC0C5478, &qword_1C4F613C0);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C44058BC();
  _s15NameAndRequestsVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v4 = sub_1C4435588();
  if (sub_1C44157D4(v4, v5, v6) == 1)
  {
    v7 = sub_1C43FC1C0();
    sub_1C446F170(v7, v8, &qword_1C4F613C0);
    v9 = sub_1C445EA78();
    sub_1C45929DC(v9);

    v10 = sub_1C43FD2BC();
    return sub_1C446F170(v10, v11, &qword_1C4F613C0);
  }

  else
  {
    sub_1C43FC1C0();
    sub_1C4C8C1C0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C440A224();
    sub_1C4662F4C();

    *v0 = v13;
  }

  return result;
}

void sub_1C4C81734(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B150();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C4C8A328(v6);
  *a1 = v3;
}

uint64_t static ViewGeneration.ViewClients.sharedViewClients(for:)()
{
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C4417A50();
    swift_once();
  }

  return sub_1C44E7FAC();
}

double ViewGeneration.ViewClients.anyFeatureViewClient()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C445E5B0(sub_1C4BAFBD8, 0);
  if (v3)
  {
    sub_1C4C0C2D8(v2, v3, &v6);

    v4 = v7;
    *a1 = v6;
    *(a1 + 16) = v4;
    result = *&v8;
    *(a1 + 24) = v8;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1C4C8190C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C4F012D8();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1C4F01448();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C819E0(uint64_t a1)
{
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C4417A50();
    a1 = swift_once();
  }

  v1 = *(qword_1EDE2E008 + 16);
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock((v1 + 24));
  sub_1C4C8C1A4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4C81ADC(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1C4409678(a1, v3);
  v5 = sub_1C456902C(&qword_1EC0C43A0, &qword_1C4F58C10);
  v6 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  result = sub_1C4C81C04(sub_1C4C8C184, v1, v3, v5, v6, v4, MEMORY[0x1E69E7288], &v8);
  if (!v2)
  {
    return sub_1C4BA051C(result);
  }

  return result;
}

uint64_t sub_1C4C81BA8()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4C81C04(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v14;
  v41 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v38 - v18;
  v19 = sub_1C4F01F48();
  v39 = *(v19 - 8);
  v40 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v52 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v49 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v31 = &v38 - v30;
  v32 = sub_1C4F01488();
  v59 = sub_1C4F02388();
  v54 = sub_1C4F02398();
  sub_1C4F02338();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_1C4F01478();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1C4F01FA8();
      result = sub_1C44157D4(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v24, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v24, AssociatedTypeWitness);
      sub_1C4F02378();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v21, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v21, v40);
      return v59;
    }

    (*v35)(v37, v21, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_1C4F02378();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

void sub_1C4C82270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C43FE96C();
  v67 = v21;
  v71 = v22;
  v64 = v24;
  v65 = v23;
  v63 = v25;
  v27 = v26;
  sub_1C4F00A58();
  sub_1C43FCDF8();
  v68 = v29;
  v69 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBD08();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v61 - v41;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v66 = v32;
  v43 = sub_1C4F00978();
  sub_1C442B738(v43, qword_1EDDFECB8);
  v44 = sub_1C4F00968();
  v45 = sub_1C4F01CB8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v62 = v33;
    v47 = v46;
    v48 = swift_slowAlloc();
    v61 = v42;
    v49 = v48;
    v70 = v48;
    *v47 = 136315138;
    v50 = sub_1C446A060(v71);
    v52 = v39;
    v53 = v27;
    v54 = sub_1C441D828(v50, v51, &v70);

    *(v47 + 4) = v54;
    v27 = v53;
    v39 = v52;
    _os_log_impl(&dword_1C43F8000, v44, v45, "%s: whileLocked called.", v47, 0xCu);
    sub_1C440962C(v49);
    v42 = v61;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v33 = v62;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v35 + 16))(v42, v27, v33);
  sub_1C446E1BC();
  sub_1C4EF98E8();
  v55 = *(v35 + 8);
  v55(v39, v33);
  v56 = v66;
  v57 = sub_1C43FBC98();
  v58 = MEMORY[0x1C693F750](v57);
  MEMORY[0x1EEE9AC00](v58);
  *(&v61 - 2) = 0x22000000002;
  *(&v61 - 2) = 16777600;
  v59 = v67;
  sub_1C4F00A48();
  if (v59)
  {
    (*(v68 + 8))(v56, v69);
  }

  else
  {
    v60 = (*(v68 + 8))(v56, v69);
    v63(v60);
    sub_1C4999D88(a11, v71);
  }

  v55(v42, v33);
  sub_1C43FBC80();
}

uint64_t sub_1C4C82624@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v42 = a5;
  v43 = a3;
  v41 = a2;
  v6 = sub_1C4F00A58();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EF98F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v44 = v8;
  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDDFECB8);
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CB8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v15;
    v22 = v21;
    v48 = v21;
    *v20 = 136315138;
    v23 = sub_1C446A060(v49);
    v25 = v12;
    v26 = a1;
    v27 = sub_1C441D828(v23, v24, &v48);

    *(v20 + 4) = v27;
    a1 = v26;
    v12 = v25;
    _os_log_impl(&dword_1C43F8000, v17, v18, "%s: whileLocked called.", v20, 0xCu);
    sub_1C440962C(v22);
    v15 = v39;
    MEMORY[0x1C6942830](v22, -1, -1);
    v28 = v20;
    v9 = v40;
    MEMORY[0x1C6942830](v28, -1, -1);
  }

  (*(v10 + 16))(v15, a1, v9);
  sub_1C446E1BC();
  v29 = sub_1C4EF98E8();
  v31 = v30;
  v32 = *(v10 + 8);
  v32(v12, v9);
  v33 = v44;
  v34 = MEMORY[0x1C693F750](v29, v31);
  MEMORY[0x1EEE9AC00](v34);
  *(&v39 - 2) = 0x22000000002;
  *(&v39 - 2) = 16777600;
  v35 = v45;
  sub_1C4F00A48();
  if (v35)
  {
    (*(v46 + 8))(v33, v47);
  }

  else
  {
    v36 = (*(v46 + 8))(v33, v47);
    v37 = v50;
    v41(v36);
    sub_1C4999D88(v37, v49);
  }

  return (v32)(v15, v9);
}

uint64_t sub_1C4C82A1C(void *a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  sub_1C44347EC();
  if (swift_dynamicCast())
  {
    sub_1C43FF010();
    sub_1C440BAA8(v17, v18, v19, v20);
    sub_1C440962C(a1);
    (*(v12 + 32))(v16, v9, v10);
LABEL_11:
    v34 = sub_1C4402CD0();
    v35(v34);
    goto LABEL_12;
  }

  sub_1C43FF010();
  sub_1C440BAA8(v21, v22, v23, v24);
  sub_1C446F170(v9, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v25 = sub_1C44347EC();
  if ((sub_1C4430308(v25, v26, v27, MEMORY[0x1E69E6158]) & 1) == 0)
  {
    v28 = sub_1C44347EC();
    if (sub_1C4430308(v28, v29, v30, MEMORY[0x1E69E76D8]))
    {
      goto LABEL_10;
    }

    v31 = sub_1C44347EC();
    if (sub_1C4430308(v31, v32, v33, MEMORY[0x1E69E7360]))
    {
      goto LABEL_10;
    }

    v41 = sub_1C44347EC();
    if (sub_1C4430308(v41, v42, v43, MEMORY[0x1E69E6530]))
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
LABEL_10:
        sub_1C4EFF0B8();
        sub_1C440962C(a1);
        goto LABEL_11;
      }

      __break(1u);
    }

    sub_1C440962C(a1);
    goto LABEL_12;
  }

  sub_1C4EFF0D8();
  sub_1C440962C(a1);
  if (sub_1C44157D4(v6, 1, v10) != 1)
  {
    (*(v12 + 32))(v16, v6, v10);
    goto LABEL_11;
  }

  sub_1C446F170(v6, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_12:
  sub_1C43FF010();
  return sub_1C440BAA8(v36, v37, v38, v39);
}

void sub_1C4C82CC8()
{
  sub_1C43FE96C();
  v3 = v0;
  v27 = v4;
  v6 = v5;
  v8 = v7;
  v29[3] = *MEMORY[0x1E69E9840];
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v10 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_vectorDBartifacts;
  sub_1C4441A18(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_vectorDBartifacts, v29);
  if (*(*(v0 + v10) + 16) && (sub_1C445FAA8(v8, v6), (v11 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v26 = v6;
    sub_1C4EF9888();
    v12 = [objc_opt_self() defaultManager];
    v13 = sub_1C4EF9868();
    v29[0] = 0;
    v14 = sub_1C446934C(v12, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_);

    if (v14)
    {
      v15 = v29[0];
      v16 = v27(v2);
      if (v1)
      {
        v17 = sub_1C443F3EC();
        v18(v17);
      }

      else
      {
        v22 = v16;
        sub_1C4403138(v3 + v10, v29);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *(v3 + v10);
        sub_1C4662864(v22, v8, v26, isUniquelyReferenced_nonNull_native);
        *(v3 + v10) = v28;
        swift_endAccess();

        v24 = sub_1C443F3EC();
        v25(v24);
      }
    }

    else
    {
      v19 = v29[0];
      sub_1C4EF97A8();

      swift_willThrow();
      v20 = sub_1C443F3EC();
      v21(v20);
    }
  }

  sub_1C43FBC80();
}

void sub_1C4C82F48()
{
  sub_1C43FE96C();
  v97 = v0;
  *(&v86 + 1) = v2;
  *&v86 = v3;
  v99 = v4;
  LODWORD(v100) = v5;
  v7 = v6;
  v9 = v8;
  v105 = *MEMORY[0x1E69E9840];
  v91 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v89 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v90 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v94 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v93 = v17;
  sub_1C43FBE44();
  v88 = sub_1C4EFA608();
  sub_1C43FCDF8();
  v87 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v95 = v21 - v20;
  v22 = sub_1C456902C(&qword_1EC0C5448, &unk_1C4F61348);
  v23 = sub_1C43FBD18(v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v81 - v25;
  v98 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  v96 = v32;
  v33 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v33);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C44058BC();
  *&v104 = v9;
  *(&v104 + 1) = v7;
  v102 = 46;
  v103 = 0xE100000000000000;
  v35 = sub_1C4EF9E48();
  sub_1C440BAA8(v1, 1, 1, v35);
  v84 = sub_1C4415EA8();
  sub_1C4F02028();
  v37 = v36;
  v38 = sub_1C43FE99C();
  sub_1C446F170(v38, v39, &unk_1C4F17610);
  v92 = v7;
  if (v37)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v40 = v9;
  }

  else
  {
    v40 = v9;
    v41 = sub_1C4F01448();
    v9 = MEMORY[0x1C693FEF0](v41);
    v7 = v42;
  }

  *&v104 = v9;
  *(&v104 + 1) = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  if (v100)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v100)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v43, v44);

  v45 = v104;
  v46 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts;
  v47 = v99;
  sub_1C4441A18(v99 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts, &v104);
  v48 = *(v47 + v46);
  v82 = v45;
  sub_1C44E9A8C(v45, *(&v45 + 1), v48);
  if (sub_1C44157D4(v26, 1, v98) == 1)
  {
    sub_1C446F170(v26, &qword_1EC0C5448, &unk_1C4F61348);
    swift_endAccess();
    sub_1C4EFA598();
    v49 = sub_1C4EFA528();

    if (v49)
    {
      sub_1C4F01138();
      sub_1C43FF010();
      v50 = v97;
      sub_1C4EFA5E8();
      if (v50)
      {
      }

      else
      {

        sub_1C4EFA5F8();
        sub_1C4EF98A8();
        v53 = sub_1C4EF9858();
        if (v100)
        {
          *&v104 = v53;
          *(&v104 + 1) = v54;
          v102 = 0x336574696C71732ELL;
          v103 = 0xE800000000000000;
          v101[0] = 0xD000000000000014;
          v101[1] = 0x80000001C4FBE540;
          sub_1C446047C(&v102, v101, v55, v56, v57, v58, MEMORY[0x1E69E6158]);
        }

        v59 = v89;
        v60 = v90;
        v61 = v94;
        sub_1C4EF9888();

        v62 = [objc_opt_self() defaultManager];
        v63 = sub_1C4EF9868();
        *&v104 = 0;
        v64 = sub_1C446934C(v62, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_);

        v65 = v104;
        if (v64)
        {
          v100 = v62;
          (*(v59 + 16))(v85, v45, v91);
          v104 = v86;
          type metadata accessor for ViewDatabaseArtifact();
          sub_1C43FBDBC();
          swift_allocObject();
          v66 = v65;
          sub_1C4BC40B8();
          v71 = v70;
          v97 = *(v98 + 48);
          v72 = v87;
          v73 = v83;
          v74 = v88;
          (*(v87 + 16))(v83, v95, v88);
          sub_1C440BAA8(v73, 0, 1, v74);
          *(v73 + v97) = v71;
          sub_1C43FF010();
          sub_1C440BAA8(v75, v76, v77, v78);
          sub_1C4403138(v99 + v46, &v104);

          sub_1C4C8107C(v73, v82, *(&v45 + 1));
          swift_endAccess();

          v79 = *(v59 + 8);
          v80 = v91;
          v79(v90, v91);
          v79(v94, v80);
          v79(v93, v80);
          (*(v72 + 8))(v95, v74);
        }

        else
        {
          v67 = v104;

          sub_1C4EF97A8();

          swift_willThrow();
          v68 = *(v59 + 8);
          v69 = v91;
          v68(v60, v91);
          v68(v61, v69);
          v68(v93, v69);
          (*(v87 + 8))(v95, v88);
        }
      }
    }

    else
    {

      sub_1C450B034();
      swift_allocError();
      v51 = v92;
      *v52 = v40;
      *(v52 + 8) = v51;
      *(v52 + 16) = xmmword_1C4F59250;
      *(v52 + 32) = 0;
      *(v52 + 40) = 0xE000000000000000;
      *(v52 + 48) = v104;
      *(v52 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  else
  {
    sub_1C4422530();
    sub_1C44CDA7C();
    swift_endAccess();

    sub_1C4422530();
    sub_1C44CDA7C();
    sub_1C446F170(v30, &qword_1EC0C4FF8, &qword_1C4F5E680);
  }

  sub_1C43FBC80();
}

void sub_1C4C83880()
{
  sub_1C43FE96C();
  v3 = v2;
  v25 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = _s10ViewConfigVMa(0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C443A738(v10, v8, v16, v17, v18, v19, v20, v21);
  if (!v1)
  {
    v24 = &v24;
    MEMORY[0x1EEE9AC00](v22);
    *(&v24 - 6) = v0;
    *(&v24 - 5) = v15;
    *(&v24 - 4) = v10;
    *(&v24 - 3) = v8;
    *(&v24 - 16) = v6 & 1;
    sub_1C456902C(v25, v3);
    sub_1C43FE990();
    sub_1C4EFFA58();
    sub_1C43FE0F4();
    sub_1C443C1D8(v15, v23);
  }

  sub_1C43FBC80();
}

void sub_1C4C839B4()
{
  sub_1C43FE96C();
  v37 = v0;
  v3 = v2;
  v5 = v4;
  v43 = v6;
  v7 = _s6ConfigVMa(0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for Configuration(0);
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x7247656C62617473;
  *(inited + 40) = 0xEB00000000687061;
  *(inited + 48) = 0x617247746E657665;
  *(inited + 56) = 0xEA00000000006870;
  v24 = v5[1];
  *&v42[0] = *v5;
  *(&v42[0] + 1) = v24;
  v38 = v42;
  v25 = sub_1C44CE068();
  swift_setDeallocating();
  sub_1C44DEE40();
  if (v25)
  {
    v26 = *(v3 + 24);
    if (v26)
    {
      v43[3] = _s19GraphClientProviderCMa();
      v43[4] = &off_1F4403570;
      *v43 = v26;
    }

    else
    {
      sub_1C44098F0(v37 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v22);
      v28 = type metadata accessor for GraphStore(0);
      sub_1C44099C4(v28);
      v29 = GraphStore.init(config:)(v22);
      if (!v1)
      {
        v30 = v29;
        v31 = _s19GraphClientProviderCMa();
        sub_1C43FBDBC();
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        *(v3 + 24) = v32;

        v43[3] = v31;
        v43[4] = &off_1F4403570;
        *v43 = v32;
      }
    }
  }

  else
  {
    sub_1C4438D00(v17);
    sub_1C4432D60();
    sub_1C443C1D8(v17, v27);
    sub_1C4441A18(v3 + 16, v41);
    sub_1C465CBBC();
    if (v40)
    {
      sub_1C441D670(&v39, v42);
    }

    else
    {
      sub_1C446F170(&v39, &qword_1EC0C5460, &unk_1C4F61370);
      swift_endAccess();
      sub_1C4438D00(v14);
      sub_1C4432D60();
      sub_1C443C1D8(v14, v33);
      sub_1C4C7B2D4();
      if (v1)
      {
        goto LABEL_10;
      }

      sub_1C4438D00(v11);
      v34 = *v11;
      sub_1C4432D60();
      sub_1C443C1D8(v11, v35);
      sub_1C442E860(v42, &v39);
      sub_1C4403138(v3 + 16, v41);
      sub_1C4C81220(&v39, v34);
    }

    swift_endAccess();
    sub_1C441D670(v42, v43);
  }

LABEL_10:
  sub_1C43FBC80();
}

void *sub_1C4C83D3C(uint64_t a1)
{
  v1 = a1 + 64;
  sub_1C441E82C();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v50 = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v36 = v6;
  for (i = v1; v4; v6 = v36)
  {
LABEL_6:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = (*(v50 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C442E860(*(v50 + 56) + 40 * v11, v47);
    v46[0] = v14;
    v46[1] = v13;
    v15 = v48;
    v16 = v49;
    sub_1C4409678(v47, v48);
    v17 = *(v16 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17(&v44, v15, v16);
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    sub_1C456902C(&qword_1EC0C4D88, &qword_1C4F5E230);
    if (!swift_dynamicCast())
    {

      memset(v43, 0, sizeof(v43));
      sub_1C446F170(v43, &qword_1EC0C4868, &qword_1C4F5E220);
      sub_1C44DDE2C();
      sub_1C450B034();
      swift_allocError();
      *v34 = v38;
      *(v34 + 8) = v39;
      *(v34 + 16) = 0xD00000000000002DLL;
      *(v34 + 24) = 0x80000001C4FBE6E0;
      v35 = v42;
      *(v34 + 32) = v41;
      *(v34 + 48) = v35;
      *(v34 + 64) = 7;
      swift_willThrow();
      sub_1C440962C(v40);
      sub_1C446F170(v46, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
      return v9;
    }

    sub_1C460986C(v43, v45);
    sub_1C44DDE2C();
    sub_1C4609884(v45, v43);
    swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    v18 = sub_1C43FD388();
    v20 = sub_1C445FAA8(v18, v19);
    if (__OFADD__(v9[2], (v21 & 1) == 0))
    {
      goto LABEL_21;
    }

    v22 = v20;
    v23 = v21;
    sub_1C456902C(&qword_1EC0C54A8, &unk_1C4F614D0);
    if (sub_1C4F02458())
    {
      v24 = sub_1C43FD388();
      v26 = sub_1C445FAA8(v24, v25);
      v1 = i;
      if ((v23 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v22 = v26;
      if (v23)
      {
LABEL_14:

        v9 = v44;
        v32 = (v44[7] + 48 * v22);
        sub_1C440962C(v32);
        sub_1C460986C(v43, v32);
        sub_1C440962C(v45);
        goto LABEL_15;
      }
    }

    else
    {
      v1 = i;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    v9 = v44;
    v44[(v22 >> 6) + 8] |= 1 << v22;
    v28 = (v9[6] + 16 * v22);
    *v28 = v38;
    v28[1] = v39;
    sub_1C460986C(v43, (v9[7] + 48 * v22));
    sub_1C440962C(v45);
    v29 = v9[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_22;
    }

    v9[2] = v31;
LABEL_15:
    v4 &= v4 - 1;
    sub_1C440962C(v40);
    sub_1C446F170(v46, &qword_1EC0C4FA0, &qword_1C4F5E4B8);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v4 = *(v1 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C84128(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1C4EFA598();
  if (sub_1C4EFA548())
  {
    goto LABEL_6;
  }

  sub_1C4EFA598();
  sub_1C4868210(a1, a2);
  if (v6)
  {
    v7 = sub_1C4F00FF8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21[4] = v7;
  v21[5] = v9;
  v21[0] = sub_1C4C8190C(1uLL, a1, a2);
  v21[1] = v10;
  v21[2] = v11;
  v21[3] = v12;
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01308();

  v13 = sub_1C4EFA548();

  if (v13)
  {
LABEL_6:
    sub_1C4EFA6E8();
    return sub_1C4EFA5D8();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4CB19CC(a1);
    if (v15 == 249)
    {
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v16 = sub_1C4F00978();
      sub_1C442B738(v16, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = sub_1C4F00968();
      v18 = sub_1C4F01CD8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1C441D828(a1, a2, v21);
        _os_log_impl(&dword_1C43F8000, v17, v18, "Could not attribute work to view: %s", v19, 0xCu);
        sub_1C440962C(v20);
        MEMORY[0x1C6942830](v20, -1, -1);
        MEMORY[0x1C6942830](v19, -1, -1);
      }

      sub_1C4F028D8();
      swift_getObjectType();
      sub_1C4F01988();
      swift_unknownObjectRelease();
      return swift_job_run_on_task_executor();
    }

    else
    {
      return sub_1C4CB30CC(v15, a3);
    }
  }
}

uint64_t sub_1C4C84428(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_1C4EFA598();
  sub_1C43FE99C();
  if (sub_1C4EFA548())
  {
    goto LABEL_5;
  }

  sub_1C4EFA598();
  v8 = sub_1C43FE99C();
  sub_1C4868210(v8, v9);
  if (v10)
  {
    sub_1C4F00FF8();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C8190C(1uLL, a1, a2);
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01308();

  v11 = sub_1C4EFA548();

  if (v11)
  {
LABEL_5:
    sub_1C43FC1C0();
    sub_1C4EFA6E8();
    sub_1C43FE99C();
    return sub_1C4EFA5D8();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C43FE99C();
    v14 = sub_1C4CB19CC(v13);
    if (v14 == 249)
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C4400660(&qword_1EDDFD018);
      }

      v15 = sub_1C4F00978();
      sub_1C442B738(v15, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CD8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v18 = 136315138;
        v19 = sub_1C43FE99C();
        *(v18 + 4) = sub_1C441D828(v19, v20, v21);
        _os_log_impl(&dword_1C43F8000, v16, v17, "Could not attribute work to view: %s", v18, 0xCu);
        sub_1C440962C(v22);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      return (a3)();
    }

    else
    {
      return sub_1C4CB3CC0(a3, a4, v14);
    }
  }
}

uint64_t sub_1C4C846C4()
{
  v1 = v0;
  sub_1C4F02248();
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010](0xD000000000000010);
  MEMORY[0x1C6940010](v1[2], v1[3]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[4], v1[5]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[6], v1[7]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[8], v1[9]);
  sub_1C43FDEF8();
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](v1[10], v1[11]);
  MEMORY[0x1C6940010](0x6553746F6F62202CLL, 0xEF203A6E6F697373);
  MEMORY[0x1C6940010](v1[12], v1[13]);
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4C84844()
{
  sub_1C4404078();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v5 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v6 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v7 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (v1[10] == v0[10] && v1[11] == v0[11])
  {
    return 1;
  }

  return sub_1C4F02938();
}

void static ViewGeneration.start(configuration:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v5 = type metadata accessor for Configuration(0);
  v6 = *(v1 + *(v5 + 20));
  if (qword_1EDDFEC88 != -1)
  {
    v16 = *(v1 + *(v5 + 20));
    v5 = swift_once();
    v6 = v16;
  }

  v7 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEC90, v6), xmmword_1EDDFEC90));
  if (v7.i32[0] & v7.i32[1])
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DDF8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "ViewGeneration: system is in no-op mode.", v11, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C43FE9F0();

    sub_1C44098F0(v12, v13);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    *&v15[-16] = v1;
    sub_1C4C82624(v1, sub_1C4C88E28, &v15[-32], 2, v3);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4C84D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  v6 = sub_1C442B738(v5, qword_1EDE2DDF8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "ViewMigration: Checking migration state for views", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }

  result = sub_1C44273D4();
  if (!v2)
  {
    v17 = result;
    sub_1C4BB35B4(v11, v12, v13, v14, v15, v16, v70);
    sub_1C4C8C0AC(v70, v69);
    v68 = v6;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    sub_1C4C8C0E4(v70);
    v67 = a2;
    if (os_log_type_enabled(v18, v19))
    {
      v66 = v17;
      v20 = a1;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v72 = v22;
      *v21 = 136315138;
      sub_1C4C8C0AC(v70, v69);
      v23 = sub_1C4C846C4();
      v25 = v24;
      sub_1C4C8C0E4(v70);
      v26 = sub_1C441D828(v23, v25, &v72);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1C43F8000, v18, v19, "ViewMigration: Prev migration values: %s", v21, 0xCu);
      sub_1C440962C(v22);
      MEMORY[0x1C6942830](v22, -1, -1);
      v27 = v21;
      a1 = v20;
      v17 = v66;
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    sub_1C4C85538();
    sub_1C4C8C0AC(v71, v69);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();
    sub_1C4C8C0E4(v71);
    v65 = a1;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v72 = v31;
      *v30 = 136315138;
      sub_1C4C8C0AC(v71, v69);
      v32 = sub_1C4C846C4();
      v34 = v33;
      sub_1C4C8C0E4(v71);
      v35 = sub_1C441D828(v32, v34, &v72);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1C43F8000, v28, v29, "ViewMigration: Curr migration values: %s", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    v36 = sub_1C4C85954();
    sub_1C4C8C0E4(v70);
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CF8();
    LODWORD(v66) = v36;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v69[0] = v40;
      *v39 = 136315138;
      v64 = sub_1C4C85A88(v36);
      v42 = v41;
      v43 = sub_1C441D828(v64, v41, v69);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1C43F8000, v37, v38, "ViewMigration: Migration option: %s", v39, 0xCu);
      sub_1C440962C(v40);
      MEMORY[0x1C6942830](v40, -1, -1);
      v44 = v39;
      v45 = v64;
      MEMORY[0x1C6942830](v44, -1, -1);
    }

    else
    {

      v45 = sub_1C4C85A88(v36);
      v42 = v46;
    }

    v47 = v65;
    if (v45 == 1885956979 && v42 == 0xE400000000000000)
    {
    }

    else
    {
      v49 = sub_1C4F02938();

      if ((v49 & 1) == 0)
      {
        sub_1C4C3DE1C();
        if (v50)
        {
          v66 = v42;
          v57 = sub_1C4F00968();
          v58 = sub_1C4F01CF8();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = v65;
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_1C43F8000, v57, v58, "ViewMigration: Bringing up view clients", v60, 2u);
            v61 = v60;
            v47 = v59;
            MEMORY[0x1C6942830](v61, -1, -1);
          }

          if (qword_1EDDFF2A0 != -1)
          {
            swift_once();
          }

          sub_1C44E7FAC();
          sub_1C4C85B1C();
          sub_1C4EFFA58();
          sub_1C4949780();
          MEMORY[0x1EEE9AC00](v62);
          v63[2] = v17;
          v63[3] = v71;

          sub_1C446C37C(sub_1C4C8C114, v63);

          sub_1C4C8C0E4(v71);

          v42 = v66;
          goto LABEL_23;
        }
      }
    }

    sub_1C4C8C0E4(v71);
LABEL_23:
    sub_1C4EFAEB8();
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CF8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69[0] = v54;
      *v53 = 136315138;
      v55 = sub_1C441D828(v45, v42, v69);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_1C43F8000, v51, v52, "ViewMigration: Completed view migration [option: %s]", v53, 0xCu);
      sub_1C440962C(v54);
      MEMORY[0x1C6942830](v54, -1, -1);
      v56 = v53;
      v47 = v65;
      MEMORY[0x1C6942830](v56, -1, -1);
    }

    return sub_1C44098F0(v47, v67);
  }

  return result;
}

void sub_1C4C85538()
{
  sub_1C43FE96C();
  v2 = v1;
  v71 = *MEMORY[0x1E69E9840];
  v3 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v66 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4F00DC8();
  sub_1C43FCDF8();
  v67 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v62 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  sub_1C4C85D5C(v16, v17, v18, v19, v20, v21, v22, v23, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v65 = v24;
  v68 = v25;
  sub_1C4C8689C();
  v64 = v26;
  v69 = v27;
  sub_1C4C86ACC();
  v63 = v28;
  v30 = v29;
  if (qword_1EDDFE3A8 != -1)
  {
    swift_once();
  }

  v31 = sub_1C4ABFA6C();
  if (v0)
  {
  }

  else
  {
    v60 = v9;
    v61 = v30;
    v32 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
    os_unfair_lock_lock(v32 + 6);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    os_unfair_lock_unlock(v32 + 6);

    v33 = objc_opt_self();
    sub_1C4C8C130();
    v34 = sub_1C4F01658();

    v70 = 0;
    v35 = [v33 archivedDataWithRootObject:v34 requiringSecureCoding:0 error:&v70];

    v36 = v70;
    if (v35)
    {
      sub_1C4EF9A68();

      sub_1C441A948();
      sub_1C4C8C218(v37, 255, v38, MEMORY[0x1E6966618]);
      sub_1C4415864();
      sub_1C4F00DB8();
      v39 = sub_1C4410CBC();
      sub_1C44344B8(v39, v40);
      v41 = sub_1C4410CBC();
      sub_1C4498FD8(v41, v42, v8);
      v43 = sub_1C4410CBC();
      sub_1C4434000(v43, v44);
      sub_1C4415864();
      sub_1C4F00DA8();
      (*(v66 + 8))(v8, v3);
      v45 = v62;
      (*(v67 + 16))(v62, v15, v60);
      sub_1C44D5F88(v45);
      sub_1C442F450();
      v66 = sub_1C4EF9A48();
      v62 = v46;
      v47 = sub_1C43FC1C0();
      sub_1C4434000(v47, v48);
      v49 = sub_1C4410CBC();
      sub_1C4434000(v49, v50);
      v51 = sub_1C4422A94();
      v52(v51);
      v53 = sub_1C4BB39F0();
      v54 = v68;
      *v2 = v65;
      v2[1] = v54;
      v55 = v69;
      v2[2] = v64;
      v2[3] = v55;
      v56 = v61;
      v2[4] = v63;
      v2[5] = v56;
      v57 = v62;
      v2[6] = v66;
      v2[7] = v57;
      v2[8] = 12849;
      v2[9] = 0xE200000000000000;
      v2[10] = 52;
      v2[11] = 0xE100000000000000;
      v2[12] = v53;
      v2[13] = v58;
    }

    else
    {
      v59 = v36;

      sub_1C4EF97A8();

      swift_willThrow();
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4C85954()
{
  sub_1C4404078();
  v3 = *(v2 + 80);
  v4 = v1[11];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v6 = v0[11];
  if (!v5)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      if ((v6 & 0xF00000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v0[10] & 0xFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_4;
    }

    return 2;
  }

LABEL_4:
  v7 = v3 == v0[10] && v4 == v6;
  if (!v7 && (sub_1C4F02938() & 1) == 0)
  {
    return 3;
  }

  v8 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v8 && (sub_1C4F02938() & 1) == 0)
  {
    return 2;
  }

  v9 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v9 && (sub_1C4F02938() & 1) == 0)
  {
    return 2;
  }

  v10 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v10 && (sub_1C4F02938() & 1) == 0)
  {
    return 2;
  }

  v11 = *v1 == *v0 && v1[1] == v0[1];
  result = 1;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {
    v12 = v1[12] == v0[12] && v1[13] == v0[13];
    if (v12 || (sub_1C4F02938() & 1) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4C85A88(char a1)
{
  result = 1885956979;
  switch(a1)
  {
    case 1:
      result = 0x6C616D726F6ELL;
      break;
    case 2:
      result = 0x6563726F66;
      break;
    case 3:
      result = 0x7261656C63;
      break;
    case 4:
      result = 0x654465746F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C85B1C()
{
  v1 = *(v0 + 16);
  v11[2] = sub_1C4C88230;
  v11[3] = 0;
  v11[4] = v1;
  result = sub_1C49A5858(sub_1C498DB0C, v11);
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  for (i = result + 48; ; i += 24)
  {
    if (v5 == v4)
    {
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    swift_bridgeObjectRetain_n();
    v7._countAndFlagsBits = sub_1C43FE990();
    ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v7, 0);

    if (v8 || (v9._countAndFlagsBits = sub_1C43FE990(), ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v9, 1), v10))
    {
    }

    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C85C50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DDF8);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "ViewMigration: Storing new migration version values", v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  return sub_1C4BB38D0(a1, a3);
}

void sub_1C4C85D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v133 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v132 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v130 = v25 - v24;
  sub_1C43FBE44();
  v135 = sub_1C4F00DC8();
  sub_1C43FCDF8();
  v134 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  v131 = v29;
  sub_1C43FBE44();
  v138 = sub_1C4F01188();
  sub_1C43FCDF8();
  v137 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v136 = v33 - v32;
  v149 = sub_1C456902C(&qword_1EC0BA820, &unk_1C4F613D0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v148 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v147 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v146 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v145 = v41;
  v150 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  sub_1C43FCDF8();
  v144 = v42;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  v157 = &v128 - v44;
  v45 = 0xE000000000000000;
  *&v160 = 0;
  *(&v160 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(&v160, "bundleVersion:");
  HIBYTE(v160) = -18;
  v46 = sub_1C4BA1184(0x656C646E75424643, 0xEF6E6F6973726556);
  if (v47)
  {
    v45 = v47;
  }

  else
  {
    v46 = 0;
  }

  MEMORY[0x1C6940010](v46, v45);

  v48 = MEMORY[0x1E69E7CC0];
  sub_1C43FCB04();
  sub_1C443D664();
  v50 = v49;
  v51 = *(v49 + 24);
  if (*(v49 + 16) >= v51 >> 1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    sub_1C444B37C();
    sub_1C4BA32C0(&v160);
    v52 = *(&v160 + 1);
    if (*(&v160 + 1) >= 2uLL)
    {
      v53 = v160;
      v54 = v161;
      v55 = v162;
      v56 = v163;
      v57 = v164;
      *&v160 = 0x614874696D6D6F63;
      *(&v160 + 1) = 0xEB000000003A6873;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v53, v52);

      v58 = v160;
      v59 = v50;
      v60 = *(v50 + 16);
      v61 = v59;
      v62 = *(v59 + 24);
      v155 = v55;
      v156 = v54;
      if (v60 >= v62 >> 1)
      {
        sub_1C43FCFE8(v62);
        sub_1C443D664();
        v61 = v126;
      }

      *(v61 + 16) = v60 + 1;
      v63 = v61 + 16 * v60;
      v50 = v61;
      *(v63 + 32) = v58;
      *&v160 = 0;
      *(&v160 + 1) = 0xE000000000000000;
      sub_1C4F02248();

      *&v160 = 0xD000000000000012;
      *(&v160 + 1) = 0x80000001C4FBE670;
      v158 = v56;
      v159 = v57;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01198();
      sub_1C4C8C174(v53, v52);
      v64 = sub_1C4422A94();
      MEMORY[0x1C6940010](v64);

      sub_1C441434C();
      if (v66)
      {
        sub_1C43FF640(v65);
        sub_1C443D664();
        v50 = v127;
      }

      v48 = MEMORY[0x1E69E7CC0];
      sub_1C444B37C();
    }

    static VersionInfo.modificationDates.getter();
    v68 = v67;
    v69 = *(v67 + 16);
    if (!v69)
    {
      break;
    }

    v128 = v50;
    *&v160 = v48;
    sub_1C459F0D0();
    v70 = v160;
    v73 = sub_1C4703354();
    v74 = 0;
    v75 = v68 + 64;
    v140 = v71;
    v139 = v68 + 72;
    v141 = v69;
    v142 = v68 + 64;
    v51 = &a16;
    v143 = v68;
    while ((v73 & 0x8000000000000000) == 0)
    {
      v51 = 1 << *(v68 + 32);
      if (v73 >= v51)
      {
        break;
      }

      v51 = *(v75 + 8 * (v73 >> 6));
      if ((v51 & (1 << v73)) == 0)
      {
        goto LABEL_39;
      }

      v51 = *(v68 + 36);
      if (v51 != v71)
      {
        goto LABEL_40;
      }

      v154 = 1 << v73;
      v155 = v73 >> 6;
      v152 = v74;
      v153 = v71;
      v151 = v72;
      v76 = v149;
      v77 = *(v149 + 48);
      v156 = v70;
      v78 = *(v68 + 56);
      v79 = *(*(v68 + 48) + v73);
      v80 = v145;
      *v145 = v79;
      v81 = sub_1C4EF9CD8();
      sub_1C43FCDF8();
      v83 = v82;
      (*(v82 + 16))(&v80[v77], v78 + *(v84 + 72) * v73, v81);
      v85 = v146;
      *v146 = *v80;
      v86 = *(v83 + 32);
      v86(&v85[*(v76 + 48)], &v80[v77], v81);
      v87 = *(v150 + 48);
      v48 = v147;
      sub_1C44DDE2C();
      v88 = *(v76 + 48);
      *v157 = *v48;
      v89 = v148;
      sub_1C44CDA7C();
      v86(&v157[v87], (v89 + *(v76 + 48)), v81);
      v70 = v156;
      (*(v83 + 8))(&v48[v88], v81);
      *&v160 = v70;
      v91 = *(v70 + 16);
      v90 = *(v70 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_1C43FCFE8(v90);
        sub_1C459F0D0();
        v70 = v160;
      }

      *(v70 + 16) = v91 + 1;
      sub_1C44CDA7C();
      v68 = v143;
      v51 = *(v143 + 32);
      v92 = 1 << v51;
      if (v73 >= 1 << v51)
      {
        goto LABEL_41;
      }

      v75 = v142;
      v51 = *(v142 + 8 * v155);
      if ((v51 & v154) == 0)
      {
        goto LABEL_42;
      }

      if (*(v143 + 36) != v153)
      {
        goto LABEL_43;
      }

      v93 = v51 & (-2 << (v73 & 0x3F));
      if (v93)
      {
        v92 = __clz(__rbit64(v93)) | v73 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v94 = v155 << 6;
        v95 = v155 + 1;
        v96 = (v139 + 8 * v155);
        while (v95 < (v92 + 63) >> 6)
        {
          v97 = *v96++;
          v48 = v97;
          v94 += 64;
          ++v95;
          if (v97)
          {
            sub_1C440951C(v73, v153, v151 & 1);
            v92 = __clz(__rbit64(v48)) + v94;
            goto LABEL_29;
          }
        }

        sub_1C440951C(v73, v153, v151 & 1);
      }

LABEL_29:
      v72 = 0;
      v74 = v152 + 1;
      v73 = v92;
      v71 = v140;
      v51 = &a14;
      if (v152 + 1 == v141)
      {

        v50 = v128;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    sub_1C43FF640(v51);
    sub_1C443D664();
    v50 = v124;
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_32:
  *&v160 = v70;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C81734(&v160);

  MEMORY[0x1C6940380](v160, v150);

  v98 = v136;
  sub_1C4F01178();
  sub_1C4422530();
  sub_1C4F01148();
  v100 = v99;

  (*(v137 + 8))(v98, v138);
  if (v100 >> 60 == 15)
  {
    v101 = 0;
    v102 = 0;
  }

  else
  {
    sub_1C441A948();
    sub_1C4C8C218(v103, 255, v104, MEMORY[0x1E6966618]);
    v105 = v130;
    sub_1C43FE5F8();
    sub_1C4F00DB8();
    v106 = sub_1C4402CD0();
    sub_1C44344B8(v106, v107);
    v108 = sub_1C4402CD0();
    sub_1C4498FD8(v108, v109, v105);
    v110 = sub_1C4402CD0();
    sub_1C441DFEC(v110, v111);
    v112 = v131;
    sub_1C43FE5F8();
    sub_1C4F00DA8();
    v113 = sub_1C43FE990();
    v114(v113);
    v115 = v129;
    (*(v134 + 16))(v129, v112, v135);
    sub_1C44D5F88(v115);
    sub_1C442F450();
    v101 = sub_1C4EF9A48();
    v102 = v116;
    v117 = sub_1C43FC1C0();
    sub_1C4434000(v117, v118);
    v119 = sub_1C4402CD0();
    sub_1C441DFEC(v119, v120);
    v121 = sub_1C4415864();
    v122(v121);
  }

  *&v160 = 0;
  *(&v160 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FBE650);
  v158 = v101;
  v159 = v102;
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C4F02438();

  sub_1C441434C();
  if (v66)
  {
    sub_1C43FF640(v123);
    sub_1C443D664();
    v50 = v125;
  }

  sub_1C444B37C();
  *&v160 = v50;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  sub_1C43FBC98();
  sub_1C43FE9F0();
}

void sub_1C4C8689C()
{
  sub_1C43FBD3C();
  v22 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  static VersionInfo.featureFlags.getter();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v8, 0);
    v9 = v25;
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v20 = *(v10 + 56);
    v21 = v11;
    do
    {
      v21(v5, v12, v22);
      sub_1C4C8C218(&qword_1EDDEFE88, 255, MEMORY[0x1E69A9D80], MEMORY[0x1E69A9D90]);
      sub_1C4F01578();
      (*(v10 - 8))(v5, v22);
      v14 = *(v25 + 16);
      v13 = *(v25 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = sub_1C43FCFE8(v13);
        sub_1C44CD9C0(v16, v14 + 1, 1);
      }

      *(v25 + 16) = v14 + 1;
      v15 = v25 + 16 * v14;
      *(v15 + 32) = v23;
      *(v15 + 40) = v24;
      v12 += v20;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1C6940380](v9, MEMORY[0x1E69E6158]);
  v19 = v18;

  MEMORY[0x1C6940010](v17, v19);

  sub_1C43FE9F0();
}

void sub_1C4C86ACC()
{
  sub_1C43FBD3C();
  v88 = *MEMORY[0x1E69E9840];
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FD230();
  sub_1C43FBE44();
  v80 = sub_1C4F00DC8();
  sub_1C43FCDF8();
  v76 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD230();
  v78 = v6;
  sub_1C43FBE44();
  v79 = sub_1C4F01188();
  sub_1C43FCDF8();
  v74 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v85[0] = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 11, 0);
  v12 = 0;
  v13 = v85[0];
  sub_1C441B588();
  sub_1C4430768();
  sub_1C447FA9C();
  sub_1C4423D30();
  sub_1C44415E8();
  sub_1C4450868();
  do
  {
    v24 = 0xE400000000000000;
    v25 = 1702259052;
    switch(byte_1F43D9F00[v12 + 32])
    {
      case 1u:
        v25 = 1701736302;
        break;
      case 2u:
        v24 = 0xE500000000000000;
        v25 = v18;
        break;
      case 3u:
        v25 = 0xD000000000000013;
        v24 = 0x80000001C4F86260;
        break;
      case 4u:
        v24 = 0xE600000000000000;
        v25 = v19;
        break;
      case 5u:
        v25 = v20;
        goto LABEL_11;
      case 6u:
        v25 = v21;
LABEL_11:
        v24 = v17;
        break;
      case 7u:
        v24 = 0xE600000000000000;
        v25 = v22;
        break;
      case 8u:
        v25 = v14;
        v24 = v23;
        break;
      case 9u:
        v25 = v16;
        v24 = v15;
        break;
      case 0xAu:
        v25 = 0xD000000000000013;
        v24 = 0x80000001C4F862C0;
        break;
      default:
        break;
    }

    v85[0] = v13;
    v27 = *(v13 + 16);
    v26 = *(v13 + 24);
    if (v27 >= v26 >> 1)
    {
      v29 = sub_1C43FCFE8(v26);
      sub_1C44CD9C0(v29, v27 + 1, 1);
      sub_1C4450868();
      sub_1C44415E8();
      sub_1C4423D30();
      sub_1C447FA9C();
      sub_1C4430768();
      sub_1C441B588();
      v19 = 0x796C6B656577;
      v18 = 0x796C696164;
      v17 = 0xEB00000000737275;
      v13 = v85[0];
    }

    ++v12;
    *(v13 + 16) = v27 + 1;
    v28 = v13 + 16 * v27;
    *(v28 + 32) = v25;
    *(v28 + 40) = v24;
  }

  while (v12 != 11);
  v85[0] = v13;

  sub_1C44ECB2C(v85);

  v30 = 0;
  v31 = v85[0];
  v82 = *(v85[0] + 16);
  v32 = (v74 + 8);
  v73 = (v76 + 16);
  v75 = (v76 + 8);
  v33 = v85[0] + 40;
  v81 = MEMORY[0x1E69E7CC0];
  v34 = v79;
  v72 = v85[0] + 40;
LABEL_18:
  v35 = v33 + 16 * v30;
  while (v82 != v30)
  {
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01178();
    v36 = sub_1C4F01148();
    v38 = v37;
    (*v32)(v11, v34);
    if (v38 >> 60 != 15)
    {
      sub_1C441A948();
      sub_1C4C8C218(&qword_1EDDFEAD0, 255, v39, MEMORY[0x1E6966618]);
      sub_1C4F00DB8();
      ++v30;
      switch(v38 >> 62)
      {
        case 1uLL:
          if (v36 >> 32 < v36)
          {
            goto LABEL_45;
          }

          if (!sub_1C4EF9538() || !__OFSUB__(v36, sub_1C4EF9568()))
          {
            goto LABEL_35;
          }

          goto LABEL_48;
        case 2uLL:
          v40 = *(v36 + 16);
          v68 = *(v36 + 24);

          if (sub_1C4EF9538() && __OFSUB__(v40, sub_1C4EF9568()))
          {
            goto LABEL_47;
          }

          if (__OFSUB__(v68, v40))
          {
            goto LABEL_46;
          }

LABEL_35:
          sub_1C4EF9558();
LABEL_36:
          sub_1C4F00D98();
          sub_1C441DFEC(v36, v38);
          sub_1C4F00DA8();
          v41 = sub_1C43FC1C0();
          v42(v41);
          v86 = v80;
          v87 = sub_1C4C8C218(&qword_1EDDFEAD8, 255, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
          v43 = sub_1C4422F90(v85);
          (*v73)(v43, v78, v80);
          sub_1C4409678(v85, v86);
          sub_1C4EF9688();
          sub_1C440962C(v85);
          v44 = sub_1C4EF9A48();
          v77 = v45;
          sub_1C4434000(v83, v84);

          sub_1C441DFEC(v36, v38);
          (*v75)(v78, v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C443D664();
            v81 = v49;
          }

          v47 = *(v81 + 16);
          v46 = *(v81 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1C43FF640(v46);
            sub_1C443D664();
            v81 = v50;
          }

          *(v81 + 16) = v47 + 1;
          v48 = v81 + 16 * v47;
          *(v48 + 32) = v44;
          *(v48 + 40) = v77;
          v34 = v79;
          v33 = v72;
          break;
        case 3uLL:
          memset(v85, 0, 14);
          goto LABEL_36;
        default:
          v85[0] = v36;
          LOWORD(v85[1]) = v38;
          BYTE2(v85[1]) = BYTE2(v38);
          BYTE3(v85[1]) = BYTE3(v38);
          BYTE4(v85[1]) = BYTE4(v38);
          BYTE5(v85[1]) = BYTE5(v38);
          goto LABEL_36;
      }

      goto LABEL_18;
    }

    v35 += 16;
    ++v30;
  }

  v85[0] = v81;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  sub_1C4F01178();
  sub_1C4F01148();
  v52 = v51;

  (*v32)(v11, v34);
  if (v52 >> 60 != 15)
  {
    sub_1C441A948();
    sub_1C4C8C218(v53, 255, v54, MEMORY[0x1E6966618]);
    sub_1C43FE5F8();
    sub_1C4F00DB8();
    v55 = sub_1C4402CD0();
    sub_1C44344B8(v55, v56);
    v57 = sub_1C4402CD0();
    sub_1C4498FD8(v57, v58, v71);
    v59 = sub_1C4402CD0();
    sub_1C441DFEC(v59, v60);
    sub_1C43FE5F8();
    sub_1C4F00DA8();
    v61 = sub_1C43FE990();
    v62(v61);
    (*v73)(v69, v70, v80);
    v63 = sub_1C44D5F88(v69);
    v65 = v64;
    sub_1C4EF9A48();
    sub_1C4434000(v63, v65);
    v66 = sub_1C4402CD0();
    sub_1C441DFEC(v66, v67);
    (*v75)(v70, v80);
  }

  sub_1C440A9B8();
  sub_1C43FE9F0();
}

uint64_t sub_1C4C87510()
{
  v0 = 0x6C6F6F547069;
  v1 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  sub_1C44DDE2C();
  v7 = 0xE600000000000000;
  v8 = 0x6C6F6F547069;
  switch(*v6)
  {
    case 1:
      v7 = 0x80000001C4F87960;
      v8 = 0xD000000000000018;
      break;
    case 2:
      v7 = 0x80000001C4F87980;
      v8 = 0xD00000000000001DLL;
      break;
    case 3:
      v7 = 0x80000001C4F879A0;
      v8 = 0xD00000000000001BLL;
      break;
    case 4:
      break;
    case 5:
      v7 = 0xE300000000000000;
      v8 = 7368801;
      break;
    default:
      v7 = 0x80000001C4F87940;
      v8 = 0xD000000000000014;
      break;
  }

  sub_1C44DDE2C();
  v9 = 0xE600000000000000;
  switch(*v3)
  {
    case 1:
      v9 = 0x80000001C4F87960;
      v0 = 0xD000000000000018;
      break;
    case 2:
      v9 = 0x80000001C4F87980;
      v0 = 0xD00000000000001DLL;
      break;
    case 3:
      v9 = 0x80000001C4F879A0;
      v0 = 0xD00000000000001BLL;
      break;
    case 4:
      break;
    case 5:
      v9 = 0xE300000000000000;
      v0 = 7368801;
      break;
    default:
      v9 = 0x80000001C4F87940;
      v0 = 0xD000000000000014;
      break;
  }

  if (v8 == v0 && v7 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1C4F02938();
  }

  v12 = *(v1 + 48);
  v13 = sub_1C4EF9CD8();
  v14 = *(*(v13 - 8) + 8);
  v14(&v3[v12], v13);
  v14(&v6[v12], v13);
  return v11 & 1;
}

uint64_t sub_1C4C87850(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    return swift_endAccess();
  }

  sub_1C43FE83C();
  if ((v2 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();

  sub_1C4EFFA58();
}

uint64_t sub_1C4C87920(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifactBaseURL;
  v6 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  (*(v7 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_viewDb) = a2;

  sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  sub_1C43FD2BC();
  *(v2 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts) = sub_1C4F00F28();
  sub_1C4EFC288();
  sub_1C43FD2BC();
  v8 = sub_1C4F00F28();

  v9 = sub_1C4402CD0();
  v10(v9);
  *(v2 + OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_vectorDBartifacts) = v8;
  return v2;
}

void sub_1C4C87A68()
{
  sub_1C43FBD3C();
  sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  sub_1C43FCDF8();
  v21 = v1;
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBFDC();
  v20 = v2;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBF38();
  v19 = v4;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD230();
  v18 = v6;
  v7 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifacts;
  swift_beginAccess();
  v8 = *(v0 + v7) + 64;
  sub_1C441E82C();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  if (v11)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      sub_1C43FE9F0();
      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      do
      {
LABEL_7:
        v11 &= v11 - 1;
        sub_1C44DDE2C();
        v16 = *(v21 + 48);
        v17 = *(v18 + v16);
        sub_1C44CDA7C();
        *(v19 + v16) = v17;
        sub_1C44DDE2C();

        sub_1C4EFAEB8();
        sub_1C446F170(v19, &qword_1EC0B8588, &qword_1C4F0E310);

        sub_1C446F170(v20, &qword_1EC0C4FF8, &qword_1C4F5E680);
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1C4C87CBC()
{
  v1 = OBJC_IVAR____TtCCO24IntelligencePlatformCore14ViewGeneration11ViewClients13ArtifactCache_artifactBaseURL;
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C4C87D40()
{
  sub_1C4C87CBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C87D98()
{

  return v0;
}

uint64_t sub_1C4C87DC8()
{
  sub_1C4C87D98();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C87E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_lockbox) = a2;
  *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService) = a3;
  sub_1C4403A98();
  sub_1C4C8C1C0();
  return v3;
}

void sub_1C4C87E58()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = type metadata accessor for Configuration(0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FBE44();
  v6 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = objc_autoreleasePoolPush();
  sub_1C4EF9888();
  objc_autoreleasePoolPop(v16);
  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C44273D4();
  if (v1)
  {
    sub_1C442D7A0();
    sub_1C443C1D8(v18, v19);
    (*(v8 + 8))(v15, v6);
  }

  else
  {
    v38 = v3;
    v39 = v0;
    v36 = *(v8 + 16);
    v20 = sub_1C4422A94();
    v21(v20);
    v22 = type metadata accessor for ViewGeneration.ViewClients.ArtifactCache(0);
    v23 = sub_1C44099C4(v22);

    v35 = v17;
    sub_1C4C87920(v12, v17);
    type metadata accessor for ViewGeneration.ViewClients.GuardedData();
    v24 = swift_allocObject();
    v24[2] = MEMORY[0x1E69E7CC8];
    v24[3] = 0;
    v24[4] = v23;
    v37 = v23;
    v40 = v24;
    v25 = sub_1C456902C(&qword_1EC0C5498, &qword_1C4F61408);
    sub_1C44099C4(v25);

    v26 = sub_1C4EFFA68();
    v27 = sub_1C4422A94();
    v36(v27);
    v28 = objc_allocWithZone(type metadata accessor for ViewAccessRequester(0));

    v36 = sub_1C4BA97E0(v29, v12);
    v30 = type metadata accessor for ViewGeneration.ViewClients.ArtifactDatabaseProvider();
    sub_1C43FBDBC();
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    v41 = v30;
    v42 = sub_1C4C8C218(&unk_1EDDFF290, v32, type metadata accessor for ViewGeneration.ViewClients.ArtifactDatabaseProvider, &unk_1C4F612E4);
    v40 = v31;
    v33 = objc_allocWithZone(sub_1C4EFDA28());

    v34 = sub_1C4EFDA18();

    (*(v8 + 8))(v15, v6);
    sub_1C4403A98();
    sub_1C4C8C1C0();
    sub_1C44099C4(v39);
    sub_1C4C87E0C(v29, v26, v34);
  }

  sub_1C43FBC80();
}

uint64_t ViewGeneration.ViewClients.deinit()
{

  sub_1C442D7A0();
  sub_1C443C1D8(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C4C88230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4BABFC8(0, 0, a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1C4C88298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v23 = a5;
    v19 = a6;
    v16 = v21;
    v17 = v22;
    v18[1] = sub_1C4409678(v20, v21);
    sub_1C4438D00(v14);
    (*(v17 + 32))(a4, v23, v14, *(v15 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v19 & 1, v16, v17);
    sub_1C443C1D8(v14, _s6ConfigVMa);
    sub_1C440962C(v20);
  }
}

void sub_1C4C88428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = _s10ViewConfigVMa(0);
  v29 = sub_1C43FBD18(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v30 = objc_autoreleasePoolPush();
  sub_1C443A738(v27, v25, v31, v32, v33, v34, v35, v36);
  if (!v20)
  {
    a10 = &a9;
    MEMORY[0x1EEE9AC00](v37);
    sub_1C4EFFA58();
    sub_1C43FE0F4();
    sub_1C443C1D8(v21, v38);
  }

  objc_autoreleasePoolPop(v30);
  sub_1C43FBC80();
}

void sub_1C4C8854C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v23 = a5;
    v19 = a6;
    v16 = v21;
    v17 = v22;
    v18[1] = sub_1C4409678(v20, v21);
    sub_1C4438D00(v14);
    (*(v17 + 40))(a4, v23, v14, *(v15 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v19 & 1, v16, v17);
    sub_1C443C1D8(v14, _s6ConfigVMa);
    sub_1C440962C(v20);
  }
}

void sub_1C4C886DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v23 = a5;
    v19 = a6;
    v16 = v21;
    v17 = v22;
    v18[1] = sub_1C4409678(v20, v21);
    sub_1C4438D00(v14);
    (*(v17 + 48))(a4, v23, v14, *(v15 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v19 & 1, v16, v17);
    sub_1C443C1D8(v14, _s6ConfigVMa);
    sub_1C440962C(v20);
  }
}

void sub_1C4C88840()
{
  sub_1C43FE96C();
  v2 = _s10ViewConfigVMa(0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1C4415864();
  sub_1C443A738(v5, v6, v7, v8, v9, v10, v11, v12);
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v13);
    sub_1C4EFFA58();
    sub_1C43FE0F4();
    sub_1C443C1D8(v1, v14);
  }

  objc_autoreleasePoolPop(v4);
  sub_1C43FBC80();
}

void sub_1C4C88960(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v23 = a6;
    v19 = a5;
    v16 = v21;
    v17 = v22;
    v18[1] = sub_1C4409678(v20, v21);
    sub_1C4438D00(v14);
    (*(v17 + 56))(a4, v19, v14, v23, *(v15 + 32), *(a2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), v16, v17);
    sub_1C443C1D8(v14, _s6ConfigVMa);
    sub_1C440962C(v20);
  }
}

void sub_1C4C88AEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v35 = a5;
  v30 = a4;
  v11 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v28[1] = a3;
    v29 = v14;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 32) = 0x7247656C62617473;
    *(inited + 40) = 0xEB00000000687061;
    *(inited + 48) = 0x617247746E657665;
    *(inited + 56) = 0xEA00000000006870;
    *(inited + 16) = xmmword_1C4F0CE60;
    v31[0] = v30;
    v31[1] = v35;
    MEMORY[0x1EEE9AC00](inited);
    v28[-2] = v31;
    v16 = sub_1C44CE068();
    v28[2] = 0;
    swift_setDeallocating();
    sub_1C44DEE40();
    if (v16)
    {
      v17 = v11[11];
      v18 = type metadata accessor for VectorDB.Config(0);
      sub_1C440BAA8(&v13[v17], 1, 1, v18);
      *v13 = 4;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0xE000000000000000;
      bzero(v13 + 24, 0xE3uLL);
      *(v13 + 32) = 0;
      *(v13 + 33) = 0;
      v13[272] = 0;
      v13[v11[12]] = 2;
      v19 = &v13[v11[13]];
      *(v19 + 6) = 0;
      *(v19 + 1) = 0u;
      *(v19 + 2) = 0u;
      *v19 = 0u;
      v20 = &v13[v11[16]];
      *(v20 + 10) = 0;
      *(v20 + 3) = 0u;
      *(v20 + 4) = 0u;
      *(v20 + 1) = 0u;
      *(v20 + 2) = 0u;
      *v20 = 0u;
      v21 = &v13[v11[17]];
      *v21 = 0;
      *(v21 + 1) = 0;
      v21[16] = 0;
      v22 = &v13[v11[14]];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = 0;
      v23 = &v13[v11[18]];
      *v23 = 0u;
      *(v23 + 1) = 0u;
      v24 = &v13[v11[15]];
      *v24 = 0;
      *(v24 + 1) = 0;
      *(v24 + 2) = 0;
    }

    else
    {
      sub_1C4438D00(v13);
    }

    v25 = a2;
    v26 = v33;
    v27 = v34;
    sub_1C4409678(v32, v33);
    (*(v27 + 8))(v30, v35, v13, *(v29 + 32), *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), a6 & 1, v26, v27);
    sub_1C443C1D8(v13, _s6ConfigVMa);
    sub_1C440962C(v32);
  }
}

void sub_1C4C88E44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v35 = a5;
  v30 = a4;
  v11 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1C4C839B4();
  if (!v6)
  {
    v28[1] = a3;
    v29 = v14;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 32) = 0x7247656C62617473;
    *(inited + 40) = 0xEB00000000687061;
    *(inited + 48) = 0x617247746E657665;
    *(inited + 56) = 0xEA00000000006870;
    *(inited + 16) = xmmword_1C4F0CE60;
    v31[0] = v30;
    v31[1] = v35;
    MEMORY[0x1EEE9AC00](inited);
    v28[-2] = v31;
    v16 = sub_1C44CE068();
    v28[2] = 0;
    swift_setDeallocating();
    sub_1C44DEE40();
    if (v16)
    {
      v17 = v11[11];
      v18 = type metadata accessor for VectorDB.Config(0);
      sub_1C440BAA8(&v13[v17], 1, 1, v18);
      *v13 = 4;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0xE000000000000000;
      bzero(v13 + 24, 0xE3uLL);
      *(v13 + 32) = 0;
      *(v13 + 33) = 0;
      v13[272] = 0;
      v13[v11[12]] = 2;
      v19 = &v13[v11[13]];
      *(v19 + 6) = 0;
      *(v19 + 1) = 0u;
      *(v19 + 2) = 0u;
      *v19 = 0u;
      v20 = &v13[v11[16]];
      *(v20 + 10) = 0;
      *(v20 + 3) = 0u;
      *(v20 + 4) = 0u;
      *(v20 + 1) = 0u;
      *(v20 + 2) = 0u;
      *v20 = 0u;
      v21 = &v13[v11[17]];
      *v21 = 0;
      *(v21 + 1) = 0;
      v21[16] = 0;
      v22 = &v13[v11[14]];
      *v22 = 0;
      *(v22 + 1) = 0;
      v22[16] = 0;
      v23 = &v13[v11[18]];
      *v23 = 0u;
      *(v23 + 1) = 0u;
      v24 = &v13[v11[15]];
      *v24 = 0;
      *(v24 + 1) = 0;
      *(v24 + 2) = 0;
    }

    else
    {
      sub_1C4438D00(v13);
    }

    v25 = a2;
    v26 = v33;
    v27 = v34;
    sub_1C4409678(v32, v33);
    (*(v27 + 24))(v30, v35, v13, *(v29 + 32), *(v25 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService), a6 & 1, v26, v27);
    sub_1C443C1D8(v13, _s6ConfigVMa);
    sub_1C440962C(v32);
  }
}

uint64_t sub_1C4C89184(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  sub_1C456902C(a2, a3);
  sub_1C43FBDBC();
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

uint64_t sub_1C4C891D4(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for Configuration(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44058BC();
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C4417A50();
    swift_once();
  }

  sub_1C44E7FAC();
  if (!v2)
  {
    sub_1C44098F0(a1, v3);
    v4 = swift_allocObject();
    v9 = sub_1C440A9B8();
    sub_1C4C892D8(v9, v10);
  }

  sub_1C442D7A0();
  sub_1C443C1D8(a1, v8);
  return v4;
}

uint64_t sub_1C4C892D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  type metadata accessor for ViewGeneration.ViewGenerators.GuardedData();
  sub_1C43FBDBC();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C456902C(&qword_1EC0C5488, &qword_1C4F613F0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v2 + 24) = v4;
  sub_1C4403A98();
  sub_1C4C8C1C0();
  return v2;
}

uint64_t sub_1C4C89368()
{

  sub_1C442D7A0();
  sub_1C443C1D8(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C4C893BC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1C4C89418(uint64_t *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  sub_1C4C83880();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v11, v13);
      *a3 = v7;
      a3[1] = v6;
      sub_1C441D670(v13, (a3 + 2));
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      v12 = 0;
      sub_1C446F170(v11, &unk_1EC0C06B0, &qword_1C4F5FBA0);
      sub_1C450B034();
      v8 = swift_allocError();
      *v9 = v7;
      *(v9 + 8) = v6;
      *(v9 + 16) = 0xD000000000000018;
      *(v9 + 24) = 0x80000001C4FBE690;
      *(v9 + 32) = 0xD000000000000028;
      *(v9 + 40) = 0x80000001C4FBE6B0;
      *(v9 + 48) = v10;
      *(v9 + 64) = 0;
      swift_willThrow();
      *a2 = v8;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C895B8(uint64_t a1)
{
  v2 = 0;
  switch(*a1)
  {
    case 1:
      if (!*(a1 + 176))
      {
        return 0;
      }

      v2 = *(a1 + 168);
      goto LABEL_19;
    case 2:
      if (!*(a1 + 32))
      {
        return 0;
      }

      v2 = *(a1 + 24);
      goto LABEL_19;
    case 3:
      if (!*(a1 + 72))
      {
        return 0;
      }

      v2 = *(a1 + 64);
      goto LABEL_19;
    case 4:
    case 6:
    case 7:
    case 9:
      return v2;
    case 5:
      return 30315;
    case 8:
      return sub_1C4EFD978();
    case 0xA:
      v3 = *(_s6ConfigVMa(0) + 64);
      goto LABEL_17;
    case 0xB:
      v3 = *(_s6ConfigVMa(0) + 68);
      goto LABEL_17;
    case 0xC:
      v3 = *(_s6ConfigVMa(0) + 56);
      goto LABEL_17;
    case 0xD:
      v3 = *(_s6ConfigVMa(0) + 72);
      goto LABEL_17;
    case 0xE:
      v3 = *(_s6ConfigVMa(0) + 60);
LABEL_17:
      v4 = (a1 + v3);
      if (!v4[1])
      {
        return 0;
      }

      v2 = *v4;
      goto LABEL_19;
    default:
      if (!*(a1 + 232))
      {
        return 0;
      }

      v2 = *(a1 + 224);
LABEL_19:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return v2;
  }
}

void sub_1C4C896DC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = sub_1C4F01888();
  v11 = sub_1C4F028D8();
  v13 = v12;
  v14 = sub_1C4F018C8();
  sub_1C440BAA8(v9, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v10;
  sub_1C43FBC98();
  sub_1C44DDE2C();
  v16 = sub_1C44157D4(v6, 1, v14);

  if (v16 == 1)
  {
    sub_1C446F170(v6, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v14 - 8) + 8))(v6, v14);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1C4F613A0;
  *(v17 + 24) = v15;
  v18[0] = 6;
  v18[1] = 0;
  v18[2] = v11;
  v18[3] = v13;

  swift_unknownObjectRetain();
  swift_task_create();
  sub_1C446F170(v9, &qword_1EC0BC660, &qword_1C4F29150);

  swift_unknownObjectRelease();

  sub_1C43FE9F0();
}

uint64_t sub_1C4C89918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C4C89938, 0, 0);
}

uint64_t sub_1C4C89938()
{
  sub_1C43FBCD4();
  sub_1C4C84128(*(*(v0 + 16) + 16), *(*(v0 + 16) + 24), *(v0 + 24));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4C89994(uint64_t a1)
{
  sub_1C4F028D8();
  swift_getObjectType();
  sub_1C4F01988();
  swift_unknownObjectRelease();

  return swift_job_run_on_task_executor();
}

uint64_t sub_1C4C89A00()
{

  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C89A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1C4C8C218(&qword_1EDDF6C48, a2, type metadata accessor for ViewGeneration.ViewTaskExecutor, &unk_1C4F61254);

  return a4(a1, v6, v7);
}

uint64_t sub_1C4C89B98(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    return sub_1C4F01918();
  }

  *(a1 + 8) = a2;
  return result;
}

void sub_1C4C89C18(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 16) = 1;
  if (*(a1 + 24))
  {
    sub_1C4F01918();
  }

  os_unfair_lock_unlock((a1 + 32));
}

_BYTE *storeEnumTagSinglePayload for ViewGeneration(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C4C89DFC(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C4C89EEC(uint64_t a1)
{
  result = sub_1C4EF98F8();
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

uint64_t sub_1C4C8A008(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C4C8A0FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C4C8A110(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >> 1 >= 0xFFF && *(a1 + 10))
    {
      v2 = *a1 + 8189;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 14) | (4 * ((*(a1 + 8) >> 3) & 0x780 | (*(a1 + 8) >> 1)))) ^ 0x1FFF;
      if (v2 >= 0x1FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C4C8A170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FF) - (a2 << 11);
      *result = 0;
      *(result + 8) = (8 * v3) & 0xFC00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

unint64_t sub_1C4C8A288()
{
  result = qword_1EC0C5440;
  if (!qword_1EC0C5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5440);
  }

  return result;
}

void sub_1C4C8A328(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1C4C8A95C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1C4C8A470(0, v2, 1, a1);
  }
}

void sub_1C4C8A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v50 = 0x80000001C4F87980;
    v51 = 0x80000001C4F879A0;
    v49 = 0x80000001C4F87960;
    v48 = 0x80000001C4F87940;
    v22 = v20 + v21 * (a3 - 1);
    v52 = -v21;
    v53 = v20;
    v23 = a1 - a3;
    v42 = v21;
    v24 = v20 + v21 * a3;
    v25 = &qword_1EC0B9190;
    v56 = v16;
    v57 = v13;
    v55 = &v41 - v19;
    while (2)
    {
      v46 = v22;
      v47 = a3;
      v44 = v24;
      v45 = v23;
      v26 = v22;
      do
      {
        sub_1C44DDE2C();
        sub_1C44DDE2C();
        sub_1C44DDE2C();
        v27 = 0xE600000000000000;
        v28 = v25;
        v29 = 0x6C6F6F547069;
        switch(*v13)
        {
          case 1:
            v29 = 0xD000000000000018;
            v27 = v49;
            break;
          case 2:
            v29 = 0xD00000000000001DLL;
            v27 = v50;
            break;
          case 3:
            v29 = 0xD00000000000001BLL;
            v27 = v51;
            break;
          case 4:
            break;
          case 5:
            v27 = 0xE300000000000000;
            v29 = 7368801;
            break;
          default:
            v29 = 0xD000000000000014;
            v27 = v48;
            break;
        }

        v30 = v60;
        sub_1C44DDE2C();
        v31 = 0xE600000000000000;
        v32 = 0x6C6F6F547069;
        switch(*v30)
        {
          case 1:
            v32 = 0xD000000000000018;
            v31 = v49;
            break;
          case 2:
            v32 = 0xD00000000000001DLL;
            v31 = v50;
            break;
          case 3:
            v32 = 0xD00000000000001BLL;
            v31 = v51;
            break;
          case 4:
            break;
          case 5:
            v31 = 0xE300000000000000;
            v32 = 7368801;
            break;
          default:
            v32 = 0xD000000000000014;
            v31 = v48;
            break;
        }

        v33 = v29 == v32 && v27 == v31;
        v59 = v23;
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = sub_1C4F02938();
        }

        v35 = *(v58 + 48);
        v36 = sub_1C4EF9CD8();
        v37 = *(*(v36 - 8) + 8);
        v37(&v60[v35], v36);
        v38 = &v57[v35];
        v13 = v57;
        v37(v38, v36);
        v25 = v28;
        sub_1C446F170(v56, v28, &qword_1C4F0EC90);
        sub_1C446F170(v55, v28, &qword_1C4F0EC90);
        v39 = v59;
        if ((v34 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
          return;
        }

        sub_1C44CDA7C();
        swift_arrayInitWithTakeFrontToBack();
        v25 = v28;
        sub_1C44CDA7C();
        v26 += v52;
        v24 += v52;
        v40 = __CFADD__(v39, 1);
        v23 = v39 + 1;
      }

      while (!v40);
      a3 = v47 + 1;
      v22 = v46 + v42;
      v23 = v45 - 1;
      v24 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C4C8A95C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a4;
  v140 = a1;
  v7 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  v153 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v145 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v166 = &v139 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v170 = &v139 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v139 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v139 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v139 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v139 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v159 = &v139 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v155 = &v139 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v139 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v154 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_137:
    v170 = *v140;
    if (!v170)
    {
      goto LABEL_179;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_139;
    }

    goto LABEL_173;
  }

  v141 = &v139 - v32;
  v34 = 0;
  v162 = 0x80000001C4F87980;
  v163 = 0x80000001C4F879A0;
  v160 = 0x80000001C4F87940;
  v161 = 0x80000001C4F87960;
  v35 = MEMORY[0x1E69E7CC0];
  v167 = v17;
  v150 = v30;
  v147 = v7;
  while (1)
  {
    v36 = v34++;
    v142 = v35;
    v146 = v36;
    if (v34 < v33)
    {
      v152 = v33;
      v37 = *v154;
      v38 = *(v153 + 72);
      v39 = *v154 + v38 * v34;
      sub_1C44DDE2C();
      v164 = v38;
      v165 = v37;
      v40 = v146;
      sub_1C44DDE2C();
      LODWORD(v151) = sub_1C4C87510();
      if (v5)
      {
        sub_1C446F170(v30, &qword_1EC0B9190, &qword_1C4F0EC90);
        sub_1C446F170(v141, &qword_1EC0B9190, &qword_1C4F0EC90);
LABEL_135:

        return;
      }

      v158 = 0;
      sub_1C446F170(v30, &qword_1EC0B9190, &qword_1C4F0EC90);
      sub_1C446F170(v141, &qword_1EC0B9190, &qword_1C4F0EC90);
      v41 = v40 + 2;
      v5 = v165 + v164 * (v40 + 2);
      v42 = v152;
      while (1)
      {
        v43 = v41;
        if (v34 + 1 >= v42)
        {
          break;
        }

        v165 = v41;
        sub_1C44DDE2C();
        sub_1C44DDE2C();
        v44 = v156;
        sub_1C44DDE2C();
        v45 = 0xE600000000000000;
        v46 = 0x6C6F6F547069;
        switch(*v44)
        {
          case 1:
            v46 = 0xD000000000000018;
            v45 = v161;
            break;
          case 2:
            v46 = 0xD00000000000001DLL;
            v45 = v162;
            break;
          case 3:
            v46 = 0xD00000000000001BLL;
            v45 = v163;
            break;
          case 4:
            break;
          case 5:
            v45 = 0xE300000000000000;
            v46 = 7368801;
            break;
          default:
            v46 = 0xD000000000000014;
            v45 = v160;
            break;
        }

        v47 = v157;
        sub_1C44DDE2C();
        v48 = 0xE600000000000000;
        v49 = 0x6C6F6F547069;
        switch(*v47)
        {
          case 1:
            v49 = 0xD000000000000018;
            v48 = v161;
            break;
          case 2:
            v49 = 0xD00000000000001DLL;
            v48 = v162;
            break;
          case 3:
            v49 = 0xD00000000000001BLL;
            v48 = v163;
            break;
          case 4:
            break;
          case 5:
            v48 = 0xE300000000000000;
            v49 = 7368801;
            break;
          default:
            v49 = 0xD000000000000014;
            v48 = v160;
            break;
        }

        v50 = v34;
        if (v46 == v49 && v45 == v48)
        {
          v52 = 0;
        }

        else
        {
          v52 = sub_1C4F02938();
        }

        v53 = *(v7 + 48);
        v54 = sub_1C4EF9CD8();
        v55 = *(*(v54 - 8) + 8);
        v55(&v157[v53], v54);
        v55(&v156[v53], v54);
        sub_1C446F170(v159, &qword_1EC0B9190, &qword_1C4F0EC90);
        sub_1C446F170(v155, &qword_1EC0B9190, &qword_1C4F0EC90);
        v43 = v165;
        v5 += v164;
        v39 += v164;
        v34 = v50 + 1;
        v41 = v165 + 1;
        v42 = v152;
        if ((v151 ^ v52))
        {
          goto LABEL_28;
        }
      }

      v34 = v42;
LABEL_28:
      if ((v151 & 1) == 0)
      {
        v5 = v158;
        v35 = v142;
LABEL_49:
        v30 = v150;
        goto LABEL_50;
      }

      v35 = v142;
      if (v34 < v146)
      {
        goto LABEL_172;
      }

      v5 = v158;
      if (v146 >= v34)
      {
        goto LABEL_49;
      }

      if (v42 >= v43)
      {
        v56 = v43;
      }

      else
      {
        v56 = v42;
      }

      v57 = v164;
      v58 = v164 * (v56 - 1);
      v59 = v164 * v56;
      v60 = v146 * v164;
      v152 = v34;
      v61 = v34;
      v62 = v146;
      do
      {
        if (v62 != --v61)
        {
          v63 = *v154;
          if (!*v154)
          {
            goto LABEL_177;
          }

          sub_1C44CDA7C();
          v64 = v60 < v58 || v63 + v60 >= (v63 + v59);
          if (v64)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C44CDA7C();
          v5 = v158;
          v35 = v142;
        }

        ++v62;
        v58 -= v57;
        v59 -= v57;
        v60 += v57;
      }

      while (v62 < v61);
      v30 = v150;
      v34 = v152;
    }

LABEL_50:
    v65 = v154[1];
    if (v34 < v65)
    {
      if (__OFSUB__(v34, v146))
      {
        goto LABEL_169;
      }

      if (v34 - v146 < v139)
      {
        break;
      }
    }

LABEL_84:
    if (v34 < v146)
    {
      goto LABEL_168;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458A358();
      v35 = v130;
    }

    v85 = *(v35 + 2);
    v5 = v85 + 1;
    if (v85 >= *(v35 + 3) >> 1)
    {
      sub_1C458A358();
      v35 = v131;
    }

    *(v35 + 2) = v5;
    v86 = v35 + 32;
    v87 = &v35[16 * v85 + 32];
    *v87 = v146;
    *(v87 + 1) = v34;
    v165 = *v140;
    if (!v165)
    {
      goto LABEL_178;
    }

    if (v85)
    {
      while (1)
      {
        v88 = v5 - 1;
        v89 = &v86[16 * v5 - 16];
        v90 = &v35[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v91 = *(v35 + 4);
          v92 = *(v35 + 5);
          v101 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          v94 = v101;
LABEL_104:
          if (v94)
          {
            goto LABEL_155;
          }

          v106 = *v90;
          v105 = *(v90 + 1);
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_158;
          }

          v110 = *(v89 + 1);
          v111 = v110 - *v89;
          if (__OFSUB__(v110, *v89))
          {
            goto LABEL_161;
          }

          if (__OFADD__(v108, v111))
          {
            goto LABEL_163;
          }

          if (v108 + v111 >= v93)
          {
            if (v93 < v111)
            {
              v88 = v5 - 2;
            }

            goto LABEL_126;
          }

          goto LABEL_119;
        }

        if (v5 < 2)
        {
          goto LABEL_157;
        }

        v113 = *v90;
        v112 = *(v90 + 1);
        v101 = __OFSUB__(v112, v113);
        v108 = v112 - v113;
        v109 = v101;
LABEL_119:
        if (v109)
        {
          goto LABEL_160;
        }

        v115 = *v89;
        v114 = *(v89 + 1);
        v101 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v101)
        {
          goto LABEL_162;
        }

        if (v116 < v108)
        {
          goto LABEL_133;
        }

LABEL_126:
        if (v88 - 1 >= v5)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        if (!*v154)
        {
          goto LABEL_175;
        }

        v120 = v34;
        v121 = &v86[16 * v88 - 16];
        v122 = *v121;
        v123 = v86;
        v124 = v88;
        v125 = &v86[16 * v88];
        v5 = *(v125 + 1);
        v126 = v158;
        sub_1C4C8B8D0(*v154 + *(v153 + 72) * *v121, *v154 + *(v153 + 72) * *v125, *v154 + *(v153 + 72) * v5, v165);
        v158 = v126;
        if (v126)
        {
          goto LABEL_135;
        }

        if (v5 < v122)
        {
          goto LABEL_150;
        }

        v127 = v35;
        v128 = *(v35 + 2);
        if (v124 > v128)
        {
          goto LABEL_151;
        }

        *v121 = v122;
        v121[1] = v5;
        if (v124 >= v128)
        {
          goto LABEL_152;
        }

        v5 = v128 - 1;
        sub_1C461950C(v125 + 16, v128 - 1 - v124, v125);
        *(v127 + 2) = v128 - 1;
        v129 = v128 > 2;
        v35 = v127;
        v30 = v150;
        v34 = v120;
        v86 = v123;
        v7 = v147;
        if (!v129)
        {
          goto LABEL_133;
        }
      }

      v95 = &v86[16 * v5];
      v96 = *(v95 - 8);
      v97 = *(v95 - 7);
      v101 = __OFSUB__(v97, v96);
      v98 = v97 - v96;
      if (v101)
      {
        goto LABEL_153;
      }

      v100 = *(v95 - 6);
      v99 = *(v95 - 5);
      v101 = __OFSUB__(v99, v100);
      v93 = v99 - v100;
      v94 = v101;
      if (v101)
      {
        goto LABEL_154;
      }

      v102 = *(v90 + 1);
      v103 = v102 - *v90;
      if (__OFSUB__(v102, *v90))
      {
        goto LABEL_156;
      }

      v101 = __OFADD__(v93, v103);
      v104 = v93 + v103;
      if (v101)
      {
        goto LABEL_159;
      }

      if (v104 >= v98)
      {
        v118 = *v89;
        v117 = *(v89 + 1);
        v101 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v101)
        {
          goto LABEL_167;
        }

        if (v93 < v119)
        {
          v88 = v5 - 2;
        }

        goto LABEL_126;
      }

      goto LABEL_104;
    }

LABEL_133:
    v33 = v154[1];
    v5 = v158;
    if (v34 >= v33)
    {
      goto LABEL_137;
    }
  }

  v66 = v146 + v139;
  if (__OFADD__(v146, v139))
  {
    goto LABEL_170;
  }

  if (v66 >= v65)
  {
    v66 = v154[1];
  }

  if (v66 < v146)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    v35 = sub_1C46194F4();
LABEL_139:
    v132 = (v35 + 16);
    for (i = *(v35 + 2); i >= 2; *v132 = i)
    {
      if (!*v154)
      {
        goto LABEL_176;
      }

      v134 = &v35[16 * i];
      v135 = *v134;
      v136 = &v132[2 * i];
      v137 = *(v136 + 1);
      sub_1C4C8B8D0(*v154 + *(v153 + 72) * *v134, *v154 + *(v153 + 72) * *v136, *v154 + *(v153 + 72) * v137, v170);
      if (v5)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_164;
      }

      if (i - 2 >= *v132)
      {
        goto LABEL_165;
      }

      *v134 = v135;
      *(v134 + 1) = v137;
      v138 = *v132 - i;
      if (*v132 < i)
      {
        goto LABEL_166;
      }

      i = *v132 - 1;
      sub_1C461950C(v136 + 16, v138, v136);
    }

    goto LABEL_135;
  }

  if (v34 == v66)
  {
    goto LABEL_84;
  }

  v158 = v5;
  v67 = *v154;
  v68 = *(v153 + 72);
  v69 = *v154 + v68 * (v34 - 1);
  v164 = -v68;
  v70 = v146 - v34;
  v165 = v67;
  v143 = v68;
  v71 = v67 + v34 * v68;
  v144 = v66;
LABEL_59:
  v152 = v34;
  v148 = v71;
  v149 = v70;
  v72 = v70;
  v151 = v69;
  while (1)
  {
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v73 = v169;
    sub_1C44DDE2C();
    v74 = 0xE600000000000000;
    v75 = 0x6C6F6F547069;
    switch(*v73)
    {
      case 1:
        v75 = 0xD000000000000018;
        v74 = v161;
        break;
      case 2:
        v75 = 0xD00000000000001DLL;
        v74 = v162;
        break;
      case 3:
        v75 = 0xD00000000000001BLL;
        v74 = v163;
        break;
      case 4:
        break;
      case 5:
        v74 = 0xE300000000000000;
        v75 = 7368801;
        break;
      default:
        v75 = 0xD000000000000014;
        v74 = v160;
        break;
    }

    v76 = v170;
    sub_1C44DDE2C();
    v77 = 0xE600000000000000;
    v78 = 0x6C6F6F547069;
    switch(*v76)
    {
      case 1:
        v78 = 0xD000000000000018;
        v77 = v161;
        break;
      case 2:
        v78 = 0xD00000000000001DLL;
        v77 = v162;
        break;
      case 3:
        v78 = 0xD00000000000001BLL;
        v77 = v163;
        break;
      case 4:
        break;
      case 5:
        v77 = 0xE300000000000000;
        v78 = 7368801;
        break;
      default:
        v78 = 0xD000000000000014;
        v77 = v160;
        break;
    }

    if (v75 == v78 && v74 == v77)
    {
      v80 = 0;
    }

    else
    {
      v80 = sub_1C4F02938();
    }

    v81 = *(v7 + 48);
    v82 = sub_1C4EF9CD8();
    v83 = *(*(v82 - 8) + 8);
    v83(&v170[v81], v82);
    v83(&v169[v81], v82);
    sub_1C446F170(v167, &qword_1EC0B9190, &qword_1C4F0EC90);
    sub_1C446F170(v168, &qword_1EC0B9190, &qword_1C4F0EC90);
    if ((v80 & 1) == 0)
    {
LABEL_82:
      v34 = v152 + 1;
      v69 = v151 + v143;
      v70 = v149 - 1;
      v71 = v148 + v143;
      if (v152 + 1 == v144)
      {
        v34 = v144;
        v5 = v158;
        v35 = v142;
        v30 = v150;
        goto LABEL_84;
      }

      goto LABEL_59;
    }

    if (!v165)
    {
      break;
    }

    sub_1C44CDA7C();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C44CDA7C();
    v69 += v164;
    v71 += v164;
    v64 = __CFADD__(v72++, 1);
    if (v64)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
}

void sub_1C4C8B8D0(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v69 = a3;
  v70 = sub_1C456902C(&qword_1EC0B9190, &qword_1C4F0EC90);
  MEMORY[0x1EEE9AC00](v70);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_66;
  }

  v19 = v69 - a2;
  if (v69 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_67;
  }

  v21 = v17 / v16;
  v74 = a1;
  v73 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    i = v14;
    v39 = a2;
    sub_1C459CDD4(a2, v19 / v16, a4);
    v68 = a4;
    v40 = a4 + v22 * v16;
    v41 = -v16;
    v42 = v40;
    v43 = v69;
    v67 = v41;
    v64 = a1;
LABEL_38:
    v69 = v39;
    v44 = v39 + v41;
    v45 = v43;
    v61 = v42;
    v46 = v62;
    v65 = v44;
    while (1)
    {
      if (v40 <= v68)
      {
        v74 = v69;
        v72 = v42;
        goto LABEL_64;
      }

      if (v69 <= a1)
      {
        v74 = v69;
        v59 = v61;
        goto LABEL_63;
      }

      v63 = v42;
      v47 = v67;
      v48 = v40;
      v49 = &v67[v40];
      sub_1C44DDE2C();
      v50 = v46;
      v51 = i;
      sub_1C44DDE2C();
      v52 = v71;
      v53 = sub_1C4C87510();
      v71 = v52;
      if (v52)
      {
        break;
      }

      v54 = v53;
      v43 = &v47[v45];
      sub_1C446F170(v51, &qword_1EC0B9190, &qword_1C4F0EC90);
      sub_1C446F170(v50, &qword_1EC0B9190, &qword_1C4F0EC90);
      if (v54)
      {
        v56 = v45 < v69 || v43 >= v69;
        v40 = v48;
        if (v56)
        {
          v39 = v65;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v63;
          a1 = v64;
          v41 = v67;
        }

        else
        {
          a1 = v64;
          v42 = v63;
          v57 = v65;
          v39 = v65;
          v41 = v67;
          if (v45 != v69)
          {
            v58 = v63;
            swift_arrayInitWithTakeBackToFront();
            v39 = v57;
            v42 = v58;
          }
        }

        goto LABEL_38;
      }

      v46 = v50;
      if (v45 < v48 || v43 >= v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        v45 = v43;
        v40 = v49;
        v42 = v49;
        a1 = v64;
      }

      else
      {
        v42 = v49;
        v18 = v48 == v45;
        v45 = v43;
        v40 = v49;
        a1 = v64;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v45 = v43;
          v40 = v49;
          v42 = v49;
        }
      }
    }

    sub_1C446F170(v51, &qword_1EC0B9190, &qword_1C4F0EC90);
    sub_1C446F170(v50, &qword_1EC0B9190, &qword_1C4F0EC90);
    v74 = v69;
    v59 = v63;
LABEL_63:
    v72 = v59;
  }

  else
  {
    v67 = &v60 - v13;
    sub_1C459CDD4(a1, v17 / v16, a4);
    v68 = a4 + v21 * v16;
    v72 = v68;
    v23 = a2;
    v24 = v16;
    v25 = v69;
    for (i = v11; a4 < v68 && v23 < v25; v11 = i)
    {
      v27 = a1;
      v28 = v24;
      v29 = v23;
      v30 = v67;
      sub_1C44DDE2C();
      v31 = a4;
      sub_1C44DDE2C();
      v32 = v71;
      v33 = sub_1C4C87510();
      v71 = v32;
      if (v32)
      {
        sub_1C446F170(v11, &qword_1EC0B9190, &qword_1C4F0EC90);
        sub_1C446F170(v30, &qword_1EC0B9190, &qword_1C4F0EC90);
        break;
      }

      v34 = v33;
      sub_1C446F170(v11, &qword_1EC0B9190, &qword_1C4F0EC90);
      sub_1C446F170(v30, &qword_1EC0B9190, &qword_1C4F0EC90);
      if (v34)
      {
        v24 = v28;
        v35 = v29 + v28;
        v36 = v27;
        if (v27 < v29 || v27 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v23 = v29 + v28;
          a4 = v31;
          v25 = v69;
        }

        else
        {
          v25 = v69;
          if (v27 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v23 = v35;
          a4 = v31;
        }
      }

      else
      {
        v24 = v28;
        a4 += v28;
        v36 = v27;
        if (v27 < v31 || v27 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v69;
        }

        else
        {
          v25 = v69;
          if (v27 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v73 = a4;
        v23 = v29;
      }

      a1 = v36 + v24;
      v74 = a1;
    }
  }

LABEL_64:
  sub_1C4BEB584(&v74, &v73, &v72);
}

uint64_t sub_1C4C8BED0(uint64_t a1, uint64_t a2)
{
  sub_1C4F00DD8();
  sub_1C441A948();
  sub_1C4C8C218(v2, 255, v3, MEMORY[0x1E6966618]);
  return sub_1C4F00D98();
}

unint64_t sub_1C4C8BF98()
{
  result = qword_1EC0C5468;
  if (!qword_1EC0C5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5468);
  }

  return result;
}

uint64_t sub_1C4C8BFEC()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v1[1] = sub_1C442E8C4;
  v3 = sub_1C441B0C0();

  return sub_1C4C89918(v3, v4, v5);
}

unint64_t sub_1C4C8C130()
{
  result = qword_1EDDFA448;
  if (!qword_1EDDFA448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA448);
  }

  return result;
}

uint64_t sub_1C4C8C174(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1C4BA83CC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C4C8C1C0()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C4C8C218(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C4C8C28C()
{
  *(v1 + 24) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4C8C31C, 0, 0);
}

uint64_t sub_1C4C8C31C()
{
  v19 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DE10);

  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18[0] = v5;
    *v4 = 136315138;
    v6 = sub_1C48522F8();
    v8 = sub_1C441D828(v6, v7, v18);

    *(v4 + 4) = v8;
    sub_1C43FBD74(&dword_1C43F8000, v9, v10, "Pipeline: %s: triggering view generation...");
    sub_1C440962C(v5);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  *(v0 + 16) = 0;
  v12 = [v11 graphUpdatedWithSource:0 error:v0 + 16];
  v13 = *(v0 + 16);
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v16 = v13;
    sub_1C4EF97A8();

    swift_willThrow();
  }

  sub_1C43FBDA0();

  return v15();
}

uint64_t sub_1C4C8C530()
{

  sub_1C43FFFC0();
  sub_1C44541BC(v0 + v1, v2);

  sub_1C44541BC(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_source, type metadata accessor for Source);
  return v0;
}

uint64_t sub_1C4C8C598()
{
  *(v1 + 24) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4C8C628, 0, 0);
}

uint64_t sub_1C4C8C628()
{
  v25 = v0;
  v24[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DE10);

  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24[0] = v5;
    *v4 = 136315138;
    v6 = sub_1C4852320();
    v8 = sub_1C441D828(v6, v7, v24);

    *(v4 + 4) = v8;
    sub_1C43FBD74(&dword_1C43F8000, v9, v10, "Pipeline: %s: triggering view generation...");
    sub_1C440962C(v5);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v11 = *(v0 + 24);
  v12 = *(v11 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_coordinationXPC);
  v13 = (v11 + OBJC_IVAR____TtC24IntelligencePlatformCore32ViewGenerationDeltaPipelinePhase_source);
  v14 = *v13;
  v15 = v13[1];
  *(v0 + 16) = 0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4C8CD40(v14, v15, v0 + 16, v12);
  v17 = *(v0 + 16);
  if (v16)
  {
    sub_1C43FBDA0();
    v23 = v18;
    v19 = v17;
    v20 = v23;
  }

  else
  {
    v21 = v17;
    sub_1C4EF97A8();

    swift_willThrow();
    sub_1C43FBDA0();
  }

  return v20();
}

uint64_t sub_1C4C8C868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4665934;

  return sub_1C4C8C28C();
}

uint64_t sub_1C4C8C8F8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1C4AA78F0(a1);
}

uint64_t sub_1C4C8C94C()
{
  sub_1C4C8C530();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewGenerationDeltaPipelinePhase(uint64_t a1)
{
  result = qword_1EDDDDCC8;
  if (!qword_1EDDDDCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C8C9F8(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4C8CADC()
{
  v4 = (*(**v0 + 120) + **(**v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C4677C50;

  return v4();
}

uint64_t sub_1C4C8CBF0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_1C4AA78F0(a1);
}

uint64_t sub_1C4C8CC44(uint64_t a1)
{
  result = sub_1C4C8CCF8(&qword_1EC0C54B0, 255, type metadata accessor for ViewGenerationDeltaPipelinePhase, &unk_1C4F61568);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C8CCA0(uint64_t a1, uint64_t a2)
{
  result = sub_1C4C8CCF8(&qword_1EDDDE900, a2, type metadata accessor for ViewGenerationFullPipelinePhase, &unk_1C4F615B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C8CCF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1C4C8CD40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C4F01108();

  v7 = [a4 graphUpdatedWithSource:v6 error:a3];

  return v7;
}

uint64_t sub_1C4C8CDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a4;
  v6 = MEMORY[0x1E69E7CC0];
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = &v6;
  sub_1C4465390(sub_1C4C8E51C, v5);
  return v6;
}

uint64_t sub_1C4C8CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = &v6;
  sub_1C4465390(sub_1C4C8E5A0, v5);
  return v6;
}

uint64_t sub_1C4C8CEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return sub_1C49A52FC(sub_1C4C8E4FC, v4);
}

uint64_t sub_1C4C8CF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return sub_1C49A52FC(sub_1C4C8E5B8, v4);
}

uint64_t sub_1C4C8CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v167 = a6;
  v165 = a5;
  v180 = a3;
  v181 = a4;
  v179 = a1;
  v7 = sub_1C4EFBE38();
  v178 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v168 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v159 - v10;
  v11 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v176 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1C4EFB768();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v18 = a2;
  }

  *&v184 = v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4A54BDC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4C8E534(&qword_1EDDFA1C8, MEMORY[0x1E69A9810], MEMORY[0x1E69A9808]);
  sub_1C4EFB798();
  sub_1C4EFBC58();
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  v19 = v182;
  v20 = sub_1C4EFBBB8();
  if (v19)
  {
    sub_1C4423A0C(&v184, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v15 + 8))(v17, v14);
  }

  v166 = v20;
  v169 = 0;
  v160 = v17;
  v174 = v7;
  v164 = v15;
  sub_1C4423A0C(&v184, &unk_1EC0BC770, &qword_1C4F10DC0);
  v171 = (v178 + 8);
  v172 = (v178 + 32);
  v22 = v168;
  v23 = v175;
  v24 = v176;
  v25 = v11;
  v163 = v14;
  v170 = v11;
  v173 = v13;
  while (1)
  {
    v26 = v169;
    v27 = sub_1C4458EE8();
    if (v26)
    {
      v28 = v164;
LABEL_93:
      (*(v28 + 8))(v160, v14);
    }

    v28 = v164;
    if (!v27)
    {
      goto LABEL_93;
    }

    v179 = v27;
    v29 = *(v165 + 16);
    v169 = 0;
    if (v29)
    {
      break;
    }

    v31 = MEMORY[0x1E69E7CC8];
LABEL_87:
    v152 = v167;
    v153 = *v167;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v152 = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458E540();
      v153 = v157;
      *v167 = v157;
    }

    v155 = *(v153 + 16);
    if (v155 >= *(v153 + 24) >> 1)
    {
      sub_1C458E540();
      *v167 = v158;
    }

    v156 = *v167;
    *(v156 + 16) = v155 + 1;
    *(v156 + 8 * v155 + 32) = v31;
    v14 = v163;
  }

  v178 = *(v25 + 20);
  v30 = v165 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v177 = *(v24 + 72);
  v31 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v181 = v29;
    v182 = v31;
    v180 = v30;
    sub_1C443CCBC(v30, v13);
    v32 = *v13;
    v33 = v13[1];
    v34 = v13 + v178;
    v35 = v174;
    (*v172)(v23, v34, v174);
    sub_1C4EFBDD8();
    sub_1C4C8E534(&qword_1EDDF0040, MEMORY[0x1E69A0080], MEMORY[0x1E69A0088]);
    v36 = sub_1C4F010B8();
    v37 = v23;
    v38 = *v171;
    (*v171)(v22, v35);
    if ((v36 & 1) == 0)
    {
      sub_1C4EFBE08();
      v54 = sub_1C4F010B8();
      v38(v22, v35);
      if (v54)
      {
        v38(v37, v35);
        v55 = v32;
        v56 = v32;
        v57 = v33;
        v58 = v169;
        sub_1C493E7A4(v56, v33, v59, v60, v61, v62, v63, v64, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
        v169 = v58;
        if (v58)
        {
          goto LABEL_106;
        }

        *(&v185 + 1) = MEMORY[0x1E69E7360];
        *&v184 = v65;
        sub_1C44482AC(&v184, v183);
        v66 = v182;
        swift_isUniquelyReferenced_nonNull_native();
        v187 = v66;
        v67 = sub_1C445FAA8(v55, v33);
        v24 = v176;
        v13 = v173;
        if (__OFADD__(v66[2], (v68 & 1) == 0))
        {
          goto LABEL_95;
        }

        v69 = v67;
        v70 = v68;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v71 = sub_1C445FAA8(v55, v57);
          v23 = v175;
          if ((v70 & 1) != (v72 & 1))
          {
            goto LABEL_107;
          }

          v69 = v71;
          if (v70)
          {
            goto LABEL_60;
          }

          goto LABEL_45;
        }

        v23 = v175;
        if ((v70 & 1) == 0)
        {
LABEL_45:
          v31 = v187;
          v187[(v69 >> 6) + 8] |= 1 << v69;
          v115 = (v31[6] + 16 * v69);
          *v115 = v55;
          v115[1] = v57;
          sub_1C44482AC(v183, (v31[7] + 32 * v69));
          v116 = v31[2];
          v52 = __OFADD__(v116, 1);
          v117 = v116 + 1;
          if (v52)
          {
            goto LABEL_98;
          }

          goto LABEL_62;
        }

LABEL_60:

        v31 = v187;
        v127 = (v187[7] + 32 * v69);
        sub_1C440962C(v127);
        sub_1C44482AC(v183, v127);
LABEL_63:
        v22 = v168;
LABEL_64:
        v25 = v170;
        goto LABEL_65;
      }

      sub_1C4EFBDF8();
      v73 = sub_1C4F010B8();
      v38(v22, v35);
      if (v73)
      {
        v38(v37, v35);
        v74 = v32;
        v75 = v32;
        v76 = v33;
        v77 = v169;
        sub_1C493E588(v75, v33, v78, v79, v80, v81, v82, v83, v159, v160, SWORD2(v160), SBYTE6(v160), SHIBYTE(v160), v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
        v169 = v77;
        if (v77)
        {
          goto LABEL_106;
        }

        *(&v185 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v184) = v84 & 1;
        sub_1C44482AC(&v184, v183);
        v85 = v182;
        swift_isUniquelyReferenced_nonNull_native();
        v187 = v85;
        v86 = sub_1C445FAA8(v74, v33);
        v24 = v176;
        v13 = v173;
        if (__OFADD__(v85[2], (v87 & 1) == 0))
        {
          goto LABEL_97;
        }

        v69 = v86;
        v88 = v87;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v89 = sub_1C445FAA8(v74, v76);
          v23 = v175;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_107;
          }

          v69 = v89;
          if (v88)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v23 = v175;
          if (v88)
          {
            goto LABEL_60;
          }
        }

        v31 = v187;
        v187[(v69 >> 6) + 8] |= 1 << v69;
        v119 = (v31[6] + 16 * v69);
        *v119 = v74;
        v119[1] = v76;
        sub_1C44482AC(v183, (v31[7] + 32 * v69));
        v120 = v31[2];
        v52 = __OFADD__(v120, 1);
        v117 = v120 + 1;
        if (v52)
        {
          goto LABEL_100;
        }

LABEL_62:
        v31[2] = v117;
        goto LABEL_63;
      }

      sub_1C4EFBDE8();
      v97 = sub_1C4F010B8();
      v38(v22, v35);
      if (v97)
      {
        v38(v37, v35);
        v98 = v32;
        v99 = v32;
        v100 = v33;
        v101 = v169;
        sub_1C493E370(v99, v33, v102, v103, v104, v105, v106, v107, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
        v169 = v101;
        if (v101)
        {
          goto LABEL_106;
        }

        *(&v185 + 1) = MEMORY[0x1E69E63B0];
        *&v184 = v108;
        sub_1C44482AC(&v184, v183);
        v109 = v182;
        swift_isUniquelyReferenced_nonNull_native();
        v187 = v109;
        v110 = sub_1C445FAA8(v98, v33);
        v24 = v176;
        v13 = v173;
        if (__OFADD__(v109[2], (v111 & 1) == 0))
        {
          goto LABEL_99;
        }

        v69 = v110;
        v112 = v111;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v113 = sub_1C445FAA8(v98, v100);
          v23 = v175;
          if ((v112 & 1) != (v114 & 1))
          {
            goto LABEL_107;
          }

          v69 = v113;
          if (v112)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v23 = v175;
          if (v112)
          {
            goto LABEL_60;
          }
        }

        v31 = v187;
        v187[(v69 >> 6) + 8] |= 1 << v69;
        v128 = (v31[6] + 16 * v69);
        *v128 = v98;
        v128[1] = v100;
        sub_1C44482AC(v183, (v31[7] + 32 * v69));
        v129 = v31[2];
        v52 = __OFADD__(v129, 1);
        v117 = v129 + 1;
        if (v52)
        {
          goto LABEL_101;
        }

        goto LABEL_62;
      }

      sub_1C4EFBDB8();
      v118 = sub_1C4F010B8();
      v38(v22, v35);
      if (v118)
      {
        v38(v37, v35);
        goto LABEL_55;
      }

      sub_1C4EFBDA8();
      v121 = sub_1C4F010B8();
      v38(v22, v35);
      v38(v37, v35);
      if (v121)
      {
LABEL_55:
        v122 = v32;
        v123 = v33;
        sub_1C493CD60(&v184);
        v124 = *(&v184 + 1);
        v24 = v176;
        v13 = v173;
        v31 = v182;
        if (*(&v184 + 1) >> 60 == 15)
        {
          goto LABEL_56;
        }

        v130 = v184;
        *(&v185 + 1) = MEMORY[0x1E6969080];
        sub_1C44482AC(&v184, v183);
        v161 = v130;
        v162 = v124;
        sub_1C44344B8(v130, v124);
        swift_isUniquelyReferenced_nonNull_native();
        v187 = v31;
        v131 = sub_1C445FAA8(v122, v123);
        if (__OFADD__(v31[2], (v132 & 1) == 0))
        {
          goto LABEL_102;
        }

        v133 = v131;
        v134 = v132;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v135 = sub_1C445FAA8(v122, v123);
          v22 = v168;
          v23 = v175;
          if ((v134 & 1) != (v136 & 1))
          {
            goto LABEL_107;
          }

          v133 = v135;
          if ((v134 & 1) == 0)
          {
LABEL_72:
            v31 = v187;
            v187[(v133 >> 6) + 8] |= 1 << v133;
            v137 = (v31[6] + 16 * v133);
            *v137 = v122;
            v137[1] = v123;
            sub_1C44482AC(v183, (v31[7] + 32 * v133));
            sub_1C441DFEC(v161, v162);
            v138 = v31[2];
            v52 = __OFADD__(v138, 1);
            v139 = v138 + 1;
            if (v52)
            {
              goto LABEL_103;
            }

            goto LABEL_81;
          }
        }

        else
        {
          v22 = v168;
          v23 = v175;
          if ((v134 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        v31 = v187;
        v150 = (v187[7] + 32 * v133);
        sub_1C440962C(v150);
        sub_1C44482AC(v183, v150);
        sub_1C441DFEC(v161, v162);
        goto LABEL_64;
      }

      v122 = v32;
      v123 = v33;
      v140 = sub_1C493CA4C();
      v24 = v176;
      v13 = v173;
      v31 = v182;
      if (!v141)
      {
LABEL_56:
        v91 = sub_1C445FAA8(v122, v123);
        v126 = v125;

        if (v126)
        {
          goto LABEL_33;
        }

        goto LABEL_57;
      }

      *(&v185 + 1) = MEMORY[0x1E69E6158];
      *&v184 = v140;
      *(&v184 + 1) = v141;
      sub_1C44482AC(&v184, v183);
      swift_isUniquelyReferenced_nonNull_native();
      v187 = v31;
      v142 = sub_1C445FAA8(v122, v123);
      if (__OFADD__(v31[2], (v143 & 1) == 0))
      {
        goto LABEL_104;
      }

      v144 = v142;
      v145 = v143;
      sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
      if (sub_1C4F02458())
      {
        v146 = sub_1C445FAA8(v122, v123);
        v22 = v168;
        v23 = v175;
        if ((v145 & 1) != (v147 & 1))
        {
          goto LABEL_107;
        }

        v144 = v146;
        if ((v145 & 1) == 0)
        {
LABEL_80:
          v31 = v187;
          v187[(v144 >> 6) + 8] |= 1 << v144;
          v148 = (v31[6] + 16 * v144);
          *v148 = v122;
          v148[1] = v123;
          sub_1C44482AC(v183, (v31[7] + 32 * v144));
          v149 = v31[2];
          v52 = __OFADD__(v149, 1);
          v139 = v149 + 1;
          if (v52)
          {
            goto LABEL_105;
          }

LABEL_81:
          v31[2] = v139;
          goto LABEL_64;
        }
      }

      else
      {
        v22 = v168;
        v23 = v175;
        if ((v145 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      v31 = v187;
      v151 = (v187[7] + 32 * v144);
      sub_1C440962C(v151);
      sub_1C44482AC(v183, v151);
      goto LABEL_64;
    }

    v38(v37, v35);
    v39 = sub_1C493CA4C();
    v41 = v32;
    if (!v40)
    {
      v31 = v182;
      v91 = sub_1C445FAA8(v32, v33);
      v93 = v92;

      v24 = v176;
      v13 = v173;
      if (v93)
      {
LABEL_33:
        swift_isUniquelyReferenced_nonNull_native();
        v187 = v31;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        sub_1C4F02458();
        v31 = v187;

        sub_1C44482AC((v31[7] + 32 * v91), v183);
        sub_1C4F02478();
LABEL_58:
        v23 = v175;
        v25 = v170;
        sub_1C4423A0C(v183, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_65:
        v95 = v180;
        v96 = v181;
        goto LABEL_66;
      }

LABEL_57:
      memset(v183, 0, sizeof(v183));
      goto LABEL_58;
    }

    *(&v185 + 1) = MEMORY[0x1E69E6158];
    *&v184 = v39;
    *(&v184 + 1) = v40;
    sub_1C44482AC(&v184, v183);
    v42 = v182;
    swift_isUniquelyReferenced_nonNull_native();
    v187 = v42;
    v43 = sub_1C445FAA8(v32, v33);
    v45 = v176;
    v13 = v173;
    if (__OFADD__(v42[2], (v44 & 1) == 0))
    {
      break;
    }

    v46 = v43;
    v47 = v44;
    sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
    if (sub_1C4F02458())
    {
      v48 = sub_1C445FAA8(v41, v33);
      v23 = v175;
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_107;
      }

      v46 = v48;
      if ((v47 & 1) == 0)
      {
LABEL_16:
        v31 = v187;
        v187[(v46 >> 6) + 8] |= 1 << v46;
        v50 = (v31[6] + 16 * v46);
        *v50 = v41;
        v50[1] = v33;
        sub_1C44482AC(v183, (v31[7] + 32 * v46));
        v51 = v31[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_96;
        }

        v31[2] = v53;
        goto LABEL_36;
      }
    }

    else
    {
      v23 = v175;
      if ((v47 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v31 = v187;
    v94 = (v187[7] + 32 * v46);
    sub_1C440962C(v94);
    sub_1C44482AC(v183, v94);
LABEL_36:
    v22 = v168;
    v25 = v170;
    v95 = v180;
    v96 = v181;
    v24 = v45;
LABEL_66:
    v30 = v95 + v177;
    v29 = v96 - 1;
    if (!v29)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
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
  swift_unexpectedError();
  __break(1u);
LABEL_107:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C8E0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v38 = a1;
  v39 = a2;
  v48 = sub_1C4EFF0C8();
  v10 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C4EFB258();
  v12 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EFB768();
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v32 = a3;
    v33 = v5;
    v34 = a5;
    *&v46[0] = MEMORY[0x1E69E7CC0];
    sub_1C459F110();
    v18 = *&v46[0];
    v19 = v10 + 16;
    v20 = *(v10 + 16);
    v21 = a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v42 = *(v10 + 72);
    v43 = v20;
    v40 = v12 + 32;
    v41 = (v10 + 8);
    v22 = v12;
    do
    {
      v23 = v45;
      v24 = v48;
      v25 = v19;
      v43(v45, v21, v48);
      sub_1C4EFF058();
      (*v41)(v23, v24);
      *&v46[0] = v18;
      v26 = *(v18 + 16);
      if (v26 >= *(v18 + 24) >> 1)
      {
        sub_1C459F110();
        v18 = *&v46[0];
      }

      *(v18 + 16) = v26 + 1;
      (*(v22 + 32))(v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v26, v14, v44);
      v21 += v42;
      --v17;
      v19 = v25;
    }

    while (v17);
    v6 = v33;
    v27 = v34;
  }

  else
  {
    v27 = a5;
  }

  sub_1C4EFBC58();
  *&v46[0] = v18;
  sub_1C456902C(&qword_1EC0C54B8, &qword_1C4F61618);
  sub_1C4A54BDC(&qword_1EDDDBD60, &qword_1EC0C54B8, &qword_1C4F61618);
  v28 = v35;
  sub_1C4EFB798();
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v29 = sub_1C4EFBC18();
  if (v6)
  {
    sub_1C4423A0C(v46, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v36 + 8))(v28, v37);
  }

  else
  {
    v31 = v29;
    sub_1C4423A0C(v46, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = (*(v36 + 8))(v28, v37);
    *v27 = v31;
  }

  return result;
}

uint64_t sub_1C4C8E534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static ViewOrchestrationSystem.start(viewUpdateRunnerProvider:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDF8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1C43FCED0();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "ViewOrchestrationSystem: starting...", v7, 2u);
    sub_1C43FBE2C();
  }

  static Configuration.biomed.getter();
  v29[0] = 0;
  if ([objc_opt_self() setFileLimitWithError_])
  {
    v8 = v29[0];
  }

  else
  {
    v9 = v29[0];
    v10 = sub_1C4EF97A8();

    swift_willThrow();
    v11 = v10;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CF8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1C43F8000, v12, v13, "ViewOrchestrationSystem: Error setting file limit: %@", v14, 0xCu);
      sub_1C45B4B90(v15);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  static ViewUpdate.GenerationRunnerSingleton.setProvider(for:viewUpdateRunnerProvider:)(a2, a1);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4408064(&dword_1C43F8000, v20, v21, "ViewOrchestrationSystem: running storage cleanup");
    sub_1C43FBE2C();
  }

  sub_1C4D61780(a2);
  sub_1C4D62120(a2);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  if (os_log_type_enabled(v22, v23))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4408064(&dword_1C43F8000, v24, v25, "ViewOrchestrationSystem: registering scheduled tasks");
    sub_1C43FBE2C();
  }

  sub_1C4AEA7A0();
  sub_1C4A4CCC0(a2);
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CF8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_1C43FCED0();
    *v28 = 0;
    _os_log_impl(&dword_1C43F8000, v26, v27, "ViewOrchestrationSystem: starting XPC", v28, 2u);
    sub_1C43FBE2C();
  }

  type metadata accessor for ViewXPC();
  sub_1C4D20970(a2);
  type metadata accessor for CoordinationXPC();
  sub_1C469C4E8(a2);
  type metadata accessor for InternalBiomeXPC();
  sub_1C4959ACC(a2);
}

unint64_t sub_1C4C8E964()
{
  result = qword_1EC0C54C0;
  if (!qword_1EC0C54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewOrchestrationSystem(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C4C8EA64()
{
  sub_1C43FBD3C();
  v64[7] = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v64[6] = v4 - v3;
  v5 = sub_1C456902C(&dword_1EC0C4518, &unk_1C4F628C0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v64 - v7;
  v74 = _s10ViewConfigVMa(0);
  sub_1C43FCDF8();
  v64[2] = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v69 = (v11 - v12);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  sub_1C43FCE30(v15);
  v68 = _s15ConfigReferenceOMa(0);
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v67 = v19 - v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v70 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v64 - v24;
  sub_1C4C91D3C();
  v27 = 0;
  v73 = v26[2];
  v64[5] = v1 + 32;
  v64[4] = v1 + 8;
  v65 = MEMORY[0x1E69E7CC0];
  *&v28 = 136315394;
  v66 = v28;
  v71 = v17;
  v72 = v26;
  while (v73 != v27)
  {
    if (v27 >= v26[2])
    {
      __break(1u);
      goto LABEL_26;
    }

    sub_1C43FC354();
    sub_1C44113EC();
    sub_1C45097F0();
    sub_1C4C907BC();
    if (v29 >> 60 == 15)
    {
      v30 = 1;
    }

    else
    {
      sub_1C442A778();
      v31 = objc_autoreleasePoolPush();
      sub_1C4EF9348();
      swift_allocObject();
      sub_1C4EF9338();
      sub_1C44902F4(&qword_1EDDFF5F0);
      sub_1C44099B8();
      sub_1C4EF9328();

      objc_autoreleasePoolPop(v31);
      v32 = sub_1C43FD024();
      sub_1C441DFEC(v32, v33);
      v30 = 0;
    }

    v34 = v74;
    sub_1C440BAA8(v8, v30, 1, v74);
    sub_1C445009C();
    sub_1C443C22C(v25, v35);
    if (sub_1C44157D4(v8, 1, v34) == 1)
    {
      sub_1C4420C3C(v8, &dword_1EC0C4518, &unk_1C4F628C0);
      ++v27;
      v26 = v72;
    }

    else
    {
      sub_1C4CA9CF8();
      sub_1C4CA9CF8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E0C8(0, *(v65 + 16) + 1, 1, v65);
        v65 = v38;
      }

      v37 = *(v65 + 16);
      v36 = *(v65 + 24);
      if (v37 >= v36 >> 1)
      {
        v39 = sub_1C43FCFE8(v36);
        sub_1C458E0C8(v39, v37 + 1, 1, v65);
        v65 = v40;
      }

      ++v27;
      *(v65 + 16) = v37 + 1;
      sub_1C43FC354();
      sub_1C440B6DC();
      sub_1C4CA9CF8();
      v26 = v72;
    }
  }

  if (qword_1EDDFECD0 == -1)
  {
    goto LABEL_15;
  }

LABEL_26:
  sub_1C4400FC0();
  swift_once();
LABEL_15:
  v41 = sub_1C4F00978();
  sub_1C43FCEE8(v41, qword_1EDE2DF70);
  v42 = v65;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = sub_1C4F00968();
  v44 = sub_1C4F01CB8();
  if (os_log_type_enabled(v43, v44))
  {
    sub_1C440F274();
    v45 = sub_1C440E550();
    v76 = v45;
    dword_1EC0C4518 = 134218242;
    *algn_1EC0C451C = *(v42 + 16);

    word_1EC0C4524 = 2080;
    v46 = *(v42 + 16);
    v47 = MEMORY[0x1E69E7CC0];
    if (v46)
    {
      v72 = v45;
      LODWORD(v73) = v44;
      v74 = v43;
      v75 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v46, 0);
      v47 = v75;
      sub_1C43FC354();
      v49 = v42 + v48;
      v51 = *(v50 + 72);
      do
      {
        sub_1C440B6DC();
        v52 = v69;
        sub_1C45097F0();
        v54 = *v52;
        v53 = v52[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4408084();
        sub_1C443C22C(v52, v55);
        v75 = v47;
        v57 = *(v47 + 16);
        v56 = *(v47 + 24);
        if (v57 >= v56 >> 1)
        {
          v59 = sub_1C43FCFE8(v56);
          sub_1C44CD9C0(v59, v57 + 1, 1);
          v47 = v75;
        }

        *(v47 + 16) = v57 + 1;
        v58 = v47 + 16 * v57;
        *(v58 + 32) = v54;
        *(v58 + 40) = v53;
        v49 += v51;
        --v46;
      }

      while (v46);
      v43 = v74;
      LOBYTE(v44) = v73;
      v45 = v72;
    }

    v75 = v47;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44ECB2C(&v75);

    v60 = MEMORY[0x1C6940380](v75, MEMORY[0x1E69E6158]);
    v62 = v61;

    v63 = sub_1C441D828(v60, v62, &v76);

    *algn_1EC0C4526 = v63;
    _os_log_impl(&dword_1C43F8000, v43, v44, "Found %ld view configs: %s", &dword_1EC0C4518, 0x16u);
    sub_1C440962C(v45);
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {
  }

  sub_1C43FE9F0();
}

void sub_1C4C8F3A8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v199[1] = v3;
  v4 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBC74();
  sub_1C43FCE30(v6);
  v198 = _s6ConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C43FCE30(v9 - v8);
  v10 = _s10ViewConfigVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v167 - v17);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4410A24();
  v20 = *(v2 + 16);
  v171 = v20;
  v199[0] = v0;
  if (v20)
  {
    v202[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v20, 0);
    v21 = v202[0];
    sub_1C43FC354();
    v196 = v2;
    v23 = v2 + v22;
    v24 = *(v11 + 72);
    v25 = v20;
    do
    {
      sub_1C440B6DC();
      sub_1C45097F0();
      v26 = *v18;
      v27 = v18[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4408084();
      sub_1C443C22C(v18, v28);
      v202[0] = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = sub_1C43FCFE8(v29);
        sub_1C44CD9C0(v32, v30 + 1, 1);
        v21 = v202[0];
      }

      *(v21 + 16) = v30 + 1;
      v31 = v21 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v27;
      v23 += v24;
      --v25;
    }

    while (v25);
    v20 = v171;
    v0 = v199[0];
    v2 = v196;
  }

  v33 = sub_1C4499940();
  if (!v20)
  {
LABEL_153:

    goto LABEL_154;
  }

  sub_1C43FC354();
  v35 = v2 + v34;
  v180 = *(v11 + 72);
  v36 = MEMORY[0x1E69E7CC8];
  v168 = v2 + v34;
  v37 = v20;
  v191 = v33;
  do
  {
    sub_1C440B6DC();
    sub_1C45097F0();
    v38 = v197;
    sub_1C4438D00(v197);
    sub_1C4459C44();
    v40 = *(v38 + *(v39 + 48));
    sub_1C443C22C(v38, _s6ConfigVMa);
    v41 = *v0;
    v42 = v0[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v202[0] = v36;
    sub_1C457B5F8();
    sub_1C440E4D8();
    if (v45)
    {
      goto LABEL_159;
    }

    v46 = v43;
    v47 = v44;
    sub_1C456902C(&qword_1EC0C5760, &qword_1C4F628B0);
    v48 = sub_1C4F02458();
    v36 = v202[0];
    v185 = v202[0];
    if ((v48 & 1) == 0)
    {
      v56 = v191;
      if (v47)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_1C457E51C(v46, v40 & 1, MEMORY[0x1E69E7CD0], v36);
      goto LABEL_16;
    }

    v54 = sub_1C457B5F8();
    v56 = v191;
    if ((v47 & 1) != (v55 & 1))
    {
      goto LABEL_160;
    }

    v46 = v54;
    v36 = v185;
    if ((v47 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_16:
    sub_1C44869B4(v202, v41, v42, v49, v50, v51, v52, v53, v167, v168, v169, v170, v171, v172, v173, v174, v175, *(&v175 + 1), v176, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186);

    sub_1C4408084();
    v0 = v199[0];
    sub_1C443C22C(v199[0], v57);
    v35 += v180;
    --v37;
  }

  while (v37);
  v193 = v56 + 56;
  v173 = 0x80000001C4F862C0;
  v172 = 0x80000001C4F86260;
  v189 = 1;
  p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
  *&v58 = 136315138;
  v190 = v58;
  v60 = 56;
  *&v58 = 136315394;
  v178 = v58;
  *&v58 = 136315650;
  v175 = v58;
  sub_1C4495D88();
  sub_1C4CB0368();
  while (1)
  {
    v174 = v61;
    sub_1C440B6DC();
    sub_1C45097F0();
    if (p_info[410] != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v62 = sub_1C4F00978();
    sub_1C43FCEE8(v62, qword_1EDE2DF70);
    sub_1C440B6DC();
    sub_1C4CB04B8();
    v192 = p_info;
    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v64))
    {
      v65 = sub_1C43FD084();
      v66 = sub_1C43FFD34();
      *v65 = sub_1C44569CC(v66).n128_u32[0];
      v67 = *v37;
      v68 = *(v37 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4408084();
      sub_1C443C22C(v37, v69);
      v70 = sub_1C441D828(v67, v68, v202);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1C43F8000, v63, v64, "Validating view configuration for %s", v65, 0xCu);
      sub_1C440962C(v66);
      v60 = 56;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4408084();
      sub_1C443C22C(v37, v71);
    }

    ++v174;
    sub_1C4CB0368();
    while (2)
    {
      v73 = &unk_1F43D2FB8 + v72++;
      switch(v73[32])
      {
        case 1:
          v176 = v72;
          if (*(v37 + 232))
          {
            v37 = *(v37 + 232);
          }

          else
          {
            v37 = MEMORY[0x1E69E7CC0];
          }

          v184 = *(v37 + 16);
          if (!v184)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            goto LABEL_140;
          }

          v183 = v37 + 32;
          v181 = v37;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v74 = v181;
          v75 = 0;
          while (1)
          {
            if (v75 >= *(v74 + 16))
            {
              __break(1u);
              goto LABEL_158;
            }

            v76 = (v183 + 48 * v75);
            v77 = v76[2];
            v78 = *(v77 + 16);
            if (!v78)
            {
              goto LABEL_64;
            }

            v188 = v75;
            v195 = v78;
            v79 = v76[1];
            v80 = v76[4];
            v198 = v77 + 32;
            v186 = v80;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v187 = v79;
            v37 = v195;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v81 = 0;
            LODWORD(v197) = 1;
            v82 = v37;
            v194 = v77;
            while (1)
            {
              if (v81 >= v82)
              {
                __break(1u);
                goto LABEL_153;
              }

              sub_1C4459C44();
              v85 = (v83 + v84 * v60);
              v86 = *v85;
              v87 = v85[1];
              v88 = v85[3];
              v63 = v85[6];
              v199[0] = v84 + 1;
              if (v87)
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                swift_bridgeObjectRetain_n();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4EFD2E8();
                v89 = sub_1C4EFD548();
                if (sub_1C44157D4(v40, 1, v89) == 1)
                {

                  sub_1C4420C3C(v40, &qword_1EC0B8568, &unk_1C4F319B0);
                  v90 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v63 = sub_1C4CB04A0(v90);
                  v91 = sub_1C4F01CE8();

                  if (os_log_type_enabled(v63, v91))
                  {
                    v92 = sub_1C43FD084();
                    v93 = sub_1C43FFD34();
                    *v92 = sub_1C44569CC(v93).n128_u32[0];
                    v94 = sub_1C441D828(v86, v87, v202);

                    *(v92 + 4) = v94;
                    _os_log_impl(&dword_1C43F8000, v63, v91, "Entity type %s is not a valid entity class", v92, 0xCu);
                    sub_1C440962C(v93);
                    sub_1C43FBE2C();
                    v77 = v194;
                    sub_1C43FBE2C();
                  }

                  else
                  {
                  }

                  sub_1C44562F0();
                  if (v114)
                  {

                    goto LABEL_62;
                  }

                  LODWORD(v197) = 0;
                  goto LABEL_58;
                }

                sub_1C4420C3C(v40, &qword_1EC0B8568, &unk_1C4F319B0);
                if (!v88)
                {
LABEL_49:

                  goto LABEL_52;
                }
              }

              else
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                if (!v88)
                {
                  goto LABEL_49;
                }
              }

              v95 = *(v88 + 16);
              if (v95)
              {
                break;
              }

LABEL_51:
              v37 = v195;
LABEL_52:

              sub_1C44562F0();
              if (v114)
              {

                v74 = sub_1C445BB3C();
                if ((v197 & 1) == 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_64;
              }

LABEL_58:
              v82 = *(v77 + 16);
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v40 = 0;
            v96 = -v95;
            v97 = v88 + 40;
            v196 = v88 + 40;
            do
            {
              v60 = v97 + 16 * v40++;
              while (1)
              {
                v99 = *(v60 - 8);
                v98 = *v60;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v56 = sub_1C4CC9E44(v99, v98, v86, v87);

                if ((v56 & 1) == 0)
                {
                  break;
                }

                ++v40;
                v60 += 16;
                if (v96 + v40 == 1)
                {
                  swift_bridgeObjectRelease_n();
                  sub_1C4401F30();
                  v77 = v194;
                  goto LABEL_51;
                }
              }

              LODWORD(v197) = 0;
              sub_1C4428EF4();
            }

            while (v100);
            swift_bridgeObjectRelease_n();

            v37 = v195;
            sub_1C44562F0();
            if (!v114)
            {
              LODWORD(v197) = 0;
              sub_1C4401F30();
              v77 = v194;
              goto LABEL_58;
            }

            sub_1C4401F30();
LABEL_62:

            sub_1C445BB3C();
LABEL_63:
            sub_1C4CB0420();
LABEL_64:
            if (++v75 == v184)
            {
              goto LABEL_140;
            }
          }

        case 2:
          v145 = v72;
          if (*(v37 + 256))
          {
            v63 = *(v37 + 256);
          }

          else
          {
            v63 = MEMORY[0x1E69E7CC0];
          }

          v40 = *(v63 + 16);
          if (!v40)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

            sub_1C4495D88();
            sub_1C4CB0368();
            goto LABEL_148;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v146 = 0;
          v147 = 32;
          v37 = 0xEB00000000737275;
          while (2)
          {
            if (v146 < *(v63 + 16))
            {
              v146 = (v146 + 1);
              v148 = 0xE400000000000000;
              v149 = 1702259052;
              switch(*(v63 + v147))
              {
                case 1:

                  goto LABEL_143;
                case 2:
                  v148 = 0xE500000000000000;
                  v149 = 0x796C696164;
                  break;
                case 3:
                  v150 = &v198;
                  goto LABEL_125;
                case 4:
                  v148 = 0xE600000000000000;
                  v151 = 1801807223;
                  goto LABEL_130;
                case 5:
                  v148 = 0xEB00000000737275;
                  v152 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
                  goto LABEL_133;
                case 6:
                  v148 = 0xEB00000000737275;
                  v152 = sub_1C4428E78();
LABEL_133:
                  v149 = v152 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
                  break;
                case 7:
                  v148 = 0xE600000000000000;
                  v151 = 1920298856;
LABEL_130:
                  v149 = v151 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
                  break;
                case 8:
                  v148 = 0xEE00736574756E69;
                  v149 = sub_1C4428E78() & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
                  break;
                case 9:
                  v148 = 0xED0000736574756ELL;
                  v149 = sub_1C43FE694() | 0x694D377900000000;
                  break;
                case 0xA:
                  v150 = v199;
LABEL_125:
                  v148 = *(v150 - 32);
                  v149 = 0xD000000000000013;
                  break;
                default:
                  break;
              }

              v153 = sub_1C44257B8(v149, v148);

              if ((v153 & 1) == 0)
              {
                v147 += 5;
                if (v40 == v146)
                {

                  sub_1C4495D88();
                  goto LABEL_147;
                }

                continue;
              }

LABEL_143:

              sub_1C440B6DC();
              v154 = sub_1C4CB04B8();
              v63 = sub_1C4CB04A0(v154);
              v155 = sub_1C4F01CE8();
              sub_1C43FEB2C(v155);
              sub_1C4495D88();
              if (v156)
              {
                v157 = sub_1C43FD084();
                v158 = sub_1C43FFD34();
                *v157 = sub_1C44569CC(v158).n128_u32[0];
                v159 = MEMORY[0xEB00000000737275];
                v160 = MEMORY[0xEB0000000073727D];
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4408084();
                sub_1C443C22C(0xEB00000000737275, v161);
                v162 = sub_1C441D828(v159, v160, v202);

                *(v157 + 4) = v162;
                _os_log_impl(&dword_1C43F8000, v63, v155, "%s: Cannot contain always update listeners with schedule 'none'", v157, 0xCu);
                sub_1C440962C(v158);
                sub_1C43FBE2C();
                sub_1C43FBE2C();
              }

              else
              {

                sub_1C4408084();
                sub_1C443C22C(0xEB00000000737275, v163);
              }

              sub_1C4CB0420();
LABEL_147:
              sub_1C4CB0368();
              v60 = 56;
LABEL_148:
              v72 = v145;
              goto LABEL_149;
            }

            break;
          }

LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          sub_1C4F029F8();
          __break(1u);
          return;
        case 4:
          v176 = v72;
          if (*(v37 + 264))
          {
            v101 = *(v37 + 264);
          }

          else
          {
            v101 = MEMORY[0x1E69E7CC0];
          }

          v102 = *(v101 + 16);
          if (v102)
          {
            v199[0] = v101 + 32;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v103 = 0;
            v104 = v102;
            v196 = v101;
            v198 = v102;
            while (v103 < v104)
            {
              v105 = v199[0] + v103 * v60;
              v107 = *(v105 + 16);
              v106 = *(v105 + 32);
              v108 = *(v105 + 48);
              v203 = *v105;
              v204 = v107;
              v206 = v108;
              v205 = v106;
              v110 = *(&v203 + 1);
              v109 = v107;
              if (*(v56 + 16))
              {
                sub_1C4F02AF8();
                sub_1C47F5DBC(&v203, v200);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4F01298();
                v111 = sub_1C4F02B68();
                v37 = ~(-1 << *(v56 + 32));
                do
                {
                  v112 = v111 & v37;
                  if (((*(v193 + (((v111 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v111 & v37)) & 1) == 0)
                  {

                    goto LABEL_96;
                  }

                  v113 = (*(v56 + 48) + 16 * v112);
                  v114 = *v113 == v110 && v113[1] == v109;
                  if (v114)
                  {
                    break;
                  }

                  v115 = sub_1C4F02938();
                  v111 = v112 + 1;
                }

                while ((v115 & 1) == 0);

                v40 = BYTE8(v204);
                v116 = v185;
                if (*(v185 + 16) && (v117 = sub_1C457B5F8(), (v118 & 1) != 0))
                {
                  v102 = *(*(v116 + 56) + 8 * v117);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                }

                else
                {
                  v102 = MEMORY[0x1E69E7CD0];
                }

                if (*(v102 + 16))
                {
                  sub_1C4F02AF8();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F01298();
                  v119 = sub_1C4F02B68();
                  v37 = v102 + 56;
                  v63 = ~(-1 << *(v102 + 32));
                  while (1)
                  {
                    v120 = v119 & v63;
                    if (((*(v37 + (((v119 & v63) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v119 & v63)) & 1) == 0)
                    {
                      break;
                    }

                    v121 = (*(v102 + 48) + 16 * v120);
                    if (*v121 != v110 || v121[1] != v109)
                    {
                      v123 = sub_1C4F02938();
                      v119 = v120 + 1;
                      if ((v123 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    sub_1C47F5E18(&v203);

                    goto LABEL_112;
                  }
                }

                sub_1C440B6DC();
                sub_1C4CB04B8();
                v133 = sub_1C47F5DBC(&v203, v202);
                v63 = sub_1C4CB04A0(v133);
                v134 = sub_1C4F01CE8();
                sub_1C47F5E18(&v203);
                if (os_log_type_enabled(v63, v134))
                {
                  v102 = sub_1C43FFD34();
                  v197 = swift_slowAlloc();
                  v202[0] = v197;
                  sub_1C4488A8C(v200);
                  sub_1C4408084();
                  sub_1C443C22C(v37, v135);
                  v136 = sub_1C441D828(v101, v56, v202);

                  *(v102 + 4) = v136;
                  v37 = 2080;
                  *(v102 + 12) = 2080;
                  if (v40)
                  {
                    v137 = 0x4F64657461647075;
                  }

                  else
                  {
                    v137 = 0x6E61684377656976;
                  }

                  if (v40)
                  {
                    v138 = 0xED00007463656A62;
                  }

                  else
                  {
                    v138 = 0xEB00000000646567;
                  }

                  v139 = sub_1C441D828(v137, v138, v202);
                  v101 = v196;

                  *(v102 + 14) = v139;
                  v56 = v191;
                  *(v102 + 22) = 2080;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C47F5E18(&v203);
                  v140 = sub_1C43FE5F8();
                  v143 = sub_1C441D828(v140, v141, v142);

                  *(v102 + 24) = v143;
                  _os_log_impl(&dword_1C43F8000, v63, v134, "%s: the diff type %s does not match for view %s", v102, 0x20u);
                  sub_1C440EE84();
                  swift_arrayDestroy();
                  sub_1C43FBE2C();
                  sub_1C43FBE2C();
                }

                else
                {
                  sub_1C47F5E18(&v203);

                  sub_1C4408084();
                  sub_1C443C22C(v37, v144);
                }

                sub_1C4CB0420();
LABEL_112:
                sub_1C4495D88();
                sub_1C441EE54();
              }

              else
              {
                sub_1C47F5DBC(&v203, v202);
LABEL_96:
                sub_1C440B6DC();
                sub_1C4CB04B8();
                v124 = sub_1C47F5DBC(&v203, v202);
                v63 = sub_1C4CB04A0(v124);
                v125 = sub_1C4F01CE8();
                sub_1C47F5E18(&v203);
                if (os_log_type_enabled(v63, v125))
                {
                  v102 = sub_1C440F274();
                  v197 = swift_slowAlloc();
                  v202[0] = v197;
                  sub_1C4488A8C(&v201);
                  sub_1C4408084();
                  sub_1C443C22C(v37, v126);
                  v127 = sub_1C441D828(v101, v56, v202);
                  v56 = v191;

                  *(v102 + 4) = v127;
                  v101 = v196;
                  *(v102 + 12) = 2080;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C47F5E18(&v203);
                  v128 = sub_1C43FE5F8();
                  v131 = sub_1C441D828(v128, v129, v130);

                  *(v102 + 14) = v131;
                  _os_log_impl(&dword_1C43F8000, v63, v125, "%s: Refers to a view %s that does not exist", v102, 0x16u);
                  sub_1C440EE84();
                  swift_arrayDestroy();
                  sub_1C43FBE2C();
                  sub_1C441EE54();
                  sub_1C43FBE2C();
                }

                else
                {
                  sub_1C47F5E18(&v203);

                  sub_1C4408084();
                  sub_1C443C22C(v37, v132);
                }

                sub_1C4CB0420();
              }

              ++v103;
              v60 = 56;
              if (v103 == v102)
              {
                goto LABEL_140;
              }

              v104 = *(v101 + 16);
            }

            __break(1u);
LABEL_156:

LABEL_154:
            sub_1C43FE9F0();
            return;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_140:

          sub_1C4CB0368();
          v72 = v176;
LABEL_149:
          if (v72 != 8)
          {
            continue;
          }

          sub_1C4CA6478();
          v164 = sub_1C4406834();
          v165 = sub_1C4CA6828(v164);
          sub_1C4408084();
          sub_1C443C22C(v37, v166);
          v189 &= v165 & v63;
          v61 = v174;
          p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
          if (v174 == v171)
          {
            goto LABEL_156;
          }

          break;
        default:
          goto LABEL_149;
      }

      break;
    }
  }
}

uint64_t sub_1C4C9076C(char a1)
{
  if (!a1)
  {
    return 0x796C6B656577;
  }

  if (a1 == 1)
  {
    return 0x796C68746E6F6DLL;
  }

  return 0x6C61756E6E61;
}

void sub_1C4C907BC()
{
  sub_1C43FBD3C();
  v0 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v88 = (v4 - v5);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v84 - v7;
  sub_1C4F01188();
  sub_1C43FCDF8();
  v86 = v10;
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v85 = v12;
  sub_1C43FBE44();
  v89 = sub_1C4EFA728();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v84 = v20;
  v21 = sub_1C43FBE44();
  v22 = _s15ConfigReferenceOMa(v21);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v26 = (v25 - v24);
  sub_1C44113EC();
  sub_1C45097F0();
  sub_1C43FE5F8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    v22 = v26[1];
    sub_1C4EFA598();
    v2 = sub_1C4EFA508();
    v28 = 0;
    v8 = *(v2 + 16);
    v0 = v14 + 16;
    v88 = (v14 + 8);
    v29 = v89;
    while (v8 != v28)
    {
      if (v28 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      sub_1C43FC354();
      (*(v14 + 16))(v18, v2 + v30 + *(v14 + 72) * v28, v29);
      if (sub_1C4EFA708() == v27 && v31 == v22)
      {
        v33 = v27;
        v34 = v22;

LABEL_21:

        v65 = v84;
        (*(v14 + 32))(v84, v18, v89);
        sub_1C4EFA718();
        sub_1C44106D4();
        v66 = v85;
        sub_1C4F01178();
        sub_1C4F01148();
        v68 = v67;

        (*(v86 + 8))(v66, v87);
        if (v68 >> 60 == 15)
        {
          if (qword_1EDDFECD0 != -1)
          {
            sub_1C4400FC0();
            swift_once();
          }

          v69 = sub_1C4F00978();
          sub_1C43FCEE8(v69, qword_1EDE2DF70);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v70 = sub_1C4F00968();
          v71 = sub_1C4F01CD8();

          if (os_log_type_enabled(v70, v71))
          {
            sub_1C43FD084();
            v72 = sub_1C440E550();
            v90 = v72;
            *v22 = 136315138;
            v73 = v65;
            v74 = sub_1C441D828(v33, v34, &v90);

            *(v22 + 4) = v74;
            sub_1C4404B90();
            _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
            sub_1C440962C(v72);
            sub_1C43FBE2C();
            sub_1C43FEA20();

            (*v88)(v73, v89);
          }

          else
          {

            (*v88)(v65, v89);
          }
        }

        else
        {
          v80 = sub_1C43FD024();
          v81(v80);
        }

        goto LABEL_31;
      }

      v33 = v27;
      v34 = v22;
      v22 = sub_1C4F02938();

      if (v22)
      {
        goto LABEL_21;
      }

      v29 = v89;
      (*v88)(v18, v89);
      ++v28;
      v22 = v34;
      v27 = v33;
    }

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v52 = sub_1C4F00978();
    sub_1C43FCEE8(v52, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CD8();

    if (os_log_type_enabled(v53, v54))
    {
      sub_1C43FD084();
      v55 = sub_1C440E550();
      v90 = v55;
      *v22 = 136315138;
      v56 = sub_1C43FD024();
      v59 = sub_1C441D828(v56, v57, v58);

      *(v22 + 4) = v59;
      sub_1C4404B90();
      _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      sub_1C440962C(v55);
      sub_1C43FBE2C();
      sub_1C43FEA20();
    }

    else
    {
    }
  }

  else
  {
    (*(v2 + 32))(v8, v26, v0);
    sub_1C4F01178();
    sub_1C4F010D8();
    sub_1C44106D4();
    v35 = v85;
    sub_1C4F01178();
    sub_1C4F01148();
    v37 = v36;

    (*(v86 + 8))(v35, v87);
    if (v37 >> 60 == 15)
    {
      if (qword_1EDDFECD0 != -1)
      {
LABEL_33:
        sub_1C4400FC0();
        swift_once();
      }

      v38 = sub_1C4F00978();
      sub_1C43FCEE8(v38, qword_1EDE2DF70);
      v39 = v88;
      (*(v2 + 16))(v88, v8, v0);
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CD8();
      if (os_log_type_enabled(v40, v41))
      {
        sub_1C43FD084();
        v42 = sub_1C440E550();
        v90 = v42;
        *v22 = 136315138;
        sub_1C4415D74();
        sub_1C44902F4(v43);
        sub_1C4F02858();
        v44 = *(v2 + 8);
        (v44)(v39, v0);
        v45 = sub_1C442A90C();
        v48 = sub_1C441D828(v45, v46, v47);

        *(v22 + 4) = v48;
        _os_log_impl(&dword_1C43F8000, v40, v41, "ViewMigration: Failed to retrieve contents of config for %s", v22, 0xCu);
        sub_1C440962C(v42);
        sub_1C43FBE2C();
        sub_1C43FEA20();

        v49 = sub_1C43FD024();
        v44(v49);
      }

      else
      {

        v50 = *(v2 + 8);
        (v50)(v39, v0);
        v51 = sub_1C43FD024();
        v50(v51);
      }
    }

    else
    {
      v82 = sub_1C43FD024();
      v83(v82);
    }
  }

LABEL_31:
  sub_1C442A90C();
  sub_1C43FE9F0();
}

void sub_1C4C90FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v25;
  a20 = v26;
  v27 = v22;
  v29 = v28;
  v30 = sub_1C4EF9CD8();
  v31 = sub_1C43FFAE0(v30, &a10);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  sub_1C43FCE30(v33 - v32);
  v34 = 0;
  v130 = v29;
  while (2)
  {
    v128 = v34 + 1;
    switch(*(&unk_1F43D2FB8 + v34 + 32))
    {
      case 1:
        sub_1C4459C44();
        v36 = *(v35 + 232);
        if (!v36)
        {
          goto LABEL_48;
        }

        v20 = 0;
        v123 = *(v36 + 16);
        v37 = (v36 + 32);
        for (i = *(v35 + 232); ; v36 = i)
        {
          if (v123 == v20)
          {
            goto LABEL_48;
          }

          if (v20 >= *(v36 + 16))
          {
            goto LABEL_64;
          }

          v39 = *v37;
          v38 = v37[1];
          *&v132[12] = *(v37 + 28);
          v131 = v39;
          *v132 = v38;
          sub_1C44885D0();
          v40 = *&v132[24];
          v41 = sub_1C4CB03BC();
          sub_1C47F5D0C(v41, v42);
          if (!sub_1C442F9B0().n128_u64[0])
          {
            goto LABEL_47;
          }

          sub_1C4459C44();
          v23 = *(v43 + 8);
          *&v132[8] = &unk_1F43D0FA8;
          *&v132[16] = sub_1C4CA7E60();
          sub_1C44180FC();
          v44 = swift_allocObject();
          v45 = sub_1C4488264(v44);
          v46 = sub_1C443E438(v45);
          *(v46 + 17) = v21 >> 8;
          *(v46 + 40) = v127;
          v47 = sub_1C442F9B0();
          *(v48 + 24) = v47;
          *(v48 + 56) = v40;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44106BC();
          sub_1C445FEFC();
          sub_1C43FBF44();
          sub_1C4BB6560();
          if (v22)
          {
            break;
          }

          v24 = v49;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BBF0C();
          sub_1C4EF9C88();
          sub_1C4EF9AD8();
          v50 = sub_1C441CF00();
          v51(v50);
          sub_1C44F19F4();
          sub_1C43FBF44();
          sub_1C4BB8B20();
          sub_1C43FBF44();
          sub_1C4BB6B24();
          sub_1C43FBF44();
          sub_1C4BB6B24();
          v27 = 0;

          sub_1C440962C(&v131);
          v37 += 3;
          ++v20;
        }

        goto LABEL_55;
      case 2:
        sub_1C4459C44();
        v70 = *(v69 + 256);
        if (!v70)
        {
          goto LABEL_48;
        }

        v23 = 0;
        *&v127 = *(v70 + 16);
        v24 = (v70 + 36);
        while (2)
        {
          if (v127 == v23)
          {
            goto LABEL_48;
          }

          if (v23 >= *(v70 + 16))
          {
            goto LABEL_59;
          }

          v71 = *v24;
          sub_1C4459C44();
          v21 = *v72;
          v73 = sub_1C4CA7F2C();
          v74 = *(v24 - 1);
          *&v132[8] = &unk_1F4409820;
          *&v132[16] = v73;
          LODWORD(v131) = v74;
          BYTE4(v131) = v71;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C442F9B0();
          sub_1C440EE84();
          sub_1C445C248();
          sub_1C4BB6560();
          if (!v22)
          {
            sub_1C44BBF0C();
            sub_1C4EF9C88();
            sub_1C4EF9AD8();
            v75 = sub_1C441CF00();
            v76(v75);
            sub_1C44F19F4();
            sub_1C445C248();
            sub_1C4BB8B20();
            sub_1C4414C9C();
            sub_1C445C248();
            sub_1C4BB6B24();
            sub_1C4414C9C();
            v20 = v130;
            sub_1C445C248();
            sub_1C4BB6B24();
            v27 = 0;

            sub_1C440962C(&v131);
            v24 += 5;
            ++v23;
            continue;
          }

          goto LABEL_53;
        }

      case 3:
        sub_1C4459C44();
        v23 = *(v77 + 248);
        if (!v23)
        {
          goto LABEL_48;
        }

        v78 = 0;
        v125 = *(v23 + 16);
        v79 = (v23 + 32);
        v122 = *(v77 + 248);
LABEL_25:
        if (v125 == v78)
        {
          goto LABEL_48;
        }

        if (v78 >= *(v23 + 16))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          return;
        }

        v81 = v79[2];
        v80 = v79[3];
        v82 = v79[1];
        v131 = *v79;
        *v132 = v82;
        *&v132[16] = v81;
        v133 = v80;
        sub_1C44885D0();
        v83 = *&v132[24];
        v20 = *(&v133 + 1);
        v24 = v133;
        v84 = sub_1C4CB03BC();
        sub_1C445CD7C(v84, v85);
        if (!sub_1C442F9B0().n128_u64[1])
        {
LABEL_47:
          sub_1C445FEFC();
LABEL_48:
          v34 = v128;
          if (v128 == 8)
          {
LABEL_52:
            sub_1C4CB0374();

LABEL_56:

            goto LABEL_57;
          }

          continue;
        }

        sub_1C4459C44();
        *&v132[8] = &unk_1F4409938;
        *&v132[16] = sub_1C4CA7EB4();
        *&v131 = swift_allocObject();
        v86 = sub_1C443E438(v131);
        *(v86 + 17) = v21 >> 8;
        *(v86 + 40) = v127;
        v87 = sub_1C442F9B0();
        *(v88 + 24) = v87;
        *(v88 + 56) = v83;
        *(v88 + 64) = v24;
        *(v88 + 72) = v20;
        *(v88 + 16) = v21;
        v24 = (v88 + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v22 = v27;
        sub_1C4BB6560();
        if (!v27)
        {
          MEMORY[0x1EEE9AC00](v89);
          v90 = *(v24 + 1);
          v134[0] = *v24;
          v134[1] = v90;
          v91 = *(v24 + 3);
          v134[2] = *(v24 + 2);
          v134[3] = v91;
          v21 = v134;
          v92 = sub_1C4CB0374();
          sub_1C4CC6544(v92, v93);

          sub_1C440962C(&v131);
          v79 += 4;
          ++v78;
          sub_1C445FEFC();
          v23 = v122;
          goto LABEL_25;
        }

LABEL_53:

        sub_1C440962C(&v131);
        sub_1C4CB0374();

LABEL_57:

        sub_1C44109F8();
        return;
      case 4:
        sub_1C4459C44();
        v53 = *(v52 + 264);
        if (!v53)
        {
          goto LABEL_48;
        }

        v20 = 0;
        v121 = *(v53 + 16);
        v54 = (v53 + 32);
        v119 = *(v52 + 264);
        while (2)
        {
          if (v121 == v20)
          {
            goto LABEL_48;
          }

          if (v20 >= *(v53 + 16))
          {
            goto LABEL_60;
          }

          v129 = v20;
          v55 = *(v54 + 12);
          v57 = v54[1];
          v56 = v54[2];
          v124 = v54;
          v131 = *v54;
          *v132 = v57;
          *&v132[16] = v56;
          LODWORD(v133) = v55;
          v23 = *(&v131 + 1);
          v21 = v131;
          v58 = *(&v57 + 1);
          v24 = v57;
          v59 = *(&v56 + 1);
          v20 = v56;
          v60 = sub_1C4CB03BC();
          sub_1C47F5DBC(v60, v61);
          if (!v24)
          {
            goto LABEL_47;
          }

          sub_1C4459C44();
          *&v127 = *v62;
          *&v132[8] = &unk_1F4409540;
          *&v132[16] = sub_1C4CA7E0C();
          v63 = swift_allocObject();
          v64 = sub_1C4488264(v63);
          v65 = sub_1C443E438(v64);
          *(v65 + 17) = v21 >> 8;
          *(v65 + 24) = v23;
          *(v65 + 32) = v24;
          *(v65 + 40) = v58;
          *(v65 + 48) = v20;
          *(v65 + 56) = v59;
          *(v65 + 64) = v55;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44106BC();
          sub_1C445FEFC();
          sub_1C43FBF44();
          sub_1C4BB6560();
          if (!v22)
          {
            sub_1C44BBF0C();
            sub_1C4EF9C88();
            sub_1C4EF9AD8();
            v66 = sub_1C441CF00();
            v67(v66);
            sub_1C44F19F4();
            sub_1C43FBF44();
            sub_1C4BB8B20();
            sub_1C4436718(v68);
            sub_1C442253C();
            sub_1C43FBF44();
            sub_1C4BB6B24();
            v27 = 0;

            sub_1C440962C(&v131);
            v54 = (v124 + 56);
            v20 = v129 + 1;
            v53 = v119;
            continue;
          }

          goto LABEL_51;
        }

      case 5:
        sub_1C4459C44();
        v101 = *(v100 + 272);
        if (!v101)
        {
          goto LABEL_48;
        }

        v20 = 0;
        v126 = *(v100 + 272);
        while (2)
        {
          sub_1C44AB1C0();
          if (v95)
          {
            goto LABEL_48;
          }

          if (v20 >= *(v101 + 16))
          {
            goto LABEL_61;
          }

          v103 = v20;
          v104 = *(v102 + 28);
          v105 = v102[1];
          *&v127 = v102;
          v131 = *v102;
          *v132 = v105;
          *&v132[12] = v104;
          v23 = *(&v131 + 1);
          v21 = v131;
          v106 = *&v132[8];
          v24 = v105;
          v107 = v104 >> 32;
          v20 = HIDWORD(v104);
          v108 = sub_1C4CB03BC();
          sub_1C47F5E6C(v108, v109);
          if (!v24)
          {
            goto LABEL_47;
          }

          sub_1C4459C44();
          *&v132[8] = &unk_1F44096F8;
          *&v132[16] = sub_1C4CA7DB8();
          sub_1C44180FC();
          v110 = swift_allocObject();
          *&v131 = v110;
          *(v110 + 16) = v21;
          *(v110 + 23) = HIBYTE(v21);
          *(v110 + 21) = HIDWORD(v21) >> 8;
          *(v110 + 17) = v21 >> 8;
          *(v110 + 24) = v23;
          *(v110 + 32) = v24;
          *(v110 + 40) = v106;
          *(v110 + 48) = v107;
          *(v110 + 56) = v20;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44106BC();
          sub_1C445FEFC();
          sub_1C43FBF44();
          sub_1C4BB6560();
          if (!v22)
          {
            sub_1C44BBF0C();
            sub_1C4EF9C88();
            sub_1C4EF9AD8();
            v111 = sub_1C441CF00();
            v112(v111);
            sub_1C44F19F4();
            sub_1C43FBF44();
            sub_1C4BB8B20();
            sub_1C4436718(v113);
            sub_1C442253C();
            sub_1C43FBF44();
            sub_1C4BB6B24();
            v27 = 0;

            sub_1C440962C(&v131);
            v20 = v103 + 1;
            v101 = v126;
            continue;
          }

          break;
        }

LABEL_51:

        sub_1C440962C(&v131);
        goto LABEL_52;
      case 6:
        sub_1C4459C44();
        v22 = *(v114 + 240);
        if (!v22)
        {
          goto LABEL_48;
        }

        sub_1C44754E4();
        sub_1C44AB1C0();
        if (v95)
        {
          goto LABEL_48;
        }

        if (v20 >= *(v22 + 16))
        {
          goto LABEL_63;
        }

        sub_1C4CB0480();
        if (!v23)
        {
          goto LABEL_48;
        }

        sub_1C4459C44();
        *&v132[8] = &unk_1F4409790;
        *&v132[16] = sub_1C4CA7D64();
        v115 = swift_allocObject();
        v116 = sub_1C4488264(v115);
        *(v116 + 24) = v24;
        *(v116 + 32) = v23;
        v117 = sub_1C442F9B0().n128_u64[0];
        *(v118 + 40) = vuzp1_s8(v117, v117).u32[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44106BC();
        sub_1C43FBF44();
        sub_1C4BB6560();
        goto LABEL_55;
      case 7:
        sub_1C4459C44();
        v22 = *(v94 + 280);
        if (!v22)
        {
          goto LABEL_48;
        }

        sub_1C44754E4();
        sub_1C44AB1C0();
        if (v95)
        {
          goto LABEL_48;
        }

        if (v20 >= *(v22 + 16))
        {
          goto LABEL_62;
        }

        sub_1C4CB0480();
        if (!v23)
        {
          goto LABEL_48;
        }

        sub_1C4459C44();
        *&v132[8] = &unk_1F4409668;
        *&v132[16] = sub_1C4CA7D10();
        v96 = swift_allocObject();
        v97 = sub_1C4488264(v96);
        *(v97 + 24) = v24;
        *(v97 + 32) = v23;
        v98 = sub_1C442F9B0().n128_u64[0];
        *(v99 + 40) = vuzp1_s8(v98, v98).u32[0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44106BC();
        sub_1C43FBF44();
        sub_1C4BB6560();
LABEL_55:

        sub_1C440962C(&v131);
        sub_1C4CB0374();

        goto LABEL_56;
      default:
        goto LABEL_48;
    }
  }
}

void sub_1C4C91D3C()
{
  sub_1C43FBD3C();
  v0 = 0;
  v1 = sub_1C456902C(&qword_1EC0C5558, &qword_1C4F62750);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBC74();
  v73 = v3;
  v4 = sub_1C43FBE44();
  v74 = _s15ConfigReferenceOMa(v4);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD230();
  sub_1C43FBE44();
  sub_1C4EFA728();
  sub_1C43FCDF8();
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v81 = v9 - v8;
  sub_1C43FBE44();
  v79 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C44867F4();
  v76 = sub_1C4F01E88();
  v75 = sub_1C4F01EA8();
  v83[0] = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 249, 0);
  v16 = v83[0];
  v77 = *MEMORY[0x1E69A9D28];
  v17 = (v11 + 104);
  do
  {
    v18 = *(&unk_1F43D9F30 + v0 + 32);
    if (v18 == 71)
    {
      (*v17)(v15, v77, v79);
      v19 = sub_1C4F001D8();
      v20 = sub_1C43FE5F8();
      v21(v20);
      if (v19)
      {
        v22 = 0xD000000000000025;
      }

      else
      {
        v22 = 0xD000000000000014;
      }

      v23 = "entityAliasEuclidVDB";
      if ((v19 & 1) == 0)
      {
        v23 = "/TestViews/config/";
      }

      v24 = v23 | 0x8000000000000000;
    }

    else
    {
      v22 = sub_1C4CB06C4(v18);
      v24 = v25;
    }

    v83[0] = v16;
    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      v29 = sub_1C43FCFE8(v26);
      sub_1C44CD9C0(v29, v27 + 1, 1);
      v16 = v83[0];
    }

    ++v0;
    *(v16 + 16) = v27 + 1;
    v28 = v16 + 16 * v27;
    *(v28 + 32) = v22;
    *(v28 + 40) = v24;
  }

  while (v0 != 249);
  sub_1C4EFA598();
  v30 = sub_1C4EFA508();
  v31 = *(v30 + 16);
  if (v31)
  {
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v31, 0);
    v32 = v83[0];
    sub_1C43FC354();
    v34 = v30 + v33;
    v78 = *(v35 + 56);
    v80 = v36;
    v37 = (v35 - 8);
    do
    {
      v38 = sub_1C4414A08();
      v80(v38);
      v39 = sub_1C4EFA708();
      v41 = v40;
      (*v37)(v81, v82);
      v83[0] = v32;
      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      if (v43 >= v42 >> 1)
      {
        v45 = sub_1C43FCFE8(v42);
        sub_1C44CD9C0(v45, v43 + 1, 1);
        v32 = v83[0];
      }

      *(v32 + 16) = v43 + 1;
      v44 = v32 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v34 += v78;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v83[0] = v16;
  sub_1C449ADBC(v32);
  v46 = sub_1C4499940();
  v47 = v46;
  v48 = v46 + 56;
  v49 = 1 << *(v46 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v46 + 56);
  v52 = (v49 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = 0;
  v56 = v73;
  if (v51)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v57 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v57 >= v52)
    {

      sub_1C43FE9F0();
      return;
    }

    v51 = *(v48 + 8 * v57);
    ++v53;
    if (v51)
    {
      v53 = v57;
      do
      {
LABEL_27:
        v58 = (*(v47 + 48) + ((v53 << 10) | (16 * __clz(__rbit64(v51)))));
        v59 = v58[1];
        v83[0] = *v58;
        v83[1] = v59;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4CA5F64(v83, v76, 0x6F632F7377656956, 0xED00002F6769666ELL, v75, 0xD000000000000012, 0x80000001C4FBE7C0, v56);

        if (sub_1C44157D4(v56, 1, v74) == 1)
        {
          sub_1C4420C3C(v56, &qword_1EC0C5558, &qword_1C4F62750);
        }

        else
        {
          sub_1C4CA9CF8();
          sub_1C4CA9CF8();
          v60 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C44B9234();
            sub_1C458E088(v63, v64, v65, v66);
            v54 = v67;
          }

          v62 = *(v54 + 16);
          v61 = *(v54 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1C43FCFE8(v61);
            sub_1C44B9234();
            sub_1C458E088(v68, v69, v70, v71);
            v54 = v72;
          }

          *(v54 + 16) = v62 + 1;
          sub_1C43FC354();
          sub_1C44113EC();
          sub_1C4CA9CF8();
          v55 = v60;
          v56 = v73;
        }

        v51 &= v51 - 1;
      }

      while (v51);
    }
  }

  __break(1u);
}

void sub_1C4C923A0()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4402A68();
  v4 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4410A24();
  sub_1C44867F4();
  v12 = sub_1C4F01EA8();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 resourceURL];
    if (v14)
    {
      v15 = v14;
      sub_1C4EF98C8();

      v16 = *(v6 + 32);
      v16(v0, v10, v4);
      sub_1C4412380();
      sub_1C440BAA8(v17, v18, v19, v20);
      v21 = sub_1C43FE99C();
      (v16)(v21);
    }

    else
    {
      sub_1C4412380();
      sub_1C440BAA8(v35, v36, v37, v38);
      v39 = [v13 bundleURL];
      sub_1C4EF98C8();

      if (sub_1C44157D4(v0, 1, v4) != 1)
      {
        sub_1C4420C3C(v0, &unk_1EC0BABB0, &qword_1C4F16ED0);
      }
    }

    sub_1C4EF9888();

    (*(v6 + 8))(v1, v4);
    sub_1C4412380();
    sub_1C440BAA8(v40, v41, v42, v43);
    sub_1C43FE9F0();
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C43FCEE8(v22, qword_1EDE2DF70);
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CE8();
    if (sub_1C43FEB2C(v24))
    {
      *swift_slowAlloc() = 0;
      sub_1C4404B90();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      sub_1C43FEA20();
    }

    sub_1C4412380();
    sub_1C43FE9F0();

    sub_1C440BAA8(v30, v31, v32, v33);
  }
}

unint64_t sub_1C4C9268C()
{
  sub_1C44103E8();
  sub_1C4F029A8();
  sub_1C4406834();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

void sub_1C4C926DC()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C5648, &qword_1C4F627E0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  v3 = sub_1C4414A08();
  sub_1C4417F50(v3, v4);
  sub_1C4507AF4();
  sub_1C4433620();
  sub_1C445AB20();
  sub_1C4F02BF8();
  LOBYTE(v28[0]) = 0;
  sub_1C441C410();
  sub_1C4F02798();
  if (!v1)
  {
    sub_1C441C410();
    sub_1C4F02738();
    v27[0] = 2;
    sub_1C4BB2C84();
    sub_1C43FCB14();
    sub_1C4F027E8();
    LOBYTE(v28[0]) = 3;
    sub_1C440A244();
    sub_1C4F02748();
    v5 = *(v0 + 56);
    v28[0] = *(v0 + 40);
    v28[1] = v5;
    v27[0] = 4;
    sub_1C4CA8D98();
    sub_1C43FCB14();
    sub_1C4F02778();
    *&v28[0] = *(v0 + 72);
    v27[0] = 5;
    sub_1C4CA8DEC();
    sub_1C43FCB14();
    sub_1C4F02778();
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v28[0] = *(v0 + 80);
    v28[1] = v7;
    LOBYTE(v28[2]) = v6;
    v27[0] = 6;
    sub_1C4CA8E40();
    sub_1C43FCB14();
    sub_1C4F02778();
    v28[0] = *(v0 + 120);
    v27[0] = 7;
    sub_1C4CA8E94();
    sub_1C43FCB14();
    sub_1C4F02778();
    LOBYTE(v28[0]) = *(v0 + 136);
    v27[0] = 8;
    sub_1C4BB2CD8();
    sub_1C43FCB14();
    sub_1C4F02778();
    *&v28[0] = *(v0 + 144);
    v27[0] = 9;
    sub_1C4CA8EE8();
    sub_1C43FCB14();
    sub_1C4F02778();
    v28[0] = *(v0 + 152);
    v27[0] = 10;
    sub_1C4CA8F3C();
    sub_1C43FCB14();
    sub_1C4F02778();
    v8 = *(v0 + 184);
    v28[0] = *(v0 + 168);
    v28[1] = v8;
    v27[0] = 11;
    sub_1C4CA8F90();
    sub_1C43FCB14();
    sub_1C4F02778();
    v9 = *(v0 + 216);
    v28[5] = *(v0 + 200);
    v28[6] = v9;
    sub_1C4CA8FE4();
    sub_1C440A244();
    sub_1C4F02778();
    memcpy(v28, (v0 + 232), 0x48uLL);
    memcpy(v27, (v0 + 232), sizeof(v27));
    sub_1C4508D08(v28, v26);
    sub_1C4CA9038();
    sub_1C440A244();
    sub_1C4F027E8();
    memcpy(v26, v27, sizeof(v26));
    sub_1C4508D64(v26);
    v10 = _s10ViewConfigVMa(0);
    _s6ConfigVMa(0);
    sub_1C4440E2C();
    sub_1C44902F4(v11);
    sub_1C4433EBC();
    sub_1C4F02778();
    v12 = (v0 + v10[19]);
    v13 = v12[1];
    v25[0] = *v12;
    v25[1] = v13;
    v14 = v12[3];
    v16 = *v12;
    v15 = v12[1];
    v25[2] = v12[2];
    v25[3] = v14;
    v24[4] = v16;
    v24[5] = v15;
    v17 = v12[3];
    v24[6] = v12[2];
    v24[7] = v17;
    sub_1C4CA908C(v25, v24);
    sub_1C4CA90FC();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4CB042C();
    sub_1C4420C3C(v24, &qword_1EC0C5640, &qword_1C4F627D8);
    sub_1C4F001E8();
    sub_1C447CC7C();
    sub_1C44902F4(v18);
    sub_1C4433EBC();
    sub_1C4F02778();
    sub_1C4507B90(v10[21]);
    sub_1C4CA9150();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C440A244();
    sub_1C4F02748();
    sub_1C440A244();
    sub_1C4F02748();
    sub_1C440A244();
    sub_1C4F02748();
    sub_1C4CA91A4();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4507B90(v10[26]);
    sub_1C4CA91F8();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4507B90(v10[27]);
    sub_1C4CA924C();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4CA92A0();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4507B90(v10[29]);
    sub_1C4CA92F4();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4BBB9FC();
    sub_1C440A244();
    sub_1C4F02778();
    v19 = (v0 + v10[31]);
    v22 = *v19;
    v23 = v19[1];
    sub_1C4BC3C1C(*v19, v23);
    sub_1C4B8C734();
    sub_1C440A244();
    sub_1C4F02778();
    sub_1C4BA83CC(v22, v23);
  }

  v20 = sub_1C4402F74();
  v21(v20);
  sub_1C4403810();
  sub_1C43FBC80();
}

unint64_t sub_1C4C92E9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C9268C();
  *a1 = result;
  return result;
}

unint64_t sub_1C4C92ECC()
{
  v1 = sub_1C4405D78();
  result = sub_1C4507BE4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4C92EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C926D8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4C92F28(uint64_t a1)
{
  v2 = sub_1C4507AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C92F64(uint64_t a1)
{
  v2 = sub_1C4507AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C92FB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        return 0;
      }

      goto LABEL_32;
    case 2:
      if (a8 != 2)
      {
        return 0;
      }

      goto LABEL_32;
    case 3:
      if (a8 != 3)
      {
        return 0;
      }

      goto LABEL_32;
    case 4:
      if (a8 != 4)
      {
        return 0;
      }

      v12 = a1 == a5 && a2 == a6;
      if (!v12)
      {
        sub_1C444C3E0();
        if ((sub_1C4F02938() & 1) == 0)
        {
          return 0;
        }
      }

      return *&a3 == *&a7;
    case 5:
      if (a8 != 5)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        sub_1C444C3E0();
        if ((sub_1C4F02938() & 1) == 0)
        {
          return 0;
        }
      }

      return *&a3 == *&a7;
    case 6:
      if (a8 != 6)
      {
        return 0;
      }

      if (a1 != a5 || a2 != a6)
      {
        sub_1C444C3E0();
        if ((sub_1C4F02938() & 1) == 0)
        {
          return 0;
        }
      }

      return a3 == a7;
    case 7:
      if (a8 != 7 || (sub_1C47E6D78(a1, a5) & 1) == 0)
      {
        return 0;
      }

      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      sub_1C441D304();
      goto LABEL_36;
    case 8:
      if (a8 != 8)
      {
        return 0;
      }

      return sub_1C47E7154(a1, a5);
    case 9:
      v14 = a3 | a2;
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || v14)
        {
          if (a1 != 2 || v14)
          {
            if (a1 != 3 || v14)
            {
              if (a1 != 4 || v14)
              {
                if (a1 != 5 || v14)
                {
                  sub_1C445A9F0();
                  if (!v12 || v31 != 6)
                  {
                    return 0;
                  }
                }

                else
                {
                  sub_1C445A9F0();
                  if (!v12 || v29 != 5)
                  {
                    return 0;
                  }
                }
              }

              else
              {
                sub_1C445A9F0();
                if (!v12 || v27 != 4)
                {
                  return 0;
                }
              }
            }

            else
            {
              sub_1C445A9F0();
              if (!v12 || v25 != 3)
              {
                return 0;
              }
            }
          }

          else
          {
            sub_1C445A9F0();
            if (!v12 || v23 != 2)
            {
              return 0;
            }
          }
        }

        else
        {
          sub_1C445A9F0();
          if (!v12 || v15 != 1)
          {
            return 0;
          }
        }

        if (!(a7 | a6))
        {
          return 1;
        }
      }

      else
      {
        sub_1C445A9F0();
        if (v12 && !(a7 | a6 | v22))
        {
          return 1;
        }
      }

      return 0;
    default:
      if (a8)
      {
        return 0;
      }

LABEL_32:
      if (a1 == a5 && a2 == a6)
      {
        return 1;
      }

LABEL_36:

      return sub_1C4F02938();
  }
}

uint64_t sub_1C4C93268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C437265746C6966 && a2 == 0xEB00000000737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B6F5470616DLL && a2 == 0xEC00000068746170;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7235949 && a2 == 0xE300000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7889261 && a2 == 0xE300000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1953718636 && a2 == 0xE400000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7463656C6C6F63 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x71457265746C6966 && a2 == 0xEB000000006C6175;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F4E7265746C6966 && a2 == 0xEE006C6175714574;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x616F6C466874616DLL && a2 == 0xE900000000000074;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x62756F446874616DLL && a2 == 0xEA0000000000656CLL;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x746E496874616DLL && a2 == 0xE700000000000000;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6169746C754D6F74 && a2 == 0xEC00000079617272;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7069726373627573 && a2 == 0xED00007463694474;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x7473656D69547361 && a2 == 0xEB00000000706D61)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1C4F02938();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
          }
        }
      }
    }
  }
}

uint64_t sub_1C4C93754(char a1)
{
  result = 0x6C437265746C6966;
  switch(a1)
  {
    case 1:
      return 0x79654B6F5470616DLL;
    case 2:
      return 7235949;
    case 3:
      return 7889261;
    case 4:
      return 1953718636;
    case 5:
      v4 = 1936877926;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 6:
      v3 = 0x63656C6C6F63;
      goto LABEL_16;
    case 7:
      v4 = 1853189987;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 8:
      return 0x71457265746C6966;
    case 9:
      return 0x6F4E7265746C6966;
    case 10:
      return 0x616F6C466874616DLL;
    case 11:
      return 0x62756F446874616DLL;
    case 12:
      v3 = 0x6E496874616DLL;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 13:
      result = 0x6169746C754D6F74;
      break;
    case 14:
      result = 0x7069726373627573;
      break;
    case 15:
      result = 0x7473656D69547361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C93918(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D614E7373616C63 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C939C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1C444C3E0();
    sub_1C4F02938();
    sub_1C4406834();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C93A34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C93AC4()
{
  sub_1C4404078();
  v3 = v1 == 0x6F6974617265706FLL && v2 == 0xE90000000000006ELL;
  if (v3 || (sub_1C4461D50(), (sub_1C4F02938() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x65756C6176 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    sub_1C4461D50();
    sub_1C4F02938();
    sub_1C4406834();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C93B78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x796172724179656BLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C93C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C93CCC(char a1)
{
  if (a1)
  {
    return 0x6570795461746164;
  }

  else
  {
    return 0x6570616873;
  }
}

void sub_1C4C93D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v132 = v20;
  *(&v127 + 1) = v24;
  v128 = v25;
  *&v127 = v26;
  v129[0] = v27;
  v29 = v28;
  v30 = sub_1C456902C(&qword_1EC0C5930, &qword_1C4F64070);
  sub_1C43FFAE0(v30, v125);
  v123[5] = v31;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  sub_1C43FCE30(v33);
  v126[1] = sub_1C456902C(&qword_1EC0C5938, &qword_1C4F64078);
  sub_1C43FCDF8();
  v125[2] = v34;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  sub_1C44D3E34(v36);
  v126[2] = sub_1C456902C(&qword_1EC0C5940, &qword_1C4F64080);
  sub_1C43FCDF8();
  v126[0] = v37;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBC74();
  v125[1] = v39;
  sub_1C456902C(&qword_1EC0C5948, &qword_1C4F64088);
  sub_1C43FCDF8();
  v124[1] = v41;
  v124[2] = v40;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v124[0] = v43;
  sub_1C456902C(&qword_1EC0C5950, &qword_1C4F64090);
  sub_1C43FCDF8();
  v123[33] = v45;
  v123[34] = v44;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v123[32] = v47;
  v48 = sub_1C456902C(&qword_1EC0C5958, &qword_1C4F64098);
  sub_1C43FFAE0(v48, &a18);
  v123[30] = v49;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBC74();
  sub_1C43FCE30(v51);
  v52 = sub_1C456902C(&qword_1EC0C5960, &qword_1C4F640A0);
  sub_1C43FFAE0(v52, &a15);
  v123[27] = v53;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBC74();
  sub_1C43FCE30(v55);
  v56 = sub_1C456902C(&qword_1EC0C5968, &qword_1C4F640A8);
  sub_1C43FFAE0(v56, &a12);
  v123[24] = v57;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBC74();
  sub_1C43FCE30(v59);
  v60 = sub_1C456902C(&qword_1EC0C5970, &qword_1C4F640B0);
  sub_1C43FFAE0(v60, v124);
  v123[2] = v61;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBC74();
  sub_1C43FCE30(v63);
  v64 = sub_1C456902C(&qword_1EC0C5978, &qword_1C4F640B8);
  sub_1C43FFAE0(v64, v126);
  v123[8] = v65;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBC74();
  sub_1C43FCE30(v67);
  v68 = sub_1C456902C(&qword_1EC0C5980, &qword_1C4F640C0);
  sub_1C43FFAE0(v68, &v127);
  v123[11] = v69;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBC74();
  sub_1C43FCE30(v71);
  v72 = sub_1C456902C(&qword_1EC0C5988, &qword_1C4F640C8);
  sub_1C43FFAE0(v72, v129);
  v123[14] = v73;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBC74();
  sub_1C43FCE30(v75);
  v76 = sub_1C456902C(&qword_1EC0C5990, &qword_1C4F640D0);
  sub_1C43FFAE0(v76, &v131);
  v123[17] = v77;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBC74();
  sub_1C43FCE30(v79);
  v80 = sub_1C456902C(&qword_1EC0C5998, &qword_1C4F640D8);
  sub_1C43FFAE0(v80, v133);
  v123[19] = v81;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v82);
  v84 = v123 - v83;
  v85 = sub_1C456902C(&qword_1EC0C59A0, &qword_1C4F640E0);
  sub_1C43FCDF8();
  v123[22] = v86;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C440A474();
  v88 = sub_1C456902C(&qword_1EC0C59A8, &qword_1C4F640E8);
  sub_1C43FCDF8();
  v123[21] = v89;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C4440AD4();
  sub_1C456902C(&qword_1EC0C59B0, &qword_1C4F640F0);
  sub_1C43FCDF8();
  v130 = v91;
  v131 = v92;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C4418964();
  sub_1C4417F50(v29, v29[3]);
  sub_1C4CAB278();
  sub_1C44A3AE8();
  sub_1C4F02BF8();
  switch(v128)
  {
    case 1:
      LOBYTE(a10) = 1;
      sub_1C4CAB764();
      v88 = v130;
      sub_1C44415FC();
      sub_1C4F02718();
      sub_1C441D76C();
      sub_1C4F02798();
      v107 = sub_1C440C7DC();
      v109 = v85;
      goto LABEL_25;
    case 2:
      LOBYTE(a10) = 8;
      sub_1C4CAB518();
      sub_1C4418CB4(&_s8StreamOpO21FilterEqualCodingKeysON, &a10);
      sub_1C441D76C();
      sub_1C444ADBC();
      sub_1C4F02798();
      goto LABEL_24;
    case 3:
      LOBYTE(a10) = 9;
      sub_1C4CAB4C4();
      sub_1C4418CB4(&_s8StreamOpO24FilterNotEqualCodingKeysON, &a10);
      sub_1C441D76C();
      sub_1C444ADBC();
      sub_1C4F02798();
      goto LABEL_24;
    case 4:
      LOBYTE(a10) = 10;
      sub_1C4CAB470();
      sub_1C4418CB4(&_s8StreamOpO19MathFloatCodingKeysON, &a10);
      sub_1C44952C0();
      sub_1C444ADBC();
      v98 = v132;
      sub_1C4F02798();
      if (!v98)
      {
        sub_1C4426494();
        sub_1C4F027C8();
      }

      goto LABEL_24;
    case 5:
      LOBYTE(a10) = 11;
      sub_1C4CAB41C();
      sub_1C4418CB4(&_s8StreamOpO20MathDoubleCodingKeysON, &a10);
      sub_1C44952C0();
      sub_1C444ADBC();
      v110 = v132;
      sub_1C4F02798();
      if (!v110)
      {
        sub_1C4426494();
        sub_1C4F027B8();
      }

      goto LABEL_24;
    case 6:
      LOBYTE(a10) = 12;
      sub_1C4CAB3C8();
      sub_1C4418CB4(&_s8StreamOpO17MathIntCodingKeysON, &a10);
      sub_1C44952C0();
      sub_1C444ADBC();
      v111 = v132;
      sub_1C4F02798();
      if (!v111)
      {
        LOBYTE(a10) = 1;
        sub_1C4F027D8();
      }

      goto LABEL_24;
    case 7:
      LOBYTE(a10) = 13;
      sub_1C4CAB374();
      sub_1C4418CB4(&_s8StreamOpO22ToMultiarrayCodingKeysON, &a10);
      a10 = v129[0];
      v134 = 0;
      sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
      sub_1C4402E98();
      sub_1C448E8F4(v102);
      v103 = sub_1C4414374();
      sub_1C4CB0460(v103, &v134, v104, v105, v106);
      if (!v20)
      {
        LOBYTE(a10) = 1;
        sub_1C444ADBC();
        sub_1C4F02798();
      }

      goto LABEL_24;
    case 8:
      LOBYTE(a10) = 14;
      sub_1C4CAB320();
      sub_1C4418CB4(&_s8StreamOpO23SubscriptDictCodingKeysON, &a10);
      a10 = v129[0];
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4402E98();
      sub_1C443D11C(v112);
      v113 = sub_1C4414374();
      sub_1C4CB0460(v113, v114, v115, v116, v117);
LABEL_24:
      v107 = sub_1C43FE990();
LABEL_25:
      v108(v107, v109);
      v95 = sub_1C4425544();
      goto LABEL_26;
    case 9:
      if (!(v127 | *(&v127 + 1) | v129[0]))
      {
        LOBYTE(a10) = 2;
        sub_1C4CAB710();
        v88 = v130;
        sub_1C44415FC();
        sub_1C4F02718();
        sub_1C43FFB20();
        v99 = v84;
        v101 = v133;
        goto LABEL_30;
      }

      v88 = v130;
      if (v129[0] == 1 && v127 == 0)
      {
        LOBYTE(a10) = 3;
        sub_1C4CAB6BC();
        sub_1C4405498();
        sub_1C4F02718();
        v99 = sub_1C4412B8C();
        v101 = &v131;
LABEL_30:
        v100(v99, *(v101 - 32));
        v118 = sub_1C44018C0();
        v119(v118, v88);
        goto LABEL_28;
      }

      if (v129[0] == 2 && v127 == 0)
      {
        LOBYTE(a10) = 4;
        sub_1C4CAB668();
        sub_1C445087C();
        sub_1C44415FC();
        sub_1C4F02718();
        v120 = sub_1C440570C();
        v122 = v129;
      }

      else if (v129[0] == 3 && v127 == 0)
      {
        LOBYTE(a10) = 5;
        sub_1C4CAB614();
        sub_1C445087C();
        sub_1C44415FC();
        sub_1C4F02718();
        v120 = sub_1C440570C();
        v122 = &v127;
      }

      else if (v129[0] == 4 && v127 == 0)
      {
        LOBYTE(a10) = 6;
        sub_1C4CAB5C0();
        sub_1C445087C();
        sub_1C44415FC();
        sub_1C4F02718();
        v120 = sub_1C440570C();
        v122 = v126;
      }

      else if (v129[0] == 5 && v127 == 0)
      {
        LOBYTE(a10) = 7;
        sub_1C4CAB56C();
        sub_1C445087C();
        sub_1C44415FC();
        sub_1C4F02718();
        v120 = sub_1C440570C();
        v122 = v124;
      }

      else
      {
        LOBYTE(a10) = 15;
        sub_1C4CAB2CC();
        sub_1C445087C();
        sub_1C44415FC();
        sub_1C4F02718();
        v120 = sub_1C440570C();
        v122 = v125;
      }

      v121(v120, *(v122 - 32));
      v95 = sub_1C44018C0();
LABEL_26:
      v96 = v88;
LABEL_27:
      v97(v95, v96);
LABEL_28:
      sub_1C43FBC80();
      return;
    default:
      LOBYTE(a10) = 0;
      sub_1C4CAB7B8();
      sub_1C4F02718();
      sub_1C441D76C();
      sub_1C4F02798();
      sub_1C43FFB20();
      v94(v21, v88);
      v95 = sub_1C43FE5F8();
      goto LABEL_27;
  }
}