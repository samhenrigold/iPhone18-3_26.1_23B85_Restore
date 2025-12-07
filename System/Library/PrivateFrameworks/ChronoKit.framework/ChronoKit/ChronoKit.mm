uint64_t sub_1BF38B58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E7774();
  if (v10)
  {

    v12 = *(v3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
    MEMORY[0x1EEE9AC00](v11);
    *&v14[-16] = a1;

    os_unfair_lock_lock((v12 + 24));
    sub_1BF38B740((v12 + 16), a2);
    os_unfair_lock_unlock((v12 + 24));
  }

  else
  {
    sub_1BF4E77C4();
    sub_1BF38B8B8(v9, a2);
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_1BF38B774(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1BF38C8B4(a4, a2, a3, MEMORY[0x1E6994140]);
  v10 = sub_1BF4E8874();
  return sub_1BF38CA14(a1, v10, a2, a3, a5, MEMORY[0x1E6994148]);
}

double sub_1BF38B83C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_1BF38C890(a2);
    if (v6)
    {
      sub_1BF38E49C(*(v4 + 56) + 40 * v5, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF38B8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v97 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v97 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v97 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v97 - v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v110 = *(v111 - 8);
  v20 = MEMORY[0x1EEE9AC00](v111);
  v22 = &v97 - v21;
  v108 = v6;
  v25 = *(v6 + 16);
  v23 = v6 + 16;
  v24 = v25;
  v109 = a1;
  (v25)(v19, a1, v5, v20);
  sub_1BF4E77B4();
  v26 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  v107 = v2;
  v27 = *(v2 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
  v112 = v22;
  v113 = v22;

  os_unfair_lock_lock((v27 + 24));
  sub_1BF38B740((v27 + 16), &v120);
  os_unfair_lock_unlock((v27 + 24));

  sub_1BF38C94C(&v120, &v117, &unk_1EBDD91B0, &unk_1BF4F0720);
  v28 = *(&v118 + 1);
  sub_1BF38C9B4(&v117, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (v28)
  {
    goto LABEL_2;
  }

  v30 = v106;
  v99 = v16;
  v101 = v24;
  v100 = v23;
  v102 = a2;
  v31 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  v32 = v107;
  swift_beginAccess();
  v33 = *(v32 + v31);
  v34 = v109;
  if (sub_1BF38CBB8(v109, 0, 0, v33))
  {
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v35 = sub_1BF4E7B54();
    __swift_project_value_buffer(v35, qword_1EDCA69A0);
    v101(v30, v34, v5);
    v36 = sub_1BF4E7B34();
    v37 = sub_1BF4E8E84();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v117 = v39;
      *v38 = 136446210;
      sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940E0]);
      v40 = sub_1BF4E96A4();
      v42 = v41;
      (*(v108 + 8))(v30, v5);
      v43 = sub_1BF38D65C(v40, v42, &v117);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1BF389000, v36, v37, "Ignoring restricted or unknown extension %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
      MEMORY[0x1BFB5A5D0](v38, -1, -1);
    }

    else
    {

      (*(v108 + 8))(v30, v5);
    }

    sub_1BF38C9B4(&v120, &unk_1EBDD91B0, &unk_1BF4F0720);
    v50 = v102;
    *(v102 + 32) = 0;
    *v50 = 0u;
    v50[1] = 0u;
    goto LABEL_12;
  }

  v44 = *(v32 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock);
  os_unfair_lock_lock(*(v44 + 16));
  v45 = *(v32 + v26);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v112;
  *(&v97 - 2) = v112;

  os_unfair_lock_lock((v45 + 24));
  sub_1BF38B724((v45 + 16), &v117);
  os_unfair_lock_unlock((v45 + 24));
  sub_1BF38C9B4(&v120, &unk_1EBDD91B0, &unk_1BF4F0720);

  v120 = v117;
  v121 = v118;
  v122 = v119;
  sub_1BF38C94C(&v120, &v117, &unk_1EBDD91B0, &unk_1BF4F0720);
  v48 = *(&v118 + 1);
  sub_1BF38C9B4(&v117, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (v48)
  {
    sub_1BF38C94C(&v120, v102, &unk_1EBDD91B0, &unk_1BF4F0720);
    os_unfair_lock_unlock(*(v44 + 16));
    sub_1BF38C9B4(&v120, &unk_1EBDD91B0, &unk_1BF4F0720);
    v49 = v47;
    return (*(v110 + 8))(v49, v111);
  }

  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v52 = sub_1BF4E7B54();
  v53 = __swift_project_value_buffer(v52, qword_1EDCA69A0);
  v54 = v99;
  v55 = v109;
  v56 = v5;
  v101(v99, v109, v5);
  v106 = v53;
  v57 = sub_1BF4E7B34();
  v58 = sub_1BF4E8E84();
  v59 = os_log_type_enabled(v57, v58);
  v98 = v44;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v117 = v61;
    *v60 = 136446210;
    sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940E0]);
    v62 = sub_1BF4E96A4();
    v63 = v54;
    v64 = v62;
    v66 = v65;
    v99 = *(v108 + 8);
    v99(v63, v56);
    v67 = sub_1BF38D65C(v64, v66, &v117);

    *(v60 + 4) = v67;
    _os_log_impl(&dword_1BF389000, v57, v58, "Unable to find %{public}s cached, attempting to locate directly.", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1BFB5A5D0](v61, -1, -1);
    MEMORY[0x1BFB5A5D0](v60, -1, -1);
  }

  else
  {

    v99 = *(v108 + 8);
    v99(v54, v5);
  }

  sub_1BF38E49C(v32 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer, &v117);
  v68 = v119;
  __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
  sub_1BF4E8204();
  v83 = (*(v68 + 16))();

  if (v83)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    sub_1BF38E49C(v32 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory, v114);
    v84 = v115;
    v85 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    (*(v85 + 8))(&v117, v83, v84, v85);
    sub_1BF38C9B4(&v120, &unk_1EBDD91B0, &unk_1BF4F0720);

    v120 = v117;
    v121 = v118;
    v122 = v119;
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    v55 = v109;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    v86 = v103;
    v101(v103, v55, v56);
    v87 = sub_1BF4E7B34();
    v88 = sub_1BF4E8E84();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v117 = v90;
      *v89 = 136446210;
      sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940E0]);
      v91 = sub_1BF4E96A4();
      v92 = v86;
      v93 = v91;
      v95 = v94;
      v99(v92, v56);
      v96 = sub_1BF38D65C(v93, v95, &v117);

      *(v89 + 4) = v96;
      _os_log_impl(&dword_1BF389000, v87, v88, "Unable to find %{public}s extension directly.", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x1BFB5A5D0](v90, -1, -1);
      MEMORY[0x1BFB5A5D0](v89, -1, -1);

      v82 = v98;
      goto LABEL_20;
    }

    v99(v86, v56);
  }

  v82 = v98;
