uint64_t AMSURLResult.netResponse.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45F764();
  v122 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C48, &qword_1AB4E0CF0);
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C50, &unk_1AB4E0CF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v105 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v115 = &v103 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v117 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v120 = &v103 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v103 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v103 - v35;
  v37 = [v2 response];
  v121 = v6;
  v104 = v25;
  v108 = v11;
  v109 = v14;
  v123 = v2;
  if (!v37)
  {
    goto LABEL_9;
  }

  v38 = v37;
  v39 = [v37 URL];

  if (v39)
  {
    sub_1AB45F6C4();

    v40 = v122;
    (*(v122 + 56))(v32, 0, 1, v6);
  }

  else
  {
    v40 = v122;
    (*(v122 + 56))(v32, 1, 1, v6);
  }

  sub_1AB017FB8(v32, v36, &unk_1EB4395B0, &qword_1AB4D6720);
  if ((*(v40 + 48))(v36, 1, v6) == 1)
  {
    sub_1AB014AC0(v36, &unk_1EB4395B0, &qword_1AB4D6720);
LABEL_9:
    v42 = [v2 responseStatusCode];
    goto LABEL_10;
  }

  v41 = sub_1AB45F5C4();
  (*(v40 + 8))(v36, v6);
  if ((v41 & 1) == 0)
  {
    goto LABEL_9;
  }

  v42 = 200;
LABEL_10:
  v43 = type metadata accessor for NetResponse(0);
  v44 = v43[9];
  v45 = v121;
  v47 = v122 + 56;
  v46 = *(v122 + 56);
  v46(&a1[v44], 1, 1, v121);
  v48 = &a1[v43[10]];
  *a1 = (v42 - 200) < 0x64;
  *(a1 + 1) = v42;
  v49 = [objc_opt_self() localizedStringForStatusCode_];
  v50 = sub_1AB460544();
  v52 = v51;

  *(a1 + 2) = v50;
  *(a1 + 3) = v52;
  v53 = MEMORY[0x1E69E7CC0];
  *(a1 + 4) = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  a1[40] = 0;
  sub_1AB014AC0(&a1[v44], &unk_1EB4395B0, &qword_1AB4D6720);
  v112 = v44;
  v118 = v46;
  v119 = v47;
  v46(&a1[v44], 1, 1, v45);
  *v48 = 0;
  *(v48 + 1) = 0;
  v113 = v48;
  v110 = v43[11];
  *&a1[v110] = v53;
  v54 = v123;
  v55 = [v123 responseHeaders];
  if (v55)
  {
    v56 = v55;
    v57 = sub_1AB4602F4();

    v58 = sub_1AB0B2680(v57, sub_1AB014DB4);

    if (v58)
    {

      *(a1 + 4) = v58;
    }
  }

  v59 = [v54 task];
  v60 = [v59 originalRequest];

  if (v60)
  {
    v61 = v106;
    sub_1AB45F054();

    v62 = 0;
  }

  else
  {
    v62 = 1;
    v61 = v106;
  }

  v63 = v107;
  v64 = sub_1AB45F0A4();
  v65 = *(v64 - 8);
  v66 = *(v65 + 56);
  v66(v61, v62, 1, v64);
  sub_1AB017FB8(v61, v63, &qword_1EB438C50, &unk_1AB4E0CF8);
  v67 = *(v65 + 48);
  if (v67(v63, 1, v64) == 1)
  {
    sub_1AB014AC0(v63, &qword_1EB438C50, &unk_1AB4E0CF8);
    v118(v120, 1, 1, v121);
  }

  else
  {
    sub_1AB45F074();
    (*(v65 + 8))(v63, v64);
  }

  v68 = [v123 task];
  v69 = [v68 currentRequest];

  if (v69)
  {
    v70 = v108;
    sub_1AB45F054();

    v71 = 0;
    v72 = v117;
  }

  else
  {
    v71 = 1;
    v72 = v117;
    v70 = v108;
  }

  v107 = a1;
  v66(v70, v71, 1, v64);
  v73 = v109;
  sub_1AB017FB8(v70, v109, &qword_1EB438C50, &unk_1AB4E0CF8);
  if (v67(v73, 1, v64) == 1)
  {
    sub_1AB014AC0(v73, &qword_1EB438C50, &unk_1AB4E0CF8);
    v74 = v121;
    v118(v72, 1, 1, v121);
    v75 = v123;
  }

  else
  {
    sub_1AB45F074();
    (*(v65 + 8))(v73, v64);
    v75 = v123;
    v74 = v121;
  }

  v76 = v122;
  v77 = *(v111 + 48);
  v78 = v120;
  v79 = v114;
  sub_1AB03BC60(v120, v114);
  sub_1AB03BC60(v72, v79 + v77);
  v80 = *(v76 + 48);
  if (v80(v79, 1, v74) == 1)
  {
    sub_1AB014AC0(v72, &unk_1EB4395B0, &qword_1AB4D6720);
    sub_1AB014AC0(v78, &unk_1EB4395B0, &qword_1AB4D6720);
    v81 = v75;
    if (v80(v79 + v77, 1, v74) == 1)
    {
      sub_1AB014AC0(v79, &unk_1EB4395B0, &qword_1AB4D6720);
      v82 = 0;
      v83 = v115;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v84 = v104;
  sub_1AB03BC60(v79, v104);
  if (v80(v79 + v77, 1, v74) == 1)
  {
    sub_1AB014AC0(v117, &unk_1EB4395B0, &qword_1AB4D6720);
    sub_1AB014AC0(v120, &unk_1EB4395B0, &qword_1AB4D6720);
    (*(v76 + 8))(v84, v74);
    v81 = v75;
LABEL_30:
    sub_1AB014AC0(v79, &qword_1EB438C48, &qword_1AB4E0CF0);
    v82 = 1;
    v83 = v115;
    goto LABEL_32;
  }

  v85 = v103;
  (*(v76 + 32))(v103, v79 + v77, v74);
  sub_1AB0B30F8();
  v86 = sub_1AB460504();
  v87 = *(v76 + 8);
  v87(v85, v74);
  sub_1AB014AC0(v117, &unk_1EB4395B0, &qword_1AB4D6720);
  sub_1AB014AC0(v120, &unk_1EB4395B0, &qword_1AB4D6720);
  v87(v84, v74);
  sub_1AB014AC0(v79, &unk_1EB4395B0, &qword_1AB4D6720);
  v82 = v86 ^ 1;
  v83 = v115;
  v81 = v75;
LABEL_32:
  v88 = v107;
  v107[40] = v82 & 1;
  v89 = [v81 response];
  if (v89)
  {
    v90 = v89;
    v91 = [v89 URL];

    if (v91)
    {
      v92 = v105;
      sub_1AB45F6C4();

      v93 = 0;
    }

    else
    {
      v93 = 1;
      v92 = v105;
    }

    v118(v92, v93, 1, v74);
    sub_1AB017FB8(v92, v83, &unk_1EB4395B0, &qword_1AB4D6720);
  }

  else
  {
    v118(v83, 1, 1, v74);
  }

  sub_1AB04F3C8(v83, &v88[v112]);
  v94 = [v81 data];
  v95 = sub_1AB45F854();
  v97 = v96;

  sub_1AB460594();
  v98 = sub_1AB460564();
  v100 = v99;
  sub_1AB017254(v95, v97);
  v101 = v113;
  *v113 = v98;
  v101[1] = v100;
  result = _s9JetEngine27JSNetworkPerformanceMetricsV7metrics10fromResultSayACGSo12AMSURLResultC_tFZ_0(v81);
  *&v88[v110] = result;
  return result;
}

uint64_t sub_1AB0B1FF4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v5, AssociatedConformanceWitness);
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1AB0B20F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1AB0B2204()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 264);

  return v1(v2);
}

unint64_t sub_1AB0B22E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4380B0, &qword_1AB4E0D60);
    v3 = sub_1AB461924();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1AB014DB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for NetResponse(uint64_t a1)
{
  result = qword_1EB435320;
  if (!qword_1EB435320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB0B2440(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 256) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1AB3C70B4;
  }

  else
  {

    *(v2 + 264) = *(v2 + 160);
    v4 = sub_1AB0B2204;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB0B256C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1AB160BF0;
  }

  else
  {
    v2 = sub_1AB0B1FF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1AB0B2680(uint64_t a1, uint64_t (*a2)())
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4380B0, &qword_1AB4E0D60);
    v2 = sub_1AB461924();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_1AB02B4BC(*(a1 + 48) + 40 * v13, v28);
        sub_1AB0165C4(*(a1 + 56) + 32 * v13, v29 + 8);
        v26[0] = v29[0];
        v26[1] = v29[1];
        v27 = v30;
        v25[0] = v28[0];
        v25[1] = v28[1];
        sub_1AB02B4BC(v25, v24);
        if (!swift_dynamicCast())
        {
          sub_1AB014AC0(v25, &qword_1EB438C58, &unk_1AB4E3920);

          goto LABEL_23;
        }

        sub_1AB0165C4(v26 + 8, v24);
        sub_1AB014AC0(v25, &qword_1EB438C58, &unk_1AB4E3920);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = a2();
        if (v14)
        {
          v9 = 16 * result;
          v10 = (v2[6] + 16 * result);
          *v10 = v22;
          v10[1] = v23;

          v11 = (v2[7] + v9);
          *v11 = v22;
          v11[1] = v23;

          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v15 = (v2[6] + 16 * result);
          *v15 = v22;
          v15[1] = v23;
          v16 = (v2[7] + 16 * result);
          *v16 = v22;
          v16[1] = v23;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v2[2] = v19;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s9JetEngine27JSNetworkPerformanceMetricsV7metrics10fromResultSayACGSo12AMSURLResultC_tFZ_0(void *a1)
{
  v2 = sub_1AB45F9E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AB0B3150();
  v63 = &protocol witness table for AMSURLResult;
  v61[0] = a1;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  v6 = off_1F2011080[0];
  v7 = a1;
  v8 = v6();
  if (v9)
  {
    v10 = v9;
    v55 = v8;
    goto LABEL_14;
  }

  v11 = v62;
  v12 = v63;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  v13 = (v12[3])(v11, v12);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v56 = 0xD00000000000001ELL;
  v57 = 0x80000001AB5053D0;
  sub_1AB461564();
  if (!*(v14 + 16) || (v15 = sub_1AB02B1D8(v58), (v16 & 1) == 0))
  {

    sub_1AB02B2E4(v58);
LABEL_10:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_11;
  }

  sub_1AB0165C4(*(v14 + 56) + 32 * v15, &v59);
  sub_1AB02B2E4(v58);

  if (*(&v60 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_1AB014AC0(&v59, &unk_1EB437E60, &qword_1AB4D4730);
LABEL_12:
  strcpy(v58, "no-load-url::");
  HIWORD(v58[1]) = -4864;
  sub_1AB45F9D4();
  v17 = sub_1AB45F9C4();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1AC59BA20](v17, v19);

LABEL_13:
  v10 = v58[1];
  v55 = v58[0];
LABEL_14:
  v20 = v62;
  v21 = v63;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  v22 = (v21[3])(v20, v21);
  if (!v22)
  {
LABEL_24:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_25;
  }

  v23 = v22;
  *&v59 = 0x65686361632D78;
  *(&v59 + 1) = 0xE700000000000000;
  sub_1AB461564();
  if (!*(v23 + 16) || (v24 = sub_1AB02B1D8(v58), (v25 & 1) == 0))
  {

    sub_1AB02B2E4(v58);
    goto LABEL_24;
  }

  sub_1AB0165C4(*(v23 + 56) + 32 * v24, &v59);
  sub_1AB02B2E4(v58);

  if (!*(&v60 + 1))
  {
LABEL_25:
    sub_1AB014AC0(&v59, &unk_1EB437E60, &qword_1AB4D4730);
    v54 = 0;
    v28 = 0;
    goto LABEL_26;
  }

  v26 = swift_dynamicCast();
  v27 = v58[0];
  if (!v26)
  {
    v27 = 0;
  }

  v54 = v27;
  if (v26)
  {
    v28 = v58[1];
  }

  else
  {
    v28 = 0;
  }

LABEL_26:
  v29 = v62;
  v30 = v63;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  v31 = (v30[3])(v29, v30);
  if (!v31)
  {
LABEL_37:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_38;
  }

  v32 = v31;
  *&v59 = 0xD000000000000018;
  *(&v59 + 1) = 0x80000001AB5053B0;
  sub_1AB461564();
  if (!*(v32 + 16) || (v33 = sub_1AB02B1D8(v58), (v34 & 1) == 0))
  {

    sub_1AB02B2E4(v58);
    goto LABEL_37;
  }

  sub_1AB0165C4(*(v32 + 56) + 32 * v33, &v59);
  sub_1AB02B2E4(v58);

  if (!*(&v60 + 1))
  {
LABEL_38:
    sub_1AB014AC0(&v59, &unk_1EB437E60, &qword_1AB4D4730);
    v36 = 0;
    v37 = 0;
    goto LABEL_39;
  }

  v35 = swift_dynamicCast();
  if (v35)
  {
    v36 = v58[0];
  }

  else
  {
    v36 = 0;
  }

  if (v35)
  {
    v37 = v58[1];
  }

  else
  {
    v37 = 0;
  }

LABEL_39:
  v38 = v62;
  v39 = v63;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  v40 = (v39[3])(v38, v39);
  if (!v40)
  {
LABEL_50:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_51;
  }

  v41 = v40;
  *&v59 = 0xD000000000000010;
  *(&v59 + 1) = 0x80000001AB505390;
  sub_1AB461564();
  if (!*(v41 + 16) || (v42 = sub_1AB02B1D8(v58), (v43 & 1) == 0))
  {

    sub_1AB02B2E4(v58);
    goto LABEL_50;
  }

  sub_1AB0165C4(*(v41 + 56) + 32 * v42, &v59);
  sub_1AB02B2E4(v58);

  if (!*(&v60 + 1))
  {
LABEL_51:
    sub_1AB014AC0(&v59, &unk_1EB437E60, &qword_1AB4D4730);
    v45 = 0;
    v46 = 0;
    goto LABEL_52;
  }

  v44 = swift_dynamicCast();
  if (v44)
  {
    v45 = v58[0];
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = v58[1];
  }

  else
  {
    v46 = 0;
  }

LABEL_52:
  v47 = v62;
  v48 = v63;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  v49 = (v48[5])(v47, v48);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v54;
  *(&v54 - 10) = v55;
  *(&v54 - 9) = v10;
  *(&v54 - 8) = v61;
  *(&v54 - 7) = v50;
  *(&v54 - 6) = v28;
  *(&v54 - 5) = v36;
  *(&v54 - 4) = v37;
  *(&v54 - 3) = v45;
  *(&v54 - 2) = v46;
  sub_1AB0B47A0(sub_1AB0B4B5C, (&v54 - 12), v49);
  v52 = v51;

  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  return v52;
}

uint64_t sub_1AB0B3020()
{
  v1 = [*v0 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AB4602F4();

  return v3;
}

uint64_t sub_1AB0B3090()
{
  v1 = [*v0 responseCorrelationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AB460544();

  return v3;
}

unint64_t sub_1AB0B30F8()
{
  result = qword_1ED4D1AE8;
  if (!qword_1ED4D1AE8)
  {
    sub_1AB45F764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1AE8);
  }

  return result;
}

unint64_t sub_1AB0B3150()
{
  result = qword_1EB435628;
  if (!qword_1EB435628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB435628);
  }

  return result;
}

uint64_t sub_1AB0B319C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _BYTE *a10, _BYTE *a11)
{
  v155 = a8;
  v151 = a5;
  v152 = a7;
  v153 = a3;
  v154 = a6;
  v150 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v146 = &v132[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v132[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v132[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v132[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v132[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v137 = &v132[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v132[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v132[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v132[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v132[-v35];
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v149 = a4;
  v136 = v28;
  if (!v40)
  {
    v41 = a4[3];
    v42 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm(a4, v41);
    v39 = (*(v42 + 8))(v41, v42);
  }

  v147 = v40;
  v148 = v39;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v43);
  (*(v44 + 16))(v43, v44);
  v45 = sub_1AB45F9B4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v48 = v47(v36, 1, v45);
  v156 = v46;
  v157 = v47;
  if (v48 == 1)
  {
    sub_1AB014AC0(v36, &qword_1EB4395E0, qword_1AB4DB790);
    v49 = a1[3];
    v50 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v49);
    (*(v50 + 24))(v49, v50);
    if (v47(v33, 1, v45) == 1)
    {
      sub_1AB014AC0(v33, &qword_1EB4395E0, qword_1AB4DB790);
      v143 = 1;
      v144 = 0;
      goto LABEL_9;
    }

    sub_1AB45F964();
    v144 = v52;
    (*(v156 + 8))(v33, v45);
  }

  else
  {
    sub_1AB45F964();
    v144 = v51;
    (*(v46 + 8))(v36, v45);
  }

  v143 = 0;
LABEL_9:
  v53 = v140;
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v54);
  (*(v55 + 32))(v54, v55);
  v56 = v157;
  LODWORD(v140) = v157(v53, 1, v45);
  if (v140 == 1)
  {
    sub_1AB014AC0(v53, &qword_1EB4395E0, qword_1AB4DB790);
    v57 = 0;
  }

  else
  {
    sub_1AB45F964();
    v57 = v58;
    (*(v156 + 8))(v53, v45);
  }

  v59 = v145;
  v60 = a1[3];
  v61 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v60);
  v62 = v60;
  v63 = v136;
  (*(v61 + 40))(v62, v61);
  v138 = v56(v63, 1, v45);
  if (v138 == 1)
  {
    sub_1AB014AC0(v63, &qword_1EB4395E0, qword_1AB4DB790);
    v64 = 0;
    v65 = v156;
  }

  else
  {
    sub_1AB45F964();
    v64 = v66;
    v65 = v156;
    (*(v156 + 8))(v63, v45);
  }

  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v67);
  LODWORD(v145) = (*(v68 + 88))(v67, v68);
  v69 = a1[3];
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v69);
  v71 = v69;
  v72 = v137;
  (*(v70 + 48))(v71, v70);
  LODWORD(v136) = v157(v72, 1, v45);
  if (v136 == 1)
  {
    sub_1AB014AC0(v72, &qword_1EB4395E0, qword_1AB4DB790);
    v73 = 0;
  }

  else
  {
    sub_1AB45F964();
    v73 = v74;
    (*(v65 + 8))(v72, v45);
  }

  v75 = a1[3];
  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v75);
  v77 = v75;
  v78 = v139;
  (*(v76 + 56))(v77, v76);
  LODWORD(v137) = v157(v78, 1, v45);
  if (v137 == 1)
  {
    sub_1AB014AC0(v78, &qword_1EB4395E0, qword_1AB4DB790);
    v79 = 0;
  }

  else
  {
    sub_1AB45F964();
    v79 = v80;
    (*(v65 + 8))(v78, v45);
  }

  v81 = a1[3];
  v82 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v81);
  v83 = v81;
  v84 = v141;
  (*(v82 + 64))(v83, v82);
  LODWORD(v139) = v157(v84, 1, v45);
  if (v139 == 1)
  {
    sub_1AB014AC0(v84, &qword_1EB4395E0, qword_1AB4DB790);
    v85 = 0;
  }

  else
  {
    sub_1AB45F964();
    v85 = v86;
    (*(v65 + 8))(v84, v45);
  }

  v87 = a1[3];
  v88 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v87);
  v89 = v87;
  v90 = v142;
  (*(v88 + 72))(v89, v88);
  v91 = v157(v90, 1, v45);
  if (v91 == 1)
  {
    sub_1AB014AC0(v90, &qword_1EB4395E0, qword_1AB4DB790);
    v92 = 0;
  }

  else
  {
    sub_1AB45F964();
    v92 = v93;
    (*(v156 + 8))(v90, v45);
  }

  v94 = a1[3];
  v95 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v94);
  (*(v95 + 24))(v94, v95);
  v96 = v157(v59, 1, v45);
  if (v96 == 1)
  {
    sub_1AB014AC0(v59, &qword_1EB4395E0, qword_1AB4DB790);
    v97 = 0;
  }

  else
  {
    sub_1AB45F964();
    v97 = v98;
    (*(v156 + 8))(v59, v45);
  }

  v142 = a11;
  v141 = a10;
  v99 = a1[3];
  v100 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v99);
  v101 = *(v100 + 80);
  v102 = v100;
  v103 = v146;
  v101(v99, v102);
  v104 = v157(v103, 1, v45);
  if (v104 == 1)
  {
    sub_1AB014AC0(v103, &qword_1EB4395E0, qword_1AB4DB790);
    v105 = 0;
  }

  else
  {
    sub_1AB45F964();
    v105 = v106;
    (*(v156 + 8))(v103, v45);
  }

  LODWORD(v157) = v104 == 1;
  LODWORD(v156) = v96 == 1;
  LODWORD(v146) = v91 == 1;
  LODWORD(v139) = v139 == 1;
  LODWORD(v137) = v137 == 1;
  LODWORD(v136) = v136 == 1;
  v138 = v138 == 1;
  v135 = v140 == 1;
  v107 = a1[3];
  v108 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v107);
  LODWORD(v140) = (*(v108 + 96))(v107, v108);
  v109 = a1[3];
  v110 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v109);
  v134 = (*(v110 + 112))(v109, v110);
  v133 = v111;
  v112 = a1[3];
  v113 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v112);
  v114 = (*(v113 + 120))(v112, v113);
  v116 = v115;
  v117 = v149[3];
  v118 = v149[4];
  __swift_project_boxed_opaque_existential_1Tm(v149, v117);
  v158 = (*(v118 + 32))(v117, v118);
  v119 = sub_1AB461C44();
  v121 = v120;
  v122 = a1[3];
  v123 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v122);
  v124 = (*(v123 + 104))(v122, v123);
  v125 = v153;
  *a9 = v150;
  *(a9 + 8) = v125;
  v126 = v147;
  *(a9 + 16) = v148;
  *(a9 + 24) = v126;
  *(a9 + 32) = v144;
  *(a9 + 40) = v143;
  *(a9 + 48) = v57;
  *(a9 + 56) = v135;
  *(a9 + 64) = v64;
  *(a9 + 72) = v138;
  *(a9 + 73) = v145;
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *(a9 + 96) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = v73;
  *(a9 + 152) = v136;
  *(a9 + 160) = v79;
  *(a9 + 168) = v137;
  *(a9 + 176) = v85;
  *(a9 + 184) = v139;
  *(a9 + 192) = v92;
  *(a9 + 200) = v146;
  *(a9 + 208) = v97;
  *(a9 + 216) = v156;
  *(a9 + 224) = v105;
  *(a9 + 232) = v157;
  *(a9 + 233) = v140;
  *(a9 + 240) = v134;
  *(a9 + 248) = v133 & 1;
  *(a9 + 256) = v114;
  *(a9 + 264) = v116 & 1;
  *(a9 + 272) = v119;
  *(a9 + 280) = v121;
  v127 = v152;
  v128 = v154;
  v129 = v155;
  *(a9 + 288) = v151;
  *(a9 + 296) = v128;
  *(a9 + 304) = v127;
  *(a9 + 312) = v129;
  *(a9 + 320) = v124;
  v130 = v142;
  *(a9 + 328) = v141;
  *(a9 + 336) = v130;
}

