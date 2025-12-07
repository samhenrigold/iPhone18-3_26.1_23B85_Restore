uint64_t sub_2274A6890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = *MEMORY[0x277D85DE8];
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2276639B0();
  v10 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v35 = ((1 << v11) + 63) >> 6;
  v13 = 8 * v35;

  if (v12 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v34[1] = v34;
    v34[2] = v3;
    MEMORY[0x28223BE20](v14);
    v37 = v34 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v44 = 0;
    v3 = 0;
    v15 = *(a1 + 56);
    v36 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v39 = (v7 + 8);
    v40 = v10 + 2;
    v41 = v19;
    v42 = v10;
    v38 = (v10 + 1);
    v10 = &qword_28139BDD8;
    v43 = a1;
    if (v18)
    {
LABEL_8:
      while (2)
      {
        v21 = __clz(__rbit64(v18));
        v46 = (v18 - 1) & v18;
LABEL_14:
        v24 = v21 | (v3 << 6);
        v25 = *(a1 + 48);
        v26 = v42[9];
        v45 = v24;
        v13 = v47;
        (v42[2])(v47, v25 + v26 * v24, v48);
        sub_2276639A0();
        v27 = 0;
        v28 = *(a2 + 16);
        do
        {
          if (v28 == v27)
          {
            (*v39)(v9, v6);
            (*v38)(v47, v48);
            *&v37[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
            a1 = v43;
            v20 = __OFADD__(v44++, 1);
            v19 = v41;
            v18 = v46;
            if (v20)
            {
              goto LABEL_22;
            }

            if (!v46)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
          }

          v29 = v27 + 1;
          sub_2274A72CC(&qword_28139BDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
          v13 = v6;
          v30 = sub_22766BFB0();
          v27 = v29;
        }

        while ((v30 & 1) == 0);
        (*v39)(v9, v6);
        (*v38)(v47, v48);
        a1 = v43;
        v19 = v41;
        v18 = v46;
        if (v46)
        {
          continue;
        }

        break;
      }
    }

LABEL_9:
    v22 = v3;
    while (1)
    {
      v3 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v3 >= v19)
      {
        v31 = sub_22726B9F0(v37, v35, v44, a1);

        return v31;
      }

      v23 = *(v36 + 8 * v3);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v31 = sub_2274A2CA4(v33, v35, a1, a2);

  MEMORY[0x22AA9A450](v33, -1, -1);

  return v31;
}

unint64_t sub_2274A6D98()
{
  result = qword_27D7BDF50;
  if (!qword_27D7BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDF50);
  }

  return result;
}

uint64_t sub_2274A6E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227663480() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_227496348(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t objectdestroy_19Tm_2()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2274A70C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2273007B8(a1, v2 + v6, v7, a2);
}

uint64_t sub_2274A72CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2274A739C(uint64_t *a1)
{
  v3 = *(sub_227663480() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_227493A74(a1, v4, v5);
}

uint64_t objectdestroy_54Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_304Tm()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2274A773C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void))
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t type metadata accessor for AssetBundleHandler.DownloadedAssetBundle(uint64_t a1)
{
  result = qword_27D7BDFA0;
  if (!qword_27D7BDFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2274A78E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274A794C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2274A79B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AssetBundleHandler.DownloadedAssetBundle(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227663480() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_226E92F34;

  return sub_227491DA0(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_2274A7B84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2274A7C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2274A7D10(uint64_t a1)
{
  result = sub_2276624A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_2274A7E60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMediaStreamKeyProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2274A7EDC@<X0>(void (*a1)(void, void, void)@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a2;
  v108 = a3;
  v112 = a4;
  v113 = a1;
  v107 = sub_2276639B0();
  v101 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v99 = v4;
  v106 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v102 = *(v5 - 8);
  v103 = v5;
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v5);
  v100 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = (&v87 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v10 = *(v9 - 8);
  v104 = v9;
  v105 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v87 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - v16;
  v18 = sub_227664AE0();
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B390();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  v25 = v24;
  v26 = v113;
  (*(v22 + 8))(v25, v21);
  sub_227663970();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_226F32360(v20);
  if (EnumCaseMultiPayload)
  {
    v28 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D4FCF0], v28);
    *(swift_allocObject() + 16) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  }

  else
  {
    v94 = v6;
    v95 = v11;
    v31 = v110;
    v32 = v111;
    v96 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v97 = v17;
    v33 = v108;
    v98 = v14;
    v34 = [objc_opt_self() ams_sharedAccountStore];
    v35 = [v34 ams_activeiTunesAccount];

    if (v35)
    {
      v36 = [v35 ams_DSID];

      if (v36)
      {
        v37 = [v36 description];
        v38 = sub_22766C000();
        v40 = v39;

        v93 = v36;
        v41 = *(v32 + OBJC_IVAR____TtC15SeymourServices27AssetMediaStreamKeyProvider_persistenceStore + 24);
        v42 = *(v32 + OBJC_IVAR____TtC15SeymourServices27AssetMediaStreamKeyProvider_persistenceStore + 32);
        __swift_project_boxed_opaque_existential_0((v32 + OBJC_IVAR____TtC15SeymourServices27AssetMediaStreamKeyProvider_persistenceStore), v41);
        v43 = v26;
        v44 = swift_allocObject();
        v44[2] = v38;
        v88 = v40;
        v44[3] = v40;
        v44[4] = v31;
        v45 = v33;
        v44[5] = v33;

        sub_226ECF5D8(sub_2274AE65C, v44, v41, MEMORY[0x277D837D0], v42, v109);

        v46 = v101;
        v47 = *(v101 + 16);
        v91 = v101 + 16;
        v92 = v47;
        v48 = v106;
        v49 = v107;
        v47(v106, v43, v107);
        v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
        v90 = *(v46 + 80);
        v99 += v50;
        v51 = v50;
        v89 = v50;
        v52 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
        v54 = swift_allocObject();
        v101 = *(v46 + 32);
        (v101)(v54 + v51, v48, v49);
        v55 = v111;
        *(v54 + v52) = v111;
        v56 = (v54 + v53);
        v57 = v88;
        *v56 = v38;
        v56[1] = v57;
        v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
        v59 = v109;
        *v58 = v110;
        v58[1] = v45;
        v61 = v102;
        v60 = v103;
        v62 = v100;
        (*(v102 + 16))(v100, v59, v103);
        v63 = (*(v61 + 80) + 16) & ~*(v61 + 80);
        v64 = (v94 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
        v65 = swift_allocObject();
        (*(v61 + 32))(v65 + v63, v62, v60);
        v66 = (v65 + v64);
        *v66 = sub_2274AE67C;
        v66[1] = v54;

        v67 = v55;
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
        v68 = v98;
        sub_227669270();
        (*(v61 + 8))(v109, v60);
        v69 = v106;
        v70 = v107;
        v92(v106, v113, v107);
        v71 = swift_allocObject();
        (v101)(v71 + v89, v69, v70);
        v72 = v104;
        v73 = v105;
        v113 = *(v105 + 16);
        v74 = v96;
        v113(v96, v68, v104);
        v75 = (*(v73 + 80) + 16) & ~*(v73 + 80);
        v76 = (v95 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
        v77 = swift_allocObject();
        v109 = *(v73 + 32);
        (v109)(v77 + v75, v74, v72);
        v78 = (v77 + v76);
        *v78 = sub_2274AE770;
        v78[1] = v71;
        v79 = v97;
        sub_227669270();
        v110 = *(v73 + 8);
        v80 = v98;
        v110(v98, v72);
        v113(v80, v79, v72);
        v81 = swift_allocObject();
        (v109)(v81 + v75, v80, v72);
        v82 = (v81 + v76);
        *v82 = sub_2274A8DA0;
        v82[1] = 0;
        sub_227669270();

        return (v110)(v79, v72);
      }
    }

    v84 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v85 = swift_allocError();
    (*(*(v84 - 8) + 104))(v86, *MEMORY[0x277D4FD50], v84);
    *(swift_allocObject() + 16) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  }

  return sub_227669280();
}

uint64_t sub_2274A8934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  if (*(v14 + 16))
  {
    *(swift_allocObject() + 16) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);

    return sub_227669280();
  }

  else
  {
    sub_22766A6C0();
    (*(v7 + 16))(v9, a2, v6);
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a3;
      v19 = v18;
      v30 = swift_slowAlloc();
      v32 = v30;
      *v19 = 141558274;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2080;
      sub_226EB0FB0(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v20 = sub_22766D140();
      v29 = v17;
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_226E97AE8(v20, v22, &v32);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_226E8E000, v16, v29, "[Keys] Key data not found in master playlist for request: %{mask.hash}s", v19, 0x16u);
      v24 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    (*(v11 + 8))(v13, v10);
    v25 = sub_227663190();
    sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D4FD98], v25);
    *(swift_allocObject() + 16) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    return sub_227669280();
  }
}

uint64_t sub_2274A8DA0(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = *a1;
  if (*(a1 + 8))
  {
    sub_22766A6C0();
    v10 = v9;
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    sub_226F38F34(v9, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x22AA995D0](v26[2], v26[3]);
      v17 = sub_226E97AE8(v15, v16, &v27);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v11, v12, "[Keys] fetchPersistentKeyRequests finished with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_22766A6C0();

    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    sub_226F38F34(v9, 0);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      sub_2276639B0();
      sub_226EB0FB0(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
      v23 = sub_22766C610();
      v25 = sub_226E97AE8(v23, v24, &v27);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_226E8E000, v19, v20, "[Keys] fetchPersistentKeyRequests finished with keys: %{mask.hash}s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_2274A90E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v70 = a6;
  v71 = a7;
  v68 = a4;
  v69 = a5;
  v78 = a3;
  v59 = a2;
  v76 = a8;
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD438, &qword_227684B58);
  v65 = *(v13 - 8);
  v66 = v13;
  v64 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v63 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD430, &qword_227684B50);
  v74 = *(v17 - 8);
  v75 = v17;
  v73 = *(v74 + 64);
  MEMORY[0x28223BE20](v17);
  v72 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v67 = &v58 - v21;
  v22 = *a1;
  v61 = a1[1];
  v62 = v22;
  v23 = *(v11 + 16);
  v23(&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10, v20);
  v24 = *(v11 + 80);
  v25 = swift_allocObject();
  v60 = *(v11 + 32);
  v26 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60(v25 + ((v24 + 16) & ~v24), v26, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFB8, &qword_227687528);
  v27 = v77;
  sub_227669270();
  (v23)(v26, v59, v10);
  v28 = (v24 + 24) & ~v24;
  v29 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v78;
  v60(v31 + v28, v26, v10);
  v32 = (v31 + v29);
  v33 = v69;
  *v32 = v68;
  v32[1] = v33;
  v34 = (v31 + v30);
  v35 = v71;
  *v34 = v70;
  v34[1] = v35;
  v36 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
  v37 = v61;
  *v36 = v62;
  v36[1] = v37;
  v39 = v65;
  v38 = v66;
  v40 = v63;
  (*(v65 + 16))(v63, v27, v66);
  v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v42 = (v64 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v39 + 32))(v43 + v41, v40, v38);
  v44 = (v43 + v42);
  *v44 = sub_2274AE964;
  v44[1] = v31;
  v45 = v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFC0, &unk_227687530);
  v46 = v67;
  sub_227669270();
  (*(v39 + 8))(v77, v38);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2274AA984;
  *(v47 + 24) = 0;
  v48 = v74;
  v49 = v75;
  v50 = v72;
  v51 = v46;
  (*(v74 + 16))(v72, v46, v75);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v73 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v52 + 32))(v55 + v53, v50, v49);
  v56 = (v55 + v54);
  *v56 = sub_2274AEB10;
  v56[1] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v52 + 8))(v51, v49);
}

double sub_2274A967C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v28 = sub_22766B3B0();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B3F0();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276639B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_22766B3C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  (*(v12 + 104))(v14, *MEMORY[0x277D851C8], v11);

  v16 = sub_22766C980();
  (*(v12 + 8))(v14, v11);
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v19 = (v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_226EBF9F4;
  v19[1] = v15;
  aBlock[4] = sub_2274AEFB4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_67;
  v20 = _Block_copy(aBlock);
  v21 = v26;
  sub_22766B3D0();
  v32 = MEMORY[0x277D84F90];
  sub_226EB0FB0(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  v23 = v27;
  v22 = v28;
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v21, v23, v20);
  _Block_release(v20);

  (*(v31 + 8))(v23, v22);
  (*(v29 + 8))(v21, v30);

  return result;
}

void sub_2274A9B44(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v63 = a3;
  v64 = a2;
  v4 = sub_2276624A0();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276639B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v14 = *(v8 + 16);
  v66 = a1;
  v14(v10, a1, v7);
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v61 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v62 = v4;
    v60 = v19;
    v68[0] = v19;
    *v18 = 141558274;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    sub_2276639A0();
    v20 = sub_227662390();
    v22 = v21;
    (*(v67 + 8))(v6, v62);
    v23 = v7;
    v24 = v6;
    (*(v8 + 8))(v10, v23);
    v25 = sub_226E97AE8(v20, v22, v68);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v15, v16, "[Key Metadata] Attempting metadata fetch from playlist: %{mask.hash}s", v18, 0x16u);
    v26 = v60;
    __swift_destroy_boxed_opaque_existential_0(v60);
    v4 = v62;
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    v65[1](v13, v61);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v65[1](v13, v11);
    v24 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  v28 = objc_opt_self();
  v29 = [objc_opt_self() currentProcess];
  v30 = [v28 userAgentForProcessInfo_];

  v31 = sub_22766C000();
  v33 = v32;

  *(inited + 48) = v31;
  *(inited + 56) = v33;
  v34 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE670, &unk_227674260);
  sub_2276639A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_2276728D0;
  *(v35 + 32) = sub_22766C000();
  *(v35 + 40) = v36;
  *(v35 + 72) = MEMORY[0x277D839B0];
  *(v35 + 48) = 1;
  *(v35 + 80) = sub_22766C000();
  *(v35 + 88) = v37;
  *(v35 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC58, qword_227687570);
  *(v35 + 96) = v34;
  sub_227149264(v35);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  v38 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v39 = sub_2276623E0();
  v40 = sub_22766BE90();

  v41 = [v38 initWithURL:v39 options:v40];

  (*(v67 + 8))(v24, v4);
  v42 = [v41 metadata];
  sub_226E99364(0, &qword_27D7BDFE8, 0x277CE6520);
  v43 = sub_22766C2C0();

  v69 = MEMORY[0x277D84F90];
  if (v43 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v65 = v41;
    v41 = 0;
    v45 = v43 & 0xC000000000000001;
    v46 = v43 & 0xFFFFFFFFFFFFFF8;
    v67 = 0x8000000227692980;
    v66 = v43 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v45)
      {
        v47 = MEMORY[0x22AA991A0](v41, v43);
      }

      else
      {
        if (v41 >= *(v46 + 16))
        {
          goto LABEL_25;
        }

        v47 = *(v43 + 8 * v41 + 32);
      }

      v48 = v47;
      v49 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v50 = [v47 key];
      if (v50)
      {
        v68[2] = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFD8, &qword_227687558);
        if (swift_dynamicCast())
        {
          v51 = i;
          v52 = v43;
          v53 = v45;
          if (v68[0] == 0xD000000000000012 && v67 == v68[1])
          {

            goto LABEL_19;
          }

          v54 = sub_22766D190();

          if (v54)
          {
LABEL_19:
            sub_22766CF00();
            sub_22766CF40();
            sub_22766CF50();
            sub_22766CF10();
          }

          else
          {
          }

          v45 = v53;
          v43 = v52;
          i = v51;
          v46 = v66;
          goto LABEL_8;
        }
      }

LABEL_8:
      ++v41;
      if (v49 == i)
      {
        v55 = v69;
        v41 = v65;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_28:

  if ((v55 & 0x8000000000000000) != 0 || (v55 & 0x4000000000000000) != 0)
  {
    if (sub_22766CD20())
    {
      goto LABEL_31;
    }
  }

  else if (*(v55 + 16))
  {
LABEL_31:
    v64(v55, 0);

    return;
  }

  v56 = sub_227663190();
  sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v57 = swift_allocError();
  (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D4FD98], v56);
  v64(v57, 1);
}

void sub_2274AA4CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a7;
  v12[8] = a8;
  v12[9] = a9;
  sub_2275F2D98(sub_2274AECB0, v12, v9);
  v12[10] = v10;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v11 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFC8, qword_227687540);
  sub_226E9CFD0(&qword_27D7BDFD0, &qword_27D7BDFC8, qword_227687540, MEMORY[0x277D83988]);
  sub_227669210();
}