LABEL_20:
  sub_1BF38C94C(&v120, &v117, &unk_1EBDD91B0, &unk_1BF4F0720);
  v69 = *(&v118 + 1);
  sub_1BF38C9B4(&v117, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (!v69)
  {
LABEL_28:
    os_unfair_lock_unlock(*(v82 + 16));
    a2 = v102;
LABEL_2:
    v29 = v121;
    *a2 = v120;
    *(a2 + 16) = v29;
    *(a2 + 32) = v122;
LABEL_12:
    v49 = v112;
    return (*(v110 + 8))(v49, v111);
  }

  v70 = v104;
  v101(v104, v55, v56);
  v71 = sub_1BF4E7B34();
  v72 = sub_1BF4E8E84();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v117 = v74;
    *v73 = 136446210;
    sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940E0]);
    v75 = sub_1BF4E96A4();
    v76 = v70;
    v77 = v75;
    v79 = v78;
    v99(v76, v56);
    v80 = sub_1BF38D65C(v77, v79, &v117);

    *(v73 + 4) = v80;
    _os_log_impl(&dword_1BF389000, v71, v72, "Found %{public}s extension directly. Adding to cache.", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x1BFB5A5D0](v74, -1, -1);
    v81 = v73;
    v82 = v98;
    MEMORY[0x1BFB5A5D0](v81, -1, -1);
  }

  else
  {

    v99(v70, v56);
  }

  result = sub_1BF38C94C(&v120, &v117, &unk_1EBDD91B0, &unk_1BF4F0720);
  if (*(&v118 + 1))
  {
    sub_1BF43642C(&v117);
    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF38C8B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF38C8FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF38C94C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BF38C9B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BF38CA14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v24 = a1;
  v26 = a3;
  v27 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v25 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v23 = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v16 = v9 + 16;
    v17 = v18;
    v19 = *(v16 + 56);
    do
    {
      v17(v12, *(v25 + 48) + v19 * v14, v8, v10);
      sub_1BF38C8B4(v28, v26, v27, v29);
      v20 = sub_1BF4E88C4();
      (*(v16 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v23 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1BF38CBB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9280, &qword_1BF4F08A0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BF4EBEF0;
    sub_1BF4E7694();
    v9 = sub_1BF44A8F4(v8);
    swift_setDeallocating();
    (*(v6 + 8))(v8 + v7, v5);
    swift_deallocClassInstance();
    if (qword_1EDC9AA28 != -1)
    {
      swift_once();
    }

    if (byte_1EDC9AA30 == 1)
    {
      v10 = sub_1BF4A962C(a1, v9);

      return v10 & 1;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v14 = sub_1BF4E76B4();
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v18 = sub_1BF38D0B8(v14, v16, a4 & 1);
    if (!v18)
    {
      return a4 & 1;
    }

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9280, &qword_1BF4F08A0);
    v20 = *(v13 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BF4EBEF0;
    v23 = v19;
    sub_1BF4E7694();
    v24 = sub_1BF44A8F4(v22);
    swift_setDeallocating();
    (*(v20 + 8))(v22 + v21, v13);
    swift_deallocClassInstance();
    if (qword_1EDC9AA28 != -1)
    {
      swift_once();
    }

    if (byte_1EDC9AA30 == 1)
    {
      v10 = sub_1BF4A962C(a1, v24);

      return v10 & 1;
    }
  }

  a4 = 0;
  return a4 & 1;
}

id sub_1BF38D0B8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF4E88E4();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 requireValid:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  return v6;
}

uint64_t type metadata accessor for ControlEntryKey(uint64_t a1)
{
  result = qword_1EDC9F7C0;
  if (!qword_1EDC9F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1BF38D218(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BF38F1AC(a5, a6);
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
    result = sub_1BF4E9354();
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

uint64_t sub_1BF38D324(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1BF38D3D0(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1BF38D3FC()
{
  v1 = type metadata accessor for UnfairLock();
  sub_1BF4E8834();
  v2 = sub_1BF4E87B4();

  sub_1BF38D774(sub_1BF38D554, v0, v1, v2, &off_1F3DEE010);

  swift_getWitnessTable();
  return sub_1BF4E8CB4();
}

uint64_t sub_1BF38D570@<X0>(void *a2@<X8>)
{
  swift_beginAccess();
  sub_1BF4E8834();
  nullsub_1();
  *a2 = v3;
}

unint64_t sub_1BF38D65C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BF38D218(v11, 0, 0, 1, a1, a2);
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
    sub_1BF38D324(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_1BF38D774(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 24))(a3, a5);
}

uint64_t sub_1BF38D858(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BF38D8D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF38D99C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void sub_1BF38DA58(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_9ChronoKit19ReloadConfigurationV0C6ReasonO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1BF38DAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF38DB44(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExtensionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of DescriptorServicing.reloadDescriptors(for:userInitiated:reason:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 72))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 64))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1BF38DBE4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF38DC60((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1BF38DC78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v52[0] = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v54 = v52 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  MEMORY[0x1EEE9AC00](v64);
  v68 = v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v52 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v69 = v52 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9298, &qword_1BF4F08A8);
  MEMORY[0x1EEE9AC00](v63);
  v15 = v52 - v14;
  v16 = *a1;
  v17 = *a1 + 64;
  v18 = 1 << *(*a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(*a1 + 64);
  v21 = (v18 + 63) >> 6;
  v59 = (v4 + 16);
  v58 = (v4 + 56);
  v57 = (v4 + 48);
  v53 = (v4 + 32);
  v56 = (v4 + 8);
  v67 = v16;

  v23 = 0;
  v71 = MEMORY[0x1E69E7CC0];
  v61 = v17;
  v60 = v21;
  v55 = v9;
  v62 = v15;
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_6:
  v24 = v70;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      *v52[0] = v71;
      return result;
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v26 = v76;
      v23 = v25;
      while (1)
      {
        v27 = __clz(__rbit64(v20)) | (v23 << 6);
        v28 = v67;
        v29 = *(v67 + 48);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
        (*(*(v30 - 8) + 16))(v15, v29 + *(*(v30 - 8) + 72) * v27, v30);
        v31 = *(v28 + 56) + 40 * v27;
        v32 = &v15[*(v63 + 48)];
        sub_1BF38E49C(v31, v32);
        v33 = *(v32 + 3);
        v34 = *(v32 + 4);
        v66 = v32;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v35 = (*(v34 + 40))(v33, v34);
        v36 = *MEMORY[0x1E69941B0];
        swift_beginAccess();
        v37 = v69;
        sub_1BF38C94C(v35 + v36, v69, &qword_1EBDD9290, &qword_1BF4EE4B0);

        (*v59)(v24, v65, v26);
        (*v58)(v24, 0, 1, v26);
        v38 = *(v64 + 48);
        v39 = v24;
        v40 = v68;
        sub_1BF38C94C(v37, v68, &qword_1EBDD9290, &qword_1BF4EE4B0);
        sub_1BF38C94C(v39, v40 + v38, &qword_1EBDD9290, &qword_1BF4EE4B0);
        v41 = *v57;
        if ((*v57)(v40, 1, v26) == 1)
        {
          sub_1BF38C9B4(v39, &qword_1EBDD9290, &qword_1BF4EE4B0);
          sub_1BF38C9B4(v37, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v42 = v41(v40 + v38, 1, v76);
          v17 = v61;
          v21 = v60;
          if (v42 != 1)
          {
            goto LABEL_17;
          }

          sub_1BF38C9B4(v40, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v15 = v62;
        }

        else
        {
          v43 = v55;
          sub_1BF38C94C(v40, v55, &qword_1EBDD9290, &qword_1BF4EE4B0);
          if (v41(v40 + v38, 1, v76) == 1)
          {
            sub_1BF38C9B4(v70, &qword_1EBDD9290, &qword_1BF4EE4B0);
            sub_1BF38C9B4(v69, &qword_1EBDD9290, &qword_1BF4EE4B0);
            (*v56)(v43, v76);
            v17 = v61;
            v21 = v60;
LABEL_17:
            sub_1BF38C9B4(v40, &qword_1EBDD9288, &unk_1BF4F5A20);
            v15 = v62;
LABEL_18:
            v74 = 0;
            v72 = 0u;
            v73 = 0u;
            goto LABEL_21;
          }

          v44 = v40 + v38;
          v45 = v54;
          v46 = v76;
          (*v53)(v54, v44, v76);
          sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
          v47 = sub_1BF4E88C4();
          v48 = *v56;
          (*v56)(v45, v46);
          sub_1BF38C9B4(v70, &qword_1EBDD9290, &qword_1BF4EE4B0);
          sub_1BF38C9B4(v69, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v48(v43, v46);
          sub_1BF38C9B4(v68, &qword_1EBDD9290, &qword_1BF4EE4B0);
          v15 = v62;
          v17 = v61;
          v21 = v60;
          if ((v47 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        sub_1BF38E49C(v66, &v72);
LABEL_21:
        v20 &= v20 - 1;
        sub_1BF38C9B4(v15, &unk_1EBDD9298, &qword_1BF4F08A8);
        if (*(&v73 + 1))
        {
          sub_1BF38E60C(&v72, v75);
          sub_1BF38E60C(v75, &v72);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_1BF38E628(0, v71[2] + 1, 1, v71);
          }

          v50 = v71[2];
          v49 = v71[3];
          if (v50 >= v49 >> 1)
          {
            v71 = sub_1BF38E628((v49 > 1), v50 + 1, 1, v71);
          }

          v51 = v71;
          v71[2] = v50 + 1;
          result = sub_1BF38E60C(&v72, &v51[5 * v50 + 4]);
          if (!v20)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = sub_1BF38C9B4(&v72, &unk_1EBDD91B0, &unk_1BF4F0720);
          if (!v20)
          {
            goto LABEL_6;
          }
        }

LABEL_11:
        v26 = v76;
        v24 = v70;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF38E49C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id Extension.id.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 32))(a1, a2, v5);
  v8 = *v7;
  sub_1BF38DB44(v7);
  return v8;
}

uint64_t sub_1BF38E610(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1BF38E628(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BF38E774(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit22DescriptorChangeReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata accessor for WidgetExtensionInfo(uint64_t a1)
{
  result = qword_1EDC99EF8;
  if (!qword_1EDC99EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF38E804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF38E868(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t storeEnumTagSinglePayload for PowerlogWakeReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ReloadConfiguration.ReloadCost(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ExtensionManaging.extension(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1BF4E9024();
  (*(a3 + 24))(v8, a2, a3);
  return (*(v6 + 8))(v8, v5);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1BF4E77C4();
  v9 = sub_1BF4E76B4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  (*(a3 + 40))(v9, v11, a2, a3);
}

_OWORD *sub_1BF38EB2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ContainerKindDescriptorPredicate(uint64_t a1)
{
  result = qword_1EDC96EE0;
  if (!qword_1EDC96EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DescriptorCollectionFilter.insert(_:)(unint64_t *a1, uint64_t a2)
{
  sub_1BF38ED18(*a1, a1[1]);
  type metadata accessor for DescriptorCollectionFilterType(255, *(a2 + 16), v3, v4);
  sub_1BF4E8CA4();
  return sub_1BF4E8C44();
}

unint64_t sub_1BF38ED18(unint64_t result, uint64_t a2)
{
  if (result >= 3)
  {
  }

  return result;
}

void *sub_1BF38ED7C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit30DescriptorCollectionFilterTypeOyxG(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *WidgetDescriptorCache.widgetDescriptors.getter()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  v2 = sub_1BF38EE88(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AB0, &qword_1BF4F5A10);
  v3 = swift_allocObject();
  v4 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v5 = swift_allocObject();
  v3[6] = v4;
  v3[7] = &off_1F3DF42A8;
  v3[2] = v2;
  v3[3] = v5;
  return v3;
}

void *sub_1BF38EE88(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata(0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CC0, &unk_1BF4F7660);
  result = sub_1BF4E9494();
  v6 = result;
  v7 = 0;
  v29 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v26 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v29 + 48) + 8 * v18);
      sub_1BF38F0DC(*(v29 + 56) + *(v27 + 72) * v18, v4);
      v20 = *&v4[*(v28 + 24)];
      v21 = v19;

      result = sub_1BF38F140(v4);
      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + 8 * v18) = v21;
      *(v6[7] + 8 * v18) = v20;
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v6[2] = v24;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ExtensionMetadata(uint64_t a1)
{
  result = qword_1EDC9A870;
  if (!qword_1EDC9A870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF38F0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF38F140(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BF38F1AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BF38F1F8(a1, a2);
  sub_1BF38F4E4(&unk_1F3DECB98);
  return v3;
}

void *sub_1BF38F1F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BF38F388(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BF4E9354();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BF4E8A54();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BF38F388(v10, 0);
        result = sub_1BF4E92C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ActivityKey(uint64_t a1)
{
  result = qword_1EDC9EF28;
  if (!qword_1EDC9EF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BF38F388(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA0, &unk_1BF4F1CA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1BF38F3FC(uint64_t result, int a2, int a3)
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

uint64_t WidgetExtensionInfo.nominatedContainingBundleIdentifiers.getter()
{
  type metadata accessor for WidgetExtensionInfo(0);
}

uint64_t sub_1BF38F480()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 84));

  return v2;
}

uint64_t sub_1BF38F4E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BF45C6BC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BF38F660(uint64_t a1, int a2)
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

uint64_t sub_1BF38F6B4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_1BF4E8424();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t dispatch thunk of ExtensionManager.extension(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x198))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A0))();
}

uint64_t sub_1BF38F778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock);
  os_unfair_lock_lock(*(v4 + 16));
  sub_1BF38F8C8(v3);
  os_unfair_lock_unlock(*(v4 + 16));
  sub_1BF4E8264();
  v5 = *(v3 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity);
  v8[3] = sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v8[0] = v5;

  v6 = v5;
  sub_1BF4E8254();

  return sub_1BF38C9B4(v8, &qword_1EBDD8AD0, &unk_1BF4F53F0);
}

void sub_1BF38F8C8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) != 1)
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) = 0;
  v56 = *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateInitial);
  *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateInitial) = 0;
  if (qword_1EDC9D490 != -1)
  {
    swift_once();
  }

  v62 = sub_1BF4E7B54();
  __swift_project_value_buffer(v62, qword_1EDCA68E0);

  v2 = sub_1BF4E7B34();
  v3 = sub_1BF4E8E54();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v64[0] = v5;
    *v4 = 136446210;
    v6 = [*(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info) tokenString];
    v7 = sub_1BF4E8914();
    v9 = v8;

    v10 = sub_1BF38D65C(v7, v9, v64);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1BF389000, v2, v3, "[%{public}s] Begin fetching preferred languages", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
    MEMORY[0x1BFB5A5D0](v4, -1, -1);
  }

  v11 = *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  v12 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(&v11[v12], 1, v13) == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v15 = objc_opt_self();
  v60 = v13;
  v61 = v12;
  sub_1BF4E76B4();
  swift_endAccess();
  v16 = sub_1BF4E88E4();

  v17 = [v15 preferredLanguagesForContainerBundleIdentifier_];

  if (v17)
  {
    v18 = sub_1BF4E8BA4();
  }

  else
  {
    v18 = 0;
  }

  v59 = v14;

  v19 = sub_1BF4E7B34();
  v20 = sub_1BF4E8E54();

  v58 = v11;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v64[0] = v22;
    *v21 = 136446210;
    v23 = [v11 tokenString];
    v24 = sub_1BF4E8914();
    v25 = v18;
    v27 = v26;

    v28 = sub_1BF38D65C(v24, v27, v64);
    v18 = v25;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_1BF389000, v19, v20, "[%{public}s] End fetching preferred languages", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1BFB5A5D0](v22, -1, -1);
    MEMORY[0x1BFB5A5D0](v21, -1, -1);
  }

  v29 = OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages;
  v30 = *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages);
  if (v18)
  {
    if (v30 && (sub_1BF4D1C7C(v18, *(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages)) & 1) != 0)
    {

      goto LABEL_26;
    }

    v64[0] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
    v31 = sub_1BF4E8894();
    v33 = v32;

    v30 = *(a1 + v29);
    v57 = v18;
    if (!v30)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
LABEL_21:
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v62, qword_1EDCA69A0);

      v37 = sub_1BF4E7B34();
      v38 = sub_1BF4E8E84();

      if (!os_log_type_enabled(v37, v38))
      {

        goto LABEL_34;
      }

      v55 = v34;
      v63 = v29;
      v39 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v65 = v54;
      *v39 = 136315650;
      swift_beginAccess();
      if (v59(&v58[v61], 1, v60) != 1)
      {
        v40 = sub_1BF4E76B4();
        v42 = v41;
        swift_endAccess();
        v43 = sub_1BF38D65C(v40, v42, &v65);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v44 = sub_1BF38D65C(v31, v33, &v65);

        *(v39 + 14) = v44;
        *(v39 + 22) = 2080;
        v45 = sub_1BF38D65C(v55, v35, &v65);

        *(v39 + 24) = v45;
        _os_log_impl(&dword_1BF389000, v37, v38, "Changing Extension's preferred app override languages in container (%s) changed to: %s from: %s", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v54, -1, -1);
        MEMORY[0x1BFB5A5D0](v39, -1, -1);

        v29 = v63;
LABEL_34:
        *(a1 + v29) = v57;

        return;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

LABEL_20:
    v64[0] = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
    v34 = sub_1BF4E8894();
    v35 = v36;

    goto LABEL_21;
  }

  if (v30)
  {
    v57 = 0;
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_20;
  }

LABEL_26:
  if ((v56 & 1) == 0)
  {
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v62, qword_1EDCA69A0);

    v46 = sub_1BF4E7B34();
    v47 = sub_1BF4E8E84();

    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_32;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v65 = v49;
    *v48 = 136446210;
    swift_beginAccess();
    if (v59(&v58[v61], 1, v60) != 1)
    {
      v50 = sub_1BF4E76B4();
      v52 = v51;
      swift_endAccess();
      v53 = sub_1BF38D65C(v50, v52, &v65);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_1BF389000, v46, v47, "No change to preferred app overrides for (%{public}s).", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1BFB5A5D0](v49, -1, -1);
      MEMORY[0x1BFB5A5D0](v48, -1, -1);
LABEL_32:

      return;
    }

    goto LABEL_38;
  }
}

uint64_t sub_1BF3901C0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t KeepAliveTransaction.__allocating_init(reason:)(uint64_t a1, unint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BF390264(a1, a2);

  return v4;
}

uint64_t sub_1BF390264(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDC9EFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDC9EFC0);

  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1BF38D65C(a1, a2, &v13);
    _os_log_impl(&dword_1BF389000, v7, v8, "Added: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  sub_1BF4E89B4();
  v11 = os_transaction_create();

  if (v11)
  {
    *(v3 + 16) = v11;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3903EC(uint64_t a1)
{
  sub_1BF38B8B8(a1, v5);
  if (v5[3])
  {
    sub_1BF38E60C(v5, v6);
    v1 = v7;
    v2 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v3 = (*(v2 + 40))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1BF38C9B4(v5, &unk_1EBDD91B0, &unk_1BF4F0720);
    return 0;
  }

  return v3;
}

uint64_t KeepAliveTransaction.__deallocating_deinit()
{
  KeepAliveTransaction.deinit();

  return swift_deallocClassInstance();
}

uint64_t KeepAliveTransaction.deinit()
{
  v1 = v0;
  if (os_transaction_get_description())
  {
    v2 = sub_1BF4E8A44();
    v4 = v3;
    if (qword_1EDC9EFB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BF4E7B54();
    __swift_project_value_buffer(v5, qword_1EDC9EFC0);

    v6 = sub_1BF4E7B34();
    v7 = sub_1BF4E8E84();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_1BF38D65C(v2, v4, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1BF389000, v6, v7, "Removed: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
    v11 = v8;
    goto LABEL_10;
  }

  if (qword_1EDC9EFB0 != -1)
  {
    swift_once();
  }

  v12 = sub_1BF4E7B54();
  __swift_project_value_buffer(v12, qword_1EDC9EFC0);
  v6 = sub_1BF4E7B34();
  v13 = sub_1BF4E8E84();
  if (os_log_type_enabled(v6, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BF389000, v6, v13, "Removed: Transaction with no description", v14, 2u);
    v11 = v14;
LABEL_10:
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
  }

LABEL_12:

  swift_unknownObjectRelease();
  return v1;
}

uint64_t WidgetDescriptorCache.fillCache(for:descriptors:controlDescriptors:activityDescriptors:reason:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v49 = a3;
  v9 = type metadata accessor for ExtensionMetadata(0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = *a5;
  v47 = a5[1];
  v48 = v14;
  v15 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 stringRepresentation];

    v18 = sub_1BF4E8914();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 40))(v21, v22);
  sub_1BF4E9024();

  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1BF390B24(v24, v25);
  v27 = &v13[v9[8]];
  v28 = &v13[v9[5]];
  *v28 = v26;
  v28[1] = v29;
  *v27 = v18;
  v27[1] = v20;
  *&v13[v9[6]] = a2;
  v30 = v9[9];
  *&v13[v9[7]] = v49;
  *&v13[v30] = a4;
  v31 = qword_1EDC9D470;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1BF4E7B54();
  __swift_project_value_buffer(v32, qword_1EDCA68B0);

  v33 = sub_1BF4E7B34();
  v34 = sub_1BF4E8E84();
  v35 = os_log_type_enabled(v33, v34);
  v37 = v50;
  v36 = v51;
  if (v35)
  {
    v38 = swift_slowAlloc();
    *v38 = 134349056;
    if (a4 >> 62)
    {
      v39 = sub_1BF4E9204();
    }

    else
    {
      v39 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v38 + 4) = v39;

    _os_log_impl(&dword_1BF389000, v33, v34, "Filling descriptor cache with %{public}ld activity descriptors", v38, 0xCu);
    MEMORY[0x1BFB5A5D0](v38, -1, -1);
  }

  else
  {
  }

  sub_1BF38F0DC(v13, v36);
  v40 = *(v37 + 64);

  os_unfair_lock_lock((v40 + 24));
  sub_1BF390E94((v40 + 16), a1, v36, v37, v52);
  os_unfair_lock_unlock((v40 + 24));
  v41 = v52[0];

  if (v41 >> 62)
  {
    if (!sub_1BF4E9204())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C90, &qword_1BF4F73F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF4EBEF0;
    v44 = v47;
    v43 = v48;
    *(inited + 32) = v48;
    *(inited + 40) = v44;
    sub_1BF44B994(v43, v44);
    v45 = sub_1BF44B578(inited);
    swift_setDeallocating();
    sub_1BF4DC9D0(inited + 32);
    v52[0] = v41;
    v52[1] = v45;
    sub_1BF4E7C14();
  }

LABEL_14:

  sub_1BF38F140(v36);
  return sub_1BF38F140(v13);
}

uint64_t sub_1BF390B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = (*(a2 + 152))(a1, a2, v6);
  v18[1] = v9;
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v10 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](10285, 0xE200000000000000);
  (*(a2 + 72))(a1, a2);
  if (qword_1EDC9F0D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDC9F0E0;
  v12 = sub_1BF4E7254();
  v13 = [v11 stringFromDate_];

  v14 = sub_1BF4E8914();
  v16 = v15;

  (*(v5 + 8))(v8, v4);
  MEMORY[0x1BFB58C90](v14, v16);

  MEMORY[0x1BFB58C90](41, 0xE100000000000000);
  return v18[0];
}

uint64_t sub_1BF390D54()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 72));

  return v2;
}

uint64_t sub_1BF390DA4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info + 8);

  return v1;
}

uint64_t sub_1BF390E08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF390E94@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v79 = a5;
  v75 = a4;
  v82 = a3;
  v7 = type metadata accessor for ExtensionMetadata(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v69 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CA0, &unk_1BF4F7630);
  MEMORY[0x1EEE9AC00](v78);
  v13 = &v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v87 = MEMORY[0x1E69E7CC0];
  v25 = a2[3];
  v24 = a2[4];
  v81 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v26 = (*(v24 + 40))(v25, v24);
  v27 = v26;
  v76 = a1;
  v28 = *a1;
  v29 = *(*a1 + 16);
  v80 = v7;
  if (v29)
  {
    v30 = sub_1BF3916CC(v26);
    if (v31)
    {
      sub_1BF38F0DC(*(v28 + 56) + v8[9] * v30, v23);

      v32 = v8[7];
      v33 = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v34 = v23;
      v35 = 0;
    }

    else
    {

      v32 = v8[7];
      v33 = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v34 = v23;
      v35 = 1;
    }

    v36 = v80;
    v32(v34, v35, 1, v80);
  }

  else
  {

    v32 = v8[7];
    v33 = (v8 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v32(v23, 1, 1, v7);
    v36 = v7;
  }

  sub_1BF38F0DC(v82, v20);
  v72 = v33;
  v73 = v32;
  v32(v20, 0, 1, v36);
  v37 = *(v78 + 48);
  sub_1BF38C94C(v23, v13, &qword_1EBDD9318, &qword_1BF4F09A8);
  sub_1BF38C94C(v20, &v13[v37], &qword_1EBDD9318, &qword_1BF4F09A8);
  v38 = v8[6];
  if (v38(v13, 1, v36) == 1)
  {
    sub_1BF38C9B4(v20, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF38C9B4(v23, &qword_1EBDD9318, &qword_1BF4F09A8);
    if (v38(&v13[v37], 1, v36) == 1)
    {
      result = sub_1BF38C9B4(v13, &qword_1EBDD9318, &qword_1BF4F09A8);
LABEL_22:
      v65 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  v40 = v70;
  sub_1BF38C94C(v13, v70, &qword_1EBDD9318, &qword_1BF4F09A8);
  if (v38(&v13[v37], 1, v36) == 1)
  {
    sub_1BF38C9B4(v20, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF38C9B4(v23, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF38F140(v40);
LABEL_12:
    sub_1BF38C9B4(v13, &qword_1EBDD9CA0, &unk_1BF4F7630);
    v41 = v77;
    goto LABEL_13;
  }

  v66 = v71;
  sub_1BF3919A0(&v13[v37], v71);
  v67 = v40;
  v68 = _s9ChronoKit17ExtensionMetadataV2eeoiySbAC_ACtFZ_0(v40, v66);
  sub_1BF38F140(v66);
  sub_1BF38C9B4(v20, &qword_1EBDD9318, &qword_1BF4F09A8);
  sub_1BF38C9B4(v23, &qword_1EBDD9318, &qword_1BF4F09A8);
  sub_1BF38F140(v67);
  result = sub_1BF38C9B4(v13, &qword_1EBDD9318, &qword_1BF4F09A8);
  v41 = v77;
  if (v68)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v42 = sub_1BF4E7B54();
  __swift_project_value_buffer(v42, qword_1EDCA6898);
  sub_1BF38E49C(v81, v84);
  sub_1BF38F0DC(v82, v41);
  v43 = sub_1BF4E7B34();
  v44 = sub_1BF4E8E84();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v83 = v47;
    *v45 = 138543618;
    v48 = v85;
    v49 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v50 = (*(v49 + 40))(v48, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    *(v45 + 4) = v50;
    *v46 = v50;
    *(v45 + 12) = 2082;
    sub_1BF38F0DC(v41, v71);
    v51 = v80;
    v52 = sub_1BF4E89A4();
    v54 = v53;
    sub_1BF38F140(v41);
    v55 = sub_1BF38D65C(v52, v54, &v83);

    *(v45 + 14) = v55;
    _os_log_impl(&dword_1BF389000, v43, v44, "Updating descriptor cache for %{public}@ with %{public}s.", v45, 0x16u);
    sub_1BF38C9B4(v46, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1BFB5A5D0](v47, -1, -1);
    MEMORY[0x1BFB5A5D0](v45, -1, -1);
  }

  else
  {

    sub_1BF38F140(v41);
    v56 = __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v51 = v80;
  }

  MEMORY[0x1EEE9AC00](v56);
  v57 = v82;
  *(&v69 - 2) = v82;
  sub_1BF4D6630(sub_1BF4DCD00);
  v58 = v81;
  v59 = v81[3];
  v60 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v59);
  v61 = (*(v60 + 40))(v59, v60);
  v62 = v74;
  sub_1BF38F0DC(v57, v74);
  v73(v62, 0, 1, v51);
  sub_1BF43ABB4(v62, v61);
  v63 = v58[3];
  v64 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v63);
  (*(v64 + 40))(v63, v64);
  MEMORY[0x1BFB58DD0]();
  if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BF4E8BE4();
  }

  result = sub_1BF4E8C24();
  v65 = v87;
LABEL_23:
  *v79 = v65;
  return result;
}

unint64_t sub_1BF3916CC(uint64_t a1)
{
  v2 = sub_1BF4E9094();

  return sub_1BF391710(a1, v2);
}

unint64_t sub_1BF391710(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BF4E9034();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BF4E90A4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1BF3917E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
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

uint64_t sub_1BF3918C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
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

uint64_t sub_1BF391990(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BF3919A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9ChronoKit17ExtensionMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994150]);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v21 == v19 && v22 == v20)
  {
  }

  else
  {
    v5 = sub_1BF4E9734();

    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v6 = type metadata accessor for ExtensionMetadata(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1BF4E9734() & 1) == 0 || (sub_1BF391BC4(*(a1 + v6[6]), *(a2 + v6[6])) & 1) == 0 || (sub_1BF391E40(*(a1 + v6[7]), *(a2 + v6[7])) & 1) == 0)
  {
    goto LABEL_22;
  }

  v12 = v6[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (sub_1BF4E9734() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v16)
  {
LABEL_22:
    v17 = 0;
    return v17 & 1;
  }

  v17 = sub_1BF391E54(*(a1 + v6[9]), *(a2 + v6[9]));
  return v17 & 1;
}

uint64_t sub_1BF391BD8(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1BF3901C0(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1BFB59570](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1BFB59570](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1BF4E90A4();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1BF4E90A4();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1BF4E9204();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1BF4E9204();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t DescriptorCollection.allExtensionIdentities.getter()
{
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
  sub_1BF4E87B4();

  swift_getWitnessTable();
  return sub_1BF4E8D94();
}

uint64_t sub_1BF391F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF391FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF392020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BF3920EC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 64);

  os_unfair_lock_lock((v7 + 24));
  v8 = a1(*(v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = swift_allocObject();
  v10 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v11 = swift_allocObject();
  v9[6] = v10;
  v9[7] = &off_1F3DF42A8;
  v9[2] = v8;
  v9[3] = v11;
  return v9;
}

void *sub_1BF3921AC(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata(0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CB8, &unk_1BF4F7650);
  result = sub_1BF4E9494();
  v6 = result;
  v7 = 0;
  v29 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v26 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v29 + 48) + 8 * v18);
      sub_1BF38F0DC(*(v29 + 56) + *(v27 + 72) * v18, v4);
      v20 = *&v4[*(v28 + 28)];
      v21 = v19;

      result = sub_1BF38F140(v4);
      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + 8 * v18) = v21;
      *(v6[7] + 8 * v18) = v20;
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v6[2] = v24;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *DescriptorCollection.filter(_:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = v34 - v8;
  v9 = *a1;
  v10 = v1[2];
  v39 = v1;
  v46 = *(v3 + 80);
  v13 = type metadata accessor for DescriptorCollectionFilterType(0, v46, v11, v12);

  if (!sub_1BF4E8C34())
  {
LABEL_15:

    return DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(v10);
  }

  v34[1] = v4;
  v14 = 0;
  v15 = 0;
  v34[4] = "cadoWidgetExtension";
  v34[5] = "extensions-verbose";
  v34[2] = v5 + 8;
  v34[3] = v5 + 16;
  v16 = v5;
  v44 = v13;
  v45 = v5;
  v35 = v9;
  while (1)
  {
    v19 = sub_1BF4E8C14();
    result = sub_1BF4E8BD4();
    if ((v19 & 1) == 0)
    {
      break;
    }

    v17 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      goto LABEL_17;
    }

    v47 = v15;
    v21 = *(v9 + 16 * v14 + 32);
    if (v21)
    {
      if (v21 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9280, &qword_1BF4F08A0);
        v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v40 = *(v16 + 72);
        v41 = swift_allocObject();
        v23 = v41 + v22;
        sub_1BF4E7694();
        sub_1BF4E7694();
        v24 = sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
        v25 = v38;
        v48 = MEMORY[0x1BFB58FA0](2, v38, v24);
        v43 = (v14 + 1);
        v26 = *(v16 + 16);
        v27 = v36;
        v26(v36, v23, v25);
        v42 = v10;
        v28 = v37;
        sub_1BF4ACFDC(v37, v27);
        v29 = *(v45 + 8);
        v29(v28, v25);
        v26(v27, v23 + v40, v25);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1BF4ACFDC(v28, v27);
        v30 = v25;
        v9 = v35;
        v31 = (v29)(v28, v30);
        v32 = v48;
        MEMORY[0x1EEE9AC00](v31);
        v34[-2] = v46;
        v34[-1] = v32;
        sub_1BF4E9034();
        sub_1BF4E8CA4();
        sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
        v17 = v43;
        v15 = v47;
        v10 = sub_1BF4E87D4();

        v16 = v45;
        goto LABEL_5;
      }

      if (v21 == 2)
      {
        sub_1BF4E9034();
        sub_1BF4E8CA4();
        sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
        v15 = v47;
        v18 = sub_1BF4E8794();
      }

      else
      {
        v43 = v34;
        *&v33 = MEMORY[0x1EEE9AC00](result);
        v34[-4] = v46;
        *&v34[-3] = v33;
        sub_1BF38ED18(v21, *(&v33 + 1));
        sub_1BF4E9034();
        sub_1BF4E8CA4();
        sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
        v17 = (v14 + 1);
        v15 = v47;
        v18 = sub_1BF4E8794();
        sub_1BF4B0D38(v21);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](result);
      v34[-2] = v46;
      sub_1BF4E9034();
      sub_1BF4E8CA4();
      sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
      v17 = (v14 + 1);
      v15 = v47;
      v18 = sub_1BF4E8794();
    }

    v10 = v18;
LABEL_5:
    ++v14;
    if (v17 == sub_1BF4E8C34())
    {
      goto LABEL_15;
    }
  }

  result = sub_1BF4E9304();
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *DescriptorCollection.__allocating_init(descriptorsByExtensionIdentity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v4 = swift_allocObject();
  v2[6] = v3;
  v2[7] = &off_1F3DF42A8;
  v2[2] = a1;
  v2[3] = v4;
  return v2;
}