void *sub_1AB0B3EA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1AB0B3FE8@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_1AB45F984();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1AB45F9B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1AB0B4094()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3252E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1AB0B41D0(uint64_t a1)
{
  v3 = type metadata accessor for NetResponse(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4397B0, &unk_1AB4E4580);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB4397B0, &unk_1AB4E4580);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB4397B0, &unk_1AB4E4580);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for NetResponse);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB4397B0, &unk_1AB4E4580);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &qword_1EB4376C0;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17, &unk_1AB4D8B30);
        sub_1AB014A58(v42, v39, v17, &unk_1AB4D8B30);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for NetResponse);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for NetResponse);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17, &unk_1AB4D8B30);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for NetResponse);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for NetResponse);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB0B7248, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17, &unk_1AB4D8B30);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t sub_1AB0B46AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1AB0B47A0(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AB0B4CC4(0, v4, 0);
    v7 = v13;
    a1(__src, a3 + 32);
    if (v3)
    {

      __break(1u);
    }

    else
    {
      for (i = a3 + 72; ; i += 40)
      {
        memcpy(__dst, __src, sizeof(__dst));
        v13 = v7;
        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1AB0B4CC4((v9 > 1), v10 + 1, 1);
          v7 = v13;
        }

        *(v7 + 16) = v10 + 1;
        memcpy((v7 + 344 * v10 + 32), __dst, 0x158uLL);
        if (!--v4)
        {
          break;
        }

        a1(__src, i);
      }
    }
  }
}

uint64_t NSURLSessionTaskTransactionMetrics.urlString.getter()
{
  v1 = sub_1AB45F0A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = [v0 request];
  sub_1AB45F054();

  sub_1AB45F074();
  (*(v2 + 8))(v4, v1);
  v10 = sub_1AB45F764();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1AB014AC0(v8, &unk_1EB4395B0, &qword_1AB4D6720);
    return 0;
  }

  else
  {
    v13 = sub_1AB45F614();
    (*(v11 + 8))(v8, v10);
    return v13;
  }
}

char *sub_1AB0B4B9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E70, &qword_1AB4D6AB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 344);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[344 * v8])
    {
      memmove(v12, v13, 344 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB0B4CC4(char *a1, int64_t a2, char a3)
{
  result = sub_1AB0B4B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AB0B4CE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1AB4618F4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1AB0B4EC4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1AC59C990](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1AB0B4EC4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1AB016760(0, &qword_1ED4D1390, 0x1E696AFA0);
        v16 = &protocol witness table for NSURLSessionTaskTransactionMetrics;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1AB0149B0(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1AB0B4EC4((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1AB016760(0, &qword_1ED4D1390, 0x1E696AFA0);
        v16 = &protocol witness table for NSURLSessionTaskTransactionMetrics;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1AB0149B0(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1AB0B4EC4(void *a1, int64_t a2, char a3)
{
  result = sub_1AB0B3EA0(a1, a2, a3, *v3, &qword_1EB436E30, &qword_1AB4D6A68, &qword_1EB436E38, &unk_1AB4D6A70);
  *v3 = result;
  return result;
}

void *sub_1AB0B4F04()
{
  v1 = [*v0 taskMetrics];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transactionMetrics];

    sub_1AB3845D4();
    v4 = sub_1AB460954();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1AB0B4CE4(v4);

  return v5;
}

uint64_t sub_1AB0B4F9C()
{
  v1 = *(v0 + 24);
  sub_1AB0B41D0(v1);
  sub_1AB0438EC(v1, type metadata accessor for NetResponse);

  v2 = *(v0 + 8);

  return v2();
}

char *sub_1AB0B5084(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *v4;
  v7 = [v6 *a3];
  v8 = [v6 *a4];
  v9 = __OFADD__(v7, v8);
  result = &v8[v7];
  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB0B512C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB39A48C;
  }

  else
  {
    v2 = sub_1AB0B4F9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB0B5240(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v71 - v6;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 valueWithNewObjectInContext_];
  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = v12;
  v73 = v10;
  v74 = v8;
  v14 = *v1;
  v75 = v11;
  v15 = [v11 valueWithBool:v14 inContext:a1];
  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v15;
  v17 = sub_1AB460514();
  [v13 setValue:v16 forProperty:v17];

  v18 = *(v1 + 1);
  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v77 = v7;
  v78 = v1;
  v19 = v75;
  v20 = [v75 valueWithInt32_inContext_];
  if (!v20)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = v20;
  v22 = sub_1AB460514();
  [v13 setValue:v21 forProperty:v22];

  v23 = v13;
  v24 = v78;
  v25 = *(v78 + 3);
  v81[0] = *(v78 + 2);
  v81[1] = v25;

  v26 = [v19 valueWithObject:sub_1AB461F94() inContext:a1];
  swift_unknownObjectRelease();
  if (!v26)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v27 = v26;
  v28 = sub_1AB460514();
  [v23 setValue:v27 forProperty:v28];

  v81[0] = *(v24 + 4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98, &qword_1AB4DE220);
  v29 = [v19 valueWithObject:sub_1AB461F94() inContext:a1];
  swift_unknownObjectRelease();
  if (!v29)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = v29;
  v31 = sub_1AB460514();
  [v23 setValue:v30 forProperty:v31];

  v32 = [v19 valueWithBool:v24[40] inContext:a1];
  v33 = v77;
  if (!v32)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = v32;
  v35 = sub_1AB460514();
  v72 = v23;
  [v23 setValue:v34 forProperty:v35];

  v36 = type metadata accessor for NetResponse(0);
  v37 = v76;
  sub_1AB03BC60(&v24[v36[9]], v76);
  v38 = v74;
  if ((*(v74 + 48))(v37, 1, v33) == 1)
  {
    sub_1AB03BCD0(v37);
    v39 = v72;
  }

  else
  {
    v40 = v73;
    (*(v38 + 32))(v73, v37, v33);
    v81[0] = sub_1AB45F614();
    v81[1] = v41;
    v42 = v38;
    v43 = [v75 valueWithObject:sub_1AB461F94() inContext:a1];
    swift_unknownObjectRelease();
    if (!v43)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v44 = v43;
    v45 = sub_1AB460514();
    v39 = v72;
    [v72 setValue:v44 forProperty:v45];

    (*(v42 + 8))(v40, v77);
  }

  v46 = &v78[v36[10]];
  v47 = *(v46 + 1);
  v48 = &unk_1E794B000;
  if (v47)
  {
    v81[0] = *v46;
    v81[1] = v47;

    v49 = [v75 valueWithObject:sub_1AB461F94() inContext:a1];
    swift_unknownObjectRelease();
    if (!v49)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v50 = v49;
    v51 = sub_1AB460514();
    [v39 setValue:v50 forProperty:v51];
  }

  v52 = *&v78[v36[11]];
  v53 = *(v52 + 2);
  v54 = MEMORY[0x1E69E7CC0];
  if (!v53)
  {
LABEL_28:
    v81[0] = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436ED8, &qword_1AB4D6B40);
    v68 = [v75 valueWithObject:sub_1AB461F94() inContext:a1];
    swift_unknownObjectRelease();
    if (v68)
    {

      v69 = v68;
      v70 = sub_1AB460514();
      [v39 setValue:v69 forProperty:v70];

      return;
    }

    goto LABEL_38;
  }

  v82 = MEMORY[0x1E69E7CC0];
  sub_1AB461754();
  if (*(v52 + 2))
  {
    v55 = 0;
    v56 = v52 + 32;
    v73 = v52;
    v74 = v53 - 1;
    while (1)
    {
      v77 = v55;
      memcpy(v81, v56, 0x158uLL);
      v76 = v56;
      memcpy(v80, v56, sizeof(v80));
      sub_1AB0B724C(v81, v79);
      v79[0] = sub_1AB0B5B34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
      v57 = sub_1AB461F94();
      v58 = v75;
      v59 = [v75 v48[383]];
      swift_unknownObjectRelease();
      v78 = v3;
      if (v59)
      {
        v60 = sub_1AB054C38();
        v80[3] = v60;
        v61 = a1;
        v62 = &protocol witness table for JSValue;
        v63 = v59;
      }

      else
      {
        v63 = [v58 valueWithUndefinedInContext_];
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58, &qword_1AB4D5810);
        v80[3] = v60;
        v61 = a1;
        v62 = sub_1AB0547A8();
      }

      v80[4] = v62;
      v80[0] = v63;
      __swift_project_boxed_opaque_existential_1Tm(v80, v60);
      v64 = v62[2];
      v65 = v59;
      v66 = v61;
      v67 = v78;
      v64(v61, v60, v62);
      v3 = v67;
      sub_1AB0B7368(v81);

      if (v67)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      sub_1AB461724();
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      if (v74 == v77)
      {
        v54 = v82;
        v39 = v72;
        a1 = v66;
        goto LABEL_28;
      }

      v56 = v76 + 344;
      v55 = v77 + 1;
      a1 = v61;
      v48 = &unk_1E794B000;
      if ((v77 + 1) >= *(v73 + 2))
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v80);
}

uint64_t sub_1AB0B5B34()
{
  v2 = *(v0 + 1);
  v1 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = v0[6];
  v7 = *(v0 + 56);
  v8 = v0[8];
  v9 = *(v0 + 73);
  v10 = v0[10];
  v58 = *(v0 + 72);
  v59 = *(v0 + 88);
  v11 = v0[12];
  v12 = v0[14];
  v60 = *(v0 + 104);
  v61 = *(v0 + 120);
  v13 = v0[16];
  v14 = v0[18];
  v62 = *(v0 + 136);
  v63 = *(v0 + 152);
  v47 = v0[20];
  v48 = v0[22];
  v64 = *(v0 + 168);
  v65 = *(v0 + 184);
  v49 = v0[24];
  v50 = v0[26];
  v66 = *(v0 + 200);
  v67 = *(v0 + 216);
  v51 = v0[28];
  v68 = *(v0 + 232);
  v69 = *(v0 + 233);
  v52 = *(v0 + 30);
  v53 = *(v0 + 32);
  v70 = *(v0 + 248);
  v71 = *(v0 + 264);
  v54 = *(v0 + 34);
  v55 = *(v0 + 36);
  v72 = *(v0 + 35);
  v73 = *(v0 + 37);
  v74 = *(v0 + 39);
  v75 = *(v0 + 320);
  v56 = *(v0 + 38);
  v57 = *(v0 + 41);
  v76 = *(v0 + 42);
  v15 = MEMORY[0x1E69E7CC8];
  if (v2)
  {
    v16 = *v0;
    v17 = MEMORY[0x1E69E6158];
    v79 = MEMORY[0x1E69E6158];
    *&v78 = v16;
    *(&v78 + 1) = v2;
    sub_1AB014B78(&v78, v77);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000014, 0x80000001AB4FE670, isUniquelyReferenced_nonNull_native);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = MEMORY[0x1E69E6158];
  if (v3)
  {
LABEL_3:
    v79 = v17;
    *&v78 = v1;
    *(&v78 + 1) = v3;
    sub_1AB014B78(&v78, v77);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0x4C525565676170, 0xE700000000000000, v19);
  }

LABEL_4:
  v20 = MEMORY[0x1E69E63B0];
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v79 = MEMORY[0x1E69E63B0];
    *&v78 = ceil(v4 * 1000.0);
    sub_1AB014B78(&v78, v77);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000010, 0x80000001AB4FEC20, v34);
    if (v7)
    {
LABEL_6:
      if (v58)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v79 = v20;
  *&v78 = ceil(v6 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD000000000000011, 0x80000001AB4FEC40, v35);
  if ((v58 & 1) == 0)
  {
LABEL_7:
    v79 = v20;
    *&v78 = ceil(v8 * 1000.0);
    sub_1AB014B78(&v78, v77);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0x65736E6F70736572, 0xEF656D6954646E45, v21);
  }

LABEL_8:
  v22 = MEMORY[0x1E69E6370];
  if (v9 != 2)
  {
    v79 = MEMORY[0x1E69E6370];
    LOBYTE(v78) = v9 & 1;
    sub_1AB014B78(&v78, v77);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000011, 0x80000001AB4FEC60, v23);
  }

  if (v59)
  {
    if (v60)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v79 = v20;
    *&v78 = ceil(v10 * 1000.0);
    sub_1AB014B78(&v78, v77);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0x6174536573726170, 0xEE00656D69547472, v36);
    if (v60)
    {
LABEL_12:
      if (v61)
      {
        goto LABEL_13;
      }

      goto LABEL_41;
    }
  }

  v79 = v20;
  *&v78 = ceil(v11 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0x646E456573726170, 0xEC000000656D6954, v37);
  if (v61)
  {
LABEL_13:
    if (v62)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v79 = v20;
  *&v78 = ceil(v12 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD00000000000001ALL, 0x80000001AB4FE6F0, v38);
  if (v62)
  {
LABEL_14:
    if (v63)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v79 = v20;
  *&v78 = ceil(v13 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD000000000000018, 0x80000001AB4FE6D0, v39);
  if (v63)
  {
LABEL_15:
    if (v64)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v79 = v20;
  *&v78 = ceil(v14 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD000000000000013, 0x80000001AB50BD80, v40);
  if (v64)
  {
LABEL_16:
    if (v65)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v79 = v20;
  *&v78 = ceil(v47 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD000000000000011, 0x80000001AB50BDA0, v41);
  if (v65)
  {
LABEL_17:
    if (v66)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v79 = v20;
  *&v78 = ceil(v48 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD000000000000015, 0x80000001AB50BDC0, v42);
  if (v66)
  {
LABEL_18:
    if (v67)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v79 = v20;
  *&v78 = ceil(v49 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD000000000000013, 0x80000001AB50BDE0, v43);
  if (v67)
  {
LABEL_19:
    if (v68)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  v79 = v20;
  *&v78 = ceil(v50 * 1000.0);
  sub_1AB014B78(&v78, v77);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0x6174536863746566, 0xEE00656D69547472, v44);
  if ((v68 & 1) == 0)
  {
LABEL_20:
    v79 = v20;
    *&v78 = ceil(v51 * 1000.0);
    sub_1AB014B78(&v78, v77);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000019, 0x80000001AB50BE00, v24);
  }

LABEL_21:
  if (v69 != 2)
  {
    v79 = v22;
    LOBYTE(v78) = v69 & 1;
    sub_1AB014B78(&v78, v77);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000010, 0x80000001AB50BE20, v25);
  }

  v26 = MEMORY[0x1E69E7360];
  if (v70)
  {
    if (v71)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v79 = MEMORY[0x1E69E7360];
    *&v78 = v52;
    sub_1AB014B78(&v78, v77);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000012, 0x80000001AB50BE40, v45);
    if (v71)
    {
LABEL_25:
      v27 = v72;
      if (!v72)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  v79 = v26;
  *&v78 = v53;
  sub_1AB014B78(&v78, v77);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v77, 0xD000000000000013, 0x80000001AB50BE60, v46);
  v27 = v72;
  if (v72)
  {
LABEL_26:
    v79 = v17;
    *&v78 = v54;
    *(&v78 + 1) = v27;
    sub_1AB014B78(&v78, v77);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0x6F43737574617473, 0xEA00000000006564, v28);
  }

LABEL_27:
  if (v73)
  {
    v79 = v17;
    *&v78 = v55;
    *(&v78 + 1) = v73;
    sub_1AB014B78(&v78, v77);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000013, 0x80000001AB50BE80, v29);
  }

  if (v74)
  {
    v79 = v17;
    *&v78 = v56;
    *(&v78 + 1) = v74;
    sub_1AB014B78(&v78, v77);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0xD000000000000015, 0x80000001AB50BEA0, v30);
  }

  if (v75 != 2)
  {
    v79 = v22;
    LOBYTE(v78) = v75 & 1;
    sub_1AB014B78(&v78, v77);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0x746144776F4C7369, 0xED000065646F4D61, v31);
  }

  if (v76)
  {
    v79 = v17;
    *&v78 = v57;
    *(&v78 + 1) = v76;
    sub_1AB014B78(&v78, v77);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v77, 0x6D6954656C707061, 0xEE00707041676E69, v32);
  }

  return v15;
}