uint64_t sub_2274AA608@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v55 = a5;
  v50 = a3;
  v51 = a7;
  v53 = a4;
  v54 = a8;
  v52 = a9;
  v49 = sub_2276639B0();
  v46 = *(v49 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  sub_22766A6C0();

  v17 = sub_22766B380();
  v18 = sub_22766C8B0();

  v19 = os_log_type_enabled(v17, v18);
  v45 = a6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = v13;
    v21 = v12;
    v22 = v20;
    v23 = a2;
    v24 = swift_slowAlloc();
    v56 = v24;
    *v22 = 136446210;
    *(v22 + 4) = sub_226E97AE8(v55, a6, &v56);
    _os_log_impl(&dword_226E8E000, v17, v18, "[Key Metadata] createKeyRequests for workout: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v25 = v24;
    a2 = v23;
    MEMORY[0x22AA9A450](v25, -1, -1);
    v26 = v22;
    v12 = v21;
    MEMORY[0x22AA9A450](v26, -1, -1);

    (*(v14 + 8))(v16, v44);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v27 = v46;
  v29 = v48;
  v28 = v49;
  (*(v46 + 16))(v48, a2, v49);
  v30 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v31 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v47;
  *(v33 + 16) = v47;
  (*(v27 + 32))(v33 + v30, v29, v28);
  v35 = (v33 + v31);
  v37 = v52;
  v36 = v53;
  *v35 = v50;
  v35[1] = v36;
  v38 = (v33 + v32);
  v39 = v45;
  *v38 = v55;
  v38[1] = v39;
  v40 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v40 = v51;
  v40[1] = v37;

  v41 = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  return sub_227669270();
}

uint64_t sub_2274AA984@<X0>(uint64_t *a2@<X8>)
{

  result = sub_226F35CBC(v3);
  *a2 = result;
  return result;
}

uint64_t sub_2274AA9BC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v130 = a4;
  v116 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA078, &unk_2276776F0);
  MEMORY[0x28223BE20](v10 - 8);
  v112 = &v110 - v11;
  v118 = sub_2276668A0();
  v114 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v113 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v115 = &v110 - v14;
  v15 = sub_22766B390();
  v119 = *(v15 - 8);
  v120 = v15;
  MEMORY[0x28223BE20](v15);
  v110 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v117 = &v110 - v18;
  MEMORY[0x28223BE20](v19);
  v111 = &v110 - v20;
  v21 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v26 = swift_allocObject();
  v27 = v22;
  v28 = v23;

  sub_22766A070();
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  swift_getKeyPath();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v129 = v122;
  v127 = a2;
  v128 = a3;
  v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v123 = v29;
  v30 = sub_22766C820();
  sub_226ED25F8(&v127, v125);
  v31 = v126;
  if (v126)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v125, v126);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x28223BE20](v32);
    v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v125);
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_opt_self();
  v39 = [v38 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8, &unk_2276776D0);
  v40 = [objc_allocWithZone(v121) initWithLeftExpression:v30 rightExpression:v39 modifier:0 type:4 options:0];

  sub_226E97D1C(&v127, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v41 = v40;
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(&v127, 0);
  swift_endAccess();

  swift_getKeyPath();
  v129 = v122;
  v127 = v130;
  v128 = a5;
  v122 = a5;

  v45 = sub_22766C820();
  sub_226ED25F8(&v127, v125);
  v46 = v126;
  if (v126)
  {
    v47 = __swift_project_boxed_opaque_existential_0(v125, v126);
    v123 = &v110;
    v48 = v38;
    v49 = *(v46 - 8);
    v50 = MEMORY[0x28223BE20](v47);
    v52 = &v110 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v52, v50);
    v53 = sub_22766D170();
    (*(v49 + 8))(v52, v46);
    v38 = v48;
    __swift_destroy_boxed_opaque_existential_0(v125);
  }

  else
  {
    v53 = 0;
  }

  v54 = [v38 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v55 = [objc_allocWithZone(v121) initWithLeftExpression:v45 rightExpression:v54 modifier:0 type:4 options:0];

  sub_226E97D1C(&v127, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v56 = v55;
  v57 = sub_22766A080();
  v59 = v58;
  MEMORY[0x22AA985C0]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v57(&v127, 0);
  swift_endAccess();

  v60 = v124;
  v61 = sub_227231CB8(100);
  if (v60)
  {
    swift_setDeallocating();

    v62 = qword_2813B2078;
    v63 = sub_22766A100();
    (*(*(v63 - 8) + 8))(v26 + v62, v63);
    return swift_deallocClassInstance();
  }

  else
  {
    v65 = v61;
    swift_setDeallocating();

    v66 = qword_2813B2078;
    v67 = sub_22766A100();
    (*(*(v67 - 8) + 8))(v26 + v66, v67);
    swift_deallocClassInstance();
    v68 = v111;
    sub_22766A6C0();

    v69 = sub_22766B380();
    v70 = sub_22766C8B0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v127 = v72;
      *v71 = 141558274;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2080;
      sub_226EB0FB0(&unk_28139B620, MEMORY[0x277D526D0], MEMORY[0x277D526D8]);
      v73 = v118;
      v74 = sub_22766C610();
      v124 = 0;
      v76 = sub_226E97AE8(v74, v75, &v127);

      *(v71 + 14) = v76;
      v77 = v73;
      _os_log_impl(&dword_226E8E000, v69, v70, "[Key Metadata] Found metadata matching workout and userIdentifier %{mask.hash}s", v71, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x22AA9A450](v72, -1, -1);
      MEMORY[0x22AA9A450](v71, -1, -1);

      v78 = *(v119 + 8);
      v78(v68, v120);
    }

    else
    {

      v78 = *(v119 + 8);
      v78(v68, v120);
      v77 = v118;
    }

    v79 = v117;
    v80 = v113;
    v81 = v114;
    v82 = v112;
    sub_22722AFB4(v65, v112);

    if ((*(v81 + 48))(v82, 1, v77) == 1)
    {
      sub_226E97D1C(v82, &qword_27D7BA078, &unk_2276776F0);
      v83 = sub_22766C0A0();
      v85 = v84;
      v86 = v110;
      sub_22766A6C0();
      v87 = v122;

      v88 = sub_22766B380();
      v89 = sub_22766C8B0();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v124 = v78;
        v91 = v90;
        v92 = swift_slowAlloc();
        v127 = v92;
        *v91 = 141558530;
        *(v91 + 4) = 1752392040;
        *(v91 + 12) = 2080;
        *(v91 + 14) = sub_226E97AE8(v83, v85, &v127);
        *(v91 + 22) = 2082;
        *(v91 + 24) = sub_226E97AE8(v130, v87, &v127);
        _os_log_impl(&dword_226E8E000, v88, v89, "[Key Metadata] Creating new slot identifier %{mask.hash}s for workout %{public}s", v91, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v92, -1, -1);
        MEMORY[0x22AA9A450](v91, -1, -1);

        result = (v124)(v86, v120);
      }

      else
      {

        result = (v78)(v86, v120);
      }
    }

    else
    {
      v124 = v78;
      v93 = v115;
      (*(v81 + 32))(v115, v82, v77);
      sub_22766A6C0();
      (*(v81 + 16))(v80, v93, v77);
      v94 = v122;

      v95 = sub_22766B380();
      v96 = sub_22766C8B0();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        LODWORD(v121) = v96;
        v98 = v80;
        v99 = v97;
        v123 = swift_slowAlloc();
        v127 = v123;
        *v99 = 141558530;
        *(v99 + 4) = 1752392040;
        *(v99 + 12) = 2080;
        sub_226EB0FB0(&qword_27D7BDFF0, MEMORY[0x277D526D0], MEMORY[0x277D526E8]);
        v100 = sub_22766D140();
        v102 = v101;
        v103 = *(v81 + 8);
        v103(v98, v118);
        v104 = sub_226E97AE8(v100, v102, &v127);
        v77 = v118;

        *(v99 + 14) = v104;
        *(v99 + 22) = 2082;
        *(v99 + 24) = sub_226E97AE8(v130, v94, &v127);
        _os_log_impl(&dword_226E8E000, v95, v121, "[Key Metadata] Reusing slot identifier in metadata %{mask.hash}s for workout: %{public}s", v99, 0x20u);
        v105 = v123;
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v105, -1, -1);
        MEMORY[0x22AA9A450](v99, -1, -1);

        v106 = v117;
      }

      else
      {

        v103 = *(v81 + 8);
        v103(v80, v77);
        v106 = v79;
      }

      v124(v106, v120);
      v107 = v115;
      v83 = sub_227666830();
      v85 = v108;
      result = (v103)(v107, v77);
    }

    v109 = v116;
    *v116 = v83;
    v109[1] = v85;
  }

  return result;
}

void sub_2274AB860(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v34 = a5;
  v35 = a6;
  v40 = a3;
  v36 = a10;
  v33 = a9;
  v13 = sub_2276639B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  v37 = sub_22766C2B0();
  (*(v14 + 16))(v16, a4, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v40;
  (*(v14 + 32))(v22 + v18, v16, v13);
  v23 = (v22 + v19);
  *v23 = sub_226EB438C;
  v23[1] = v17;
  v24 = (v22 + v20);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = (v22 + v21);
  v27 = v39;
  *v26 = v38;
  v26[1] = v27;
  v28 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  v29 = v36;
  *v28 = v33;
  v28[1] = v29;
  aBlock[4] = sub_2274AEEC8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_34;
  v30 = _Block_copy(aBlock);
  v31 = v40;

  v32 = v37;
  [v31 loadValuesAsynchronouslyForKeys:v37 completionHandler:v30];
  _Block_release(v30);
}

void sub_2274ABB04(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = a7;
  v113 = a8;
  v110 = a5;
  v111 = a6;
  v117 = a4;
  v118 = a3;
  v121[4] = *MEMORY[0x277D85DE8];
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v115 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v108 = &v106 - v14;
  v119 = sub_22766B390();
  v15 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v109 = &v106 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v106 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - v23;
  sub_22766A6C0();
  v25 = a1;
  v26 = sub_22766B380();
  v27 = sub_22766C8B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v114 = a2;
    v29 = v28;
    v30 = v11;
    v31 = v10;
    v32 = swift_slowAlloc();
    *v29 = 141558274;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v25;
    *v32 = v25;
    v33 = v25;
    _os_log_impl(&dword_226E8E000, v26, v27, "[Key Metadata] Loaded metadata values for item: %{mask.hash}@", v29, 0x16u);
    sub_226E97D1C(v32, &unk_27D7B9660, &qword_2276740C0);
    v34 = v32;
    v10 = v31;
    v11 = v30;
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v29;
    a2 = v114;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  v38 = *(v15 + 8);
  v36 = v15 + 8;
  v37 = v38;
  (v38)(v24, v119);
  v39 = [v25 value];
  if (v39)
  {
    v120 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFD8, &qword_227687558);
    if (swift_dynamicCast())
    {
      v40 = sub_227662510();
      v42 = v41;

      if (v42 >> 60 != 15)
      {
        v43 = objc_opt_self();
        v44 = sub_227662560();
        v121[0] = 0;
        v45 = [v43 JSONObjectWithData:v44 options:0 error:v121];

        if (v45)
        {
          v107 = v40;
          v46 = v121[0];
          sub_22766CC20();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560);
          v47 = swift_dynamicCast();
          if (v47)
          {
            v116 = v42;
            v48 = v11;
            v49 = v120;
            MEMORY[0x28223BE20](v47);
            v50 = v111;
            *(&v106 - 8) = v110;
            *(&v106 - 7) = v50;
            v51 = v113;
            *(&v106 - 6) = v112;
            *(&v106 - 5) = v51;
            *(&v106 - 4) = v53;
            *(&v106 - 3) = v52;
            *(&v106 - 2) = a2;
            v54 = sub_226FDFF04(sub_2274AEF8C, (&v106 - 10), v49);
            if (*(v54 + 2))
            {

              sub_22766A6C0();

              v55 = sub_22766B380();
              v56 = sub_22766C8B0();

              if (os_log_type_enabled(v55, v56))
              {
                v57 = swift_slowAlloc();
                v58 = swift_slowAlloc();
                v121[0] = v58;
                *v57 = 141558274;
                *(v57 + 4) = 1752392040;
                *(v57 + 12) = 2080;
                v59 = MEMORY[0x22AA98660](v54, v10);
                v61 = sub_226E97AE8(v59, v60, v121);

                *(v57 + 14) = v61;
                _os_log_impl(&dword_226E8E000, v55, v56, "[Key Metadata] Created key requests: %{mask.hash}s", v57, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v58);
                MEMORY[0x22AA9A450](v58, -1, -1);
                MEMORY[0x22AA9A450](v57, -1, -1);
              }

              (v37)(v21, v119);
              v101 = v116;
              v102 = v107;
              v118(v54, 0);

              sub_226FB1424(v102, v101);
            }

            else
            {
              v82 = v10;
              v114 = v36;
              v115 = v37;

              v83 = v109;
              sub_22766A6C0();
              v84 = v48;
              v85 = *(v48 + 16);
              v86 = v108;
              v85(v108, a2, v10);

              v87 = sub_22766B380();
              v88 = sub_22766C890();

              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                v121[0] = v90;
                *v89 = 136315650;
                v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
                v92 = MEMORY[0x22AA98660](v49, v91);
                v94 = v93;

                v95 = sub_226E97AE8(v92, v94, v121);

                *(v89 + 4) = v95;
                *(v89 + 12) = 2160;
                *(v89 + 14) = 1752392040;
                *(v89 + 22) = 2080;
                sub_226EB0FB0(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
                v96 = sub_22766D140();
                v98 = v97;
                (*(v84 + 8))(v86, v82);
                v99 = sub_226E97AE8(v96, v98, v121);

                *(v89 + 24) = v99;
                _os_log_impl(&dword_226E8E000, v87, v88, "[Key Metadata] Failed to create key requests from metadata: %s for media stream request %{mask.hash}s", v89, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x22AA9A450](v90, -1, -1);
                MEMORY[0x22AA9A450](v89, -1, -1);

                v100 = v109;
              }

              else
              {

                (*(v84 + 8))(v86, v10);
                v100 = v83;
              }

              (v115)(v100, v119);
              v103 = sub_227663190();
              sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
              v104 = swift_allocError();
              (*(*(v103 - 8) + 104))(v105, *MEMORY[0x277D4FD98], v103);
              v118(v104, 1);

              sub_226FB1424(v107, v116);
            }

            return;
          }

          sub_226FB1424(v107, v42);
        }

        else
        {
          v62 = v121[0];
          v63 = sub_2276622C0();
          v114 = a2;
          v64 = v36;
          v65 = v63;

          swift_willThrow();
          sub_226FB1424(v40, v42);
          v66 = v65;
          v36 = v64;
          a2 = v114;
        }
      }
    }
  }

  v67 = v116;
  sub_22766A6C0();
  v68 = v115;
  (*(v11 + 16))(v115, a2, v10);
  v69 = sub_22766B380();
  v70 = sub_22766C890();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v114 = v36;
    v72 = v71;
    v73 = swift_slowAlloc();
    v121[0] = v73;
    *v72 = 141558274;
    *(v72 + 4) = 1752392040;
    *(v72 + 12) = 2080;
    sub_226EB0FB0(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v74 = sub_22766D140();
    v75 = v10;
    v77 = v76;
    (*(v11 + 8))(v68, v75);
    v78 = sub_226E97AE8(v74, v77, v121);

    *(v72 + 14) = v78;
    _os_log_impl(&dword_226E8E000, v69, v70, "[Key Metadata] Unable to decode key metadata for stream request %{mask.hash}s", v72, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AA9A450](v73, -1, -1);
    MEMORY[0x22AA9A450](v72, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v68, v10);
  }

  (v37)(v67, v119);
  v79 = sub_227663190();
  sub_226EB0FB0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v80 = swift_allocError();
  (*(*(v79 - 8) + 104))(v81, *MEMORY[0x277D4FD98], v79);
  v118(v80, 1);
}