uint64_t sub_1BF392B88@<X0>(uint64_t *a3@<X8>)
{
  sub_1BF4E8CA4();

  swift_getWitnessTable();
  v4 = sub_1BF4E9364();
  swift_getWitnessTable();
  result = sub_1BF4E8DE4();
  if (result)
  {

    v4 = 0;
  }

  *a3 = v4;
  return result;
}

void sub_1BF392C94(id *a1)
{
  v1 = *a1;
  if (![*a1 isEnabled])
  {
    return;
  }

  v2 = [v1 requiredFeatureFlags];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_1BF3901C0(0, &qword_1EDC96390, 0x1E6994298);
  v4 = sub_1BF4E8BA4();

  v32 = v1;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:

    return;
  }

LABEL_23:
  v5 = sub_1BF4E9204();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB59570](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (([objc_opt_self() isFeatureFlagEnabled_] & 1) == 0)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_24;
    }
  }

  if (qword_1EDC9D510 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF4E7B54();
  __swift_project_value_buffer(v10, qword_1EDCA69B8);
  v11 = v8;
  v12 = v32;
  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446722;
    v17 = [v12 succinctDescription];

    if (v17)
    {
      v18 = sub_1BF4E8914();
      v20 = v19;

      v21 = sub_1BF38D65C(v18, v20, &v33);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v22 = [v11 domain];
      v23 = sub_1BF4E8914();
      v25 = v24;

      v26 = sub_1BF38D65C(v23, v25, &v33);

      *(v15 + 14) = v26;
      *(v15 + 22) = 2082;
      v27 = [v11 featureName];
      v28 = sub_1BF4E8914();
      v30 = v29;

      v31 = sub_1BF38D65C(v28, v30, &v33);

      *(v15 + 24) = v31;
      _os_log_impl(&dword_1BF389000, v13, v14, "filtering out %{public}s due to feature flag: %{public}s:%{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_1BF393058@<X0>(uint64_t *a3@<X8>)
{
  sub_1BF4E8CA4();

  swift_getWitnessTable();
  v4 = sub_1BF4E9364();
  swift_getWitnessTable();
  result = sub_1BF4E8DE4();
  if (result)
  {

    v4 = 0;
  }

  *a3 = v4;
  return result;
}

uint64_t sub_1BF393158@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  return sub_1BF38C94C(v3 + *(v4 + 52), a1, &qword_1EBDD8AF8, &qword_1BF4EC370);
}

uint64_t Extension.localizedDisplayName.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = *(a2 + 32);
  v11(a1, a2, v8);
  v12 = *(v10 + 3);
  v13 = *(v10 + 4);

  sub_1BF38DB44(v10);
  if (!v13)
  {
    (v11)(a1, a2);
    v14 = *v6;
    sub_1BF38DB44(v6);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v12 = sub_1BF4E76B4();
    swift_endAccess();
  }

  return v12;
}

uint64_t Extension.containerBundleLocalizedDisplayName.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a2 + 32);
  v12(a1, a2, v9);
  v13 = &v11[*(v5 + 76)];
  v15 = *v13;
  v14 = v13[1];

  sub_1BF38DB44(v11);
  if (!v14)
  {
    (v12)(a1, a2);
    v16 = *v7;
    sub_1BF38DB44(v7);
    v17 = *MEMORY[0x1E69941B0];
    swift_beginAccess();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v18 - 8) + 48))(&v16[v17], 1, v18))
    {
      swift_endAccess();
      v15 = 0x6E776F6E6B6E55;
    }

    else
    {
      v15 = sub_1BF4E76B4();
      swift_endAccess();
    }
  }

  return v15;
}

void *sub_1BF393538()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 108));
  v3 = v2;
  return v2;
}

uint64_t DescriptorCollection.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetEntryKey(uint64_t a1)
{
  result = qword_1EDC9F910;
  if (!qword_1EDC9F910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetEntryKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = [*v0 _loggingIdentifierWithMetrics_];
  v6 = sub_1BF4E8914();
  v8 = v7;

  v19 = 544108320;
  v20 = 0xE400000000000000;
  v9 = type metadata accessor for WidgetEntryKey(0);
  sub_1BF3988F8(v0 + *(v9 + 24), v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1BF38C9B4(v4, &qword_1EBDD8E78, &unk_1BF4EE790);
    v12 = 0xE500000000000000;
    v13 = 0x6C61636F6CLL;
  }

  else
  {
    v14 = sub_1BF4E7754();
    v12 = v15;
    (*(v11 + 8))(v4, v10);
    v13 = v14;
  }

  MEMORY[0x1BFB58C90](v13, v12);

  v16 = v19;
  v17 = v20;
  v19 = v6;
  v20 = v8;

  MEMORY[0x1BFB58C90](v16, v17);

  return v19;
}

uint64_t type metadata accessor for WidgetCacheKey(uint64_t a1)
{
  result = qword_1EDC9E938;
  if (!qword_1EDC9E938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF393884(uint64_t a1)
{
  v2 = type metadata accessor for WidgetEntryKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3938E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X3>, uint64_t *a5@<X8>)
{
  v86 = a1;
  v77 = a5;
  v78 = a2;
  v76 = sub_1BF4E6E34();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E7194();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WidgetEntryKey(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E8424();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF4E8294();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = qword_1EDCA6A00;
  swift_beginAccess();
  v83 = v17;
  v84 = v16;
  (*(v17 + 16))(v19, a3 + v20, v16);
  v21 = [*a4 extensionIdentity];
  v22 = &v21[*MEMORY[0x1E69941A8]];
  swift_beginAccess();
  v23 = *(v22 + 1);

  if (v23)
  {

    sub_1BF4E8274();
  }

  sub_1BF4E82C4();
  v24 = v85;
  v25 = sub_1BF4E82A4();
  v26 = v24;
  if (v24)
  {
    return (*(v83 + 8))(v19, v84);
  }

  v27 = v25;
  (*(v13 + 16))(v15, v78, v12);
  sub_1BF4E86E4();
  sub_1BF3F4A08(a4, v28);
  sub_1BF4E86D4();
  if (qword_1EDC9EFD8 != -1)
  {
    swift_once();
  }

  v29 = sub_1BF4E7B54();
  __swift_project_value_buffer(v29, qword_1EDCA6A48);
  v30 = v79;
  sub_1BF3A5A3C(a4, v79, type metadata accessor for WidgetEntryKey);
  v31 = v80;
  v32 = v81;
  v33 = v82;
  (*(v81 + 16))(v80, v86, v82);
  swift_retain_n();
  v34 = sub_1BF4E7B34();
  v35 = sub_1BF4E8E84();
  if (!os_log_type_enabled(v34, v35))
  {

    (*(v32 + 8))(v31, v33);
    sub_1BF39D654(v30, type metadata accessor for WidgetEntryKey);
LABEL_14:
    v69 = sub_1BF4E8714();
    v70 = MEMORY[0x1E6985B20];
    v71 = v77;
    v77[3] = v69;
    v71[4] = v70;
    *v71 = v27;
    return (*(v83 + 8))(v19, v84);
  }

  LODWORD(v78) = v35;
  v85 = v34;
  v36 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v88 = v73;
  *v36 = 136447234;
  v37 = WidgetEntryKey.description.getter();
  v38 = v30;
  v39 = v27;
  v40 = v37;
  v42 = v41;
  sub_1BF39D654(v38, type metadata accessor for WidgetEntryKey);
  v43 = sub_1BF38D65C(v40, v42, &v88);

  *(v36 + 4) = v43;
  *(v36 + 12) = 2082;
  sub_1BF3A5AA4(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v44 = sub_1BF4E96A4();
  v46 = v45;
  (*(v32 + 8))(v31, v33);
  v47 = sub_1BF38D65C(v44, v46, &v88);

  *(v36 + 14) = v47;
  *(v36 + 22) = 2050;
  v48 = *(sub_1BF4E86F4() + 16);

  *(v36 + 24) = v48;

  *(v36 + 32) = 2082;
  v86 = v39;
  v49 = sub_1BF4E86C4();
  v50 = *(v49 + 16);
  if (v50)
  {
    v81 = 0;
    v51 = sub_1BF4388F0(v50, 0);
    v52 = *(sub_1BF4E8454() - 8);
    v53 = v51;
    sub_1BF438B78(v87, &v51[(*(v52 + 80) + 32) & ~*(v52 + 80)], v50, v49);
    v82 = v54;
    v55 = v87[0];
    v56 = v87[1];

    sub_1BF39A9CC(v55);
    if (v82 != v50)
    {
      __break(1u);
      goto LABEL_17;
    }

    v26 = v81;
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
  }

  v87[0] = v53;
  sub_1BF3F6194(v87);
  v56 = v26;
  if (!v26)
  {

    v57 = sub_1BF3F43E0(8236, 0xE200000000000000, v87[0]);
    v59 = v58;

    v60 = sub_1BF38D65C(v57, v59, &v88);

    *(v36 + 34) = v60;
    *(v36 + 42) = 2082;
    v61 = v74;
    sub_1BF4E8704();
    sub_1BF3A5AA4(&qword_1EDC9F108, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
    v62 = v76;
    v63 = sub_1BF4E96A4();
    v65 = v64;
    (*(v75 + 8))(v61, v62);
    v66 = sub_1BF38D65C(v63, v65, &v88);

    *(v36 + 44) = v66;
    v67 = v85;
    v27 = v86;
    v68 = v73;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v68, -1, -1);
    MEMORY[0x1BFB5A5D0](v36, -1, -1);

    goto LABEL_14;
  }

LABEL_17:

  __break(1u);
  return result;
}

unint64_t sub_1BF39419C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87F0, &qword_1BF4F5410);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BF3CD5D0(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v7;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t sub_1BF3942D0(uint64_t a1)
{
  result = sub_1BF4E8424();
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

uint64_t DataProtectionMonitor.__allocating_init(keybagStateProvider:)(void *a1)
{
  v2 = swift_allocObject();
  DataProtectionMonitor.init(keybagStateProvider:)(a1);
  return v2;
}

uint64_t *DataProtectionMonitor.init(keybagStateProvider:)(void *a1)
{
  v3 = *v1;
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = *MEMORY[0x1E69859A0];
  v9 = *(v5 + 104);
  v9(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D08, &qword_1BF4EDA28);
  swift_allocObject();
  v1[2] = sub_1BF4E7C64();
  *(v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token) = 0;
  sub_1BF38E49C(a1, v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider);
  (v9)(v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel, v8, v4);
  sub_1BF39455C(v1, a1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1BF39455C(uint64_t a1, void *a2, uint64_t a3)
{
  v73 = a3;
  v83 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D28, &qword_1BF4EDB18);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D30, &qword_1BF4EDB20);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D38, &qword_1BF4EDB28);
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v64 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D10, &qword_1BF4EDA30);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v64 - v10;
  v67 = sub_1BF4E7674();
  v12 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF4E7684();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BF4E8424();
  v69 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v72 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v64 - v21;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1BF4E7704();
  v22 = a2[3];
  v71 = a2;
  v23 = a2;
  v24 = v14;
  v25 = v67;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  v26 = sub_1BF4E7724();
  v27 = *MEMORY[0x1E6994048];
  (*(v12 + 104))(v24, *MEMORY[0x1E6994048], v25);
  v28 = *(v70 + 48);
  (*(v16 + 16))(v11, v18, v15);
  (*(v12 + 16))(&v11[v28], v24, v25);
  v29 = (*(v16 + 88))(v11, v15);
  if (v29 == *MEMORY[0x1E6994090])
  {
    v30 = *(v12 + 8);
    v30(v24, v25);
    (*(v16 + 8))(v18, v15);
    v32 = v68;
    v31 = v69;
    v33 = v84;
    (*(v69 + 104))(v68, *MEMORY[0x1E69859A0], v84);
    v30(&v11[v28], v25);
    v34 = v32;
    v35 = v31;
LABEL_12:
    v43 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
    v44 = v83;
    swift_beginAccess();
    (*(v35 + 24))(v44 + v43, v34, v33);
    swift_endAccess();
    v45 = v72;
    (*(v35 + 16))(v72, v44 + v43, v33);
    sub_1BF4E7C54();
    v46 = *(v35 + 8);
    v46(v45, v33);
    v46(v34, v33);
    v47 = v71;
    __swift_project_boxed_opaque_existential_1(v71, v71[3]);
    v86 = sub_1BF4E7714();
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    v85 = sub_1BF4E7734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D40, &qword_1BF4EDB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D48, &qword_1BF4EDB38);
    v48 = MEMORY[0x1E695BED8];
    sub_1BF38C8B4(&qword_1EDC9FF80, &qword_1EBDD8D40, &qword_1BF4EDB30, MEMORY[0x1E695BED8]);
    sub_1BF38C8B4(&qword_1EDC9FF78, &qword_1EBDD8D48, &qword_1BF4EDB38, v48);
    v49 = v74;
    sub_1BF4E7CA4();

    v50 = swift_allocObject();
    *(v50 + 16) = v73;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1BF395760;
    *(v51 + 24) = v50;
    sub_1BF38C8B4(&qword_1EDC9FF98, &qword_1EBDD8D28, &qword_1BF4EDB18, MEMORY[0x1E695BC68]);
    v52 = v75;
    v53 = v77;
    sub_1BF4E7CB4();

    (*(v76 + 8))(v49, v53);
    sub_1BF38C8B4(&qword_1EDC9FF88, &qword_1EBDD8D30, &qword_1BF4EDB20, MEMORY[0x1E695BD60]);
    sub_1BF3951EC();
    v54 = v79;
    v55 = v80;
    sub_1BF4E7D04();
    (*(v78 + 8))(v52, v54);
    swift_allocObject();
    swift_weakInit();
    sub_1BF38C8B4(&qword_1EDC9FF90, &qword_1EBDD8D38, &qword_1BF4EDB28, MEMORY[0x1E695BD38]);
    v56 = v82;
    v57 = sub_1BF4E7D14();

    (*(v81 + 8))(v55, v56);
    *(v44 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token) = v57;
  }

  v64 = v24;
  v65 = v15;
  v66 = v16;
  v36 = v12;
  v37 = v25;
  v34 = v68;
  v35 = v69;
  if (v29 == *MEMORY[0x1E69940A0])
  {
    v38 = v36;
LABEL_5:
    v39 = *(v38 + 8);
    v39(v64, v37);
    (*(v66 + 8))(v18, v65);
    v39(&v11[v28], v37);
LABEL_6:
    v40 = MEMORY[0x1E6985988];
LABEL_7:
    v33 = v84;
    (*(v35 + 104))(v34, *v40, v84);
    goto LABEL_12;
  }

  if (v29 == *MEMORY[0x1E6994080])
  {
    v41 = *(v36 + 8);
    v41(v64, v37);
    (*(v66 + 8))(v18, v65);
    v42 = MEMORY[0x1E6985998];
    if ((v26 & 1) == 0)
    {
      v42 = MEMORY[0x1E69859A0];
    }

    v33 = v84;
    (*(v35 + 104))(v34, *v42, v84);
    v41(&v11[v28], v37);
    goto LABEL_12;
  }

  if (v29 == *MEMORY[0x1E6994088])
  {
    v59 = *(v36 + 8);
    v59(v64, v37);
    (*(v66 + 8))(v18, v65);
    v59(&v11[v28], v37);
LABEL_15:
    v40 = MEMORY[0x1E6985990];
    goto LABEL_7;
  }

  v38 = v36;
  if (v29 == *MEMORY[0x1E6994098] || v29 == *MEMORY[0x1E6994078] || v29 == *MEMORY[0x1E6994070])
  {
    goto LABEL_5;
  }

  if (v29 == *MEMORY[0x1E6994068])
  {
    v60 = (*(v36 + 88))(&v11[v28], v37);
    if (v60 == *MEMORY[0x1E6994040])
    {
      (*(v38 + 8))(v64, v37);
      (*(v66 + 8))(v18, v65);
      goto LABEL_15;
    }

    v61 = v60 == v27;
    v62 = v66;
    v63 = v65;
    if (v61)
    {
      (*(v38 + 8))(v64, v37);
      (*(v62 + 8))(v18, v63);
      goto LABEL_6;
    }
  }

  else if (v29 == *MEMORY[0x1E6994060])
  {
    goto LABEL_5;
  }

  result = sub_1BF4E9724();
  __break(1u);
  return result;
}

uint64_t sub_1BF39517C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3951B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1BF3951EC()
{
  result = qword_1EDC9FDE0;
  if (!qword_1EDC9FDE0)
  {
    sub_1BF4E8424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FDE0);
  }

  return result;
}

uint64_t sub_1BF395244(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D50, &qword_1BF4EDB40);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_1BF3952A0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D10, &qword_1BF4EDA30);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31[-v5];
  v7 = sub_1BF4E7674();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *MEMORY[0x1E6994048];
  (*(v8 + 104))(v11, *MEMORY[0x1E6994048], v7, v9);
  v13 = *(v4 + 48);
  v14 = sub_1BF4E7684();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, a1, v14);
  (*(v8 + 16))(&v6[v13], v11, v7);
  v16 = (*(v15 + 88))(v6, v14);
  if (v16 == *MEMORY[0x1E6994090])
  {
    v17 = *(v8 + 8);
    v17(v11, v7);
    v18 = *MEMORY[0x1E69859A0];
    v19 = sub_1BF4E8424();
    (*(*(v19 - 8) + 104))(v33, v18, v19);
    return (v17)(&v6[v13], v7);
  }

  v21 = v33;
  if (v16 == *MEMORY[0x1E69940A0])
  {
    goto LABEL_4;
  }

  if (v16 != *MEMORY[0x1E6994080])
  {
    if (v16 == *MEMORY[0x1E6994088])
    {
      v29 = *(v8 + 8);
      v29(v11, v7);
      v29(&v6[v13], v7);
LABEL_14:
      v23 = MEMORY[0x1E6985990];
      goto LABEL_6;
    }

    if (v16 != *MEMORY[0x1E6994098] && v16 != *MEMORY[0x1E6994078] && v16 != *MEMORY[0x1E6994070])
    {
      if (v16 == *MEMORY[0x1E6994068])
      {
        v30 = (*(v8 + 88))(&v6[v13], v7);
        if (v30 == *MEMORY[0x1E6994040])
        {
          (*(v8 + 8))(v11, v7);
          goto LABEL_14;
        }

        if (v30 == v12)
        {
          (*(v8 + 8))(v11, v7);
          goto LABEL_5;
        }

LABEL_25:
        result = sub_1BF4E9724();
        __break(1u);
        return result;
      }

      if (v16 != *MEMORY[0x1E6994060])
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    v22 = *(v8 + 8);
    v22(v11, v7);
    v22(&v6[v13], v7);
LABEL_5:
    v23 = MEMORY[0x1E6985988];
LABEL_6:
    v24 = *v23;
    v25 = sub_1BF4E8424();
    return (*(*(v25 - 8) + 104))(v21, v24, v25);
  }

  v26 = *(v8 + 8);
  v26(v11, v7);
  v27 = sub_1BF4E8424();
  v28 = MEMORY[0x1E6985998];
  if ((v32 & 1) == 0)
  {
    v28 = MEMORY[0x1E69859A0];
  }

  (*(*(v27 - 8) + 104))(v21, *v28, v27);
  return (v26)(&v6[v13], v7);
}