void sub_1AB0B666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v44 = a4;
  v43 = sub_1AB45FFD4();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  *&v46 = sub_1AB45FF84();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for NetRequest(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  sub_1AB0B5240(a2);
  v41 = v17;
  v40 = a5;
  if (qword_1EB435330 != -1)
  {
    swift_once();
  }

  v18 = sub_1AB45FFC4();
  __swift_project_value_buffer(v18, qword_1EB435338);
  sub_1AB0B72A8(v44, v16);
  v19 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v20 = sub_1AB461224();
  if (sub_1AB461314())
  {

    sub_1AB460024();

    v21 = v42;
    v22 = v43;
    if ((*(v42 + 88))(v9, v43) == *MEMORY[0x1E69E93E8])
    {
      v23 = 0;
      v24 = 0;
      v25 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v9, v22);
      v25 = "success=true,url=%s";
      v24 = 2;
      v23 = 1;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v47 = v27;
    *v26 = v24;
    *(v26 + 1) = v23;
    *(v26 + 2) = 2080;
    v28 = sub_1AB45F654();
    v29 = AMSLogableURL();

    v30 = sub_1AB460544();
    v32 = v31;

    sub_1AB0B730C(v16);
    v33 = sub_1AB030D2C(v30, v32, &v47);

    *(v26 + 4) = v33;
    v34 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v19, v20, v34, "NetFetch", v25, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1AC59F020](v27, -1, -1);
    MEMORY[0x1AC59F020](v26, -1, -1);

    (*(v45 + 8))(v12, v46);
  }

  else
  {

    (*(v45 + 8))(v12, v46);
    sub_1AB0B730C(v16);
  }

  v35 = v40;
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1AB4D4720;
    *(v36 + 56) = sub_1AB016760(0, &qword_1ED4D1B98, 0x1E696EB58);
    v37 = v41;
    *(v36 + 32) = v41;
    v38 = v37;
    v39 = sub_1AB460934();
  }

  else
  {
  }
}