void sub_2274AC6D4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v154 = a8;
  v148 = a7;
  v149 = a6;
  v152 = a4;
  v153 = a5;
  v150 = a2;
  v151 = a3;
  v161 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v136 - v13;
  v15 = sub_227662750();
  MEMORY[0x28223BE20](v15 - 8);
  v146 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2276668A0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v155 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22766B390();
  v159 = *(v20 - 8);
  v160 = v20;
  MEMORY[0x28223BE20](v20);
  v158 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v136 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v136 - v29;
  v164 = sub_2276624A0();
  v167 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v145 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v157 = &v136 - v33;
  MEMORY[0x28223BE20](v34);
  v156 = &v136 - v35;
  MEMORY[0x28223BE20](v36);
  v163 = &v136 - v37;
  v38 = *a1;
  v39 = *(v38 + 16);
  v162 = v38;
  v147 = v27;
  if (v39)
  {
    v40 = sub_226E92000(6910581, 0xE300000000000000);
    if (v41)
    {
      sub_226E97CC0(*(v38 + 56) + 32 * v40, v166);
      swift_dynamicCast();
    }
  }

  v42 = v164;
  sub_227662310();
  v43 = v167;
  if ((*(v167 + 48))(v30, 1, v42) == 1)
  {
    sub_226E97D1C(v30, &unk_27D7BB570, &unk_227670FC0);
    v44 = 1;
    v45 = v161;
LABEL_97:
    v135 = sub_2276639B0();
    (*(*(v135 - 8) + 56))(v45, v44, 1, v135);
    return;
  }

  (*(v43 + 32))(v163, v30, v42);
  v46 = *(v162 + 16);
  v47 = v24;
  v140 = v14;
  v143 = v17;
  v139 = v18;
  if (!v46 || (v48 = sub_226E92000(0xD000000000000010, 0x80000002276A1470), v42 = v164, (v49 & 1) == 0) || (sub_226E97CC0(*(v162 + 56) + 32 * v48, v166), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0), (swift_dynamicCast() & 1) == 0))
  {
    v86 = 0;
    goto LABEL_87;
  }

  v144 = v9;
  v50 = v165;
  v51 = *(v165 + 2);
  if (!v51)
  {
    v142 = MEMORY[0x277D84F90];
LABEL_100:

    v10 = v144;
    v42 = v164;
    v86 = v142;
LABEL_87:
    sub_22766A6C0();
    v87 = v167;
    v88 = *(v167 + 16);
    v89 = v156;
    v142 = (v167 + 16);
    v141 = v88;
    (v88)(v156, v163, v42);

    v90 = v47;
    v91 = sub_22766B380();
    v92 = sub_22766C8B0();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v144 = v10;
      v137 = v94;
      v166[0] = v94;
      *v93 = 141558530;
      *(v93 + 4) = 1752392040;
      *(v93 + 12) = 2080;
      v138 = v90;
      v95 = sub_227662390();
      v97 = v96;
      v98 = v42;
      v99 = *(v87 + 8);
      v99(v89, v98);
      v100 = sub_226E97AE8(v95, v97, v166);

      *(v93 + 14) = v100;
      *(v93 + 22) = 2082;
      v165 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDFE0, &qword_227687568);
      v101 = sub_22766CB80();
      v103 = sub_226E97AE8(v101, v102, v166);

      *(v93 + 24) = v103;
      v45 = v161;
      v104 = v92;
      v105 = v99;
      _os_log_impl(&dword_226E8E000, v91, v104, "Versions for %{mask.hash}s: %{public}s", v93, 0x20u);
      v106 = v137;
      swift_arrayDestroy();
      v107 = v144;
      MEMORY[0x22AA9A450](v106, -1, -1);
      MEMORY[0x22AA9A450](v93, -1, -1);

      v108 = *(v159 + 8);
      v108(v138, v160);
      v42 = v164;
      v109 = v158;
      v110 = v157;
      if (v86)
      {
        goto LABEL_89;
      }
    }

    else
    {

      v105 = *(v87 + 8);
      v105(v89, v42);
      v108 = *(v159 + 8);
      v108(v90, v160);
      v109 = v158;
      v45 = v161;
      v107 = v10;
      v110 = v157;
      if (v86)
      {
LABEL_89:
        if (*(v86 + 2))
        {
          v137 = *(v86 + 4);

          sub_22766A6C0();
          (v141)(v110, v163, v42);

          v111 = sub_22766B380();
          v112 = sub_22766C8B0();

          v113 = os_log_type_enabled(v111, v112);
          v144 = v107;
          v156 = v105;
          if (v113)
          {
            v114 = v105;
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v166[0] = v116;
            *v115 = 141558530;
            *(v115 + 4) = 1752392040;
            *(v115 + 12) = 2080;
            v117 = sub_227662390();
            v118 = v110;
            v120 = v119;
            v138 = (v167 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v114(v118, v164);
            v121 = sub_226E97AE8(v117, v120, v166);

            *(v115 + 14) = v121;
            *(v115 + 22) = 2082;
            v122 = sub_22766BEC0();
            v124 = sub_226E97AE8(v122, v123, v166);

            *(v115 + 24) = v124;
            _os_log_impl(&dword_226E8E000, v111, v112, "[Key Metadata] key URL %{mask.hash}s deserialized metadata: %{public}s", v115, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v116, -1, -1);
            MEMORY[0x22AA9A450](v115, -1, -1);

            v108(v158, v160);
            v125 = v167;
          }

          else
          {

            v126 = v167;
            v138 = (v167 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v105(v110, v164);
            v108(v109, v160);
            v125 = v126;
          }

          sub_22766C0A0();

          sub_227662740();
          sub_2276639A0();
          v127 = v155;
          sub_227666800();
          v128 = v139;
          v129 = v140;
          (*(v139 + 16))(v140, v127, v143);
          v130 = sub_227664AE0();
          swift_storeEnumTagMultiPayload();
          (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
          v131 = v147;
          v133 = v163;
          v132 = v164;
          (v141)(v147, v163, v164);
          (*(v125 + 56))(v131, 0, 1, v132);
          v134 = v161;
          sub_227663980();

          sub_226E97D1C(v131, &unk_27D7BB570, &unk_227670FC0);
          sub_226E97D1C(v129, &qword_27D7B9688, &qword_2276776E0);
          (*(v128 + 8))(v155, v143);
          (v156)(v133, v132);
          v44 = 0;
          v45 = v134;
        }

        else
        {
          v105(v163, v42);

          v44 = 1;
        }

        goto LABEL_97;
      }
    }

    v105(v163, v42);
    v44 = 1;
    goto LABEL_97;
  }

  v52 = 0;
  v53 = v166 + 1;
  v142 = MEMORY[0x277D84F90];
  while (v52 < *(v50 + 2))
  {
    v54 = &v50[16 * v52 + 32];
    v56 = *v54;
    v55 = v54[1];
    ++v52;
    v57 = HIBYTE(v55) & 0xF;
    v58 = v56 & 0xFFFFFFFFFFFFLL;
    if ((v55 & 0x2000000000000000) != 0)
    {
      v59 = HIBYTE(v55) & 0xF;
    }

    else
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (!v59)
    {
      goto LABEL_74;
    }

    if ((v55 & 0x1000000000000000) != 0)
    {

      sub_2274AD75C(v56, v55, 10);
      v62 = v80;
      LODWORD(v141) = v81;

      if ((v141 & 1) == 0)
      {
        goto LABEL_79;
      }

      if (v52 == v51)
      {
LABEL_98:
        v47 = v24;
        goto LABEL_100;
      }
    }

    else
    {
      if ((v55 & 0x2000000000000000) != 0)
      {
        v166[0] = v56;
        v166[1] = v55 & 0xFFFFFFFFFFFFFFLL;
        if (v56 == 43)
        {
          if (!v57)
          {
            goto LABEL_102;
          }

          if (--v57)
          {
            v62 = 0;
            v72 = v53;
            while (1)
            {
              v73 = *v72 - 48;
              if (v73 > 9)
              {
                break;
              }

              v74 = 10 * v62;
              if ((v62 * 10) >> 64 != (10 * v62) >> 63)
              {
                break;
              }

              v62 = v74 + v73;
              if (__OFADD__(v74, v73))
              {
                break;
              }

              ++v72;
              if (!--v57)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v56 == 45)
        {
          if (!v57)
          {
            goto LABEL_104;
          }

          if (--v57)
          {
            v62 = 0;
            v66 = v53;
            while (1)
            {
              v67 = *v66 - 48;
              if (v67 > 9)
              {
                break;
              }

              v68 = 10 * v62;
              if ((v62 * 10) >> 64 != (10 * v62) >> 63)
              {
                break;
              }

              v62 = v68 - v67;
              if (__OFSUB__(v68, v67))
              {
                break;
              }

              ++v66;
              if (!--v57)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v57)
        {
          v62 = 0;
          v77 = v166;
          while (1)
          {
            v78 = *v77 - 48;
            if (v78 > 9)
            {
              break;
            }

            v79 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              break;
            }

            v62 = v79 + v78;
            if (__OFADD__(v79, v78))
            {
              break;
            }

            v77 = (v77 + 1);
            if (!--v57)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if ((v56 & 0x1000000000000000) != 0)
      {
        v60 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v60 = sub_22766CEC0();
      }

      v61 = *v60;
      if (v61 == 43)
      {
        if (v58 < 1)
        {
          goto LABEL_105;
        }

        v57 = v58 - 1;
        if (v58 == 1)
        {
          goto LABEL_72;
        }

        v62 = 0;
        if (v60)
        {
          v69 = v60 + 1;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              goto LABEL_72;
            }

            v71 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              goto LABEL_72;
            }

            v62 = v71 + v70;
            if (__OFADD__(v71, v70))
            {
              goto LABEL_72;
            }

            ++v69;
            if (!--v57)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v61 == 45)
      {
        if (v58 < 1)
        {
          goto LABEL_103;
        }

        v57 = v58 - 1;
        if (v58 == 1)
        {
          goto LABEL_72;
        }

        v62 = 0;
        if (v60)
        {
          v63 = v60 + 1;
          while (1)
          {
            v64 = *v63 - 48;
            if (v64 > 9)
            {
              break;
            }

            v65 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              break;
            }

            v62 = v65 - v64;
            if (__OFSUB__(v65, v64))
            {
              break;
            }

            ++v63;
            if (!--v57)
            {
              goto LABEL_73;
            }
          }

LABEL_72:
          v62 = 0;
          LOBYTE(v57) = 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (!v58)
        {
          goto LABEL_72;
        }

        v62 = 0;
        if (v60)
        {
          do
          {
            v75 = *v60 - 48;
            if (v75 > 9)
            {
              goto LABEL_72;
            }

            v76 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              goto LABEL_72;
            }

            v62 = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              goto LABEL_72;
            }

            ++v60;
          }

          while (--v58);
        }
      }

      LOBYTE(v57) = 0;
LABEL_73:
      LOBYTE(v165) = v57;
      if (v57)
      {
LABEL_74:
        if (v52 == v51)
        {
          goto LABEL_98;
        }
      }

      else
      {
LABEL_79:
        v141 = v53;
        v82 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = sub_2273A5610(0, *(v142 + 2) + 1, 1, v142);
        }

        v84 = *(v142 + 2);
        v83 = *(v142 + 3);
        if (v84 >= v83 >> 1)
        {
          v142 = sub_2273A5610((v83 > 1), v84 + 1, 1, v142);
        }

        v85 = v142;
        *(v142 + 2) = v84 + 1;
        *&v85[8 * v84 + 32] = v62;
        v14 = v82;
        v47 = v24;
        v53 = v141;
        if (v52 == v51)
        {
          goto LABEL_100;
        }
      }
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

void sub_2274AD75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_22766C1D0();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2274AE264(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_22766CEC0();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

void sub_2274ADCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;

  v4 = sub_22766C1D0();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2274AE264(v4, v5);
    v41 = v40;

    v5 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_22766CEC0();
      v8 = v72;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v7)
          {
            v26 = 0;
            v27 = v7 + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v21 = __CFADD__(v30, v31);
              v26 = v30 + v31;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v27;
              --v22;
            }

            while (v22);
LABEL_47:
            v16 = 0;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (v7)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *v7;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v21 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v21)
            {
              goto LABEL_128;
            }

            ++v7;
            --v8;
          }

          while (v8);
          v16 = 0;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v17 + v18;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v16 = 0;
LABEL_129:

        LOBYTE(v73) = v16;
        return;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v5) & 0xF;
  v73 = v6;
  v74 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v63 = 0;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v73;
        v16 = 1;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_129;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v63 * a3;
          if ((v70 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v71 = v68 + v69;
          v21 = __CFADD__(v70, v71);
          v63 = v70 + v71;
          if (v21)
          {
            goto LABEL_128;
          }

          v67 = (v67 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v73 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v21 = v51 >= v52;
          v44 = v51 - v52;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v54 = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v73 + 1;
      v16 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v54 * a3;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v21 = __CFADD__(v61, v62);
        v54 = v61 + v62;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v58;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
}

uint64_t sub_2274AE264(uint64_t a1, unint64_t a2)
{
  v2 = sub_22766C1E0();
  v6 = sub_2274AE2E4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2274AE2E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22766CBA0();
    if (!v9 || (v10 = v9, v11 = sub_226E9BED8(v9, 0), v12 = sub_2274AE43C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22766C0F0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22766C0F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22766CEC0();
LABEL_4:

  return sub_22766C0F0();
}

unint64_t sub_2274AE43C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2274F117C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22766C190();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22766CEC0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2274F117C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22766C170();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2274AE67C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = (v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_2274A90E4(a1, v2 + v6, v9, v10, v11, v13, v14, a2);
}

uint64_t sub_2274AE770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2274A8934(a1, v6, a2);
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_2274AE8E4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2274A967C(a1, a2, v6);
}

void sub_2274AE964(unint64_t *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2274AA4CC(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2274AEA60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);

  return sub_227669270();
}

uint64_t sub_2274AEB40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_2274AEC08(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_226F38F34(v6, 0);
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_2274AEDF4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2274AB860(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_2274AEEC8()
{
  v1 = *(sub_2276639B0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2274ABB04(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_2274AEFB4()
{
  v1 = *(sub_2276639B0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_2274A9B44(v0 + v2, v4, v5);
}

uint64_t sub_2274AF058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_22766C420();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[5] = v5;
  v4[6] = v7;

  return MEMORY[0x2822009F8](sub_2274AF0EC, v5, v7);
}

uint64_t sub_2274AF114()
{
  v1 = v0[7];
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[8] = v3;
  v3[2] = v2;
  v3[3] = sub_2274AFCB0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE018, &qword_227687768);
  *v4 = v0;
  v4[1] = sub_2274AF244;
  v6 = v0[3];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x2865747563657865, 0xEE00293A68746977, sub_2274AFCCC, v3, v5);
}

uint64_t sub_2274AF244()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2274AF38C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2274AF38C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2274AF3F8, v1, v2);
}

uint64_t sub_2274AF3F8()
{
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_2274AF488()
{
  sqlite3_finalize(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2274AF4F4(uint64_t a1)
{
  *(a1 + 8) = sub_2274AFC70(&qword_27D7BDFF8, &unk_22768767C);
  result = sub_2274AFC70(&qword_27D7BE000, &unk_2276876BC);
  *(a1 + 16) = result;
  return result;
}

void sub_2274AF55C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sqlite3_step(*(a1 + 24));
  v6 = sub_2273946A4(v5);
  if (!v2)
  {
    if (v6 == 1)
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }
  }
}

uint64_t sub_2274AF5C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_2274AF5E8, 0, 0);
}

uint64_t sub_2274AF5E8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[4] = v3;
  v3[2] = v2;
  v3[3] = sub_2274AFD78;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE018, &qword_227687768);
  *v4 = v0;
  v4[1] = sub_2274AF718;
  v6 = v0[2];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x2865747563657865, 0xEE00293A68746977, sub_2274AFD90, v3, v5);
}

uint64_t sub_2274AF718()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2274AF860, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2274AF860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2274AF8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2274AF998;

  return sub_2274AF058(a1, a2, a3);
}

uint64_t sub_2274AF998()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

void sub_2274AFAB8(uint64_t a1)
{
  MEMORY[0x22AA996B0](*(v1[2] + 16));
  v2 = sub_227669C30();
  MEMORY[0x22AA996B0](v2);
  MEMORY[0x22AA996B0](v1[3]);
  v3 = v1[4];
  MEMORY[0x22AA996B0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      sub_22766C100();

      v5 += 16;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_2274AFB54()
{
  sub_22766D370();
  sub_2274AFAB8(v1);
  return sub_22766D3F0();
}

uint64_t sub_2274AFBBC(uint64_t a1)
{
  sub_22766D370();
  sub_2274AFAB8(v2);
  return sub_22766D3F0();
}

uint64_t sub_2274AFC70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SQLiteDatabaseResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2274AFCD8(void *a1, void *a2)
{
  if (*(a1[2] + 16) != *(a2[2] + 16))
  {
    return 0;
  }

  v4 = sub_227669C30();
  if (v4 != sub_227669C30() || a1[3] != a2[3])
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];

  return sub_2273371D4(v6, v7);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_2274AFDD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2274AFE18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 224) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2274AFEA0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, NSObject *, uint64_t)@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, double a9@<D0>)
{
  v118 = a7;
  v126 = a5;
  v127 = a6;
  v125 = a4;
  v120 = a8;
  v14 = sub_22766B390();
  v130 = *(v14 - 8);
  v131 = v14;
  MEMORY[0x28223BE20](v14);
  v124 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v122 = &v110 - v17;
  v135 = sub_227664530();
  v129 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v116 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v134 = &v110 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v110 - v22;
  v136 = sub_227667A70();
  v128 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v119 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v132 = (&v110 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v27 - 8);
  v117 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v133 = &v110 - v30;
  v31 = sub_227666FF0();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_2274B6BAC(a1, v34);
  if (v9)
  {

    v115 = 0;
    v35 = 0;
  }

  else
  {
    v115 = sub_227666F70();
    v35 = v36;
    (*(v32 + 8))(v34, v31);
  }

  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v37 = sub_2274B6F0C(a3, a1);
  v38 = v136;
  v123 = v37;
  v39 = v132;
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_227664510();
  if (v40 >= 300.0 && (sub_227664500(), v41 >= 0.5))
  {
    v106 = sub_2274BD4AC(a3, a1);
    MEMORY[0x28223BE20](v106);
    *(&v110 - 2) = a1;
    v108 = sub_22735A914(sub_2274B0D50, (&v110 - 4), v107);
    v113 = 0;
    v109 = v108[2];

    v112 = v109 != 0;
  }

  else
  {
    v113 = 0;
    v112 = 0;
  }

  sub_226E93170(v125, v133, &unk_27D7BB920, &unk_227672480);
  v42 = v126;
  v125 = *(v128 + 16);
  v126 = (v128 + 16);
  v125(v39, v42, v38);
  sub_226E93170(v127, v23, &qword_27D7B8E38, &qword_22767C730);
  v43 = sub_22766A4C0();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v23, 1, v43) == 1)
  {
    sub_226E97D1C(v23, &qword_27D7B8E38, &qword_22767C730);
    v121 = 0;
    v127 = 0xE000000000000000;
  }

  else
  {
    v121 = sub_22766A4B0();
    v127 = v45;
    (*(v44 + 8))(v23, v43);
  }

  v114 = a2;
  v46 = v115;
  if (!v35)
  {
    v46 = 0;
  }

  v111 = v46;
  v47 = 0xE000000000000000;
  if (v35)
  {
    v47 = v35;
  }

  v110 = v47;
  v48 = v129;
  v49 = *(v129 + 16);
  v50 = v134;
  v51 = v135;
  v49(v134, a3, v135);
  type metadata accessor for AchievementEnvironmentProvider(0);
  v52 = swift_allocObject();
  v53 = v122;
  sub_22766A610();
  v54 = v116;
  v115 = v49;
  v49(v116, v50, v51);
  v55 = sub_22766B380();
  v56 = sub_22766C8B0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = v48;
    v59 = swift_slowAlloc();
    v137 = v59;
    *v57 = 136315138;
    sub_2274B0CF8();
    v60 = sub_22766D140();
    v61 = v54;
    v63 = v62;
    v116 = *(v58 + 8);
    (v116)(v61, v135);
    v64 = sub_226E97AE8(v60, v63, &v137);

    *(v57 + 4) = v64;
    _os_log_impl(&dword_226E8E000, v55, v56, "Creating an environment provider for session: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x22AA9A450](v59, -1, -1);
    v65 = v57;
    v51 = v135;
    MEMORY[0x22AA9A450](v65, -1, -1);

    v66 = *(v130 + 8);
    v67 = v122;
  }

  else
  {

    v116 = *(v48 + 8);
    (v116)(v54, v51);
    v66 = *(v130 + 8);
    v67 = v53;
  }

  v122 = v66;
  (v66)(v67, v131);
  v68 = v133;
  sub_226E93170(v133, v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, &unk_27D7BB920, &unk_227672480);
  v69 = v132;
  v125((v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_cache), v132, v136);
  v70 = (v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier);
  v71 = v127;
  *v70 = v121;
  v70[1] = v71;
  *(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isCompletingProgram) = v112;
  *(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isGuidedSession) = v123 & 1;
  v72 = (v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier);
  v73 = v110;
  *v72 = v111;
  v72[1] = v73;
  *(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planCompletedWorkoutCount) = v118;
  v115(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_session, v134, v51);
  *(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_sessionEnergyBurned) = a9;

  sub_227664510();
  v75 = v74;
  sub_227669DE0();
  sub_227669DB0();
  v77 = v76;
  *(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) = v76 < v75;
  sub_227664500();
  v79 = v78;
  sub_227669DA0();
  v81 = v80;
  *(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) = v80 < v79;
  v82 = v117;
  sub_226E93170(v68, v117, &unk_27D7BB920, &unk_227672480);
  v83 = sub_2276638D0();
  v84 = *(v83 - 8);
  if ((*(v84 + 48))(v82, 1, v83) == 1)
  {
    sub_226E97D1C(v82, &unk_27D7BB920, &unk_227672480);
    v85 = 0;
  }

  else
  {
    v86 = sub_2276637D0();
    (*(v84 + 8))(v82, v83);
    v85 = *(v86 + 16);
  }

  v87 = v124;
  v88 = v119;
  *(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planTotalWorkoutCount) = v85;
  sub_22766A610();
  v89 = v136;
  v125(v88, v69, v136);
  v90 = v127;

  v91 = sub_22766B380();
  v92 = sub_22766C8B0();

  v126 = v91;
  if (os_log_type_enabled(v91, v92))
  {
    v93 = v88;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v137 = v95;
    *v94 = 67110146;
    *(v94 + 4) = v77 < v75;
    *(v94 + 8) = 1024;
    *(v94 + 10) = v81 < v79;

    *(v94 + 14) = 2080;
    v96 = sub_226E97AE8(v121, v90, &v137);

    *(v94 + 16) = v96;
    *(v94 + 24) = 1024;
    *(v94 + 26) = v123 & 1;
    *(v94 + 30) = 2048;
    v97 = sub_2276679E0();
    v98 = *(v128 + 8);
    v98(v93, v136);
    *(v94 + 32) = v97;
    v99 = v126;
    _os_log_impl(&dword_226E8E000, v126, v92, "[AchievementEnvironmentProvider] Creating provider with meetsDurationThreshold: %{BOOL}d, meetsCompletionThreshold: %{BOOL}d, HKWorkoutIdentifier: %s, isGuidedSession: %{BOOL}d, longestWeeklyStreak: %ld", v94, 0x28u);
    __swift_destroy_boxed_opaque_existential_0(v95);
    v100 = v95;
    v89 = v136;
    MEMORY[0x22AA9A450](v100, -1, -1);
    MEMORY[0x22AA9A450](v94, -1, -1);

    (v122)(v124, v131);
    v101 = v135;
    v102 = v116;
    (v116)(v134, v135);
    v98(v132, v89);
  }

  else
  {
    v98 = *(v128 + 8);
    v98(v88, v89);

    (v122)(v87, v131);
    v101 = v135;
    v102 = v116;
    (v116)(v134, v135);
    v98(v69, v89);
  }

  sub_226E97D1C(v133, &unk_27D7BB920, &unk_227672480);
  v103 = sub_22732E2C4();
  swift_setDeallocating();
  sub_226E97D1C(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, &unk_27D7BB920, &unk_227672480);
  v98((v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_cache), v89);

  v102(v52 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_session, v101);
  swift_deallocClassInstance();
  v104 = v120;
  v120[3] = &type metadata for AchievementEvaluator;
  v104[4] = &off_283AB26A8;
  v105 = swift_allocObject();
  *v104 = v105;
  sub_226E91B50((v114 + 18), v105 + 24);
  *(v105 + 16) = v103;
}