uint64_t sub_1BF395770(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF4E8424();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(v4 + 16);
    v12(v9, a1, v3);
    v13 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
    swift_beginAccess();
    (*(v4 + 24))(v11 + v13, v9, v3);
    swift_endAccess();
    v12(v6, v11 + v13, v3);
    sub_1BF4E7C54();
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  return result;
}

uint64_t sub_1BF395960()
{
  v0 = sub_1BF4E8424();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF395A3C(v3);
  sub_1BF395C08(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BF395A3C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCA6868;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF395AC4(uint64_t a1)
{
  v3 = qword_1EDCA6868;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1BF395B90();
  return (*(v5 + 8))(a1, v4);
}

void sub_1BF395B90()
{
  v1 = *(v0 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1BF395960();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void sub_1BF395C08(uint64_t a1)
{
  v171 = *v1;
  v3 = v171;
  v4 = v171[12];
  v138 = sub_1BF4E90F4();
  v5 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v152 = &v128 - v6;
  v155 = v4;
  v170 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v172 = &v128 - v10;
  v158 = *(v3[10] - 8);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v128 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v128 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v159 = &v128 - v19;
  v160 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v167 = sub_1BF4E90F4();
  v169 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v175 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v166 = &v128 - v24;
  v25 = sub_1BF4E8424();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v143 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v128 - v29;
  os_unfair_lock_assert_owner(*(*(v1 + qword_1EDC9AF58) + 16));
  v31 = qword_1EDC9AF50;
  v32 = *(v26 + 16);
  v139 = a1;
  v32(v30, a1, v25);
  v173 = v1;
  v135 = v31;
  v33 = sub_1BF4E7B34();
  v34 = sub_1BF4E8E84();
  v35 = os_log_type_enabled(v33, v34);
  v36 = &loc_1BF4EA000;
  v145 = v25;
  v163 = TupleTypeMetadata2;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v176[0] = v174;
    *v37 = 136446210;
    sub_1BF3983D4(&qword_1EDC9D780, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
    v38 = sub_1BF4E96A4();
    v39 = v5;
    v41 = v40;
    v42 = *(v26 + 8);
    v144 = v26 + 8;
    v142 = v42;
    v42(v30, v25);
    v43 = sub_1BF38D65C(v38, v41, v176);
    v5 = v39;
    v36 = &loc_1BF4EA000;

    *(v37 + 4) = v43;
    _os_log_impl(&dword_1BF389000, v33, v34, "Data protection level changed to %{public}s available", v37, 0xCu);
    v44 = v174;
    __swift_destroy_boxed_opaque_existential_1Tm(v174);
    MEMORY[0x1BFB5A5D0](v44, -1, -1);
    v45 = v37;
    TupleTypeMetadata2 = v163;
    MEMORY[0x1BFB5A5D0](v45, -1, -1);
  }

  else
  {

    v46 = *(v26 + 8);
    v144 = v26 + 8;
    v142 = v46;
    v46(v30, v25);
  }

  v47 = qword_1EDC9AF48;
  v48 = v173;
  swift_beginAccess();
  v49 = *(v48 + v47);
  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 64);
  v147 = (v51 + 63) >> 6;
  v165 = TupleTypeMetadata2 - 8;
  v161 = (v158 + 16);
  v174 = (v158 + 32);
  v164 = (v169 + 4);
  v151 = (v170 + 6);
  v137 = (v170 + 4);
  v131 = (v170 + 2);
  v148 = (v170 + 1);
  v169 = (v158 + 8);
  v136 = (v5 + 8);
  v157 = v49;

  v54 = 0;
  *&v55 = v36[314];
  v129 = v55;
  *&v55 = 136446466;
  v128 = v55;
  v56 = v155;
  v57 = v160;
  v58 = v175;
  v162 = v50;
  v168 = v17;
  if (!v53)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v61 = v54;
LABEL_19:
      v63 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v64 = v63 | (v61 << 6);
      v65 = v157;
      v66 = v158;
      v67 = v159;
      (*(v158 + 16))(v159, *(v157 + 48) + *(v158 + 72) * v64, v57);
      LOBYTE(v64) = *(*(v65 + 56) + v64);
      v68 = *(TupleTypeMetadata2 + 48);
      v69 = *(v66 + 32);
      v58 = v175;
      v69(v175, v67, v57);
      v62 = 0;
      v58[v68] = v64;
LABEL_20:
      v70 = *(TupleTypeMetadata2 - 8);
      (*(v70 + 56))(v58, v62, 1, TupleTypeMetadata2);
      v71 = v166;
      (*v164)(v166, v58, v167);
      if ((*(v70 + 48))(v71, 1, TupleTypeMetadata2) == 1)
      {

        return;
      }

      LODWORD(v170) = v71[*(TupleTypeMetadata2 + 48)];
      (*v174)(v17, v71, v57);
      swift_beginAccess();
      v72 = v171;
      v73 = v171[11];
      v74 = v171[16];
      sub_1BF4E8834();
      v75 = v72[14];

      sub_1BF4E8854();

      v76 = v57;
      v77 = v176[0];
      if (v176[0])
      {
        break;
      }

      (*v169)(v17, v76);
      TupleTypeMetadata2 = v163;
      v58 = v175;
      v50 = v162;
      v57 = v76;
      if (!v53)
      {
        goto LABEL_9;
      }
    }

    sub_1BF4E87C4();

    swift_getWitnessTable();
    v78 = v152;
    sub_1BF4E8DD4();
    if ((*v151)(v78, 1, v56) == 1)
    {
      v79 = v168;
      v80 = v160;
      (*v169)(v168, v160);

      v81 = v78;
      v17 = v79;
      (*v136)(v81, v138);
      v57 = v80;
    }

    else
    {
      (*v137)(v172, v78, v56);
      v156 = v77;

      swift_beginAccess();

      v82 = v171[13];
      v83 = v171[15];
      v84 = v171[17];
      v176[0] = v160;
      v176[1] = v73;
      v176[2] = v56;
      v176[3] = v82;
      v146 = v82;
      v176[4] = v75;
      v176[5] = v83;
      v176[6] = v74;
      v176[7] = v84;
      type metadata accessor for ReloadTaskPair(0, v176);
      sub_1BF4E8854();

      v154 = v176[0];
      v153 = v84;
      v85 = *(v84 + 88);
      v86 = v143;
      v85(v56, v84);
      v150 = sub_1BF3983D4(&qword_1EDC9D788, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
      v87 = v145;
      LODWORD(v149) = sub_1BF4E88A4();
      v88 = v142;
      v142(v86, v87);
      v141 = v84 + 88;
      v140 = v85;
      v85(v155, v153);
      v89 = sub_1BF4E88A4();
      v88(v86, v87);
      if (v170 == 3)
      {
        v57 = v160;
        v17 = v168;
        if ((v89 & 1) == 0)
        {
          v90 = *v161;
          v91 = v133;
          (*v161)(v133, v168, v160);
          v92 = sub_1BF4E7B34();
          v93 = sub_1BF4E8E44();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v153 = v94;
            v170 = swift_slowAlloc();
            v176[0] = v170;
            *v94 = v129;
            v95 = v159;
            v90(v159, v91, v57);
            v96 = *v169;
            (*v169)(v91, v57);
            v97 = v92;
            v98 = sub_1BF4E96A4();
            v100 = v99;
            v96(v95, v57);
            v101 = sub_1BF38D65C(v98, v100, v176);

            v102 = v153;
            *(v153 + 1) = v101;
            _os_log_impl(&dword_1BF389000, v97, v93, "%{public}s Will be unblocked", v102, 0xCu);
            v103 = v170;
            __swift_destroy_boxed_opaque_existential_1Tm(v170);
            MEMORY[0x1BFB5A5D0](v103, -1, -1);
            MEMORY[0x1BFB5A5D0](v102, -1, -1);
          }

          else
          {
            (*v169)(v91, v57);
          }

          v17 = v168;
          sub_1BF397CC8(v168, v156, v154);
        }
      }

      else
      {
        v57 = v160;
        v17 = v168;
        v104 = v154;
        if (v149)
        {
          v105 = *v161;
          v106 = v132;
          (*v161)(v132, v168, v160);
          v107 = v134;
          v108 = v155;
          (*v131)(v134, v172, v155);
          v109 = sub_1BF4E7B34();
          LODWORD(v170) = sub_1BF4E8E84();
          if (os_log_type_enabled(v109, v170))
          {
            v110 = swift_slowAlloc();
            v130 = v110;
            v150 = swift_slowAlloc();
            v176[0] = v150;
            *v110 = v128;
            v149 = v109;
            v111 = v159;
            v105(v159, v106, v57);
            v112 = v108;
            v113 = *v169;
            (*v169)(v106, v57);
            v114 = sub_1BF4E96A4();
            v116 = v115;
            v113(v111, v57);
            v117 = sub_1BF38D65C(v114, v116, v176);

            v118 = v130;
            *(v130 + 1) = v117;
            *(v118 + 6) = 2082;
            v119 = v143;
            v120 = v134;
            v140(v112, v153);
            (*v148)(v120, v112);
            sub_1BF3983D4(&qword_1EDC9D780, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
            v121 = v145;
            v122 = sub_1BF4E96A4();
            v124 = v123;
            v142(v119, v121);
            v125 = sub_1BF38D65C(v122, v124, v176);

            *(v118 + 14) = v125;
            v126 = v149;
            _os_log_impl(&dword_1BF389000, v149, v170, "%{public}s Will be blocked (requiredProtectionLevel: %{public}s)", v118, 0x16u);
            v127 = v150;
            swift_arrayDestroy();
            MEMORY[0x1BFB5A5D0](v127, -1, -1);
            MEMORY[0x1BFB5A5D0](v118, -1, -1);
          }

          else
          {
            (*v148)(v107, v108);
            (*v169)(v106, v57);
          }

          v17 = v168;
          sub_1BF4533A4(v168, v156, v104);
        }
      }

      v56 = v155;
      (*v148)(v172, v155);
      (*v169)(v17, v57);
    }

    TupleTypeMetadata2 = v163;
    v58 = v175;
    v50 = v162;
  }

  while (v53);
LABEL_9:
  if (v147 <= v54 + 1)
  {
    v59 = v54 + 1;
  }

  else
  {
    v59 = v147;
  }

  v60 = v59 - 1;
  while (1)
  {
    v61 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v61 >= v147)
    {
      v53 = 0;
      v62 = 1;
      v54 = v60;
      goto LABEL_20;
    }

    v53 = *(v50 + 8 * v61);
    ++v54;
    if (v53)
    {
      v54 = v61;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1BF396F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF3988F8(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018, MEMORY[0x1E6994140]);
    sub_1BF4E8884();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1BF4E9844();
}

BOOL _s9ChronoKit15ControlEntryKeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB0, &unk_1BF4EEA40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ControlEntryKey(0) + 20);
  v15 = *(v11 + 48);
  sub_1BF3988F8(a1 + v14, v13);
  sub_1BF3988F8(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BF38C9B4(v13, &qword_1EBDD8E78, &unk_1BF4EE790);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1BF3988F8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1BF38C9B4(v13, &qword_1EBDD8EB0, &unk_1BF4EEA40);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1BF38C8FC(&qword_1EDC9D550, MEMORY[0x1E6994148]);
  v18 = sub_1BF4E88C4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1BF38C9B4(v13, &qword_1EBDD8E78, &unk_1BF4EE790);
  return (v18 & 1) != 0;
}

uint64_t sub_1BF397424@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF3974D8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 40);
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
  return v2;
}

uint64_t sub_1BF397524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF397564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF3975AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void sub_1BF397638(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF4E7FF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v1 + qword_1EDC9AF58) + 16));
  swift_beginAccess();

  sub_1BF4E8854();

  if (LOBYTE(aBlock[0]) == 3)
  {

    v11 = sub_1BF4E7B34();
    v12 = sub_1BF4E8E84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      v15 = sub_1BF39B444();
      v17 = sub_1BF38D65C(v15, v16, aBlock);

      *(v13 + 4) = v17;
      v18 = "%{public}s Reload cannot be scheduled as store is blocked";
LABEL_7:
      _os_log_impl(&dword_1BF389000, v11, v12, v18, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1BFB5A5D0](v14, -1, -1);
      MEMORY[0x1BFB5A5D0](v13, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v19 = *(v1 + qword_1EDC9AF78);

  if (v19 == 1)
  {
    v11 = sub_1BF4E7B34();
    v12 = sub_1BF4E8E84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      v20 = sub_1BF39B444();
      v22 = sub_1BF38D65C(v20, v21, aBlock);

      *(v13 + 4) = v22;
      v18 = "%{public}s Reload cannot be scheduled as system is migrating";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v37 = v5;

  v23 = sub_1BF4E7B34();
  v24 = sub_1BF4E8E84();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v25 = 136446466;
    v26 = sub_1BF39B444();
    v28 = sub_1BF38D65C(v26, v27, aBlock);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;

    v29 = ReloadConfiguration.description.getter();
    v31 = v30;

    v32 = sub_1BF38D65C(v29, v31, aBlock);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_1BF389000, v23, v24, "%{public}s Scheduling reload with configuration: %{public}s", v25, 0x16u);
    v33 = v36;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v33, -1, -1);
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
  }

  else
  {
  }

  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v2;
  aBlock[4] = sub_1BF39BAF0;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_70;
  v35 = _Block_copy(aBlock);

  sub_1BF4E8014();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v10, v7, v35);
  _Block_release(v35);
  (*(v37 + 8))(v7, v4);
  (*(v38 + 8))(v10, v39);
}