void sub_1AB0B7184(uint64_t a1)
{
  v3 = *(type metadata accessor for NetRequest(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1AB0B666C(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_1AB0B72A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB0B730C(uint64_t a1)
{
  v2 = type metadata accessor for NetRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB0B73BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1AB0B7490(uint64_t a1, uint64_t (*a2)(id, uint64_t, uint64_t))
{
  v4 = v2;
  v6 = [objc_opt_self() currentContext];
  if (v6)
  {
    v7 = v6;
    v8 = a2(v6, v4, a1);

    return v8;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB0B7604(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC9JetEngine11JSBagObject_bag);
  swift_unknownObjectRetain();
  result = [a3 toString];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v8 = [v5 stringForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395C0, &qword_1AB4D9FC8);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_1AB08A8AC;
  v9[4] = 0;
  swift_unknownObjectRelease();
  v10 = sub_1AB0B77A4(v9);
  if (v11)
  {
    v14 = v10;
    v15 = v11;

    v12 = sub_1AB461F94();
    v13 = [objc_opt_self() valueWithObject:v12 inContext:{a1, v14, v15}];
    result = swift_unknownObjectRelease();
    if (v13)
    {

      return v13;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v13 = result;

    return v13;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1AB0B7AA8(void *a1)
{
  v38 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_1AB45FF84();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  if (qword_1EB435330 != -1)
  {
    swift_once();
  }

  v11 = sub_1AB45FFC4();
  __swift_project_value_buffer(v11, qword_1EB435338);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v12 = sub_1AB45FFA4();
  v13 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v12, v13, v16, "NetFetch", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x1AC59F020](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_1AB460014();
  swift_allocObject();
  v35 = sub_1AB460004();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v36 = v19;
  v20(v10, v1);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v21 = sub_1AB45FFA4();
  v22 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v23 = swift_slowAlloc();
    v34 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v25, "NetFetchPromise", "", v24, 2u);
    v26 = v24;
    v1 = v34;
    MEMORY[0x1AC59F020](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_1AB460004();
  v20(v4, v1);
  v28 = [objc_opt_self() currentContext];
  if (v28)
  {
    v29 = v28;
    sub_1AB0B7F54(v28, v27, v35, v38, v39, ObjectType);
    v31 = v30;

    return v31;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

void sub_1AB0B7F54(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6)
{
  v69 = a6;
  v71 = a5;
  v73 = a3;
  v74 = a2;
  v70 = a1;
  v8 = sub_1AB45FFD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v68 = &v63 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4397B0, &unk_1AB4E4580);
  MEMORY[0x1EEE9AC00](v65);
  v66 = (&v63 - v18);
  v19 = type metadata accessor for NetRequest(0);
  v64 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  v24 = sub_1AB087FF4();
  if (!v24)
  {
    if (qword_1EB435330 != -1)
    {
      swift_once();
    }

    v28 = sub_1AB45FFC4();
    __swift_project_value_buffer(v28, qword_1EB435338);
    v29 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    LODWORD(v72) = sub_1AB461224();
    if (sub_1AB461314())
    {

      sub_1AB460024();

      if ((*(v9 + 88))(v11, v8) == *MEMORY[0x1E69E93E8])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v8);
        v30 = "success=false";
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v29, v72, v32, "NetFetch", v30, v31, 2u);
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(aBlock) = 1;
    LOBYTE(v82[0]) = 1;
    *v33 = 0xD00000000000002CLL;
    *(v33 + 8) = 0x80000001AB50BFE0;
    *(v33 + 16) = 0;
    *(v33 + 24) = 1;
    *(v33 + 32) = 0;
    *(v33 + 40) = 1;
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0u;
    *(v33 + 80) = 0u;
    *(v33 + 96) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v72 = v24;
  sub_1AB0890D8(a4, v82);
  if (v6)
  {

LABEL_13:
    sub_1AB0BF150(v74);
    return;
  }

  v25 = &v71[OBJC_IVAR____TtC9JetEngine11JSNetObject_guts];
  v26 = *&v71[OBJC_IVAR____TtC9JetEngine11JSNetObject_guts + 24];
  v27 = *&v71[OBJC_IVAR____TtC9JetEngine11JSNetObject_guts + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v71[OBJC_IVAR____TtC9JetEngine11JSNetObject_guts], v26);
  (*(v27 + 8))(v82, v26, v27);
  if (qword_1EB435688 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v34 = v82[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1AB4D4720;
  v81 = sub_1AB0168A8(0, 19, 0, MEMORY[0x1E69E7CC0]);
  v36._object = 0x80000001AB50C8D0;
  v36._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  v37 = sub_1AB45F764();
  v80[3] = v37;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
  (*(*(v37 - 8) + 16))(boxed_opaque_existential_0, v23, v37);
  sub_1AB014A58(v80, v79, &unk_1EB437E60, &qword_1AB4D4730);
  aBlock = 0u;
  v76 = 0u;
  sub_1AB0169C4(v79, &aBlock);
  LOBYTE(v77) = 0;
  v39 = v81;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1AB0168A8(0, *(v39 + 2) + 1, 1, v39);
  }

  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v39);
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[40 * v41];
  v43 = aBlock;
  v44 = v76;
  v42[64] = v77;
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  v81 = v39;
  sub_1AB014AC0(v80, &unk_1EB437E60, &qword_1AB4D4730);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  *(v35 + 32) = v81;
  *&aBlock = v34;
  LOBYTE(v80[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v35, v80);

  sub_1AB01494C(v25, &aBlock);
  v46 = v67;
  sub_1AB0B72A8(v23, v67);
  v47 = *(v64 + 80);
  v48 = v63;
  v49 = swift_allocObject();
  sub_1AB0149B0(&aBlock, v49 + 16);
  sub_1AB0C099C(v46, v49 + ((v47 + 56) & ~v47));
  v50 = v66;
  *v66 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BEE0, &qword_1AB4F2B58);
  v51 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v51[2] = v52;
  sub_1AB0C0A00(v50, v51 + *(*v51 + 96));
  v53 = sub_1AB460BE4();
  v54 = v68;
  (*(*(v53 - 8) + 56))(v68, 1, 1, v53);
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = &unk_1AB4F2B50;
  v55[5] = v49;
  v55[6] = v51;

  sub_1AB39BBA8(0, 0, v54, &unk_1AB4F2B60, v55);

  sub_1AB0B72A8(v23, v46);
  v56 = (v47 + 40) & ~v47;
  v57 = (v48 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = v23;
  v58 = swift_allocObject();
  v59 = v70;
  v58[2] = v51;
  v58[3] = v59;
  v58[4] = v73;
  sub_1AB0C099C(v46, v58 + v56);
  *(v58 + v57) = v72;
  *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v77 = sub_1AB0BF06C;
  v78 = v58;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v76 = sub_1AB0C16BC;
  *(&v76 + 1) = &block_descriptor_45;
  v60 = _Block_copy(&aBlock);

  v61 = v59;

  v62 = [objc_opt_self() valueWithNewPromiseInContext:v61 fromExecutor:v60];
  _Block_release(v60);
  if (v62)
  {

    sub_1AB0B730C(v71);
    sub_1AB066D84(v82);
    sub_1AB0BF150(v74);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB0B89FC()
{
  v1 = *(type metadata accessor for NetRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB0B8B28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0B8B70()
{
  v1 = *(type metadata accessor for NetRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AB0B8CC8@<X0>(uint64_t a1@<X0>, char *x8_0@<X8>)
{
  v5 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80, &qword_1AB4EF080);
  *&v11 = v8;
  sub_1AB014B78(&v11, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v5;
  sub_1AB01AE18(v14, 0xD00000000000001FLL, 0x80000001AB4FF9A0, isUniquelyReferenced_nonNull_native);

  sub_1AB0B9254(a1, &v11);
  return NetRequest.init(deserializing:using:)(&v11, &v13, x8_0);
}

uint64_t _s9JetEngine26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C40, qword_1AB4E8F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty;
  *(inited + 40) = &protocol witness table for AppleServicesPropertyScope.IsAnonymityEnabledProperty;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AB4D4720;
  *(v1 + 32) = &type metadata for AppleServicesPropertyScope.SigningStyleProperty;
  *(v1 + 40) = &protocol witness table for AppleServicesPropertyScope.SigningStyleProperty;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  *(v2 + 32) = &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID;
  *(v2 + 40) = &off_1EE762A58;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  *(v3 + 32) = &type metadata for AppleServicesPropertyScope.ExcludeIdentifierHeadersForAccountProperty;
  *(v3 + 40) = &protocol witness table for AppleServicesPropertyScope.ExcludeIdentifierHeadersForAccountProperty;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  *(v4 + 32) = &type metadata for AppleServicesPropertyScope.AlwaysIncludeAuthKitHeadersProperty;
  *(v4 + 40) = &protocol witness table for AppleServicesPropertyScope.AlwaysIncludeAuthKitHeadersProperty;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  *(v5 + 32) = &type metadata for AppleServicesPropertyScope.AlwaysIncludeMMeClientInfoAndDeviceHeadersProperty;
  *(v5 + 40) = &protocol witness table for AppleServicesPropertyScope.AlwaysIncludeMMeClientInfoAndDeviceHeadersProperty;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  *(v6 + 32) = &type metadata for AppleServicesPropertyScope.OverrideAccountWithIDProperty;
  *(v6 + 40) = &protocol witness table for AppleServicesPropertyScope.OverrideAccountWithIDProperty;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A560, &unk_1AB4E7620);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AB4DE180;
  *(v7 + 32) = inited;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  _s9JetEngine35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(v7);
  v9 = v8;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B80, &qword_1AB4EF080);
  swift_arrayDestroy();
  return v9;
}

void _s9JetEngine35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 16 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v28 = *(v9 + 16 * v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C40, qword_1AB4E8F60);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 17;
          }

          v19 = v18 >> 4;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 4);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 16 * v21)
            {
              v23 = v18 >> 4;
              memmove(v16 + 4, v22, 16 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 16 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
          v12 = v28;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v24 = __OFSUB__(v26, v2);
    v27 = v26 - v2;
    if (v24)
    {
LABEL_35:
      __break(1u);
      return;
    }

    v5[2] = v27;
  }
}

uint64_t NetRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v100 - v8;
  v109 = sub_1AB45F764();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = type metadata accessor for NetRequest(0);
  v13 = &a3[*(v12 + 20)];
  *v13 = 5522759;
  *(v13 + 1) = 0xE300000000000000;
  v104 = *(v12 + 24);
  *&a3[v104] = 0;
  v14 = *(v12 + 28);
  v15 = MEMORY[0x1E69E7CC0];
  v106 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  v101 = v14;
  *&a3[v14] = v106;
  v102 = *(v12 + 32);
  *&a3[v102] = 0x403E000000000000;
  v16 = &a3[*(v12 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v107 = v16;
  v16[16] = 0;
  v17 = &a3[*(v12 + 40)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v103 = v17;
  v18 = *(v12 + 44);
  v19 = sub_1AB0BA124(v15);
  *&v112 = v18;
  *&a3[v18] = v19;
  v113 = a1;
  JSONObject.subscript.getter(7107189, 0xE300000000000000, &v122);
  sub_1AB014A58(&v122, v118, &qword_1EB436BA0, &qword_1AB4D4F40);
  v20 = v120;
  if (!v120)
  {
    sub_1AB066D84(&v122);

    sub_1AB014AC0(v118, &qword_1EB436BA0, &qword_1AB4D4F40);
LABEL_7:
    (*(v108 + 56))(v9, 1, 1, v109);
LABEL_8:
    sub_1AB014AC0(v9, &unk_1EB4395B0, &qword_1AB4D6720);
    sub_1AB163664();
    swift_allocError();
    *v28 = xmmword_1AB4E1B30;
    *(v28 + 16) = v12 | 0x4000000000000000;
    *(v28 + 24) = MEMORY[0x1E69E7CC0];
    swift_willThrow();
    sub_1AB066D84(v113);
LABEL_9:
  }

  v110 = v11;
  v111 = v3;
  v21 = v121;
  __swift_project_boxed_opaque_existential_1Tm(v118, v120);
  (*(v21 + 24))(v20, v21);
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  if (!v23)
  {
    sub_1AB066D84(&v122);

    goto LABEL_7;
  }

  sub_1AB45F714();

  sub_1AB066D84(&v122);
  v24 = v108;
  v25 = v109;
  v26 = (*(v108 + 48))(v9, 1, v109);
  v27 = v110;
  if (v26 == 1)
  {

    goto LABEL_8;
  }

  v30 = v105;
  (*(v24 + 32))(v105, v9, v25);
  (*(v24 + 16))(a3, v30, v25);
  JSONObject.subscript.getter(0x646F6874656DLL, 0xE600000000000000, &v122);
  sub_1AB014A58(&v122, v118, &qword_1EB436BA0, &qword_1AB4D4F40);
  v31 = v120;
  if (v120)
  {
    v32 = v121;
    __swift_project_boxed_opaque_existential_1Tm(v118, v120);
    v33 = (*(v32 + 24))(v31, v32);
    v35 = v34;
    sub_1AB066D84(&v122);
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    if (v35)
    {
      *v13 = v33;
      *(v13 + 1) = v35;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1AB066D84(&v122);
    sub_1AB014AC0(v118, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v35 = 0xE300000000000000;
LABEL_15:
  JSONObject.subscript.getter(0x6568636163, 0xE500000000000000, &v122);

  v36 = sub_1AB0BA260(&v122, v27);
  if ((v37 & 1) == 0)
  {
    *&a3[v104] = v36;
  }

  JSONObject.subscript.getter(0x73726564616568, 0xE700000000000000, v118);
  sub_1AB014A58(v118, &v115, &qword_1EB436BA0, &qword_1AB4D4F40);
  v38 = v116;
  if (v116)
  {
    v39 = v117;
    __swift_project_boxed_opaque_existential_1Tm(&v115, v116);
    (*(v39 + 160))(&v122, v38, v39);
    sub_1AB066D84(v118);
    __swift_destroy_boxed_opaque_existential_1Tm(&v115);
    v40 = *(&v123 + 1);
    if (*(&v123 + 1))
    {
      v41 = v124;
      __swift_project_boxed_opaque_existential_1Tm(&v122, *(&v123 + 1));
      v42 = (*(v41 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], v40, v41);
      sub_1AB07CDB0(&v122);
      if (v42)
      {

        *&a3[v101] = v42;
        v106 = v42;
      }

      goto LABEL_23;
    }
  }

  else
  {
    sub_1AB066D84(v118);
    sub_1AB014AC0(&v115, &qword_1EB436BA0, &qword_1AB4D4F40);
    v122 = 0u;
    v123 = 0u;
    v124 = 0;
  }

  sub_1AB014AC0(&v122, &qword_1EB436BC0, &qword_1AB4D52B0);
LABEL_23:
  JSONObject.subscript.getter(0x74756F656D6974, 0xE700000000000000, &v122);
  sub_1AB014A58(&v122, v118, &qword_1EB436BA0, &qword_1AB4D4F40);
  v43 = v120;
  v100 = v35;
  if (v120)
  {
    v44 = v121;
    __swift_project_boxed_opaque_existential_1Tm(v118, v120);
    v45 = (*(v44 + 80))(v43, v44);
    v47 = v46;
    sub_1AB066D84(&v122);
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    if ((v47 & 1) == 0)
    {
      *&a3[v102] = v45;
    }
  }

  else
  {
    sub_1AB066D84(&v122);
    sub_1AB014AC0(v118, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v48 = 0xD00000000000001ALL;
  JSONObject.subscript.getter(0xD00000000000001ALL, 0x80000001AB504BA0, &v122);

  sub_1AB0BA6CC(&v122, v27, v118);
  v50 = v118[0];
  v49 = v118[1];
  v51 = v119;
  v52 = v107;

  *v52 = v50;
  *(v52 + 1) = v49;
  v52[16] = v51;
  JSONObject.subscript.getter(2036625250, 0xE400000000000000, &v122);
  sub_1AB014A58(&v122, v118, &qword_1EB436BA0, &qword_1AB4D4F40);
  v53 = v120;
  if (v120)
  {
    v54 = v121;
    __swift_project_boxed_opaque_existential_1Tm(v118, v120);
    v55 = (*(v54 + 24))(v53, v54);
    v57 = v56;
    sub_1AB066D84(&v122);
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    if (v57)
    {
      v58 = v103;
      *v103 = v55;
      v58[1] = v57;
    }
  }

  else
  {
    sub_1AB066D84(&v122);
    sub_1AB014AC0(v118, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v59 = sub_1AB3D8AA4(0xD00000000000001FLL, 0x80000001AB4FF9A0, v27);
  if (!v59)
  {

    if (qword_1EB435660 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_50;
  }

  v60 = v59;
  v104 = *(v59 + 16);
  if (!v104)
  {
LABEL_48:

    goto LABEL_57;
  }

  v61 = 0;
  v48 = (v59 + 40);
  while (v61 < *(v60 + 16))
  {
    v63 = *(v48 - 1);
    v64 = *v48;
    *&v122 = v110;
    v65 = v111;
    sub_1AB0BA900(v113, &v122, v63, v64, v118);
    v111 = v65;
    if (v65)
    {

      sub_1AB066D84(v113);
      v98 = *(v108 + 8);
      v99 = v109;
      v98(v105, v109);

      v98(a3, v99);

      goto LABEL_9;
    }

    sub_1AB0BDBE4();
    v66 = v120;
    v67 = __swift_project_boxed_opaque_existential_1Tm(v118, v120);
    v116 = v66;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v115);
    (*(*(v66 - 8) + 16))(boxed_opaque_existential_0, v67, v66);
    sub_1AB014B78(&v115, v114);
    v69 = v112;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *&a3[v69];
    v125 = v71;
    v72 = sub_1AB02B1D8(&v122);
    v74 = v71[2];
    v75 = (v73 & 1) == 0;
    v76 = __OFADD__(v74, v75);
    v77 = v74 + v75;
    if (v76)
    {
      goto LABEL_59;
    }

    v78 = v73;
    if (v71[3] < v77)
    {
      sub_1AB0C03C8(v77, isUniquelyReferenced_nonNull_native);
      v72 = sub_1AB02B1D8(&v122);
      if ((v78 & 1) != (v79 & 1))
      {
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }

LABEL_43:
      v80 = v125;
      if (v78)
      {
        goto LABEL_34;
      }

      goto LABEL_44;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_43;
    }

    v84 = v72;
    sub_1AB1D76C0();
    v72 = v84;
    v80 = v125;
    if (v78)
    {
LABEL_34:
      v62 = (v80[7] + 32 * v72);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      sub_1AB014B78(v114, v62);
      sub_1AB02B2E4(&v122);
      goto LABEL_35;
    }

LABEL_44:
    v80[(v72 >> 6) + 8] |= 1 << v72;
    v81 = v72;
    sub_1AB02B4BC(&v122, v80[6] + 40 * v72);
    sub_1AB014B78(v114, (v80[7] + 32 * v81));
    sub_1AB02B2E4(&v122);
    v82 = v80[2];
    v76 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v76)
    {
      goto LABEL_60;
    }

    v80[2] = v83;
LABEL_35:
    ++v61;
    *&a3[v112] = v80;
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    v48 += 2;
    if (v104 == v61)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_50:
  v85 = qword_1EB435668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1AB4D47F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v87 = swift_allocObject();
  v112 = xmmword_1AB4D4720;
  *(v87 + 16) = xmmword_1AB4D4720;
  v88 = MEMORY[0x1E69E6158];
  *(&v123 + 1) = MEMORY[0x1E69E6158];
  *&v122 = v48 + 3;
  *(&v122 + 1) = 0x80000001AB50D980;
  *(v87 + 48) = 0u;
  *(v87 + 32) = 0u;
  sub_1AB0169C4(&v122, v87 + 32);
  *(v87 + 64) = 0;
  *(v86 + 32) = v87;
  v89 = swift_allocObject();
  *(v89 + 16) = v112;
  *(&v123 + 1) = v88;
  *&v122 = v48 + 20;
  *(&v122 + 1) = 0x80000001AB50D9C0;
  *(v89 + 48) = 0u;
  *(v89 + 32) = 0u;
  sub_1AB0169C4(&v122, v89 + 32);
  *(v89 + 64) = 0;
  *(v86 + 40) = v89;
  v90 = sub_1AB461094();
  if (os_log_type_enabled(v85, v90))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v91 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v91[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v91 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v93 = swift_allocObject();
    *(v93 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v122 = v86;
    *(&v122 + 1) = sub_1AB01A8D8;
    *&v123 = v93;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v94 = sub_1AB460484();
    v96 = v95;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v97 = swift_allocObject();
    *(v97 + 16) = v112;
    *(v97 + 56) = v88;
    *(v97 + 64) = sub_1AB016854();
    *(v97 + 32) = v94;
    *(v97 + 40) = v96;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v85, v90, v97, v100);
  }

LABEL_57:

  sub_1AB066D84(v113);
  return (*(v108 + 8))(v105, v109);
}

unint64_t sub_1AB0BA124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436968, &qword_1AB4D46F8);
    v3 = sub_1AB461924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AB014A58(v4, v13, &qword_1EB436B78, &unk_1AB4D7F00);
      result = sub_1AB02B1D8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1AB014B78(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AB0BA260(uint64_t a1, uint64_t a2)
{
  sub_1AB014A58(a1, v10, &qword_1EB436BA0, &qword_1AB4D4F40);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v6 = (*(v5 + 128))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if ((v6 & 1) == 0)
    {
      sub_1AB0B9254(a1, v10);
      v9[0] = a2;

      v8 = sub_1AB0BA488(v10, v9);
      sub_1AB066D84(a1);

      return v8;
    }
  }

  else
  {

    sub_1AB014AC0(v10, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  sub_1AB066D84(a1);
  return 0;
}

uint64_t sub_1AB0BA488(uint64_t a1, void *a2)
{

  sub_1AB01EC0C(a1, v15);
  v3 = v16;
  if (!v16)
  {
    sub_1AB18977C(v15);
    goto LABEL_6;
  }

  v4 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (!v7)
  {
LABEL_6:
    v5 = 0;
    v12 = 0x40000001F2008BE8uLL;
    v10 = MEMORY[0x1E69E7CC0];
    v7 = 0xE000000000000000;
    goto LABEL_7;
  }

  v8 = sub_1AB0BA5C4(v5, v7);
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    sub_1AB066D84(a1);

    return v10;
  }

  type metadata accessor for CachePolicy(0);
  v10 = 0;
  v12 = v11 | 0x8000000000000000;
LABEL_7:
  sub_1AB163664();
  swift_allocError();
  *v13 = v5;
  v13[1] = v7;
  v13[2] = v12;
  v13[3] = v10;
  swift_willThrow();
  sub_1AB066D84(a1);
  return v10;
}

uint64_t sub_1AB0BA5C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v3 || (sub_1AB461DA4() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x61632D6563726F66 && a2 == 0xEB00000000656863 || (sub_1AB461DA4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x65686361632D6F6ELL && a2 == 0xE800000000000000)
  {
    return 1;
  }

  return sub_1AB461DA4() & 1;
}

uint64_t sub_1AB0BA6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB014A58(a1, v15, &qword_1EB436BA0, &qword_1AB4D4F40);
  v6 = v16;
  if (v16)
  {
    v7 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    if ((v8 & 1) == 0)
    {
      sub_1AB0B9254(a1, v15);
      v14 = a2;

      sub_1AB250B54(v15, v12);
      sub_1AB066D84(a1);

      v10 = v12[1];
      v11 = v13;
      *a3 = v12[0];
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      return result;
    }
  }

  else
  {

    sub_1AB014AC0(v15, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  result = sub_1AB066D84(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1AB0BA900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v12 = *a2;
  v10 = *(a4 + 24);
  a5[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a5);
  result = v10(a1, &v12, a3, a4);
  if (v5)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a5);
  }

  return result;
}

uint64_t sub_1AB0BA9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  sub_1AB0B9254(a1, v7);
  v6[0] = a2;

  v8 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v6);
  v9 = MEMORY[0x1E69E7CC0];
  v6[3] = &type metadata for _JSONObjectDecoder;
  v6[4] = sub_1AB0BB6F8();
  v6[0] = swift_allocObject();
  sub_1AB0BB74C(v7, v6[0] + 16);
  LOBYTE(a3) = a3(v6);
  sub_1AB0BCB6C(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return a3 & 1;
}

uint64_t sub_1AB0BAA84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB0BA9B8(a1, *a2, sub_1AB0BB950);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void *_sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438030, &unk_1AB4EC290);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_1AB461864();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v79 - v9;
  v10 = *a1;
  v107 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438738, &qword_1AB4DD830);
  sub_1AB460344();
  v11 = 0;
  v13 = v10 + 64;
  v12 = *(v10 + 64);
  v92 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v94 = (v6 + 48);
  v87 = (v6 + 32);
  v90 = (v6 + 16);
  v81 = v6;
  v84 = (v6 + 8);
  v86 = "This may indicate a bug." & 0x2F00000000000000;
  v83 = 0x80000001AB5035F0;
  v85 = "Could not coerce " & 0x2F00000000000000;
  v82 = 0x80000001AB503610;
  v91 = xmmword_1AB4D4720;
  v89 = v4;
  v88 = v5;
  v80 = v17;
  while (v16)
  {
    v18 = v11;
LABEL_16:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v92 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_1AB0165C4(*(v92 + 56) + 32 * v22, v101);
    *&v102 = v25;
    *(&v102 + 1) = v24;
    sub_1AB014B78(v101, &v103);

LABEL_17:
    v105 = v102;
    v106[0] = v103;
    v106[1] = v104;
    v26 = *(&v102 + 1);
    if (!*(&v102 + 1))
    {

      return v107;
    }

    v27 = v105;
    sub_1AB014B78(v106, v101);

    sub_1AB461844();
    if ((*v94)(v4, 1, v5) == 1)
    {
      sub_1AB014AC0(v4, &qword_1EB438030, &unk_1AB4EC290);
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v95 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v28 = swift_allocObject();
      *(v28 + 16) = v91;
      v29 = sub_1AB0168A8(0, 41, 0, MEMORY[0x1E69E7CC0]);
      if (v86 != 0x2000000000000000)
      {
        v100 = MEMORY[0x1E69E6158];
        v98 = 0xD000000000000011;
        v99 = v83;
        v102 = 0u;
        v103 = 0u;
        sub_1AB0169C4(&v98, &v102);
        LOBYTE(v104) = 0;
        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[40 * v31];
        v33 = v102;
        v34 = v103;
        v32[64] = v104;
        *(v32 + 2) = v33;
        *(v32 + 3) = v34;
        v4 = v89;
      }

      v100 = MEMORY[0x1E69E6158];
      v98 = v27;
      v99 = v26;
      sub_1AB01522C(&v98, v97);
      v102 = 0u;
      v103 = 0u;
      sub_1AB0169C4(v97, &v102);
      LOBYTE(v104) = 0;
      v36 = *(v29 + 2);
      v35 = *(v29 + 3);
      if (v36 >= v35 >> 1)
      {
        v29 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v29);
      }

      *(v29 + 2) = v36 + 1;
      v37 = &v29[40 * v36];
      v38 = v102;
      v39 = v103;
      v37[64] = v104;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      sub_1AB014AC0(&v98, &unk_1EB437E60, &qword_1AB4D4730);
      if (v85 != 0x2000000000000000)
      {
        v100 = MEMORY[0x1E69E6158];
        v98 = 0xD000000000000017;
        v99 = v82;
        v102 = 0u;
        v103 = 0u;
        sub_1AB0169C4(&v98, &v102);
        LOBYTE(v104) = 0;
        v41 = *(v29 + 2);
        v40 = *(v29 + 3);
        if (v41 >= v40 >> 1)
        {
          v29 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v29);
        }

        *(v29 + 2) = v41 + 1;
        v42 = &v29[40 * v41];
        v43 = v102;
        v44 = v103;
        v42[64] = v104;
        *(v42 + 2) = v43;
        *(v42 + 3) = v44;
      }

      *(v28 + 32) = v29;
      v45 = sub_1AB461094();
      if (os_log_type_enabled(v95, v45))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v46 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v46[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v46 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v48 = swift_allocObject();
        *(v48 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v102 = v28;
        *(&v102 + 1) = sub_1AB0223E4;
        *&v103 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
        sub_1AB016A34();
        v49 = sub_1AB460484();
        v51 = v50;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
        v52 = swift_allocObject();
        *(v52 + 16) = v91;
        *(v52 + 56) = MEMORY[0x1E69E6158];
        *(v52 + 64) = sub_1AB016854();
        *(v52 + 32) = v49;
        *(v52 + 40) = v51;
        sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v95, v45, v52);

        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        v4 = v89;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
      }

      v5 = v88;
    }

    else
    {

      v53 = v93;
      (*v87)(v93, v4, v5);
      v54 = *v90;
      v55 = v96;
      (*v90)(v96, v53, v5);
      sub_1AB0165C4(v101, &v102);
      v56 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v56;
      v58 = sub_1AB0BB4FC(v55);
      v60 = *(v56 + 16);
      v61 = (v59 & 1) == 0;
      v62 = __OFADD__(v60, v61);
      v63 = v60 + v61;
      if (v62)
      {
        goto LABEL_50;
      }

      v64 = v59;
      if (*(v56 + 24) >= v63)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        v69 = v58;
        sub_1AB1D72A4();
        v58 = v69;
        v66 = v98;
        if ((v64 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_43:
        v67 = (v66[7] + 32 * v58);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        sub_1AB014B78(&v102, v67);
        v68 = *v84;
        (*v84)(v96, v5);
        v68(v93, v5);
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        v107 = v66;
      }

      else
      {
        sub_1AB1D1804(v63, isUniquelyReferenced_nonNull_native);
        v58 = sub_1AB0BB4FC(v96);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_52;
        }

LABEL_42:
        v66 = v98;
        if (v64)
        {
          goto LABEL_43;
        }

LABEL_46:
        v70 = v13;
        v71 = v4;
        v66[(v58 >> 6) + 8] |= 1 << v58;
        v72 = v81;
        v73 = v58;
        v74 = v96;
        v54(v66[6] + *(v81 + 72) * v58, v96, v5);
        sub_1AB014B78(&v102, (v66[7] + 32 * v73));
        v75 = *(v72 + 8);
        v75(v74, v5);
        v75(v93, v5);
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        v76 = v66[2];
        v62 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v62)
        {
          goto LABEL_51;
        }

        v66[2] = v77;
        v107 = v66;
        v4 = v71;
        v13 = v70;
        v17 = v80;
      }
    }
  }

  if (v17 <= v11 + 1)
  {
    v19 = v11 + 1;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      v103 = 0u;
      v104 = 0u;
      v11 = v20;
      v102 = 0u;
      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

unint64_t sub_1AB0BB500(uint64_t a1, double a2)
{
  sub_1AB461864();
  v3 = sub_1AB460444();
  return sub_1AB0BB560(a1, v3, v4);
}

unint64_t sub_1AB0BB560(uint64_t a1, uint64_t a2, double a3)
{
  v23 = a1;
  v5 = sub_1AB461864();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v3;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  v22 = v3 + 64;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v5, v7);
      v19 = sub_1AB460504();
      (*v17)(v9, v5);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1AB0BB6F8()
{
  result = qword_1EB4351E8[0];
  if (!qword_1EB4351E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4351E8);
  }

  return result;
}

uint64_t sub_1AB0BB7A8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_1AB462224();
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A530, &unk_1AB4E75E0);
    sub_1AB0C0804(&qword_1EB435280, &qword_1EB43A530, &unk_1AB4E75E0, sub_1AB2CCC50);
    sub_1AB461AC4();
    (*(v9 + 8))(v11, v8);
    v12 = v15;
  }

  return v12 & 1;
}

unint64_t sub_1AB0BB998()
{
  result = qword_1EB435090;
  if (!qword_1EB435090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435090);
  }

  return result;
}

void *_JSONObjectDecoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  sub_1AB0B9254(v3, v12);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);

  result = sub_1AB0BBAE0(v12, v8, v9, a3, v13);
  if (!v5)
  {
    type metadata accessor for _JSONObjectKeyedDecodingContainer(0, a2, a3, v11);
    swift_getWitnessTable();
    return sub_1AB461B14();
  }

  return result;
}

uint64_t sub_1AB0BBAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  sub_1AB01EC0C(a1, v19);
  v10 = v20;
  if (v20)
  {
    v11 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    v12 = (*(v11 + 104))(v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v19, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  result = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, a2, v14);
  if (result != 2 && (result & 1) != 0)
  {

    v15 = sub_1AB4616B4();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v17 = sub_1AB461B04();
    sub_1AB461694();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

LABEL_8:
  v18 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v18;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  return result;
}

uint64_t sub_1AB0BBCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 24);
  v7[2] = *(a3 + 16);
  v7[3] = a4;
  v7[4] = v5;
  v7[5] = a5;
  v7[7] = a1;
  return sub_1AB0BBD60(a2, sub_1AB0BC0B4, v7, a3);
}

uint64_t sub_1AB0BBD60(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = sub_1AB462294();
  JSONObject.subscript.getter(v9, v10, v13);

  v11 = sub_1AB0BBE4C(a1, *(v4 + 48), v7, v8);
  a2(v13, v11);
  sub_1AB066D84(v13);
}

void *sub_1AB0BBE4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *(v7 + 16);
  v14(&v19 - v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2 = sub_1AB0BBFF8(0, a2[2] + 1, 1, a2);
    v20 = a2;
  }

  v17 = a2[2];
  v16 = a2[3];
  if (v17 >= v16 >> 1)
  {
    a2 = sub_1AB0BBFF8((v16 > 1), v17 + 1, 1, a2);
    v20 = a2;
  }

  (v14)(v9, v13, a3);
  sub_1AB0BC01C(v17, v9, &v20, a3, a4);
  (*(v7 + 8))(v13, a3);
  return a2;
}

uint64_t sub_1AB0BC01C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1AB0149B0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1AB0BC10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v78 = a7;
  v73 = a6;
  v74 = a2;
  v77 = a4;
  v87 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v63 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v63 - v10;
  v11 = sub_1AB461354();
  v12 = *(v11 - 8);
  v75 = v11;
  v76 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  sub_1AB01EC0C(a1, v82);
  v28 = v83;
  if (v83)
  {
    v29 = v84;
    __swift_project_boxed_opaque_existential_1Tm(v82, v83);
    v30 = (*(v29 + 128))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v82, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v32 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v87 + 40), v31);
  if (v32 != 2 && (v32 & 1) != 0)
  {
    v33 = sub_1AB4616B4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v35 = v77;

    sub_1AB461694();
    v36 = MEMORY[0x1E69E6B08];
    goto LABEL_27;
  }

LABEL_8:
  sub_1AB0B9254(a1, v82);
  v37 = swift_dynamicCast();
  v38 = *(v19 + 56);
  if (v37)
  {
    v38(v18, 0, 1, a5);
    v39 = *(v19 + 32);
    v39(v27, v18, a5);
    v40 = v78;
    v41 = v27;
    return (v39)(v40, v41, a5);
  }

  v38(v18, 1, 1, a5);
  v43 = v76 + 8;
  v44 = v18;
  v45 = v75;
  v64 = *(v76 + 8);
  v64(v44, v75);
  v46 = sub_1AB45F764();
  v47 = v77;
  if (v46 == v77)
  {
    v49 = v46;
    sub_1AB01EC0C(a1, v82);
    v50 = v83;
    if (v83)
    {
      v65 = v38;
      v76 = v43;
      v51 = v84;
      __swift_project_boxed_opaque_existential_1Tm(v82, v83);
      (*(v51 + 24))(v50, v51);
      v53 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      if (v53)
      {
        sub_1AB45F714();

        v54 = v68;
        if (swift_dynamicCast())
        {
          v65(v54, 0, 1, a5);
          v39 = *(v19 + 32);
          v39(v24, v54, a5);
          v40 = v78;
          v41 = v24;
          return (v39)(v40, v41, a5);
        }

        v65(v54, 1, 1, a5);
        v64(v54, v45);
        v33 = sub_1AB4616B4();
        swift_allocError();
        v35 = v62;

        sub_1AB461694();
        v36 = MEMORY[0x1E69E6B00];
        goto LABEL_27;
      }
    }

    else
    {
      sub_1AB014AC0(v82, &qword_1EB436BA0, &qword_1AB4D4F40);
    }

    v33 = sub_1AB4616B4();
    swift_allocError();
    v35 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v35 = v49;
  }

  else
  {
    v65 = v38;
    v48 = sub_1AB45F9B4();
    if (v48 != v47)
    {
      sub_1AB0B9254(a1, v82);
      v85 = *(v87 + 40);
      v86 = v74;
      v80 = &type metadata for _JSONObjectDecoder;
      v81 = sub_1AB0BB6F8();
      v79 = swift_allocObject();
      sub_1AB0BB74C(v82, v79 + 16);

      sub_1AB460E14();
      return sub_1AB0BCB6C(v82);
    }

    v55 = v48;
    sub_1AB01EC0C(a1, v82);
    v56 = v83;
    if (v83)
    {
      v57 = v84;
      __swift_project_boxed_opaque_existential_1Tm(v82, v83);
      (*(v57 + 144))(v56, v57);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
    }

    else
    {
      sub_1AB014AC0(v82, &qword_1EB436BA0, &qword_1AB4D4F40);
      (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
    }

    v59 = v70;
    if (swift_dynamicCast())
    {
      v65(v59, 0, 1, a5);
      v39 = *(v19 + 32);
      v60 = v66;
      v39(v66, v59, a5);
      v40 = v78;
      v41 = v60;
      return (v39)(v40, v41, a5);
    }

    v65(v59, 1, 1, a5);
    v64(v59, v45);
    v33 = sub_1AB4616B4();
    swift_allocError();
    v35 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v35 = v55;
  }

  sub_1AB461694();
  v36 = MEMORY[0x1E69E6AF8];
LABEL_27:
  (*(*(v33 - 8) + 104))(v35, *v36, v33);
  return swift_willThrow();
}

uint64_t DiscardOnError<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AB01494C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438000, &unk_1AB4F4C20);
  if (swift_dynamicCast())
  {
    sub_1AB0BCB6C(v7);
  }

  else
  {
    DiscardOnErrorLogUnsupportedDecoderError()();
  }

  sub_1AB01494C(a1, v7);
  (*(a3 + 8))(v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Optional<A>.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v16 = a4;
  v15 = sub_1AB461354();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  __swift_project_boxed_opaque_existential_1Tm(v17, v18);
  if (sub_1AB461E04())
  {
    (*(*(a2 - 8) + 56))(v11, 1, 1, a2);
    v12 = v15;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB461DF4();
    (*(*(a2 - 8) + 56))(v8, 0, 1, a2);
    v12 = v15;
    (*(v6 + 32))(v11, v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  (*(v6 + 32))(v16, v11, v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB0BCF64@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _JSONObjectSingleValueDecodingContainer;
  a1[4] = sub_1AB0BCFE8();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_1AB0B9254(v1, v3 + 16);
  v4 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 40);
  *(v3 + 64) = v4;
}

unint64_t sub_1AB0BCFE8()
{
  result = qword_1EB434F80[0];
  if (!qword_1EB434F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB434F80);
  }

  return result;
}

uint64_t sub_1AB0BD03C()
{
  sub_1AB01EC0C(v0, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    v3 = (*(v2 + 128))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1AB014AC0(v5, &qword_1EB436BA0, &qword_1AB4D4F40);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1AB0BD0F4@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v79 = a3;
  v82 = a1;
  v83 = a4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v71 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v71 - v8;
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  v80 = v9;
  v81 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - v24;
  sub_1AB01EC0C(v4, &v87);
  v26 = v89;
  if (v89)
  {
    v27 = v90;
    __swift_project_boxed_opaque_existential_1Tm(&v87, v89);
    v28 = (*(v27 + 128))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1AB014AC0(&v87, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v30 = sub_1AB0BDDF4(0xD00000000000002BLL, 0x80000001AB5021F0, *(v5 + 40), v29);
  if (v30 != 2 && (v30 & 1) != 0)
  {
    v31 = sub_1AB4616B4();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v33 = v82;
    v87 = 0;
    v88 = 0xE000000000000000;

    sub_1AB4615D4();

    v87 = 0x6465746365707845;
    v88 = 0xE900000000000020;
    v34 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v34);

    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB502320);
    sub_1AB461694();
    v35 = *MEMORY[0x1E69E6B08];
    v36 = *(*(v31 - 8) + 104);
    v37 = v33;
LABEL_8:
    v38 = v31;
LABEL_27:
    v36(v37, v35, v38);
    return swift_willThrow();
  }

LABEL_9:
  sub_1AB0B9254(v5, &v87);
  v39 = swift_dynamicCast();
  v40 = *(v17 + 56);
  if (v39)
  {
    v40(v16, 0, 1, a2);
    v41 = *(v17 + 32);
    v41(v25, v16, a2);
    return (v41)(v83, v25, a2);
  }

  v71 = *(v17 + 56);
  v40(v16, 1, 1, a2);
  v43 = v81 + 8;
  v44 = *(v81 + 8);
  v44(v16, v80);
  v45 = sub_1AB45F764();
  v46 = v82;
  if (v45 != v82)
  {
    v47 = sub_1AB45F9B4();
    if (v47 != v46)
    {
      sub_1AB0B9254(v5, &v87);
      v48 = *(v5 + 48);
      v91 = *(v5 + 40);
      v92 = v48;
      v85 = &type metadata for _JSONObjectDecoder;
      v86 = sub_1AB0BB6F8();
      v84 = swift_allocObject();
      sub_1AB0BB74C(&v87, v84 + 16);

      sub_1AB460E14();
      return sub_1AB0BCB6C(&v87);
    }

    v57 = v47;
    sub_1AB01EC0C(v5, &v87);
    v58 = v89;
    if (v89)
    {
      v59 = v90;
      __swift_project_boxed_opaque_existential_1Tm(&v87, v89);
      v60 = *(v59 + 144);
      v82 = v44;
      v60(v58, v59);
      v44 = v82;
      __swift_destroy_boxed_opaque_existential_1Tm(&v87);
    }

    else
    {
      sub_1AB014AC0(&v87, &qword_1EB436BA0, &qword_1AB4D4F40);
      (*(*(v57 - 8) + 56))(v77, 1, 1, v57);
    }

    v64 = v76;
    if (swift_dynamicCast())
    {
      v71(v64, 0, 1, a2);
      v54 = *(v17 + 32);
      v65 = v72;
      v54(v72, v64, a2);
      v55 = v83;
      v56 = v65;
      return (v54)(v55, v56, a2);
    }

    v71(v64, 1, 1, a2);
    v44(v64, v80);
    v66 = sub_1AB4616B4();
    swift_allocError();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v68 = v57;

    sub_1AB461694();
    v35 = *MEMORY[0x1E69E6AF8];
    v36 = *(*(v66 - 8) + 104);
    v37 = v68;
    v38 = v66;
    goto LABEL_27;
  }

  v82 = v45;
  sub_1AB01EC0C(v5, &v87);
  v49 = v89;
  if (v89)
  {
    v81 = v43;
    v50 = v90;
    __swift_project_boxed_opaque_existential_1Tm(&v87, v89);
    (*(v50 + 24))(v49, v50);
    v52 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
    if (v52)
    {
      sub_1AB45F714();

      v53 = v74;
      if (swift_dynamicCast())
      {
        v71(v53, 0, 1, a2);
        v54 = *(v17 + 32);
        v54(v22, v53, a2);
        v55 = v83;
        v56 = v22;
        return (v54)(v55, v56, a2);
      }

      v71(v53, 1, 1, a2);
      v44(v53, v80);
      v31 = sub_1AB4616B4();
      swift_allocError();
      v70 = v69;

      sub_1AB461694();
      v35 = *MEMORY[0x1E69E6B00];
      v36 = *(*(v31 - 8) + 104);
      v37 = v70;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(&v87, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v61 = sub_1AB4616B4();
  swift_allocError();
  v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
  *v63 = v82;

  sub_1AB461694();
  (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
  return swift_willThrow();
}

uint64_t sub_1AB0BDB70()
{
  sub_1AB0165C4(v0, v3);
  sub_1AB016760(0, &qword_1ED4D1940, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t static AppleServicesPropertyScope.SigningStyleProperty.value(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A4C8, &qword_1AB4E6E80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB0C07B0();
  result = sub_1AB462224();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A4D0, &qword_1AB4E6E88);
    sub_1AB0C0804(qword_1EB435288, &qword_1EB43A4D0, &qword_1AB4E6E88, sub_1AB0C2D94);
    sub_1AB461AC4();
    result = (*(v6 + 8))(v8, v5);
    v10 = v12;
    if (v12 == 4)
    {
      v10 = 0;
    }

    *a2 = v10;
  }

  return result;
}

uint64_t sub_1AB0BDDF4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_1AB461864();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1AB0C0880(a1, a2, v10);
  if (*(a3 + 16) && (v11 = sub_1AB0BB4FC(v10), (v12 & 1) != 0))
  {
    sub_1AB0165C4(*(a3 + 56) + 32 * v11, v41);
    (*(v8 + 8))(v10, v7);
    sub_1AB0165C4(v41, &v36);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      return LOBYTE(v39[0]);
    }

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v14 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D47F0;
    v40 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001AB5023A0;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABC0, &unk_1AB4EA3A8);
    v39[0] = a1;
    v39[1] = a2;
    sub_1AB014A58(v39, v35, &unk_1EB437E60, &qword_1AB4D4730);
    v36 = 0u;
    v37 = 0u;

    sub_1AB0169C4(v35, &v36);
    v38 = 0;
    v17 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
      v40 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1AB0168A8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v36;
    v22 = v37;
    v20[64] = v38;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v40 = v17;
    sub_1AB014AC0(v39, &unk_1EB437E60, &qword_1AB4D4730);
    v23._countAndFlagsBits = 96;
    v23._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v24 = swift_allocObject();
    v34 = xmmword_1AB4D4720;
    *(v24 + 16) = xmmword_1AB4D4720;
    v25 = MEMORY[0x1E69E6158];
    *(&v37 + 1) = MEMORY[0x1E69E6158];
    *&v36 = 0xD000000000000027;
    *(&v36 + 1) = 0x80000001AB501060;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1AB0169C4(&v36, v24 + 32);
    *(v24 + 64) = 0;
    *(v15 + 40) = v24;
    v26 = sub_1AB461094();
    if (os_log_type_enabled(v14, v26))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v27 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v27 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v29 = swift_allocObject();
      *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v36 = v15;
      *(&v36 + 1) = sub_1AB01A8D8;
      *&v37 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v30 = sub_1AB460484();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v33 = swift_allocObject();
      *(v33 + 16) = v34;
      *(v33 + 56) = v25;
      *(v33 + 64) = sub_1AB016854();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v14, v26, v33);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }

  return 2;
}

unint64_t sub_1AB0BE3C0()
{
  result = qword_1EB435060;
  if (!qword_1EB435060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435060);
  }

  return result;
}

uint64_t sub_1AB0BE430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB0BA9B8(a1, *a2, sub_1AB0BE478);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_1AB0BE4C0()
{
  result = qword_1EB435078;
  if (!qword_1EB435078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435078);
  }

  return result;
}

uint64_t sub_1AB0BE530@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB0BA9B8(a1, *a2, sub_1AB0C0954);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_1AB0BE578()
{
  result = qword_1EB435048;
  if (!qword_1EB435048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435048);
  }

  return result;
}

uint64_t sub_1AB0BE5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0BE5F0, 0, 0);
}

uint64_t sub_1AB0BE5F0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  if (qword_1EB435380 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = 1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for NetResponse(0);
  *v2 = v0;
  v2[1] = sub_1AB0B4094;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DE98](v3, v0 + 64, &unk_1AB4F2B70, v1, 0, 0, 0xD00000000000001ALL, 0x80000001AB50C360);
}