unint64_t sub_2274B0CF8()
{
  result = qword_27D7B8C68;
  if (!qword_27D7B8C68)
  {
    sub_227664530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8C68);
  }

  return result;
}

char *sub_2274B0D70(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = sub_2276624A0();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v35 = v1;
    v49 = MEMORY[0x277D84F90];
    sub_226F1FF88(0, v6, 0);
    v7 = v49;
    v8 = a1 + 56;
    v9 = sub_22766CC90();
    v10 = *(a1 + 36);
    v44 = objc_opt_self();
    if (v9 < 0 || v9 >= 1 << *(a1 + 32))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v11 = v10;
    v12 = v3;
    v42 = v45 + 16;
    v43 = (v45 + 8);
    v36 = a1 + 64;
    v37 = v6;
    v13 = 1;
    v38 = v5;
    v39 = v3;
    v40 = a1 + 56;
    v41 = a1;
    while (1)
    {
      v14 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v46 = v13;
      v47 = v11;
      v15 = v7;
      (*(v45 + 16))(v5, *(a1 + 48) + *(v45 + 72) * v9, v12);
      v16 = [v44 defaultManager];
      v17 = v12;
      v7 = v5;
      v18 = sub_2276623E0();
      v48 = 0;
      v19 = [v16 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:1 error:&v48];

      v20 = v48;
      if (!v19)
      {
        break;
      }

      v21 = sub_22766C2C0();
      v22 = v20;

      (*v43)(v7, v17);
      v7 = v15;
      v49 = v15;
      v23 = *(v15 + 2);
      v24 = *(v7 + 3);
      if (v23 >= v24 >> 1)
      {
        sub_226F1FF88((v24 > 1), v23 + 1, 1);
        v7 = v49;
      }

      *(v7 + 2) = v23 + 1;
      *&v7[8 * v23 + 32] = v21;
      a1 = v41;
      v25 = 1 << *(v41 + 32);
      if (v9 >= v25)
      {
        goto LABEL_27;
      }

      v8 = v40;
      v26 = *(v40 + 8 * v14);
      if ((v26 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      if (v47 != *(v41 + 36))
      {
        goto LABEL_29;
      }

      v27 = v26 & (-2 << (v9 & 0x3F));
      if (v27)
      {
        v9 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v5 = v38;
      }

      else
      {
        v28 = v14 << 6;
        v29 = v14 + 1;
        v30 = (v36 + 8 * v14);
        v5 = v38;
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_226EB526C(v9, v47, 0);
            v9 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        sub_226EB526C(v9, v47, 0);
        v9 = v25;
      }

LABEL_19:
      v12 = v39;
      if (v46 == v37)
      {
        return v7;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v11 = *(a1 + 36);
        v13 = v46 + 1;
        if (v9 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v33 = v48;
    sub_2276622C0();

    swift_willThrow();
    (*v43)(v7, v17);
  }

  return v7;
}

uint64_t sub_2274B11A8(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  sub_227125BF8(a1 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory, v8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    v5 = v8;
LABEL_5:
    sub_226FB1188(v5);
    v19 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D4FD00], v19);
    return swift_willThrow();
  }

  v37[1] = v1;
  v16 = v14;
  v17 = v10;
  v18 = *(v10 + 32);
  v38 = v16;
  v18();
  sub_227125BF8(a1 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_mediaStreamAssetDirectory, v5);
  if (v15(v5, 1, v9) == 1)
  {
    (*(v10 + 8))(v38, v9);
    goto LABEL_5;
  }

  v22 = v39;
  (v18)(v39, v5, v9);
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  v25 = v38;
  v26 = sub_2276623E0();
  v40[0] = 0;
  v27 = [v24 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v40];

  v28 = v40[0];
  if (v27 && (v29 = v40[0], v30 = [v23 defaultManager], v31 = sub_2276623E0(), v40[0] = 0, v32 = objc_msgSend(v30, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v31, 1, 0, v40), v30, v31, v28 = v40[0], (v32 & 1) != 0))
  {
    v33 = *(v17 + 8);
    v34 = v40[0];
    v33(v22, v9);
    return (v33)(v25, v9);
  }

  else
  {
    v35 = v28;
    sub_2276622C0();

    swift_willThrow();
    v36 = *(v17 + 8);
    v36(v22, v9);
    return (v36)(v25, v9);
  }
}

uint64_t sub_2274B15D0()
{
  sub_226FB1188(v0 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory);
  sub_226FB1188(v0 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_mediaStreamAssetDirectory);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssetFileStore(uint64_t a1)
{
  result = qword_2813A4218;
  if (!qword_2813A4218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2274B1698(uint64_t a1)
{
  sub_227027194(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2274B1728(char *a1)
{
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v70 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v70 - v9;
  v11 = sub_2276624A0();
  MEMORY[0x28223BE20](v11);
  v86 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = v70 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = v70 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v70 - v18;
  v20 = v1;
  v21 = v1 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory;
  v23 = v22;
  sub_227125BF8(v21, v10);
  v24 = *(v23 + 48);
  if (v24(v10, 1, v11) == 1)
  {
    sub_226FB1188(v10);
LABEL_5:
    v25 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D4FD00], v25);
    swift_willThrow();
    return;
  }

  v85 = *(v23 + 32);
  v85(v19, v10, v11);
  sub_227125BF8(v20 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_mediaStreamAssetDirectory, v7);
  if (v24(v7, 1, v11) == 1)
  {
    sub_226FB1188(v7);
    (*(v23 + 8))(v19, v11);
    goto LABEL_5;
  }

  v73 = v24;
  v74 = v23 + 48;
  v27 = v75;
  v28 = (v85)(v75, v7, v11);
  MEMORY[0x28223BE20](v28);
  v70[-2] = v19;
  v70[-1] = v27;
  v29 = v87;
  v30 = sub_2270A8500(MEMORY[0x277D84FA0], sub_2274B2DB8, &v70[-4], v83);
  v31 = sub_2274B0D70(v30);
  v70[1] = v29;
  if (v29)
  {

    v32 = *(v23 + 8);
    v32(v27, v11);
    v32(v19, v11);
    return;
  }

  v33 = v31;
  v81 = v11;
  v82 = v23 + 32;
  v70[0] = v19;
  v76 = v23;

  v34 = *(v33 + 2);
  v83 = v4;
  if (!v34)
  {
    v36 = MEMORY[0x277D84F90];
    v43 = v85;
LABEL_26:

    v47 = *(v36 + 2);
    v48 = v81;
    if (!v47)
    {

      v68 = MEMORY[0x277D84F90];
LABEL_43:
      sub_226F40798(v68);

      v69 = *(v76 + 8);
      v69(v75, v48);
      v69(v70[0], v48);
      return;
    }

    v49 = *(v76 + 16);
    v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v78 = v49;
    v50 = &v36[v77];
    v51 = *(v76 + 72);
    v79 = v76 + 16;
    v71 = (v76 + 8);
    v72 = (v76 + 56);
    v87 = MEMORY[0x277D84F90];
    v52 = v84;
    v80 = v51;
    v49(v84, &v36[v77], v81);
    while (1)
    {
      if (sub_2276623C0())
      {
        sub_227662390();
        sub_22766C120();
        v57 = sub_22766C1E0();
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v43 = v85;

        v64 = v59;
        v4 = v83;
        MEMORY[0x22AA98400](v57, v64, v61, v63);
        v48 = v81;

        sub_227662470();
        v52 = v84;

        (*v71)(v52, v48);
        if (v73(v4, 1, v48) == 1)
        {
          v53 = v4;
          v54 = v43;
          v55 = v53;
          sub_226FB1188(v53);
          v56 = v80;
          goto LABEL_29;
        }
      }

      else
      {
        v43(v4, v52, v48);
        (*v72)(v4, 0, 1, v48);
      }

      v43(v86, v4, v48);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v65 = v87;
      }

      else
      {
        v65 = sub_2273A4ECC(0, v87[2] + 1, 1, v87);
      }

      v55 = v4;
      v67 = v65[2];
      v66 = v65[3];
      v54 = v43;
      if (v67 >= v66 >> 1)
      {
        v65 = sub_2273A4ECC((v66 > 1), v67 + 1, 1, v65);
      }

      v65[2] = v67 + 1;
      v87 = v65;
      v56 = v80;
      v54(v65 + v77 + v67 * v80, v86, v48);
      v52 = v84;
LABEL_29:
      v50 += v56;
      --v47;
      v43 = v54;
      v4 = v55;
      if (!v47)
      {

        v68 = v87;
        goto LABEL_43;
      }

      v78(v52, v50, v48);
    }
  }

  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  while (v35 < *(v33 + 2))
  {
    v37 = *&v33[8 * v35 + 32];
    v38 = *(v37 + 16);
    v39 = *(v36 + 2);
    v40 = v39 + v38;
    if (__OFADD__(v39, v38))
    {
      goto LABEL_45;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v40 > *(v36 + 3) >> 1)
    {
      if (v39 <= v40)
      {
        v42 = v39 + v38;
      }

      else
      {
        v42 = v39;
      }

      v36 = sub_2273A4ECC(isUniquelyReferenced_nonNull_native, v42, 1, v36);
    }

    v4 = v83;
    v43 = v85;
    if (*(v37 + 16))
    {
      if ((*(v36 + 3) >> 1) - *(v36 + 2) < v38)
      {
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();

      if (v38)
      {
        v44 = *(v36 + 2);
        v45 = __OFADD__(v44, v38);
        v46 = v44 + v38;
        if (v45)
        {
          goto LABEL_48;
        }

        *(v36 + 2) = v46;
      }
    }

    else
    {

      if (v38)
      {
        goto LABEL_46;
      }
    }

    if (v34 == ++v35)
    {
      goto LABEL_26;
    }
  }

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

uint64_t sub_2274B1F3C@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_227670CD0;
  if (v9 == 1)
  {
    v15 = a4;
  }

  else
  {
    v15 = a3;
  }

  (*(v11 + 16))(v13 + v12, v15, v10);

  v16 = sub_22742F6CC(v14, v8);
  swift_setDeallocating();
  (*(v11 + 8))(v14 + v12, v10);
  result = swift_deallocClassInstance();
  *a5 = v16;
  return result;
}

void sub_2274B2098()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_227662460();
  v2 = sub_22766BFD0();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    v4 = [v0 defaultManager];
    v5 = sub_2276623E0();
    v9[0] = 0;
    v6 = [v4 removeItemAtURL:v5 error:v9];

    if (v6)
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_2276622C0();

      swift_willThrow();
    }
  }
}

void sub_2274B21E8(void (*a1)(char *, uint64_t))
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  sub_22766A6C0();
  v15 = *(v3 + 16);
  v61 = a1;
  v59 = v2;
  v54 = v15;
  v55 = v3 + 16;
  v15(v8, a1, v2);
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  v18 = os_log_type_enabled(v16, v17);
  v62 = v10;
  v57 = v3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v58 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v53 = v5;
    v22 = v21;
    v66 = v21;
    *v20 = 141558274;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2080;
    v23 = sub_227662390();
    v25 = v24;
    v26 = v8;
    v27 = v59;
    v56 = *(v3 + 8);
    v56(v26, v59);
    v28 = sub_226E97AE8(v23, v25, &v66);
    v29 = v62;

    *(v20 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v16, v17, "Deleting local file %{mask.hash}s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v30 = v22;
    v5 = v53;
    MEMORY[0x22AA9A450](v30, -1, -1);
    v31 = v20;
    v9 = v58;
    MEMORY[0x22AA9A450](v31, -1, -1);

    v32 = *(v29 + 8);
    v32(v14, v9);
    v33 = v27;
  }

  else
  {

    v33 = v59;
    v56 = *(v3 + 8);
    v56(v8, v59);
    v32 = *(v10 + 8);
    v32(v14, v9);
  }

  v34 = v60;
  v35 = v61;
  sub_2274B2098();
  v36 = v63;
  if (v34)
  {
    sub_22766A6C0();
    v54(v5, v35, v33);
    v37 = v34;
    v38 = sub_22766B380();
    v39 = sub_22766C8B0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v5;
      v41 = v33;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v9;
      v60 = v43;
      v66 = v43;
      *v42 = 141558530;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2080;
      v44 = sub_227662390();
      v61 = v32;
      v46 = v45;
      v56(v40, v41);
      v47 = sub_226E97AE8(v44, v46, &v66);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2082;
      swift_getErrorValue();
      v48 = MEMORY[0x22AA995D0](v64, v65);
      v50 = sub_226E97AE8(v48, v49, &v66);

      *(v42 + 24) = v50;
      _os_log_impl(&dword_226E8E000, v38, v39, "Failed to delete %{mask.hash}s with error: %{public}s", v42, 0x20u);
      v51 = v60;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v51, -1, -1);
      MEMORY[0x22AA9A450](v42, -1, -1);

      v61(v63, v58);
    }

    else
    {

      v56(v5, v33);
      v32(v36, v9);
    }
  }
}

void sub_2274B2754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v37 - v3;
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v37 - v8);
  v48 = sub_227663180();
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v12 + 8))(v14, v11);
  v15 = (a1 + 56);
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v42 = v50 + 8;
  v43 = v50 + 16;
  v41 = (v5 + 48);
  v39 = (v5 + 32);
  v49 = a1;

  v20 = MEMORY[0x277D84F90];
  v21 = 0;
  v44 = v19;
  v45 = (a1 + 56);
  v47 = v4;
LABEL_4:
  v22 = v21;
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
    v21 = v22;