uint64_t sub_1BF397CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v43 = a2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36[-v12];
  LOBYTE(v44) = 0;
  sub_1BF399684(&v44, a1);
  if (a3)
  {
    v14 = sub_1BF39B43C();
    if (v14)
    {
      v15 = v14;

LABEL_8:
      sub_1BF397638(v15);
    }
  }

  v16 = v10;
  v41 = v6;
  v42 = *(v8 + 16);
  v42(v13, a1, v7);
  v17 = sub_1BF4E7B34();
  v18 = sub_1BF4E8E64();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v19;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v19 = 136446210;
    v39 = v17;
    v20 = v16;
    v42(v16, v13, v7);
    v21 = *(v8 + 8);
    v21(v13, v7);
    v22 = v41;
    v23 = sub_1BF4E96A4();
    v37 = v18;
    v24 = v23;
    v26 = v25;
    v21(v20, v7);
    v27 = sub_1BF38D65C(v24, v26, &v44);
    v28 = v20;

    v29 = v38;
    *(v38 + 1) = v27;
    v30 = v39;
    _os_log_impl(&dword_1BF389000, v39, v37, "Unexpectedly found no reload tasks for key %{public}s", v29, 0xCu);
    v31 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
    MEMORY[0x1BFB5A5D0](v29, -1, -1);
  }

  else
  {
    (*(v8 + 8))(v13, v7);

    v22 = v41;
    v28 = v16;
  }

  v32 = sub_1BF455294(a1);
  v15 = sub_1BF39B43C();
  v42(v28, a1, v7);
  v49 = v32;
  swift_beginAccess();
  v33 = *(v22 + 104);

  v44 = v7;
  v45 = *(v22 + 88);
  v46 = v33;
  v34 = *(v22 + 128);
  v43 = *(v22 + 112);
  v47 = v43;
  v48 = v34;
  type metadata accessor for ReloadTaskPair(255, &v44);
  sub_1BF4E8834();
  sub_1BF4E8864();
  swift_endAccess();

  if (v15)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ReloadConfiguration.description.getter()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 91;
  v25 = 0xE100000000000000;
  v9 = type metadata accessor for ReloadConfiguration(0);
  v23 = *(v0 + v9[6]);
  v10 = ReloadConfiguration.ReloadReason.description.getter();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  sub_1BF39B31C(v0, v8, type metadata accessor for ReloadConfiguration.ReloadType);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v11 = 0xE900000000000065;
    v12 = 0x74616964656D6D69;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    if (qword_1EDC9F0F0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDC9F0F8;
    v14 = sub_1BF4E7254();
    v15 = [v13 stringFromDate_];

    v16 = sub_1BF4E8914();
    v11 = v17;

    (*(v3 + 8))(v5, v2);
    v12 = v16;
  }

  MEMORY[0x1BFB58C90](v12, v11);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  if (*(v1 + v9[5]))
  {
    v18 = 1701147238;
  }

  else
  {
    v18 = 0x6465746567647562;
  }

  if (*(v1 + v9[5]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE800000000000000;
  }

  MEMORY[0x1BFB58C90](v18, v19);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v23 = *(v1 + v9[7]);
  v20 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return v24;
}

uint64_t sub_1BF3983D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF398440(uint64_t a1, double a2)
{
  v3 = *(v2 + 24);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v3)
  {
    v4 = v3;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

BOOL _s9ChronoKit11TimelineKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  result = (v4 | v7) == 0;
  if (v4)
  {
    if (v7)
    {
      sub_1BF3901C0(0, &unk_1EDC96360, 0x1E69942D0);
      v10 = v7;
      v11 = v4;
      v12 = sub_1BF4E90A4();

      return v12 & 1;
    }
  }

  return result;
}

uint64_t sub_1BF3985D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = *v2;
  v4 = v22[11];
  v5 = sub_1BF4E90F4();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1BF38E49C((v2 + 5), v25);
  v13 = v26;
  v12 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v14 = *(v12 + 56);
  v23 = a1;
  v14(a1, v13, v12);
  if ((*(v8 + 48))(v7, 1, v4) == 1)
  {
    (*(v20 + 8))(v7, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v15 = (*(v22[13] + 16))(v22[10]);
    sub_1BF3F79D0();
    swift_allocError();
    *v16 = v15;
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v11, v7, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_1BF38E49C((v2 + 10), v25);
    v18 = v26;
    v19 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v19 + 24))(v11, v18, v19);
    (*(v8 + 8))(v11, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }
}

id sub_1BF3988C0()
{
  v1 = [*v0 extensionIdentity];

  return v1;
}

uint64_t sub_1BF3988F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF39898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v28 = v4;
  v29 = a2;
  v5 = *(v4 + 80);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1BF4E7194();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(*(v4 + 96) + 16);
  v27 = a1;
  v20 = v19(v5, v16);
  sub_1BF398CFC(v20, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BF38C9B4(v10, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    return (*(*(*(v28 + 88) - 8) + 56))(v29, 1, 1);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v22 = v28;
    v23 = *(v28 + 88);
    (*(v12 + 16))(v14, v18, v11);
    (*(v26 + 16))(v7, v27, v5);
    v24 = *(*(v22 + 104) + 16);
    v25 = v29;
    v24(v14, v7, v23);
    (*(v12 + 8))(v18, v11);
    return (*(*(v23 - 8) + 56))(v25, 0, 1);
  }
}

uint64_t sub_1BF398CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7014();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - v11;
  sub_1BF38E49C(v3 + 32, v22);
  v13 = v23;
  v14 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v14 + 8))(a1, v13, v14);
  v15 = sub_1BF4E7194();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    sub_1BF38C9B4(v12, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v17 = 1;
  }

  else
  {
    swift_beginAccess();
    v18 = *(v3 + 16);
    v19 = *(v3 + 24);
    v21[0] = v18;
    v21[1] = v19;
    (*(v7 + 104))(v9, *MEMORY[0x1E6968F58], v6);
    sub_1BF399080();

    sub_1BF4E7184();
    (*(v7 + 8))(v9, v6);

    (*(v16 + 8))(v12, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v17 = 0;
  }

  return (*(v16 + 56))(a2, v17, 1, v15);
}

id sub_1BF398FB4(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BF4E88E4();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1BF399080()
{
  result = qword_1EDC9FDD8;
  if (!qword_1EDC9FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FDD8);
  }

  return result;
}

uint64_t sub_1BF3990D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1BF4E7014();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BF4E7194();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  v18 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;

    sub_1BF4E76F4();
    v51 = v20;
    v52 = v19;
    v21 = *MEMORY[0x1E6968F58];
    v22 = v48;
    v47 = *(v48 + 104);
    v47(v5, v21, v3);
    v45[1] = sub_1BF399080();
    v46 = v11;
    sub_1BF4E7184();
    v48 = *(v22 + 8);
    (v48)(v5, v3);

    v45[0] = *(v6 + 8);
    v23 = v49;
    (v45[0])(v8, v49);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v24 = sub_1BF4E76B4();
    v26 = v25;
    swift_endAccess();
    v51 = v24;
    v52 = v26;
    v47(v5, *MEMORY[0x1E6968F70], v3);
    v27 = v50;
    v28 = v46;
    sub_1BF4E7184();
    (v48)(v5, v3);

    (v45[0])(v28, v23);
    return (*(v6 + 56))(v27, 0, 1, v23);
  }

  else
  {
    v30 = v49;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v31 = sub_1BF4E76B4();
    v33 = v32;
    swift_endAccess();
    v34 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v35 = sub_1BF398FB4(v31, v33);
    if (v35)
    {
      v36 = v35;
      v37 = [v35 dataContainerURL];
      if (v37)
      {
        v38 = v37;
        sub_1BF4E7154();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = v17;
      v41 = *(v6 + 56);
      v41(v14, v39, 1, v30);
      sub_1BF39D6DC(v14, v40);
      if ((*(v6 + 48))(v40, 1, v30) == 1)
      {

        sub_1BF38C9B4(v40, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
        v42 = v50;
        v43 = 1;
      }

      else
      {
        v44 = v50;
        sub_1BF4E70F4();

        (*(v6 + 8))(v40, v30);
        v42 = v44;
        v43 = 0;
      }

      return (v41)(v42, v43, 1, v30);
    }

    else
    {
      return (*(v6 + 56))(v50, 1, 1, v30);
    }
  }
}

void sub_1BF399684(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v138 = v6;
  v130 = sub_1BF4E7FF4();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v127 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1BF4E8064();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v6[12];
  v133 = sub_1BF4E90F4();
  v146 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v148 = v118 - v10;
  v152 = v9;
  v136 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v132 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v131 = v118 - v14;
  v140 = v6[11];
  v15 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v151 = v118 - v16;
  v17 = v6[10];
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v149 = v118 - v23;
  v124 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v118 - v26;
  v150 = *a1;
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v28 = v6[14];

  v147 = v28;
  sub_1BF4E8854();

  v29 = LOBYTE(aBlock[0]);
  v145 = v18;
  v30 = *(v18 + 16);
  v142 = a2;
  v144 = v18 + 16;
  v143 = v30;
  v139 = v3;
  if (LOBYTE(aBlock[0]) != 5)
  {
    v30(v27, a2, v17);
    v52 = sub_1BF4E7B34();
    v53 = sub_1BF4E8E44();
    if (os_log_type_enabled(v52, v53))
    {
      LODWORD(v137) = v53;
      v141 = v52;
      v54 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      aBlock[0] = v135;
      *v54 = 136446722;
      v55 = v149;
      v30(v149, v27, v17);
      v56 = *(v145 + 8);
      v56(v27, v17);
      v57 = sub_1BF4E96A4();
      v59 = v58;
      v56(v55, v17);
      v60 = sub_1BF38D65C(v57, v59, aBlock);

      v61 = 0xE600000000000000;
      *(v54 + 4) = v60;
      *(v54 + 12) = 2082;
      v62 = 0xE600000000000000;
      v63 = 0x64656C696166;
      v64 = 0xE700000000000000;
      v65 = 0x64656B636F6C62;
      if (v29 != 3)
      {
        v65 = 0x646573756170;
        v64 = 0xE600000000000000;
      }

      if (v29 != 2)
      {
        v63 = v65;
        v62 = v64;
      }

      v66 = 0x6E61656C63;
      if (v29)
      {
        v61 = 0xE500000000000000;
      }

      else
      {
        v66 = 0x64616F6C6572;
      }

      if (v29 <= 1)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      if (v29 <= 1)
      {
        v68 = v61;
      }

      else
      {
        v68 = v62;
      }

      v69 = sub_1BF38D65C(v67, v68, aBlock);

      v70 = 0xE600000000000000;
      *(v54 + 14) = v69;
      *(v54 + 22) = 2082;
      v71 = 0xE600000000000000;
      v72 = 0x64656C696166;
      v45 = v150;
      v73 = 0xE700000000000000;
      v74 = 0x64656B636F6C62;
      if (v150 != 3)
      {
        v74 = 0x646573756170;
        v73 = 0xE600000000000000;
      }

      if (v150 != 2)
      {
        v72 = v74;
        v71 = v73;
      }

      v75 = 0x6E61656C63;
      if (v150)
      {
        v70 = 0xE500000000000000;
      }

      else
      {
        v75 = 0x64616F6C6572;
      }

      if (v150 <= 1)
      {
        v76 = v75;
      }

      else
      {
        v76 = v72;
      }

      if (v150 <= 1)
      {
        v77 = v70;
      }

      else
      {
        v77 = v71;
      }

      v78 = sub_1BF38D65C(v76, v77, aBlock);

      *(v54 + 24) = v78;
      v79 = v141;
      _os_log_impl(&dword_1BF389000, v141, v137, "%{public}s Reload state %{public}s -> %{public}s", v54, 0x20u);
      v80 = v135;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v80, -1, -1);
      MEMORY[0x1BFB5A5D0](v54, -1, -1);

      goto LABEL_45;
    }

    (*(v145 + 8))(v27, v17);

LABEL_48:
    v45 = v150;
    goto LABEL_49;
  }

  v31 = v30;
  v30(v21, a2, v17);
  v32 = sub_1BF4E7B34();
  v33 = sub_1BF4E8E44();
  if (!os_log_type_enabled(v32, v33))
  {
    (*(v145 + 8))(v21, v17);

    goto LABEL_48;
  }

  LODWORD(v141) = v33;
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  aBlock[0] = v35;
  *v34 = 136446466;
  v36 = v149;
  v31(v149, v21, v17);
  v37 = *(v145 + 8);
  v37(v21, v17);
  v38 = sub_1BF4E96A4();
  v40 = v39;
  v37(v36, v17);
  v41 = sub_1BF38D65C(v38, v40, aBlock);

  v42 = 0xE600000000000000;
  *(v34 + 4) = v41;
  *(v34 + 12) = 2082;
  v43 = 0xE600000000000000;
  v44 = 0x64656C696166;
  v45 = v150;
  v46 = 0xE700000000000000;
  v47 = 0x64656B636F6C62;
  if (v150 != 3)
  {
    v47 = 0x646573756170;
    v46 = 0xE600000000000000;
  }

  if (v150 != 2)
  {
    v44 = v47;
    v43 = v46;
  }

  v48 = 0x6E61656C63;
  if (v150)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v48 = 0x64616F6C6572;
  }

  if (v150 <= 1)
  {
    v49 = v48;
  }

  else
  {
    v49 = v44;
  }

  if (v150 <= 1)
  {
    v50 = v42;
  }

  else
  {
    v50 = v43;
  }

  v51 = sub_1BF38D65C(v49, v50, aBlock);

  *(v34 + 14) = v51;
  _os_log_impl(&dword_1BF389000, v32, v141, "%{public}s Initial reload state %{public}s", v34, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1BFB5A5D0](v35, -1, -1);
  MEMORY[0x1BFB5A5D0](v34, -1, -1);

LABEL_45:
  a2 = v142;
LABEL_49:
  v81 = v139;
  swift_beginAccess();

  sub_1BF4E8854();

  v82 = LOBYTE(aBlock[0]);
  v143(v149, a2, v17);
  LOBYTE(v157[0]) = v45;
  swift_beginAccess();
  sub_1BF4E8834();
  sub_1BF4E8864();
  swift_endAccess();
  if (v82 == 5)
  {
    v83 = v140;
    if (v45 != 2)
    {
      return;
    }
  }

  else
  {
    v83 = v140;
    if (v45 != 5 && v82 == v45 || v82 != 2 && v45 != 2)
    {
      return;
    }
  }

  swift_beginAccess();
  v84 = v138[16];
  sub_1BF4E8834();

  sub_1BF4E8854();

  if (!aBlock[0])
  {
    return;
  }

  v141 = aBlock[0];
  nullsub_1();
  v137 = v84;
  if ((v85 & 0xC000000000000001) != 0)
  {
    v86 = sub_1BF4E9414();
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = v86 | 0x8000000000000000;
  }

  else
  {
    v91 = -1 << *(v85 + 32);
    v88 = ~v91;
    v87 = v85 + 64;
    v92 = -v91;
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    else
    {
      v93 = -1;
    }

    v89 = v93 & *(v85 + 64);
    v90 = v85;
  }

  v118[1] = v88;
  v94 = (v88 + 64) >> 6;
  v134 = (v136 + 48);
  v123 = (v136 + 32);
  v122 = (v136 + 16);
  v120 = (v136 + 8);
  v121 = (v146 + 8);

  v119 = 0;
  v146 = 0;
  v136 = v17;
  v135 = v90;
  while ((v90 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF4E9454())
    {
LABEL_80:

      (*(*(v83 - 8) + 56))(v151, 1, 1, v83);
      sub_1BF39A9CC(v90);
      if (v119)
      {
        v107 = v149;
        v143(v149, v142, v17);
        v108 = v145;
        v109 = (*(v145 + 80) + 88) & ~*(v145 + 80);
        v110 = swift_allocObject();
        *(v110 + 2) = v17;
        *(v110 + 3) = v83;
        *(v110 + 4) = v152;
        v111 = v138;
        v112 = v147;
        *(v110 + 5) = v138[13];
        *(v110 + 6) = v112;
        v113 = v137;
        *(v110 + 7) = v111[15];
        *(v110 + 8) = v113;
        *(v110 + 9) = v111[17];
        *(v110 + 10) = v81;
        (*(v108 + 32))(&v110[v109], v107, v17);
        v155 = sub_1BF45E7FC;
        v156 = v110;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BF38E868;
        v154 = &block_descriptor_91;
        v114 = _Block_copy(aBlock);

        v115 = v125;
        sub_1BF4E8014();
        *&v157[0] = MEMORY[0x1E69E7CC0];
        sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
        sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
        v116 = v127;
        v117 = v130;
        sub_1BF4E91A4();
        MEMORY[0x1BFB591B0](0, v115, v116, v114);
        _Block_release(v114);
        (*(v129 + 8))(v116, v117);
        (*(v126 + 8))(v115, v128);
      }

      return;
    }

    v100 = v151;
    sub_1BF4E9704();
    swift_unknownObjectRelease();
    v99 = *(v83 - 8);
LABEL_76:
    (*(v99 + 56))(v100, 0, 1, v83);
    v101 = v148;
    v102 = v152;
    sub_1BF4E8854();
    (*(v99 + 8))(v100, v83);
    if ((*v134)(v101, 1, v102) == 1)
    {
      (*v121)(v101, v133);
      v17 = v136;
    }

    else
    {
      v103 = v131;
      (*v123)(v131, v101, v102);
      (*v122)(v132, v103, v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D8, &qword_1BF4F1C90);
      v104 = swift_dynamicCast();
      v17 = v136;
      if (v104)
      {
        v119 = v150 == 2;
        sub_1BF38E610(v157, aBlock);
        v106 = v154;
        v105 = v155;
        __swift_mutable_project_boxed_opaque_existential_1(aBlock, v154);
        (*(v105 + 2))(v119, v106, v105);
        (*v120)(v103, v152);
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        v119 = 1;
      }

      else
      {
        (*v120)(v103, v102);
        v158 = 0;
        memset(v157, 0, sizeof(v157));
        sub_1BF38C9B4(v157, &qword_1EBDD95E0, &qword_1BF4F1C98);
      }
    }

    v90 = v135;
  }

  v95 = v146;
  if (v89)
  {
    v96 = v146;
LABEL_73:
    v97 = __clz(__rbit64(v89));
    v89 &= v89 - 1;
    v98 = *(v90 + 48);
    v99 = *(v83 - 8);
    v100 = v151;
    (*(v99 + 16))(v151, v98 + *(v99 + 72) * (v97 | (v96 << 6)), v83);
    goto LABEL_76;
  }

  while (1)
  {
    v96 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      break;
    }

    if (v96 >= v94)
    {
      goto LABEL_80;
    }

    v89 = *(v87 + 8 * v96);
    ++v95;
    if (v89)
    {
      v146 = v96;
      goto LABEL_73;
    }
  }

  __break(1u);
}