uint64_t sub_1AB0BE748(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027460;

  return sub_1AB0C0D5C(a1, v5, v4);
}

uint64_t sub_1AB0BE7F4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1AB0B46AC;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1AB0BE924(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027460;

  return sub_1AB0C0D80(a1, a2, a3);
}

uint64_t sub_1AB0BE9D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AB09B380;

  return AppleServicesEncoder.encodeRequest(fromContentsOf:)(a2);
}

uint64_t AppleServicesEncoder.encodeRequest(fromContentsOf:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1AB45F0A4();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0C1E68, 0, 0);
}

uint64_t sub_1AB0BEB30(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v38 = a7;
  v33 = a6;
  v32 = a5;
  v34 = a4;
  v39 = a3;
  v36 = a2;
  v37 = a1;
  v12 = type metadata accessor for NetRequest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB0B72A8(a6, v15);
  v16 = *(v13 + 80);
  v17 = (v16 + 32) & ~v16;
  v14 += 7;
  v18 = (v14 + v17) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  sub_1AB0C099C(v15, v19 + v17);
  *(v19 + v18) = a1;
  v20 = v35;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  sub_1AB0B72A8(v33, v15);
  v21 = (v16 + 24) & ~v16;
  v22 = (v14 + v21) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v32;
  sub_1AB0C099C(v15, v24 + v21);
  v25 = v36;
  *(v24 + v22) = v36;
  v26 = v34;
  *(v24 + v23) = v34;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v42[3] = type metadata accessor for RunLoopWorkerThread();
  v42[4] = &protocol witness table for RunLoopWorkerThread;
  v42[0] = v38;
  v40[0] = sub_1AB0B7184;
  v40[1] = v19;
  v40[2] = sub_1AB3B44C8;
  v40[3] = v24;
  sub_1AB01494C(v42, v41);
  v41[40] = 0;
  v27 = v25;

  v28 = v26;
  swift_retain_n();
  v29 = v28;
  v30 = v37;
  sub_1AB0C250C(v40);

  sub_1AB014AC0(v40, &qword_1EB4376C0, &unk_1AB4D8B30);
  return __swift_destroy_boxed_opaque_existential_1Tm(v42);
}