LABEL_9:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = v50;
    v25 = v46;
    v26 = v48;
    (*(v50 + 16))(v46, *(v49 + 48) + *(v50 + 72) * (v23 | (v21 << 6)), v48);
    sub_227663160();
    v27 = v51;
    (*(v24 + 8))(v25, v26);
    v4 = v47;
    if ((*v41)(v27, 1, v47) != 1)
    {
      v28 = v27;
      v29 = *v39;
      (*v39)(v40, v28, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_2273A4ECC(0, *(v20 + 2) + 1, 1, v20);
      }

      v32 = *(v20 + 2);
      v31 = *(v20 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v38 = v32 + 1;
        v34 = sub_2273A4ECC((v31 > 1), v32 + 1, 1, v20);
        v33 = v38;
        v20 = v34;
      }

      *(v20 + 2) = v33;
      v29(&v20[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32], v40, v4);
      v15 = v45;
      goto LABEL_4;
    }

    sub_226FB1188(v27);
    v22 = v21;
    v19 = v44;
    v15 = v45;
  }

  while (v18);
  while (1)
  {
LABEL_6:
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = v15[v21];
    ++v22;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  v35 = *(v20 + 2);
  if (!v35)
  {
LABEL_21:

    return;
  }

  v36 = 0;
  v15 = (v5 + 8);
  while (v36 < *(v20 + 2))
  {
    (*(v5 + 16))(v9, &v20[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36], v4);
    sub_2274B21E8(v9);
    ++v36;
    (*v15)(v9, v4);
    if (v35 == v36)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  __break(1u);

  (*v15)(v9, v4);
  __break(1u);
}

id sub_2274B2CB0()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_2276623E0();
  v2 = sub_2276623E0();
  v6[0] = 0;
  v3 = [v0 moveItemAtURL:v1 toURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_2276622C0();

  return swift_willThrow();
}

uint64_t sub_2274B2DD4(uint64_t a1)
{
  sub_22766D370();
  sub_2276694E0();
  sub_2274B3174(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2274B2E7C(uint64_t a1, uint64_t a2)
{
  sub_2276694E0();
  sub_2274B3174(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();

  return sub_2276625A0();
}

uint64_t sub_2274B2F18(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_2276694E0();
  sub_2274B3174(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t type metadata accessor for SyncZoneChangeWindow(uint64_t a1)
{
  result = qword_28139A4F0;
  if (!qword_28139A4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2274B3054(uint64_t a1, uint64_t a2)
{
  sub_2276694E0();
  sub_2274B3174(&qword_28139B260, MEMORY[0x277D53DA0], MEMORY[0x277D53DB8]);
  sub_22766C290();
  sub_22766C290();
  if (v11 == v9 && v12 == v10)
  {
  }

  else
  {
    v5 = sub_22766D190();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6;
    }
  }

  v7 = type metadata accessor for SyncZoneChangeWindow(0);
  return sub_227130B5C(*(a1 + *(v7 + 20)), *(a1 + *(v7 + 20) + 8), *(a2 + *(v7 + 20)), *(a2 + *(v7 + 20) + 8));
}

uint64_t sub_2274B3174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2274B31E4(uint64_t a1)
{
  result = sub_2276694E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2274B3258(void *a1)
{
  v3 = sub_227669180();
  v4 = [a1 identifier];
  if (v4)
  {
    v5 = v4;
    sub_22766C000();

    [a1 startTime];
    [a1 duration];
    v6 = [a1 artwork];
    if (v6)
    {
      v7 = v6;
      sub_227662590();
    }

    sub_2274B3BC4(&qword_27D7BB870, MEMORY[0x277D53A78], MEMORY[0x277D53A68]);
    sub_2276683D0();
    if (v1)
    {

      return;
    }

    sub_227663620();
  }

  else
  {
    v8 = sub_227664DD0();
    sub_2274B3BC4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51028], v8);
    swift_willThrow();
  }
}

void *static MediaMoment.representativeSamples()()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE020, &qword_2276878B8);
  v23 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v1 = &v23 - v0;
  v32 = sub_227663680();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_227669180();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22766C090();
  sub_226F5D274();
  v25 = sub_22766BE70();
  v24 = sub_22766BE70();
  sub_227669170();
  v8 = sub_22766C380();
  *(v8 + 16) = 3;
  v9 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v4 + 16);
  v10(v9, v7, v3);
  v11 = *(v4 + 72);
  v28 = v5 + 16;
  v27 = v10;
  v10(v9 + v11, v7, v3);
  v12 = *(v5 + 32);
  v29 = v7;
  v30 = v3;
  v12(v9 + 2 * v11, v7, v3);
  v46 = v25;
  v47[0] = v26;
  v47[1] = v47;
  v47[2] = &v46;
  v44 = v8;
  v45 = v24;
  v47[3] = &v45;
  v47[4] = &v44;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE028, &qword_2276878C0);
  v36 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v37 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v38 = v37;
  v39 = sub_226F5BF60(&qword_27D7BE030, &qword_27D7BE028, &qword_2276878C0);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_226F1F3E8(0, v14, 0);
    v16 = 0;
    v26 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v17 = v35;
    v25 = v34 + 32;
    v18 = v23;
    while (v16 < *(v13 + 16))
    {
      v19 = v18;
      sub_2274B3A94(v26 + *(v18 + 72) * v16, v1);
      v27(v29, &v1[*(v33 + 80)], v30);

      v20 = v31;
      sub_227663620();
      sub_2274B3B04(v1);
      v35 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F3E8((v21 > 1), v22 + 1, 1);
        v17 = v35;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      result = (*(v34 + 32))(v17 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22, v20, v32);
      v18 = v19;
      if (v14 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2274B3A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE020, &qword_2276878B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274B3B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE020, &qword_2276878B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2274B3B6C(uint64_t a1)
{
  result = sub_2274B3BC4(&qword_27D7BE038, MEMORY[0x277D50018], &protocol conformance descriptor for MediaMoment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274B3BC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2274B3C0C(void *a1)
{
  v3 = sub_227669180();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227663630();
  v7 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663670();
  [a1 setStartTime_];
  sub_227663650();
  [a1 setDuration_];
  sub_227663640();
  sub_2274B3BC4(&qword_27D7BB870, MEMORY[0x277D53A78], MEMORY[0x277D53A68]);
  v8 = sub_2276683C0();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8;
    v11 = v6;
    v12 = v9;
    (*(v4 + 8))(v11, v3);
    v13 = sub_227662560();
    sub_226EDC420(v10, v12);
    [a1 setArtwork_];
  }
}

void *static EstimatedCalories.representativeSamples()()
{
  v14 = sub_227665100();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5D220();
  v3 = sub_22766CFA0();
  sub_226F5D274();
  v4 = sub_22766BE70();
  v5 = sub_22766BE70();
  v23 = v4;
  v24[0] = v3;
  v24[1] = v24;
  v24[2] = &v23;
  v22 = v5;
  v24[3] = &v22;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v21 = v20;
  v16 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v17 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v18 = v17;
  v6 = sub_2276638E0();

  v7 = *(v6 + 16);
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_226F20208(0, v7, 0);
    v9 = 0;
    v10 = v15;
    v11 = v6 + 48;
    while (v9 < *(v6 + 16))
    {
      sub_2276650B0();
      v15 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_226F20208((v12 > 1), v13 + 1, 1);
        v10 = v15;
      }

      ++v9;
      *(v10 + 16) = v13 + 1;
      result = (*(v0 + 32))(v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v13, v2, v14);
      v11 += 24;
      if (v7 == v9)
      {

        return v10;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2274B40C0(void *a1)
{
  if (([a1 activityType] & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [a1 activeCalorieRate];
    [a1 basalCalorieRate];
    sub_2276650B0();
  }
}

id sub_2274B4150(void *a1)
{
  v2 = sub_2276650C0();
  if (v2 >= 0x7FFFFFFF)
  {
    v3 = 0x7FFFFFFFLL;
  }

  else
  {
    v3 = v2;
  }

  [a1 setActivityType_];
  sub_2276650E0();
  [a1 setActiveCalorieRate_];
  sub_2276650D0();
  return [a1 setBasalCalorieRate_];
}

unint64_t sub_2274B41C4(uint64_t a1)
{
  result = sub_2274B41EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274B41EC()
{
  result = qword_2813A5718;
  if (!qword_2813A5718)
  {
    sub_227665100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5718);
  }

  return result;
}

unint64_t sub_2274B4268()
{
  result = qword_27D7BE040;
  if (!qword_27D7BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE040);
  }

  return result;
}

unint64_t sub_2274B42BC(uint64_t a1)
{
  result = sub_2274B42E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274B42E4()
{
  result = qword_27D7BE048;
  if (!qword_27D7BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE048);
  }

  return result;
}

uint64_t sub_2274B4338(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1ED70(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1ED70((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_2274B44D4()
{
  result = qword_27D7BE050;
  if (!qword_27D7BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE050);
  }

  return result;
}

unint64_t sub_2274B4528(uint64_t a1)
{
  result = sub_2274B4550();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274B4550()
{
  result = qword_27D7BE058;
  if (!qword_27D7BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE058);
  }

  return result;
}

uint64_t sub_2274B45A4(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EDF0(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EDF0((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_2274B46AC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22766C000();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    v9 = sub_227664DD0();
    sub_2274B4B24(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
  }
}

uint64_t sub_2274B47BC(void *a1)
{
  v2 = sub_2276622D0();
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v3;
    v22 = a1;
    sub_22766CA80();
    sub_2274B4B24(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_22766CBB0();
    if (v28)
    {
      v29 = MEMORY[0x277D84F90];
      v6 = &unk_227679670;
      do
      {
        sub_226F04970(&v27, v26);
        sub_226E97CC0(v26, v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, v6);
        if (swift_dynamicCast())
        {
          v7 = v2;
          v8 = v6;
          v9 = v24;
          ObjectType = swift_getObjectType();
          v11 = (*(v9 + 8))(ObjectType, v9);
          v13 = v12;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v26);
          if (v13)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
            }

            v15 = *(v29 + 2);
            v14 = *(v29 + 3);
            if (v15 >= v14 >> 1)
            {
              v29 = sub_226EB3F78((v14 > 1), v15 + 1, 1, v29);
            }

            v16 = v29;
            *(v29 + 2) = v15 + 1;
            v17 = &v16[16 * v15];
            *(v17 + 4) = v11;
            *(v17 + 5) = v13;
          }

          v6 = v8;
          v2 = v7;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v26);
        }

        sub_22766CBB0();
      }

      while (v28);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    (*(v23 + 8))(v5, v2);
    v19 = sub_226F3E6A8(v29);
    v20 = v22;

    return v19;
  }

  else
  {
    sub_226F62704();
    return sub_22766C5E0();
  }
}

void sub_2274B4AD0(void *a1)
{
  v2 = sub_22766BFD0();
  [a1 setIdentifier_];
}

uint64_t sub_2274B4B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2274B4BB0()
{
  result = qword_27D7BE060;
  if (!qword_27D7BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE060);
  }

  return result;
}

uint64_t dispatch thunk of ZoneRestrictionProviding.restriction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ZoneRestrictionProviding.effectiveRestriction(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E92F34;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2274B4E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v35[0] = a1;
  v35[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v35, v33, &unk_27D7BC990, &qword_227670A30);
  v16 = v34;
  if (v34)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v35, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = v24;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v35, 0);
  swift_endAccess();

  v29 = MEMORY[0x22AA99A00]();
  sub_227544604(a4);
  objc_autoreleasePoolPop(v29);
  swift_setDeallocating();

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v12 + v30, v31);
  return swift_deallocClassInstance();
}

uint64_t sub_2274B52C0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_2276644F0();
  v12 = v11;
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v33[0] = v10;
  v33[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v33, v31, &unk_27D7BC990, &qword_227670A30);
  v14 = v32;
  if (v32)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v22 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v33, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v23 = v22;
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v33, 0);
  swift_endAccess();

  v27 = MEMORY[0x22AA99A00]();
  sub_227544C34(v34);
  objc_autoreleasePoolPop(v27);
  swift_setDeallocating();

  v28 = qword_2813B2078;
  v29 = sub_22766A100();
  (*(*(v29 - 8) + 8))(v7 + v28, v29);
  return swift_deallocClassInstance();
}

uint64_t sub_2274B56F4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_227666A90();
  v12 = v11;
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v33[0] = v10;
  v33[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v33, v31, &unk_27D7BC990, &qword_227670A30);
  v14 = v32;
  if (v32)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v22 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1B8 qword_227688130))];

  sub_226E97D1C(v33, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v23 = v22;
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v33, 0);
  swift_endAccess();

  v27 = MEMORY[0x22AA99A00]();
  sub_227544C9C(v34);
  objc_autoreleasePoolPop(v27);
  swift_setDeallocating();

  v28 = qword_2813B2078;
  v29 = sub_22766A100();
  (*(*(v29 - 8) + 8))(v7 + v28, v29);
  return swift_deallocClassInstance();
}

void sub_2274B5B28(uint64_t a1, char *a2, void (*a3)(char *, char *, uint64_t))
{
  v166 = a2;
  v167 = a3;
  v142 = a1;
  v168 = sub_227662750();
  v162 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v154 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v160 = &v139 - v5;
  MEMORY[0x28223BE20](v6);
  v163 = &v139 - v7;
  MEMORY[0x28223BE20](v8);
  v161 = &v139 - v9;
  MEMORY[0x28223BE20](v10);
  v153 = &v139 - v11;
  MEMORY[0x28223BE20](v12);
  v152 = &v139 - v13;
  MEMORY[0x28223BE20](v14);
  v151 = &v139 - v15;
  MEMORY[0x28223BE20](v16);
  v159 = &v139 - v17;
  MEMORY[0x28223BE20](v18);
  v165 = &v139 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v139 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v139 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v139 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v139 - v33;
  v35 = sub_2276629D0();
  v164 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DateIntervalSessionThreshold(0);
  v39 = (v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v139 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_227662010();
  (*(*(v42 - 8) + 16))(v41, v166, v42);
  *&v41[v39[7]] = 0x4072C00000000000;
  v43 = &v41[v39[8]];
  *v43 = 0;
  v43[8] = 1;
  *&v41[v39[9]] = 0x3FE0000000000000;
  v44 = v170;
  v45 = sub_2274B99DC(v41, v167);
  v46 = v44;
  if (v44)
  {
    sub_226F733F0(v41);
    return;
  }

  v166 = v25;
  v144 = v28;
  v156 = v22;
  v141 = 0;
  v140 = v41;
  v148 = v31;
  v47 = v162;
  v48 = v45;
  v49 = [objc_opt_self() hk_gregorianCalendar];
  if (!v49)
  {
    goto LABEL_48;
  }

  v50 = v49;
  sub_227662990();
  v51 = v164;
  if ((*(v164 + 48))(v34, 1, v35) == 1)
  {
    sub_226E97D1C(v34, &unk_27D7BF3D0, &unk_227675740);
  }

  else
  {
    (*(v51 + 32))(v37, v34, v35);
    v52 = sub_2276629A0();
    [v50 setTimeZone_];

    (*(v51 + 8))(v37, v35);
  }

  v53 = v159;
  v54 = v50;
  v55 = v141;
  v56 = sub_2274B8888(v48, v54);
  v57 = v55;

  v158 = v54;

  v58 = sub_226F4374C(v56);

  v59 = *(v58 + 16);
  v157 = v58;
  if (!v59)
  {
    goto LABEL_10;
  }

  v60 = sub_2274CD808(v59, 0);
  sub_2274CE3D4(v169, &v60[(*(v47 + 80) + 32) & ~*(v47 + 80)], v59, v58);
  v62 = v61;
  v63 = v169[0];
  v170 = v169[3];
  v167 = v169[4];

  sub_226EBB21C(v63);
  v64 = v148;
  if (v62 != v59)
  {
    __break(1u);
LABEL_10:
    v60 = MEMORY[0x277D84F90];
    v64 = v148;
  }

  v65 = v163;
  v66 = v53;
  v169[0] = v60;

  sub_2274B74A4(v169);
  v46 = v57;
  if (v57)
  {
    goto LABEL_49;
  }

  v67 = v169[0];
  v68 = *(v169[0] + 16);
  v69 = *(v47 + 56);
  v147 = v47 + 56;
  v146 = v69;
  v69(v64, 1, 1, v168);
  if (v68 < 2)
  {

    if (v68 != 1 || !*(v67 + 16))
    {

      sub_226E97D1C(v64, &qword_27D7B9690, qword_227670B50);
      sub_226F733F0(v140);
      v146(v142, 1, 1, v168);
      return;
    }

    v141 = 0;
    v70 = v47;
    v71 = v168;
    (*(v47 + 16))(v65, v67 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v168);

    v72 = v66;
    v73 = v161;
    v74 = *(v70 + 32);
    v170 = v70 + 32;
    v167 = v74;
    v74(v161, v65, v71);
    v75 = *MEMORY[0x277CCE2F8];
    sub_227662720();
    v76 = sub_2276626A0();
    v77 = v71;
    v80 = *(v70 + 8);
    v79 = v70 + 8;
    v78 = v80;
    v80(v72, v71);
    v81 = v158;
    v82 = [v158 hk:v75 startOfWeekWithFirstWeekday:v76 beforeDate:0 addingWeeks:?];

    v83 = v160;
    sub_227662710();

    v84 = sub_2276626A0();
    v85 = [v81 dateByAddingUnit:16 value:-7 toDate:v84 options:0];

    if (v85)
    {
      v162 = v79;
      v86 = v154;
      sub_227662710();

      v87 = sub_2276626A0();
      v88 = sub_2276626A0();
      v89 = [v81 isDate:v87 equalToDate:v88 toUnitGranularity:16];

      if (v89)
      {

        v77 = v168;
        v78(v86, v168);
        v78(v83, v77);
        sub_226E97D1C(v148, &qword_27D7B9690, qword_227670B50);
        sub_226F733F0(v140);
LABEL_43:
        v134 = v166;
        v167(v166, v73, v77);
        v135 = 0;
        v136 = v77;
LABEL_45:
        v146(v134, v135, 1, v136);
        v137 = v134;
        v138 = v148;
        sub_226EDDCD0(v137, v148);
        sub_226EDDCD0(v138, v142);
        return;
      }

      v131 = sub_2276626A0();
      v132 = sub_2276626A0();
      v133 = [v81 isDate:v131 equalToDate:v132 toUnitGranularity:16];

      v77 = v168;
      v78(v86, v168);
      v78(v83, v77);
      sub_226E97D1C(v148, &qword_27D7B9690, qword_227670B50);
      sub_226F733F0(v140);
      if (v133)
      {
        goto LABEL_43;
      }
    }

    else
    {

      v78(v83, v77);
      sub_226E97D1C(v64, &qword_27D7B9690, qword_227670B50);
      sub_226F733F0(v140);
    }

    v78(v73, v77);
    v135 = 1;
    v136 = v77;
    v134 = v166;
    goto LABEL_45;
  }

  v154 = v68;
  v141 = 0;
  v143 = 0;
  v90 = 0;
  v91 = *(v47 + 16);
  v92 = (v67 + ((*(v47 + 80) + 32) & ~*(v47 + 80)));
  v93 = *(v47 + 72);
  v94 = 1;
  v150 = *MEMORY[0x277CCE2F8];
  v162 = v47 + 16;
  v163 = 1;
  v95 = 1;
  v96 = v156;
  v155 = v67;
  v160 = v91;
  v164 = v47 + 8;
  v149 = v93;
  while (1)
  {
    v166 = v94;
    v170 = v95;
    v98 = v93;
    v46 = v90;
    v99 = v98;
    v100 = v96;
    v101 = v168;
    v102 = v91;
    (v91)(v100, v92 + v98, v168);
    if ((v170 - 1) >= *(v67 + 16))
    {
      break;
    }

    v167 = v92;
    v102(v66, v92, v101);
    sub_22766C510();
    sub_227662690();
    v103 = *v164;
    (*v164)(v66, v101);
    v104 = sub_2276626A0();
    v105 = sub_2276626A0();
    v106 = v158;
    v107 = [v158 isDate:v104 equalToDate:v105 toUnitGranularity:16];

    LODWORD(v161) = v107;
    if (v107)
    {
      v108 = v163 + 1;
      if (__OFADD__(v163, 1))
      {
        goto LABEL_47;
      }

      v90 = v46;
      v166 = (v163 + 1);
      v97 = v163 + 1;
    }

    else
    {
      v108 = 0;
      v97 = v163;
      v90 = v46;
    }

    v163 = v108;
    v93 = v99;
    if (v170 == *(v157 + 16) - 1)
    {
      v109 = v168;
      v110 = v167 + v93;
      v111 = v151;
      (v160)(v151, v110, v168);
      v112 = v159;
      sub_227662720();
      v113 = sub_2276626A0();
      (v103)(v112, v109);
      v114 = [v106 hk:v150 startOfWeekWithFirstWeekday:v113 beforeDate:0 addingWeeks:?];

      v115 = v152;
      sub_227662710();

      v116 = sub_2276626A0();
      v117 = [v106 dateByAddingUnit:16 value:-7 toDate:v116 options:0];

      if (!v117)
      {
        v123 = v168;
        (v103)(v115, v168);
        (v103)(v111, v123);
        v122 = v165;
        v93 = v149;
LABEL_38:
        (v103)(v122, v168);
        v96 = v156;
        v103();
        v97 = v166;
        goto LABEL_20;
      }

      sub_227662710();

      v118 = sub_2276626A0();
      v119 = sub_2276626A0();
      v120 = [v106 isDate:v118 equalToDate:v119 toUnitGranularity:16];

      if (v120)
      {
        v121 = v168;
        (v103)(v153, v168);
        (v103)(v115, v121);
        (v103)(v111, v121);
        v122 = v165;
        v93 = v149;
      }

      else
      {
        v124 = sub_2276626A0();
        v125 = v153;
        v126 = sub_2276626A0();
        v145 = [v158 isDate:v124 equalToDate:v126 toUnitGranularity:16];

        v127 = v168;
        (v103)(v125, v168);
        (v103)(v115, v127);
        (v103)(v111, v127);
        v122 = v165;
        v93 = v149;
        if (!v145)
        {
          goto LABEL_38;
        }
      }

      v128 = v168;
      v129 = v144;
      (v160)(v144, v167 + v93, v168);
      (v103)(v122, v128);
      v96 = v156;
      v103();
      v130 = v148;
      sub_226E97D1C(v148, &qword_27D7B9690, qword_227670B50);
      v146(v129, 0, 1, v128);
      sub_226EDDCD0(v129, v130);
      v143 = v97;
    }

    else
    {
      (v103)(v165, v168);
      v96 = v156;
      v103();
      v97 = v166;
    }

LABEL_20:
    v95 = v170 + 1;
    if (v90 <= v97)
    {
      v90 = v97;
    }

    if (v161)
    {
      v94 = v97;
    }

    else
    {
      v94 = 0;
    }

    v92 = (v167 + v93);
    v67 = v155;
    v66 = v159;
    v91 = v160;
    if (v154 == v95)
    {

      sub_226F733F0(v140);
      sub_226EDDCD0(v148, v142);
      return;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:

  __break(1u);
}

uint64_t sub_2274B6BAC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_227666B60();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2274B52C0(a1, v10);
  if (!v2)
  {
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_226E97D1C(v10, &qword_27D7B8F20, &qword_2276767D0);
      sub_226F73CD0();
      swift_allocError();
      *v16 = 8;
      return swift_willThrow();
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_2274B56F4(a1, v7);
      v17 = sub_227666FF0();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v7, 1, v17) == 1)
      {
        sub_226E97D1C(v7, &qword_27D7B8FA8, &unk_227672A50);
        sub_226F73CD0();
        swift_allocError();
        *v19 = 2;
        swift_willThrow();
        return (*(v12 + 8))(v14, v11);
      }

      else
      {
        (*(v12 + 8))(v14, v11);
        return (*(v18 + 32))(a2, v7, v17);
      }
    }
  }

  return result;
}

uint64_t sub_2274B6F0C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_227666B60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2274B52C0(a2, v6);
  if (!v2)
  {
    v24 = 0;
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_226E97D1C(v6, &qword_27D7B8F20, &qword_2276767D0);
      sub_226F73CD0();
      swift_allocError();
      *v11 = 8;
      swift_willThrow();
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v13 = sub_227666B50();
      v15 = v14;
      v25 = v13;
      v26 = v14;
      v17 = v16 & 1;
      v27 = v16 & 1;
      v28 = 0;
      sub_22738F9B0();
      sub_226ED56C4();
      v18 = sub_227663B30();
      sub_226EB2DFC(v13, v15, v17);
      if (v18)
      {
        (*(v8 + 8))(v10, v7);
        LOBYTE(v6) = 1;
      }

      else
      {
        v19 = sub_227666B50();
        v21 = v20;
        v25 = v19;
        v26 = v20;
        v23 = v22 & 1;
        v27 = v22 & 1;
        v28 = 1;
        LOBYTE(v6) = sub_227663B30();
        sub_226EB2DFC(v19, v21, v23);
        (*(v8 + 8))(v10, v7);
      }
    }
  }

  return v6 & 1;
}