uint64_t sub_1BF39A9D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t storeEnumTagSinglePayload for ReloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BF39AB40@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 20);
  v9 = sub_1BF4E7194();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  v10 = *a2;
  result = sub_1BF39ABC8(a2);
  *(a4 + v8) = v10;
  return result;
}

uint64_t sub_1BF39ABC8(uint64_t a1)
{
  v2 = type metadata accessor for ControlEntryKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF39AC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_1BF4E7194();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BF39AD04(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1BF39ADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  (*(v6 + 16))(v8, a1, v5, v10);
  swift_beginAccess();

  sub_1BF4E70A4();

  v13 = *(a1 + *(type metadata accessor for ControlCacheKey(0) + 20));
  if (v13)
  {
    v14 = v13;
    sub_1BF39B13C();
    sub_1BF4E70A4();

    v27 = *(v6 + 32);
    v27(v12, v8, v5);
    v15 = [v14 intentReference];
    v28 = a2;
    if (v15)
    {
      v16 = v15;
      v17 = [v15 stableHash];

      v29 = v17;
      v18 = sub_1BF4E96A4();
      v20 = v19;
    }

    else
    {
      v20 = 0xE400000000000000;
      v18 = 1701736302;
    }

    v23 = [v14 kind];
    v24 = sub_1BF4E8914();
    v26 = v25;

    v29 = v24;
    v30 = v26;
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    MEMORY[0x1BFB58C90](v18, v20);

    sub_1BF4E70B4();

    swift_beginAccess();

    sub_1BF4E70C4();

    return (v27)(v28, v12, v5);
  }

  else
  {
    v21 = *(v6 + 32);
    v21(v12, v8, v5);
    return (v21)(a2, v12, v5);
  }
}

uint64_t type metadata accessor for ControlCacheKey(uint64_t a1)
{
  result = qword_1EDC9F860;
  if (!qword_1EDC9F860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TimelineKey.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v3)
  {
    v5 = v3;
    [v5 stableHash];
    v6 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v6);

    v8 = 58;
    v7 = 0xE100000000000000;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = [v2 description];
  v10 = sub_1BF4E8914();
  v12 = v11;

  MEMORY[0x1BFB58C90](v10, v12);

  MEMORY[0x1BFB58C90](58, 0xE100000000000000);
  MEMORY[0x1BFB58C90](v1, v4);
  MEMORY[0x1BFB58C90](v8, v7);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return 91;
}

uint64_t getEnumTagSinglePayload for ReloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BF39B31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1BF39B398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BF4E7454();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF39B444()
{
  MEMORY[0x1BFB58C90](0x5B206B736154, 0xE600000000000000);
  v0 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v0);

  MEMORY[0x1BFB58C90](8285, 0xE200000000000000);
  sub_1BF4E96F4();
  return 0;
}

unint64_t ReloadConfiguration.ReloadReason.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 <= 2)
  {
    if (!v2)
    {
      v8 = *(v1 + 16);
      v7 = *(v1 + 24);
      v9 = *(v1 + 32);
      sub_1BF4E92E4();

      v17[0] = 0xD000000000000018;
      v17[1] = 0x80000001BF4F9760;
      if (v8)
      {
        v10 = [v8 description];
        v11 = sub_1BF4E8914();
        v13 = v12;
      }

      else
      {
        v13 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
      }

      MEMORY[0x1BFB58C90](v11, v13);

      MEMORY[0x1BFB58C90](0x6F73616572202C5DLL, 0xEB00000000203A6ELL);
      MEMORY[0x1BFB58C90](v7, v9);
      goto LABEL_17;
    }

    v3 = v1 & 0x1FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      v4 = *(v3 + 16);
      v5 = *(v3 + 24);

      sub_1BF4E92E4();

      strcpy(v17, "systemRequest(");
      HIBYTE(v17[1]) = -18;
      MEMORY[0x1BFB58C90](v4, v5);

LABEL_17:
      MEMORY[0x1BFB58C90](41, 0xE100000000000000);
      return v17[0];
    }

    v6 = *(v3 + 16);
    sub_1BF39C510(v6);
    sub_1BF4E92E4();

    v17[0] = 0x656C756465686373;
    v17[1] = 0xEF28797274655264;
LABEL_12:
    v14 = ReloadConfiguration.ReloadReason.description.getter();
    MEMORY[0x1BFB58C90](v14);

    MEMORY[0x1BFB58C90](41, 0xE100000000000000);
    sub_1BF39C9A4(v6);
    return v17[0];
  }

  if (v2 == 3)
  {
    v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    strcpy(v17, "reloadLoop(");
    HIDWORD(v17[1]) = -352321536;
    sub_1BF39C510(v6);
    goto LABEL_12;
  }

  if (v2 == 4)
  {
    v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1BF39C510(v6);
    sub_1BF4E92E4();

    v17[0] = 0xD00000000000001ELL;
    v17[1] = 0x80000001BF4F96E0;
    goto LABEL_12;
  }

  result = 0x437363697274656DLL;
  switch(__ROR8__(v1 + 0x6000000000000000, 3))
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return result;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x656C617473;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0x6C616974696E69;
    case 7:
      return 0x6C656D6954646162;
    case 8:
      return 0x4368747541707061;
    case 9:
      v16 = 9;
      goto LABEL_33;
    case 0xALL:
      v16 = 10;
      goto LABEL_33;
    case 0xBLL:
      v16 = 13;
LABEL_33:
      result = v16 | 0xD000000000000010;
      break;
    case 0xCLL:
      result = 0x7463617265746E69;
      break;
    case 0xDLL:
      result = 0x746163696C706572;
      break;
    case 0xELL:
      result = 1752397168;
      break;
    case 0xFLL:
      result = 0xD000000000000023;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1BF39BA44(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BF4E7454();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BF39BAF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + qword_1EDC9AFB0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1BF39BD98(v3, sub_1BF3A72FC, v5);
}

uint64_t sub_1BF39BBBC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF39BBFC()
{
  v1 = *(v0 + *(*v0 + 200));

  os_unfair_lock_lock(v1 + 4);
  sub_1BF39BC90(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

double sub_1BF39BC90@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

double sub_1BF39BCD4@<D0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 208));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

unint64_t ReloadConfiguration.reason.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ReloadConfiguration(0) + 24));
  *a1 = v3;

  return sub_1BF39C510(v3);
}

void sub_1BF39BD98(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_1BF4E8324();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF39BBFC();
  if (v11)
  {

    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E84();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v41 = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 136446210;
      v17 = sub_1BF39B444();
      v19 = sub_1BF38D65C(v17, v18, &v42);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1BF389000, v12, v13, "%{public}s Cancelled before being scheduled", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
      v20 = v15;
      a2 = v41;
      MEMORY[0x1BFB5A5D0](v20, -1, -1);
    }

    sub_1BF42E928();
    (*(v8 + 104))(v10, *MEMORY[0x1E6985880], v7);
    v21 = sub_1BF4E9074();
    (a2)(v21, 1);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = *(v6 + 80);
    *(v22 + 24) = *(v6 + 88);
    *(v22 + 32) = *(v6 + 96);
    *(v22 + 48) = *(v6 + 112);
    *(v22 + 56) = *(v6 + 120);
    *(v22 + 72) = *(v6 + 136);
    *(v22 + 80) = a2;
    *(v22 + 88) = a3;

    v23 = sub_1BF39BD0C();

    if (v23)
    {

      sub_1BF3A5D68(v24);

      v41 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E84();

      if (os_log_type_enabled(v41, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v27;
        *v26 = 136446466;
        v28 = sub_1BF39B444();
        v30 = sub_1BF38D65C(v28, v29, &v42);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v31 = sub_1BF3B978C();
        v33 = sub_1BF38D65C(v31, v32, &v42);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_1BF389000, v41, v25, "%{public}s Scheduled with cancellable token: [%{public}s]", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v27, -1, -1);
        MEMORY[0x1BFB5A5D0](v26, -1, -1);

        return;
      }
    }

    else
    {
      sub_1BF3A5D68(0);

      v41 = sub_1BF4E7B34();
      v34 = sub_1BF4E8E84();

      if (os_log_type_enabled(v41, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v42 = v36;
        *v35 = 136446210;
        v37 = sub_1BF39B444();
        v39 = sub_1BF38D65C(v37, v38, &v42);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1BF389000, v41, v34, "%{public}s Scheduled with no cancellable token.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1BFB5A5D0](v36, -1, -1);
        MEMORY[0x1BFB5A5D0](v35, -1, -1);

        return;
      }
    }

    v40 = v41;
  }
}

uint64_t sub_1BF39C368()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BF39C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(*v5 + 144);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - v15;
  (*(v13 + 16))(&v19 - v15, v5 + *(v11 + 160), v12, v14);
  v17 = (*(*(v11 + 152) + 56))(a1, a2, a3, a4, a5, v12);
  (*(v13 + 8))(v16, v12);
  return v17;
}

unint64_t sub_1BF39C510(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

uint64_t static ReloadConfiguration.ReloadReason.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 61 != 3)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v4 != 4)
      {
        switch(__ROR8__(v2 + 0x6000000000000000, 3))
        {
          case 1:
            if (v3 != 0xA000000000000008)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000008;
            goto LABEL_61;
          case 2:
            v20 = 0xA000000000000010;
            break;
          case 3:
            if (v3 != 0xA000000000000018)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000018;
            goto LABEL_61;
          case 4:
            v20 = 0xA000000000000020;
            break;
          case 5:
            if (v3 != 0xA000000000000028)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000028;
            goto LABEL_61;
          case 6:
            v20 = 0xA000000000000030;
            break;
          case 7:
            if (v3 != 0xA000000000000038)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000038;
            goto LABEL_61;
          case 8:
            v20 = 0xA000000000000040;
            break;
          case 9:
            if (v3 != 0xA000000000000048)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000048;
            goto LABEL_61;
          case 0xALL:
            v20 = 0xA000000000000050;
            break;
          case 0xBLL:
            if (v3 != 0xA000000000000058)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000058;
            goto LABEL_61;
          case 0xCLL:
            v20 = 0xA000000000000060;
            break;
          case 0xDLL:
            if (v3 != 0xA000000000000068)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000068;
            goto LABEL_61;
          case 0xELL:
            v20 = 0xA000000000000070;
            break;
          case 0xFLL:
            if (v3 != 0xA000000000000078)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000078;
            goto LABEL_61;
          default:
            if (v3 != 0xA000000000000000)
            {
              goto LABEL_62;
            }

            sub_1BF39C9A4(*a1);
            v18 = 0xA000000000000000;
            goto LABEL_61;
        }

        if (v3 == v20)
        {
          sub_1BF39C9A4(*a1);
          v18 = v20;
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (v3 >> 61 != 4)
      {
LABEL_62:
        sub_1BF39C510(*a2);
        sub_1BF39C510(v2);
        goto LABEL_63;
      }
    }

    goto LABEL_22;
  }

  if (!v4)
  {
    if (v3 >> 61)
    {
      goto LABEL_62;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    v9 = *(v2 + 32);
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    v12 = *(v3 + 32);
    if (v8)
    {
      if (!v11)
      {
        goto LABEL_62;
      }

      sub_1BF3EF004();
      sub_1BF39C510(v3);
      sub_1BF39C510(v2);
      v13 = v11;
      v14 = v8;
      v15 = sub_1BF4E90A4();

      if ((v15 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      sub_1BF39C510(*a2);
      sub_1BF39C510(v2);
      if (v11)
      {
LABEL_63:
        sub_1BF39C9A4(v2);
        sub_1BF39C9A4(v3);
        v6 = 0;
        return v6 & 1;
      }
    }

    if (v7 == v10 && v9 == v12)
    {
      goto LABEL_35;
    }

    v17 = sub_1BF4E9734();
LABEL_23:
    v6 = v17;
    goto LABEL_24;
  }

  if (v4 != 1)
  {
    if (v3 >> 61 != 2)
    {
      goto LABEL_62;
    }

LABEL_22:
    v16 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = v16;
    sub_1BF39C510(v3);
    sub_1BF39C510(v2);
    v17 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v23, &v22);
    goto LABEL_23;
  }

  if (v3 >> 61 != 1)
  {
    goto LABEL_62;
  }

  if (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
    sub_1BF39C510(v3);
    sub_1BF39C510(v2);
LABEL_35:
    sub_1BF39C9A4(v2);
    v18 = v3;
LABEL_61:
    sub_1BF39C9A4(v18);
    v6 = 1;
    return v6 & 1;
  }

  v6 = sub_1BF4E9734();
  sub_1BF39C510(v3);
  sub_1BF39C510(v2);
LABEL_24:
  sub_1BF39C9A4(v2);
  sub_1BF39C9A4(v3);
  return v6 & 1;
}

unint64_t sub_1BF39C9A4(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

uint64_t sub_1BF39C9E0@<X0>(id *a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v99 = a3;
  v100 = a2;
  v98 = a4;
  v111[5] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for WidgetEntryKey(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v93 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v93 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v93 - v14;
  v15 = sub_1BF4E6D64();
  v16 = *(v15 - 8);
  v107 = v15;
  v108 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1BF4E8424();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v103 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BF4E7194();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v93 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v102 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v93 - v29;
  v31 = *(v20 + 56);
  v31(&v93 - v29, 1, 1, v19, v28);
  v32 = a1;
  v110 = v5;
  v33 = v105;
  sub_1BF3F4FF4(a1, v24);
  v106 = v30;
  if (v33)
  {
    v34 = v20;
    v35 = v19;
    v36 = a1;
    v41 = v107;
    v42 = v109;
    v43 = v110;
    v44 = v106;
    v45 = v108;
    if (*(v110 + 160) == 1)
    {
      v105 = v36;
      v46 = v106;
      v111[0] = v33;
      v47 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v48 = v104;
      v49 = swift_dynamicCast();
      v50 = v45[7];
      if (v49)
      {
        v50(v48, 0, 1, v41);
        (v45[4])(v42, v48, v41);
        if (sub_1BF41B748())
        {
          v44 = v46;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v51 = sub_1BF4E7B54();
          __swift_project_value_buffer(v51, qword_1EDCA6940);
          v52 = v95;
          sub_1BF3A5A3C(v105, v95, type metadata accessor for WidgetEntryKey);
          v53 = sub_1BF4E7B34();
          v54 = sub_1BF4E8E84();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v111[0] = v110;
            *v55 = 136446210;
            v56 = v94;
            sub_1BF3A5A3C(v52, v94, type metadata accessor for WidgetEntryKey);
            sub_1BF39D654(v52, type metadata accessor for WidgetEntryKey);
            v57 = WidgetEntryKey.description.getter();
            v59 = v58;
            sub_1BF39D654(v56, type metadata accessor for WidgetEntryKey);
            v60 = sub_1BF38D65C(v57, v59, v111);

            *(v55 + 4) = v60;
            _os_log_impl(&dword_1BF389000, v53, v54, "Not removing item for key %{public}s because of keybag", v55, 0xCu);
            v61 = v110;
            __swift_destroy_boxed_opaque_existential_1Tm(v110);
            MEMORY[0x1BFB5A5D0](v61, -1, -1);
            MEMORY[0x1BFB5A5D0](v55, -1, -1);

            (v108[1])(v109, v107);
          }

          else
          {
            sub_1BF39D654(v52, type metadata accessor for WidgetEntryKey);

            (v108[1])(v109, v41);
          }

          goto LABEL_26;
        }

        (v45[1])(v42, v41);
      }

      else
      {
        v50(v48, 1, 1, v41);
        sub_1BF38C9B4(v48, &qword_1EBDD8BF0, &qword_1BF4ED508);
      }

      v44 = v46;
      v63 = v102;
      sub_1BF38C94C(v46, v102, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v34 + 48))(v63, 1, v35) == 1)
      {
        sub_1BF38C9B4(v63, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v64 = v43;
        v65 = v34;
        v66 = *(v34 + 32);
        v67 = v101;
        v66(v101, v63, v35);
        v68 = v64[2];
        v69 = sub_1BF4E7094();
        v111[0] = 0;
        v70 = [v68 removeItemAtURL:v69 error:v111];

        if (v70)
        {
          v110 = v65;
          v71 = qword_1EDC9EFD8;
          v72 = v111[0];
          if (v71 != -1)
          {
            swift_once();
          }

          v73 = sub_1BF4E7B54();
          __swift_project_value_buffer(v73, qword_1EDCA6A48);
          v74 = v93;
          sub_1BF3A5A3C(v105, v93, type metadata accessor for WidgetEntryKey);
          v75 = v33;
          v76 = sub_1BF4E7B34();
          v77 = sub_1BF4E8E84();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v109 = v35;
            v79 = v78;
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v111[0] = v108;
            *v79 = 136446466;
            v80 = v94;
            sub_1BF3A5A3C(v74, v94, type metadata accessor for WidgetEntryKey);
            sub_1BF39D654(v74, type metadata accessor for WidgetEntryKey);
            v81 = WidgetEntryKey.description.getter();
            v83 = v82;
            sub_1BF39D654(v80, type metadata accessor for WidgetEntryKey);
            v84 = sub_1BF38D65C(v81, v83, v111);

            *(v79 + 4) = v84;
            *(v79 + 12) = 2114;
            v85 = v33;
            v86 = _swift_stdlib_bridgeErrorToNSError();
            *(v79 + 14) = v86;
            v87 = v107;
            *v107 = v86;
            _os_log_impl(&dword_1BF389000, v76, v77, "Removing item for key %{public}s because  %{public}@", v79, 0x16u);
            sub_1BF38C9B4(v87, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v87, -1, -1);
            v88 = v108;
            __swift_destroy_boxed_opaque_existential_1Tm(v108);
            MEMORY[0x1BFB5A5D0](v88, -1, -1);
            MEMORY[0x1BFB5A5D0](v79, -1, -1);

            (v110[1])(v101, v109);
          }

          else
          {
            sub_1BF39D654(v74, type metadata accessor for WidgetEntryKey);

            (v110[1])(v101, v35);
          }
        }

        else
        {
          v89 = v111[0];
          v90 = sub_1BF4E6FF4();

          swift_willThrow();
          (*(v65 + 8))(v67, v35);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    v91 = v44;
    return sub_1BF38C9B4(v91, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  }

  sub_1BF38C9B4(v30, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v20 + 16))(v30, v24, v19);
  (v31)(v30, 0, 1, v19);
  v37 = v110;
  swift_beginAccess();
  sub_1BF38E49C((v37 + 15), v111);
  v38 = v111[4];
  __swift_project_boxed_opaque_existential_1(v111, v111[3]);
  v105 = v32;
  v39 = [*v32 extensionIdentity];
  v40 = v103;
  v38[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  if (v110[20])
  {
    v62 = v110[2];
    sub_1BF3B36F0(v24, v62);
  }

  v100(v24, v40);
  (*(v96 + 8))(v40, v97);
  (*(v20 + 8))(v24, v19);
  v91 = v106;
  return sub_1BF38C9B4(v91, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
}

uint64_t sub_1BF39D654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF39D6DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF39D74C(void *a1)
{
  v2 = sub_1BF4E6E14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 kind];
  v8 = sub_1BF4E8914();
  v10 = v9;

  v11 = sub_1BF39DC9C(0x32uLL, v8, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1BFB58C30](v11, v13, v15, v17);
  v20 = v19;

  v26[1] = v18;
  v26[2] = v20;
  sub_1BF4E6E04();
  sub_1BF399080();
  v21 = sub_1BF4E9144();
  v23 = v22;
  (*(v3 + 8))(v6, v2);

  if (!v23)
  {
    v24 = [a1 extensionIdentity];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v21 = sub_1BF4E76B4();
    swift_endAccess();
  }

  return v21;
}

uint64_t sub_1BF39D9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF39DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 8);
  v9 = *a2;
  v10 = v8;
  sub_1BF393884(a2);
  v12 = *(a3 + 20);
  v11 = *(a3 + 24);
  v13 = sub_1BF4E7194();
  result = (*(*(v13 - 8) + 32))(a4, a1, v13);
  *(a4 + v12) = v9;
  *(a4 + v11) = v10;
  return result;
}

uint64_t sub_1BF39DB08(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_1BF4E7194();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BF39DBD4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

unint64_t sub_1BF39DC9C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1BF4E8A24();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1BF4E8AA4();
}

uint64_t ExtensionManager.systemDataURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1BF4E7014();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BF4E7194();
  v47 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v42 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v42 - v15;
  v17 = *MEMORY[0x1E69941A8];
  v48 = a1;
  v18 = (a1 + v17);
  swift_beginAccess();
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;

    sub_1BF4E76F4();
    v51 = v20;
    v52 = v19;
    v21 = *MEMORY[0x1E6968F58];
    v22 = v45;
    v43 = *(v45 + 104);
    v43(v5, v21, v3);
    v42[1] = sub_1BF399080();
    v23 = v44;
    sub_1BF4E7184();
    v45 = *(v22 + 8);
    (v45)(v5, v3);

    v24 = v47;
    v42[0] = *(v47 + 8);
    v25 = v7;
    v26 = v50;
    (v42[0])(v25, v50);
    swift_beginAccess();
    v27 = sub_1BF4E76B4();
    v29 = v28;
    swift_endAccess();
    v51 = v27;
    v52 = v29;
    v43(v5, *MEMORY[0x1E6968F70], v3);
    v30 = v49;
    sub_1BF4E7184();
    (v45)(v5, v3);

    (v42[0])(v23, v26);
    return (*(v24 + 56))(v30, 0, 1, v26);
  }

  else
  {
    v32 = v46;
    v33 = v47;
    v34 = v50;
    v35 = v43;
    sub_1BF4E9024();
    sub_1BF4E7774();
    if (v36)
    {

      v38 = *(v35 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
      MEMORY[0x1EEE9AC00](v37);
      v42[-2] = v16;

      os_unfair_lock_lock((v38 + 24));
      sub_1BF38B758((v38 + 16), &v51);
      os_unfair_lock_unlock((v38 + 24));
    }

    else
    {
      sub_1BF4E77C4();
      sub_1BF38B8B8(v12, &v51);
      (*(v10 + 8))(v12, v32);
    }

    (*(v14 + 8))(v16, v13);
    v39 = v53;
    if (v53)
    {
      v40 = v54;
      __swift_project_boxed_opaque_existential_1(&v51, v53);
      v41 = v49;
      (*(v40 + 104))(v39, v40);
      (*(v33 + 56))(v41, 0, 1, v34);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    }

    else
    {
      sub_1BF38C9B4(&v51, &unk_1EBDD91B0, &unk_1BF4F0720);
      return (*(v33 + 56))(v49, 1, 1, v34);
    }
  }
}

uint64_t sub_1BF39E34C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 48);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF39E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22[-v12];
  swift_beginAccess();
  if (*(v4 + 24))
  {
    (*(v8 + 16))(v10, a1, v7);

    sub_1BF4E70A4();

    v14 = *(a1 + *(type metadata accessor for WidgetCacheKey(0) + 20));
    if (v14)
    {
      v15 = v14;
      sub_1BF39D74C(v15);
      sub_1BF4E70A4();
    }

    (*(v8 + 32))(v13, v10, v7);
  }

  else
  {
    (*(v8 + 16))(v13, a1, v7);
  }

  v16 = type metadata accessor for WidgetCacheKey(0);
  v17 = *(a1 + *(v16 + 20));
  if (v17)
  {
    v18 = *(a1 + *(v16 + 24));
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_1BF39E648(v19, v20);
      sub_1BF4E70B4();

      swift_beginAccess();

      sub_1BF4E70C4();
    }
  }

  return (*(v8 + 32))(a2, v13, v7);
}