uint64_t sub_1AB0BEDBC()
{
  v1 = *(type metadata accessor for NetRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AB0BEF0C()
{
  v1 = *(type metadata accessor for NetRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AB0BF06C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for NetRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB0BEB30(a1, a2, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_1AB0BF150(uint64_t a1)
{
  v1 = sub_1AB45FFD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB435330 != -1)
  {
    swift_once();
  }

  v9 = sub_1AB45FFC4();
  __swift_project_value_buffer(v9, qword_1EB435338);
  v10 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v11 = sub_1AB461224();
  if (sub_1AB461314())
  {

    sub_1AB460024();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v10, v11, v14, "NetFetchPromise", v12, v13, 2u);
    MEMORY[0x1AC59F020](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1AB0BF3DC(uint64_t a1)
{
  v3 = type metadata accessor for MTMetricsIdentifier(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437540, &unk_1AB4FAD30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &qword_1EB437540, &unk_1AB4FAD30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AA51C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for MTMetricsIdentifier);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB0AC520(v5);
    sub_1AB059DC8(v5, type metadata accessor for MTMetricsIdentifier);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB4376F0, &qword_1AB4D8B60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0ACE54(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0ACE54((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v13, &qword_1EB437540, &unk_1AB4FAD30);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t sub_1AB0BF6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437540, &unk_1AB4FAD30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548, &qword_1AB4D7F30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D7EA0;
  *v9 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437550, &qword_1AB4D7F38);
  v11 = swift_allocObject();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v11[2] = v12;
  sub_1AB017FB8(v9, v11 + *(*v11 + 96), &qword_1EB437540, &unk_1AB4FAD30);
  v13 = *(v3 + 16);
  v29 = a2;
  v30 = v13;
  v28 = a1;
  v14 = sub_1AB460514();
  v26 = a3;
  if (a3)
  {
    sub_1AB09A670(a3);
    v15 = sub_1AB4602D4();
  }

  else
  {
    v15 = 0;
  }

  v35 = sub_1AB0ADB68;
  v36 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1AB0C23B0;
  v34 = &block_descriptor_9;
  v16 = _Block_copy(&aBlock);

  [v30 queryIDForTopic:v14 type:2 options:v15 completion:v16];

  _Block_release(v16);
  *(v10 + 32) = v11;
  *v9 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v17[2] = v18;
  sub_1AB017FB8(v9, v17 + *(*v17 + 96), &qword_1EB437540, &unk_1AB4FAD30);
  v19 = sub_1AB460514();
  if (v26)
  {
    sub_1AB09A670(v26);
    v20 = sub_1AB4602D4();
  }

  else
  {
    v20 = 0;
  }

  v35 = sub_1AB0C1C58;
  v36 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1AB0C23B0;
  v34 = &block_descriptor_13;
  v21 = _Block_copy(&aBlock);

  [v30 queryIDForTopic:v19 type:1 options:v20 completion:v21];

  _Block_release(v21);
  *(v10 + 40) = v17;
  sub_1AB0AC73C(v10, sub_1AB0ADCA4, 0);
  v23 = v22;

  return v23;
}

uint64_t type metadata accessor for MTMetricsIdentifier(uint64_t a1)
{
  result = qword_1EB432688;
  if (!qword_1EB432688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB0BFB44(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = type metadata accessor for MTMetricsIdentifier(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((a2 + 24));
  sub_1AB0AD08C(a1, v9);
  v10 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = v10[2];

    *(a2 + 16) = sub_1AB0AD0F0(0, v14 + 1, 1, v10);

    v10 = *(a2 + 16);
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1AB0AD0F0((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  sub_1AB0AD118(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13);
  *(a2 + 16) = v10;
  os_unfair_lock_unlock((a2 + 24));
  dispatch_group_leave(a3);
}

void sub_1AB0BFCD0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA4EC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA4EC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436A6C(v4);
    v15 = MEMORY[0x1E69E7CF8];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB4376B0, &unk_1AB4D8B20);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB0ADB44(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB0ADB44((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB0BFED4(uint64_t a1)
{
  v3 = type metadata accessor for MTMetricsIdentifier(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437540, &unk_1AB4FAD30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &qword_1EB437540, &unk_1AB4FAD30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &qword_1EB437540, &unk_1AB4FAD30);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for MTMetricsIdentifier);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &qword_1EB437540, &unk_1AB4FAD30);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB4376F0;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17, &qword_1AB4D8B60);
        sub_1AB014A58(v42, v39, v17, &qword_1AB4D8B60);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for MTMetricsIdentifier);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for MTMetricsIdentifier);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17, &qword_1AB4D8B60);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for MTMetricsIdentifier);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for MTMetricsIdentifier);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB0ADB70, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17, &qword_1AB4D8B60);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB0C03C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436968, &qword_1AB4D46F8);
  v6 = sub_1AB461914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_1AB014B78((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_1AB02B4BC(v23, &v37);
        sub_1AB0165C4(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1AB461524();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_1AB014B78(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1AB0C0680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1AB0B9254(a1, v7);
  v6[0] = a2;

  v8 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v6);
  v9 = MEMORY[0x1E69E7CC0];
  v6[3] = &type metadata for _JSONObjectDecoder;
  v6[4] = sub_1AB0BB6F8();
  v6[0] = swift_allocObject();
  sub_1AB0BB74C(v7, v6[0] + 16);
  static AppleServicesPropertyScope.SigningStyleProperty.value(from:)(v6, a3);
  sub_1AB0BCB6C(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1AB0C0744()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1AB0C07B0()
{
  result = qword_1EB4350A8;
  if (!qword_1EB4350A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4350A8);
  }

  return result;
}

uint64_t sub_1AB0C0804(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB0C0894()
{
  result = qword_1EB435030;
  if (!qword_1EB435030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435030);
  }

  return result;
}

uint64_t sub_1AB0C08E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB439AC0, &qword_1AB4E75C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB0C099C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB0C0A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4397B0, &unk_1AB4E4580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB0C0A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return (&a4[*"4"])(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB0C0B4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  type metadata accessor for NetResponse(0);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1AB0B512C;

  return v11(v8);
}

uint64_t sub_1AB0C0C7C(uint64_t a1)
{
  v4 = *(type metadata accessor for NetRequest(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB0BE5CC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1AB0C0D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0BE7F4, 0, 0);
}

uint64_t sub_1AB0C0D80(uint64_t a1, uint64_t a2, void *a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v4[5] = a3[5];
  v4[6] = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[7] = AssociatedTypeWitness;
  v4[8] = *(AssociatedTypeWitness - 8);
  v4[9] = swift_task_alloc();
  v8 = a3[4];
  v9 = a3[2];
  v10 = swift_getAssociatedTypeWitness();
  v4[10] = v10;
  v4[11] = *(v10 - 8);
  v11 = swift_task_alloc();
  v4[12] = v11;
  v14 = (*(v8 + 32) + **(v8 + 32));
  v12 = swift_task_alloc();
  v4[13] = v12;
  *v12 = v4;
  v12[1] = sub_1AB09B4D0;

  return v14(v11, a2, v9, v8);
}

void *AppleServicesEncoder.amsRequestEncoder(toSatisfy:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB45FBC4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AB45FBE4();
  v43 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45F704();
  if (v9)
  {
    v10 = v9;
    v11 = v1[9];
    if (v11)
    {
      v12 = v8;
      if ((sub_1AB05CF1C(v8, v9, v11) & 1) == 0)
      {
        sub_1AB45FBB4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AB4D4720;
        *(inited + 32) = sub_1AB460544();
        *(inited + 40) = v20;
        v41 = 0;
        v42 = 0xE000000000000000;
        sub_1AB4615D4();

        v41 = 0x6020656D65686353;
        v42 = 0xE800000000000000;
        MEMORY[0x1AC59BA20](v12, v10);

        MEMORY[0x1AC59BA20](0x726F662073692060, 0xEE006E6564646962);
        v21 = v41;
        v22 = v42;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v21;
        *(inited + 56) = v22;
        sub_1AB01B220(inited);
        swift_setDeallocating();
        sub_1AB014AC0(inited + 32, &qword_1EB439AA0, &qword_1AB4DA4B0);
        sub_1AB357214();
        sub_1AB45F574();
        sub_1AB45FBD4();
        (*(v43 + 8))(v7, v5);
        swift_willThrow();
        return v5;
      }
    }
  }

  v13 = v1[7];
  if (v13)
  {
    v14 = *v1;
    v15 = objc_allocWithZone(MEMORY[0x1E698C9C0]);
    swift_unknownObjectRetain();
    v5 = [v15 initWithTokenService:v13 bag:v14];
    [v5 setClientInfo_];
    [v5 setDisableResponseDecoding_];
    if (*(v2 + 65) & 1) != 0 || (v16 = *(a1 + *(type metadata accessor for NetRequest(0) + 44)), (sub_1AB0C27E8(v16, &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty, sub_1AB408314)))
    {
      [v5 setAccount_];
    }

    else
    {
      v23 = sub_1AB3969E8(v16, &type metadata for AppleServicesPropertyScope.OverrideAccountWithIDProperty, sub_1AB408B9C);
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v27 = v2[4];
        v28 = v2[5];
        __swift_project_boxed_opaque_existential_1Tm(v2 + 1, v27);
        (*(v28 + 16))(&v41, v25, v26, v27, v28);
      }

      else
      {
        v34 = v2[4];
        v35 = v2[5];
        __swift_project_boxed_opaque_existential_1Tm(v2 + 1, v34);
        (*(v35 + 8))(&v41, v34, v35);
      }

      v36 = v41;
      [v5 setAccount_];
    }

    v37 = *(a1 + *(type metadata accessor for NetRequest(0) + 44));
    [v5 setExcludeIdentifierHeadersForAccount_];
    [v5 setAlwaysIncludeAuthKitHeaders_];
    [v5 setAlwaysIncludeMMeClientInfoAndDeviceHeaders_];
    sub_1AB3969E8(v37, &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID, sub_1AB40ADC8);
    if (v38)
    {
      v39 = sub_1AB460514();
    }

    else
    {
      v39 = 0;
    }

    [v5 setGsTokenIdentifier_];

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
    [v5 setIncludeClientVersions_];
    [v5 setClientInfo_];
    [v5 setRequestEncoding_];
    [v5 setDisableResponseDecoding_];
    v17 = *(a1 + *(type metadata accessor for NetRequest(0) + 44));
    sub_1AB3968AC(v17, &v41);
    v18 = qword_1AB4F06B0[v41];
    [v5 setAnisetteType_];
    [v5 setMescalType_];
    if (*(v2 + 65) & 1) != 0 || (sub_1AB0C27E8(v17, &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty, sub_1AB408314))
    {
      [v5 setAccount_];
    }

    else
    {
      v29 = v2[4];
      v30 = v2[5];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 1, v29);
      (*(v30 + 8))(&v41, v29, v30);
      v31 = v41;
      [v5 setAccount_];
    }

    sub_1AB3969E8(v17, &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID, sub_1AB40ADC8);
    if (v32)
    {
      v33 = sub_1AB460514();
    }

    else
    {
      v33 = 0;
    }

    [v5 setGsTokenIdentifier_];
  }

  return v5;
}

void sub_1AB0C16BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1AB0C1748()
{
  v1 = v0[3];
  (*(v0[12] + 16))(v0[13], v1, v0[11]);
  sub_1AB45F064();
  v2 = type metadata accessor for NetRequest(0);

  sub_1AB45EFF4();
  sub_1AB45F004();

  sub_1AB45F034();
  sub_1AB45F014();
  if (*(v1 + *(v2 + 40) + 8))
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    sub_1AB460594();
    sub_1AB460554();
    v7 = v6;
    (*(v4 + 8))(v3, v5);
    if (v7 >> 60 == 15)
    {
      v9 = v0[6];
      v8 = v0[7];
      v10 = v0[5];
      v11 = v0[2];
      sub_1AB45EFA4();
      sub_1AB01B220(MEMORY[0x1E69E7CC0]);
      sub_1AB2CEA10();
      sub_1AB45F574();
      sub_1AB45EF64();
      (*(v9 + 8))(v8, v10);
      swift_willThrow();
      v12 = sub_1AB45F0A4();
      (*(*(v12 - 8) + 8))(v11, v12);

      v13 = v0[1];
      goto LABEL_6;
    }

    sub_1AB45F084();
  }

  v13 = v0[1];
LABEL_6:

  return v13();
}

uint64_t sub_1AB0C19D0()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1AB09C67C;
  v5 = swift_continuation_init();
  sub_1AB094728(v5, v3, v4, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AB0C1A90(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AB0, &qword_1AB4DF380);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB09C65C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058080;
  v11 = &block_descriptor_15;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB225A44;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_18;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1AB0C1C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438030, &unk_1AB4EC290);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;

  sub_1AB461844();
  v13 = sub_1AB461864();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    return (*(v14 + 32))(a5, v12, v13);
  }

  sub_1AB014AC0(v12, &qword_1EB438030, &unk_1AB4EC290);
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB5023E0);
  v16[0] = a1;
  v16[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB502400);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB0C1E68()
{
  v0[16] = AppleServicesEncoder.amsRequestEncoder(toSatisfy:)(v0[11]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1AB0C2AC4;
  v2 = v0[15];
  v3 = v0[11];

  return URLRequestEncoder.encodeRequest(fromContentsOf:)(v2, v3);
}

unint64_t sub_1AB0C1F74()
{
  result = qword_1EB435080;
  if (!qword_1EB435080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435080);
  }

  return result;
}

void sub_1AB0C1FD4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA57C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA57C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436D14(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437760, &qword_1AB4D8BD8);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB0AC4FC(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB0AC4FC((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

unint64_t sub_1AB0C2188(unint64_t result, NSObject *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = result;
  if (result >> 62)
  {
    result = sub_1AB4618F4();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v17 = v9 & 0xC000000000000001;
    v12 = v9;
    do
    {
      if (v17)
      {
        MEMORY[0x1AC59C990](v11, v9);
      }

      else
      {
      }

      ++v11;
      dispatch_group_enter(a2);
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a2;
      v14 = swift_allocObject();
      *(v14 + 16) = a4;
      *(v14 + 24) = a2;
      v20[3] = sub_1AB015664();
      v20[4] = &protocol witness table for OS_dispatch_queue;
      v20[0] = a5;
      v18[0] = sub_1AB0BFCC0;
      v18[1] = v13;
      v18[2] = sub_1AB2AB3D0;
      v18[3] = v14;
      sub_1AB01494C(v20, v19);
      v19[40] = 0;
      v15 = a2;

      v16 = a5;

      sub_1AB0BF3DC(v18);

      sub_1AB014AC0(v18, &unk_1EB4376F0, &qword_1AB4D8B60);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v9 = v12;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t sub_1AB0C23B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1AB4602F4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1AB0C2460@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB0BA9B8(a1, *a2, sub_1AB0C24A8);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void sub_1AB0C250C(uint64_t a1)
{
  v3 = type metadata accessor for NetResponse(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4397B0, &unk_1AB4E4580);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB4397B0, &unk_1AB4E4580);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AADBC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for NetResponse);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB43A304(v5);
    sub_1AB059DC8(v5, type metadata accessor for NetResponse);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &qword_1EB4376C0, &unk_1AB4D8B30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0BF12C(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0BF12C((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v13, &unk_1EB4397B0, &unk_1AB4E4580);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t sub_1AB0C27E8(uint64_t a1, uint64_t a2, void (*a3)(const char *, uint64_t, uint64_t, uint64_t))
{
  v9 = a2;
  sub_1AB014B20();
  sub_1AB461564();
  if (!*(a1 + 16) || (v5 = sub_1AB02B1D8(v10), (v6 & 1) == 0))
  {
    sub_1AB02B2E4(v10);
    if (qword_1EB435380 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    if (v10[0] == 1)
    {
      a3("JetEngine/NetRequest.swift", 26, 2, 160);
    }

    v8 = 0;
    return v8 & 1;
  }

  sub_1AB0165C4(*(a1 + 56) + 32 * v5, v11);
  sub_1AB02B2E4(v10);
  sub_1AB0165C4(v11, v10);
  result = swift_dynamicCast();
  if (result)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v8 = v9;
    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t URLRequestEncoder.encodeRequest(fromContentsOf:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1AB45EFB4();
  v2[4] = swift_task_alloc();
  v3 = sub_1AB45EFC4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1AB4605C4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1AB45F764();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0C1748, 0, 0);
}

uint64_t sub_1AB0C2AC4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1AB39635C;
  }

  else
  {
    v2 = sub_1AB0C2BD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0C2BD8()
{
  v1 = v0[12];
  v0[19] = *(v1 + 80);
  v0[20] = *(v1 + 88);
  return MEMORY[0x1EEE6DFA0](sub_1AB0C19D0, 0, 0);
}

unint64_t sub_1AB0C2C0C()
{
  result = qword_1EB435088;
  if (!qword_1EB435088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435088);
  }

  return result;
}

uint64_t sub_1AB0C2C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AB0C2CE8()
{
  result = qword_1EB435098;
  if (!qword_1EB435098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435098);
  }

  return result;
}

unint64_t sub_1AB0C2D40()
{
  result = qword_1EB4350A0;
  if (!qword_1EB4350A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4350A0);
  }

  return result;
}

unint64_t sub_1AB0C2D94()
{
  result = qword_1EB4350D8;
  if (!qword_1EB4350D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A4D8, &qword_1AB4E6E90);
    sub_1AB0C2E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4350D8);
  }

  return result;
}

unint64_t sub_1AB0C2E18()
{
  result = qword_1EB4350E0[0];
  if (!qword_1EB4350E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4350E0);
  }

  return result;
}

unint64_t sub_1AB0C2E80()
{
  result = qword_1EB435020;
  if (!qword_1EB435020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435020);
  }

  return result;
}

unint64_t sub_1AB0C2ED8()
{
  result = qword_1EB435028;
  if (!qword_1EB435028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435028);
  }

  return result;
}

unint64_t sub_1AB0C2F40()
{
  result = qword_1EB435050;
  if (!qword_1EB435050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435050);
  }

  return result;
}

unint64_t sub_1AB0C2F98()
{
  result = qword_1EB435058;
  if (!qword_1EB435058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435058);
  }

  return result;
}

unint64_t sub_1AB0C3000()
{
  result = qword_1EB435068;
  if (!qword_1EB435068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435068);
  }

  return result;
}

unint64_t sub_1AB0C3058()
{
  result = qword_1EB435070;
  if (!qword_1EB435070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435070);
  }

  return result;
}

unint64_t sub_1AB0C30C0()
{
  result = qword_1EB435038;
  if (!qword_1EB435038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435038);
  }

  return result;
}

unint64_t sub_1AB0C3118()
{
  result = qword_1EB435040;
  if (!qword_1EB435040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435040);
  }

  return result;
}

uint64_t sub_1AB0C316C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C540, &qword_1AB4F4790);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB435370 = result;
  return result;
}

uint64_t sub_1AB0C31C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AB0B20F4;

  return AppleServicesEncoder.encodeRequest(fromContentsOf:)(a2);
}