void sub_2274B71C4(char *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_2274B5B28(&v23 - v17, a1, a2);
  if (!v3)
  {
    v19 = v24;
    sub_226E93170(v18, v15, &qword_27D7B9690, qword_227670B50);
    if ((*(v7 + 48))(v15, 1, v6) == 1)
    {
      sub_226E97D1C(v18, &qword_27D7B9690, qword_227670B50);
      v20 = 1;
      v18 = v15;
      v21 = v19;
    }

    else
    {
      (*(v7 + 32))(v12, v15, v6);
      (*(v7 + 16))(v9, v12, v6);
      v21 = v19;
      sub_227666790();
      (*(v7 + 8))(v12, v6);
      v20 = 0;
    }

    sub_226E97D1C(v18, &qword_27D7B9690, qword_227670B50);
    v22 = sub_2276667B0();
    (*(*(v22 - 8) + 56))(v21, v20, 1, v22);
  }
}

void sub_2274B74A4(void *a1)
{
  v2 = *(sub_227662750() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117778(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2274B754C(v5);
  *a1 = v3;
}

void sub_2274B754C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227662750();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227662750() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2274B7908(v8, v9, a1, v4);
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
    sub_2274B7678(0, v2, 1, a1);
  }
}

void sub_2274B7678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227662750();
  MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v30 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      sub_2274BD454();
      v25 = sub_22766BF80();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2274B7908(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v126 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v119 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v119 - v15;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v140 = &v119 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = a4;
    }

    else
    {
LABEL_128:
      v113 = sub_2271171D0(a4);
    }

    v142 = v113;
    v114 = *(v113 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        a4 = v114 - 1;
        v115 = *&v113[16 * v114];
        v116 = v113;
        v117 = *&v113[16 * v114 + 24];
        sub_2274B82F8(*a3 + *(v10 + 72) * v115, *a3 + *(v10 + 72) * *&v113[16 * v114 + 16], *a3 + *(v10 + 72) * v117, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v117 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_2271171D0(v116);
        }

        if (v114 - 2 >= *(v116 + 2))
        {
          goto LABEL_122;
        }

        v118 = &v116[16 * v114];
        *v118 = v115;
        *(v118 + 1) = v117;
        v142 = v116;
        sub_227117144(a4);
        v113 = v142;
        v114 = *(v142 + 2);
        if (v114 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v137 = (v10 + 8);
  v138 = v10 + 16;
  v136 = (v10 + 32);
  v21 = MEMORY[0x277D84F90];
  v124 = a3;
  v121 = a4;
  v141 = v9;
  v120 = v10;
  while (1)
  {
    v22 = v20;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v36 = v20 + 1;
    }

    else
    {
      v132 = v19;
      v23 = v9;
      v24 = *a3;
      v25 = v10;
      v26 = *(v10 + 72);
      v5 = v24 + v26 * (v20 + 1);
      v128 = v24;
      v27 = *(v25 + 16);
      v27(v140, v5, v23, v17);
      v28 = v24 + v26 * v22;
      v29 = v25;
      v123 = v22;
      v30 = v139;
      v131 = v27;
      (v27)(v139, v28, v23);
      v31 = sub_2274BD454();
      v32 = v140;
      v130 = v31;
      LODWORD(v133) = sub_22766BF80();
      v33 = *(v29 + 8);
      v33(v30, v23);
      v129 = v33;
      v33(v32, v23);
      v34 = v123 + 2;
      v135 = v26;
      v35 = v128 + v26 * (v123 + 2);
      while (1)
      {
        v36 = v132;
        if (v132 == v34)
        {
          break;
        }

        v38 = v140;
        v37 = v141;
        v39 = v131;
        (v131)(v140, v35, v141);
        v40 = v6;
        v41 = v139;
        v39(v139, v5, v37);
        v42 = sub_22766BF80() & 1;
        v43 = v41;
        v6 = v40;
        v44 = v129;
        v129(v43, v37);
        v44(v38, v37);
        ++v34;
        v35 += v135;
        v5 += v135;
        if ((v133 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v22 = v123;
      a3 = v124;
      v10 = v120;
      v21 = v127;
      a4 = v121;
      v9 = v141;
      if (v133)
      {
        if (v36 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v36)
        {
          v45 = v135 * (v36 - 1);
          v5 = v36 * v135;
          v132 = v36;
          v46 = v36;
          v47 = v123;
          v48 = v123 * v135;
          do
          {
            if (v47 != --v46)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_131;
              }

              v133 = *v136;
              (v133)(v126, &v50[v48], v141, v21);
              if (v48 < v45 || &v50[v48] >= &v50[v5])
              {
                v49 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v141;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v50[v45], v126, v49);
              a3 = v124;
              v21 = v127;
            }

            ++v47;
            v45 -= v135;
            v5 -= v135;
            v48 += v135;
          }

          while (v47 < v46);
          v10 = v120;
          a4 = v121;
          v9 = v141;
          v22 = v123;
          v36 = v132;
        }
      }
    }

    v51 = a3[1];
    if (v36 < v51)
    {
      if (__OFSUB__(v36, v22))
      {
        goto LABEL_124;
      }

      if (v36 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v36 != v5)
        {
          break;
        }
      }
    }

    v5 = v36;
    if (v36 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v127;
    }

    else
    {
      v21 = sub_2273A4F9C(0, *(v127 + 2) + 1, 1, v127);
    }

    a4 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      v21 = sub_2273A4F9C((v52 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    v128 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v5 - 1;
        if (v5 - 1 >= v53)
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

        if (!*a3)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a4 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_2274B82F8(*a3 + *(v10 + 72) * v94, *a3 + *(v10 + 72) * *&v21[16 * v5 + 32], *a3 + *(v10 + 72) * v95, v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_2271171D0(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v142 = v93;
        sub_227117144(v5);
        v21 = v142;
        v53 = *(v142 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v128;
    a4 = v121;
    v9 = v141;
    if (v128 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = *(v10 + 72);
  v135 = *(v10 + 16);
  v99 = v97 + v98 * (v36 - 1);
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = v100 - v36;
  v133 = v97;
  v125 = v98;
  a4 = v97 + v36 * v98;
  v128 = v5;
LABEL_85:
  v131 = v99;
  v132 = v36;
  v129 = a4;
  v130 = v102;
  v103 = v99;
  while (1)
  {
    v104 = v140;
    v105 = v135;
    (v135)(v140, a4, v9, v21);
    v106 = v139;
    v105(v139, v103, v141);
    sub_2274BD454();
    v107 = sub_22766BF80();
    v108 = *v137;
    v109 = v106;
    v9 = v141;
    (*v137)(v109, v141);
    v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v36 = v132 + 1;
      v99 = &v131[v125];
      v102 = v130 - 1;
      a4 = v129 + v125;
      v5 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v119;
      v22 = v123;
      a3 = v124;
      v10 = v120;
      if (v128 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v110 = *v136;
    v111 = v134;
    (*v136)(v134, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    a4 += v101;
    if (__CFADD__(v102++, 1))
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

void sub_2274B82F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = sub_227662750();
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v54 = a3;
  v15 = (a2 - a1) / v13;
  v58 = a1;
  v57 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v17;
    if (v17 >= 1)
    {
      v28 = -v13;
      v47 = (v8 + 8);
      v48 = (v8 + 16);
      v29 = a4 + v17;
      v30 = v54;
      v45 = a1;
      v46 = a4;
      v49 = v28;
      do
      {
        v43 = v27;
        v31 = a2 + v28;
        v32 = v27;
        v50 = a2;
        v51 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v58 = a2;
            v27 = v43;
            goto LABEL_59;
          }

          v34 = v30;
          v44 = v32;
          v54 = v30 + v28;
          v35 = v29 + v28;
          v36 = *v48;
          v37 = v52;
          v38 = v29 + v28;
          v39 = v29;
          v40 = v55;
          (*v48)(v52, v38, v55);
          v41 = v53;
          (v36)(v53, v31, v40);
          sub_2274BD454();
          LOBYTE(v36) = sub_22766BF80();
          v42 = *v47;
          (*v47)(v41, v40);
          v42(v37, v40);
          if (v36)
          {
            break;
          }

          v32 = v35;
          v30 = v54;
          if (v34 < v39 || v54 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
            a1 = v45;
          }

          else
          {
            v31 = v51;
            a1 = v45;
            if (v34 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v33 = v35 > v46;
          v28 = v49;
          a2 = v50;
          if (!v33)
          {
            v27 = v32;
            goto LABEL_58;
          }
        }

        v30 = v54;
        if (v34 < v50 || v54 >= v50)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v45;
          v29 = v39;
        }

        else
        {
          a2 = v51;
          a1 = v45;
          v29 = v39;
          if (v34 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v44;
        v28 = v49;
      }

      while (v29 > v46);
    }

LABEL_58:
    v58 = a2;
LABEL_59:
    v56 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v16;
    v56 = a4 + v16;
    if (v16 >= 1 && a2 < v54)
    {
      v49 = *(v8 + 16);
      v50 = v8 + 16;
      v47 = v13;
      v48 = (v8 + 8);
      do
      {
        v19 = v52;
        v20 = v55;
        v21 = v49;
        v49(v52, a2, v55);
        v22 = v53;
        v21(v53, a4, v20);
        sub_2274BD454();
        v23 = sub_22766BF80();
        v24 = *v48;
        (*v48)(v22, v20);
        v24(v19, v20);
        if (v23)
        {
          v25 = v47;
          if (a1 < a2 || a1 >= v47 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v47;
          v26 = v47 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = v26;
          a4 += v25;
        }

        a1 += v25;
        v58 = a1;
      }

      while (a4 < v51 && a2 < v54);
    }
  }

  sub_227117244(&v58, &v57, &v56);
}

uint64_t sub_2274B8888(uint64_t a1, void *a2)
{
  v44 = a2;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = v36 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v36[1] = v2;
    v51 = MEMORY[0x277D84F90];
    sub_226F1FB88(0, v9, 0);
    v49 = a1 + 56;
    v50 = v51;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v13 = *MEMORY[0x277CCE2F8];
    v41 = v5 + 16;
    v42 = v13;
    v39 = v5 + 32;
    v40 = v5 + 8;
    v37 = a1 + 64;
    v38 = v9;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v49 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      v16 = *(a1 + 36);
      v46 = v12;
      v47 = v16;
      v17 = *(a1 + 48);
      v48 = *(v5 + 72);
      v18 = v43;
      (*(v5 + 16))(v43, v17 + v48 * v11, v4);
      v19 = sub_2276626A0();
      v20 = v5;
      v21 = [v44 hk:v42 startOfWeekWithFirstWeekday:v19 beforeDate:0 addingWeeks:?];

      v22 = v45;
      sub_227662710();

      (*(v20 + 8))(v18, v4);
      v23 = v50;
      v51 = v50;
      v24 = a1;
      v26 = *(v50 + 16);
      v25 = *(v50 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1FB88((v25 > 1), v26 + 1, 1);
        v22 = v45;
        v23 = v51;
      }

      *(v23 + 16) = v26 + 1;
      v27 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v50 = v23;
      result = (*(v20 + 32))(v23 + v27 + v26 * v48, v22, v4);
      v14 = 1 << *(v24 + 32);
      if (v11 >= v14)
      {
        goto LABEL_24;
      }

      v28 = *(v49 + 8 * v15);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v24;
      if (v47 != *(v24 + 36))
      {
        goto LABEL_26;
      }

      v5 = v20;
      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v14 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v20;
        v31 = v15 << 6;
        v32 = v15 + 1;
        v33 = (v37 + 8 * v15);
        while (v32 < (v14 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_226EB526C(v11, v47, 0);
            v14 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v11, v47, 0);
LABEL_19:
        v5 = v30;
      }

      v12 = v46 + 1;
      v11 = v14;
      if (v46 + 1 == v38)
      {
        return v50;
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

uint64_t sub_2274B8C4C(uint64_t a1, void *a2)
{
  v110 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = &v95 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v95 - v11;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = v13[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v18 = swift_allocObject();
  v19 = v14;
  v20 = v15;

  sub_22766A070();
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  swift_getKeyPath();
  sub_227662000();
  v21 = sub_227662750();
  v22 = *(v21 - 8);
  v98 = *(v22 + 56);
  v99 = v22 + 56;
  v98(v12, 0, 1, v21);
  v104 = v12;
  sub_226E93170(v12, v9, &qword_27D7B9690, qword_227670B50);
  v96 = *(v22 + 48);
  v97 = v22 + 48;
  v23 = v96(v9, 1, v21);
  v95 = v22;
  if (v23 == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B9690, qword_227670B50);
    v108 = 0u;
    v109 = 0u;
  }

  else
  {
    *(&v109 + 1) = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v108);
    (*(v22 + 32))(boxed_opaque_existential_0, v9, v21);
  }

  v25 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v101 = v25;
  v26 = sub_22766C820();
  sub_226E93170(&v108, v106, &unk_27D7BC990, &qword_227670A30);
  v27 = v107;
  if (v107)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v106, v107);
    v29 = *(v27 - 8);
    v30 = MEMORY[0x28223BE20](v28);
    v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    __swift_destroy_boxed_opaque_existential_0(v106);
  }

  else
  {
    v33 = 0;
  }

  v105 = objc_opt_self();
  v34 = [v105 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v35 = [objc_allocWithZone(v103) initWithLeftExpression:v26 rightExpression:v34 modifier:0 type:3 options:0];

  sub_226E97D1C(v104, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v108, &unk_27D7BC990, &qword_227670A30);
  v36 = qword_2813B2078;
  swift_beginAccess();
  v37 = v35;
  v104 = v36;
  v38 = sub_22766A080();
  v40 = v39;
  MEMORY[0x22AA985C0]();
  if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v38(&v108, 0);
  swift_endAccess();

  swift_getKeyPath();
  v41 = v102;
  sub_227661FE0();
  v98(v41, 0, 1, v21);
  v42 = v100;
  sub_226E93170(v41, v100, &qword_27D7B9690, qword_227670B50);
  if (v96(v42, 1, v21) == 1)
  {
    sub_226E97D1C(v42, &qword_27D7B9690, qword_227670B50);
    v108 = 0u;
    v109 = 0u;
  }

  else
  {
    *(&v109 + 1) = v21;
    v43 = __swift_allocate_boxed_opaque_existential_0(&v108);
    (*(v95 + 32))(v43, v42, v21);
  }

  v44 = sub_22766C820();
  sub_226E93170(&v108, v106, &unk_27D7BC990, &qword_227670A30);
  v45 = v107;
  if (v107)
  {
    v46 = __swift_project_boxed_opaque_existential_0(v106, v107);
    v47 = *(v45 - 8);
    v48 = MEMORY[0x28223BE20](v46);
    v50 = &v95 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50, v48);
    v51 = sub_22766D170();
    (*(v47 + 8))(v50, v45);
    __swift_destroy_boxed_opaque_existential_0(v106);
  }

  else
  {
    v51 = 0;
  }

  v52 = [v105 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v53 = [objc_allocWithZone(v103) initWithLeftExpression:v44 rightExpression:v52 modifier:0 type:0 options:0];

  sub_226E97D1C(v102, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v108, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v54 = v53;
  v55 = sub_22766A080();
  v57 = v56;
  MEMORY[0x22AA985C0]();
  if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v55(&v108, 0);
  swift_endAccess();

  swift_getKeyPath();
  v58 = type metadata accessor for DateIntervalSessionThreshold(0);
  v59 = *(v110 + *(v58 + 28));
  v60 = MEMORY[0x277D839F8];
  *(&v109 + 1) = MEMORY[0x277D839F8];
  *&v108 = v59;

  v61 = sub_22766C820();
  sub_226E93170(&v108, v106, &unk_27D7BC990, &qword_227670A30);
  v62 = v107;
  if (v107)
  {
    v63 = __swift_project_boxed_opaque_existential_0(v106, v107);
    v64 = *(v62 - 8);
    v65 = MEMORY[0x28223BE20](v63);
    v67 = &v95 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v67, v65);
    v68 = sub_22766D170();
    (*(v64 + 8))(v67, v62);
    v60 = MEMORY[0x277D839F8];
    __swift_destroy_boxed_opaque_existential_0(v106);
  }

  else
  {
    v68 = 0;
  }

  v69 = [v105 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v70 = [objc_allocWithZone(v103) initWithLeftExpression:v61 rightExpression:v69 modifier:0 type:2 options:0];

  sub_226E97D1C(&v108, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v71 = v70;
  v72 = sub_22766A080();
  v74 = v73;
  MEMORY[0x22AA985C0]();
  if (*((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v72(&v108, 0);
  swift_endAccess();

  swift_getKeyPath();
  v75 = v110 + *(v58 + 24);
  v76 = *v75;
  if (*(v75 + 8))
  {
    v76 = 1.79769313e308;
  }

  *(&v109 + 1) = v60;
  *&v108 = v76;

  v77 = sub_22766C820();
  sub_226E93170(&v108, v106, &unk_27D7BC990, &qword_227670A30);
  v78 = v107;
  if (v107)
  {
    v79 = __swift_project_boxed_opaque_existential_0(v106, v107);
    v80 = *(v78 - 8);
    v81 = MEMORY[0x28223BE20](v79);
    v83 = &v95 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v83, v81);
    v84 = sub_22766D170();
    (*(v80 + 8))(v83, v78);
    __swift_destroy_boxed_opaque_existential_0(v106);
  }

  else
  {
    v84 = 0;
  }

  v85 = [v105 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v86 = [objc_allocWithZone(v103) initWithLeftExpression:v77 rightExpression:v85 modifier:0 type:1 options:0];

  sub_226E97D1C(&v108, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v87 = v86;
  v88 = sub_22766A080();
  v90 = v89;
  MEMORY[0x22AA985C0]();
  if (*((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v88(&v108, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  KeyPath = swift_getKeyPath();
  sub_2273FC7CC(KeyPath);
  v93 = v92;

  return v93;
}

uint64_t sub_2274B99DC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v124 = (&v117 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v117 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v117 - v12;
  v14 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  v18 = v14[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v19 = swift_allocObject();
  v20 = v15;
  v21 = v16;

  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  swift_getKeyPath();
  v133 = a1;
  sub_227662000();
  v22 = sub_227662750();
  v23 = *(v22 - 8);
  v120 = *(v23 + 7);
  v121 = v23 + 56;
  v120(v13, 0, 1, v22);
  sub_226E93170(v13, v10, &qword_27D7B9690, qword_227670B50);
  v118 = *(v23 + 6);
  v119 = v23 + 48;
  if (v118(v10, 1, v22) == 1)
  {
    sub_226E97D1C(v10, &qword_27D7B9690, qword_227670B50);
    v131 = 0u;
    v132 = 0u;
  }

  else
  {
    *(&v132 + 1) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v131);
    (*(v23 + 4))(boxed_opaque_existential_0, v10, v22);
  }

  v25 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v128 = v25;
  v26 = sub_22766C820();
  sub_226E93170(&v131, v129, &unk_27D7BC990, &qword_227670A30);
  v27 = v130;
  if (v130)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v129, v130);
    v126 = v23;
    v127 = v13;
    v29 = *(v27 - 8);
    v30 = MEMORY[0x28223BE20](v28);
    v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    v23 = v126;
    v13 = v127;
    __swift_destroy_boxed_opaque_existential_0(v129);
  }

  else
  {
    v33 = 0;
  }

  v127 = objc_opt_self();
  v34 = [v127 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v35 = [objc_allocWithZone(v126) initWithLeftExpression:v26 rightExpression:v34 modifier:0 type:3 options:0];

  sub_226E97D1C(v13, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
  v36 = qword_2813B2078;
  swift_beginAccess();
  v37 = v35;
  v125 = v36;
  v38 = sub_22766A080();
  v40 = v39;
  MEMORY[0x22AA985C0]();
  if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v38(&v131, 0);
  swift_endAccess();

  swift_getKeyPath();
  v41 = v124;
  sub_227661FE0();
  v120(v41, 0, 1, v22);
  v42 = v122;
  sub_226E93170(v41, v122, &qword_27D7B9690, qword_227670B50);
  if (v118(v42, 1, v22) == 1)
  {
    sub_226E97D1C(v42, &qword_27D7B9690, qword_227670B50);
    v131 = 0u;
    v132 = 0u;
  }

  else
  {
    *(&v132 + 1) = v22;
    v43 = __swift_allocate_boxed_opaque_existential_0(&v131);
    (*(v23 + 4))(v43, v42, v22);
  }

  v44 = sub_22766C820();
  sub_226E93170(&v131, v129, &unk_27D7BC990, &qword_227670A30);
  v45 = v130;
  if (v130)
  {
    v46 = __swift_project_boxed_opaque_existential_0(v129, v130);
    v47 = *(v45 - 8);
    v48 = MEMORY[0x28223BE20](v46);
    v50 = &v117 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50, v48);
    v51 = sub_22766D170();
    (*(v47 + 8))(v50, v45);
    __swift_destroy_boxed_opaque_existential_0(v129);
  }

  else
  {
    v51 = 0;
  }

  v52 = [v127 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v53 = [objc_allocWithZone(v126) initWithLeftExpression:v44 rightExpression:v52 modifier:0 type:0 options:0];

  sub_226E97D1C(v124, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v54 = v53;
  v55 = sub_22766A080();
  v57 = v56;
  MEMORY[0x22AA985C0]();
  if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v55(&v131, 0);
  swift_endAccess();

  swift_getKeyPath();
  v58 = type metadata accessor for DateIntervalSessionThreshold(0);
  v59 = *(v133 + v58[5]);
  v60 = MEMORY[0x277D839F8];
  *(&v132 + 1) = MEMORY[0x277D839F8];
  *&v131 = v59;

  v61 = sub_22766C820();
  sub_226E93170(&v131, v129, &unk_27D7BC990, &qword_227670A30);
  v62 = v130;
  if (v130)
  {
    v63 = __swift_project_boxed_opaque_existential_0(v129, v130);
    v124 = &v117;
    v64 = v19;
    v65 = v60;
    v66 = *(v62 - 8);
    v67 = MEMORY[0x28223BE20](v63);
    v69 = &v117 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v69, v67);
    v70 = sub_22766D170();
    (*(v66 + 8))(v69, v62);
    v60 = v65;
    v19 = v64;
    __swift_destroy_boxed_opaque_existential_0(v129);
  }

  else
  {
    v70 = 0;
  }

  v71 = [v127 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v72 = [objc_allocWithZone(v126) initWithLeftExpression:v61 rightExpression:v71 modifier:0 type:2 options:0];

  sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v73 = v72;
  v74 = sub_22766A080();
  v76 = v75;
  MEMORY[0x22AA985C0]();
  if (*((*v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v74(&v131, 0);
  swift_endAccess();

  swift_getKeyPath();
  v77 = *(v133 + v58[7]);
  *(&v132 + 1) = v60;
  *&v131 = v77;

  v78 = sub_22766C820();
  sub_226E93170(&v131, v129, &unk_27D7BC990, &qword_227670A30);
  v79 = v130;
  if (v130)
  {
    v80 = __swift_project_boxed_opaque_existential_0(v129, v130);
    v124 = v19;
    v81 = v58;
    v82 = *(v79 - 8);
    v83 = MEMORY[0x28223BE20](v80);
    v85 = &v117 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v85, v83);
    v86 = sub_22766D170();
    (*(v82 + 8))(v85, v79);
    v58 = v81;
    v19 = v124;
    __swift_destroy_boxed_opaque_existential_0(v129);
  }

  else
  {
    v86 = 0;
  }

  v87 = [v127 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v88 = [objc_allocWithZone(v126) initWithLeftExpression:v78 rightExpression:v87 modifier:0 type:2 options:0];

  sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v89 = v88;
  v90 = sub_22766A080();
  v92 = v91;
  MEMORY[0x22AA985C0]();
  if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v90(&v131, 0);
  swift_endAccess();

  swift_getKeyPath();
  v93 = v133 + v58[6];
  v94 = *v93;
  if (*(v93 + 8))
  {
    v94 = 1.79769313e308;
  }

  *(&v132 + 1) = v60;
  *&v131 = v94;

  v95 = sub_22766C820();
  sub_226E93170(&v131, v129, &unk_27D7BC990, &qword_227670A30);
  v96 = v130;
  if (v130)
  {
    v97 = __swift_project_boxed_opaque_existential_0(v129, v130);
    v98 = *(v96 - 8);
    v99 = MEMORY[0x28223BE20](v97);
    v101 = &v117 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))(v101, v99);
    v102 = sub_22766D170();
    (*(v98 + 8))(v101, v96);
    __swift_destroy_boxed_opaque_existential_0(v129);
  }

  else
  {
    v102 = 0;
  }

  v103 = [v127 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v104 = [objc_allocWithZone(v126) initWithLeftExpression:v95 rightExpression:v103 modifier:0 type:1 options:0];

  sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v105 = v104;
  v106 = sub_22766A080();
  v108 = v107;
  MEMORY[0x22AA985C0]();
  if (*((*v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v106(&v131, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v110 = v123;
  sub_2273FC8C8(KeyPath);
  if (v110)
  {

    swift_setDeallocating();

    v112 = qword_2813B2078;
    v113 = sub_22766A100();
    (*(*(v113 - 8) + 8))(v19 + v112, v113);
  }

  else
  {
    v112 = sub_226F4374C(v111);

    swift_setDeallocating();

    v114 = qword_2813B2078;
    v115 = sub_22766A100();
    (*(*(v115 - 8) + 8))(v19 + v114, v115);
  }

  swift_deallocClassInstance();
  return v112;
}

char *sub_2274BAAE4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v129 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v131 = (v123 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = v123 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v123 - v12;
  v14 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  v18 = v14[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v19 = swift_allocObject();
  v20 = v15;
  v21 = v16;

  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  v123[0] = v21;
  *(v19 + 32) = v17;
  v132 = v19;
  v123[1] = v18;
  *(v19 + 40) = v18;
  swift_getKeyPath();
  v140 = a1;
  sub_227662000();
  v22 = sub_227662750();
  v23 = *(v22 - 8);
  v127 = *(v23 + 56);
  v128 = v23 + 56;
  v127(v13, 0, 1, v22);
  sub_226E93170(v13, v10, &qword_27D7B9690, qword_227670B50);
  v125 = *(v23 + 48);
  v126 = v23 + 48;
  if (v125(v10, 1, v22) == 1)
  {
    sub_226E97D1C(v10, &qword_27D7B9690, qword_227670B50);
    v138 = 0u;
    v139 = 0u;
  }

  else
  {
    *(&v139 + 1) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v138);
    (*(v23 + 32))(boxed_opaque_existential_0, v10, v22);
  }

  v124 = v20;
  v25 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v135 = v25;
  v26 = sub_22766C820();
  sub_226E93170(&v138, v136, &unk_27D7BC990, &qword_227670A30);
  v27 = v137;
  if (v137)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v134 = v13;
    v29 = *(v27 - 8);
    v30 = MEMORY[0x28223BE20](v28);
    v32 = v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    v13 = v134;
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v33 = 0;
  }

  v134 = objc_opt_self();
  v34 = [v134 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v36 = [objc_allocWithZone(v35) initWithLeftExpression:v26 rightExpression:v34 modifier:0 type:3 options:0];

  sub_226E97D1C(v13, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v138, &unk_27D7BC990, &qword_227670A30);
  v37 = qword_2813B2078;
  v38 = v132;
  swift_beginAccess();
  v39 = v36;
  v40 = v38;
  v41 = v39;
  v133 = v37;
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
    v40 = v132;
  }

  sub_22766C3A0();
  v42(&v138, 0);
  swift_endAccess();

  swift_getKeyPath();
  v45 = v131;
  sub_227661FE0();
  v127(v45, 0, 1, v22);
  v46 = v45;
  v47 = v129;
  sub_226E93170(v46, v129, &qword_27D7B9690, qword_227670B50);
  if (v125(v47, 1, v22) == 1)
  {
    sub_226E97D1C(v47, &qword_27D7B9690, qword_227670B50);
    v138 = 0u;
    v139 = 0u;
  }

  else
  {
    *(&v139 + 1) = v22;
    v48 = __swift_allocate_boxed_opaque_existential_0(&v138);
    (*(v23 + 32))(v48, v47, v22);
  }

  v49 = sub_22766C820();
  sub_226E93170(&v138, v136, &unk_27D7BC990, &qword_227670A30);
  v50 = v137;
  if (v137)
  {
    v51 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v52 = *(v50 - 8);
    v53 = MEMORY[0x28223BE20](v51);
    v55 = v123 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v55, v53);
    v56 = sub_22766D170();
    (*(v52 + 8))(v55, v50);
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v56 = 0;
  }

  v57 = [v134 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v58 = [objc_allocWithZone(v35) initWithLeftExpression:v49 rightExpression:v57 modifier:0 type:1 options:0];

  sub_226E97D1C(v131, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v138, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v59 = v58;
  v60 = sub_22766A080();
  v62 = v61;
  MEMORY[0x22AA985C0]();
  if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v60(&v138, 0);
  swift_endAccess();

  swift_getKeyPath();
  v63 = type metadata accessor for DateIntervalSessionThreshold(0);
  v64 = *(v140 + v63[5]);
  v65 = MEMORY[0x277D839F8];
  *(&v139 + 1) = MEMORY[0x277D839F8];
  *&v138 = v64;

  v66 = sub_22766C820();
  sub_226E93170(&v138, v136, &unk_27D7BC990, &qword_227670A30);
  v67 = v137;
  if (v137)
  {
    v68 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v69 = *(v67 - 8);
    v70 = MEMORY[0x28223BE20](v68);
    v72 = v123 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v72, v70);
    v73 = sub_22766D170();
    v74 = v72;
    v65 = MEMORY[0x277D839F8];
    (*(v69 + 8))(v74, v67);
    v40 = v132;
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v73 = 0;
  }

  v75 = [v134 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v76 = [objc_allocWithZone(v35) initWithLeftExpression:v66 rightExpression:v75 modifier:0 type:2 options:0];

  sub_226E97D1C(&v138, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v77 = v76;
  v78 = sub_22766A080();
  v80 = v79;
  MEMORY[0x22AA985C0]();
  if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v78(&v138, 0);
  swift_endAccess();

  swift_getKeyPath();
  v81 = *(v140 + v63[7]);
  *(&v139 + 1) = v65;
  *&v138 = v81;

  v82 = sub_22766C820();
  sub_226E93170(&v138, v136, &unk_27D7BC990, &qword_227670A30);
  v83 = v137;
  if (v137)
  {
    v84 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v131 = v123;
    v85 = *(v83 - 8);
    v86 = MEMORY[0x28223BE20](v84);
    v88 = v63;
    v89 = v35;
    v90 = v65;
    v91 = v123 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v85 + 16))(v91, v86);
    v92 = sub_22766D170();
    v93 = v91;
    v65 = v90;
    v35 = v89;
    v63 = v88;
    (*(v85 + 8))(v93, v83);
    v40 = v132;
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v92 = 0;
  }

  v94 = [v134 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v95 = [objc_allocWithZone(v35) initWithLeftExpression:v82 rightExpression:v94 modifier:0 type:2 options:0];

  sub_226E97D1C(&v138, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v96 = v95;
  v97 = sub_22766A080();
  v99 = v98;
  MEMORY[0x22AA985C0]();
  if (*((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v97(&v138, 0);
  swift_endAccess();

  swift_getKeyPath();
  v100 = v140 + v63[6];
  v101 = *v100;
  if (*(v100 + 8))
  {
    v101 = 1.79769313e308;
  }

  *(&v139 + 1) = v65;
  *&v138 = v101;

  v102 = sub_22766C820();
  sub_226E93170(&v138, v136, &unk_27D7BC990, &qword_227670A30);
  v103 = v137;
  if (v137)
  {
    v104 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v105 = *(v103 - 8);
    v106 = MEMORY[0x28223BE20](v104);
    v108 = v123 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v105 + 16))(v108, v106);
    v109 = sub_22766D170();
    (*(v105 + 8))(v108, v103);
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v109 = 0;
  }

  v110 = [v134 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v111 = [objc_allocWithZone(v35) initWithLeftExpression:v102 rightExpression:v110 modifier:0 type:1 options:0];

  sub_226E97D1C(&v138, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v112 = v111;
  v113 = sub_22766A080();
  v115 = v114;
  MEMORY[0x22AA985C0]();
  if (*((*v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v111 = *((*v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v113(&v138, 0);
  swift_endAccess();

  v116 = v130;
  v117 = sub_226EC6320(0);
  if (v116)
  {
  }

  else
  {
    v118 = v117;
    [v117 setResultType_];
    [v118 setFetchLimit_];
    [v118 setFetchOffset_];
    [v118 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v119 = v124;
    v111 = sub_22766C9D0();

    swift_setDeallocating();
    v121 = qword_2813B2078;
    v122 = sub_22766A100();
    (*(*(v122 - 8) + 8))(v40 + v121, v122);
    swift_deallocClassInstance();
  }

  return v111;
}

uint64_t sub_2274BBBF4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  v11 = sub_227666F70();
  v13 = v12;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v37[0] = v11;
  v37[1] = v13;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v37, v35, &unk_27D7BC990, &qword_227670A30);
  v15 = v36;
  if (v36)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v37, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = v23;
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v37, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FC91C(KeyPath);
  if (v2)
  {

    swift_setDeallocating();

    v30 = qword_2813B2078;
    v31 = sub_22766A100();
    (*(*(v31 - 8) + 8))(v8 + v30, v31);
  }

  else
  {
    v30 = sub_226F3E6A8(v29);

    swift_setDeallocating();

    v32 = qword_2813B2078;
    v33 = sub_22766A100();
    (*(*(v33 - 8) + 8))(v8 + v32, v33);
  }

  swift_deallocClassInstance();
  return v30;
}

char *sub_2274BC0E0(uint64_t a1, uint64_t a2, void *a3)
{
  v147 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v5 - 8);
  v146 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v149 = (&v138 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v138 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v138 - v13;
  v15 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v20 = swift_allocObject();
  v21 = v16;
  v22 = v17;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  v139 = v22;
  *(v20 + 32) = v18;
  v150 = v20;
  v140 = v19;
  *(v20 + 40) = v19;
  swift_getKeyPath();
  v151 = a1;
  sub_227662000();
  v23 = sub_227662750();
  v24 = *(v23 - 8);
  v144 = *(v24 + 56);
  v145 = v24 + 56;
  v144(v14, 0, 1, v23);
  sub_226E93170(v14, v11, &qword_27D7B9690, qword_227670B50);
  v142 = *(v24 + 48);
  v143 = v24 + 48;
  if (v142(v11, 1, v23) == 1)
  {
    sub_226E97D1C(v11, &qword_27D7B9690, qword_227670B50);
    v156 = 0u;
    v157 = 0u;
  }

  else
  {
    *(&v157 + 1) = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v156);
    (*(v24 + 32))(boxed_opaque_existential_0, v11, v23);
  }

  v141 = v21;
  v26 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v158 = v26;
  v27 = sub_22766C820();
  sub_226E93170(&v156, v154, &unk_27D7BC990, &qword_227670A30);
  v28 = v155;
  if (v155)
  {
    v29 = __swift_project_boxed_opaque_existential_0(v154, v155);
    v153 = v14;
    v30 = *(v28 - 8);
    v31 = MEMORY[0x28223BE20](v29);
    v33 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33, v31);
    v34 = sub_22766D170();
    (*(v30 + 8))(v33, v28);
    v14 = v153;
    __swift_destroy_boxed_opaque_existential_0(v154);
  }

  else
  {
    v34 = 0;
  }

  v153 = objc_opt_self();
  v35 = [v153 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v37 = [objc_allocWithZone(v36) initWithLeftExpression:v27 rightExpression:v35 modifier:0 type:3 options:0];

  sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v156, &unk_27D7BC990, &qword_227670A30);
  v38 = qword_2813B2078;
  v39 = v150;
  swift_beginAccess();
  v40 = v37;
  v41 = v39;
  v42 = v40;
  v152 = v38;
  v43 = sub_22766A080();
  v45 = v44;
  MEMORY[0x22AA985C0]();
  if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
    v41 = v150;
  }

  sub_22766C3A0();
  v43(&v156, 0);
  swift_endAccess();

  swift_getKeyPath();
  v46 = v149;
  sub_227661FE0();
  v144(v46, 0, 1, v23);
  v47 = v46;
  v48 = v146;
  sub_226E93170(v47, v146, &qword_27D7B9690, qword_227670B50);
  if (v142(v48, 1, v23) == 1)
  {
    sub_226E97D1C(v48, &qword_27D7B9690, qword_227670B50);
    v156 = 0u;
    v157 = 0u;
  }

  else
  {
    *(&v157 + 1) = v23;
    v49 = __swift_allocate_boxed_opaque_existential_0(&v156);
    (*(v24 + 32))(v49, v48, v23);
  }

  v50 = sub_22766C820();
  sub_226E93170(&v156, v154, &unk_27D7BC990, &qword_227670A30);
  v51 = v155;
  if (v155)
  {
    v52 = __swift_project_boxed_opaque_existential_0(v154, v155);
    v53 = *(v51 - 8);
    v54 = MEMORY[0x28223BE20](v52);
    v56 = &v138 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v56, v54);
    v57 = sub_22766D170();
    (*(v53 + 8))(v56, v51);
    __swift_destroy_boxed_opaque_existential_0(v154);
  }

  else
  {
    v57 = 0;
  }

  v58 = [v153 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v59 = [objc_allocWithZone(v36) initWithLeftExpression:v50 rightExpression:v58 modifier:0 type:1 options:0];

  sub_226E97D1C(v149, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v156, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v60 = v59;
  v61 = sub_22766A080();
  v63 = v62;
  MEMORY[0x22AA985C0]();
  if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v61(&v156, 0);
  swift_endAccess();

  swift_getKeyPath();
  v64 = type metadata accessor for DateIntervalSessionThreshold(0);
  v65 = *(v151 + v64[5]);
  v66 = MEMORY[0x277D839F8];
  *(&v157 + 1) = MEMORY[0x277D839F8];
  *&v156 = v65;

  v67 = sub_22766C820();
  sub_226E93170(&v156, v154, &unk_27D7BC990, &qword_227670A30);
  v68 = v155;
  if (v155)
  {
    v69 = __swift_project_boxed_opaque_existential_0(v154, v155);
    v70 = *(v68 - 8);
    v71 = MEMORY[0x28223BE20](v69);
    v73 = &v138 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v73, v71);
    v74 = sub_22766D170();
    v75 = v73;
    v66 = MEMORY[0x277D839F8];
    (*(v70 + 8))(v75, v68);
    v41 = v150;
    __swift_destroy_boxed_opaque_existential_0(v154);
  }

  else
  {
    v74 = 0;
  }

  v76 = [v153 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v77 = [objc_allocWithZone(v36) initWithLeftExpression:v67 rightExpression:v76 modifier:0 type:2 options:0];

  sub_226E97D1C(&v156, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v78 = v77;
  v79 = sub_22766A080();
  v81 = v80;
  MEMORY[0x22AA985C0]();
  if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v79(&v156, 0);
  swift_endAccess();

  swift_getKeyPath();
  v82 = *(v151 + v64[7]);
  *(&v157 + 1) = v66;
  *&v156 = v82;

  v83 = sub_22766C820();
  sub_226E93170(&v156, v154, &unk_27D7BC990, &qword_227670A30);
  v84 = v155;
  if (v155)
  {
    v85 = __swift_project_boxed_opaque_existential_0(v154, v155);
    v149 = &v138;
    v86 = *(v84 - 8);
    v87 = MEMORY[0x28223BE20](v85);
    v89 = v64;
    v90 = v36;
    v91 = v66;
    v92 = &v138 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v86 + 16))(v92, v87);
    v93 = sub_22766D170();
    v94 = v92;
    v66 = v91;
    v36 = v90;
    v64 = v89;
    (*(v86 + 8))(v94, v84);
    v41 = v150;
    __swift_destroy_boxed_opaque_existential_0(v154);
  }

  else
  {
    v93 = 0;
  }

  v95 = [v153 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v96 = [objc_allocWithZone(v36) initWithLeftExpression:v83 rightExpression:v95 modifier:0 type:2 options:0];

  sub_226E97D1C(&v156, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v97 = v96;
  v98 = sub_22766A080();
  v100 = v99;
  MEMORY[0x22AA985C0]();
  if (*((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v98(&v156, 0);
  swift_endAccess();

  swift_getKeyPath();
  v101 = v151 + v64[6];
  v102 = *v101;
  if (*(v101 + 8))
  {
    v102 = 1.79769313e308;
  }

  *(&v157 + 1) = v66;
  *&v156 = v102;

  v103 = sub_22766C820();
  sub_226E93170(&v156, v154, &unk_27D7BC990, &qword_227670A30);
  v104 = v155;
  if (v155)
  {
    v105 = __swift_project_boxed_opaque_existential_0(v154, v155);
    v106 = *(v104 - 8);
    v107 = MEMORY[0x28223BE20](v105);
    v109 = &v138 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v106 + 16))(v109, v107);
    v110 = sub_22766D170();
    (*(v106 + 8))(v109, v104);
    __swift_destroy_boxed_opaque_existential_0(v154);
  }

  else
  {
    v110 = 0;
  }

  v111 = [v153 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v112 = [objc_allocWithZone(v36) initWithLeftExpression:v103 rightExpression:v111 modifier:0 type:1 options:0];

  sub_226E97D1C(&v156, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v113 = v112;
  v114 = sub_22766A080();
  v116 = v115;
  MEMORY[0x22AA985C0]();
  if (*((*v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v114(&v156, 0);
  swift_endAccess();

  swift_getKeyPath();
  *(&v157 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  *&v156 = v147;

  v117 = sub_22766C820();
  sub_226E93170(&v156, v154, &unk_27D7BC990, &qword_227670A30);
  v118 = v155;
  if (v155)
  {
    v119 = __swift_project_boxed_opaque_existential_0(v154, v155);
    v120 = *(v118 - 8);
    v121 = MEMORY[0x28223BE20](v119);
    v123 = &v138 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v120 + 16))(v123, v121);
    v124 = sub_22766D170();
    (*(v120 + 8))(v123, v118);
    __swift_destroy_boxed_opaque_existential_0(v154);
  }

  else
  {
    v124 = 0;
  }

  v125 = [v153 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v126 = [objc_allocWithZone(v36) initWithLeftExpression:v117 rightExpression:v125 modifier:0 type:10 options:0];

  sub_226E97D1C(&v156, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v127 = v126;
  v128 = sub_22766A080();
  v130 = v129;
  MEMORY[0x22AA985C0]();
  if (*((*v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v126 = *((*v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v128(&v156, 0);
  swift_endAccess();

  v131 = v148;
  v132 = sub_226EC6320(0);
  if (v131)
  {
  }

  else
  {
    v133 = v132;
    [v132 setResultType_];
    [v133 setFetchLimit_];
    [v133 setFetchOffset_];
    [v133 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v134 = v141;
    v126 = sub_22766C9D0();

    swift_setDeallocating();
    v136 = qword_2813B2078;
    v137 = sub_22766A100();
    (*(*(v137 - 8) + 8))(v41 + v136, v137);
    swift_deallocClassInstance();
  }

  return v126;
}

unint64_t sub_2274BD454()
{
  result = qword_28139BDC0;
  if (!qword_28139BDC0)
  {
    sub_227662750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDC0);
  }

  return result;
}

uint64_t sub_2274BD4AC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91A0, &qword_2276732C0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  v11 = sub_2276644D0();
  v13 = v12;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v37[0] = v11;
  v37[1] = v13;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v37, v35, &unk_27D7BC990, &qword_227670A30);
  v15 = v36;
  if (v36)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226E97D1C(v37, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = v23;
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v37, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FCB14(KeyPath);
  if (v2)
  {

    swift_setDeallocating();

    v30 = qword_2813B2078;
    v31 = sub_22766A100();
    (*(*(v31 - 8) + 8))(v8 + v30, v31);
  }

  else
  {
    v30 = sub_226F3E6A8(v29);

    swift_setDeallocating();

    v32 = qword_2813B2078;
    v33 = sub_22766A100();
    (*(*(v33 - 8) + 8))(v8 + v32, v33);
  }

  swift_deallocClassInstance();
  return v30;
}

void *sub_2274BD998(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91A0, &qword_2276732C0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  v40 = v12;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v35 = v10;
  v36 = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v39[0] = a1;
  v39[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v39, v37, &unk_27D7BC990, &qword_227670A30);
  v15 = v38;
  if (v38)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v37, v38);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226E97D1C(v39, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = v23;
  v25 = v39;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v39, 0);
  swift_endAccess();

  v29 = sub_2272847CC(0);
  if (v3)
  {
  }

  else
  {
    v30 = v29;
    [v29 setResultType_];
    [v30 setFetchLimit_];
    [v30 setFetchOffset_];
    [v30 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v31 = v40;
    v25 = sub_22766C9D0();

    swift_setDeallocating();
    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    (*(*(v34 - 8) + 8))(v11 + v33, v34);
    swift_deallocClassInstance();
  }

  return v25;
}

uint64_t WorkoutPlanGenerationScaffold.copyWith(planIdentifier:requestedModalitySchedulePreferences:requestedTotalDailyDuration:requestedWeekdays:requestedWeekCount:maxWorkoutsPerDay:modalityDurationMapping:configuration:currentSchedule:modalitiesSelected:scoringMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void (*a6)(void *a1@<X8>)@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v100 = a6;
  v101 = a8;
  LODWORD(v104) = a7;
  v110 = a5;
  LODWORD(v98) = a4;
  v99 = a3;
  v107 = a2;
  v96 = a9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v94 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v95 = &v92 - v17;
  v18 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v18);
  v106 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v92 - v21;
  v108 = sub_227667370();
  v105 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v111 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v92 - v25;
  v27 = sub_2276627D0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v31;
  sub_226E93170(a1, v26, &unk_27D7BB9D0, &qword_227671550);
  v33 = *(v28 + 48);
  v34 = v33(v26, 1, v32);
  v103 = v28;
  if (v34 != 1)
  {
    (*(v28 + 32))(v30, v26, v32);
    v35 = v107;
    if (v107)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  (*(v28 + 16))(v30, v15, v32);
  if (v33(v26, 1, v32) != 1)
  {
    sub_226E97D1C(v26, &unk_27D7BB9D0, &qword_227671550);
  }

  v35 = v107;
  if (!v107)
  {
LABEL_10:
    v35 = *(v15 + v18[5]);
  }

LABEL_5:
  v36 = v104;
  if (v98)
  {
    v99 = *(v15 + v18[7]);
  }

  if (v110)
  {
    v98 = v110;
  }

  else
  {
    v98 = *(v15 + v18[8]);
  }

  v104 = v32;
  if ((v36 & 1) == 0)
  {
    v38 = a11;
    v37 = a12;
    if ((a10 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v101 = *(v15 + v18[10]);
    v102 = v30;
    if (v38)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v100 = *(v15 + v18[9]);
  v38 = a11;
  v37 = a12;
  if (a10)
  {
    goto LABEL_17;
  }

LABEL_14:
  v102 = v30;
  if (v38)
  {
LABEL_15:
    v97 = v38;
    goto LABEL_19;
  }

LABEL_18:
  v97 = *(v15 + v18[13]);

LABEL_19:
  sub_226E93170(v37, v22, &qword_27D7BB3E8, &unk_227686370);
  v39 = v105;
  v40 = *(v105 + 48);
  v41 = v108;
  if (v40(v22, 1, v108) != 1)
  {
    (*(v39 + 32))(v111, v22, v41);

    v44 = v39;
    v45 = a14;
    if (a13)
    {
      goto LABEL_23;
    }

LABEL_26:
    v46 = *(v15 + v18[15]);

    v47 = a15;
    if (v45)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  (*(v39 + 16))(v111, v15 + v18[14], v41);
  v42 = v40(v22, 1, v41);

  v43 = v42 == 1;
  v41 = v108;
  v44 = v39;
  if (!v43)
  {
    sub_226E97D1C(v22, &qword_27D7BB3E8, &unk_227686370);
  }

  v45 = a14;
  if (!a13)
  {
    goto LABEL_26;
  }

LABEL_23:
  v46 = a13;
  v47 = a15;
  if (v45)
  {
LABEL_24:
    v107 = v45;
    goto LABEL_28;
  }

LABEL_27:
  v107 = *(v15 + v18[16]);

LABEL_28:
  if (v47 == 2)
  {
    v47 = *(v15 + v18[12]);
  }

  v48 = v106;
  (*(v103 + 16))(v106, v102, v104);
  *&v48[v18[5]] = v35;

  v49 = sub_226F491E4();
  *&v48[v18[6]] = v49;
  v50 = v98;
  *&v48[v18[7]] = v99;
  *&v48[v18[8]] = v50;
  *&v48[v18[9]] = v100;
  v48[v18[12]] = v47 & 1;
  *&v48[v18[10]] = v101;
  *&v48[v18[13]] = v97;
  (*(v44 + 16))(&v48[v18[14]], v111, v41);
  *&v48[v18[15]] = v46;
  *&v48[v18[16]] = v107;
  v51 = v49 + 56;
  v52 = 1 << *(v49 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v49 + 56);
  v55 = (v52 + 63) >> 6;
  v110 = v49;

  v100 = 0;
  v56 = 0;
  v101 = MEMORY[0x277D84F98];
  for (i = v18; v54; v18 = i)
  {
LABEL_40:
    while (1)
    {
      v58 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v59 = *(v110 + 48) + 24 * (v58 | (v56 << 6));
      v61 = *v59;
      v60 = *(v59 + 8);
      v62 = *(v59 + 16);
      sub_226EB396C(*v59, v60, v62);
      v63 = sub_2276672C0();
      if (*(v63 + 16))
      {
        break;
      }

      sub_226EB2DFC(v61, v60, v62);
LABEL_35:

      v18 = i;
      if (!v54)
      {
        goto LABEL_36;
      }
    }

    v64 = sub_226F491D8();
    v66 = v65;
    sub_226EB2DFC(v61, v60, v62);
    if ((v66 & 1) == 0)
    {
      goto LABEL_35;
    }

    v67 = *(v94 + 72);
    v68 = *(v63 + 56) + v67 * v64;
    v69 = v95;
    sub_226E93170(v68, v95, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v100, 0);
    v70 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v70;
    v73 = sub_226F3ADC4(v69);
    v74 = v70[2];
    v75 = (v72 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      goto LABEL_58;
    }

    v77 = v72;
    if (v70[3] >= v76)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v80 = v112;
        if (v72)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_226FF2414();
        v80 = v112;
        if (v77)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v76, isUniquelyReferenced_nonNull_native);
      v78 = sub_226F3ADC4(v95);
      if ((v77 & 1) != (v79 & 1))
      {
        goto LABEL_61;
      }

      v73 = v78;
      v80 = v112;
      if (v77)
      {
        goto LABEL_51;
      }
    }

    sub_227444F98(&v112);
    v81 = v112;
    v80[(v73 >> 6) + 8] |= 1 << v73;
    sub_226E93170(v95, v80[6] + v73 * v67, &qword_27D7B88C0, &unk_22767A720);
    *(v80[7] + 8 * v73) = v81;
    v82 = v80[2];
    v83 = __OFADD__(v82, 1);
    v84 = v82 + 1;
    if (v83)
    {
      goto LABEL_60;
    }

    v80[2] = v84;
LABEL_51:
    v101 = v80;
    v85 = v80[7];
    v86 = *(v85 + 8 * v73);
    v83 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v83)
    {
      goto LABEL_59;
    }

    *(v85 + 8 * v73) = v87;
    sub_226E97D1C(v95, &qword_27D7B88C0, &unk_22767A720);
    v100 = sub_227444F98;
  }

LABEL_36:
  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v57 >= v55)
    {

      v88 = v106;
      *&v106[v18[11]] = v101;
      sub_22746B5DC();
      v90 = v89;

      (*(v105 + 8))(v111, v108);
      (*(v103 + 8))(v102, v104);
      *(v88 + v18[17]) = v90;
      sub_227442570(v88, v96);
      return sub_226EA9E3C(v100, 0);
    }

    v54 = *(v51 + 8 * v57);
    ++v56;
    if (v54)
    {
      v56 = v57;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_22766D220();
  __break(1u);
  return result;
}