uint64_t sub_1BF39E648(void *a1, void *a2)
{
  v4 = [a1 intentReference];
  if (v4)
  {
    v5 = v4;
    [v4 stableHash];

    v21 = sub_1BF4E96A4();
    v23 = v6;
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    v8 = v21;
    v7 = v23;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = [a1 personaIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BF4E8914();
    v13 = v12;

    v14 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      [a1 family];
      v22 = sub_1BF4E8EA4();
      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
      MEMORY[0x1BFB58C90](v11, v13);

      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
      MEMORY[0x1BFB58C90](v8, v7);
    }

    else
    {

      [a1 family];
      v22 = sub_1BF4E8EA4();
      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
      MEMORY[0x1BFB58C90](v11, v13);

      MEMORY[0x1BFB58C90](95, 0xE100000000000000);
    }

    v15 = [a2 _stringKeyRepresentation];
  }

  else
  {
    [a1 family];
    v22 = sub_1BF4E8EA4();
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    MEMORY[0x1BFB58C90](v8, v7);

    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    v15 = [a2 _stringKeyRepresentation];
  }

  v16 = v15;
  v17 = sub_1BF4E8914();
  v19 = v18;

  MEMORY[0x1BFB58C90](v17, v19);

  return v22;
}

uint64_t URL.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = sub_1BF4E7094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FD0, &qword_1BF4EFAC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF4EBEF0;
  v4 = *MEMORY[0x1E695DA98];
  *(v3 + 32) = *MEMORY[0x1E695DA98];
  type metadata accessor for URLResourceKey(0);
  v5 = v4;
  v6 = sub_1BF4E8B84();

  v17 = 0;
  v7 = [v2 resourceValuesForKeys:v6 error:&v17];

  v8 = v17;
  if (v7)
  {
    sub_1BF39EB0C();
    v9 = sub_1BF4E8764();
    v10 = v8;

    sub_1BF39EB64(v9, &v18);

    if (v18)
    {

      sub_1BF38EB2C(&v19, &v20);
      v11 = sub_1BF4E7334();
      v12 = swift_dynamicCast();
      return (*(*(v11 - 8) + 56))(a1, v12 ^ 1u, 1, v11);
    }

    sub_1BF3B61EC(&v18);
  }

  else
  {
    v14 = v17;
    v15 = sub_1BF4E6FF4();

    swift_willThrow();
  }

  v16 = sub_1BF4E7334();
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

unint64_t sub_1BF39EB0C()
{
  result = qword_1EDC9FDD0;
  if (!qword_1EDC9FDD0)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FDD0);
  }

  return result;
}

_OWORD *sub_1BF39EB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF4E91B4();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_1BF39EC00(v5, result, *(a1 + 36), 0, a1);
    return sub_1BF38EB2C(v5, (a2 + 8));
  }

  return result;
}

id sub_1BF39EC00(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_1BF38D324(*(a5 + 56) + 32 * a2, result);

  return v6;
}

uint64_t sub_1BF39ECA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetEntryKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF39ED3C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1BF4E8424();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  sub_1BF39F400(v2 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider, &v51);
  v16 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    v48 = v2;
    v17 = a2;
    v18 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    v19 = (*(v18 + 8))(a1, v16, v18);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      v4 = 0;
LABEL_4:
      a2 = v17;
      v5 = v48;
      goto LABEL_6;
    }

    v35 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    if (!v35)
    {
      goto LABEL_4;
    }

    [v35 dataProtectionLevel];
    sub_1BF4E8444();

    a2 = v17;
    if ((*(v9 + 48))(v15, 1, v8) != 1)
    {
      return (*(v9 + 32))(v17, v15, v8);
    }

    sub_1BF38C9B4(v15, &qword_1EBDD8AF8, &qword_1BF4EC370);
    v5 = v48;
  }

  else
  {
    sub_1BF38C9B4(&v51, &qword_1EBDD9CF0, &qword_1BF4F7A38);
  }

LABEL_6:
  if ([a1 isRemote])
  {
    v20 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
    swift_beginAccess();
    return (*(v9 + 16))(a2, v5 + v20, v8);
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v22 = sub_1BF4E76B4();
  v24 = v23;
  swift_endAccess();
  v25 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v26 = sub_1BF398FB4(v22, v24);
  if (!v4)
  {
    if (!v26)
    {
      goto LABEL_10;
    }

    v36 = a2;
    v37 = v26;
    v38 = [v26 entitlements];
    v39 = sub_1BF4E88E4();
    sub_1BF3A1ED0();
    v40 = [v38 objectForKey:v39 ofClass:swift_getObjCClassFromMetadata()];

    if (v40)
    {
      sub_1BF4E9164();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    v41 = v46;
    v51 = v49;
    v52 = v50;
    if (*(&v50 + 1))
    {
      type metadata accessor for FileProtectionType(0);
      if ((swift_dynamicCast() & 1) != 0 && v54)
      {
        sub_1BF4E8434();

        if ((*(v9 + 48))(v41, 1, v8) != 1)
        {
          v42 = v47;
          (*(v9 + 32))(v47, v41, v8);
          return (*(v9 + 32))(v36, v42, v8);
        }

LABEL_30:
        v43 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
        swift_beginAccess();
        v44 = v5 + v43;
        v42 = v47;
        (*(v9 + 16))(v47, v44, v8);
        if ((*(v9 + 48))(v41, 1, v8) != 1)
        {
          sub_1BF38C9B4(v41, &qword_1EBDD8AF8, &qword_1BF4EC370);
        }

        return (*(v9 + 32))(v36, v42, v8);
      }
    }

    else
    {
      sub_1BF38C9B4(&v51, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    }

    (*(v9 + 56))(v41, 1, 1, v8);
    goto LABEL_30;
  }

LABEL_10:
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v27 = sub_1BF4E7B54();
  __swift_project_value_buffer(v27, qword_1EDCA69A0);
  v28 = a1;
  v29 = sub_1BF4E7B34();
  v30 = sub_1BF4E8E64();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_1BF389000, v29, v30, "Extension not found for %{public}@", v31, 0xCu);
    sub_1BF38C9B4(v32, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v32, -1, -1);
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
  }

  sub_1BF4B86EC();
  swift_allocError();
  *v34 = 6;
  return swift_willThrow();
}

uint64_t sub_1BF39F400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CF0, &qword_1BF4F7A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void **WidgetEntry.init(key:protectionType:environmentProvider:observer:entrySupportsRendering:)(void **a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v6 = v5;
  v68 = a5;
  v69 = a4;
  v70 = a2;
  v66 = a1;
  v67 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B08, &qword_1BF4F5E08);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9B10, &qword_1BF4F5E10);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - v12;
  v14 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock;
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = v16;
  *&v6[v14] = v15;
  v17 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
  v18 = sub_1BF4E8594();
  (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
  sub_1BF4E7214();
  v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher] = 0;
  v19 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content];
  v62 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  v22 = sub_1BF4E7334();
  (*(*(v22 - 8) + 56))(&v6[v21], 1, 1, v22);
  v23 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError];
  v63 = &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__objectWillChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9B20, &qword_1BF4F5E18);
  swift_allocObject();
  *&v6[v24] = sub_1BF4E7C34();
  v25 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__contentDidChangePublisher;
  v59 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__contentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *&v6[v25] = sub_1BF4E7C34();
  v26 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__descriptorDidChangePublisher;
  v60 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__descriptorDidChangePublisher;
  swift_allocObject();
  *&v6[v26] = sub_1BF4E7C34();
  v61 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor;
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor] = 0;
  *&v73[0] = *&v6[v24];
  v27 = objc_opt_self();

  v28 = [v27 mainRunLoop];
  v72 = v28;
  v29 = sub_1BF4E90C4();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_1BF3901C0(0, &unk_1EDC9D690, 0x1E695DFD0);
  v58 = MEMORY[0x1E695BF88];
  sub_1BF38C8B4(&unk_1EDC9EF78, &unk_1EBDD9B20, &qword_1BF4F5E18, MEMORY[0x1E695BF88]);
  sub_1BF3A0628();
  sub_1BF4E7CE4();
  sub_1BF38C9B4(v9, &qword_1EBDD9B08, &qword_1BF4F5E08);

  sub_1BF38C8B4(&qword_1EDC9EFA8, &unk_1EBDD9B10, &qword_1BF4F5E10, MEMORY[0x1E695BE98]);
  v30 = v64;
  v31 = sub_1BF4E7C84();
  (*(v65 + 8))(v13, v30);
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_objectWillChange] = v31;
  *&v73[0] = *&v6[v59];
  sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0, v58);
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_contentDidChangePublisher] = sub_1BF4E7C84();
  *&v73[0] = *&v6[v60];
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorDidChangePublisher] = sub_1BF4E7C84();
  v32 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key;
  v33 = v66;
  sub_1BF3A3470(v66, &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key]);
  v34 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  v35 = sub_1BF4E8424();
  v36 = *(v35 - 8);
  v64 = v35;
  v65 = v36;
  (*(v36 + 16))(&v6[v34], v70, v35);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v37 = v62;
  swift_beginAccess();
  sub_1BF3A3A54(v73, v37, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  swift_endAccess();
  *v63 = xmmword_1BF4F5DE0;

  v38 = v69;
  sub_1BF38E49C(v69, &v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver]);
  v39 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  v40 = *(v39 + 8);
  v41 = *&v6[v32];
  v42 = v40();

  v43 = *&v6[v61];
  *&v6[v61] = v42;
  v44 = v42;

  v45 = v67;
  sub_1BF38E49C(v67, v73);
  v46 = *v33;
  v47 = v44;
  v48 = [v46 _loggingIdentifierWithoutMetrics];
  v49 = sub_1BF4E8914();
  v51 = v50;

  type metadata accessor for DescriptorMixedEnvironmentProviderAdapter(0);
  swift_allocObject();
  *&v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__environmentProvider] = sub_1BF3A0244(v73, v42, v49, v51);
  v6[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_entrySupportsRendering] = v68;
  v52 = type metadata accessor for WidgetEntry(0);
  v71.receiver = v6;
  v71.super_class = v52;
  v53 = objc_msgSendSuper2(&v71, sel_init);
  v54 = *(v53 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 32);
  __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver), *(v53 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 24));
  v55 = *(v54 + 16);
  v56 = v53;
  v55();

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  (*(v65 + 8))(v70, v64);
  sub_1BF393884(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  return v56;
}

void sub_1BF39FCD4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  os_unfair_lock_lock(*(v4 + 16));
  sub_1BF3A000C(v2, a1, &selRef_addObject_, "[%{public}s] Registering for descriptor changes for widget: %{public}s");
  os_unfair_lock_unlock(*(v4 + 16));
  sub_1BF38E49C(v2 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 24))(v5, v6);
  if (v7)
  {
    v8 = WidgetDescriptorPredicate.evaluate(with:)(*(v7 + 16));

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    if (v8)
    {
      sub_1BF3AC91C(v8, a1);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }
}

uint64_t sub_1BF39FDFC()
{
  v1 = sub_1BF4E7F64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-v6];
  v8 = *(v0 + 24);
  os_unfair_lock_lock(*(v8 + 16));
  v9 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v9, v1);
  sub_1BF3A44B8(v7, v0, v4);
  (*(v2 + 8))(v7, v1);
  swift_beginAccess();
  (*(v2 + 40))(v0 + v9, v4, v1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v8 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();
}