uint64_t sub_1AB0C3260(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  (a4)(v9, a1, a2, a3);
  if (!v4)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v5 = (*(v7 + 16))(v5, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return v5;
}

void sub_1AB0C3300(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for PageIntentInstrumentation(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[3];
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v10);
  v12 = (*(v11 + 16))(a1, v10, v11);
  if (!v3)
  {
    v13 = v12;
    v44 = 0;
    v14 = sub_1AB460514();
    v15 = [v13 valueForProperty_];

    if (v15)
    {
      if ([v15 isUndefined])
      {
      }

      else
      {
        v16 = [v15 isNull];

        if ((v16 & 1) == 0)
        {
LABEL_8:
          v22 = type metadata accessor for JSStack.DecoratedIntent(0);
          sub_1AB053F94(v4 + *(v22 + 24), v9, type metadata accessor for PageIntentInstrumentation);
          sub_1AB0C3BB8(v9, &v36);
          v23 = v37;
          if (!v37)
          {
            goto LABEL_17;
          }

          v24 = v36;
          v25 = v38;
          v26 = sub_1AB460514();
          v27 = [v13 byte_1E794B361];

          if (v27)
          {
            if ([v27 isUndefined])
            {

LABEL_13:
              v41 = v24;
              v42 = v23;
              v43 = v25 & 1;
              v29 = v44;
              sub_1AB250DBC(a1, &v36);

              if (v29)
              {

                return;
              }

              v30 = v39;
              v31 = v40;
              __swift_project_boxed_opaque_existential_1Tm(&v36, v39);
              v32 = (*(v31 + 16))(a1, v30, v31);
              v44 = 0;
              v33 = v32;
              __swift_destroy_boxed_opaque_existential_1Tm(&v36);
              v34 = v33;
              v35 = sub_1AB460514();
              [v13 setValue:v34 forProperty:v35];

              goto LABEL_17;
            }

            v28 = [v27 isNull];

            if (v28)
            {
              goto LABEL_13;
            }

LABEL_17:
            a2[3] = sub_1AB016760(0, &qword_1ED4D1B98, 0x1E696EB58);
            a2[4] = &protocol witness table for JSValue;
            *a2 = v13;
            return;
          }

LABEL_21:
          __break(1u);
          return;
        }
      }

      v17 = v2[6];
      v36 = v2[5];
      v37 = v17;

      v18 = sub_1AB461F94();
      v19 = [objc_opt_self() valueWithObject:v18 inContext:a1];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = v19;
        v21 = sub_1AB460514();
        [v13 setValue:v20 forProperty:v21];

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

double CustomJSValueConvertible<>.jsRepresentation(in:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v37 = a3;
  v36 = a2;
  v34 = a1;
  v33[0] = a4;
  v4 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33[1] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AB45F154();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45F114();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45F124();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F194();
  swift_allocObject();
  sub_1AB45F184();
  (*(v14 + 104))(v16, *MEMORY[0x1E6967FB0], v13);
  sub_1AB45F144();
  (*(v10 + 104))(v12, *MEMORY[0x1E6967F98], v9);
  sub_1AB45F134();
  (*(v6 + 104))(v8, *MEMORY[0x1E6967FE8], v35);
  sub_1AB45F164();
  v17 = v38;
  v18 = sub_1AB45F174();
  if (!v17)
  {
    v20 = v18;
    v21 = v19;
    v22 = v34;
    sub_1AB460594();
    v23 = sub_1AB460564();
    if (v24)
    {
      v25 = sub_1AB08C510(v23, v24);

      v26 = JSValueMakeFromJSONString([v22 JSGlobalContextRef], v25);
      if (v26)
      {
        v27 = [objc_opt_self() valueWithJSValueRef:v26 inContext:v22];
        JSStringRelease(v25);
        v28 = v33[0];
        if (v27)
        {
          v28[3] = sub_1AB054C38();
          v28[4] = &protocol witness table for JSValue;
          sub_1AB017254(v20, v21);

          *v28 = v27;
          return result;
        }
      }

      else
      {
        JSStringRelease(v25);
      }
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB505D70);
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](96, 0xE100000000000000);
    v30 = v39;
    v31 = v40;
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(v39) = 1;
    v41 = 1;
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
    *(v32 + 24) = 1;
    *(v32 + 32) = 0;
    *(v32 + 40) = 1;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 0u;
    *(v32 + 96) = 0;
    swift_willThrow();
    sub_1AB017254(v20, v21);
  }

  return result;
}

uint64_t type metadata accessor for JSStack.DecoratedIntent(uint64_t a1)
{
  result = qword_1EB4344E0;
  if (!qword_1EB4344E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB0C3BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageRenderEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageIntentInstrumentation(0);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (result == 1)
  {
    v8 = 1;
LABEL_5:
    sub_1AB0746C0(a1, v6);
    v9 = &v6[*(v4 + 24)];
    v11 = *v9;
    v10 = *(v9 + 1);

    result = sub_1AB251208(v6);
    *a2 = v11;
    *(a2 + 8) = v10;
    *(a2 + 16) = v8;
    return result;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

id sub_1AB0C3CC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
    v13 = a3;
    result = sub_1AB4618F4();
    a3 = v13;
    if (result)
    {
LABEL_3:
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC59C990](0, a3);
      }

      else
      {
        if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a3 + 32);
      }

      v8 = v7;
      swift_beginAccess();
      if (*(a4 + 16))
      {
        sub_1AB0C3EF0();
        v9 = swift_allocError();
        v11 = v10;

        JSError.init(_:)(v8, v11);
        sub_1AB0C5DB0(v9);
      }

      swift_beginAccess();
      *(a4 + 16) = 0;

      result = [objc_opt_self() valueWithUndefinedInContext_];
      if (result)
      {
        v12 = result;

        return v12;
      }

      goto LABEL_18;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  swift_beginAccess();
  if (*(a4 + 16))
  {
    v14 = objc_opt_self();

    result = [v14 valueWithUndefinedInContext_];
    if (!result)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v15 = result;
    sub_1AB08BBE8(result);
  }

  swift_beginAccess();
  *(a4 + 16) = 0;

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AB0C3EF0()
{
  result = qword_1EB4344F0;
  if (!qword_1EB4344F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4344F0);
  }

  return result;
}

void JSError.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB460514();
  v5 = [a1 valueForProperty_];

  if (!v5)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1AB0890D8(v5, &v41);

  sub_1AB014A58(&v41, &v38, &qword_1EB43BDB0, &qword_1AB4E16C0);
  if (*(&v39 + 1) == 1)
  {
    sub_1AB014AC0(&v41, &qword_1EB43BDB0, &qword_1AB4E16C0);
    v33 = 0;
  }

  else
  {
    v36[0] = v38;
    v36[1] = v39;
    v37 = v40;
    sub_1AB0B9254(v36, v34);
    sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    ScalarDictionary.init(deserializing:using:)(v34, &v35);
    v33 = v35;
    sub_1AB066D84(v36);
    sub_1AB014AC0(&v41, &qword_1EB43BDB0, &qword_1AB4E16C0);
  }

  v6 = sub_1AB460514();
  v7 = [a1 valueForProperty_];

  if (!v7)
  {
    goto LABEL_19;
  }

  if ([v7 isString] && (v8 = objc_msgSend(v7, sel_toString)) != 0)
  {
    v9 = v8;
    v10 = sub_1AB460544();
    v12 = v11;

    v31 = sub_1AB0C481C(v10, v12);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v31 = 0;
  }

  v13 = [a1 toString];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v32 = sub_1AB460544();
  v16 = v15;

  v17 = sub_1AB460514();
  v18 = [a1 valueForProperty_];

  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = [v18 toInt32];

  v20 = sub_1AB460514();
  v21 = [a1 valueForProperty_];

  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = [v21 toInt32];

  v23 = sub_1AB460514();
  v24 = [a1 byte_1E794B361];

  if (!v24)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v25 = [v24 toString];

  if (v25)
  {
    v26 = sub_1AB460544();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  sub_1AB0C5C74();
  LOBYTE(v41) = 0;
  LOBYTE(v38) = 0;
  *a2 = v32;
  *(a2 + 8) = v16;
  *(a2 + 16) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = v22;
  *(a2 + 40) = 0;
  *(a2 + 48) = v26;
  *(a2 + 56) = v28;
  *(a2 + 64) = v33;
  *(a2 + 72) = v31;
  *(a2 + 80) = a1;
  *(a2 + 88) = v29;
  *(a2 + 96) = v30;
}

double JSError.init(badValue:expected:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](a2, a3);

  MEMORY[0x1AC59BA20](0x6720747562202C60, 0xEC0000006020746FLL);
  v8 = [a1 description];
  v9 = sub_1AB460544();
  v11 = v10;

  MEMORY[0x1AC59BA20](v9, v11);

  MEMORY[0x1AC59BA20](96, 0xE100000000000000);

  v13[0] = 1;
  *a4 = 0x6465746365707845;
  *(a4 + 8) = 0xEA00000000006020;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 25) = 1701869569;
  *(a4 + 28) = 1702126437;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 41) = *v13;
  *(a4 + 44) = *&v13[3];
  result = 0.0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  return result;
}

uint64_t sub_1AB0C47C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

char *sub_1AB0C481C(uint64_t a1, unint64_t a2)
{
  *&v75[0] = 10;
  *(&v75[0] + 1) = 0xE100000000000000;
  v73 = v75;

  v6 = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021538, v72, a1, a2, v5);
  v69 = v2;
  v7 = *(v6 + 16);
  if (v7)
  {
    *&v75[0] = MEMORY[0x1E69E7CC0];
    result = sub_1AB03BD38(0, v7, 0);
    v9 = 0;
    v10 = *&v75[0];
    v11 = (v6 + 56);
    do
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v13 = *(v11 - 3);
      v12 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = v10;

      v17 = MEMORY[0x1AC59B960](v13, v12, v14, v15);
      v19 = v18;

      v10 = v16;
      *&v75[0] = v16;
      v20 = *(v16 + 16);
      v21 = *(v10 + 24);
      if (v20 >= v21 >> 1)
      {
        result = sub_1AB03BD38((v21 > 1), v20 + 1, 1);
        v10 = *&v75[0];
      }

      ++v9;
      *(v10 + 16) = v20 + 1;
      v22 = v10 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v11 += 4;
    }

    while (v7 != v9);
    v23 = v10;

    result = v23;
    v24 = *(v23 + 16);
    if (!v24)
    {
      goto LABEL_38;
    }
  }

  else
  {

    result = MEMORY[0x1E69E7CC0];
    v24 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v24)
    {
LABEL_38:
      v66 = MEMORY[0x1E69E7CC0];
LABEL_40:

      return v66;
    }
  }

  v25 = 0;
  v26 = result + 40;
  v64 = v24 - 1;
  v66 = MEMORY[0x1E69E7CC0];
  v67 = v24;
  v27 = v69;
  v68 = result;
  v65 = result + 40;