void sub_1BF3A000C(uint64_t a1, void *a2, SEL *a3, const char *a4, ...)
{
  [*(a1 + 88) *a3];
  if (qword_1EDC9EFE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF4E7B54();
  __swift_project_value_buffer(v7, qword_1EDCA6A78);

  v8 = a2;
  v9 = sub_1BF4E7B34();
  v10 = sub_1BF4E8E54();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);

    v15 = sub_1BF38D65C(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = [*&v8[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key] _loggingIdentifierWithoutMetrics];
    v17 = sub_1BF4E8914();
    v19 = v18;

    v20 = sub_1BF38D65C(v17, v19, &v21);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1BF389000, v9, v10, a4, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v12, -1, -1);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
  }
}

uint64_t sub_1BF3A0244(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable) = 0;
  v10 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  *(v5 + v10) = v11;
  v13 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor;
  *(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor) = 0;
  sub_1BF38E49C(a1, v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider);
  *(v5 + v13) = a2;
  v14 = (v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier);
  *v14 = a3;
  v14[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  v15 = a2;
  *(v5 + 16) = sub_1BF4E7C34();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v5 + 24) = v16;
  sub_1BF4E7F54();

  sub_1BF39FDFC();
  sub_1BF38E49C(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider, v24);
  v18 = v25;
  v19 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v19 + 16))(v18, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1BF3BB83C;
  *(v21 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
  sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080, MEMORY[0x1E695BED8]);
  v22 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  *(v5 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable) = v22;

  return v5;
}

uint64_t sub_1BF3A04EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3A0524()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3A055C()
{
  sub_1BF38E49C(v0 + 32, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = (*(v2 + 24))(v1, v2);
  if (v3)
  {
    v4 = WidgetDescriptorPredicate.evaluate(with:)(*(v3 + 16));
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

unint64_t sub_1BF3A0628()
{
  result = qword_1EDC9D6A0;
  if (!qword_1EDC9D6A0)
  {
    sub_1BF3901C0(255, &unk_1EDC9D690, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D6A0);
  }

  return result;
}

unint64_t sub_1BF3A0690()
{
  result = qword_1EDC9D7A0;
  if (!qword_1EDC9D7A0)
  {
    sub_1BF4E81E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D7A0);
  }

  return result;
}

uint64_t sub_1BF3A06E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1BF38C8B4(a5, a3, a4, a6);
  return sub_1BF4E7C84();
}

void sub_1BF3A079C(uint64_t a1)
{
  sub_1BF3901C0(319, &qword_1EDC9F120, 0x1E6994370);
  if (v1 <= 0x3F)
  {
    sub_1BF3901C0(319, &unk_1EDC9F150, 0x1E69943F0);
    if (v2 <= 0x3F)
    {
      sub_1BF3A1C10(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF3A0858(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1BF3901C0(255, a3, a4);
    v5 = sub_1BF4E90F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id default argument 2 of BaseDirectoryCacheKeyProvider.init(subsystem:in:fileManager:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

void *_s9ChronoKit35ExtensionSystemDataCacheKeyProviderC19subsystemIdentifier06systemE11URLProvider11fileManagerACyxq_GSS_AA0deL0_pSo06NSFileN0CtcfC_0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  sub_1BF38E610(a3, (v8 + 4));
  v8[9] = a4;
  return v8;
}

uint64_t static WidgetArchiver.ValidationOptions.extensionManaged(by:)(uint64_t a1)
{
  return sub_1BF3A0A24(a1, &unk_1F3DEFDC0, sub_1BF38E60C, sub_1BF3ADBBC);
}

{
  return sub_1BF3A0A24(a1, &unk_1F3DEFDE8, sub_1BF38E60C, sub_1BF3A7098);
}

uint64_t sub_1BF3A09EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF3A0A24(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4)
{
  sub_1BF4E8284();
  sub_1BF38E49C(a1, v8);
  v6 = swift_allocObject();
  a3(v8, v6 + 16);
  return sub_1BF4E8274();
}

uint64_t sub_1BF3A0AB0(uint64_t a1)
{
  result = sub_1BF4E7334();
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

uint64_t default argument 1 of WidgetUpdateTimer.init(quantum:queue:)()
{
  v0 = sub_1BF4E8004();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F98], v0);
  v4 = sub_1BF4E8F74();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t WidgetUpdateTimer.init(quantum:queue:)(uint64_t a1, double a2)
{
  v17[4] = a1;
  v5 = sub_1BF4E8F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC0, &qword_1BF4F5FB0);
  swift_allocObject();
  *(v2 + 16) = sub_1BF4E7C34();
  result = sub_1BF4E7224();
  *(v2 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer) = 0;
  v12 = (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v13 = ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a2 >= 0.0)
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v12;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v14 = 1;
  }

  if ((v14 | v13))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = a2;
    v17[3] = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v15 = sub_1BF4E9894();
    v17[1] = v16;
    v17[2] = v15;
    sub_1BF4E8054();
    v17[5] = MEMORY[0x1E69E7CC0];
    sub_1BF3A1144(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v17[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
    sub_1BF4E91A4();
    (*(v6 + 104))(v8, *MEMORY[0x1E69E8098], v17[0]);
    *(v2 + 32) = sub_1BF4E8F64();
    return v2;
  }

  return result;
}

uint64_t WidgetUpdateTimer.__allocating_init(quantum:queue:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  WidgetUpdateTimer.init(quantum:queue:)(a1, a2);
  return v4;
}

uint64_t sub_1BF3A1024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF3A106C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF3A10B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF3A10FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF3A1144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF3A118C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF3A11D4(uint64_t a1)
{
  result = sub_1BF4E8424();
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

uint64_t ClientDataProtectionLevelProvider.__allocating_init(defaultLevel:extensionProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = v4 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v8 = sub_1BF4E8424();
  (*(*(v8 - 8) + 32))(v4 + v7, a1, v8);
  return v4;
}

uint64_t sub_1BF3A1330(uint64_t a1, double a2)
{
  result = sub_1BF4E8294();
  if (v3 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id default argument 4 of WidgetCacheManager.init(subdirectory:fileExtension:descriptorProvider:protectionLevelProvider:fileManager:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

uint64_t WidgetCacheManager.__allocating_init(subdirectory:cacheKeyProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for WidgetCacheURLProvider();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[2] = 0;
  swift_beginAccess();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0x742D6F6E6F726863;
  v13[5] = 0xEF656E696C656D69;
  sub_1BF38E49C(a3, v20);
  sub_1BF38E49C(a4, v19);
  v17 = v12;
  v18 = &protocol witness table for WidgetCacheURLProvider;
  *&v16 = v13;
  type metadata accessor for WidgetCacheManager(0);
  v14 = swift_allocObject();

  sub_1BF4E8284();
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v14 + 160) = a6 ^ 1;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  sub_1BF38E610(v20, v14 + 40);
  sub_1BF38E610(&v16, v14 + 80);
  sub_1BF38E610(v19, v14 + 120);
  *(v14 + 16) = a5;
  return v14;
}

uint64_t sub_1BF3A1638(uint64_t a1)
{
  v3 = qword_1EDCA6A00;
  swift_beginAccess();
  v4 = sub_1BF4E8294();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *_WidgetEntryDescriptorChangeObserver.init(label:descriptorProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = 0;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  v3[10] = v7;
  sub_1BF38E49C(a3, (v3 + 4));
  v3[11] = [objc_opt_self() weakObjectsHashTable];
  v3[2] = a1;
  v3[3] = a2;
  sub_1BF3A17D0();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v3;
}

uint64_t _WidgetEntryDescriptorChangeObserver.__allocating_init(label:descriptorProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  _WidgetEntryDescriptorChangeObserver.init(label:descriptorProvider:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1BF3A17D0()
{
  v1 = v0;
  sub_1BF38E49C(v0 + 32, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v3 + 16))(v2, v3);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98E0, &qword_1BF4F3B88);
  sub_1BF38C8B4(&unk_1EDC9EF98, &qword_1EBDD98E0, &qword_1BF4F3B88, MEMORY[0x1E695BED8]);
  v4 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  *(v1 + 72) = v4;
}

uint64_t sub_1BF3A1908()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3A1950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC0, &qword_1BF4F5FB0);
  sub_1BF38C8B4(&qword_1EDC9EF88, &qword_1EBDD9BC0, &qword_1BF4F5FB0, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF3A1A14(uint64_t a1)
{
  result = sub_1BF4E8424();
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

uint64_t FixedDataProtectionProvider.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

unint64_t sub_1BF3A1B80(uint64_t a1)
{
  result = sub_1BF3A1DA8();
  *(a1 + 8) = result;
  return result;
}

void sub_1BF3A1C10(uint64_t a1)
{
  if (!qword_1EDC9FFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    v1 = sub_1BF4E90F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9FFA0);
    }
  }
}

void sub_1BF3A1C74(uint64_t a1, double a2)
{
  sub_1BF4E7194();
  if (v2 <= 0x3F)
  {
    sub_1BF3A0858(319, &qword_1EDC9D6A8, &qword_1EDC9F120, 0x1E6994370);
    if (v3 <= 0x3F)
    {
      sub_1BF3A0858(319, &qword_1EDC9D728, &unk_1EDC9F150, 0x1E69943F0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BF3A1D40(uint64_t a1)
{
  result = sub_1BF39ECA4(&qword_1EDC9E8A0, &protocol conformance descriptor for WidgetEntryKey);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF3A1DA8()
{
  result = qword_1EDC9DD60;
  if (!qword_1EDC9DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9DD60);
  }

  return result;
}

unint64_t sub_1BF3A1E00()
{
  result = qword_1EDC9DD58;
  if (!qword_1EDC9DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9DD58);
  }

  return result;
}

unint64_t sub_1BF3A1E54(uint64_t a1)
{
  result = sub_1BF3A1E7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF3A1E7C()
{
  result = qword_1EDC9E110[0];
  if (!qword_1EDC9E110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9E110);
  }

  return result;
}

unint64_t sub_1BF3A1ED0()
{
  result = qword_1EDC9F9A8;
  if (!qword_1EDC9F9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F9A8);
  }

  return result;
}

unint64_t sub_1BF3A1F20()
{
  result = qword_1EDC9E108;
  if (!qword_1EDC9E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9E108);
  }

  return result;
}

uint64_t sub_1BF3A1F74()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDC9EFC0);
  __swift_project_value_buffer(v0, qword_1EDC9EFC0);
  return sub_1BF4E7B44();
}

uint64_t type metadata accessor for EnvironmentModifiers(uint64_t a1)
{
  result = qword_1EDC9FCD0;
  if (!qword_1EDC9FCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF3A203C(uint64_t a1)
{
  sub_1BF4E8424();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetEntryKey(319);
    if (v2 <= 0x3F)
    {
      sub_1BF3A224C(319, &qword_1EDC9D770, MEMORY[0x1E6985A58]);
      if (v3 <= 0x3F)
      {
        sub_1BF4E7334();
        if (v4 <= 0x3F)
        {
          sub_1BF3A224C(319, &qword_1EDC9FFA8, MEMORY[0x1E6969530]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1BF3A224C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF4E90F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for EnvironmentProvider(uint64_t a1)
{
  result = qword_1EDC9E1E8;
  if (!qword_1EDC9E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3A2354(uint64_t a1)
{
  result = sub_1BF4E7F64();
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

uint64_t sub_1BF3A23F4()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA6A78);
  __swift_project_value_buffer(v0, qword_1EDCA6A78);
  return sub_1BF4E7B44();
}

void *PowerlogWidgetViewService.init(owner:)(char *a1)
{
  v11 = sub_1BF4E8F24();
  v2 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  type metadata accessor for WidgetPowerlogProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v11);
  *(v8 + 24) = sub_1BF4E8F64();
  return sub_1BF3A2868(v8, v12);
}

unint64_t sub_1BF3A2804()
{
  result = qword_1EDC9F178;
  if (!qword_1EDC9F178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F178);
  }

  return result;
}

void *sub_1BF3A2868(uint64_t a1, void *a2)
{
  v13 = sub_1BF4E8F24();
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v15[3] = type metadata accessor for WidgetPowerlogProvider();
  v15[4] = sub_1BF3A10B4(qword_1EDC9E008, type metadata accessor for WidgetPowerlogProvider, &unk_1BF4F3D18);
  v15[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC8];
  a2[8] = 0;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8014();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1BF4E8F64();
  a2[9] = v9;
  sub_1BF38E49C(v15, (a2 + 2));
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BF3A2C8C;
  *(v10 + 24) = a2;
  aBlock[4] = sub_1BF3A2C88;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF3A2C38;
  aBlock[3] = &block_descriptor_52;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v9, v11);
  _Block_release(v11);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    return a2;
  }

  return result;
}

uint64_t sub_1BF3A2CCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF3A2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 64) invalidate];
  v7 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v8 = sub_1BF4E88E4();
  v9 = [v7 initWithIdentifier_];

  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  v11 = v9;

  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = swift_allocObject();
    swift_weakInit();
    v15[4] = a3;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1BF3CAF50;
    v15[3] = a4;
    v14 = _Block_copy(v15);

    [v11 scheduleRepeatingWithFireInterval:v12 repeatInterval:v14 leewayInterval:900.0 queue:900.0 handler:300.0];
    _Block_release(v14);
  }
}

uint64_t sub_1BF3A2E80()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - v2;
  v3 = v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(v3 + *(type metadata accessor for WidgetExtensionInfo(0) + 104));
  KeyPath = swift_getKeyPath();
  v6 = *(v4 + 16);
  if (v6)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v6, 0);
    v7 = v29;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = v4 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v23 = *(v8 + 56);
    v24 = v9;
    v11 = (v8 - 8);
    do
    {
      v13 = v25;
      v12 = v26;
      v14 = v8;
      v24(v25, v10, v26);
      v15 = KeyPath;
      swift_getAtKeyPath();
      (*v11)(v13, v12);
      v16 = v27;
      v17 = v28;
      v29 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BF3A31DC((v18 > 1), v19 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v19 + 1;
      v20 = v7 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v10 += v23;
      --v6;
      v8 = v14;
      KeyPath = v15;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

char *sub_1BF3A30D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A68, &qword_1BF4EC038);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF3A31DC(char *a1, int64_t a2, char a3)
{
  result = sub_1BF3A30D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BF3A3254(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v9 + 16));
  v10 = *a1;
  swift_beginAccess();
  sub_1BF38C94C(v4 + v10, a4, a2, a3);
  os_unfair_lock_unlock(*(v9 + 16));
}

uint64_t sub_1BF3A331C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v0 + v2, v6, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v3 = v7;
  sub_1BF38C9B4(v6, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v4 = 0;
  if (!v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v4;
}

uint64_t ColorScheme.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF4E7D24();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E697DBA8];
  if (a1 != 2)
  {
    v6 = MEMORY[0x1E697DBB8];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1BF3A3470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DescriptorCollection.isEmpty.getter()
{
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);

  JUMPOUT(0x1BFB58A40);
}

uint64_t sub_1BF3A35AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void *sub_1BF3A367C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor);
  v3 = *(v1 + 16);
  v4 = v2;
  os_unfair_lock_unlock(v3);
  return v2;
}

void *sub_1BF3A36E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3A37AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t WidgetEntryKey.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1BF4E90B4();
  sub_1BF4E90B4();
  v9 = type metadata accessor for WidgetEntryKey(0);
  sub_1BF3988F8(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1BF4E9824();
  sub_1BF38C8FC(&unk_1EDC9F018, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BF3A3A54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BF3A3ABC(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  WidgetEntryKey.hash(into:)(v3);
  return sub_1BF4E9844();
}

BOOL _s9ChronoKit14WidgetEntryKeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB0, &unk_1BF4EEA40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0 || (sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for WidgetEntryKey(0) + 24);
  v15 = *(v11 + 48);
  sub_1BF3988F8(a1 + v14, v13);
  sub_1BF3988F8(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BF38C9B4(v13, &qword_1EBDD8E78, &unk_1BF4EE790);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1BF3988F8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1BF38C9B4(v13, &qword_1EBDD8EB0, &unk_1BF4EEA40);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1BF38C8FC(&qword_1EDC9D550, MEMORY[0x1E6994148]);
  v18 = sub_1BF4E88C4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1BF38C9B4(v13, &qword_1EBDD8E78, &unk_1BF4EE790);
  return (v18 & 1) != 0;
}

uint64_t WidgetEntryKey.init(widget:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  *(a3 + 1) = a2;
  v4 = *(type metadata accessor for WidgetEntryKey(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a3[v4], 1, 1, v5);
}

void *BlockAssertion.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  v4[2] = v5;
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

uint64_t sub_1BF3A3F34@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__environmentProvider);
  a1[3] = type metadata accessor for DescriptorMixedEnvironmentProviderAdapter(0);
  a1[4] = &protocol witness table for EnvironmentProvider;
  *a1 = v3;
}

uint64_t EnvironmentModifiers.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000034, 0x80000001BF4FB6C0);
  if (*v0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*v0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v4, v5);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FB700);
  v21 = *(v0 + 8);
  type metadata accessor for CHSColorSchemes(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000019, 0x80000001BF4FB720);
  sub_1BF4E8174();
  sub_1BF3A43F4(qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  v6 = sub_1BF4E8D34();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FB740);
  if (*(v0 + 24))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v7, v8);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FB760);
  v9 = type metadata accessor for EnvironmentModifiers(0);
  if (*(v0 + v9[9]))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + v9[9]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v10, v11);

  MEMORY[0x1BFB58C90](0xD00000000000001DLL, 0x80000001BF4FB780);
  sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
  sub_1BF3A443C();
  v12 = sub_1BF4E8D34();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FB7A0);
  v21 = *(v0 + v9[11]);
  type metadata accessor for CHSWidgetProximities(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FB7C0);
  sub_1BF38C94C(v0 + v9[8], v3, &qword_1EBDD9518, &qword_1BF4F1660);
  v13 = sub_1BF4E6F14();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v3, 1, v13) == 1)
  {
    sub_1BF38C9B4(v3, &qword_1EBDD9518, &qword_1BF4F1660);
    v15 = 0xE500000000000000;
    v16 = 0x3E6C696E3CLL;
  }

  else
  {
    v17 = MEMORY[0x1BFB57150]();
    v15 = v18;
    (*(v14 + 8))(v3, v13);
    v16 = v17;
  }

  MEMORY[0x1BFB58C90](v16, v15);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v22;
}