LABEL_9:
  v28 = &v26[16 * v25];
  v29 = v25;
  while (v29 < *(result + 2))
  {
    v30 = *(v28 - 1);
    v31 = *v28;

    sub_1AB0C5024(&v79);
    if (v27)
    {

      goto LABEL_40;
    }

    if (*v80 != 1)
    {
      *osloga = *v80;
      v56 = v79;
      v57 = *&v80[16];
      v82[0] = v79;
      v82[1] = *v80;
      v75[0] = v81[0];
      *(v75 + 9) = *(v81 + 9);

      sub_1AB014AC0(v82, &qword_1EB439AC0, &qword_1AB4E75C0);
      v83 = *&v80[8];
      sub_1AB014AC0(&v83, &qword_1EB439AC0, &qword_1AB4E75C0);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1AB0C5C48(0, *(v66 + 2) + 1, 1, v66);
      }

      v59 = *(v66 + 2);
      v58 = *(v66 + 3);
      result = v68;
      v60 = *osloga;
      if (v59 >= v58 >> 1)
      {
        v63 = sub_1AB0C5C48((v58 > 1), v59 + 1, 1, v66);
        v60 = *osloga;
        v66 = v63;
        result = v68;
      }

      v25 = v29 + 1;
      v26 = v65;
      *(v66 + 2) = v59 + 1;
      v61 = &v66[64 * v59];
      *(v61 + 4) = v56;
      *(v61 + 40) = v60;
      *(v61 + 7) = v57;
      v62 = v75[0];
      *(v61 + 73) = *(v75 + 9);
      *(v61 + 4) = v62;
      v27 = 0;
      if (v64 != v29)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    oslog = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1AB4D4720;
    v84 = sub_1AB0168A8(0, 41, 0, MEMORY[0x1E69E7CC0]);
    v33._object = 0x80000001AB5027B0;
    v33._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    v78 = MEMORY[0x1E69E6530];
    v77[0] = v29;
    sub_1AB014A58(v77, v74, &unk_1EB437E60, &qword_1AB4D4730);
    memset(v75, 0, sizeof(v75));
    sub_1AB0169C4(v74, v75);
    v76 = 0;
    v34 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[40 * v36];
    v38 = v75[0];
    v39 = v75[1];
    v37[64] = v76;
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v84 = v34;
    sub_1AB014AC0(v77, &unk_1EB437E60, &qword_1AB4D4730);
    v40._countAndFlagsBits = 0x223D72745320;
    v40._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    v78 = MEMORY[0x1E69E6158];
    v77[0] = v30;
    v77[1] = v31;
    sub_1AB014A58(v77, v74, &unk_1EB437E60, &qword_1AB4D4730);
    memset(v75, 0, sizeof(v75));

    sub_1AB0169C4(v74, v75);
    v76 = 0;
    v41 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1AB0168A8(0, *(v41 + 2) + 1, 1, v41);
      v84 = v41;
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_1AB0168A8((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[40 * v43];
    v45 = v75[0];
    v46 = v75[1];
    v44[64] = v76;
    *(v44 + 2) = v45;
    *(v44 + 3) = v46;
    v84 = v41;
    sub_1AB014AC0(v77, &unk_1EB437E60, &qword_1AB4D4730);
    v47._countAndFlagsBits = 34;
    v47._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    *(v32 + 32) = v84;
    v48 = sub_1AB461094();
    if (os_log_type_enabled(oslog, v48))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v49 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v49[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v49 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v51 = swift_allocObject();
      *(v51 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v75[0] = v32;
      *(&v75[0] + 1) = sub_1AB0223E4;
      *&v75[1] = v51;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v52 = sub_1AB460484();
      v54 = v53;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1AB4D4720;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = sub_1AB016854();
      *(v55 + 32) = v52;
      *(v55 + 40) = v54;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, oslog, v48, v55);

      v27 = 0;
      v24 = v67;
    }

    else
    {

      v27 = 0;
    }

    ++v29;
    v28 += 16;
    result = v68;
    if (v24 == v29)
    {
      goto LABEL_40;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_1AB0C5024(uint64_t a3@<X8>)
{
  if (qword_1EB433A60 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB433A68;
  if (!qword_1EB433A68)
  {
    goto LABEL_8;
  }

  v7 = sub_1AB460514();
  v8 = sub_1AB460694();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  v6 = [v6 firstMatchInString:v7 options:0 range:{0, v8}];

  if (!v6)
  {
LABEL_8:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
LABEL_89:
    *a3 = v11;
    *(a3 + 8) = v17;
    *(a3 + 16) = v6;
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    *(a3 + 40) = v16;
    *(a3 + 48) = v14;
    *(a3 + 56) = v15;
    return;
  }

  v9 = sub_1AB460514();
  v4 = &selRef_moveItemAtURL_toURL_error_;
  [v6 rangeWithName_];

  sub_1AB460FD4();
  if (v10)
  {
    v70 = 0;
    v71 = 0;
  }

  else
  {
    v18 = sub_1AB4607E4();
    v19 = MEMORY[0x1AC59B960](v18);
    v70 = v20;
    v71 = v19;
  }

  v21 = sub_1AB460514();
  [v6 rangeWithName_];

  sub_1AB460FD4();
  if (v22)
  {
    v3 = 0;
    v69 = 0;
  }

  else
  {
    v23 = sub_1AB4607E4();
    v3 = MEMORY[0x1AC59B960](v23);
    v69 = v24;
  }

  v25 = sub_1AB460514();
  [v6 rangeWithName_];

  sub_1AB460FD4();
  if (v26)
  {
    v27 = v3;
    v28 = &selRef_moveItemAtURL_toURL_error_;
    v29 = v6;
    v6 = v27;
LABEL_16:
    v13 = 0;
    v74 = 1;
    goto LABEL_85;
  }

  v30 = sub_1AB4607E4();
  v31 = MEMORY[0x1AC59B960](v30);
  v33 = v32;

  v34 = HIBYTE(v33) & 0xF;
  v35 = v31 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v36 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
LABEL_91:
    v66 = v3;
    v28 = v4;
    v29 = v6;
    v6 = v66;

    goto LABEL_16;
  }

  v68 = v3;
  if ((v33 & 0x1000000000000000) != 0)
  {
    v28 = &selRef_moveItemAtURL_toURL_error_;
    v29 = v6;
    v73 = 0;

    v39 = sub_1AB44FACC(v31, v33, 10);
    v57 = v67;
    swift_bridgeObjectRelease_n();
LABEL_82:
    v6 = v68;
    v74 = v57;
    if (v57)
    {
      v13 = 0;
    }

    else
    {
      v13 = v39;
    }

LABEL_85:
    v58 = sub_1AB460514();
    [v29 v28 + 2844];

    sub_1AB460FD4();
    if (v59)
    {

      v14 = 0;
      v60 = 1;
    }

    else
    {
      v61 = sub_1AB4607E4();
      v62 = MEMORY[0x1AC59B960](v61);
      v64 = v63;

      v14 = sub_1AB0C583C(v62, v64);
      v60 = v65;
    }

    v17 = v70;
    v11 = v71;
    v12 = v69;
    LOBYTE(v72[0]) = v74 & 1;
    v15 = v60 & 1;
    v73 = v60 & 1;
    v16 = v74 & 1;
    goto LABEL_89;
  }

  if ((v33 & 0x2000000000000000) == 0)
  {
    if ((v31 & 0x1000000000000000) != 0)
    {
      v37 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v37 = sub_1AB461714();
    }

    v38 = *v37;
    if (v38 == 43)
    {
      if (v35 >= 1)
      {
        v34 = v35 - 1;
        if (v35 != 1)
        {
          if (v37)
          {
            v39 = 0;
            v46 = v37 + 1;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                goto LABEL_80;
              }

              v48 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_80;
              }

              v39 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_80;
              }

              ++v46;
              if (!--v34)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      goto LABEL_96;
    }

    if (v38 != 45)
    {
      if (v35)
      {
        if (v37)
        {
          v39 = 0;
          while (1)
          {
            v52 = *v37 - 48;
            if (v52 > 9)
            {
              goto LABEL_80;
            }

            v53 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              goto LABEL_80;
            }

            v39 = v53 + v52;
            if (__OFADD__(v53, v52))
            {
              goto LABEL_80;
            }

            ++v37;
            if (!--v35)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_80:
      v39 = 0;
      LOBYTE(v34) = 1;
LABEL_81:
      v73 = v34;
      v28 = &selRef_moveItemAtURL_toURL_error_;
      v29 = v6;
      v57 = v34;

      goto LABEL_82;
    }

    if (v35 >= 1)
    {
      v34 = v35 - 1;
      if (v35 != 1)
      {
        if (v37)
        {
          v39 = 0;
          v40 = v37 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              goto LABEL_80;
            }

            v42 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              goto LABEL_80;
            }

            v39 = v42 - v41;
            if (__OFSUB__(v42, v41))
            {
              goto LABEL_80;
            }

            ++v40;
            if (!--v34)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_71:
        v39 = 0;
LABEL_72:
        LOBYTE(v34) = 0;
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v72[0] = v31;
  v72[1] = v33 & 0xFFFFFFFFFFFFFFLL;
  if (v31 != 43)
  {
    if (v31 != 45)
    {
      if (v34)
      {
        v39 = 0;
        v54 = v72;
        while (1)
        {
          v55 = *v54 - 48;
          if (v55 > 9)
          {
            break;
          }

          v56 = 10 * v39;
          if ((v39 * 10) >> 64 != (10 * v39) >> 63)
          {
            break;
          }

          v39 = v56 + v55;
          if (__OFADD__(v56, v55))
          {
            break;
          }

          ++v54;
          if (!--v34)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    if (v34)
    {
      if (--v34)
      {
        v39 = 0;
        v43 = v72 + 1;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v39;
          if ((v39 * 10) >> 64 != (10 * v39) >> 63)
          {
            break;
          }

          v39 = v45 - v44;
          if (__OFSUB__(v45, v44))
          {
            break;
          }

          ++v43;
          if (!--v34)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_95;
  }

  if (v34)
  {
    if (--v34)
    {
      v39 = 0;
      v49 = v72 + 1;
      while (1)
      {
        v50 = *v49 - 48;
        if (v50 > 9)
        {
          break;
        }

        v51 = 10 * v39;
        if ((v39 * 10) >> 64 != (10 * v39) >> 63)
        {
          break;
        }

        v39 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        ++v49;
        if (!--v34)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_80;
  }

LABEL_97:
  __break(1u);
}

id sub_1AB0C56E8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1AB0C5760(0xD00000000000004ALL, 0x80000001AB5027E0, 0);
  qword_1EB433A68 = result;
  return result;
}

id sub_1AB0C5760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1AB460514();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1AB45F594();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1AB0C583C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1AB461714();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1AB44FACC(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

char *sub_1AB0C5B3C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 + 31;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 6);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[64 * v11])
    {
      memmove(v16, v17, v11 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1AB0C5C74()
{
  if (![v0 isObject] || (objc_msgSend(v0, sel_isNull) & 1) != 0)
  {
    return;
  }

  v1 = sub_1AB460514();
  v2 = [v0 valueForProperty_];

  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = sub_1AB460514();
  v4 = [v2 valueForProperty_];

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if ([v4 isString] && (v5 = objc_msgSend(v4, sel_toString)) != 0)
  {
    v6 = v5;
    sub_1AB460544();
  }

  else
  {
  }
}

void sub_1AB0C5DE4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = v23 + 32;
      v24 = a2;
      do
      {
        sub_1AB014A58(v12, v33, a2, a3);
        sub_1AB014A58(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_1AB0149B0(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1Tm(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_1AB014AC0(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1AB0171C8(v23, 0);
  }
}

void sub_1AB0C60B4(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439810, &unk_1AB4D8BF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB439810, &unk_1AB4D8BF0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB439810, &unk_1AB4D8BF0);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB439810, &unk_1AB4D8BF0);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB437780, &unk_1AB4DEF90);
        sub_1AB014A58(v37, v32, &unk_1EB437780, &unk_1AB4DEF90);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB437780, &unk_1AB4DEF90);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB437780, &unk_1AB4DEF90);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

double sub_1AB0C6494()
{
  *&result = 0x2000000ACLL;
  qword_1EB435550 = 0x2000000ACLL;
  dword_1EB435558 = 3;
  return result;
}

void sub_1AB0C64B4(void *a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0, &unk_1AB4DEF70);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v27 - v6);
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v9, v7, &unk_1EB4378F0, &unk_1AB4DEF70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v7, &unk_1EB4378F0, &unk_1AB4DEF70);
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *v7;
    v12 = v28;
    *v4 = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_1AB017CC4(v4, v1 + v9, &unk_1EB4378F0, &unk_1AB4DEF70);
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
    v14 = *(v11 + 16);
    if (v14)
    {
      v27[1] = v11;
      v15 = v11 + 32;
      do
      {
        sub_1AB014A58(v15, v37, &unk_1EB4397D0, &qword_1AB4D8D60);
        sub_1AB014A58(v37, v32, &unk_1EB4397D0, &qword_1AB4D8D60);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
          swift_allocError();
          v16 = v28;
          *v17 = v28;
          v18 = v16;
          swift_continuation_throwingResumeWithError();
          sub_1AB014AC0(v37, &unk_1EB4397D0, &qword_1AB4D8D60);
        }

        else
        {

          v19 = v33;
          v20 = v34;
          sub_1AB0149B0(&v35, v29);
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1Tm(v29, v30);
          v23 = swift_allocObject();
          v23[2] = v19;
          v23[3] = v20;
          v24 = v28;
          v23[4] = v28;
          v25 = *(v22 + 8);
          v26 = v24;

          v25(sub_1AB0C6054, v23, v21, v22);

          sub_1AB014AC0(v37, &unk_1EB4397D0, &qword_1AB4D8D60);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

uint64_t sub_1AB0C6888(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 648) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1AB0C69D0;
  }

  else
  {
    v5 = *(v2 + 432);
    v6 = *(v2 + 440);

    sub_1AB053FFC(v5, v6, type metadata accessor for JSResponse);
    v4 = sub_1AB0C6FA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB0C69D0()
{
  v1 = v0[69];
  v2 = v0[60];

  sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
  sub_1AB04A54C(v1, type metadata accessor for PageIntentInstrumentation);
  sub_1AB04A54C(v2, type metadata accessor for JSStack.DecoratedIntent);
  sub_1AB0C6B34((v0 + 20));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AB0C6B88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB0C6CBC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1AB0C6DD0;
  }

  else
  {
    v2 = sub_1AB070BFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0C6DD0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB0C6E34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB0C6FA8()
{
  v25 = v0;
  v1 = v0[79];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[46];
  sub_1AB0C741C(*(v2 + *(v0[53] + 32)));
  sub_1AB0C77C8(v2, v4, v3);
  v5 = v0[69];
  if (v1)
  {
    v6 = v0[60];
    v7 = v0[55];
    sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
    sub_1AB04A54C(v5, type metadata accessor for PageIntentInstrumentation);
    sub_1AB04A54C(v6, type metadata accessor for JSStack.DecoratedIntent);
    sub_1AB04A54C(v7, type metadata accessor for JSResponse);
    sub_1AB0C6B34((v0 + 20));

    v8 = v0[1];
  }

  else
  {
    sub_1AB053F94(v0[69], v0[67], type metadata accessor for PageIntentInstrumentation);
    if (swift_getEnumCaseMultiPayload())
    {
      v9 = v0[69];
      v10 = v0[67];
      v11 = v0[60];
      v12 = v0[55];
      sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
      sub_1AB04A54C(v9, type metadata accessor for PageIntentInstrumentation);
      sub_1AB04A54C(v11, type metadata accessor for JSStack.DecoratedIntent);
      sub_1AB04A54C(v12, type metadata accessor for JSResponse);
      v13 = v10;
      v14 = type metadata accessor for PageIntentInstrumentation;
    }

    else
    {
      sub_1AB053FFC(v0[67], v0[57], type metadata accessor for PageRenderEvent);
      if (qword_1EB433928 != -1)
      {
        swift_once();
      }

      v15 = v0[69];
      v16 = v0[60];
      v17 = v0[57];
      v18 = v0[55];
      v19 = (v17 + *(v0[56] + 24));
      v20 = *v19;
      v21 = v19[1];
      static MonotonicTime.now.getter(&v23);
      v24 = v23;
      PageRenderField<>.endTime(for:at:)(v20, v21, &v24.tv_sec);
      sub_1AB014AC0((v0 + 34), &qword_1EB4389E0, &qword_1AB4DEB18);
      sub_1AB04A54C(v15, type metadata accessor for PageIntentInstrumentation);
      sub_1AB04A54C(v16, type metadata accessor for JSStack.DecoratedIntent);
      sub_1AB04A54C(v17, type metadata accessor for PageRenderEvent);
      v14 = type metadata accessor for JSResponse;
      v13 = v18;
    }

    sub_1AB04A54C(v13, v14);
    (*(v0[51] + 32))(v0[44], v0[52], v0[50]);
    sub_1AB0C6B34((v0 + 20));

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_1AB0C741C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageRenderEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PageIntentInstrumentation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB0C7764(v2, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    sub_1AB0746C0(v12, v6);
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = &v6[*(v4 + 24)];
      v16 = *v15;
      v17 = v15[1];
      v18 = (a1 + 32);
      do
      {
        memcpy(v32, v18, 0x158uLL);
        sub_1AB0B724C(v32, v31);
        if (qword_1EB433098 != -1)
        {
          swift_once();
        }

        v27 = xmmword_1EB46BEA0;
        v28 = byte_1EB46BEB0;
        v29 = qword_1EB46BEB8;
        v30 = byte_1EB46BEC0;
        memcpy(v31, v32, sizeof(v31));
        static MonotonicTime.now.getter(&v26);
        v25 = v26;
        PageRenderField<>.callAsFunction(_:for:at:)(v31, v16, v17, &v25);
        sub_1AB0B7368(v32);
        v18 += 344;
        --v14;
      }

      while (v14);
    }

    v9 = v6;
  }

  else
  {
    sub_1AB0746C0(v12, v9);
    v19 = *(a1 + 16);
    if (v19)
    {
      memcpy(v32, (a1 + 32), 0x158uLL);
      sub_1AB37FA04(v9);
      if (v19 != 1)
      {
        v20 = &v9[*(v4 + 24)];
        v21 = *v20;
        v22 = v20[1];

        v23 = v19 - 2;
        for (i = 376; ; i += 344)
        {
          memcpy(v32, (a1 + i), 0x158uLL);
          sub_1AB0B724C(v32, v31);
          if (qword_1EB433098 != -1)
          {
            swift_once();
          }

          v27 = xmmword_1EB46BEA0;
          v28 = byte_1EB46BEB0;
          v29 = qword_1EB46BEB8;
          v30 = byte_1EB46BEC0;
          memcpy(v31, v32, sizeof(v31));
          static MonotonicTime.now.getter(&v26);
          v25 = v26;
          PageRenderField<>.callAsFunction(_:for:at:)(v31, v21, v22, &v25);
          sub_1AB0B7368(v32);
          if (!v23)
          {
            break;
          }

          --v23;
        }
      }
    }
  }

  return sub_1AB251208(v9);
}

uint64_t sub_1AB0C7764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageIntentInstrumentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB0C77C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a5@<X8>)
{
  v45 = a1;
  v44 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770, &qword_1AB4DEFB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_1AB45F244();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JSIntentResult(0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v48[0] = a2;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB0C7EF4(a2[2], v48);
  swift_task_localValuePop();
  v17 = v48[0];
  if (!v48[0])
  {
    v17 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_conformsToProtocol2();
  if (v19 && AssociatedTypeWitness)
  {
    v20 = v19;
    v21 = type metadata accessor for JSResponse(0);
    sub_1AB0B9254(v45 + *(v21 + 24), v47);
    v51 = v17;
    v22 = *(v20 + 8);
    v49 = AssociatedTypeWitness;
    v50 = v20;
    __swift_allocate_boxed_opaque_existential_0(v48);
    v23 = v46;
    v22(v47, &v51, AssociatedTypeWitness, v20);
    if (!v23)
    {
      sub_1AB01494C(v48, v47);
      v24 = &unk_1EB438A48;
      v25 = &unk_1AB4DF000;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      swift_dynamicCast();
      return __swift_destroy_boxed_opaque_existential_1Tm(v48);
    }

    return __swift_deallocate_boxed_opaque_existential_2(v48);
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && AssociatedTypeWitness)
  {
    v27 = v26;
    type metadata accessor for JSResponse(0);
    v47[0] = v17;
    v49 = AssociatedTypeWitness;
    v50 = v27;
    __swift_allocate_boxed_opaque_existential_0(v48);
    v28 = v46;
    JSONObject.decode<A>(_:using:)(AssociatedTypeWitness, v47, AssociatedTypeWitness, v27);

    if (!v28)
    {
      sub_1AB01494C(v48, v47);
      v24 = &unk_1EB438A40;
      v25 = &unk_1AB4DEFF8;
      goto LABEL_17;
    }

    return __swift_deallocate_boxed_opaque_existential_2(v48);
  }

  if (swift_dynamicCastMetatype())
  {
    v30 = type metadata accessor for JSResponse(0);
    v31 = *(v30 + 20);
    v32 = *(v43 + 16);
    v33 = v9;
    v41 = v9;
    v34 = v45;
    v32(v11, v45 + v31, v33);
    sub_1AB014A58(v34 + *(v30 + 24), v8, &unk_1EB437770, &qword_1AB4DEFB0);
    v32(v16, v11, v41);
    sub_1AB014A58(v8, &v16[v12[5]], &unk_1EB437770, &qword_1AB4DEFB0);
    v35 = MEMORY[0x1E69E7CC0];
    v48[0] = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    v36 = sub_1AB07CA28(v8, v48);

    *&v16[v12[6]] = v36;
    JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB5043D0, v48);
    v37 = sub_1AB01B220(v35);
    v38 = sub_1AB07C9F8(v48, v37);
    sub_1AB014AC0(v8, &unk_1EB437770, &qword_1AB4DEFB0);
    (*(v43 + 8))(v11, v41);
    *&v16[v12[7]] = v38;
    sub_1AB053FFC(v16, v42, type metadata accessor for JSIntentResult);
    return swift_dynamicCast();
  }

  else
  {
    sub_1AB163664();
    swift_allocError();
    v39 = MEMORY[0x1E69E7CC0];
    *v40 = AssociatedTypeWitness;
    v40[1] = v39;
    v40[2] = 0;
    v40[3] = 0;
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for JSIntentResult(uint64_t a1)
{
  result = qword_1EB434BB0;
  if (!qword_1EB434BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB0C7D84(uint64_t a1)
{
  sub_1AB45F244();
  if (v1 <= 0x3F)
  {
    sub_1AB0C7EA4(319, qword_1ED4D17D0, &type metadata for JSONObject, type metadata accessor for CoarselyTimed);
    if (v2 <= 0x3F)
    {
      sub_1AB0C7EA4(319, &qword_1EB435638, &type metadata for JSIncident, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1AB0C7EA4(319, &qword_1EB435630, &type metadata for JSNetworkPerformanceMetrics, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB0C7EA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AB0C7EF4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for JSONContext), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    if (swift_dynamicCast())
    {
      *a2 = v12;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436858, &qword_1AB4D4590);
    if (swift_dynamicCast())
    {
      sub_1AB131754(&type metadata for JSONContext, sub_1AB139890);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436860, &qword_1AB4D4598);
    if (swift_dynamicCast())
    {

      sub_1AB41CC48("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      sub_1AB133198(&type metadata for JSONContext, sub_1AB14C718);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0, &qword_1AB4D42F8);
    if (swift_dynamicCast())
    {
      sub_1AB41CC68("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12, v13);
      swift_unknownObjectRelease();
      *a2 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436850, &qword_1AB4D4588);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590, &qword_1AB4D42A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436850, &qword_1AB4D4588);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        return sub_1AB01D05C(a1, v15, *(&v15 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0x746E6F434E4F534ALL, 0xEB00000000747865);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB0C83AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double JSONObject.array.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1AB01EC0C(v1, v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    (*(v4 + 152))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1AB014AC0(v6, &qword_1EB436BA0, &qword_1AB4D4F40);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t JSONContext.Property.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t JSONObject.int.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 40))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  return v1;
}

uint64_t ExpressibleByJSON.init(tryDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  sub_1AB014A58(v13, v22, &qword_1EB436BA0, &qword_1AB4D4F40);
  v14 = v23;
  if (v23)
  {
    v20 = a4;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v16 = (*(v15 + 128))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if ((v16 & 1) == 0)
    {
      sub_1AB0B9254(a1, v22);
      v21[0] = v12;
      v18 = *(a3 + 8);

      v18(v22, v21, a2, a3);
      sub_1AB066D84(a1);

      a4 = v20;
      (*(v8 + 32))(v20, v10, a2);
      v17 = 0;
      return (*(v8 + 56))(a4, v17, 1, a2);
    }

    a4 = v20;
  }

  else
  {

    sub_1AB014AC0(v22, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  sub_1AB066D84(a1);
  v17 = 1;
  return (*(v8 + 56))(a4, v17, 1, a2);
}

uint64_t JSONObject.decode<A>(_:withUserInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AB0B9254(v4, v8);
  v9 = a2;
  v10 = MEMORY[0x1E69E7CC0];
  sub_1AB0BB6F8();
  v7 = swift_allocObject();
  sub_1AB0BB74C(v8, v7 + 16);

  sub_1AB460E14();
  return sub_1AB0BCB6C(v8);
}

uint64_t sub_1AB0C8934()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0C899C()
{
  v1 = v0;
  sub_1AB01EC0C(v0, v11);
  v2 = v12;
  if (!v12)
  {
    sub_1AB014AC0(v11, &qword_1EB436BA0, &qword_1AB4D4F40);
LABEL_5:
    v4 = *(v1 + 48);
    v7 = sub_1AB4616B4();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938, &qword_1AB4D46B0);
    *v9 = MEMORY[0x1E69E6158];

    sub_1AB461694();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v7);
    swift_willThrow();
    return v4;
  }

  v3 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v4 = (*(v3 + 24))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (!v6)
  {
    goto LABEL_5;
  }

  return v4;
}

uint64_t sub_1AB0C8B18(uint64_t result, uint64_t a2)
{
  if (a2 < 7)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 7);
    *(result + 8) = xmmword_1AB4EED00;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine9JSONErrorO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AB0C8B68()
{
  sub_1AB0165C4(v0, v4);
  sub_1AB016760(0, &qword_1ED4D1940, 0x1E696AD98);
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v1 = [v3 BOOLValue];

  return v1;
}

uint64_t JSONObject.BOOL.getter()
{
  sub_1AB01EC0C(v0, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    v3 = (*(v2 + 88))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1AB014AC0(v5, &qword_1EB436BA0, &qword_1AB4D4F40);
    return 2;
  }

  return v3;
}

uint64_t JSONObject.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1AB01EC0C(v1, v9);
  v3 = v10;
  if (v10)
  {
    v4 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    (*(v4 + 24))(v3, v4);
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    if (v6)
    {
      sub_1AB45F714();
    }
  }

  else
  {
    sub_1AB014AC0(v9, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v8 = sub_1AB45F764();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}